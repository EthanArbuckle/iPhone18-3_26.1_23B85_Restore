@interface BRFieldCKInfo
+ (id)newFromSqliteStatement:(sqlite3_stmt *)statement atIndex:(int)index;
+ (id)newFromSqliteValue:(sqlite3_value *)value;
- (BOOL)isEqual:(id)equal;
- (BRFieldCKInfo)initWithRecord:(id)record;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)markCrossZoneMoved;
- (void)mergeFrom:(id)from;
- (void)overwriteEtag:(id)etag;
- (void)revertEtagsForOldZoneTombstone;
- (void)setCKInfoFieldsInRecord:(id)record includeCZMEtag:(BOOL)etag;
- (void)setHasWasCached:(BOOL)cached;
- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index;
- (void)writeTo:(id)to;
@end

@implementation BRFieldCKInfo

- (void)setHasWasCached:(BOOL)cached
{
  if (cached)
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
  dictionaryRepresentation = [(BRFieldCKInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_knownToServer];
    [dictionary setObject:v5 forKey:@"knownToServer"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_wasCached];
    [dictionary setObject:v6 forKey:@"wasCached"];
  }

  etag = self->_etag;
  if (etag)
  {
    [dictionary setObject:etag forKey:@"etag"];
  }

  etagBeforeCrossZoneMove = self->_etagBeforeCrossZoneMove;
  if (etagBeforeCrossZoneMove)
  {
    [dictionary setObject:etagBeforeCrossZoneMove forKey:@"etagBeforeCrossZoneMove"];
  }

  deletionChangeToken = self->_deletionChangeToken;
  if (deletionChangeToken)
  {
    [dictionary setObject:deletionChangeToken forKey:@"deletionChangeToken"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    knownToServer = self->_knownToServer;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    wasCached = self->_wasCached;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_etagBeforeCrossZoneMove)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_deletionChangeToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[32] = self->_knownToServer;
    toCopy[36] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[33] = self->_wasCached;
    toCopy[36] |= 2u;
  }

  v6 = toCopy;
  if (self->_etag)
  {
    [toCopy setEtag:?];
    toCopy = v6;
  }

  if (self->_etagBeforeCrossZoneMove)
  {
    [v6 setEtagBeforeCrossZoneMove:?];
    toCopy = v6;
  }

  if (self->_deletionChangeToken)
  {
    [v6 setDeletionChangeToken:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSString *)self->_etag copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(NSString *)self->_etagBeforeCrossZoneMove copyWithZone:zone];
  v11 = v6[3];
  v6[3] = v10;

  v12 = [(NSData *)self->_deletionChangeToken copyWithZone:zone];
  v13 = v6[1];
  v6[1] = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_23;
    }

    v10 = *(equalCopy + 32);
    if (self->_knownToServer)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if ((*(equalCopy + 36) & 2) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(equalCopy + 33);
  if (self->_wasCached)
  {
    if ((*(equalCopy + 33) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 33))
  {
    goto LABEL_23;
  }

LABEL_6:
  etag = self->_etag;
  if (etag | *(equalCopy + 2) && ![(NSString *)etag isEqual:?])
  {
    goto LABEL_23;
  }

  etagBeforeCrossZoneMove = self->_etagBeforeCrossZoneMove;
  if (etagBeforeCrossZoneMove | *(equalCopy + 3))
  {
    if (![(NSString *)etagBeforeCrossZoneMove isEqual:?])
    {
      goto LABEL_23;
    }
  }

  deletionChangeToken = self->_deletionChangeToken;
  if (deletionChangeToken | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[36];
  if (v5)
  {
    self->_knownToServer = fromCopy[32];
    *&self->_has |= 1u;
    v5 = fromCopy[36];
  }

  if ((v5 & 2) != 0)
  {
    self->_wasCached = fromCopy[33];
    *&self->_has |= 2u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(BRFieldCKInfo *)self setEtag:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(BRFieldCKInfo *)self setEtagBeforeCrossZoneMove:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(BRFieldCKInfo *)self setDeletionChangeToken:?];
    fromCopy = v6;
  }
}

- (BRFieldCKInfo)initWithRecord:(id)record
{
  recordCopy = record;
  v5 = [(BRFieldCKInfo *)self init];
  if (v5)
  {
    etag = [recordCopy etag];
    [(BRFieldCKInfo *)v5 setEtag:etag];

    -[BRFieldCKInfo setKnownToServer:](v5, "setKnownToServer:", [recordCopy isKnownToServer]);
    -[BRFieldCKInfo setWasCached:](v5, "setWasCached:", [recordCopy wasCached]);
  }

  return v5;
}

- (void)markCrossZoneMoved
{
  etag = [(BRFieldCKInfo *)self etag];
  [(BRFieldCKInfo *)self setEtagBeforeCrossZoneMove:etag];

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

  etagBeforeCrossZoneMove = [(BRFieldCKInfo *)self etagBeforeCrossZoneMove];
  [(BRFieldCKInfo *)self setEtag:etagBeforeCrossZoneMove];

  [(BRFieldCKInfo *)self setEtagBeforeCrossZoneMove:0];
}

- (void)overwriteEtag:(id)etag
{
  [(BRFieldCKInfo *)self setEtag:?];
  if (!etag)
  {

    [(BRFieldCKInfo *)self setKnownToServer:0];
  }
}

- (void)setCKInfoFieldsInRecord:(id)record includeCZMEtag:(BOOL)etag
{
  etagCopy = etag;
  recordCopy = record;
  etag = [(BRFieldCKInfo *)self etag];
  [recordCopy setEtag:etag];

  [recordCopy setKnownToServer:{-[BRFieldCKInfo knownToServer](self, "knownToServer")}];
  [recordCopy setWasCached:{-[BRFieldCKInfo wasCached](self, "wasCached")}];
  etagBeforeCrossZoneMove = [(BRFieldCKInfo *)self etagBeforeCrossZoneMove];

  if (etagBeforeCrossZoneMove && etagCopy)
  {
    pluginFields = [recordCopy pluginFields];
    if (pluginFields)
    {
      pluginFields2 = [recordCopy pluginFields];
      v10 = [pluginFields2 mutableCopy];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    }

    etagBeforeCrossZoneMove2 = [(BRFieldCKInfo *)self etagBeforeCrossZoneMove];
    [v10 setObject:etagBeforeCrossZoneMove2 forKeyedSubscript:@"br_etagInPreviousZone"];

    [recordCopy setPluginFields:v10];
  }
}

- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index
{
  data = [(BRFieldCKInfo *)self data];
  v6 = data;
  sqlite3_bind_blob(bind, index, [data bytes], objc_msgSend(data, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

+ (id)newFromSqliteValue:(sqlite3_value *)value
{
  if (sqlite3_value_type(value) != 4)
  {
    return 0;
  }

  v5 = sqlite3_value_blob(value);
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v5 length:sqlite3_value_bytes(value) freeWhenDone:0];
  v7 = [[self alloc] initWithData:v6];

  return v7;
}

+ (id)newFromSqliteStatement:(sqlite3_stmt *)statement atIndex:(int)index
{
  if (sqlite3_column_type(statement, index) != 4)
  {
    return 0;
  }

  v7 = sqlite3_column_blob(statement, index);
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v7 length:sqlite3_column_bytes(statement freeWhenDone:{index), 0}];
  v9 = [[self alloc] initWithData:v8];

  return v9;
}

@end