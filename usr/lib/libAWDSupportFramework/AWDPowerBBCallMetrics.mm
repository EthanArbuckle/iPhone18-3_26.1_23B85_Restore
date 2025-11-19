@interface AWDPowerBBCallMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMetrics:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBBAndDataPowerMicroWatt:(BOOL)a3;
- (void)setHasBBPowerMicroWatt:(BOOL)a3;
- (void)setHasBBTotalAndDataDuration:(BOOL)a3;
- (void)setHasBBTotalCallDuration:(BOOL)a3;
- (void)setHasConnectedSleepDuration:(BOOL)a3;
- (void)setHasConnectedSleepDurationData:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDPowerBBCallMetrics

- (void)dealloc
{
  [(AWDPowerBBCallMetrics *)self setMetrics:0];
  v3.receiver = self;
  v3.super_class = AWDPowerBBCallMetrics;
  [(AWDPowerBBCallMetrics *)&v3 dealloc];
}

- (void)addMetrics:(id)a3
{
  metrics = self->_metrics;
  if (!metrics)
  {
    metrics = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_metrics = metrics;
  }

  [(NSMutableArray *)metrics addObject:a3];
}

- (void)setHasBBTotalCallDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasBBPowerMicroWatt:(BOOL)a3
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

- (void)setHasBBTotalAndDataDuration:(BOOL)a3
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

- (void)setHasBBAndDataPowerMicroWatt:(BOOL)a3
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

- (void)setHasConnectedSleepDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasConnectedSleepDurationData:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPowerBBCallMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerBBCallMetrics description](&v3, sel_description), -[AWDPowerBBCallMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_metrics count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_metrics, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    metrics = self->_metrics;
    v6 = [(NSMutableArray *)metrics countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(metrics);
          }

          [v4 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)metrics countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"metrics"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bBTotalCallDuration), @"BBTotalCallDuration"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_14:
      if ((has & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bBPowerMicroWatt), @"BBPowerMicroWatt"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_15:
    if ((has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bBTotalAndDataDuration), @"BBTotalAndDataDuration"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectedSleepDuration), @"connectedSleepDuration"}];
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_23:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bBAndDataPowerMicroWatt), @"BBAndDataPowerMicroWatt"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if ((has & 0x40) != 0)
  {
LABEL_18:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectedSleepDurationData), @"connectedSleepDurationData"}];
  }

LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  bBTotalCallDuration = self->_bBTotalCallDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  bBPowerMicroWatt = self->_bBPowerMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  bBTotalAndDataDuration = self->_bBTotalAndDataDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  bBAndDataPowerMicroWatt = self->_bBAndDataPowerMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_22:
  connectedSleepDuration = self->_connectedSleepDuration;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    connectedSleepDurationData = self->_connectedSleepDurationData;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  metrics = self->_metrics;
  v7 = [(NSMutableArray *)metrics countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(metrics);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)metrics countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 48) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 7) = self->_bBTotalCallDuration;
  *(a3 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 5) = self->_bBPowerMicroWatt;
  *(a3 + 48) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 6) = self->_bBTotalAndDataDuration;
  *(a3 + 48) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_19:
    *(a3 + 8) = self->_connectedSleepDuration;
    *(a3 + 48) |= 0x20u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_18:
  *(a3 + 4) = self->_bBAndDataPowerMicroWatt;
  *(a3 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  if ((has & 0x40) != 0)
  {
LABEL_8:
    *(a3 + 9) = self->_connectedSleepDurationData;
    *(a3 + 48) |= 0x40u;
  }

LABEL_9:
  if ([(AWDPowerBBCallMetrics *)self metricsCount])
  {
    [a3 clearMetrics];
    v6 = [(AWDPowerBBCallMetrics *)self metricsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addMetrics:{-[AWDPowerBBCallMetrics metricsAtIndex:](self, "metricsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 28) = self->_bBTotalCallDuration;
  *(v5 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 20) = self->_bBPowerMicroWatt;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 24) = self->_bBTotalAndDataDuration;
  *(v5 + 48) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 16) = self->_bBAndDataPowerMicroWatt;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_22:
  *(v5 + 32) = self->_connectedSleepDuration;
  *(v5 + 48) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    *(v5 + 36) = self->_connectedSleepDurationData;
    *(v5 + 48) |= 0x40u;
  }

LABEL_9:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  metrics = self->_metrics;
  v9 = [(NSMutableArray *)metrics countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(metrics);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:a3];
        [v6 addMetrics:v13];
      }

      v10 = [(NSMutableArray *)metrics countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 48);
    if (*&self->_has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_39;
      }
    }

    else if (*(a3 + 48))
    {
LABEL_39:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 48) & 0x10) == 0 || self->_bBTotalCallDuration != *(a3 + 7))
      {
        goto LABEL_39;
      }
    }

    else if ((*(a3 + 48) & 0x10) != 0)
    {
      goto LABEL_39;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 48) & 4) == 0 || self->_bBPowerMicroWatt != *(a3 + 5))
      {
        goto LABEL_39;
      }
    }

    else if ((*(a3 + 48) & 4) != 0)
    {
      goto LABEL_39;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 48) & 8) == 0 || self->_bBTotalAndDataDuration != *(a3 + 6))
      {
        goto LABEL_39;
      }
    }

    else if ((*(a3 + 48) & 8) != 0)
    {
      goto LABEL_39;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 48) & 2) == 0 || self->_bBAndDataPowerMicroWatt != *(a3 + 4))
      {
        goto LABEL_39;
      }
    }

    else if ((*(a3 + 48) & 2) != 0)
    {
      goto LABEL_39;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 48) & 0x20) == 0 || self->_connectedSleepDuration != *(a3 + 8))
      {
        goto LABEL_39;
      }
    }

    else if ((*(a3 + 48) & 0x20) != 0)
    {
      goto LABEL_39;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 48) & 0x40) == 0 || self->_connectedSleepDurationData != *(a3 + 9))
      {
        goto LABEL_39;
      }
    }

    else if ((*(a3 + 48) & 0x40) != 0)
    {
      goto LABEL_39;
    }

    metrics = self->_metrics;
    if (metrics | *(a3 + 5))
    {

      LOBYTE(v5) = [(NSMutableArray *)metrics isEqual:?];
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
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_bBTotalCallDuration;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_bBPowerMicroWatt;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v9 = 2654435761 * self->_bBTotalAndDataDuration;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v10 = 2654435761 * self->_bBAndDataPowerMicroWatt;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v11 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v12 = 0;
    return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSMutableArray *)self->_metrics hash:v3];
  }

LABEL_13:
  v10 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = 2654435761 * self->_connectedSleepDuration;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v12 = 2654435761 * self->_connectedSleepDurationData;
  return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSMutableArray *)self->_metrics hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a3 + 48);
  if (v4)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v4 = *(a3 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a3 + 48) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_bBTotalCallDuration = *(a3 + 7);
  *&self->_has |= 0x10u;
  v4 = *(a3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_bBPowerMicroWatt = *(a3 + 5);
  *&self->_has |= 4u;
  v4 = *(a3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_bBTotalAndDataDuration = *(a3 + 6);
  *&self->_has |= 8u;
  v4 = *(a3 + 48);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_bBAndDataPowerMicroWatt = *(a3 + 4);
  *&self->_has |= 2u;
  v4 = *(a3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_22:
  self->_connectedSleepDuration = *(a3 + 8);
  *&self->_has |= 0x20u;
  if ((*(a3 + 48) & 0x40) != 0)
  {
LABEL_8:
    self->_connectedSleepDurationData = *(a3 + 9);
    *&self->_has |= 0x40u;
  }

LABEL_9:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a3 + 5);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDPowerBBCallMetrics *)self addMetrics:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end