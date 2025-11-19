@interface RMSConnectToServiceResponseMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasResponseData:(BOOL)a3;
- (void)setHasSessionIdentifier:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RMSConnectToServiceResponseMessage

- (void)setHasSessionIdentifier:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasResponseData:(BOOL)a3
{
  if (a3)
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
  v5 = [(RMSConnectToServiceResponseMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_responseCode];
    [v3 setObject:v5 forKey:@"responseCode"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionIdentifier];
    [v3 setObject:v6 forKey:@"sessionIdentifier"];
  }

  controlInterface = self->_controlInterface;
  if (controlInterface)
  {
    v8 = [(RMSControlInterfaceMessage *)controlInterface dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"controlInterface"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_responseData];
    [v3 setObject:v9 forKey:@"responseData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[4] = self->_responseCode;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[6] = self->_sessionIdentifier;
    *(v4 + 28) |= 4u;
  }

  if (self->_controlInterface)
  {
    v6 = v4;
    [v4 setControlInterface:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[5] = self->_responseData;
    *(v4 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(RMSControlInterfaceMessage *)self->_controlInterface copyWithZone:a3];
  v9 = *(v6 + 8);
  *(v6 + 8) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_responseData;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  if (has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_responseCode != *(v4 + 4))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_sessionIdentifier != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_19;
  }

  controlInterface = self->_controlInterface;
  if (controlInterface | *(v4 + 1))
  {
    if (![(RMSControlInterfaceMessage *)controlInterface isEqual:?])
    {
LABEL_19:
      v7 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v7 = (*(v4 + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_responseData != *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 28);
  if (v6)
  {
    self->_responseCode = v4[4];
    *&self->_has |= 1u;
    v6 = *(v4 + 28);
  }

  if ((v6 & 4) != 0)
  {
    self->_sessionIdentifier = v4[6];
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