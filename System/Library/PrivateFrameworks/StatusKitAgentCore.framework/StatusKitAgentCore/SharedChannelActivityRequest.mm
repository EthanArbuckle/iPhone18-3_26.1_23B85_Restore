@interface SharedChannelActivityRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequest:(id)request;
- (int)request;
- (unint64_t)hash;
- (void)clearOneofValuesForRequest;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setActivationRequest:(id)request;
- (void)setDeactivationRequest:(id)request;
- (void)setPollingRequest:(id)request;
- (void)writeTo:(id)to;
@end

@implementation SharedChannelActivityRequest

- (void)setActivationRequest:(id)request
{
  requestCopy = request;
  [(SharedChannelActivityRequest *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 1;
  activationRequest = self->_activationRequest;
  self->_activationRequest = requestCopy;
}

- (void)setDeactivationRequest:(id)request
{
  requestCopy = request;
  [(SharedChannelActivityRequest *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 2;
  deactivationRequest = self->_deactivationRequest;
  self->_deactivationRequest = requestCopy;
}

- (void)setPollingRequest:(id)request
{
  requestCopy = request;
  [(SharedChannelActivityRequest *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 3;
  pollingRequest = self->_pollingRequest;
  self->_pollingRequest = requestCopy;
}

- (int)request
{
  if (*&self->_has)
  {
    return self->_request;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([requestCopy isEqualToString:@"activation_request"])
  {
    v4 = 1;
  }

  else if ([requestCopy isEqualToString:@"deactivation_request"])
  {
    v4 = 2;
  }

  else if ([requestCopy isEqualToString:@"polling_request"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForRequest
{
  *&self->_has &= ~1u;
  self->_request = 0;
  activationRequest = self->_activationRequest;
  self->_activationRequest = 0;

  deactivationRequest = self->_deactivationRequest;
  self->_deactivationRequest = 0;

  pollingRequest = self->_pollingRequest;
  self->_pollingRequest = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelActivityRequest;
  v4 = [(SharedChannelActivityRequest *)&v8 description];
  dictionaryRepresentation = [(SharedChannelActivityRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  activationRequest = self->_activationRequest;
  if (activationRequest)
  {
    dictionaryRepresentation = [(ChannelActivityActivationRequest *)activationRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"activation_request"];
  }

  deactivationRequest = self->_deactivationRequest;
  if (deactivationRequest)
  {
    dictionaryRepresentation2 = [(ChannelActivityDeactivationRequest *)deactivationRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"deactivation_request"];
  }

  pollingRequest = self->_pollingRequest;
  if (pollingRequest)
  {
    dictionaryRepresentation3 = [(ChannelActivityPollingRequest *)pollingRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"polling_request"];
  }

  if (*&self->_has)
  {
    request = self->_request;
    if (request >= 4)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_request];
    }

    else
    {
      v11 = off_27843E078[request];
    }

    [dictionary setObject:v11 forKey:@"request"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_activationRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_deactivationRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_pollingRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_request;
    *(toCopy + 36) |= 1u;
  }

  v5 = toCopy;
  if (self->_activationRequest)
  {
    [toCopy setActivationRequest:?];
    toCopy = v5;
  }

  if (self->_deactivationRequest)
  {
    [v5 setDeactivationRequest:?];
    toCopy = v5;
  }

  if (self->_pollingRequest)
  {
    [v5 setPollingRequest:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_request;
    *(v5 + 36) |= 1u;
  }

  v7 = [(ChannelActivityActivationRequest *)self->_activationRequest copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(ChannelActivityDeactivationRequest *)self->_deactivationRequest copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(ChannelActivityPollingRequest *)self->_pollingRequest copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_request != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  activationRequest = self->_activationRequest;
  if (activationRequest | *(equalCopy + 1) && ![(ChannelActivityActivationRequest *)activationRequest isEqual:?])
  {
    goto LABEL_13;
  }

  deactivationRequest = self->_deactivationRequest;
  if (deactivationRequest | *(equalCopy + 2))
  {
    if (![(ChannelActivityDeactivationRequest *)deactivationRequest isEqual:?])
    {
      goto LABEL_13;
    }
  }

  pollingRequest = self->_pollingRequest;
  if (pollingRequest | *(equalCopy + 3))
  {
    v9 = [(ChannelActivityPollingRequest *)pollingRequest isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_request;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ChannelActivityActivationRequest *)self->_activationRequest hash]^ v3;
  v5 = [(ChannelActivityDeactivationRequest *)self->_deactivationRequest hash];
  return v4 ^ v5 ^ [(ChannelActivityPollingRequest *)self->_pollingRequest hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 36))
  {
    self->_request = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  activationRequest = self->_activationRequest;
  v7 = v5[1];
  v12 = v5;
  if (activationRequest)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ChannelActivityActivationRequest *)activationRequest mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(SharedChannelActivityRequest *)self setActivationRequest:?];
  }

  v5 = v12;
LABEL_9:
  deactivationRequest = self->_deactivationRequest;
  v9 = v5[2];
  if (deactivationRequest)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(ChannelActivityDeactivationRequest *)deactivationRequest mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(SharedChannelActivityRequest *)self setDeactivationRequest:?];
  }

  v5 = v12;
LABEL_15:
  pollingRequest = self->_pollingRequest;
  v11 = v5[3];
  if (pollingRequest)
  {
    if (v11)
    {
      [(ChannelActivityPollingRequest *)pollingRequest mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(SharedChannelActivityRequest *)self setPollingRequest:?];
  }

  MEMORY[0x2821F96F8]();
}

@end