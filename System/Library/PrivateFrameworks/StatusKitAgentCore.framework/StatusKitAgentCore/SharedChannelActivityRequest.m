@interface SharedChannelActivityRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequest:(id)a3;
- (int)request;
- (unint64_t)hash;
- (void)clearOneofValuesForRequest;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setActivationRequest:(id)a3;
- (void)setDeactivationRequest:(id)a3;
- (void)setPollingRequest:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SharedChannelActivityRequest

- (void)setActivationRequest:(id)a3
{
  v4 = a3;
  [(SharedChannelActivityRequest *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 1;
  activationRequest = self->_activationRequest;
  self->_activationRequest = v4;
}

- (void)setDeactivationRequest:(id)a3
{
  v4 = a3;
  [(SharedChannelActivityRequest *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 2;
  deactivationRequest = self->_deactivationRequest;
  self->_deactivationRequest = v4;
}

- (void)setPollingRequest:(id)a3
{
  v4 = a3;
  [(SharedChannelActivityRequest *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 3;
  pollingRequest = self->_pollingRequest;
  self->_pollingRequest = v4;
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

- (int)StringAsRequest:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"activation_request"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"deactivation_request"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"polling_request"])
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
  v5 = [(SharedChannelActivityRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  activationRequest = self->_activationRequest;
  if (activationRequest)
  {
    v5 = [(ChannelActivityActivationRequest *)activationRequest dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"activation_request"];
  }

  deactivationRequest = self->_deactivationRequest;
  if (deactivationRequest)
  {
    v7 = [(ChannelActivityDeactivationRequest *)deactivationRequest dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"deactivation_request"];
  }

  pollingRequest = self->_pollingRequest;
  if (pollingRequest)
  {
    v9 = [(ChannelActivityPollingRequest *)pollingRequest dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"polling_request"];
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

    [v3 setObject:v11 forKey:@"request"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activationRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_deactivationRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_pollingRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_request;
    *(v4 + 36) |= 1u;
  }

  v5 = v4;
  if (self->_activationRequest)
  {
    [v4 setActivationRequest:?];
    v4 = v5;
  }

  if (self->_deactivationRequest)
  {
    [v5 setDeactivationRequest:?];
    v4 = v5;
  }

  if (self->_pollingRequest)
  {
    [v5 setPollingRequest:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_request;
    *(v5 + 36) |= 1u;
  }

  v7 = [(ChannelActivityActivationRequest *)self->_activationRequest copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(ChannelActivityDeactivationRequest *)self->_deactivationRequest copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(ChannelActivityPollingRequest *)self->_pollingRequest copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_request != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  activationRequest = self->_activationRequest;
  if (activationRequest | *(v4 + 1) && ![(ChannelActivityActivationRequest *)activationRequest isEqual:?])
  {
    goto LABEL_13;
  }

  deactivationRequest = self->_deactivationRequest;
  if (deactivationRequest | *(v4 + 2))
  {
    if (![(ChannelActivityDeactivationRequest *)deactivationRequest isEqual:?])
    {
      goto LABEL_13;
    }
  }

  pollingRequest = self->_pollingRequest;
  if (pollingRequest | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 36))
  {
    self->_request = *(v4 + 8);
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