@interface WFREPBDialogRequestResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBDialogRequestResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[3])
  {
    [(WFREPBDialogRequestResponse *)self setOriginatingRequestIdentifier:?];
    fromCopy = v7;
  }

  if (fromCopy[1])
  {
    [(WFREPBDialogRequestResponse *)self setDialogRequestResponseData:?];
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

    [(WFREPBDialogRequestResponse *)self setError:?];
  }

  fromCopy = v7;
LABEL_11:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_originatingRequestIdentifier hash];
  v4 = [(NSData *)self->_dialogRequestResponseData hash]^ v3;
  return v4 ^ [(WFREPBError *)self->_error hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((originatingRequestIdentifier = self->_originatingRequestIdentifier, !(originatingRequestIdentifier | equalCopy[3])) || -[NSString isEqual:](originatingRequestIdentifier, "isEqual:")) && ((dialogRequestResponseData = self->_dialogRequestResponseData, !(dialogRequestResponseData | equalCopy[1])) || -[NSData isEqual:](dialogRequestResponseData, "isEqual:")))
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

  v8 = [(NSData *)self->_dialogRequestResponseData copyWithZone:zone];
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
  if (self->_dialogRequestResponseData)
  {
    [toCopy setDialogRequestResponseData:?];
  }

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
    __assert_rtn("[WFREPBDialogRequestResponse writeTo:]", "WFREPBDialogRequestResponse.m", 116, "nil != self->_originatingRequestIdentifier");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_dialogRequestResponseData)
  {
    PBDataWriterWriteDataField();
  }

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

  dialogRequestResponseData = self->_dialogRequestResponseData;
  if (dialogRequestResponseData)
  {
    [v4 setObject:dialogRequestResponseData forKey:@"dialogRequestResponseData"];
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
  v8.super_class = WFREPBDialogRequestResponse;
  v4 = [(WFREPBDialogRequestResponse *)&v8 description];
  dictionaryRepresentation = [(WFREPBDialogRequestResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end