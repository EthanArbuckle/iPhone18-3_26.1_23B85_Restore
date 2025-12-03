@interface WiFiAnalyticsAWDWiFiNWActivityTraffic
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

@implementation WiFiAnalyticsAWDWiFiNWActivityTraffic

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
  trafficCopy = traffic;
  if ([trafficCopy isEqualToString:@"Rx"])
  {
    v4 = 0;
  }

  else if ([trafficCopy isEqualToString:@"Tx"])
  {
    v4 = 1;
  }

  else if ([trafficCopy isEqualToString:@"TxBK"])
  {
    v4 = 2;
  }

  else if ([trafficCopy isEqualToString:@"TxBE"])
  {
    v4 = 3;
  }

  else if ([trafficCopy isEqualToString:@"TxVO"])
  {
    v4 = 4;
  }

  else if ([trafficCopy isEqualToString:@"TxVI"])
  {
    v4 = 5;
  }

  else if ([trafficCopy isEqualToString:@"RxSU"])
  {
    v4 = 6;
  }

  else if ([trafficCopy isEqualToString:@"TxSU"])
  {
    v4 = 7;
  }

  else if ([trafficCopy isEqualToString:@"RxOFDMA"])
  {
    v4 = 8;
  }

  else if ([trafficCopy isEqualToString:@"TxOFDMA"])
  {
    v4 = 9;
  }

  else if ([trafficCopy isEqualToString:@"RxMUMIMO"])
  {
    v4 = 10;
  }

  else if ([trafficCopy isEqualToString:@"TxMUMIMO"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityTraffic;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityTraffic *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityTraffic *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_value];
    [dictionary setObject:v5 forKey:@"value"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    traffic = self->_traffic;
    if (traffic >= 0xC)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_traffic];
    }

    else
    {
      v7 = off_1E830EB98[traffic];
    }

    [dictionary setObject:v7 forKey:@"traffic"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    value = self->_value;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    traffic = self->_traffic;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_value;
    *(toCopy + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_traffic;
    *(toCopy + 20) |= 2u;
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
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_value != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_traffic != *(equalCopy + 4))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

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
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if (v5)
  {
    self->_value = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 20);
  }

  if ((v5 & 2) != 0)
  {
    self->_traffic = *(fromCopy + 4);
    *&self->_has |= 2u;
  }
}

@end