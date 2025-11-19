@interface WiFiAnalyticsAWDWiFiDPSEpilogue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)a3;
- (int)StringAsAfterRecommendedAction:(id)a3;
- (int)StringAsBeforeAction:(id)a3;
- (int)StringAsStudyType:(id)a3;
- (int)action;
- (int)afterRecommendedAction;
- (int)beforeAction;
- (int)studyType;
- (unint64_t)hash;
- (void)addAccessPointInfo:(id)a3;
- (void)addAssociationChanges:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAction:(BOOL)a3;
- (void)setHasActionIntVal:(BOOL)a3;
- (void)setHasAfterRecommendedAction:(BOOL)a3;
- (void)setHasBeforeAction:(BOOL)a3;
- (void)setHasIsAssociatedAtStudyEnd:(BOOL)a3;
- (void)setHasStudyType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiDPSEpilogue

- (int)beforeAction
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_beforeAction;
  }

  else
  {
    return 0;
  }
}

- (void)setHasBeforeAction:(BOOL)a3
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

- (int)StringAsBeforeAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"kAllAcFunctional"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"kSomeAcFunctional"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"kNoAcFunctional"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"kNotAssociated"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)action
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAction:(BOOL)a3
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

- (int)StringAsAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"kNone"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"kFullWatchdog"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"kFastDPSWatchdog"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"kNoneNoFullWatchdogBudget"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"kNoneNoFastWatchdogBudget"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"kUserChanged"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"kSymptomsdDPSWatchdog"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"kSymptomsdDPSReassoc"])
  {
    v4 = 128;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)afterRecommendedAction
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_afterRecommendedAction;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAfterRecommendedAction:(BOOL)a3
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

- (int)StringAsAfterRecommendedAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"kAllAcFunctional"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"kSomeAcFunctional"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"kNoAcFunctional"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"kNotAssociated"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAssociationChanges:(id)a3
{
  v4 = a3;
  associationChanges = self->_associationChanges;
  v8 = v4;
  if (!associationChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_associationChanges;
    self->_associationChanges = v6;

    v4 = v8;
    associationChanges = self->_associationChanges;
  }

  [(NSMutableArray *)associationChanges addObject:v4];
}

- (void)setHasActionIntVal:(BOOL)a3
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

- (int)studyType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_studyType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStudyType:(BOOL)a3
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

- (int)StringAsStudyType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"kDPEStudyTypeDataStall"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"kDPEStudyTypeSymptomsDps"];
  }

  return v4;
}

- (void)setHasIsAssociatedAtStudyEnd:(BOOL)a3
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

- (void)addAccessPointInfo:(id)a3
{
  v4 = a3;
  accessPointInfos = self->_accessPointInfos;
  v8 = v4;
  if (!accessPointInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_accessPointInfos;
    self->_accessPointInfos = v6;

    v4 = v8;
    accessPointInfos = self->_accessPointInfos;
  }

  [(NSMutableArray *)accessPointInfos addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiDPSEpilogue;
  v4 = [(WiFiAnalyticsAWDWiFiDPSEpilogue *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  beforeAction = self->_beforeAction;
  if (beforeAction >= 4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_beforeAction];
  }

  else
  {
    v7 = off_1E830EB78[beforeAction];
  }

  [v3 setObject:v7 forKey:@"beforeAction"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_11:
  action = self->_action;
  if (action > 15)
  {
    if (action > 63)
    {
      if (action == 64)
      {
        v9 = @"kSymptomsdDPSWatchdog";
        goto LABEL_31;
      }

      if (action == 128)
      {
        v9 = @"kSymptomsdDPSReassoc";
        goto LABEL_31;
      }
    }

    else
    {
      if (action == 16)
      {
        v9 = @"kNoneNoFastWatchdogBudget";
        goto LABEL_31;
      }

      if (action == 32)
      {
        v9 = @"kUserChanged";
        goto LABEL_31;
      }
    }
  }

  else if (action > 3)
  {
    if (action == 4)
    {
      v9 = @"kFastDPSWatchdog";
      goto LABEL_31;
    }

    if (action == 8)
    {
      v9 = @"kNoneNoFullWatchdogBudget";
      goto LABEL_31;
    }
  }

  else
  {
    if (!action)
    {
      v9 = @"kNone";
      goto LABEL_31;
    }

    if (action == 2)
    {
      v9 = @"kFullWatchdog";
      goto LABEL_31;
    }
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_action];
LABEL_31:
  [v3 setObject:v9 forKey:@"action"];

  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  afterRecommendedAction = self->_afterRecommendedAction;
  if (afterRecommendedAction >= 4)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_afterRecommendedAction];
  }

  else
  {
    v11 = off_1E830EB78[afterRecommendedAction];
  }

  [v3 setObject:v11 forKey:@"afterRecommendedAction"];

LABEL_36:
  changes = self->_changes;
  if (changes)
  {
    v13 = [(WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences *)changes dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"changes"];
  }

  if ([(NSMutableArray *)self->_associationChanges count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_associationChanges, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v15 = self->_associationChanges;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v46;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v45 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"associationChanges"];
  }

  qDpsStats = self->_qDpsStats;
  if (qDpsStats)
  {
    v22 = [(WiFiAnalyticsAWDWAQuickDpsStats *)qDpsStats dictionaryRepresentation];
    [v3 setObject:v22 forKey:@"qDpsStats"];
  }

  v23 = self->_has;
  if ((v23 & 4) != 0)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_actionIntVal];
    [v3 setObject:v38 forKey:@"actionIntVal"];

    v23 = self->_has;
    if ((v23 & 0x20) == 0)
    {
LABEL_51:
      if ((v23 & 0x40) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_51;
  }

  studyType = self->_studyType;
  if (studyType)
  {
    if (studyType == 1)
    {
      v40 = @"kDPEStudyTypeSymptomsDps";
    }

    else
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_studyType];
    }
  }

  else
  {
    v40 = @"kDPEStudyTypeDataStall";
  }

  [v3 setObject:v40 forKey:@"studyType"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_52:
    v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAssociatedAtStudyEnd];
    [v3 setObject:v24 forKey:@"isAssociatedAtStudyEnd"];
  }

LABEL_53:
  symptomsDnsStats = self->_symptomsDnsStats;
  if (symptomsDnsStats)
  {
    v26 = [(WiFiAnalyticsAWDWASymptomsDnsStats *)symptomsDnsStats dictionaryRepresentation];
    [v3 setObject:v26 forKey:@"symptomsDnsStats"];
  }

  discoveredPeerInfo = self->_discoveredPeerInfo;
  if (discoveredPeerInfo)
  {
    v28 = [(WiFiAnalyticsAWDWAPeerDiscoveryInfo *)discoveredPeerInfo dictionaryRepresentation];
    [v3 setObject:v28 forKey:@"discoveredPeerInfo"];
  }

  if ([(NSMutableArray *)self->_accessPointInfos count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_accessPointInfos, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = self->_accessPointInfos;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v42;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v41 + 1) + 8 * j) dictionaryRepresentation];
          [v29 addObject:v35];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v32);
    }

    [v3 setObject:v29 forKey:@"accessPointInfo"];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  beforeAction = self->_beforeAction;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_35:
  action = self->_action;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    afterRecommendedAction = self->_afterRecommendedAction;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  if (self->_changes)
  {
    PBDataWriterWriteSubmessage();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_associationChanges;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  if (self->_qDpsStats)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    actionIntVal = self->_actionIntVal;
    PBDataWriterWriteUint32Field();
    v13 = self->_has;
    if ((v13 & 0x20) == 0)
    {
LABEL_19:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_19;
  }

  studyType = self->_studyType;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_20:
    isAssociatedAtStudyEnd = self->_isAssociatedAtStudyEnd;
    PBDataWriterWriteBOOLField();
  }

LABEL_21:
  if (self->_symptomsDnsStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_discoveredPeerInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = self->_accessPointInfos;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 100) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 12) = self->_beforeAction;
  *(v4 + 100) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_31:
  *(v4 + 6) = self->_action;
  *(v4 + 100) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v4 + 8) = self->_afterRecommendedAction;
    *(v4 + 100) |= 8u;
  }

LABEL_6:
  v15 = v4;
  if (self->_changes)
  {
    [v4 setChanges:?];
  }

  if ([(WiFiAnalyticsAWDWiFiDPSEpilogue *)self associationChangesCount])
  {
    [v15 clearAssociationChanges];
    v6 = [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self associationChangesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self associationChangesAtIndex:i];
        [v15 addAssociationChanges:v9];
      }
    }
  }

  if (self->_qDpsStats)
  {
    [v15 setQDpsStats:?];
  }

  v10 = self->_has;
  if ((v10 & 4) != 0)
  {
    *(v15 + 7) = self->_actionIntVal;
    *(v15 + 100) |= 4u;
    v10 = self->_has;
    if ((v10 & 0x20) == 0)
    {
LABEL_16:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_16;
  }

  *(v15 + 20) = self->_studyType;
  *(v15 + 100) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    *(v15 + 96) = self->_isAssociatedAtStudyEnd;
    *(v15 + 100) |= 0x40u;
  }

LABEL_18:
  if (self->_symptomsDnsStats)
  {
    [v15 setSymptomsDnsStats:?];
  }

  if (self->_discoveredPeerInfo)
  {
    [v15 setDiscoveredPeerInfo:?];
  }

  if ([(WiFiAnalyticsAWDWiFiDPSEpilogue *)self accessPointInfosCount])
  {
    [v15 clearAccessPointInfos];
    v11 = [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self accessPointInfosCount];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self accessPointInfoAtIndex:j];
        [v15 addAccessPointInfo:v14];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 100) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 48) = self->_beforeAction;
  *(v5 + 100) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  *(v5 + 24) = self->_action;
  *(v5 + 100) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v5 + 32) = self->_afterRecommendedAction;
    *(v5 + 100) |= 8u;
  }

LABEL_6:
  v8 = [(WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences *)self->_changes copyWithZone:a3];
  v9 = *(v6 + 56);
  *(v6 + 56) = v8;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = self->_associationChanges;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v35 + 1) + 8 * i) copyWithZone:a3];
        [v6 addAssociationChanges:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v16 = [(WiFiAnalyticsAWDWAQuickDpsStats *)self->_qDpsStats copyWithZone:a3];
  v17 = *(v6 + 72);
  *(v6 + 72) = v16;

  v18 = self->_has;
  if ((v18 & 4) != 0)
  {
    *(v6 + 28) = self->_actionIntVal;
    *(v6 + 100) |= 4u;
    v18 = self->_has;
    if ((v18 & 0x20) == 0)
    {
LABEL_15:
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

  *(v6 + 80) = self->_studyType;
  *(v6 + 100) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_16:
    *(v6 + 96) = self->_isAssociatedAtStudyEnd;
    *(v6 + 100) |= 0x40u;
  }

LABEL_17:
  v19 = [(WiFiAnalyticsAWDWASymptomsDnsStats *)self->_symptomsDnsStats copyWithZone:a3];
  v20 = *(v6 + 88);
  *(v6 + 88) = v19;

  v21 = [(WiFiAnalyticsAWDWAPeerDiscoveryInfo *)self->_discoveredPeerInfo copyWithZone:a3];
  v22 = *(v6 + 64);
  *(v6 + 64) = v21;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = self->_accessPointInfos;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v31 + 1) + 8 * j) copyWithZone:{a3, v31}];
        [v6 addAccessPointInfo:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = *(v4 + 100);
  if (*&self->_has)
  {
    if ((*(v4 + 100) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_47;
    }
  }

  else if (*(v4 + 100))
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 100) & 0x10) == 0 || self->_beforeAction != *(v4 + 12))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 100) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 100) & 2) == 0 || self->_action != *(v4 + 6))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 100) & 2) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 100) & 8) == 0 || self->_afterRecommendedAction != *(v4 + 8))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 100) & 8) != 0)
  {
    goto LABEL_47;
  }

  changes = self->_changes;
  if (changes | *(v4 + 7) && ![(WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences *)changes isEqual:?])
  {
    goto LABEL_47;
  }

  associationChanges = self->_associationChanges;
  if (associationChanges | *(v4 + 5))
  {
    if (![(NSMutableArray *)associationChanges isEqual:?])
    {
      goto LABEL_47;
    }
  }

  qDpsStats = self->_qDpsStats;
  if (qDpsStats | *(v4 + 9))
  {
    if (![(WiFiAnalyticsAWDWAQuickDpsStats *)qDpsStats isEqual:?])
    {
      goto LABEL_47;
    }
  }

  v9 = *(v4 + 100);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 100) & 4) == 0 || self->_actionIntVal != *(v4 + 7))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 100) & 4) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 100) & 0x20) == 0 || self->_studyType != *(v4 + 20))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 100) & 0x20) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 0x40) == 0)
  {
    if ((*(v4 + 100) & 0x40) == 0)
    {
      goto LABEL_40;
    }

LABEL_47:
    v13 = 0;
    goto LABEL_48;
  }

  if ((*(v4 + 100) & 0x40) == 0)
  {
    goto LABEL_47;
  }

  v15 = *(v4 + 96);
  if (self->_isAssociatedAtStudyEnd)
  {
    if ((*(v4 + 96) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_47;
  }

LABEL_40:
  symptomsDnsStats = self->_symptomsDnsStats;
  if (symptomsDnsStats | *(v4 + 11) && ![(WiFiAnalyticsAWDWASymptomsDnsStats *)symptomsDnsStats isEqual:?])
  {
    goto LABEL_47;
  }

  discoveredPeerInfo = self->_discoveredPeerInfo;
  if (discoveredPeerInfo | *(v4 + 8))
  {
    if (![(WiFiAnalyticsAWDWAPeerDiscoveryInfo *)discoveredPeerInfo isEqual:?])
    {
      goto LABEL_47;
    }
  }

  accessPointInfos = self->_accessPointInfos;
  if (accessPointInfos | *(v4 + 2))
  {
    v13 = [(NSMutableArray *)accessPointInfos isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_48:

  return v13;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_beforeAction;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_action;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_afterRecommendedAction;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences *)self->_changes hash];
  v8 = [(NSMutableArray *)self->_associationChanges hash];
  v9 = [(WiFiAnalyticsAWDWAQuickDpsStats *)self->_qDpsStats hash];
  if ((*&self->_has & 4) == 0)
  {
    v10 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v10 = 2654435761 * self->_actionIntVal;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v11 = 2654435761 * self->_studyType;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v12 = 2654435761 * self->_isAssociatedAtStudyEnd;
LABEL_17:
  v13 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v14 = v10 ^ v11 ^ v12 ^ [(WiFiAnalyticsAWDWASymptomsDnsStats *)self->_symptomsDnsStats hash];
  v15 = v13 ^ v14 ^ [(WiFiAnalyticsAWDWAPeerDiscoveryInfo *)self->_discoveredPeerInfo hash];
  return v15 ^ [(NSMutableArray *)self->_accessPointInfos hash];
}

- (void)mergeFrom:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 100);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 100);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 100) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_beforeAction = *(v4 + 12);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 100);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_action = *(v4 + 6);
  *&self->_has |= 2u;
  if ((*(v4 + 100) & 8) != 0)
  {
LABEL_5:
    self->_afterRecommendedAction = *(v4 + 8);
    *&self->_has |= 8u;
  }

LABEL_6:
  changes = self->_changes;
  v8 = *(v5 + 7);
  if (changes)
  {
    if (v8)
    {
      [(WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences *)changes mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self setChanges:?];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = *(v5 + 5);
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self addAssociationChanges:*(*(&v31 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  qDpsStats = self->_qDpsStats;
  v15 = *(v5 + 9);
  if (qDpsStats)
  {
    if (v15)
    {
      [(WiFiAnalyticsAWDWAQuickDpsStats *)qDpsStats mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self setQDpsStats:?];
  }

  v16 = *(v5 + 100);
  if ((v16 & 4) != 0)
  {
    self->_actionIntVal = *(v5 + 7);
    *&self->_has |= 4u;
    v16 = *(v5 + 100);
    if ((v16 & 0x20) == 0)
    {
LABEL_29:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((*(v5 + 100) & 0x20) == 0)
  {
    goto LABEL_29;
  }

  self->_studyType = *(v5 + 20);
  *&self->_has |= 0x20u;
  if ((*(v5 + 100) & 0x40) != 0)
  {
LABEL_30:
    self->_isAssociatedAtStudyEnd = *(v5 + 96);
    *&self->_has |= 0x40u;
  }

LABEL_31:
  symptomsDnsStats = self->_symptomsDnsStats;
  v18 = *(v5 + 11);
  if (symptomsDnsStats)
  {
    if (v18)
    {
      [(WiFiAnalyticsAWDWASymptomsDnsStats *)symptomsDnsStats mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self setSymptomsDnsStats:?];
  }

  discoveredPeerInfo = self->_discoveredPeerInfo;
  v20 = *(v5 + 8);
  if (discoveredPeerInfo)
  {
    if (v20)
    {
      [(WiFiAnalyticsAWDWAPeerDiscoveryInfo *)discoveredPeerInfo mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self setDiscoveredPeerInfo:?];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = *(v5 + 2);
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self addAccessPointInfo:*(*(&v27 + 1) + 8 * j), v27];
      }

      v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v23);
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end