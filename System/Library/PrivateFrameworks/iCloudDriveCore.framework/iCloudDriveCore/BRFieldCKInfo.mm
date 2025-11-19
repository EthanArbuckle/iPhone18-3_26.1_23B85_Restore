@interface BRFieldCKInfo
+ (id)newFromSqliteStatement:(sqlite3_stmt *)a3 atIndex:(int)a4;
+ (id)newFromSqliteValue:(sqlite3_value *)a3;
- (BOOL)isEqual:(id)a3;
- (BRFieldCKInfo)initWithRecord:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)markCrossZoneMoved;
- (void)mergeFrom:(id)a3;
- (void)overwriteEtag:(id)a3;
- (void)revertEtagsForOldZoneTombstone;
- (void)setCKInfoFieldsInRecord:(id)a3 includeCZMEtag:(BOOL)a4;
- (void)setHasWasCached:(BOOL)a3;
- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4;
- (void)writeTo:(id)a3;
@end

@implementation BRFieldCKInfo

- (void)setHasWasCached:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRFieldCKInfo;
  v4 = [(BRFieldCKInfo *)&v8 description];
  v5 = [(BRFieldCKInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_knownToServer];
    [v3 setObject:v5 forKey:@"knownToServer"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_wasCached];
    [v3 setObject:v6 forKey:@"wasCached"];
  }

  etag = self->_etag;
  if (etag)
  {
    [v3 setObject:etag forKey:@"etag"];
  }

  etagBeforeCrossZoneMove = self->_etagBeforeCrossZoneMove;
  if (etagBeforeCrossZoneMove)
  {
    [v3 setObject:etagBeforeCrossZoneMove forKey:@"etagBeforeCrossZoneMove"];
  }

  deletionChangeToken = self->_deletionChangeToken;
  if (deletionChangeToken)
  {
    [v3 setObject:deletionChangeToken forKey:@"deletionChangeToken"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    knownToServer = self->_knownToServer;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    wasCached = self->_wasCached;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_etagBeforeCrossZoneMove)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_deletionChangeToken)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[32] = self->_knownToServer;
    v4[36] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[33] = self->_wasCached;
    v4[36] |= 2u;
  }

  v6 = v4;
  if (self->_etag)
  {
    [v4 setEtag:?];
    v4 = v6;
  }

  if (self->_etagBeforeCrossZoneMove)
  {
    [v6 setEtagBeforeCrossZoneMove:?];
    v4 = v6;
  }

  if (self->_deletionChangeToken)
  {
    [v6 setDeletionChangeToken:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[32] = self->_knownToServer;
    v5[36] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[33] = self->_wasCached;
    v5[36] |= 2u;
  }

  v8 = [(NSString *)self->_etag copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(NSString *)self->_etagBeforeCrossZoneMove copyWithZone:a3];
  v11 = v6[3];
  v6[3] = v10;

  v12 = [(NSData *)self->_deletionChangeToken copyWithZone:a3];
  v13 = v6[1];
  v6[1] = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_23;
    }

    v10 = *(v4 + 32);
    if (self->_knownToServer)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(v4 + 33);
  if (self->_wasCached)
  {
    if ((*(v4 + 33) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 33))
  {
    goto LABEL_23;
  }

LABEL_6:
  etag = self->_etag;
  if (etag | *(v4 + 2) && ![(NSString *)etag isEqual:?])
  {
    goto LABEL_23;
  }

  etagBeforeCrossZoneMove = self->_etagBeforeCrossZoneMove;
  if (etagBeforeCrossZoneMove | *(v4 + 3))
  {
    if (![(NSString *)etagBeforeCrossZoneMove isEqual:?])
    {
      goto LABEL_23;
    }
  }

  deletionChangeToken = self->_deletionChangeToken;
  if (deletionChangeToken | *(v4 + 1))
  {
    v9 = [(NSData *)deletionChangeToken isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_24:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_knownToServer;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_wasCached;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_etag hash];
  v6 = [(NSString *)self->_etagBeforeCrossZoneMove hash];
  return v5 ^ v6 ^ [(NSData *)self->_deletionChangeToken hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[36];
  if (v5)
  {
    self->_knownToServer = v4[32];
    *&self->_has |= 1u;
    v5 = v4[36];
  }

  if ((v5 & 2) != 0)
  {
    self->_wasCached = v4[33];
    *&self->_has |= 2u;
  }

  v6 = v4;
  if (*(v4 + 2))
  {
    [(BRFieldCKInfo *)self setEtag:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(BRFieldCKInfo *)self setEtagBeforeCrossZoneMove:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(BRFieldCKInfo *)self setDeletionChangeToken:?];
    v4 = v6;
  }
}

- (BRFieldCKInfo)initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [(BRFieldCKInfo *)self init];
  if (v5)
  {
    v6 = [v4 etag];
    [(BRFieldCKInfo *)v5 setEtag:v6];

    -[BRFieldCKInfo setKnownToServer:](v5, "setKnownToServer:", [v4 isKnownToServer]);
    -[BRFieldCKInfo setWasCached:](v5, "setWasCached:", [v4 wasCached]);
  }

  return v5;
}

- (void)markCrossZoneMoved
{
  v3 = [(BRFieldCKInfo *)self etag];
  [(BRFieldCKInfo *)self setEtagBeforeCrossZoneMove:v3];

  [(BRFieldCKInfo *)self setEtag:0];
}

- (void)revertEtagsForOldZoneTombstone
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(BRFieldCKInfo(BRCItemAdditions) *)self revertEtagsForOldZoneTombstone];
  }

  v5 = [(BRFieldCKInfo *)self etagBeforeCrossZoneMove];
  [(BRFieldCKInfo *)self setEtag:v5];

  [(BRFieldCKInfo *)self setEtagBeforeCrossZoneMove:0];
}

- (void)overwriteEtag:(id)a3
{
  [(BRFieldCKInfo *)self setEtag:?];
  if (!a3)
  {

    [(BRFieldCKInfo *)self setKnownToServer:0];
  }
}

- (void)setCKInfoFieldsInRecord:(id)a3 includeCZMEtag:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(BRFieldCKInfo *)self etag];
  [v12 setEtag:v6];

  [v12 setKnownToServer:{-[BRFieldCKInfo knownToServer](self, "knownToServer")}];
  [v12 setWasCached:{-[BRFieldCKInfo wasCached](self, "wasCached")}];
  v7 = [(BRFieldCKInfo *)self etagBeforeCrossZoneMove];

  if (v7 && v4)
  {
    v8 = [v12 pluginFields];
    if (v8)
    {
      v9 = [v12 pluginFields];
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    }

    v11 = [(BRFieldCKInfo *)self etagBeforeCrossZoneMove];
    [v10 setObject:v11 forKeyedSubscript:@"br_etagInPreviousZone"];

    [v12 setPluginFields:v10];
  }
}

- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4
{
  v7 = [(BRFieldCKInfo *)self data];
  v6 = v7;
  sqlite3_bind_blob(a3, a4, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

+ (id)newFromSqliteValue:(sqlite3_value *)a3
{
  if (sqlite3_value_type(a3) != 4)
  {
    return 0;
  }

  v5 = sqlite3_value_blob(a3);
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v5 length:sqlite3_value_bytes(a3) freeWhenDone:0];
  v7 = [[a1 alloc] initWithData:v6];

  return v7;
}

+ (id)newFromSqliteStatement:(sqlite3_stmt *)a3 atIndex:(int)a4
{
  if (sqlite3_column_type(a3, a4) != 4)
  {
    return 0;
  }

  v7 = sqlite3_column_blob(a3, a4);
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v7 length:sqlite3_column_bytes(a3 freeWhenDone:{a4), 0}];
  v9 = [[a1 alloc] initWithData:v8];

  return v9;
}

@end