@interface SIRINLUEXTERNALNLU_ROUTERTypedValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERTypedValue

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  primitive = self->_primitive;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    primitive = self->_primitive;
    if (primitive | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)self->_primitive copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  primitive = self->_primitive;
  if (primitive)
  {
    [a3 setPrimitive:primitive];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_primitive)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  primitive = self->_primitive;
  if (primitive)
  {
    v5 = [(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue *)primitive dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"primitive"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERTypedValue;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end