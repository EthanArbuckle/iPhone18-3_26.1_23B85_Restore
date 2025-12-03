@interface WFREPBAlertRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBAlertRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(WFREPBAlertRequest *)self setAssociatedRunRequestIdentifier:?];
    fromCopy = v7;
  }

  alert = self->_alert;
  v6 = fromCopy[1];
  if (alert)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(WFREPBAlert *)alert mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(WFREPBAlertRequest *)self setAlert:?];
  }

  fromCopy = v7;
LABEL_9:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier, !(associatedRunRequestIdentifier | equalCopy[2])) || -[NSString isEqual:](associatedRunRequestIdentifier, "isEqual:")))
  {
    alert = self->_alert;
    if (alert | equalCopy[1])
    {
      v7 = [(WFREPBAlert *)alert isEqual:?];
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
  v6 = [(NSString *)self->_associatedRunRequestIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(WFREPBAlert *)self->_alert copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier;
  toCopy = to;
  [toCopy setAssociatedRunRequestIdentifier:associatedRunRequestIdentifier];
  [toCopy setAlert:self->_alert];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_associatedRunRequestIdentifier)
  {
    __assert_rtn("[WFREPBAlertRequest writeTo:]", "WFREPBAlertRequest.m", 97, "nil != self->_associatedRunRequestIdentifier");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_alert)
  {
    __assert_rtn("[WFREPBAlertRequest writeTo:]", "WFREPBAlertRequest.m", 102, "self->_alert != nil");
  }

  PBDataWriterWriteSubmessage();
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier;
  if (associatedRunRequestIdentifier)
  {
    [dictionary setObject:associatedRunRequestIdentifier forKey:@"associatedRunRequestIdentifier"];
  }

  alert = self->_alert;
  if (alert)
  {
    dictionaryRepresentation = [(WFREPBAlert *)alert dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"alert"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBAlertRequest;
  v4 = [(WFREPBAlertRequest *)&v8 description];
  dictionaryRepresentation = [(WFREPBAlertRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end