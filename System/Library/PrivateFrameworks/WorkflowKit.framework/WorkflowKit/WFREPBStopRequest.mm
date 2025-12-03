@interface WFREPBStopRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBStopRequest

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(WFREPBStopRequest *)self setRequestIdentifier:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    requestIdentifier = self->_requestIdentifier;
    if (requestIdentifier | equalCopy[1])
    {
      v6 = [(NSString *)requestIdentifier isEqual:?];
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
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestIdentifier)
  {
    __assert_rtn("[WFREPBStopRequest writeTo:]", "WFREPBStopRequest.m", 72, "nil != self->_requestIdentifier");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [dictionary setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBStopRequest;
  v4 = [(WFREPBStopRequest *)&v8 description];
  dictionaryRepresentation = [(WFREPBStopRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end