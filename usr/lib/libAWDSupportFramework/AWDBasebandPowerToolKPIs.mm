@interface AWDBasebandPowerToolKPIs
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)armUtilityPDFAtIndex:(unint64_t)a3;
- (int)causeCodeBackgroundActivityARMUtilityAtIndex:(unint64_t)a3;
- (int)causeCodeBackgroundActivityDurationsAtIndex:(unint64_t)a3;
- (int)causeCodeCumulativeARMUtilityAtIndex:(unint64_t)a3;
- (int)causeCodeCumulativeDurationsAtIndex:(unint64_t)a3;
- (int)causeCodeMarginalCoverageARMUtilityAtIndex:(unint64_t)a3;
- (int)causeCodeMarginalCoverageDurationsAtIndex:(unint64_t)a3;
- (int)causeCodeOOSARMUtilityAtIndex:(unint64_t)a3;
- (int)causeCodeOOSDurationsAtIndex:(unint64_t)a3;
- (int)causeCodeRACHFailARMUtilityAtIndex:(unint64_t)a3;
- (int)causeCodeRACHFailDurationsAtIndex:(unint64_t)a3;
- (int)causeCodeStruckInDCHARMUtilityAtIndex:(unint64_t)a3;
- (int)causeCodeStruckInDCHDurationsAtIndex:(unint64_t)a3;
- (int)causeCodeTcXONotShuttingARMUtilityAtIndex:(unint64_t)a3;
- (int)causeCodeTcXONotShuttingDurationsAtIndex:(unint64_t)a3;
- (int)causeCodeUnknownARMUtilityAtIndex:(unint64_t)a3;
- (int)causeCodeUnknownDurationsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasArmUtilityThresholdPoint:(BOOL)a3;
- (void)setHasRadarPriority:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDBasebandPowerToolKPIs

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDBasebandPowerToolKPIs;
  [(AWDBasebandPowerToolKPIs *)&v3 dealloc];
}

- (void)setHasRadarPriority:(BOOL)a3
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

- (void)setHasArmUtilityThresholdPoint:(BOOL)a3
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

- (int)armUtilityPDFAtIndex:(unint64_t)a3
{
  p_armUtilityPDFs = &self->_armUtilityPDFs;
  count = self->_armUtilityPDFs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_armUtilityPDFs->list[a3];
}

- (int)causeCodeOOSARMUtilityAtIndex:(unint64_t)a3
{
  p_causeCodeOOSARMUtilitys = &self->_causeCodeOOSARMUtilitys;
  count = self->_causeCodeOOSARMUtilitys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeOOSARMUtilitys->list[a3];
}

- (int)causeCodeOOSDurationsAtIndex:(unint64_t)a3
{
  p_causeCodeOOSDurations = &self->_causeCodeOOSDurations;
  count = self->_causeCodeOOSDurations.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeOOSDurations->list[a3];
}

- (int)causeCodeTcXONotShuttingARMUtilityAtIndex:(unint64_t)a3
{
  p_causeCodeTcXONotShuttingARMUtilitys = &self->_causeCodeTcXONotShuttingARMUtilitys;
  count = self->_causeCodeTcXONotShuttingARMUtilitys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeTcXONotShuttingARMUtilitys->list[a3];
}

- (int)causeCodeTcXONotShuttingDurationsAtIndex:(unint64_t)a3
{
  p_causeCodeTcXONotShuttingDurations = &self->_causeCodeTcXONotShuttingDurations;
  count = self->_causeCodeTcXONotShuttingDurations.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeTcXONotShuttingDurations->list[a3];
}

- (int)causeCodeBackgroundActivityARMUtilityAtIndex:(unint64_t)a3
{
  p_causeCodeBackgroundActivityARMUtilitys = &self->_causeCodeBackgroundActivityARMUtilitys;
  count = self->_causeCodeBackgroundActivityARMUtilitys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeBackgroundActivityARMUtilitys->list[a3];
}

- (int)causeCodeBackgroundActivityDurationsAtIndex:(unint64_t)a3
{
  p_causeCodeBackgroundActivityDurations = &self->_causeCodeBackgroundActivityDurations;
  count = self->_causeCodeBackgroundActivityDurations.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeBackgroundActivityDurations->list[a3];
}

- (int)causeCodeRACHFailARMUtilityAtIndex:(unint64_t)a3
{
  p_causeCodeRACHFailARMUtilitys = &self->_causeCodeRACHFailARMUtilitys;
  count = self->_causeCodeRACHFailARMUtilitys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeRACHFailARMUtilitys->list[a3];
}

- (int)causeCodeRACHFailDurationsAtIndex:(unint64_t)a3
{
  p_causeCodeRACHFailDurations = &self->_causeCodeRACHFailDurations;
  count = self->_causeCodeRACHFailDurations.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeRACHFailDurations->list[a3];
}

- (int)causeCodeStruckInDCHARMUtilityAtIndex:(unint64_t)a3
{
  p_causeCodeStruckInDCHARMUtilitys = &self->_causeCodeStruckInDCHARMUtilitys;
  count = self->_causeCodeStruckInDCHARMUtilitys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeStruckInDCHARMUtilitys->list[a3];
}

- (int)causeCodeStruckInDCHDurationsAtIndex:(unint64_t)a3
{
  p_causeCodeStruckInDCHDurations = &self->_causeCodeStruckInDCHDurations;
  count = self->_causeCodeStruckInDCHDurations.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeStruckInDCHDurations->list[a3];
}

- (int)causeCodeMarginalCoverageARMUtilityAtIndex:(unint64_t)a3
{
  p_causeCodeMarginalCoverageARMUtilitys = &self->_causeCodeMarginalCoverageARMUtilitys;
  count = self->_causeCodeMarginalCoverageARMUtilitys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeMarginalCoverageARMUtilitys->list[a3];
}

- (int)causeCodeMarginalCoverageDurationsAtIndex:(unint64_t)a3
{
  p_causeCodeMarginalCoverageDurations = &self->_causeCodeMarginalCoverageDurations;
  count = self->_causeCodeMarginalCoverageDurations.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeMarginalCoverageDurations->list[a3];
}

- (int)causeCodeUnknownARMUtilityAtIndex:(unint64_t)a3
{
  p_causeCodeUnknownARMUtilitys = &self->_causeCodeUnknownARMUtilitys;
  count = self->_causeCodeUnknownARMUtilitys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeUnknownARMUtilitys->list[a3];
}

- (int)causeCodeUnknownDurationsAtIndex:(unint64_t)a3
{
  p_causeCodeUnknownDurations = &self->_causeCodeUnknownDurations;
  count = self->_causeCodeUnknownDurations.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeUnknownDurations->list[a3];
}

- (int)causeCodeCumulativeARMUtilityAtIndex:(unint64_t)a3
{
  p_causeCodeCumulativeARMUtilitys = &self->_causeCodeCumulativeARMUtilitys;
  count = self->_causeCodeCumulativeARMUtilitys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeCumulativeARMUtilitys->list[a3];
}

- (int)causeCodeCumulativeDurationsAtIndex:(unint64_t)a3
{
  p_causeCodeCumulativeDurations = &self->_causeCodeCumulativeDurations;
  count = self->_causeCodeCumulativeDurations.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_causeCodeCumulativeDurations->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDBasebandPowerToolKPIs;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDBasebandPowerToolKPIs description](&v3, sel_description), -[AWDBasebandPowerToolKPIs dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_radarPriority), @"radarPriority"}];
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_armUtilityThresholdPoint), @"armUtilityThresholdPoint"}];
  }

LABEL_5:
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"armUtilityPDF"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_OOS_ARMUtility"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_OOS_Durations"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_TcXONotShutting_ARMUtility"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_TcXONotShutting_Durations"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_BackgroundActivity_ARMUtility"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_BackgroundActivity_Durations"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_RACHFail_ARMUtility"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_RACHFail_Durations"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_StruckInDCH_ARMUtility"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_StruckInDCH_Durations"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_MarginalCoverage_ARMUtility"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_MarginalCoverage_Durations"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_Unknown_ARMUtility"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_Unknown_Durations"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_Cumulative_ARMUtility"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_Cumulative_Durations"];
  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  radarPriority = self->_radarPriority;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    armUtilityThresholdPoint = self->_armUtilityThresholdPoint;
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  if (self->_armUtilityPDFs.count)
  {
    PBDataWriterPlaceMark();
    if (self->_armUtilityPDFs.count)
    {
      v6 = 0;
      do
      {
        v7 = self->_armUtilityPDFs.list[v6];
        PBDataWriterWriteInt32Field();
        ++v6;
      }

      while (v6 < self->_armUtilityPDFs.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeOOSARMUtilitys.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeOOSARMUtilitys.count)
    {
      v8 = 0;
      do
      {
        v9 = self->_causeCodeOOSARMUtilitys.list[v8];
        PBDataWriterWriteInt32Field();
        ++v8;
      }

      while (v8 < self->_causeCodeOOSARMUtilitys.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeOOSDurations.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeOOSDurations.count)
    {
      v10 = 0;
      do
      {
        v11 = self->_causeCodeOOSDurations.list[v10];
        PBDataWriterWriteInt32Field();
        ++v10;
      }

      while (v10 < self->_causeCodeOOSDurations.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeTcXONotShuttingARMUtilitys.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeTcXONotShuttingARMUtilitys.count)
    {
      v12 = 0;
      do
      {
        v13 = self->_causeCodeTcXONotShuttingARMUtilitys.list[v12];
        PBDataWriterWriteInt32Field();
        ++v12;
      }

      while (v12 < self->_causeCodeTcXONotShuttingARMUtilitys.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeTcXONotShuttingDurations.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeTcXONotShuttingDurations.count)
    {
      v14 = 0;
      do
      {
        v15 = self->_causeCodeTcXONotShuttingDurations.list[v14];
        PBDataWriterWriteInt32Field();
        ++v14;
      }

      while (v14 < self->_causeCodeTcXONotShuttingDurations.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeBackgroundActivityARMUtilitys.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeBackgroundActivityARMUtilitys.count)
    {
      v16 = 0;
      do
      {
        v17 = self->_causeCodeBackgroundActivityARMUtilitys.list[v16];
        PBDataWriterWriteInt32Field();
        ++v16;
      }

      while (v16 < self->_causeCodeBackgroundActivityARMUtilitys.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeBackgroundActivityDurations.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeBackgroundActivityDurations.count)
    {
      v18 = 0;
      do
      {
        v19 = self->_causeCodeBackgroundActivityDurations.list[v18];
        PBDataWriterWriteInt32Field();
        ++v18;
      }

      while (v18 < self->_causeCodeBackgroundActivityDurations.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeRACHFailARMUtilitys.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeRACHFailARMUtilitys.count)
    {
      v20 = 0;
      do
      {
        v21 = self->_causeCodeRACHFailARMUtilitys.list[v20];
        PBDataWriterWriteInt32Field();
        ++v20;
      }

      while (v20 < self->_causeCodeRACHFailARMUtilitys.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeRACHFailDurations.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeRACHFailDurations.count)
    {
      v22 = 0;
      do
      {
        v23 = self->_causeCodeRACHFailDurations.list[v22];
        PBDataWriterWriteInt32Field();
        ++v22;
      }

      while (v22 < self->_causeCodeRACHFailDurations.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeStruckInDCHARMUtilitys.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeStruckInDCHARMUtilitys.count)
    {
      v24 = 0;
      do
      {
        v25 = self->_causeCodeStruckInDCHARMUtilitys.list[v24];
        PBDataWriterWriteInt32Field();
        ++v24;
      }

      while (v24 < self->_causeCodeStruckInDCHARMUtilitys.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeStruckInDCHDurations.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeStruckInDCHDurations.count)
    {
      v26 = 0;
      do
      {
        v27 = self->_causeCodeStruckInDCHDurations.list[v26];
        PBDataWriterWriteInt32Field();
        ++v26;
      }

      while (v26 < self->_causeCodeStruckInDCHDurations.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeMarginalCoverageARMUtilitys.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeMarginalCoverageARMUtilitys.count)
    {
      v28 = 0;
      do
      {
        v29 = self->_causeCodeMarginalCoverageARMUtilitys.list[v28];
        PBDataWriterWriteInt32Field();
        ++v28;
      }

      while (v28 < self->_causeCodeMarginalCoverageARMUtilitys.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeMarginalCoverageDurations.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeMarginalCoverageDurations.count)
    {
      v30 = 0;
      do
      {
        v31 = self->_causeCodeMarginalCoverageDurations.list[v30];
        PBDataWriterWriteInt32Field();
        ++v30;
      }

      while (v30 < self->_causeCodeMarginalCoverageDurations.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeUnknownARMUtilitys.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeUnknownARMUtilitys.count)
    {
      v32 = 0;
      do
      {
        v33 = self->_causeCodeUnknownARMUtilitys.list[v32];
        PBDataWriterWriteInt32Field();
        ++v32;
      }

      while (v32 < self->_causeCodeUnknownARMUtilitys.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeUnknownDurations.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeUnknownDurations.count)
    {
      v34 = 0;
      do
      {
        v35 = self->_causeCodeUnknownDurations.list[v34];
        PBDataWriterWriteInt32Field();
        ++v34;
      }

      while (v34 < self->_causeCodeUnknownDurations.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_causeCodeCumulativeARMUtilitys.count)
  {
    PBDataWriterPlaceMark();
    if (self->_causeCodeCumulativeARMUtilitys.count)
    {
      v36 = 0;
      do
      {
        v37 = self->_causeCodeCumulativeARMUtilitys.list[v36];
        PBDataWriterWriteInt32Field();
        ++v36;
      }

      while (v36 < self->_causeCodeCumulativeARMUtilitys.count);
    }

    PBDataWriterRecallMark();
  }

  p_causeCodeCumulativeDurations = &self->_causeCodeCumulativeDurations;
  if (p_causeCodeCumulativeDurations->count)
  {
    PBDataWriterPlaceMark();
    if (p_causeCodeCumulativeDurations->count)
    {
      v39 = 0;
      do
      {
        v40 = p_causeCodeCumulativeDurations->list[v39];
        PBDataWriterWriteInt32Field();
        ++v39;
      }

      while (v39 < p_causeCodeCumulativeDurations->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_75:
    *(a3 + 107) = self->_radarPriority;
    *(a3 + 432) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(a3 + 52) = self->_timestamp;
  *(a3 + 432) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_75;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(a3 + 106) = self->_armUtilityThresholdPoint;
    *(a3 + 432) |= 2u;
  }

LABEL_5:
  if ([(AWDBasebandPowerToolKPIs *)self armUtilityPDFsCount])
  {
    [a3 clearArmUtilityPDFs];
    v6 = [(AWDBasebandPowerToolKPIs *)self armUtilityPDFsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addArmUtilityPDF:{-[AWDBasebandPowerToolKPIs armUtilityPDFAtIndex:](self, "armUtilityPDFAtIndex:", i)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeOOSARMUtilitysCount])
  {
    [a3 clearCauseCodeOOSARMUtilitys];
    v9 = [(AWDBasebandPowerToolKPIs *)self causeCodeOOSARMUtilitysCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [a3 addCauseCodeOOSARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeOOSARMUtilityAtIndex:](self, "causeCodeOOSARMUtilityAtIndex:", j)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeOOSDurationsCount])
  {
    [a3 clearCauseCodeOOSDurations];
    v12 = [(AWDBasebandPowerToolKPIs *)self causeCodeOOSDurationsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [a3 addCauseCodeOOSDurations:{-[AWDBasebandPowerToolKPIs causeCodeOOSDurationsAtIndex:](self, "causeCodeOOSDurationsAtIndex:", k)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeTcXONotShuttingARMUtilitysCount])
  {
    [a3 clearCauseCodeTcXONotShuttingARMUtilitys];
    v15 = [(AWDBasebandPowerToolKPIs *)self causeCodeTcXONotShuttingARMUtilitysCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        [a3 addCauseCodeTcXONotShuttingARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeTcXONotShuttingARMUtilityAtIndex:](self, "causeCodeTcXONotShuttingARMUtilityAtIndex:", m)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeTcXONotShuttingDurationsCount])
  {
    [a3 clearCauseCodeTcXONotShuttingDurations];
    v18 = [(AWDBasebandPowerToolKPIs *)self causeCodeTcXONotShuttingDurationsCount];
    if (v18)
    {
      v19 = v18;
      for (n = 0; n != v19; ++n)
      {
        [a3 addCauseCodeTcXONotShuttingDurations:{-[AWDBasebandPowerToolKPIs causeCodeTcXONotShuttingDurationsAtIndex:](self, "causeCodeTcXONotShuttingDurationsAtIndex:", n)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeBackgroundActivityARMUtilitysCount])
  {
    [a3 clearCauseCodeBackgroundActivityARMUtilitys];
    v21 = [(AWDBasebandPowerToolKPIs *)self causeCodeBackgroundActivityARMUtilitysCount];
    if (v21)
    {
      v22 = v21;
      for (ii = 0; ii != v22; ++ii)
      {
        [a3 addCauseCodeBackgroundActivityARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeBackgroundActivityARMUtilityAtIndex:](self, "causeCodeBackgroundActivityARMUtilityAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeBackgroundActivityDurationsCount])
  {
    [a3 clearCauseCodeBackgroundActivityDurations];
    v24 = [(AWDBasebandPowerToolKPIs *)self causeCodeBackgroundActivityDurationsCount];
    if (v24)
    {
      v25 = v24;
      for (jj = 0; jj != v25; ++jj)
      {
        [a3 addCauseCodeBackgroundActivityDurations:{-[AWDBasebandPowerToolKPIs causeCodeBackgroundActivityDurationsAtIndex:](self, "causeCodeBackgroundActivityDurationsAtIndex:", jj)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeRACHFailARMUtilitysCount])
  {
    [a3 clearCauseCodeRACHFailARMUtilitys];
    v27 = [(AWDBasebandPowerToolKPIs *)self causeCodeRACHFailARMUtilitysCount];
    if (v27)
    {
      v28 = v27;
      for (kk = 0; kk != v28; ++kk)
      {
        [a3 addCauseCodeRACHFailARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeRACHFailARMUtilityAtIndex:](self, "causeCodeRACHFailARMUtilityAtIndex:", kk)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeRACHFailDurationsCount])
  {
    [a3 clearCauseCodeRACHFailDurations];
    v30 = [(AWDBasebandPowerToolKPIs *)self causeCodeRACHFailDurationsCount];
    if (v30)
    {
      v31 = v30;
      for (mm = 0; mm != v31; ++mm)
      {
        [a3 addCauseCodeRACHFailDurations:{-[AWDBasebandPowerToolKPIs causeCodeRACHFailDurationsAtIndex:](self, "causeCodeRACHFailDurationsAtIndex:", mm)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeStruckInDCHARMUtilitysCount])
  {
    [a3 clearCauseCodeStruckInDCHARMUtilitys];
    v33 = [(AWDBasebandPowerToolKPIs *)self causeCodeStruckInDCHARMUtilitysCount];
    if (v33)
    {
      v34 = v33;
      for (nn = 0; nn != v34; ++nn)
      {
        [a3 addCauseCodeStruckInDCHARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeStruckInDCHARMUtilityAtIndex:](self, "causeCodeStruckInDCHARMUtilityAtIndex:", nn)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeStruckInDCHDurationsCount])
  {
    [a3 clearCauseCodeStruckInDCHDurations];
    v36 = [(AWDBasebandPowerToolKPIs *)self causeCodeStruckInDCHDurationsCount];
    if (v36)
    {
      v37 = v36;
      for (i1 = 0; i1 != v37; ++i1)
      {
        [a3 addCauseCodeStruckInDCHDurations:{-[AWDBasebandPowerToolKPIs causeCodeStruckInDCHDurationsAtIndex:](self, "causeCodeStruckInDCHDurationsAtIndex:", i1)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeMarginalCoverageARMUtilitysCount])
  {
    [a3 clearCauseCodeMarginalCoverageARMUtilitys];
    v39 = [(AWDBasebandPowerToolKPIs *)self causeCodeMarginalCoverageARMUtilitysCount];
    if (v39)
    {
      v40 = v39;
      for (i2 = 0; i2 != v40; ++i2)
      {
        [a3 addCauseCodeMarginalCoverageARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeMarginalCoverageARMUtilityAtIndex:](self, "causeCodeMarginalCoverageARMUtilityAtIndex:", i2)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeMarginalCoverageDurationsCount])
  {
    [a3 clearCauseCodeMarginalCoverageDurations];
    v42 = [(AWDBasebandPowerToolKPIs *)self causeCodeMarginalCoverageDurationsCount];
    if (v42)
    {
      v43 = v42;
      for (i3 = 0; i3 != v43; ++i3)
      {
        [a3 addCauseCodeMarginalCoverageDurations:{-[AWDBasebandPowerToolKPIs causeCodeMarginalCoverageDurationsAtIndex:](self, "causeCodeMarginalCoverageDurationsAtIndex:", i3)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeUnknownARMUtilitysCount])
  {
    [a3 clearCauseCodeUnknownARMUtilitys];
    v45 = [(AWDBasebandPowerToolKPIs *)self causeCodeUnknownARMUtilitysCount];
    if (v45)
    {
      v46 = v45;
      for (i4 = 0; i4 != v46; ++i4)
      {
        [a3 addCauseCodeUnknownARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeUnknownARMUtilityAtIndex:](self, "causeCodeUnknownARMUtilityAtIndex:", i4)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeUnknownDurationsCount])
  {
    [a3 clearCauseCodeUnknownDurations];
    v48 = [(AWDBasebandPowerToolKPIs *)self causeCodeUnknownDurationsCount];
    if (v48)
    {
      v49 = v48;
      for (i5 = 0; i5 != v49; ++i5)
      {
        [a3 addCauseCodeUnknownDurations:{-[AWDBasebandPowerToolKPIs causeCodeUnknownDurationsAtIndex:](self, "causeCodeUnknownDurationsAtIndex:", i5)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeCumulativeARMUtilitysCount])
  {
    [a3 clearCauseCodeCumulativeARMUtilitys];
    v51 = [(AWDBasebandPowerToolKPIs *)self causeCodeCumulativeARMUtilitysCount];
    if (v51)
    {
      v52 = v51;
      for (i6 = 0; i6 != v52; ++i6)
      {
        [a3 addCauseCodeCumulativeARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeCumulativeARMUtilityAtIndex:](self, "causeCodeCumulativeARMUtilityAtIndex:", i6)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeCumulativeDurationsCount])
  {
    [a3 clearCauseCodeCumulativeDurations];
    v54 = [(AWDBasebandPowerToolKPIs *)self causeCodeCumulativeDurationsCount];
    if (v54)
    {
      v55 = v54;
      for (i7 = 0; i7 != v55; ++i7)
      {
        [a3 addCauseCodeCumulativeDurations:{-[AWDBasebandPowerToolKPIs causeCodeCumulativeDurationsAtIndex:](self, "causeCodeCumulativeDurationsAtIndex:", i7)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v4 + 428) = self->_radarPriority;
    *(v4 + 432) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v4 + 416) = self->_timestamp;
  *(v4 + 432) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v4 + 424) = self->_armUtilityThresholdPoint;
    *(v4 + 432) |= 2u;
  }

LABEL_5:
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(a3 + 432);
  if (*&self->_has)
  {
    if ((*(a3 + 432) & 1) == 0 || self->_timestamp != *(a3 + 52))
    {
      return 0;
    }
  }

  else if (*(a3 + 432))
  {
    return 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(a3 + 432) & 4) == 0 || self->_radarPriority != *(a3 + 107))
    {
      return 0;
    }
  }

  else if ((*(a3 + 432) & 4) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 432) & 2) == 0 || self->_armUtilityThresholdPoint != *(a3 + 106))
    {
      return 0;
    }
  }

  else if ((*(a3 + 432) & 2) != 0)
  {
    return 0;
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    return 0;
  }

  return PBRepeatedInt32IsEqual();
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_radarPriority;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_armUtilityThresholdPoint;
LABEL_8:
  v5 = v3 ^ v2 ^ v4 ^ PBRepeatedInt32Hash();
  v6 = PBRepeatedInt32Hash();
  v7 = v5 ^ v6 ^ PBRepeatedInt32Hash();
  v8 = PBRepeatedInt32Hash();
  v9 = v8 ^ PBRepeatedInt32Hash();
  v10 = v7 ^ v9 ^ PBRepeatedInt32Hash();
  v11 = PBRepeatedInt32Hash();
  v12 = v11 ^ PBRepeatedInt32Hash();
  v13 = v12 ^ PBRepeatedInt32Hash();
  v14 = v10 ^ v13 ^ PBRepeatedInt32Hash();
  v15 = PBRepeatedInt32Hash();
  v16 = v15 ^ PBRepeatedInt32Hash();
  v17 = v16 ^ PBRepeatedInt32Hash();
  v18 = v17 ^ PBRepeatedInt32Hash();
  v19 = v14 ^ v18 ^ PBRepeatedInt32Hash();
  v20 = PBRepeatedInt32Hash();
  return v19 ^ v20 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 432);
  if (v5)
  {
    self->_timestamp = *(a3 + 52);
    *&self->_has |= 1u;
    v5 = *(a3 + 432);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a3 + 432) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_radarPriority = *(a3 + 107);
  *&self->_has |= 4u;
  if ((*(a3 + 432) & 2) != 0)
  {
LABEL_4:
    self->_armUtilityThresholdPoint = *(a3 + 106);
    *&self->_has |= 2u;
  }

LABEL_5:
  v6 = [a3 armUtilityPDFsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDBasebandPowerToolKPIs addArmUtilityPDF:](self, "addArmUtilityPDF:", [a3 armUtilityPDFAtIndex:i]);
    }
  }

  v9 = [a3 causeCodeOOSARMUtilitysCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeOOSARMUtility:](self, "addCauseCodeOOSARMUtility:", [a3 causeCodeOOSARMUtilityAtIndex:j]);
    }
  }

  v12 = [a3 causeCodeOOSDurationsCount];
  if (v12)
  {
    v13 = v12;
    for (k = 0; k != v13; ++k)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeOOSDurations:](self, "addCauseCodeOOSDurations:", [a3 causeCodeOOSDurationsAtIndex:k]);
    }
  }

  v15 = [a3 causeCodeTcXONotShuttingARMUtilitysCount];
  if (v15)
  {
    v16 = v15;
    for (m = 0; m != v16; ++m)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeTcXONotShuttingARMUtility:](self, "addCauseCodeTcXONotShuttingARMUtility:", [a3 causeCodeTcXONotShuttingARMUtilityAtIndex:m]);
    }
  }

  v18 = [a3 causeCodeTcXONotShuttingDurationsCount];
  if (v18)
  {
    v19 = v18;
    for (n = 0; n != v19; ++n)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeTcXONotShuttingDurations:](self, "addCauseCodeTcXONotShuttingDurations:", [a3 causeCodeTcXONotShuttingDurationsAtIndex:n]);
    }
  }

  v21 = [a3 causeCodeBackgroundActivityARMUtilitysCount];
  if (v21)
  {
    v22 = v21;
    for (ii = 0; ii != v22; ++ii)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeBackgroundActivityARMUtility:](self, "addCauseCodeBackgroundActivityARMUtility:", [a3 causeCodeBackgroundActivityARMUtilityAtIndex:ii]);
    }
  }

  v24 = [a3 causeCodeBackgroundActivityDurationsCount];
  if (v24)
  {
    v25 = v24;
    for (jj = 0; jj != v25; ++jj)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeBackgroundActivityDurations:](self, "addCauseCodeBackgroundActivityDurations:", [a3 causeCodeBackgroundActivityDurationsAtIndex:jj]);
    }
  }

  v27 = [a3 causeCodeRACHFailARMUtilitysCount];
  if (v27)
  {
    v28 = v27;
    for (kk = 0; kk != v28; ++kk)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeRACHFailARMUtility:](self, "addCauseCodeRACHFailARMUtility:", [a3 causeCodeRACHFailARMUtilityAtIndex:kk]);
    }
  }

  v30 = [a3 causeCodeRACHFailDurationsCount];
  if (v30)
  {
    v31 = v30;
    for (mm = 0; mm != v31; ++mm)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeRACHFailDurations:](self, "addCauseCodeRACHFailDurations:", [a3 causeCodeRACHFailDurationsAtIndex:mm]);
    }
  }

  v33 = [a3 causeCodeStruckInDCHARMUtilitysCount];
  if (v33)
  {
    v34 = v33;
    for (nn = 0; nn != v34; ++nn)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeStruckInDCHARMUtility:](self, "addCauseCodeStruckInDCHARMUtility:", [a3 causeCodeStruckInDCHARMUtilityAtIndex:nn]);
    }
  }

  v36 = [a3 causeCodeStruckInDCHDurationsCount];
  if (v36)
  {
    v37 = v36;
    for (i1 = 0; i1 != v37; ++i1)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeStruckInDCHDurations:](self, "addCauseCodeStruckInDCHDurations:", [a3 causeCodeStruckInDCHDurationsAtIndex:i1]);
    }
  }

  v39 = [a3 causeCodeMarginalCoverageARMUtilitysCount];
  if (v39)
  {
    v40 = v39;
    for (i2 = 0; i2 != v40; ++i2)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeMarginalCoverageARMUtility:](self, "addCauseCodeMarginalCoverageARMUtility:", [a3 causeCodeMarginalCoverageARMUtilityAtIndex:i2]);
    }
  }

  v42 = [a3 causeCodeMarginalCoverageDurationsCount];
  if (v42)
  {
    v43 = v42;
    for (i3 = 0; i3 != v43; ++i3)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeMarginalCoverageDurations:](self, "addCauseCodeMarginalCoverageDurations:", [a3 causeCodeMarginalCoverageDurationsAtIndex:i3]);
    }
  }

  v45 = [a3 causeCodeUnknownARMUtilitysCount];
  if (v45)
  {
    v46 = v45;
    for (i4 = 0; i4 != v46; ++i4)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeUnknownARMUtility:](self, "addCauseCodeUnknownARMUtility:", [a3 causeCodeUnknownARMUtilityAtIndex:i4]);
    }
  }

  v48 = [a3 causeCodeUnknownDurationsCount];
  if (v48)
  {
    v49 = v48;
    for (i5 = 0; i5 != v49; ++i5)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeUnknownDurations:](self, "addCauseCodeUnknownDurations:", [a3 causeCodeUnknownDurationsAtIndex:i5]);
    }
  }

  v51 = [a3 causeCodeCumulativeARMUtilitysCount];
  if (v51)
  {
    v52 = v51;
    for (i6 = 0; i6 != v52; ++i6)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeCumulativeARMUtility:](self, "addCauseCodeCumulativeARMUtility:", [a3 causeCodeCumulativeARMUtilityAtIndex:i6]);
    }
  }

  v54 = [a3 causeCodeCumulativeDurationsCount];
  if (v54)
  {
    v55 = v54;
    for (i7 = 0; i7 != v55; ++i7)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeCumulativeDurations:](self, "addCauseCodeCumulativeDurations:", [a3 causeCodeCumulativeDurationsAtIndex:i7]);
    }
  }
}

@end