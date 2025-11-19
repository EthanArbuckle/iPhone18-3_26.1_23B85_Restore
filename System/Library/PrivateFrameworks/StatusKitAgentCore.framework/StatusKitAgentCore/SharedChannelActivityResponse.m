@interface SharedChannelActivityResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsResponse:(id)a3;
- (int)response;
- (unint64_t)hash;
- (void)clearOneofValuesForResponse;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setActivationResponse:(id)a3;
- (void)setDeactivationResponse:(id)a3;
- (void)setPollingResponse:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SharedChannelActivityResponse

- (void)setActivationResponse:(id)a3
{
  v4 = a3;
  [(SharedChannelActivityResponse *)self clearOneofValuesForResponse];
  *&self->_has |= 1u;
  self->_response = 1;
  activationResponse = self->_activationResponse;
  self->_activationResponse = v4;
}

- (void)setDeactivationResponse:(id)a3
{
  v4 = a3;
  [(SharedChannelActivityResponse *)self clearOneofValuesForResponse];
  *&self->_has |= 1u;
  self->_response = 2;
  deactivationResponse = self->_deactivationResponse;
  self->_deactivationResponse = v4;
}

- (void)setPollingResponse:(id)a3
{
  v4 = a3;
  [(SharedChannelActivityResponse *)self clearOneofValuesForResponse];
  *&self->_has |= 1u;
  self->_response = 3;
  pollingResponse = self->_pollingResponse;
  self->_pollingResponse = v4;
}

- (int)response
{
  if (*&self->_has)
  {
    return self->_response;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsResponse:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"activation_response"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"deactivation_response"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"polling_response"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForResponse
{
  *&self->_has &= ~1u;
  self->_response = 0;
  activationResponse = self->_activationResponse;
  self->_activationResponse = 0;

  deactivationResponse = self->_deactivationResponse;
  self->_deactivationResponse = 0;

  pollingResponse = self->_pollingResponse;
  self->_pollingResponse = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelActivityResponse;
  v4 = [(SharedChannelActivityResponse *)&v8 description];
  v5 = [(SharedChannelActivityResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  activationResponse = self->_activationResponse;
  if (activationResponse)
  {
    v5 = [(ChannelActivityActivationResponse *)activationResponse dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"activation_response"];
  }

  deactivationResponse = self->_deactivationResponse;
  if (deactivationResponse)
  {
    v7 = [(ChannelActivityDeactivationResponse *)deactivationResponse dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"deactivation_response"];
  }

  pollingResponse = self->_pollingResponse;
  if (pollingResponse)
  {
    v9 = [(ChannelActivityPollingResponse *)pollingResponse dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"polling_response"];
  }

  if (*&self->_has)
  {
    response = self->_response;
    if (response >= 4)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_response];
    }

    else
    {
      v11 = off_27843E098[response];
    }

    [v3 setObject:v11 forKey:@"response"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activationResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_deactivationResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_pollingResponse)
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
    v4[8] = self->_response;
    *(v4 + 36) |= 1u;
  }

  v5 = v4;
  if (self->_activationResponse)
  {
    [v4 setActivationResponse:?];
    v4 = v5;
  }

  if (self->_deactivationResponse)
  {
    [v5 setDeactivationResponse:?];
    v4 = v5;
  }

  if (self->_pollingResponse)
  {
    [v5 setPollingResponse:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_response;
    *(v5 + 36) |= 1u;
  }

  v7 = [(ChannelActivityActivationResponse *)self->_activationResponse copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(ChannelActivityDeactivationResponse *)self->_deactivationResponse copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(ChannelActivityPollingResponse *)self->_pollingResponse copyWithZone:a3];
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
    if ((*(v4 + 36) & 1) == 0 || self->_response != *(v4 + 8))
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

  activationResponse = self->_activationResponse;
  if (activationResponse | *(v4 + 1) && ![(ChannelActivityActivationResponse *)activationResponse isEqual:?])
  {
    goto LABEL_13;
  }

  deactivationResponse = self->_deactivationResponse;
  if (deactivationResponse | *(v4 + 2))
  {
    if (![(ChannelActivityDeactivationResponse *)deactivationResponse isEqual:?])
    {
      goto LABEL_13;
    }
  }

  pollingResponse = self->_pollingResponse;
  if (pollingResponse | *(v4 + 3))
  {
    v9 = [(ChannelActivityPollingResponse *)pollingResponse isEqual:?];
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
    v3 = 2654435761 * self->_response;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ChannelActivityActivationResponse *)self->_activationResponse hash]^ v3;
  v5 = [(ChannelActivityDeactivationResponse *)self->_deactivationResponse hash];
  return v4 ^ v5 ^ [(ChannelActivityPollingResponse *)self->_pollingResponse hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 36))
  {
    self->_response = *(v4 + 8);
    *&self->_has |= 1u;
  }

  activationResponse = self->_activationResponse;
  v7 = v5[1];
  v12 = v5;
  if (activationResponse)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ChannelActivityActivationResponse *)activationResponse mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(SharedChannelActivityResponse *)self setActivationResponse:?];
  }

  v5 = v12;
LABEL_9:
  deactivationResponse = self->_deactivationResponse;
  v9 = v5[2];
  if (deactivationResponse)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(ChannelActivityDeactivationResponse *)deactivationResponse mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(SharedChannelActivityResponse *)self setDeactivationResponse:?];
  }

  v5 = v12;
LABEL_15:
  pollingResponse = self->_pollingResponse;
  v11 = v5[3];
  if (pollingResponse)
  {
    if (v11)
    {
      [(ChannelActivityPollingResponse *)pollingResponse mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(SharedChannelActivityResponse *)self setPollingResponse:?];
  }

  MEMORY[0x2821F96F8]();
}

@end