@interface WFREPBRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(WFREPBRequest *)self setIdentifier:?];
    v4 = v5;
  }

  self->_version = v4[6];
  if (*(v4 + 2))
  {
    [(WFREPBRequest *)self setMessage:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = 2654435761 * self->_version;
  return v4 ^ v3 ^ [(NSData *)self->_message hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[1])) || -[NSString isEqual:](identifier, "isEqual:")) && self->_version == *(v4 + 6))
  {
    message = self->_message;
    if (message | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 24) = self->_version;
  v8 = [(NSData *)self->_message copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 setIdentifier:identifier];
  v5[6] = self->_version;
  [v5 setMessage:self->_message];
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
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
  v5 = [(WFREPBRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end