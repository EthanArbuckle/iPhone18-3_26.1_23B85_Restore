@interface AWDMDNSResponderResolveStatsResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasServerID:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasType:(BOOL)a3
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

- (int)StringAsType:(id)a3
{
  if ([a3 isEqualToString:@"IPv4Addr"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"IPv6Addr"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NegA"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NegAAAA"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasServerID:(BOOL)a3
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
  v3.super_class = AWDMDNSResponderResolveStatsResult;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMDNSResponderResolveStatsResult description](&v3, sel_description), -[AWDMDNSResponderResolveStatsResult dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
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

    [v3 setObject:v6 forKey:@"type"];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_count), @"count"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_serverID), @"serverID"}];
  }

  data = self->_data;
  if (data)
  {
    [v3 setObject:data forKey:@"data"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 7) = self->_type;
    *(a3 + 32) |= 4u;
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

  *(a3 + 2) = self->_count;
  *(a3 + 32) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(a3 + 6) = self->_serverID;
    *(a3 + 32) |= 2u;
  }

LABEL_5:
  data = self->_data;
  if (data)
  {
    [a3 setData:data];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v6[2] = [(NSData *)self->_data copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 32);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 32) & 4) == 0 || self->_type != *(a3 + 7))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 32) & 4) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_count != *(a3 + 2))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 32))
    {
      goto LABEL_19;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_serverID != *(a3 + 6))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 32) & 2) != 0)
    {
      goto LABEL_19;
    }

    data = self->_data;
    if (data | *(a3 + 2))
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 32);
  if ((v3 & 4) != 0)
  {
    self->_type = *(a3 + 7);
    *&self->_has |= 4u;
    v3 = *(a3 + 32);
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

  else if ((*(a3 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_count = *(a3 + 2);
  *&self->_has |= 1u;
  if ((*(a3 + 32) & 2) != 0)
  {
LABEL_4:
    self->_serverID = *(a3 + 6);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(a3 + 2))
  {
    [(AWDMDNSResponderResolveStatsResult *)self setData:?];
  }
}

@end