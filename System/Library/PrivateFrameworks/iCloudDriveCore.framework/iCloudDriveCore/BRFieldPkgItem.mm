@interface BRFieldPkgItem
- (BOOL)isEqual:(id)a3;
- (BRFieldPkgItem)initWithPkgItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)clear;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsExecutable:(BOOL)a3;
- (void)setHasIsWritable:(BOOL)a3;
- (void)setHasXattrIndex:(BOOL)a3;
- (void)updateWithPkgItem:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BRFieldPkgItem

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DIRECTORY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FILE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYMLINK"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TOMBSTONE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIsWritable:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsExecutable:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasXattrIndex:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRFieldPkgItem;
  v4 = [(BRFieldPkgItem *)&v8 description];
  v5 = [(BRFieldPkgItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_type - 1;
  if (v4 >= 4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_278500C90[v4];
  }

  [v3 setObject:v5 forKey:@"type"];

  path = self->_path;
  if (path)
  {
    [v3 setObject:path forKey:@"path"];
  }

  has = self->_has;
  if (has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_mtime];
    [v3 setObject:v14 forKey:@"mtime"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_8:
      if ((has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_isWritable];
  [v3 setObject:v15 forKey:@"isWritable"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isExecutable];
    [v3 setObject:v8 forKey:@"isExecutable"];
  }

LABEL_10:
  symlinkContent = self->_symlinkContent;
  if (symlinkContent)
  {
    [v3 setObject:symlinkContent forKey:@"symlinkContent"];
  }

  quarantineInfo = self->_quarantineInfo;
  if (quarantineInfo)
  {
    [v3 setObject:quarantineInfo forKey:@"quarantineInfo"];
  }

  signature = self->_signature;
  if (signature)
  {
    [v3 setObject:signature forKey:@"signature"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_xattrIndex];
    [v3 setObject:v12 forKey:@"xattrIndex"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  type = self->_type;
  v12 = v4;
  PBDataWriterWriteInt32Field();
  if (self->_path)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    mtime = self->_mtime;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  v8 = v12;
  if ((has & 8) != 0)
  {
    isWritable = self->_isWritable;
    PBDataWriterWriteBOOLField();
    v8 = v12;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    isExecutable = self->_isExecutable;
    PBDataWriterWriteBOOLField();
    v8 = v12;
  }

  if (self->_symlinkContent)
  {
    PBDataWriterWriteStringField();
    v8 = v12;
  }

  if (self->_quarantineInfo)
  {
    PBDataWriterWriteDataField();
    v8 = v12;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    v8 = v12;
  }

  if ((*&self->_has & 2) != 0)
  {
    xattrIndex = self->_xattrIndex;
    PBDataWriterWriteInt64Field();
    v8 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[14] = self->_type;
  v6 = v4;
  if (self->_path)
  {
    [v4 setPath:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_mtime;
    *(v4 + 64) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 61) = self->_isWritable;
  *(v4 + 64) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(v4 + 60) = self->_isExecutable;
    *(v4 + 64) |= 4u;
  }

LABEL_7:
  if (self->_symlinkContent)
  {
    [v6 setSymlinkContent:?];
    v4 = v6;
  }

  if (self->_quarantineInfo)
  {
    [v6 setQuarantineInfo:?];
    v4 = v6;
  }

  if (self->_signature)
  {
    [v6 setSignature:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_xattrIndex;
    *(v4 + 64) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 56) = self->_type;
  v6 = [(NSString *)self->_path copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_mtime;
    *(v5 + 64) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 61) = self->_isWritable;
  *(v5 + 64) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 60) = self->_isExecutable;
    *(v5 + 64) |= 4u;
  }

LABEL_5:
  v9 = [(NSString *)self->_symlinkContent copyWithZone:a3];
  v10 = *(v5 + 48);
  *(v5 + 48) = v9;

  v11 = [(NSData *)self->_quarantineInfo copyWithZone:a3];
  v12 = *(v5 + 32);
  *(v5 + 32) = v11;

  v13 = [(NSData *)self->_signature copyWithZone:a3];
  v14 = *(v5 + 40);
  *(v5 + 40) = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_xattrIndex;
    *(v5 + 64) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  if (self->_type != *(v4 + 14))
  {
    goto LABEL_35;
  }

  path = self->_path;
  if (path | *(v4 + 3))
  {
    if (![(NSString *)path isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v6 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_mtime != *(v4 + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 64) & 8) == 0)
    {
      goto LABEL_35;
    }

    v11 = *(v4 + 61);
    if (self->_isWritable)
    {
      if ((*(v4 + 61) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 61))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 64) & 8) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 64) & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_35:
    v10 = 0;
    goto LABEL_36;
  }

  if ((*(v4 + 64) & 4) == 0)
  {
    goto LABEL_35;
  }

  v12 = *(v4 + 60);
  if (self->_isExecutable)
  {
    if ((*(v4 + 60) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_35;
  }

LABEL_14:
  symlinkContent = self->_symlinkContent;
  if (symlinkContent | *(v4 + 6) && ![(NSString *)symlinkContent isEqual:?])
  {
    goto LABEL_35;
  }

  quarantineInfo = self->_quarantineInfo;
  if (quarantineInfo | *(v4 + 4))
  {
    if (![(NSData *)quarantineInfo isEqual:?])
    {
      goto LABEL_35;
    }
  }

  signature = self->_signature;
  if (signature | *(v4 + 5))
  {
    if (![(NSData *)signature isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v10 = (*(v4 + 64) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_xattrIndex != *(v4 + 2))
    {
      goto LABEL_35;
    }

    v10 = 1;
  }

LABEL_36:

  return v10;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(NSString *)self->_path hash];
  if ((*&self->_has & 1) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v5 = 2654435761 * self->_mtime;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761 * self->_isWritable;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_isExecutable;
    goto LABEL_8;
  }

LABEL_7:
  v7 = 0;
LABEL_8:
  v8 = [(NSString *)self->_symlinkContent hash];
  v9 = [(NSData *)self->_quarantineInfo hash];
  v10 = [(NSData *)self->_signature hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_xattrIndex;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ (2654435761 * type) ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_type = *(v4 + 14);
  v6 = v4;
  if (*(v4 + 3))
  {
    [(BRFieldPkgItem *)self setPath:?];
    v4 = v6;
  }

  v5 = *(v4 + 64);
  if (v5)
  {
    self->_mtime = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 64);
    if ((v5 & 8) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 64) & 8) == 0)
  {
    goto LABEL_5;
  }

  self->_isWritable = *(v4 + 61);
  *&self->_has |= 8u;
  if ((*(v4 + 64) & 4) != 0)
  {
LABEL_6:
    self->_isExecutable = *(v4 + 60);
    *&self->_has |= 4u;
  }

LABEL_7:
  if (*(v4 + 6))
  {
    [(BRFieldPkgItem *)self setSymlinkContent:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(BRFieldPkgItem *)self setQuarantineInfo:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(BRFieldPkgItem *)self setSignature:?];
    v4 = v6;
  }

  if ((*(v4 + 64) & 2) != 0)
  {
    self->_xattrIndex = *(v4 + 2);
    *&self->_has |= 2u;
  }
}

- (BRFieldPkgItem)initWithPkgItem:(id)a3
{
  v4 = a3;
  v5 = [(BRFieldPkgItem *)self init];
  v6 = v5;
  if (v5)
  {
    [(BRFieldPkgItem *)v5 updateWithPkgItem:v4];
  }

  return v6;
}

- (void)updateWithPkgItem:(id)a3
{
  v7 = a3;
  -[BRFieldPkgItem setType:](self, "setType:", [v7 type]);
  v4 = [v7 pathInPackage];
  [(BRFieldPkgItem *)self setPath:v4];

  v5 = [v7 quarantineInfo];
  [(BRFieldPkgItem *)self setQuarantineInfo:v5];

  -[BRFieldPkgItem setMtime:](self, "setMtime:", [v7 mtime]);
  if ([v7 isSymLink])
  {
    v6 = [v7 symlinkContent];
    [(BRFieldPkgItem *)self setSymlinkContent:v6];
  }

  else
  {
    if (![v7 isFile])
    {
      goto LABEL_10;
    }

    if ([v7 mode])
    {
      [(BRFieldPkgItem *)self setIsWritable:1];
    }

    if (([v7 mode] & 2) != 0)
    {
      [(BRFieldPkgItem *)self setIsExecutable:1];
    }

    v6 = [v7 contentSignature];
    [(BRFieldPkgItem *)self setSignature:v6];
  }

LABEL_10:

  MEMORY[0x2821F96F8]();
}

- (void)clear
{
  [(BRFieldPkgItem *)self setType:0];
  [(BRFieldPkgItem *)self setPath:0];
  [(BRFieldPkgItem *)self setHasMtime:0];
  [(BRFieldPkgItem *)self setHasIsExecutable:0];
  [(BRFieldPkgItem *)self setHasIsWritable:0];
  [(BRFieldPkgItem *)self setSignature:0];
  [(BRFieldPkgItem *)self setSymlinkContent:0];
  [(BRFieldPkgItem *)self setQuarantineInfo:0];

  [(BRFieldPkgItem *)self setHasXattrIndex:0];
}

@end