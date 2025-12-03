@interface AWDMDNSResponderResolveStatsDNSServer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)type;
- (int)networkType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasServerID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation AWDMDNSResponderResolveStatsDNSServer

- (void)dealloc
{
  [(AWDMDNSResponderResolveStatsDNSServer *)self setAddress:0];
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderResolveStatsDNSServer;
  [(AWDMDNSResponderResolveStatsDNSServer *)&v3 dealloc];
}

- (int)networkType
{
  if (*&self->_has)
  {
    return self->_networkType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsNetworkType:(id)type
{
  if ([type isEqualToString:@"NonCellular"])
  {
    return 0;
  }

  else
  {
    return [type isEqualToString:@"Cellular"];
  }
}

- (void)setHasServerID:(BOOL)d
{
  if (d)
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
  v3.super_class = AWDMDNSResponderResolveStatsDNSServer;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMDNSResponderResolveStatsDNSServer description](&v3, sel_description), -[AWDMDNSResponderResolveStatsDNSServer dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  address = self->_address;
  if (address)
  {
    [dictionary setObject:address forKey:@"address"];
  }

  has = self->_has;
  if (has)
  {
    networkType = self->_networkType;
    if (networkType)
    {
      if (networkType == 1)
      {
        v8 = @"Cellular";
      }

      else
      {
        v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_networkType];
      }
    }

    else
    {
      v8 = @"NonCellular";
    }

    [v4 setObject:v8 forKey:@"networkType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_serverID), @"serverID"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_address)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if (has)
  {
    networkType = self->_networkType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    serverID = self->_serverID;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  if (self->_address)
  {
    [to setAddress:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 4) = self->_networkType;
    *(to + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 5) = self->_serverID;
    *(to + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 8) = [(NSData *)self->_address copyWithZone:zone];
  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_networkType;
    *(v5 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_serverID;
    *(v5 + 24) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    address = self->_address;
    if (!(address | *(equal + 1)) || (v5 = [(NSData *)address isEqual:?]) != 0)
    {
      if (*&self->_has)
      {
        if ((*(equal + 24) & 1) == 0 || self->_networkType != *(equal + 4))
        {
          goto LABEL_13;
        }
      }

      else if (*(equal + 24))
      {
LABEL_13:
        LOBYTE(v5) = 0;
        return v5;
      }

      LOBYTE(v5) = (*(equal + 24) & 2) == 0;
      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 24) & 2) == 0 || self->_serverID != *(equal + 5))
        {
          goto LABEL_13;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_address hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_networkType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_serverID;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(AWDMDNSResponderResolveStatsDNSServer *)self setAddress:?];
  }

  v5 = *(from + 24);
  if (v5)
  {
    self->_networkType = *(from + 4);
    *&self->_has |= 1u;
    v5 = *(from + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_serverID = *(from + 5);
    *&self->_has |= 2u;
  }
}

@end