@interface WFREPBAlertRequestResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBAlertRequestResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(WFREPBAlertRequestResponse *)self setRequestIdentifier:?];
    fromCopy = v7;
  }

  if (fromCopy[3])
  {
    [(WFREPBAlertRequestResponse *)self setSelectedButton:?];
    fromCopy = v7;
  }

  error = self->_error;
  v6 = fromCopy[1];
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

    [(WFREPBAlertRequestResponse *)self setError:?];
  }

  fromCopy = v7;
LABEL_11:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestIdentifier hash];
  v4 = [(NSString *)self->_selectedButton hash]^ v3;
  return v4 ^ [(WFREPBError *)self->_error hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | equalCopy[2])) || -[NSString isEqual:](requestIdentifier, "isEqual:")) && ((selectedButton = self->_selectedButton, !(selectedButton | equalCopy[3])) || -[NSString isEqual:](selectedButton, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[1])
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
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_selectedButton copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(WFREPBError *)self->_error copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestIdentifier:self->_requestIdentifier];
  if (self->_selectedButton)
  {
    [toCopy setSelectedButton:?];
  }

  if (self->_error)
  {
    [toCopy setError:?];
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestIdentifier)
  {
    __assert_rtn("[WFREPBAlertRequestResponse writeTo:]", "WFREPBAlertRequestResponse.m", 116, "nil != self->_requestIdentifier");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_selectedButton)
  {
    PBDataWriterWriteStringField();
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
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [dictionary setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  selectedButton = self->_selectedButton;
  if (selectedButton)
  {
    [v4 setObject:selectedButton forKey:@"selectedButton"];
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
  v8.super_class = WFREPBAlertRequestResponse;
  v4 = [(WFREPBAlertRequestResponse *)&v8 description];
  dictionaryRepresentation = [(WFREPBAlertRequestResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end