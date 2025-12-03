@interface RMSServiceMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasServiceDiscoverySource:(BOOL)source;
- (void)setHasServiceFlags:(BOOL)flags;
- (void)setHasServiceType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation RMSServiceMessage

- (void)setHasServiceType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasServiceDiscoverySource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasServiceFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSServiceMessage;
  v4 = [(RMSServiceMessage *)&v8 description];
  dictionaryRepresentation = [(RMSServiceMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  displayName = self->_displayName;
  if (displayName)
  {
    [dictionary setObject:displayName forKey:@"displayName"];
  }

  networkName = self->_networkName;
  if (networkName)
  {
    [v4 setObject:networkName forKey:@"networkName"];
  }

  hostName = self->_hostName;
  if (hostName)
  {
    [v4 setObject:hostName forKey:@"hostName"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_port];
    [v4 setObject:v13 forKey:@"port"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_serviceType];
  [v4 setObject:v14 forKey:@"serviceType"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_serviceDiscoverySource];
  [v4 setObject:v15 forKey:@"serviceDiscoverySource"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_serviceFlags];
    [v4 setObject:v9 forKey:@"serviceFlags"];
  }

LABEL_12:
  homeSharingGroupKey = self->_homeSharingGroupKey;
  if (homeSharingGroupKey)
  {
    [v4 setObject:homeSharingGroupKey forKey:@"homeSharingGroupKey"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v4 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_networkName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hostName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt32Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  PBDataWriterWriteInt32Field();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

LABEL_12:
  if (self->_homeSharingGroupKey)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_displayName)
  {
    [toCopy setDisplayName:?];
    toCopy = v6;
  }

  if (self->_networkName)
  {
    [v6 setNetworkName:?];
    toCopy = v6;
  }

  if (self->_hostName)
  {
    [v6 setHostName:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 10) = self->_port;
    *(toCopy + 64) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 13) = self->_serviceType;
  *(toCopy + 64) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(toCopy + 11) = self->_serviceDiscoverySource;
  *(toCopy + 64) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    *(toCopy + 12) = self->_serviceFlags;
    *(toCopy + 64) |= 4u;
  }

LABEL_12:
  if (self->_homeSharingGroupKey)
  {
    [v6 setHomeSharingGroupKey:?];
    toCopy = v6;
  }

  if (self->_uniqueIdentifier)
  {
    [v6 setUniqueIdentifier:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_displayName copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_networkName copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_hostName copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 40) = self->_port;
    *(v5 + 64) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 44) = self->_serviceDiscoverySource;
      *(v5 + 64) |= 2u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 52) = self->_serviceType;
  *(v5 + 64) |= 8u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v5 + 48) = self->_serviceFlags;
    *(v5 + 64) |= 4u;
  }

LABEL_6:
  v13 = [(NSString *)self->_homeSharingGroupKey copyWithZone:zone];
  v14 = *(v5 + 16);
  *(v5 + 16) = v13;

  v15 = [(NSString *)self->_uniqueIdentifier copyWithZone:zone];
  v16 = *(v5 + 56);
  *(v5 + 56) = v15;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 1))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_32;
    }
  }

  networkName = self->_networkName;
  if (networkName | *(equalCopy + 4))
  {
    if (![(NSString *)networkName isEqual:?])
    {
      goto LABEL_32;
    }
  }

  hostName = self->_hostName;
  if (hostName | *(equalCopy + 3))
  {
    if (![(NSString *)hostName isEqual:?])
    {
      goto LABEL_32;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_port != *(equalCopy + 10))
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_32:
    v10 = 0;
    goto LABEL_33;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_serviceType != *(equalCopy + 13))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_serviceDiscoverySource != *(equalCopy + 11))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_serviceFlags != *(equalCopy + 12))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_32;
  }

  homeSharingGroupKey = self->_homeSharingGroupKey;
  if (homeSharingGroupKey | *(equalCopy + 2) && ![(NSString *)homeSharingGroupKey isEqual:?])
  {
    goto LABEL_32;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(equalCopy + 7))
  {
    v10 = [(NSString *)uniqueIdentifier isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_33:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_displayName hash];
  v4 = [(NSString *)self->_networkName hash];
  v5 = [(NSString *)self->_hostName hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_port;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_serviceType;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_serviceDiscoverySource;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_serviceFlags;
LABEL_10:
  v10 = v4 ^ v3 ^ v5 ^ v6;
  v11 = v7 ^ v8 ^ v9 ^ [(NSString *)self->_homeSharingGroupKey hash];
  return v10 ^ v11 ^ [(NSString *)self->_uniqueIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(RMSServiceMessage *)self setDisplayName:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(RMSServiceMessage *)self setNetworkName:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(RMSServiceMessage *)self setHostName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 64);
  if (v5)
  {
    self->_port = fromCopy[10];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 64);
    if ((v5 & 8) == 0)
    {
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((fromCopy[16] & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_serviceType = fromCopy[13];
  *&self->_has |= 8u;
  v5 = *(fromCopy + 64);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  self->_serviceDiscoverySource = fromCopy[11];
  *&self->_has |= 2u;
  if ((fromCopy[16] & 4) != 0)
  {
LABEL_11:
    self->_serviceFlags = fromCopy[12];
    *&self->_has |= 4u;
  }

LABEL_12:
  if (*(fromCopy + 2))
  {
    [(RMSServiceMessage *)self setHomeSharingGroupKey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 7))
  {
    [(RMSServiceMessage *)self setUniqueIdentifier:?];
    fromCopy = v6;
  }
}

@end