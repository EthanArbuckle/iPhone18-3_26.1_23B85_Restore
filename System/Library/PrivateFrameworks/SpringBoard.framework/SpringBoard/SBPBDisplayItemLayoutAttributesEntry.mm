@interface SBPBDisplayItemLayoutAttributesEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)key;
- (uint64_t)layoutAttributes;
- (uint64_t)mergeFrom:(uint64_t)a1;
- (void)copyTo:(uint64_t)a1;
- (void)setKey:(uint64_t)a1;
- (void)setLayoutAttributes:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation SBPBDisplayItemLayoutAttributesEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBPBDisplayItemLayoutAttributesEntry;
  v4 = [(SBPBDisplayItemLayoutAttributesEntry *)&v8 description];
  v5 = [(SBPBDisplayItemLayoutAttributesEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  key = self->_key;
  if (key)
  {
    v5 = [(SBPBDisplayItemLayoutAttributesKey *)key dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"key"];
  }

  layoutAttributes = self->_layoutAttributes;
  if (layoutAttributes)
  {
    v7 = [(SBPBDisplayItemLayoutAttributes *)layoutAttributes dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"layoutAttributes"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_key)
  {
    [SBPBDisplayItemLayoutAttributesEntry writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  if (!self->_layoutAttributes)
  {
    [SBPBDisplayItemLayoutAttributesEntry writeTo:];
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SBPBDisplayItemLayoutAttributesKey *)self->_key copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SBPBDisplayItemLayoutAttributes *)self->_layoutAttributes copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[1])) || -[SBPBDisplayItemLayoutAttributesKey isEqual:](key, "isEqual:")))
  {
    layoutAttributes = self->_layoutAttributes;
    if (layoutAttributes | v4[2])
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

- (void)copyTo:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 8);
    v4 = a2;
    [(SBPBDisplayItemLayoutAttributesEntry *)v4 setKey:v3];
    [(SBPBDisplayItemLayoutAttributesEntry *)v4 setLayoutAttributes:?];
  }
}

- (void)setKey:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 8);
  }
}

- (void)setLayoutAttributes:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 16);
  }
}

- (uint64_t)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 8);
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

    objc_storeStrong((a1 + 8), v6);
  }

  v4 = v9;
LABEL_8:
  v3 = *(a1 + 16);
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
    objc_storeStrong((a1 + 16), v7);
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