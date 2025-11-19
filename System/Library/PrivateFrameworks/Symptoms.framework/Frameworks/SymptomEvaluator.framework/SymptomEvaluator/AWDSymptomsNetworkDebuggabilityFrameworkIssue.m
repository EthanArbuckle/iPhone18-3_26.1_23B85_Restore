@interface AWDSymptomsNetworkDebuggabilityFrameworkIssue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNdfAppSymptoms:(id)a3;
- (int)StringAsNdfNetworkTypes:(id)a3;
- (int)StringAsNdfSessionType:(id)a3;
- (int)StringAsNdfTriggerType:(id)a3;
- (int)ndfAppSymptomAtIndex:(unint64_t)a3;
- (int)ndfNetworkTypeAtIndex:(unint64_t)a3;
- (int)ndfSessionType;
- (int)ndfTriggerType;
- (unint64_t)hash;
- (void)addNdfAppName:(id)a3;
- (void)addNdfSignature:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasNdfDampeningFactor:(BOOL)a3;
- (void)setHasNdfDuration:(BOOL)a3;
- (void)setHasNdfLQM:(BOOL)a3;
- (void)setHasNdfSessionType:(BOOL)a3;
- (void)setHasNdfSymptomPoint:(BOOL)a3;
- (void)setHasNdfTriggerType:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsNetworkDebuggabilityFrameworkIssue

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDSymptomsNetworkDebuggabilityFrameworkIssue;
  [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)&v3 dealloc];
}

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

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)ndfNetworkTypeAtIndex:(unint64_t)a3
{
  p_ndfNetworkTypes = &self->_ndfNetworkTypes;
  count = self->_ndfNetworkTypes.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_ndfNetworkTypes->list[a3];
}

- (int)StringAsNdfNetworkTypes:(id)a3
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

- (void)setHasNdfDuration:(BOOL)a3
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

- (void)setHasNdfDampeningFactor:(BOOL)a3
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

- (int)ndfTriggerType
{
  if ((*&self->_has & 0x80000000) != 0)
  {
    return self->_ndfTriggerType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasNdfTriggerType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)StringAsNdfTriggerType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Functional"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Operational"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Performance"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addNdfAppName:(id)a3
{
  v4 = a3;
  ndfAppNames = self->_ndfAppNames;
  v8 = v4;
  if (!ndfAppNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ndfAppNames;
    self->_ndfAppNames = v6;

    v4 = v8;
    ndfAppNames = self->_ndfAppNames;
  }

  [(NSMutableArray *)ndfAppNames addObject:v4];
}

- (int)ndfAppSymptomAtIndex:(unint64_t)a3
{
  p_ndfAppSymptoms = &self->_ndfAppSymptoms;
  count = self->_ndfAppSymptoms.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_ndfAppSymptoms->list[a3];
}

- (int)StringAsNdfAppSymptoms:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Crash"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DataStall"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AdaptiveWriteTimeout"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DNSFailed"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TLSHandshakeFailed"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"AddressAcquisitionFailed"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AddressAcquisitionSucceeded"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"BackgroundRRCExcDuration"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"FlowCountExceededPeriodicThreshold"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"MbufPeakUsage"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"RNFFlowWhenDisabled"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"RNFWrongUsageCount"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"RNFExceededPeriodicThreshold"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"RNFFlowUsageThreshold"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DNSNoReplies"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"DNSResumedResponding"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"LibtraceOSLog"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"ARPFailure"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"ND6Failure"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"Stall"])
  {
    v4 = 99;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasNdfLQM:(BOOL)a3
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

- (int)ndfSessionType
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_ndfSessionType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasNdfSessionType:(BOOL)a3
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

- (int)StringAsNdfSessionType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"Foreground"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"Background"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)addNdfSignature:(id)a3
{
  v4 = a3;
  ndfSignatures = self->_ndfSignatures;
  v8 = v4;
  if (!ndfSignatures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ndfSignatures;
    self->_ndfSignatures = v6;

    v4 = v8;
    ndfSignatures = self->_ndfSignatures;
  }

  [(NSMutableArray *)ndfSignatures addObject:v4];
}

- (void)setHasNdfSymptomPoint:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkDebuggabilityFrameworkIssue;
  v4 = [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)&v8 description];
  v5 = [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 0x20) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  p_ndfNetworkTypes = &self->_ndfNetworkTypes;
  if (self->_ndfNetworkTypes.count)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_ndfNetworkTypes.count)
    {
      v7 = 0;
      do
      {
        v8 = p_ndfNetworkTypes->list[v7] - 1;
        if (v8 >= 3)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_ndfNetworkTypes->list[v7]];
        }

        else
        {
          v9 = off_27898F250[v8];
        }

        [v6 addObject:v9];

        ++v7;
      }

      while (v7 < self->_ndfNetworkTypes.count);
    }

    [v3 setObject:v6 forKey:@"ndfNetworkType"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ndfCount];
    [v3 setObject:v11 forKey:@"ndfCount"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_14;
      }

LABEL_18:
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ndfDampeningFactor];
      [v3 setObject:v13 forKey:@"ndfDampeningFactor"];

      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ndfDuration];
  [v3 setObject:v12 forKey:@"ndfDuration"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if ((has & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v14 = self->_ndfTriggerType - 1;
  if (v14 >= 3)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ndfTriggerType];
  }

  else
  {
    v15 = off_27898F268[v14];
  }

  [v3 setObject:v15 forKey:@"ndfTriggerType"];

LABEL_23:
  ndfAppNames = self->_ndfAppNames;
  if (ndfAppNames)
  {
    [v3 setObject:ndfAppNames forKey:@"ndfAppName"];
  }

  p_ndfAppSymptoms = &self->_ndfAppSymptoms;
  if (self->_ndfAppSymptoms.count)
  {
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_ndfAppSymptoms.count)
    {
      v19 = 0;
      do
      {
        v20 = p_ndfAppSymptoms->list[v19];
        v21 = @"Crash";
        switch(v20)
        {
          case 1:
            break;
          case 2:
            v21 = @"DataStall";
            break;
          case 3:
            v21 = @"AdaptiveWriteTimeout";
            break;
          case 4:
            v21 = @"DNSFailed";
            break;
          case 5:
            v21 = @"TLSHandshakeFailed";
            break;
          case 6:
            v21 = @"AddressAcquisitionFailed";
            break;
          case 7:
            v21 = @"AddressAcquisitionSucceeded";
            break;
          case 8:
            v21 = @"BackgroundRRCExcDuration";
            break;
          case 9:
            v21 = @"FlowCountExceededPeriodicThreshold";
            break;
          case 10:
            v21 = @"MbufPeakUsage";
            break;
          case 11:
            v21 = @"RNFFlowWhenDisabled";
            break;
          case 12:
            v21 = @"RNFWrongUsageCount";
            break;
          case 13:
            v21 = @"RNFExceededPeriodicThreshold";
            break;
          case 14:
            v21 = @"RNFFlowUsageThreshold";
            break;
          case 15:
            v21 = @"DNSNoReplies";
            break;
          case 16:
            v21 = @"DNSResumedResponding";
            break;
          case 17:
            v21 = @"LibtraceOSLog";
            break;
          case 18:
            v21 = @"ARPFailure";
            break;
          case 19:
            v21 = @"ND6Failure";
            break;
          default:
            if (v20 == 99)
            {
              v21 = @"Stall";
            }

            else
            {
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_ndfAppSymptoms->list[v19]];
            }

            break;
        }

        [v18 addObject:v21];

        ++v19;
      }

      while (v19 < self->_ndfAppSymptoms.count);
    }

    [v3 setObject:v18 forKey:@"ndfAppSymptom"];
  }

  v22 = self->_has;
  if ((v22 & 8) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_ndfLQM];
    [v3 setObject:v23 forKey:@"ndfLQM"];

    v22 = self->_has;
  }

  if ((v22 & 0x40) != 0)
  {
    ndfSessionType = self->_ndfSessionType;
    if (ndfSessionType == 1)
    {
      v25 = @"Foreground";
    }

    else if (ndfSessionType == 2)
    {
      v25 = @"Background";
    }

    else
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ndfSessionType];
    }

    [v3 setObject:v25 forKey:@"ndfSessionType"];
  }

  ndfSignatures = self->_ndfSignatures;
  if (ndfSignatures)
  {
    [v3 setObject:ndfSignatures forKey:@"ndfSignature"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_ndfSymptomPoint];
    [v3 setObject:v27 forKey:@"ndfSymptomPoint"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((*&self->_has & 0x20) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_ndfNetworkTypes.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_ndfNetworkTypes.list[v6];
      PBDataWriterWriteInt32Field();
      ++v6;
    }

    while (v6 < self->_ndfNetworkTypes.count);
  }

  has = self->_has;
  if (has)
  {
    ndfCount = self->_ndfCount;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_8:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

LABEL_36:
      ndfDampeningFactor = self->_ndfDampeningFactor;
      PBDataWriterWriteUint64Field();
      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_37;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

  ndfDuration = self->_ndfDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  if ((has & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_37:
  ndfTriggerType = self->_ndfTriggerType;
  PBDataWriterWriteInt32Field();
LABEL_10:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = self->_ndfAppNames;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
  }

  if (self->_ndfAppSymptoms.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_ndfAppSymptoms.list[v15];
      PBDataWriterWriteInt32Field();
      ++v15;
    }

    while (v15 < self->_ndfAppSymptoms.count);
  }

  v17 = self->_has;
  if ((v17 & 8) != 0)
  {
    ndfLQM = self->_ndfLQM;
    PBDataWriterWriteInt64Field();
    v17 = self->_has;
  }

  if ((v17 & 0x40) != 0)
  {
    ndfSessionType = self->_ndfSessionType;
    PBDataWriterWriteInt32Field();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = self->_ndfSignatures;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v22);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    ndfSymptomPoint = self->_ndfSymptomPoint;
    PBDataWriterWriteInt64Field();
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x20) != 0)
  {
    v4[12] = self->_timestamp;
    *(v4 + 132) |= 0x20u;
  }

  v21 = v4;
  if ([(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self ndfNetworkTypesCount])
  {
    [v21 clearNdfNetworkTypes];
    v5 = [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self ndfNetworkTypesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v21 addNdfNetworkType:{-[AWDSymptomsNetworkDebuggabilityFrameworkIssue ndfNetworkTypeAtIndex:](self, "ndfNetworkTypeAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v21 + 7) = self->_ndfCount;
    *(v21 + 132) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

LABEL_34:
      *(v21 + 8) = self->_ndfDampeningFactor;
      *(v21 + 132) |= 2u;
      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_11;
      }

LABEL_35:
      *(v21 + 32) = self->_ndfTriggerType;
      *(v21 + 132) |= 0x80u;
      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  *(v21 + 9) = self->_ndfDuration;
  *(v21 + 132) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  if (has < 0)
  {
    goto LABEL_35;
  }

LABEL_11:
  if ([(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self ndfAppNamesCount])
  {
    [v21 clearNdfAppNames];
    v9 = [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self ndfAppNamesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self ndfAppNameAtIndex:j];
        [v21 addNdfAppName:v12];
      }
    }
  }

  if ([(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self ndfAppSymptomsCount])
  {
    [v21 clearNdfAppSymptoms];
    v13 = [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self ndfAppSymptomsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        [v21 addNdfAppSymptom:{-[AWDSymptomsNetworkDebuggabilityFrameworkIssue ndfAppSymptomAtIndex:](self, "ndfAppSymptomAtIndex:", k)}];
      }
    }
  }

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    *(v21 + 10) = self->_ndfLQM;
    *(v21 + 132) |= 8u;
    v16 = self->_has;
  }

  if ((v16 & 0x40) != 0)
  {
    *(v21 + 28) = self->_ndfSessionType;
    *(v21 + 132) |= 0x40u;
  }

  if ([(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self ndfSignaturesCount])
  {
    [v21 clearNdfSignatures];
    v17 = [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self ndfSignaturesCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self ndfSignatureAtIndex:m];
        [v21 addNdfSignature:v20];
      }
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v21 + 11) = self->_ndfSymptomPoint;
    *(v21 + 132) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 96) = self->_timestamp;
    *(v5 + 132) |= 0x20u;
  }

  PBRepeatedInt32Copy();
  has = self->_has;
  if (has)
  {
    *(v6 + 56) = self->_ndfCount;
    *(v6 + 132) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_30:
      *(v6 + 64) = self->_ndfDampeningFactor;
      *(v6 + 132) |= 2u;
      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 72) = self->_ndfDuration;
  *(v6 + 132) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_30;
  }

LABEL_6:
  if ((has & 0x80) == 0)
  {
    goto LABEL_7;
  }

LABEL_31:
  *(v6 + 128) = self->_ndfTriggerType;
  *(v6 + 132) |= 0x80u;
LABEL_7:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_ndfAppNames;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v27 + 1) + 8 * i) copyWithZone:a3];
        [v6 addNdfAppName:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  PBRepeatedInt32Copy();
  v14 = self->_has;
  if ((v14 & 8) != 0)
  {
    *(v6 + 80) = self->_ndfLQM;
    *(v6 + 132) |= 8u;
    v14 = self->_has;
  }

  if ((v14 & 0x40) != 0)
  {
    *(v6 + 112) = self->_ndfSessionType;
    *(v6 + 132) |= 0x40u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = self->_ndfSignatures;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v23 + 1) + 8 * j) copyWithZone:{a3, v23}];
        [v6 addNdfSignature:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 88) = self->_ndfSymptomPoint;
    *(v6 + 132) |= 0x10u;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  v5 = *(v4 + 132);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 132) & 0x20) == 0 || self->_timestamp != *(v4 + 12))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 132) & 0x20) != 0)
  {
    goto LABEL_49;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_49;
  }

  v6 = *(v4 + 132);
  if (*&self->_has)
  {
    if ((*(v4 + 132) & 1) == 0 || self->_ndfCount != *(v4 + 7))
    {
      goto LABEL_49;
    }
  }

  else if (*(v4 + 132))
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 132) & 4) == 0 || self->_ndfDuration != *(v4 + 9))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 132) & 4) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 132) & 2) == 0 || self->_ndfDampeningFactor != *(v4 + 8))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 132) & 2) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(v4 + 132) & 0x80) == 0 || self->_ndfTriggerType != *(v4 + 32))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 132) & 0x80) != 0)
  {
    goto LABEL_49;
  }

  ndfAppNames = self->_ndfAppNames;
  if (ndfAppNames | *(v4 + 13) && ![(NSMutableArray *)ndfAppNames isEqual:?]|| !PBRepeatedInt32IsEqual())
  {
    goto LABEL_49;
  }

  has = self->_has;
  v9 = *(v4 + 132);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 132) & 8) == 0 || self->_ndfLQM != *(v4 + 10))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 132) & 8) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 132) & 0x40) == 0 || self->_ndfSessionType != *(v4 + 28))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 132) & 0x40) != 0)
  {
    goto LABEL_49;
  }

  ndfSignatures = self->_ndfSignatures;
  if (ndfSignatures | *(v4 + 15))
  {
    if ([(NSMutableArray *)ndfSignatures isEqual:?])
    {
      has = self->_has;
      goto LABEL_44;
    }

LABEL_49:
    v11 = 0;
    goto LABEL_50;
  }

LABEL_44:
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 132) & 0x10) == 0 || self->_ndfSymptomPoint != *(v4 + 11))
    {
      goto LABEL_49;
    }

    v11 = 1;
  }

  else
  {
    v11 = (*(v4 + 132) & 0x10) == 0;
  }

LABEL_50:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v15 = 2654435761u * self->_timestamp;
  }

  else
  {
    v15 = 0;
  }

  v14 = PBRepeatedInt32Hash();
  if (*&self->_has)
  {
    v13 = 2654435761u * self->_ndfCount;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v3 = 2654435761u * self->_ndfDuration;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v4 = 0;
      if ((*&self->_has & 0x80) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v4 = 2654435761u * self->_ndfDampeningFactor;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_8:
    v5 = 2654435761 * self->_ndfTriggerType;
    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
LABEL_13:
  v6 = [(NSMutableArray *)self->_ndfAppNames hash];
  v7 = PBRepeatedInt32Hash();
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_ndfLQM;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_15:
      v9 = 2654435761 * self->_ndfSessionType;
      goto LABEL_18;
    }
  }

  v9 = 0;
LABEL_18:
  v10 = [(NSMutableArray *)self->_ndfSignatures hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761 * self->_ndfSymptomPoint;
  }

  else
  {
    v11 = 0;
  }

  return v14 ^ v15 ^ v13 ^ v3 ^ v4 ^ v5 ^ v7 ^ v8 ^ v6 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if ((*(v4 + 132) & 0x20) != 0)
  {
    self->_timestamp = v4[12];
    *&self->_has |= 0x20u;
  }

  v6 = [v4 ndfNetworkTypesCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDSymptomsNetworkDebuggabilityFrameworkIssue addNdfNetworkType:](self, "addNdfNetworkType:", [v5 ndfNetworkTypeAtIndex:i]);
    }
  }

  v9 = *(v5 + 132);
  if (v9)
  {
    self->_ndfCount = *(v5 + 7);
    *&self->_has |= 1u;
    v9 = *(v5 + 132);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 2) == 0)
      {
        goto LABEL_9;
      }

LABEL_36:
      self->_ndfDampeningFactor = *(v5 + 8);
      *&self->_has |= 2u;
      if ((*(v5 + 132) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_37;
    }
  }

  else if ((*(v5 + 132) & 4) == 0)
  {
    goto LABEL_8;
  }

  self->_ndfDuration = *(v5 + 9);
  *&self->_has |= 4u;
  v9 = *(v5 + 132);
  if ((v9 & 2) != 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_37:
  self->_ndfTriggerType = *(v5 + 32);
  *&self->_has |= 0x80u;
LABEL_10:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = *(v5 + 13);
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self addNdfAppName:*(*(&v29 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v12);
  }

  v15 = [v5 ndfAppSymptomsCount];
  if (v15)
  {
    v16 = v15;
    for (k = 0; k != v16; ++k)
    {
      -[AWDSymptomsNetworkDebuggabilityFrameworkIssue addNdfAppSymptom:](self, "addNdfAppSymptom:", [v5 ndfAppSymptomAtIndex:k]);
    }
  }

  v18 = *(v5 + 132);
  if ((v18 & 8) != 0)
  {
    self->_ndfLQM = *(v5 + 10);
    *&self->_has |= 8u;
    v18 = *(v5 + 132);
  }

  if ((v18 & 0x40) != 0)
  {
    self->_ndfSessionType = *(v5 + 28);
    *&self->_has |= 0x40u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = *(v5 + 15);
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (m = 0; m != v21; ++m)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(AWDSymptomsNetworkDebuggabilityFrameworkIssue *)self addNdfSignature:*(*(&v25 + 1) + 8 * m), v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v21);
  }

  if ((*(v5 + 132) & 0x10) != 0)
  {
    self->_ndfSymptomPoint = *(v5 + 11);
    *&self->_has |= 0x10u;
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end