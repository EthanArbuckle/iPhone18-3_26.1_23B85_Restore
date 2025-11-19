@interface WFREPBKeyValuePair
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBKeyValuePair

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(WFREPBKeyValuePair *)self setKey:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(WFREPBKeyValuePair *)self setValue:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[1])) || -[NSString isEqual:](key, "isEqual:")))
  {
    value = self->_value;
    if (value | v4[2])
    {
      v7 = [(NSData *)value isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_value copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 setKey:key];
  [v5 setValue:self->_value];
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_key)
  {
    __assert_rtn("[WFREPBKeyValuePair writeTo:]", "WFREPBKeyValuePair.m", 83, "nil != self->_key");
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_value)
  {
    __assert_rtn("[WFREPBKeyValuePair writeTo:]", "WFREPBKeyValuePair.m", 88, "nil != self->_value");
  }

  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    [v4 setObject:value forKey:@"value"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBKeyValuePair;
  v4 = [(WFREPBKeyValuePair *)&v8 description];
  v5 = [(WFREPBKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end