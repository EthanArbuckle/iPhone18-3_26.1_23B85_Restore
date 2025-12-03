@interface WiFiAnalyticsAWDWiFiNWActivityMpduWME
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTid1:(BOOL)tid1;
- (void)setHasTid2:(BOOL)tid2;
- (void)setHasTid3:(BOOL)tid3;
- (void)setHasTid4:(BOOL)tid4;
- (void)setHasTid5:(BOOL)tid5;
- (void)setHasTid6:(BOOL)tid6;
- (void)setHasTid7:(BOOL)tid7;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityMpduWME

- (void)setHasTid1:(BOOL)tid1
{
  if (tid1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTid2:(BOOL)tid2
{
  if (tid2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTid3:(BOOL)tid3
{
  if (tid3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTid4:(BOOL)tid4
{
  if (tid4)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTid5:(BOOL)tid5
{
  if (tid5)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTid6:(BOOL)tid6
{
  if (tid6)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasTid7:(BOOL)tid7
{
  if (tid7)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityMpduWME;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tid0];
    [dictionary setObject:v6 forKey:@"tid0"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tid1];
  [dictionary setObject:v7 forKey:@"tid1"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tid2];
  [dictionary setObject:v8 forKey:@"tid2"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tid3];
  [dictionary setObject:v9 forKey:@"tid3"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tid4];
  [dictionary setObject:v10 forKey:@"tid4"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tid6];
    [dictionary setObject:v12 forKey:@"tid6"];

    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tid5];
  [dictionary setObject:v11 forKey:@"tid5"];

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tid7];
  [dictionary setObject:v13 forKey:@"tid7"];

LABEL_9:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    tid0 = self->_tid0;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  tid1 = self->_tid1;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  tid2 = self->_tid2;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  tid3 = self->_tid3;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  tid4 = self->_tid4;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    tid6 = self->_tid6;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  tid5 = self->_tid5;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  tid7 = self->_tid7;
  PBDataWriterWriteUint64Field();
LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_tid0;
    *(toCopy + 72) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_tid1;
  *(toCopy + 72) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  toCopy[3] = self->_tid2;
  *(toCopy + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  toCopy[4] = self->_tid3;
  *(toCopy + 72) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[5] = self->_tid4;
  *(toCopy + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    toCopy[7] = self->_tid6;
    *(toCopy + 72) |= 0x40u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  toCopy[6] = self->_tid5;
  *(toCopy + 72) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  toCopy[8] = self->_tid7;
  *(toCopy + 72) |= 0x80u;
LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_tid0;
    *(result + 72) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_tid1;
  *(result + 72) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 3) = self->_tid2;
  *(result + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 4) = self->_tid3;
  *(result + 72) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_tid4;
  *(result + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 6) = self->_tid5;
  *(result + 72) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      return result;
    }

LABEL_17:
    *(result + 8) = self->_tid7;
    *(result + 72) |= 0x80u;
    return result;
  }

LABEL_16:
  *(result + 7) = self->_tid6;
  *(result + 72) |= 0x40u;
  if ((*&self->_has & 0x80) != 0)
  {
    goto LABEL_17;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  if (*&self->_has)
  {
    if ((equalCopy[72] & 1) == 0 || self->_tid0 != *(equalCopy + 1))
    {
      goto LABEL_41;
    }
  }

  else if (equalCopy[72])
  {
LABEL_41:
    v5 = 0;
    goto LABEL_42;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[72] & 2) == 0 || self->_tid1 != *(equalCopy + 2))
    {
      goto LABEL_41;
    }
  }

  else if ((equalCopy[72] & 2) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[72] & 4) == 0 || self->_tid2 != *(equalCopy + 3))
    {
      goto LABEL_41;
    }
  }

  else if ((equalCopy[72] & 4) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((equalCopy[72] & 8) == 0 || self->_tid3 != *(equalCopy + 4))
    {
      goto LABEL_41;
    }
  }

  else if ((equalCopy[72] & 8) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((equalCopy[72] & 0x10) == 0 || self->_tid4 != *(equalCopy + 5))
    {
      goto LABEL_41;
    }
  }

  else if ((equalCopy[72] & 0x10) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((equalCopy[72] & 0x20) == 0 || self->_tid5 != *(equalCopy + 6))
    {
      goto LABEL_41;
    }
  }

  else if ((equalCopy[72] & 0x20) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((equalCopy[72] & 0x40) == 0 || self->_tid6 != *(equalCopy + 7))
    {
      goto LABEL_41;
    }
  }

  else if ((equalCopy[72] & 0x40) != 0)
  {
    goto LABEL_41;
  }

  v5 = equalCopy[72] >= 0;
  if ((*&self->_has & 0x80) != 0)
  {
    if ((equalCopy[72] & 0x80) == 0 || self->_tid7 != *(equalCopy + 8))
    {
      goto LABEL_41;
    }

    v5 = 1;
  }

LABEL_42:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_tid0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_tid1;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_tid2;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761u * self->_tid3;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761u * self->_tid4;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v7 = 2654435761u * self->_tid5;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761u * self->_tid6;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761u * self->_tid7;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 72);
  if (v5)
  {
    self->_tid0 = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 72);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 72) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_tid1 = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 72);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_tid2 = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 72);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_tid3 = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 72);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_tid4 = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 72);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    self->_tid6 = *(fromCopy + 7);
    *&self->_has |= 0x40u;
    if ((*(fromCopy + 72) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  self->_tid5 = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 72);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  self->_tid7 = *(fromCopy + 8);
  *&self->_has |= 0x80u;
LABEL_9:
}

@end