@interface AWDWiFiMetricsManagerLeakyAPStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasLeakyApDecision:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerLeakyAPStats

- (void)dealloc
{
  [(AWDWiFiMetricsManagerLeakyAPStats *)self setOui:0];
  [(AWDWiFiMetricsManagerLeakyAPStats *)self setLeakyApStats:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerLeakyAPStats;
  [(AWDWiFiMetricsManagerLeakyAPStats *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasLeakyApDecision:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerLeakyAPStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerLeakyAPStats description](&v3, sel_description), -[AWDWiFiMetricsManagerLeakyAPStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_version), @"version"}];
  }

  oui = self->_oui;
  if (oui)
  {
    [v3 setObject:oui forKey:@"oui"];
  }

  leakyApStats = self->_leakyApStats;
  if (leakyApStats)
  {
    [v3 setObject:leakyApStats forKey:@"leakyApStats"];
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_leakyApDecision), @"leakyApDecision"}];
    v7 = self->_has;
  }

  if (v7)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_hashCode), @"hashCode"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint64Field();
  }

  if (self->_oui)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_leakyApStats)
  {
    PBDataWriterWriteDataField();
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    leakyApDecision = self->_leakyApDecision;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
  }

  if (v7)
  {
    hashCode = self->_hashCode;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 56) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 3) = self->_version;
    *(a3 + 56) |= 4u;
  }

  if (self->_oui)
  {
    [a3 setOui:?];
  }

  if (self->_leakyApStats)
  {
    [a3 setLeakyApStats:?];
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(a3 + 8) = self->_leakyApDecision;
    *(a3 + 56) |= 8u;
    v6 = self->_has;
  }

  if (v6)
  {
    *(a3 + 1) = self->_hashCode;
    *(a3 + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 56) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_version;
    *(v5 + 56) |= 4u;
  }

  *(v6 + 48) = [(NSData *)self->_oui copyWithZone:a3];
  *(v6 + 40) = [(NSData *)self->_leakyApStats copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    *(v6 + 32) = self->_leakyApDecision;
    *(v6 + 56) |= 8u;
    v8 = self->_has;
  }

  if (v8)
  {
    *(v6 + 8) = self->_hashCode;
    *(v6 + 56) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 56);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 56) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_25;
      }
    }

    else if ((*(a3 + 56) & 2) != 0)
    {
LABEL_25:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 56) & 4) == 0 || self->_version != *(a3 + 3))
      {
        goto LABEL_25;
      }
    }

    else if ((*(a3 + 56) & 4) != 0)
    {
      goto LABEL_25;
    }

    oui = self->_oui;
    if (!(oui | *(a3 + 6)) || (v5 = [(NSData *)oui isEqual:?]) != 0)
    {
      leakyApStats = self->_leakyApStats;
      if (!(leakyApStats | *(a3 + 5)) || (v5 = [(NSData *)leakyApStats isEqual:?]) != 0)
      {
        if ((*&self->_has & 8) != 0)
        {
          if ((*(a3 + 56) & 8) == 0 || self->_leakyApDecision != *(a3 + 8))
          {
            goto LABEL_25;
          }
        }

        else if ((*(a3 + 56) & 8) != 0)
        {
          goto LABEL_25;
        }

        LOBYTE(v5) = (*(a3 + 56) & 1) == 0;
        if (*&self->_has)
        {
          if ((*(a3 + 56) & 1) == 0 || self->_hashCode != *(a3 + 1))
          {
            goto LABEL_25;
          }

          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
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
      v4 = 2654435761u * self->_version;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_oui hash];
  v6 = [(NSData *)self->_leakyApStats hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_leakyApDecision;
    if (*&self->_has)
    {
      goto LABEL_8;
    }

LABEL_10:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v8 = 2654435761u * self->_hashCode;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 56);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v5 = *(a3 + 56);
  }

  if ((v5 & 4) != 0)
  {
    self->_version = *(a3 + 3);
    *&self->_has |= 4u;
  }

  if (*(a3 + 6))
  {
    [(AWDWiFiMetricsManagerLeakyAPStats *)self setOui:?];
  }

  if (*(a3 + 5))
  {
    [(AWDWiFiMetricsManagerLeakyAPStats *)self setLeakyApStats:?];
  }

  v6 = *(a3 + 56);
  if ((v6 & 8) != 0)
  {
    self->_leakyApDecision = *(a3 + 8);
    *&self->_has |= 8u;
    v6 = *(a3 + 56);
  }

  if (v6)
  {
    self->_hashCode = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

@end