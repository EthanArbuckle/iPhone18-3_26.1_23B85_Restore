@interface SOSMessagingStatus
- (BOOL)isEqual:(id)a3;
- (SOSMessagingStatus)initWithSOSStatus:(id)a3;
- (SOSStatus)sosStatus;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFlowState:(BOOL)a3;
- (void)setHasIsPairedDeviceStatus:(BOOL)a3;
- (void)setHasResolution:(BOOL)a3;
- (void)setHasTimeOfResolution:(BOOL)a3;
- (void)setHasTrigger:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SOSMessagingStatus

- (void)setHasTrigger:(BOOL)a3
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

- (void)setHasTimeOfResolution:(BOOL)a3
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

- (void)setHasResolution:(BOOL)a3
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

- (void)setHasFlowState:(BOOL)a3
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

- (void)setHasIsPairedDeviceStatus:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SOSMessagingStatus;
  v4 = [(SOSMessagingStatus *)&v8 description];
  v5 = [(SOSMessagingStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_trigger];
    [v4 setObject:v9 forKey:@"trigger"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeOfDetection];
  [v4 setObject:v10 forKey:@"timeOfDetection"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeOfResolution];
  [v4 setObject:v11 forKey:@"timeOfResolution"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_resolution];
  [v4 setObject:v12 forKey:@"resolution"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_flowState];
  [v4 setObject:v13 forKey:@"flowState"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPairedDeviceStatus];
    [v4 setObject:v7 forKey:@"isPairedDeviceStatus"];
  }

LABEL_10:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    trigger = self->_trigger;
    PBDataWriterWriteInt32Field();
    v4 = v12;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  timeOfDetection = self->_timeOfDetection;
  PBDataWriterWriteDoubleField();
  v4 = v12;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  timeOfResolution = self->_timeOfResolution;
  PBDataWriterWriteDoubleField();
  v4 = v12;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  resolution = self->_resolution;
  PBDataWriterWriteInt32Field();
  v4 = v12;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  flowState = self->_flowState;
  PBDataWriterWriteInt32Field();
  v4 = v12;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    isPairedDeviceStatus = self->_isPairedDeviceStatus;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

LABEL_10:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_uuid)
  {
    v6 = v4;
    [v4 setUuid:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 8) = self->_trigger;
    *(v4 + 52) |= 0x10u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 1) = *&self->_timeOfDetection;
  *(v4 + 52) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 2) = *&self->_timeOfResolution;
  *(v4 + 52) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 7) = self->_resolution;
  *(v4 + 52) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(v4 + 6) = self->_flowState;
  *(v4 + 52) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    *(v4 + 48) = self->_isPairedDeviceStatus;
    *(v4 + 52) |= 0x20u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 32) = self->_trigger;
    *(v5 + 52) |= 0x10u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_timeOfDetection;
  *(v5 + 52) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v5 + 16) = self->_timeOfResolution;
  *(v5 + 52) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v5 + 24) = self->_flowState;
    *(v5 + 52) |= 4u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v5;
    }

    goto LABEL_7;
  }

LABEL_12:
  *(v5 + 28) = self->_resolution;
  *(v5 + 52) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 0x20) != 0)
  {
LABEL_7:
    *(v5 + 48) = self->_isPairedDeviceStatus;
    *(v5 + 52) |= 0x20u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 5))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_31;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 52) & 0x10) == 0 || self->_trigger != *(v4 + 8))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_timeOfDetection != *(v4 + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_timeOfResolution != *(v4 + 2))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 52) & 8) == 0 || self->_resolution != *(v4 + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_flowState != *(v4 + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_31;
  }

  v6 = (*(v4 + 52) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 52) & 0x20) == 0)
    {
LABEL_31:
      v6 = 0;
      goto LABEL_32;
    }

    if (self->_isPairedDeviceStatus)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_31;
    }

    v6 = 1;
  }

LABEL_32:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v6 = 2654435761 * self->_trigger;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  timeOfDetection = self->_timeOfDetection;
  if (timeOfDetection < 0.0)
  {
    timeOfDetection = -timeOfDetection;
  }

  *v4.i64 = floor(timeOfDetection + 0.5);
  v8 = (timeOfDetection - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
  v10 = 2654435761u * *v4.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    timeOfResolution = self->_timeOfResolution;
    if (timeOfResolution < 0.0)
    {
      timeOfResolution = -timeOfResolution;
    }

    *v4.i64 = floor(timeOfResolution + 0.5);
    v13 = (timeOfResolution - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v5, v4).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&self->_has & 8) == 0)
  {
    v15 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    v16 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    v17 = 0;
    return v6 ^ v3 ^ v10 ^ v11 ^ v15 ^ v16 ^ v17;
  }

  v15 = 2654435761 * self->_resolution;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v16 = 2654435761 * self->_flowState;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v17 = 2654435761 * self->_isPairedDeviceStatus;
  return v6 ^ v3 ^ v10 ^ v11 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 5))
  {
    v6 = v4;
    [(SOSMessagingStatus *)self setUuid:?];
    v4 = v6;
  }

  v5 = *(v4 + 52);
  if ((v5 & 0x10) != 0)
  {
    self->_trigger = *(v4 + 8);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 52);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 52) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_timeOfDetection = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_timeOfResolution = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_resolution = *(v4 + 7);
  *&self->_has |= 8u;
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  self->_flowState = *(v4 + 6);
  *&self->_has |= 4u;
  if ((*(v4 + 52) & 0x20) != 0)
  {
LABEL_9:
    self->_isPairedDeviceStatus = *(v4 + 48);
    *&self->_has |= 0x20u;
  }

LABEL_10:
}

- (SOSMessagingStatus)initWithSOSStatus:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13.receiver = self;
    v13.super_class = SOSMessagingStatus;
    v5 = [(SOSMessagingStatus *)&v13 init];
    if (v5)
    {
      v6 = [v4 uuid];
      v7 = [v6 UUIDString];
      [(SOSMessagingStatus *)v5 setUuid:v7];

      -[SOSMessagingStatus setTrigger:](v5, "setTrigger:", [v4 trigger]);
      v8 = [v4 timeOfDetection];
      [v8 timeIntervalSince1970];
      [(SOSMessagingStatus *)v5 setTimeOfDetection:?];

      v9 = [v4 timeOfResolution];
      [v9 timeIntervalSince1970];
      [(SOSMessagingStatus *)v5 setTimeOfResolution:?];

      -[SOSMessagingStatus setResolution:](v5, "setResolution:", [v4 resolution]);
      -[SOSMessagingStatus setFlowState:](v5, "setFlowState:", [v4 flowState]);
      -[SOSMessagingStatus setIsPairedDeviceStatus:](v5, "setIsPairedDeviceStatus:", [v4 isPairedDeviceStatus]);
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v11 = sos_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SOSMessagingStatus(Additions) initWithSOSStatus:];
    }

    v10 = 0;
  }

  return v10;
}

- (SOSStatus)sosStatus
{
  v3 = objc_alloc_init(SOSStatus);
  if ([(SOSMessagingStatus *)self hasUuid])
  {
    if ([(SOSMessagingStatus *)self hasTrigger])
    {
      if ([(SOSMessagingStatus *)self hasTimeOfDetection])
      {
        v4 = objc_alloc(MEMORY[0x277CCAD78]);
        v5 = [(SOSMessagingStatus *)self uuid];
        v6 = [v4 initWithUUIDString:v5];
        [(SOSStatus *)v3 setUuid:v6];

        [(SOSStatus *)v3 setTrigger:[(SOSMessagingStatus *)self trigger]];
        v7 = objc_alloc(MEMORY[0x277CBEAA8]);
        [(SOSMessagingStatus *)self timeOfDetection];
        v8 = [v7 initWithTimeIntervalSince1970:?];
        [(SOSStatus *)v3 setTimeOfDetection:v8];

        if ([(SOSMessagingStatus *)self hasTimeOfResolution])
        {
          v9 = objc_alloc(MEMORY[0x277CBEAA8]);
          [(SOSMessagingStatus *)self timeOfResolution];
          v10 = [v9 initWithTimeIntervalSince1970:?];
          [(SOSStatus *)v3 setTimeOfResolution:v10];
        }

        else
        {
          [(SOSStatus *)v3 setTimeOfResolution:0];
        }

        if ([(SOSMessagingStatus *)self hasResolution])
        {
          v14 = [(SOSMessagingStatus *)self resolution];
        }

        else
        {
          v14 = 0;
        }

        [(SOSStatus *)v3 setResolution:v14];
        if ([(SOSMessagingStatus *)self hasFlowState])
        {
          v15 = [(SOSMessagingStatus *)self flowState];
        }

        else
        {
          v15 = 0;
        }

        [(SOSStatus *)v3 setFlowState:v15];
        [(SOSStatus *)v3 setIsPairedDeviceStatus:[(SOSMessagingStatus *)self isPairedDeviceStatus]];
        v12 = [(SOSStatus *)v3 copy];
        goto LABEL_13;
      }

      v11 = sos_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SOSMessagingStatus(Additions) sosStatus];
      }
    }

    else
    {
      v11 = sos_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SOSMessagingStatus(Additions) sosStatus];
      }
    }
  }

  else
  {
    v11 = sos_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SOSMessagingStatus(Additions) sosStatus];
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

@end