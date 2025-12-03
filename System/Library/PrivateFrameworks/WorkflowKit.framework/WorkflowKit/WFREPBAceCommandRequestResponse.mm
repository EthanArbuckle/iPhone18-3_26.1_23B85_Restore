@interface WFREPBAceCommandRequestResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBAceCommandRequestResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[3])
  {
    [(WFREPBAceCommandRequestResponse *)self setOriginatingRequestIdentifier:?];
    fromCopy = v7;
  }

  if (fromCopy[1])
  {
    [(WFREPBAceCommandRequestResponse *)self setAceCommandResponseData:?];
    fromCopy = v7;
  }

  error = self->_error;
  v6 = fromCopy[2];
  if (error)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(WFREPBError *)error mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(WFREPBAceCommandRequestResponse *)self setError:?];
  }

  fromCopy = v7;
LABEL_11:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_originatingRequestIdentifier hash];
  v4 = [(NSData *)self->_aceCommandResponseData hash]^ v3;
  return v4 ^ [(WFREPBError *)self->_error hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((originatingRequestIdentifier = self->_originatingRequestIdentifier, !(originatingRequestIdentifier | equalCopy[3])) || -[NSString isEqual:](originatingRequestIdentifier, "isEqual:")) && ((aceCommandResponseData = self->_aceCommandResponseData, !(aceCommandResponseData | equalCopy[1])) || -[NSData isEqual:](aceCommandResponseData, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[2])
    {
      v8 = [(WFREPBError *)error isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_originatingRequestIdentifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_aceCommandResponseData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(WFREPBError *)self->_error copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setOriginatingRequestIdentifier:self->_originatingRequestIdentifier];
  [toCopy setAceCommandResponseData:self->_aceCommandResponseData];
  if (self->_error)
  {
    [toCopy setError:?];
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_originatingRequestIdentifier)
  {
    __assert_rtn("[WFREPBAceCommandRequestResponse writeTo:]", "WFREPBAceCommandRequestResponse.m", 112, "nil != self->_originatingRequestIdentifier");
  }

  PBDataWriterWriteStringField();
  if (!self->_aceCommandResponseData)
  {
    __assert_rtn("[WFREPBAceCommandRequestResponse writeTo:]", "WFREPBAceCommandRequestResponse.m", 117, "nil != self->_aceCommandResponseData");
  }

  PBDataWriterWriteDataField();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  originatingRequestIdentifier = self->_originatingRequestIdentifier;
  if (originatingRequestIdentifier)
  {
    [dictionary setObject:originatingRequestIdentifier forKey:@"originatingRequestIdentifier"];
  }

  aceCommandResponseData = self->_aceCommandResponseData;
  if (aceCommandResponseData)
  {
    [v4 setObject:aceCommandResponseData forKey:@"aceCommandResponseData"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation = [(WFREPBError *)error dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"error"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBAceCommandRequestResponse;
  v4 = [(WFREPBAceCommandRequestResponse *)&v8 description];
  dictionaryRepresentation = [(WFREPBAceCommandRequestResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end