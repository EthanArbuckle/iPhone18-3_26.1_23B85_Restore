@interface BRFieldPkgLocalItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasGenerationID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation BRFieldPkgLocalItem

- (void)setHasGenerationID:(BOOL)d
{
  if (d)
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
  v8.super_class = BRFieldPkgLocalItem;
  v4 = [(BRFieldPkgLocalItem *)&v8 description];
  dictionaryRepresentation = [(BRFieldPkgLocalItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  item = self->_item;
  if (item)
  {
    dictionaryRepresentation = [(BRFieldPkgItem *)item dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"item"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_fileID];
  [dictionary setObject:v6 forKey:@"fileID"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_generationID];
    [dictionary setObject:v8 forKey:@"generationID"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_size];
    [dictionary setObject:v9 forKey:@"size"];
  }

  xattrs = self->_xattrs;
  if (xattrs)
  {
    [dictionary setObject:xattrs forKey:@"xattrs"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_item)
  {
    [BRFieldPkgLocalItem writeTo:];
  }

  v10 = toCopy;
  PBDataWriterWriteSubmessage();
  fileID = self->_fileID;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    generationID = self->_generationID;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    size = self->_size;
    PBDataWriterWriteInt64Field();
  }

  v9 = v10;
  if (self->_xattrs)
  {
    PBDataWriterWriteDataField();
    v9 = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setItem:self->_item];
  v4 = toCopy;
  *(toCopy + 1) = self->_fileID;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_generationID;
    *(toCopy + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = self->_size;
    *(toCopy + 48) |= 1u;
  }

  if (self->_xattrs)
  {
    [toCopy setXattrs:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(BRFieldPkgItem *)self->_item copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  *(v5 + 8) = self->_fileID;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_generationID;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_size;
    *(v5 + 48) |= 1u;
  }

  v9 = [(NSData *)self->_xattrs copyWithZone:zone];
  v10 = *(v5 + 40);
  *(v5 + 40) = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  item = self->_item;
  if (item | *(equalCopy + 4))
  {
    if (![(BRFieldPkgItem *)item isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (self->_fileID != *(equalCopy + 1))
  {
    goto LABEL_17;
  }

  v6 = *(equalCopy + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_generationID != *(equalCopy + 6))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_size != *(equalCopy + 2))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_17;
  }

  xattrs = self->_xattrs;
  if (xattrs | *(equalCopy + 5))
  {
    v8 = [(NSData *)xattrs isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_18:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(BRFieldPkgItem *)self->_item hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_generationID;
  }

  else
  {
    v4 = 0;
  }

  if (*&self->_has)
  {
    v6 = 2654435761 * self->_size;
  }

  else
  {
    v6 = 0;
  }

  fileID = self->_fileID;
  return (2654435761 * fileID) ^ v3 ^ v4 ^ v6 ^ [(NSData *)self->_xattrs hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  item = self->_item;
  v6 = *(fromCopy + 4);
  v8 = fromCopy;
  if (item)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(BRFieldPkgItem *)item mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(BRFieldPkgLocalItem *)self setItem:?];
  }

  fromCopy = v8;
LABEL_7:
  self->_fileID = *(fromCopy + 1);
  v7 = *(fromCopy + 48);
  if ((v7 & 2) != 0)
  {
    self->_generationID = *(fromCopy + 6);
    *&self->_has |= 2u;
    v7 = *(fromCopy + 48);
  }

  if (v7)
  {
    self->_size = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(BRFieldPkgLocalItem *)self setXattrs:?];
  }

  MEMORY[0x2821F96F8]();
}

@end