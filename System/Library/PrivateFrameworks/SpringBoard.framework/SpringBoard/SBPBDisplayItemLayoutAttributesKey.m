@interface SBPBDisplayItemLayoutAttributesKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)displayItem;
- (uint64_t)displayOrdinal;
- (uint64_t)mergeFrom:(uint64_t)a1;
- (uint64_t)orientation;
- (uint64_t)setDisplayOrdinal:(uint64_t)result;
- (uint64_t)setOrientation:(uint64_t)result;
- (void)copyTo:(uint64_t)a1;
- (void)setDisplayItem:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation SBPBDisplayItemLayoutAttributesKey

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBPBDisplayItemLayoutAttributesKey;
  v4 = [(SBPBDisplayItemLayoutAttributesKey *)&v8 description];
  v5 = [(SBPBDisplayItemLayoutAttributesKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  displayItem = self->_displayItem;
  if (displayItem)
  {
    v5 = [(SBPBDisplayItem *)displayItem dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"displayItem"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_displayOrdinal];
  [v3 setObject:v6 forKey:@"displayOrdinal"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_orientation];
  [v3 setObject:v7 forKey:@"orientation"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_displayItem)
  {
    [SBPBDisplayItemLayoutAttributesKey writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SBPBDisplayItem *)self->_displayItem copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_displayOrdinal;
  *(v5 + 20) = self->_orientation;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((displayItem = self->_displayItem, !(displayItem | *(v4 + 1))) || -[SBPBDisplayItem isEqual:](displayItem, "isEqual:")) && self->_displayOrdinal == *(v4 + 4) && self->_orientation == *(v4 + 5);

  return v6;
}

- (void)copyTo:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 8);
    v4 = a2;
    [(SBPBDisplayItemLayoutAttributesKey *)v4 setDisplayItem:v3];
    v4[4] = *(a1 + 16);
    v4[5] = *(a1 + 20);
  }
}

- (void)setDisplayItem:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (uint64_t)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v3 = *(a1 + 8);
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
      objc_storeStrong((a1 + 8), v5);
      goto LABEL_7;
    }

    *(a1 + 16) = *(v4 + 4);
    *(a1 + 20) = *(v4 + 5);
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