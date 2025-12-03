@interface AWDMDNSResponderResolveStatsResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasServerID:(BOOL)d;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDMDNSResponderResolveStatsResult

- (void)dealloc
{
  [(AWDMDNSResponderResolveStatsResult *)self setData:0];
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderResolveStatsResult;
  [(AWDMDNSResponderResolveStatsResult *)&v3 dealloc];
}

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsType:(id)type
{
  if ([type isEqualToString:@"IPv4Addr"])
  {
    return 0;
  }

  if ([type isEqualToString:@"IPv6Addr"])
  {
    return 1;
  }

  if ([type isEqualToString:@"NegA"])
  {
    return 2;
  }

  if ([type isEqualToString:@"NegAAAA"])
  {
    return 3;
  }

  return 0;
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
  v3.super_class = AWDMDNSResponderResolveStatsResult;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMDNSResponderResolveStatsResult description](&v3, sel_description), -[AWDMDNSResponderResolveStatsResult dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    type = self->_type;
    if (type >= 4)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v6 = off_29EE32A28[type];
    }

    [dictionary setObject:v6 forKey:@"type"];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_count), @"count"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_serverID), @"serverID"}];
  }

  data = self->_data;
  if (data)
  {
    [dictionary setObject:data forKey:@"data"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  count = self->_count;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    serverID = self->_serverID;
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  if (self->_data)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 7) = self->_type;
    *(to + 32) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(to + 2) = self->_count;
  *(to + 32) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(to + 6) = self->_serverID;
    *(to + 32) |= 2u;
  }

LABEL_5:
  data = self->_data;
  if (data)
  {
    [to setData:data];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_count;
    *(v5 + 32) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 28) = self->_type;
  *(v5 + 32) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_serverID;
    *(v5 + 32) |= 2u;
  }

LABEL_5:

  v6[2] = [(NSData *)self->_data copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 32);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 32) & 4) == 0 || self->_type != *(equal + 7))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 32) & 4) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_count != *(equal + 2))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 32))
    {
      goto LABEL_19;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_serverID != *(equal + 6))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 32) & 2) != 0)
    {
      goto LABEL_19;
    }

    data = self->_data;
    if (data | *(equal + 2))
    {

      LOBYTE(v5) = [(NSData *)data isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSData *)self->_data hash:v3];
  }

  v6 = 2654435761 * self->_type;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_count;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_serverID;
  return v7 ^ v6 ^ v8 ^ [(NSData *)self->_data hash:v3];
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 32);
  if ((v3 & 4) != 0)
  {
    self->_type = *(from + 7);
    *&self->_has |= 4u;
    v3 = *(from + 32);
    if ((v3 & 1) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_count = *(from + 2);
  *&self->_has |= 1u;
  if ((*(from + 32) & 2) != 0)
  {
LABEL_4:
    self->_serverID = *(from + 6);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(from + 2))
  {
    [(AWDMDNSResponderResolveStatsResult *)self setData:?];
  }
}

@end