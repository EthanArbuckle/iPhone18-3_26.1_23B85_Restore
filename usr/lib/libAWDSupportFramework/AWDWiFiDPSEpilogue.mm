@interface AWDWiFiDPSEpilogue
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
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAction:(BOOL)a3;
- (void)setHasActionIntVal:(BOOL)a3;
- (void)setHasAfterRecommendedAction:(BOOL)a3;
- (void)setHasBeforeAction:(BOOL)a3;
- (void)setHasIsAssociatedAtStudyEnd:(BOOL)a3;
- (void)setHasStudyType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiDPSEpilogue

- (void)dealloc
{
  [(AWDWiFiDPSEpilogue *)self setChanges:0];
  [(AWDWiFiDPSEpilogue *)self setAssociationChanges:0];
  [(AWDWiFiDPSEpilogue *)self setQDpsStats:0];
  [(AWDWiFiDPSEpilogue *)self setSymptomsDnsStats:0];
  [(AWDWiFiDPSEpilogue *)self setDiscoveredPeerInfo:0];
  [(AWDWiFiDPSEpilogue *)self setAccessPointInfos:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSEpilogue;
  [(AWDWiFiDPSEpilogue *)&v3 dealloc];
}

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
  if ([a3 isEqualToString:@"kAllAcFunctional"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kSomeAcFunctional"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kNoAcFunctional"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"kNotAssociated"])
  {
    return 3;
  }

  return 0;
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
  if ([a3 isEqualToString:@"kNone"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kFullWatchdog"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"kFastDPSWatchdog"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"kNoneNoFullWatchdogBudget"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"kNoneNoFastWatchdogBudget"])
  {
    return 16;
  }

  if ([a3 isEqualToString:@"kUserChanged"])
  {
    return 32;
  }

  if ([a3 isEqualToString:@"kSymptomsdDPSWatchdog"])
  {
    return 64;
  }

  if ([a3 isEqualToString:@"kSymptomsdDPSReassoc"])
  {
    return 128;
  }

  return 0;
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
  if ([a3 isEqualToString:@"kAllAcFunctional"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kSomeAcFunctional"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kNoAcFunctional"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"kNotAssociated"])
  {
    return 3;
  }

  return 0;
}

- (void)addAssociationChanges:(id)a3
{
  associationChanges = self->_associationChanges;
  if (!associationChanges)
  {
    associationChanges = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_associationChanges = associationChanges;
  }

  [(NSMutableArray *)associationChanges addObject:a3];
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
  if ([a3 isEqualToString:@"kDPEStudyTypeDataStall"])
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"kDPEStudyTypeSymptomsDps"];
  }
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
  accessPointInfos = self->_accessPointInfos;
  if (!accessPointInfos)
  {
    accessPointInfos = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_accessPointInfos = accessPointInfos;
  }

  [(NSMutableArray *)accessPointInfos addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSEpilogue;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiDPSEpilogue description](&v3, sel_description), -[AWDWiFiDPSEpilogue dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_beforeAction];
  }

  else
  {
    v6 = off_29EE33238[beforeAction];
  }

  [v3 setObject:v6 forKey:@"beforeAction"];
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
        v8 = @"kSymptomsdDPSWatchdog";
        goto LABEL_31;
      }

      if (action == 128)
      {
        v8 = @"kSymptomsdDPSReassoc";
        goto LABEL_31;
      }
    }

    else
    {
      if (action == 16)
      {
        v8 = @"kNoneNoFastWatchdogBudget";
        goto LABEL_31;
      }

      if (action == 32)
      {
        v8 = @"kUserChanged";
        goto LABEL_31;
      }
    }
  }

  else if (action > 3)
  {
    if (action == 4)
    {
      v8 = @"kFastDPSWatchdog";
      goto LABEL_31;
    }

    if (action == 8)
    {
      v8 = @"kNoneNoFullWatchdogBudget";
      goto LABEL_31;
    }
  }

  else
  {
    if (!action)
    {
      v8 = @"kNone";
      goto LABEL_31;
    }

    if (action == 2)
    {
      v8 = @"kFullWatchdog";
      goto LABEL_31;
    }
  }

  v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_action];
LABEL_31:
  [v3 setObject:v8 forKey:@"action"];
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  afterRecommendedAction = self->_afterRecommendedAction;
  if (afterRecommendedAction >= 4)
  {
    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_afterRecommendedAction];
  }

  else
  {
    v10 = off_29EE33238[afterRecommendedAction];
  }

  [v3 setObject:v10 forKey:@"afterRecommendedAction"];
LABEL_36:
  changes = self->_changes;
  if (changes)
  {
    [v3 setObject:-[AWDWADiagnosisActionAssociationDifferences dictionaryRepresentation](changes forKey:{"dictionaryRepresentation"), @"changes"}];
  }

  if ([(NSMutableArray *)self->_associationChanges count])
  {
    v12 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_associationChanges, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    associationChanges = self->_associationChanges;
    v14 = [(NSMutableArray *)associationChanges countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(associationChanges);
          }

          [v12 addObject:{objc_msgSend(*(*(&v36 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v15 = [(NSMutableArray *)associationChanges countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"associationChanges"];
  }

  qDpsStats = self->_qDpsStats;
  if (qDpsStats)
  {
    [v3 setObject:-[AWDWAQuickDpsStats dictionaryRepresentation](qDpsStats forKey:{"dictionaryRepresentation"), @"qDpsStats"}];
  }

  v19 = self->_has;
  if ((v19 & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_actionIntVal), @"actionIntVal"}];
    v19 = self->_has;
    if ((v19 & 0x20) == 0)
    {
LABEL_51:
      if ((v19 & 0x40) == 0)
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
      v31 = @"kDPEStudyTypeSymptomsDps";
    }

    else
    {
      v31 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_studyType];
    }
  }

  else
  {
    v31 = @"kDPEStudyTypeDataStall";
  }

  [v3 setObject:v31 forKey:@"studyType"];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_52:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isAssociatedAtStudyEnd), @"isAssociatedAtStudyEnd"}];
  }

LABEL_53:
  symptomsDnsStats = self->_symptomsDnsStats;
  if (symptomsDnsStats)
  {
    [v3 setObject:-[AWDWASymptomsDnsStats dictionaryRepresentation](symptomsDnsStats forKey:{"dictionaryRepresentation"), @"symptomsDnsStats"}];
  }

  discoveredPeerInfo = self->_discoveredPeerInfo;
  if (discoveredPeerInfo)
  {
    [v3 setObject:-[AWDWAPeerDiscoveryInfo dictionaryRepresentation](discoveredPeerInfo forKey:{"dictionaryRepresentation"), @"discoveredPeerInfo"}];
  }

  if ([(NSMutableArray *)self->_accessPointInfos count])
  {
    v22 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_accessPointInfos, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    accessPointInfos = self->_accessPointInfos;
    v24 = [(NSMutableArray *)accessPointInfos countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v33;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(accessPointInfos);
          }

          [v22 addObject:{objc_msgSend(*(*(&v32 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v25 = [(NSMutableArray *)accessPointInfos countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKey:@"accessPointInfo"];
  }

  v28 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v36 = *MEMORY[0x29EDCA608];
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

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  associationChanges = self->_associationChanges;
  v7 = [(NSMutableArray *)associationChanges countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(associationChanges);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)associationChanges countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  if (self->_qDpsStats)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = self->_has;
  if ((v12 & 4) != 0)
  {
    actionIntVal = self->_actionIntVal;
    PBDataWriterWriteUint32Field();
    v12 = self->_has;
    if ((v12 & 0x20) == 0)
    {
LABEL_19:
      if ((v12 & 0x40) == 0)
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

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  accessPointInfos = self->_accessPointInfos;
  v15 = [(NSMutableArray *)accessPointInfos countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(accessPointInfos);
        }

        v19 = *(*(&v26 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)accessPointInfos countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 100) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 12) = self->_beforeAction;
  *(a3 + 100) |= 0x10u;
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

LABEL_29:
  *(a3 + 6) = self->_action;
  *(a3 + 100) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(a3 + 8) = self->_afterRecommendedAction;
    *(a3 + 100) |= 8u;
  }

LABEL_6:
  if (self->_changes)
  {
    [a3 setChanges:?];
  }

  if ([(AWDWiFiDPSEpilogue *)self associationChangesCount])
  {
    [a3 clearAssociationChanges];
    v6 = [(AWDWiFiDPSEpilogue *)self associationChangesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addAssociationChanges:{-[AWDWiFiDPSEpilogue associationChangesAtIndex:](self, "associationChangesAtIndex:", i)}];
      }
    }
  }

  if (self->_qDpsStats)
  {
    [a3 setQDpsStats:?];
  }

  v9 = self->_has;
  if ((v9 & 4) != 0)
  {
    *(a3 + 7) = self->_actionIntVal;
    *(a3 + 100) |= 4u;
    v9 = self->_has;
    if ((v9 & 0x20) == 0)
    {
LABEL_16:
      if ((v9 & 0x40) == 0)
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

  *(a3 + 20) = self->_studyType;
  *(a3 + 100) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    *(a3 + 96) = self->_isAssociatedAtStudyEnd;
    *(a3 + 100) |= 0x40u;
  }

LABEL_18:
  if (self->_symptomsDnsStats)
  {
    [a3 setSymptomsDnsStats:?];
  }

  if (self->_discoveredPeerInfo)
  {
    [a3 setDiscoveredPeerInfo:?];
  }

  if ([(AWDWiFiDPSEpilogue *)self accessPointInfosCount])
  {
    [a3 clearAccessPointInfos];
    v10 = [(AWDWiFiDPSEpilogue *)self accessPointInfosCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        [a3 addAccessPointInfo:{-[AWDWiFiDPSEpilogue accessPointInfoAtIndex:](self, "accessPointInfoAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x29EDCA608];
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

  *(v6 + 56) = [(AWDWADiagnosisActionAssociationDifferences *)self->_changes copyWithZone:a3];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  associationChanges = self->_associationChanges;
  v9 = [(NSMutableArray *)associationChanges countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(associationChanges);
        }

        v13 = [*(*(&v27 + 1) + 8 * i) copyWithZone:a3];
        [v6 addAssociationChanges:v13];
      }

      v10 = [(NSMutableArray *)associationChanges countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  *(v6 + 72) = [(AWDWAQuickDpsStats *)self->_qDpsStats copyWithZone:a3];
  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    *(v6 + 28) = self->_actionIntVal;
    *(v6 + 100) |= 4u;
    v14 = self->_has;
    if ((v14 & 0x20) == 0)
    {
LABEL_15:
      if ((v14 & 0x40) == 0)
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

  *(v6 + 88) = [(AWDWASymptomsDnsStats *)self->_symptomsDnsStats copyWithZone:a3];
  *(v6 + 64) = [(AWDWAPeerDiscoveryInfo *)self->_discoveredPeerInfo copyWithZone:a3];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  accessPointInfos = self->_accessPointInfos;
  v16 = [(NSMutableArray *)accessPointInfos countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(accessPointInfos);
        }

        v20 = [*(*(&v23 + 1) + 8 * j) copyWithZone:a3];
        [v6 addAccessPointInfo:v20];
      }

      v17 = [(NSMutableArray *)accessPointInfos countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 100);
    if (*&self->_has)
    {
      if ((*(a3 + 100) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_47;
      }
    }

    else if (*(a3 + 100))
    {
      goto LABEL_47;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 100) & 0x10) == 0 || self->_beforeAction != *(a3 + 12))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 100) & 0x10) != 0)
    {
      goto LABEL_47;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 100) & 2) == 0 || self->_action != *(a3 + 6))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 100) & 2) != 0)
    {
      goto LABEL_47;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 100) & 8) == 0 || self->_afterRecommendedAction != *(a3 + 8))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 100) & 8) != 0)
    {
      goto LABEL_47;
    }

    changes = self->_changes;
    if (!(changes | *(a3 + 7)) || (v5 = [(AWDWADiagnosisActionAssociationDifferences *)changes isEqual:?]) != 0)
    {
      associationChanges = self->_associationChanges;
      if (!(associationChanges | *(a3 + 5)) || (v5 = [(NSMutableArray *)associationChanges isEqual:?]) != 0)
      {
        qDpsStats = self->_qDpsStats;
        if (!(qDpsStats | *(a3 + 9)) || (v5 = [(AWDWAQuickDpsStats *)qDpsStats isEqual:?]) != 0)
        {
          v10 = *(a3 + 100);
          if ((*&self->_has & 4) != 0)
          {
            if ((*(a3 + 100) & 4) == 0 || self->_actionIntVal != *(a3 + 7))
            {
              goto LABEL_47;
            }
          }

          else if ((*(a3 + 100) & 4) != 0)
          {
            goto LABEL_47;
          }

          if ((*&self->_has & 0x20) != 0)
          {
            if ((*(a3 + 100) & 0x20) == 0 || self->_studyType != *(a3 + 20))
            {
              goto LABEL_47;
            }
          }

          else if ((*(a3 + 100) & 0x20) != 0)
          {
            goto LABEL_47;
          }

          if ((*&self->_has & 0x40) != 0)
          {
            if ((*(a3 + 100) & 0x40) != 0)
            {
              v14 = *(a3 + 96);
              if (self->_isAssociatedAtStudyEnd)
              {
                if ((*(a3 + 96) & 1) == 0)
                {
                  goto LABEL_47;
                }
              }

              else if (*(a3 + 96))
              {
                goto LABEL_47;
              }

              goto LABEL_40;
            }
          }

          else if ((*(a3 + 100) & 0x40) == 0)
          {
LABEL_40:
            symptomsDnsStats = self->_symptomsDnsStats;
            if (!(symptomsDnsStats | *(a3 + 11)) || (v5 = [(AWDWASymptomsDnsStats *)symptomsDnsStats isEqual:?]) != 0)
            {
              discoveredPeerInfo = self->_discoveredPeerInfo;
              if (!(discoveredPeerInfo | *(a3 + 8)) || (v5 = [(AWDWAPeerDiscoveryInfo *)discoveredPeerInfo isEqual:?]) != 0)
              {
                accessPointInfos = self->_accessPointInfos;
                if (accessPointInfos | *(a3 + 2))
                {

                  LOBYTE(v5) = [(NSMutableArray *)accessPointInfos isEqual:?];
                }

                else
                {
                  LOBYTE(v5) = 1;
                }
              }
            }

            return v5;
          }

LABEL_47:
          LOBYTE(v5) = 0;
        }
      }
    }
  }

  return v5;
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
  v7 = [(AWDWADiagnosisActionAssociationDifferences *)self->_changes hash];
  v8 = [(NSMutableArray *)self->_associationChanges hash];
  v9 = [(AWDWAQuickDpsStats *)self->_qDpsStats hash];
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
  v14 = v10 ^ v11 ^ v12 ^ [(AWDWASymptomsDnsStats *)self->_symptomsDnsStats hash];
  v15 = v13 ^ v14 ^ [(AWDWAPeerDiscoveryInfo *)self->_discoveredPeerInfo hash];
  return v15 ^ [(NSMutableArray *)self->_accessPointInfos hash];
}

- (void)mergeFrom:(id)a3
{
  v36 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 100);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 100);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a3 + 100) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_beforeAction = *(a3 + 12);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 100);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_action = *(a3 + 6);
  *&self->_has |= 2u;
  if ((*(a3 + 100) & 8) != 0)
  {
LABEL_5:
    self->_afterRecommendedAction = *(a3 + 8);
    *&self->_has |= 8u;
  }

LABEL_6:
  changes = self->_changes;
  v7 = *(a3 + 7);
  if (changes)
  {
    if (v7)
    {
      [(AWDWADiagnosisActionAssociationDifferences *)changes mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDWiFiDPSEpilogue *)self setChanges:?];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = *(a3 + 5);
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(AWDWiFiDPSEpilogue *)self addAssociationChanges:*(*(&v30 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  qDpsStats = self->_qDpsStats;
  v14 = *(a3 + 9);
  if (qDpsStats)
  {
    if (v14)
    {
      [(AWDWAQuickDpsStats *)qDpsStats mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(AWDWiFiDPSEpilogue *)self setQDpsStats:?];
  }

  v15 = *(a3 + 100);
  if ((v15 & 4) != 0)
  {
    self->_actionIntVal = *(a3 + 7);
    *&self->_has |= 4u;
    v15 = *(a3 + 100);
    if ((v15 & 0x20) == 0)
    {
LABEL_29:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((*(a3 + 100) & 0x20) == 0)
  {
    goto LABEL_29;
  }

  self->_studyType = *(a3 + 20);
  *&self->_has |= 0x20u;
  if ((*(a3 + 100) & 0x40) != 0)
  {
LABEL_30:
    self->_isAssociatedAtStudyEnd = *(a3 + 96);
    *&self->_has |= 0x40u;
  }

LABEL_31:
  symptomsDnsStats = self->_symptomsDnsStats;
  v17 = *(a3 + 11);
  if (symptomsDnsStats)
  {
    if (v17)
    {
      [(AWDWASymptomsDnsStats *)symptomsDnsStats mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(AWDWiFiDPSEpilogue *)self setSymptomsDnsStats:?];
  }

  discoveredPeerInfo = self->_discoveredPeerInfo;
  v19 = *(a3 + 8);
  if (discoveredPeerInfo)
  {
    if (v19)
    {
      [(AWDWAPeerDiscoveryInfo *)discoveredPeerInfo mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(AWDWiFiDPSEpilogue *)self setDiscoveredPeerInfo:?];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = *(a3 + 2);
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(AWDWiFiDPSEpilogue *)self addAccessPointInfo:*(*(&v26 + 1) + 8 * j)];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x29EDCA608];
}

@end