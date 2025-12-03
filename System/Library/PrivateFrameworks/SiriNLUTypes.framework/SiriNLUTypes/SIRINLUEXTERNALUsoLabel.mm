@interface SIRINLUEXTERNALUsoLabel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALUsoLabel

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(SIRINLUEXTERNALUsoLabel *)self setValue:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    if (value | equalCopy[1])
    {
      v6 = [(NSString *)value isEqual:?];
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
  v6 = [(NSString *)self->_value copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  value = self->_value;
  if (value)
  {
    [to setValue:value];
  }
}

- (void)writeTo:(id)to
{
  if (self->_value)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  value = self->_value;
  if (value)
  {
    [dictionary setObject:value forKey:@"value"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUsoLabel;
  v4 = [(SIRINLUEXTERNALUsoLabel *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALUsoLabel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end