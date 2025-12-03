@interface SBPBDisplayItemLayoutAttributesKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)displayItem;
- (uint64_t)displayOrdinal;
- (uint64_t)mergeFrom:(uint64_t)from;
- (uint64_t)orientation;
- (uint64_t)setDisplayOrdinal:(uint64_t)result;
- (uint64_t)setOrientation:(uint64_t)result;
- (void)copyTo:(uint64_t)to;
- (void)setDisplayItem:(uint64_t)item;
- (void)writeTo:(id)to;
@end

@implementation SBPBDisplayItemLayoutAttributesKey

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBPBDisplayItemLayoutAttributesKey;
  v4 = [(SBPBDisplayItemLayoutAttributesKey *)&v8 description];
  dictionaryRepresentation = [(SBPBDisplayItemLayoutAttributesKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  displayItem = self->_displayItem;
  if (displayItem)
  {
    dictionaryRepresentation = [(SBPBDisplayItem *)displayItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"displayItem"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_displayOrdinal];
  [dictionary setObject:v6 forKey:@"displayOrdinal"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_orientation];
  [dictionary setObject:v7 forKey:@"orientation"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_displayItem)
  {
    [SBPBDisplayItemLayoutAttributesKey writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SBPBDisplayItem *)self->_displayItem copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_displayOrdinal;
  *(v5 + 20) = self->_orientation;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((displayItem = self->_displayItem, !(displayItem | *(equalCopy + 1))) || -[SBPBDisplayItem isEqual:](displayItem, "isEqual:")) && self->_displayOrdinal == *(equalCopy + 4) && self->_orientation == *(equalCopy + 5);

  return v6;
}

- (void)copyTo:(uint64_t)to
{
  if (to)
  {
    v3 = *(to + 8);
    v4 = a2;
    [(SBPBDisplayItemLayoutAttributesKey *)v4 setDisplayItem:v3];
    v4[4] = *(to + 16);
    v4[5] = *(to + 20);
  }
}

- (void)setDisplayItem:(uint64_t)item
{
  if (item)
  {
    objc_storeStrong((item + 8), a2);
  }
}

- (uint64_t)mergeFrom:(uint64_t)from
{
  v3 = a2;
  v4 = v3;
  if (from)
  {
    v3 = *(from + 8);
    v5 = v4[1];
    if (v3)
    {
      if (v5)
      {
        v7 = v4;
        [(SBPBDisplayItem *)v3 mergeFrom:v5];
LABEL_7:
        v4 = v7;
      }
    }

    else if (v5)
    {
      v7 = v4;
      objc_storeStrong((from + 8), v5);
      goto LABEL_7;
    }

    *(from + 16) = *(v4 + 4);
    *(from + 20) = *(v4 + 5);
  }

  return MEMORY[0x2821F9730](v3);
}

- (uint64_t)displayItem
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)displayOrdinal
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)setDisplayOrdinal:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)orientation
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

- (uint64_t)setOrientation:(uint64_t)result
{
  if (result)
  {
    *(result + 20) = a2;
  }

  return result;
}

@end