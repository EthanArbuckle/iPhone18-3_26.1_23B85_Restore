@interface WFREPBKeyValuePair
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBKeyValuePair

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(WFREPBKeyValuePair *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(WFREPBKeyValuePair *)self setValue:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[1])) || -[NSString isEqual:](key, "isEqual:")))
  {
    value = self->_value;
    if (value | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_value copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  key = self->_key;
  toCopy = to;
  [toCopy setKey:key];
  [toCopy setValue:self->_value];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_key)
  {
    __assert_rtn("[WFREPBKeyValuePair writeTo:]", "WFREPBKeyValuePair.m", 83, "nil != self->_key");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_value)
  {
    __assert_rtn("[WFREPBKeyValuePair writeTo:]", "WFREPBKeyValuePair.m", 88, "nil != self->_value");
  }

  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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
  dictionaryRepresentation = [(WFREPBKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end