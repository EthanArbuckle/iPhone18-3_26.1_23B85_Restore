@interface RMSConnectToServiceResponseMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasResponseData:(BOOL)data;
- (void)setHasSessionIdentifier:(BOOL)identifier;
- (void)writeTo:(id)to;
@end

@implementation RMSConnectToServiceResponseMessage

- (void)setHasSessionIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasResponseData:(BOOL)data
{
  if (data)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSConnectToServiceResponseMessage;
  v4 = [(RMSConnectToServiceResponseMessage *)&v8 description];
  dictionaryRepresentation = [(RMSConnectToServiceResponseMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_responseCode];
    [dictionary setObject:v5 forKey:@"responseCode"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionIdentifier];
    [dictionary setObject:v6 forKey:@"sessionIdentifier"];
  }

  controlInterface = self->_controlInterface;
  if (controlInterface)
  {
    dictionaryRepresentation = [(RMSControlInterfaceMessage *)controlInterface dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"controlInterface"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_responseData];
    [dictionary setObject:v9 forKey:@"responseData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_controlInterface)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[4] = self->_responseCode;
    *(toCopy + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[6] = self->_sessionIdentifier;
    *(toCopy + 28) |= 4u;
  }

  if (self->_controlInterface)
  {
    v6 = toCopy;
    [toCopy setControlInterface:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[5] = self->_responseData;
    *(toCopy + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_responseCode;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_sessionIdentifier;
    *(v5 + 28) |= 4u;
  }

  v8 = [(RMSControlInterfaceMessage *)self->_controlInterface copyWithZone:zone];
  v9 = *(v6 + 8);
  *(v6 + 8) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_responseData;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  if (has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_responseCode != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_sessionIdentifier != *(equalCopy + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_19;
  }

  controlInterface = self->_controlInterface;
  if (controlInterface | *(equalCopy + 1))
  {
    if (![(RMSControlInterfaceMessage *)controlInterface isEqual:?])
    {
LABEL_19:
      v7 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v7 = (*(equalCopy + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_responseData != *(equalCopy + 5))
    {
      goto LABEL_19;
    }

    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_responseCode;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_sessionIdentifier;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(RMSControlInterfaceMessage *)self->_controlInterface hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_responseData;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 28);
  if (v6)
  {
    self->_responseCode = fromCopy[4];
    *&self->_has |= 1u;
    v6 = *(fromCopy + 28);
  }

  if ((v6 & 4) != 0)
  {
    self->_sessionIdentifier = fromCopy[6];
    *&self->_has |= 4u;
  }

  controlInterface = self->_controlInterface;
  v8 = *(v5 + 1);
  if (controlInterface)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    [(RMSControlInterfaceMessage *)controlInterface mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    [(RMSConnectToServiceResponseMessage *)self setControlInterface:?];
  }

  v5 = v9;
LABEL_11:
  if ((v5[7] & 2) != 0)
  {
    self->_responseData = v5[5];
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end