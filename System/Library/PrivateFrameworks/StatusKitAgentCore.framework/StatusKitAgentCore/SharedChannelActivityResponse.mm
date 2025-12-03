@interface SharedChannelActivityResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsResponse:(id)response;
- (int)response;
- (unint64_t)hash;
- (void)clearOneofValuesForResponse;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setActivationResponse:(id)response;
- (void)setDeactivationResponse:(id)response;
- (void)setPollingResponse:(id)response;
- (void)writeTo:(id)to;
@end

@implementation SharedChannelActivityResponse

- (void)setActivationResponse:(id)response
{
  responseCopy = response;
  [(SharedChannelActivityResponse *)self clearOneofValuesForResponse];
  *&self->_has |= 1u;
  self->_response = 1;
  activationResponse = self->_activationResponse;
  self->_activationResponse = responseCopy;
}

- (void)setDeactivationResponse:(id)response
{
  responseCopy = response;
  [(SharedChannelActivityResponse *)self clearOneofValuesForResponse];
  *&self->_has |= 1u;
  self->_response = 2;
  deactivationResponse = self->_deactivationResponse;
  self->_deactivationResponse = responseCopy;
}

- (void)setPollingResponse:(id)response
{
  responseCopy = response;
  [(SharedChannelActivityResponse *)self clearOneofValuesForResponse];
  *&self->_has |= 1u;
  self->_response = 3;
  pollingResponse = self->_pollingResponse;
  self->_pollingResponse = responseCopy;
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

- (int)StringAsResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([responseCopy isEqualToString:@"activation_response"])
  {
    v4 = 1;
  }

  else if ([responseCopy isEqualToString:@"deactivation_response"])
  {
    v4 = 2;
  }

  else if ([responseCopy isEqualToString:@"polling_response"])
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
  dictionaryRepresentation = [(SharedChannelActivityResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  activationResponse = self->_activationResponse;
  if (activationResponse)
  {
    dictionaryRepresentation = [(ChannelActivityActivationResponse *)activationResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"activation_response"];
  }

  deactivationResponse = self->_deactivationResponse;
  if (deactivationResponse)
  {
    dictionaryRepresentation2 = [(ChannelActivityDeactivationResponse *)deactivationResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"deactivation_response"];
  }

  pollingResponse = self->_pollingResponse;
  if (pollingResponse)
  {
    dictionaryRepresentation3 = [(ChannelActivityPollingResponse *)pollingResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"polling_response"];
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

    [dictionary setObject:v11 forKey:@"response"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_activationResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_deactivationResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_pollingResponse)
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
    toCopy[8] = self->_response;
    *(toCopy + 36) |= 1u;
  }

  v5 = toCopy;
  if (self->_activationResponse)
  {
    [toCopy setActivationResponse:?];
    toCopy = v5;
  }

  if (self->_deactivationResponse)
  {
    [v5 setDeactivationResponse:?];
    toCopy = v5;
  }

  if (self->_pollingResponse)
  {
    [v5 setPollingResponse:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_response;
    *(v5 + 36) |= 1u;
  }

  v7 = [(ChannelActivityActivationResponse *)self->_activationResponse copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(ChannelActivityDeactivationResponse *)self->_deactivationResponse copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(ChannelActivityPollingResponse *)self->_pollingResponse copyWithZone:zone];
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
    if ((*(equalCopy + 36) & 1) == 0 || self->_response != *(equalCopy + 8))
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

  activationResponse = self->_activationResponse;
  if (activationResponse | *(equalCopy + 1) && ![(ChannelActivityActivationResponse *)activationResponse isEqual:?])
  {
    goto LABEL_13;
  }

  deactivationResponse = self->_deactivationResponse;
  if (deactivationResponse | *(equalCopy + 2))
  {
    if (![(ChannelActivityDeactivationResponse *)deactivationResponse isEqual:?])
    {
      goto LABEL_13;
    }
  }

  pollingResponse = self->_pollingResponse;
  if (pollingResponse | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 36))
  {
    self->_response = *(fromCopy + 8);
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