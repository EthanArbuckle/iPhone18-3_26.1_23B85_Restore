@interface AWDSymptomsNetworkAnalyticsPredictions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)a3;
- (int)StringAsTrainingCompletionCode:(id)a3;
- (int)networkType;
- (int)trainingCompletionCode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCalendarTypeMarker:(BOOL)a3;
- (void)setHasDayAlikeGroups:(BOOL)a3;
- (void)setHasModelGraphPullups:(BOOL)a3;
- (void)setHasModelRecalls:(BOOL)a3;
- (void)setHasNetworkType:(BOOL)a3;
- (void)setHasPredictionErrorOver24hr1000:(BOOL)a3;
- (void)setHasPredictionQueries:(BOOL)a3;
- (void)setHasTimeSinceLastTrainedSecs:(BOOL)a3;
- (void)setHasTimeZoneMarker:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTrainingCompletionCode:(BOOL)a3;
- (void)setHasTrainingProgress1000:(BOOL)a3;
- (void)setHasUniquePredictionClients:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsNetworkAnalyticsPredictions

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)networkType
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_networkType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasNetworkType:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)StringAsNetworkType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WIFI"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CELLULAR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WIRED_ETHERNET"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTimeSinceLastTrainedSecs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)trainingCompletionCode
{
  if ((*&self->_has & 0x1000) != 0)
  {
    return self->_trainingCompletionCode;
  }

  else
  {
    return 1;
  }
}

- (void)setHasTrainingCompletionCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (int)StringAsTrainingCompletionCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUCCESS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INSUFFICIENT_DATA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ERRORS"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTrainingProgress1000:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasPredictionErrorOver24hr1000:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasUniquePredictionClients:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasPredictionQueries:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasModelRecalls:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasModelGraphPullups:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTimeZoneMarker:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasCalendarTypeMarker:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasDayAlikeGroups:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkAnalyticsPredictions;
  v4 = [(AWDSymptomsNetworkAnalyticsPredictions *)&v8 description];
  v5 = [(AWDSymptomsNetworkAnalyticsPredictions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v8 = self->_networkType - 1;
  if (v8 >= 3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_networkType];
  }

  else
  {
    v9 = *(&off_27898C2D8 + v8);
  }

  [v3 setObject:v9 forKey:@"networkType"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timeSinceLastTrainedSecs];
  [v3 setObject:v10 forKey:@"timeSinceLastTrainedSecs"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_25:
  v11 = self->_trainingCompletionCode - 1;
  if (v11 >= 3)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_trainingCompletionCode];
  }

  else
  {
    v12 = *(&off_27898C2F0 + v11);
  }

  [v3 setObject:v12 forKey:@"trainingCompletionCode"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_lifetimeOldestItemSecs];
  [v3 setObject:v13 forKey:@"lifetimeOldestItemSecs"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_trainingProgress1000];
  [v3 setObject:v14 forKey:@"trainingProgress1000"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_predictionErrorOver24hr1000];
  [v3 setObject:v15 forKey:@"predictionErrorOver24hr1000"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_uniquePredictionClients];
  [v3 setObject:v16 forKey:@"uniquePredictionClients"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_predictionQueries];
  [v3 setObject:v17 forKey:@"predictionQueries"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_modelRecalls];
  [v3 setObject:v18 forKey:@"modelRecalls"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_modelGraphPullups];
  [v3 setObject:v19 forKey:@"modelGraphPullups"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_timeZoneMarker];
  [v3 setObject:v20 forKey:@"timeZoneMarker"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_37:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_calendarTypeMarker];
  [v3 setObject:v21 forKey:@"calendarTypeMarker"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_15:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dayAlikeGroups];
    [v3 setObject:v5 forKey:@"dayAlikeGroups"];
  }

LABEL_16:

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = a3;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  networkType = self->_networkType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  timeSinceLastTrainedSecs = self->_timeSinceLastTrainedSecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  trainingCompletionCode = self->_trainingCompletionCode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  lifetimeOldestItemSecs = self->_lifetimeOldestItemSecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  trainingProgress1000 = self->_trainingProgress1000;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  predictionErrorOver24hr1000 = self->_predictionErrorOver24hr1000;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  uniquePredictionClients = self->_uniquePredictionClients;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  predictionQueries = self->_predictionQueries;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  modelRecalls = self->_modelRecalls;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  modelGraphPullups = self->_modelGraphPullups;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  timeZoneMarker = self->_timeZoneMarker;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  calendarTypeMarker = self->_calendarTypeMarker;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_15:
    dayAlikeGroups = self->_dayAlikeGroups;
    PBDataWriterWriteUint32Field();
  }

LABEL_16:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v4[6] = self->_timestamp;
    *(v4 + 46) |= 0x20u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 18) = self->_networkType;
  *(v4 + 46) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4[5] = self->_timeSinceLastTrainedSecs;
  *(v4 + 46) |= 0x10u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 21) = self->_trainingCompletionCode;
  *(v4 + 46) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4[1] = self->_lifetimeOldestItemSecs;
  *(v4 + 46) |= 1u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 22) = self->_trainingProgress1000;
  *(v4 + 46) |= 0x2000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 19) = self->_predictionErrorOver24hr1000;
  *(v4 + 46) |= 0x400u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4[7] = self->_uniquePredictionClients;
  *(v4 + 46) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4[4] = self->_predictionQueries;
  *(v4 + 46) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[3] = self->_modelRecalls;
  *(v4 + 46) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[2] = self->_modelGraphPullups;
  *(v4 + 46) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 20) = self->_timeZoneMarker;
  *(v4 + 46) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  *(v4 + 16) = self->_calendarTypeMarker;
  *(v4 + 46) |= 0x80u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_15:
    *(v4 + 17) = self->_dayAlikeGroups;
    *(v4 + 46) |= 0x100u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(result + 6) = self->_timestamp;
    *(result + 46) |= 0x20u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(result + 18) = self->_networkType;
  *(result + 46) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 5) = self->_timeSinceLastTrainedSecs;
  *(result + 46) |= 0x10u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 21) = self->_trainingCompletionCode;
  *(result + 46) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 1) = self->_lifetimeOldestItemSecs;
  *(result + 46) |= 1u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 22) = self->_trainingProgress1000;
  *(result + 46) |= 0x2000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 19) = self->_predictionErrorOver24hr1000;
  *(result + 46) |= 0x400u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 7) = self->_uniquePredictionClients;
  *(result + 46) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 4) = self->_predictionQueries;
  *(result + 46) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 3) = self->_modelRecalls;
  *(result + 46) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 2) = self->_modelGraphPullups;
  *(result + 46) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 20) = self->_timeZoneMarker;
  *(result + 46) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(result + 16) = self->_calendarTypeMarker;
  *(result + 46) |= 0x80u;
  if ((*&self->_has & 0x100) == 0)
  {
    return result;
  }

LABEL_15:
  *(result + 17) = self->_dayAlikeGroups;
  *(result + 46) |= 0x100u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  has = self->_has;
  v6 = *(v4 + 46);
  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_timestamp != *(v4 + 6))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
LABEL_72:
    v7 = 0;
    goto LABEL_73;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 46) & 0x200) == 0 || self->_networkType != *(v4 + 18))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 46) & 0x200) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_timeSinceLastTrainedSecs != *(v4 + 5))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 46) & 0x1000) == 0 || self->_trainingCompletionCode != *(v4 + 21))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 46) & 0x1000) != 0)
  {
    goto LABEL_72;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_lifetimeOldestItemSecs != *(v4 + 1))
    {
      goto LABEL_72;
    }
  }

  else if (v6)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 46) & 0x2000) == 0 || self->_trainingProgress1000 != *(v4 + 22))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 46) & 0x2000) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 46) & 0x400) == 0 || self->_predictionErrorOver24hr1000 != *(v4 + 19))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 46) & 0x400) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_uniquePredictionClients != *(v4 + 7))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_predictionQueries != *(v4 + 4))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_modelRecalls != *(v4 + 3))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_modelGraphPullups != *(v4 + 2))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 46) & 0x800) == 0 || self->_timeZoneMarker != *(v4 + 20))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 46) & 0x800) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_calendarTypeMarker != *(v4 + 16))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 46) & 0x100) == 0 || self->_dayAlikeGroups != *(v4 + 17))
    {
      goto LABEL_72;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x100) == 0;
  }

LABEL_73:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_networkType;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_timeSinceLastTrainedSecs;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_trainingCompletionCode;
    if (has)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if (has)
  {
LABEL_6:
    v7 = 2654435761u * self->_lifetimeOldestItemSecs;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_trainingProgress1000;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_predictionErrorOver24hr1000;
    if ((has & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_uniquePredictionClients;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((has & 8) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_predictionQueries;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((has & 4) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_modelRecalls;
    if ((has & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((has & 2) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_modelGraphPullups;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_timeZoneMarker;
    if ((has & 0x80) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761 * self->_calendarTypeMarker;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761 * self->_dayAlikeGroups;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 46);
  if ((v5 & 0x20) != 0)
  {
    self->_timestamp = *(v4 + 6);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 46);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v4 + 46) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_networkType = *(v4 + 18);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 46);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_timeSinceLastTrainedSecs = *(v4 + 5);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 46);
  if ((v5 & 0x1000) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_trainingCompletionCode = *(v4 + 21);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 46);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_lifetimeOldestItemSecs = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 46);
  if ((v5 & 0x2000) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_trainingProgress1000 = *(v4 + 22);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 46);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_predictionErrorOver24hr1000 = *(v4 + 19);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 46);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_uniquePredictionClients = *(v4 + 7);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 46);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_predictionQueries = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 46);
  if ((v5 & 4) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_modelRecalls = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 46);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_modelGraphPullups = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 46);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_timeZoneMarker = *(v4 + 20);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 46);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  self->_calendarTypeMarker = *(v4 + 16);
  *&self->_has |= 0x80u;
  if ((*(v4 + 46) & 0x100) != 0)
  {
LABEL_15:
    self->_dayAlikeGroups = *(v4 + 17);
    *&self->_has |= 0x100u;
  }

LABEL_16:
}

@end