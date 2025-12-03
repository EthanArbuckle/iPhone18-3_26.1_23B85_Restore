@interface WFREPBRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(WFREPBRequest *)self setIdentifier:?];
    fromCopy = v5;
  }

  self->_version = fromCopy[6];
  if (*(fromCopy + 2))
  {
    [(WFREPBRequest *)self setMessage:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = 2654435761 * self->_version;
  return v4 ^ v3 ^ [(NSData *)self->_message hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[1])) || -[NSString isEqual:](identifier, "isEqual:")) && self->_version == *(equalCopy + 6))
  {
    message = self->_message;
    if (message | equalCopy[2])
    {
      v7 = [(NSData *)message isEqual:?];
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
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 24) = self->_version;
  v8 = [(NSData *)self->_message copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  identifier = self->_identifier;
  toCopy = to;
  [toCopy setIdentifier:identifier];
  toCopy[6] = self->_version;
  [toCopy setMessage:self->_message];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_identifier)
  {
    __assert_rtn("[WFREPBRequest writeTo:]", "WFREPBRequest.m", 90, "nil != self->_identifier");
  }

  PBDataWriterWriteStringField();
  version = self->_version;
  PBDataWriterWriteInt32Field();
  if (!self->_message)
  {
    __assert_rtn("[WFREPBRequest writeTo:]", "WFREPBRequest.m", 99, "nil != self->_message");
  }

  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_version];
  [v4 setObject:v6 forKey:@"version"];

  message = self->_message;
  if (message)
  {
    [v4 setObject:message forKey:@"message"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBRequest;
  v4 = [(WFREPBRequest *)&v8 description];
  dictionaryRepresentation = [(WFREPBRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end