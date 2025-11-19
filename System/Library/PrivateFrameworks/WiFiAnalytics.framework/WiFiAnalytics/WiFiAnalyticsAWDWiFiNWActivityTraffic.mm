@interface WiFiAnalyticsAWDWiFiNWActivityTraffic
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTraffic:(id)a3;
- (int)traffic;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTraffic:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasTraffic:(BOOL)a3
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

- (int)StringAsTraffic:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Rx"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Tx"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TxBK"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TxBE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TxVO"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TxVI"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RxSU"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"TxSU"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RxOFDMA"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"TxOFDMA"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"RxMUMIMO"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"TxMUMIMO"])
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
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityTraffic *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_value];
    [v3 setObject:v5 forKey:@"value"];

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

    [v3 setObject:v7 forKey:@"traffic"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    value = self->_value;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    traffic = self->_traffic;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_value;
    *(v4 + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 4) = self->_traffic;
    *(v4 + 20) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_value != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_traffic != *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_value = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
  }

  if ((v5 & 2) != 0)
  {
    self->_traffic = *(v4 + 4);
    *&self->_has |= 2u;
  }
}

@end