@interface SBPBDisplayItemLayoutAttributesEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)key;
- (uint64_t)layoutAttributes;
- (uint64_t)mergeFrom:(uint64_t)from;
- (void)copyTo:(uint64_t)to;
- (void)setKey:(uint64_t)key;
- (void)setLayoutAttributes:(uint64_t)attributes;
- (void)writeTo:(id)to;
@end

@implementation SBPBDisplayItemLayoutAttributesEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBPBDisplayItemLayoutAttributesEntry;
  v4 = [(SBPBDisplayItemLayoutAttributesEntry *)&v8 description];
  dictionaryRepresentation = [(SBPBDisplayItemLayoutAttributesEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  key = self->_key;
  if (key)
  {
    dictionaryRepresentation = [(SBPBDisplayItemLayoutAttributesKey *)key dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"key"];
  }

  layoutAttributes = self->_layoutAttributes;
  if (layoutAttributes)
  {
    dictionaryRepresentation2 = [(SBPBDisplayItemLayoutAttributes *)layoutAttributes dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"layoutAttributes"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_key)
  {
    [SBPBDisplayItemLayoutAttributesEntry writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  if (!self->_layoutAttributes)
  {
    [SBPBDisplayItemLayoutAttributesEntry writeTo:];
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SBPBDisplayItemLayoutAttributesKey *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SBPBDisplayItemLayoutAttributes *)self->_layoutAttributes copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[1])) || -[SBPBDisplayItemLayoutAttributesKey isEqual:](key, "isEqual:")))
  {
    layoutAttributes = self->_layoutAttributes;
    if (layoutAttributes | equalCopy[2])
    {
      v7 = [(SBPBDisplayItemLayoutAttributes *)layoutAttributes isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)copyTo:(uint64_t)to
{
  if (to)
  {
    v3 = *(to + 8);
    v4 = a2;
    [(SBPBDisplayItemLayoutAttributesEntry *)v4 setKey:v3];
    [(SBPBDisplayItemLayoutAttributesEntry *)v4 setLayoutAttributes:?];
  }
}

- (void)setKey:(uint64_t)key
{
  if (key)
  {
    OUTLINED_FUNCTION_0_18(key, a2, 8);
  }
}

- (void)setLayoutAttributes:(uint64_t)attributes
{
  if (attributes)
  {
    OUTLINED_FUNCTION_0_18(attributes, a2, 16);
  }
}

- (uint64_t)mergeFrom:(uint64_t)from
{
  v3 = a2;
  v4 = v3;
  if (!from)
  {
    goto LABEL_13;
  }

  v5 = *(from + 8);
  v6 = v4[1];
  v9 = v4;
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    [(SBPBDisplayItemLayoutAttributesKey *)v5 mergeFrom:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    objc_storeStrong((from + 8), v6);
  }

  v4 = v9;
LABEL_8:
  v3 = *(from + 16);
  v7 = v4[2];
  if (v3)
  {
    if (v7)
    {
      v3 = [(SBPBDisplayItemLayoutAttributes *)v3 mergeFrom:v7];
    }
  }

  else if (v7)
  {
    objc_storeStrong((from + 16), v7);
  }

LABEL_13:

  return MEMORY[0x2821F9730](v3);
}

- (uint64_t)key
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)layoutAttributes
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end