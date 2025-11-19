@interface AWDIDSSessionStarted
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasClientType:(BOOL)a3;
- (void)setHasSessionProtocolVersionNumber:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSSessionStarted

- (void)dealloc
{
  [(AWDIDSSessionStarted *)self setGuid:0];
  [(AWDIDSSessionStarted *)self setServiceName:0];
  v3.receiver = self;
  v3.super_class = AWDIDSSessionStarted;
  [(AWDIDSSessionStarted *)&v3 dealloc];
}

- (void)setHasSessionProtocolVersionNumber:(BOOL)a3
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

- (void)setHasClientType:(BOOL)a3
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
  v3.receiver = self;
  v3.super_class = AWDIDSSessionStarted;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSSessionStarted description](&v3, sel_description), -[AWDIDSSessionStarted dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  if ((*&self->_has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sessionProtocolVersionNumber), @"sessionProtocolVersionNumber"}];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v3 setObject:serviceName forKey:@"serviceName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_clientType), @"clientType"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    sessionProtocolVersionNumber = self->_sessionProtocolVersionNumber;
    PBDataWriterWriteUint32Field();
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    clientType = self->_clientType;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 44) |= 1u;
  }

  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  if ((*&self->_has & 4) != 0)
  {
    *(a3 + 10) = self->_sessionProtocolVersionNumber;
    *(a3 + 44) |= 4u;
  }

  if (self->_serviceName)
  {
    [a3 setServiceName:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 4) = self->_clientType;
    *(a3 + 44) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_guid copyWithZone:a3];
  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 40) = self->_sessionProtocolVersionNumber;
    *(v6 + 44) |= 4u;
  }

  *(v6 + 32) = [(NSString *)self->_serviceName copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_clientType;
    *(v6 + 44) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 44);
    if (has)
    {
      if ((*(a3 + 44) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_22;
      }
    }

    else if (*(a3 + 44))
    {
LABEL_22:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (guid | *(a3 + 3))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 44);
    if ((has & 4) != 0)
    {
      if ((*(a3 + 44) & 4) == 0 || self->_sessionProtocolVersionNumber != *(a3 + 10))
      {
        goto LABEL_22;
      }
    }

    else if ((*(a3 + 44) & 4) != 0)
    {
      goto LABEL_22;
    }

    serviceName = self->_serviceName;
    if (serviceName | *(a3 + 4))
    {
      v5 = [(NSString *)serviceName isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(a3 + 44) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 44) & 2) == 0 || self->_clientType != *(a3 + 4))
      {
        goto LABEL_22;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_guid hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_sessionProtocolVersionNumber;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_serviceName hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_clientType;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 44))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDIDSSessionStarted *)self setGuid:?];
  }

  if ((*(a3 + 44) & 4) != 0)
  {
    self->_sessionProtocolVersionNumber = *(a3 + 10);
    *&self->_has |= 4u;
  }

  if (*(a3 + 4))
  {
    [(AWDIDSSessionStarted *)self setServiceName:?];
  }

  if ((*(a3 + 44) & 2) != 0)
  {
    self->_clientType = *(a3 + 4);
    *&self->_has |= 2u;
  }
}

@end