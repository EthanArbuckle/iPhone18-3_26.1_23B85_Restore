@interface AWDWiFiNWActivityTraffic
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTraffic:(id)traffic;
- (int)traffic;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTraffic:(BOOL)traffic;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivityTraffic

- (int)traffic
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_traffic;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTraffic:(BOOL)traffic
{
  if (traffic)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsTraffic:(id)traffic
{
  if ([traffic isEqualToString:@"Rx"])
  {
    return 0;
  }

  if ([traffic isEqualToString:@"Tx"])
  {
    return 1;
  }

  if ([traffic isEqualToString:@"TxBK"])
  {
    return 2;
  }

  if ([traffic isEqualToString:@"TxBE"])
  {
    return 3;
  }

  if ([traffic isEqualToString:@"TxVO"])
  {
    return 4;
  }

  if ([traffic isEqualToString:@"TxVI"])
  {
    return 5;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityTraffic;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityTraffic description](&v3, sel_description), -[AWDWiFiNWActivityTraffic dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_value), @"value"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    traffic = self->_traffic;
    if (traffic >= 6)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_traffic];
    }

    else
    {
      v6 = off_29EE33310[traffic];
    }

    [dictionary setObject:v6 forKey:@"traffic"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    value = self->_value;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    traffic = self->_traffic;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

LABEL_5:
    *(to + 4) = self->_traffic;
    *(to + 20) |= 2u;
    return;
  }

  *(to + 1) = self->_value;
  *(to + 20) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_value;
    *(result + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_traffic;
    *(result + 20) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 20) & 1) == 0 || self->_value != *(equal + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 20))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(equal + 20) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 20) & 2) == 0 || self->_traffic != *(equal + 4))
      {
        goto LABEL_11;
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
    v2 = 2654435761u * self->_value;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_traffic;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 20) & 1) == 0)
  {
    if ((*(from + 20) & 2) == 0)
    {
      return;
    }

LABEL_5:
    self->_traffic = *(from + 4);
    *&self->_has |= 2u;
    return;
  }

  self->_value = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 20) & 2) != 0)
  {
    goto LABEL_5;
  }
}

@end