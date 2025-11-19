@interface WFREPBAlertRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBAlertRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(WFREPBAlertRequest *)self setAssociatedRunRequestIdentifier:?];
    v4 = v7;
  }

  alert = self->_alert;
  v6 = v4[1];
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

  v4 = v7;
LABEL_9:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier, !(associatedRunRequestIdentifier | v4[2])) || -[NSString isEqual:](associatedRunRequestIdentifier, "isEqual:")))
  {
    alert = self->_alert;
    if (alert | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_associatedRunRequestIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(WFREPBAlert *)self->_alert copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier;
  v5 = a3;
  [v5 setAssociatedRunRequestIdentifier:associatedRunRequestIdentifier];
  [v5 setAlert:self->_alert];
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_associatedRunRequestIdentifier)
  {
    __assert_rtn("[WFREPBAlertRequest writeTo:]", "WFREPBAlertRequest.m", 97, "nil != self->_associatedRunRequestIdentifier");
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_alert)
  {
    __assert_rtn("[WFREPBAlertRequest writeTo:]", "WFREPBAlertRequest.m", 102, "self->_alert != nil");
  }

  PBDataWriterWriteSubmessage();
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier;
  if (associatedRunRequestIdentifier)
  {
    [v3 setObject:associatedRunRequestIdentifier forKey:@"associatedRunRequestIdentifier"];
  }

  alert = self->_alert;
  if (alert)
  {
    v7 = [(WFREPBAlert *)alert dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"alert"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBAlertRequest;
  v4 = [(WFREPBAlertRequest *)&v8 description];
  v5 = [(WFREPBAlertRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end