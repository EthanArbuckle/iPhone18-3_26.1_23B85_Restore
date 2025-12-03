@interface BRFieldPkgItem
- (BOOL)isEqual:(id)equal;
- (BRFieldPkgItem)initWithPkgItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)clear;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsExecutable:(BOOL)executable;
- (void)setHasIsWritable:(BOOL)writable;
- (void)setHasXattrIndex:(BOOL)index;
- (void)updateWithPkgItem:(id)item;
- (void)writeTo:(id)to;
@end

@implementation BRFieldPkgItem

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"DIRECTORY"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"FILE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SYMLINK"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"TOMBSTONE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIsWritable:(BOOL)writable
{
  if (writable)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsExecutable:(BOOL)executable
{
  if (executable)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasXattrIndex:(BOOL)index
{
  if (index)
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
  dictionaryRepresentation = [(BRFieldPkgItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_type - 1;
  if (v4 >= 4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_278500C90[v4];
  }

  [dictionary setObject:v5 forKey:@"type"];

  path = self->_path;
  if (path)
  {
    [dictionary setObject:path forKey:@"path"];
  }

  has = self->_has;
  if (has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_mtime];
    [dictionary setObject:v14 forKey:@"mtime"];

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
  [dictionary setObject:v15 forKey:@"isWritable"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isExecutable];
    [dictionary setObject:v8 forKey:@"isExecutable"];
  }

LABEL_10:
  symlinkContent = self->_symlinkContent;
  if (symlinkContent)
  {
    [dictionary setObject:symlinkContent forKey:@"symlinkContent"];
  }

  quarantineInfo = self->_quarantineInfo;
  if (quarantineInfo)
  {
    [dictionary setObject:quarantineInfo forKey:@"quarantineInfo"];
  }

  signature = self->_signature;
  if (signature)
  {
    [dictionary setObject:signature forKey:@"signature"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_xattrIndex];
    [dictionary setObject:v12 forKey:@"xattrIndex"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  v12 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[14] = self->_type;
  v6 = toCopy;
  if (self->_path)
  {
    [toCopy setPath:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_mtime;
    *(toCopy + 64) |= 1u;
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

  *(toCopy + 61) = self->_isWritable;
  *(toCopy + 64) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(toCopy + 60) = self->_isExecutable;
    *(toCopy + 64) |= 4u;
  }

LABEL_7:
  if (self->_symlinkContent)
  {
    [v6 setSymlinkContent:?];
    toCopy = v6;
  }

  if (self->_quarantineInfo)
  {
    [v6 setQuarantineInfo:?];
    toCopy = v6;
  }

  if (self->_signature)
  {
    [v6 setSignature:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_xattrIndex;
    *(toCopy + 64) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 56) = self->_type;
  v6 = [(NSString *)self->_path copyWithZone:zone];
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
  v9 = [(NSString *)self->_symlinkContent copyWithZone:zone];
  v10 = *(v5 + 48);
  *(v5 + 48) = v9;

  v11 = [(NSData *)self->_quarantineInfo copyWithZone:zone];
  v12 = *(v5 + 32);
  *(v5 + 32) = v11;

  v13 = [(NSData *)self->_signature copyWithZone:zone];
  v14 = *(v5 + 40);
  *(v5 + 40) = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_xattrIndex;
    *(v5 + 64) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  if (self->_type != *(equalCopy + 14))
  {
    goto LABEL_35;
  }

  path = self->_path;
  if (path | *(equalCopy + 3))
  {
    if (![(NSString *)path isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v6 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_mtime != *(equalCopy + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0)
    {
      goto LABEL_35;
    }

    v11 = *(equalCopy + 61);
    if (self->_isWritable)
    {
      if ((*(equalCopy + 61) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 61))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 64) & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_35:
    v10 = 0;
    goto LABEL_36;
  }

  if ((*(equalCopy + 64) & 4) == 0)
  {
    goto LABEL_35;
  }

  v12 = *(equalCopy + 60);
  if (self->_isExecutable)
  {
    if ((*(equalCopy + 60) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_35;
  }

LABEL_14:
  symlinkContent = self->_symlinkContent;
  if (symlinkContent | *(equalCopy + 6) && ![(NSString *)symlinkContent isEqual:?])
  {
    goto LABEL_35;
  }

  quarantineInfo = self->_quarantineInfo;
  if (quarantineInfo | *(equalCopy + 4))
  {
    if (![(NSData *)quarantineInfo isEqual:?])
    {
      goto LABEL_35;
    }
  }

  signature = self->_signature;
  if (signature | *(equalCopy + 5))
  {
    if (![(NSData *)signature isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v10 = (*(equalCopy + 64) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_xattrIndex != *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_type = *(fromCopy + 14);
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(BRFieldPkgItem *)self setPath:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 64);
  if (v5)
  {
    self->_mtime = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 64);
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

  else if ((*(fromCopy + 64) & 8) == 0)
  {
    goto LABEL_5;
  }

  self->_isWritable = *(fromCopy + 61);
  *&self->_has |= 8u;
  if ((*(fromCopy + 64) & 4) != 0)
  {
LABEL_6:
    self->_isExecutable = *(fromCopy + 60);
    *&self->_has |= 4u;
  }

LABEL_7:
  if (*(fromCopy + 6))
  {
    [(BRFieldPkgItem *)self setSymlinkContent:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(BRFieldPkgItem *)self setQuarantineInfo:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(BRFieldPkgItem *)self setSignature:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 64) & 2) != 0)
  {
    self->_xattrIndex = *(fromCopy + 2);
    *&self->_has |= 2u;
  }
}

- (BRFieldPkgItem)initWithPkgItem:(id)item
{
  itemCopy = item;
  v5 = [(BRFieldPkgItem *)self init];
  v6 = v5;
  if (v5)
  {
    [(BRFieldPkgItem *)v5 updateWithPkgItem:itemCopy];
  }

  return v6;
}

- (void)updateWithPkgItem:(id)item
{
  itemCopy = item;
  -[BRFieldPkgItem setType:](self, "setType:", [itemCopy type]);
  pathInPackage = [itemCopy pathInPackage];
  [(BRFieldPkgItem *)self setPath:pathInPackage];

  quarantineInfo = [itemCopy quarantineInfo];
  [(BRFieldPkgItem *)self setQuarantineInfo:quarantineInfo];

  -[BRFieldPkgItem setMtime:](self, "setMtime:", [itemCopy mtime]);
  if ([itemCopy isSymLink])
  {
    symlinkContent = [itemCopy symlinkContent];
    [(BRFieldPkgItem *)self setSymlinkContent:symlinkContent];
  }

  else
  {
    if (![itemCopy isFile])
    {
      goto LABEL_10;
    }

    if ([itemCopy mode])
    {
      [(BRFieldPkgItem *)self setIsWritable:1];
    }

    if (([itemCopy mode] & 2) != 0)
    {
      [(BRFieldPkgItem *)self setIsExecutable:1];
    }

    symlinkContent = [itemCopy contentSignature];
    [(BRFieldPkgItem *)self setSignature:symlinkContent];
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