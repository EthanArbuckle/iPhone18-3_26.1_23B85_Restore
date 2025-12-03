@interface SIRINLUEXTERNALNLU_ROUTERTypedValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERTypedValue

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  primitive = self->_primitive;
  v6 = fromCopy[1];
  if (primitive)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)primitive mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)self setPrimitive:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    primitive = self->_primitive;
    if (primitive | equalCopy[1])
    {
      v6 = [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)primitive isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)self->_primitive copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  primitive = self->_primitive;
  if (primitive)
  {
    [to setPrimitive:primitive];
  }
}

- (void)writeTo:(id)to
{
  if (self->_primitive)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  primitive = self->_primitive;
  if (primitive)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)primitive dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"primitive"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERTypedValue;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end