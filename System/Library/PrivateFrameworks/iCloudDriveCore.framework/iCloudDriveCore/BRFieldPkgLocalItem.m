@interface BRFieldPkgLocalItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasGenerationID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BRFieldPkgLocalItem

- (void)setHasGenerationID:(BOOL)a3
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
  v8.super_class = BRFieldPkgLocalItem;
  v4 = [(BRFieldPkgLocalItem *)&v8 description];
  v5 = [(BRFieldPkgLocalItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  item = self->_item;
  if (item)
  {
    v5 = [(BRFieldPkgItem *)item dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"item"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_fileID];
  [v3 setObject:v6 forKey:@"fileID"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_generationID];
    [v3 setObject:v8 forKey:@"generationID"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_size];
    [v3 setObject:v9 forKey:@"size"];
  }

  xattrs = self->_xattrs;
  if (xattrs)
  {
    [v3 setObject:xattrs forKey:@"xattrs"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_item)
  {
    [BRFieldPkgLocalItem writeTo:];
  }

  v10 = v4;
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

- (void)copyTo:(id)a3
{
  v6 = a3;
  [v6 setItem:self->_item];
  v4 = v6;
  *(v6 + 1) = self->_fileID;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 6) = self->_generationID;
    *(v6 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 2) = self->_size;
    *(v6 + 48) |= 1u;
  }

  if (self->_xattrs)
  {
    [v6 setXattrs:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(BRFieldPkgItem *)self->_item copyWithZone:a3];
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

  v9 = [(NSData *)self->_xattrs copyWithZone:a3];
  v10 = *(v5 + 40);
  *(v5 + 40) = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  item = self->_item;
  if (item | *(v4 + 4))
  {
    if (![(BRFieldPkgItem *)item isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (self->_fileID != *(v4 + 1))
  {
    goto LABEL_17;
  }

  v6 = *(v4 + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_generationID != *(v4 + 6))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_size != *(v4 + 2))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_17;
  }

  xattrs = self->_xattrs;
  if (xattrs | *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  item = self->_item;
  v6 = *(v4 + 4);
  v8 = v4;
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

  v4 = v8;
LABEL_7:
  self->_fileID = *(v4 + 1);
  v7 = *(v4 + 48);
  if ((v7 & 2) != 0)
  {
    self->_generationID = *(v4 + 6);
    *&self->_has |= 2u;
    v7 = *(v4 + 48);
  }

  if (v7)
  {
    self->_size = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(BRFieldPkgLocalItem *)self setXattrs:?];
  }

  MEMORY[0x2821F96F8]();
}

@end