@interface AWDBasebandPowerToolKPIs
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)armUtilityPDFAtIndex:(unint64_t)index;
- (int)causeCodeBackgroundActivityARMUtilityAtIndex:(unint64_t)index;
- (int)causeCodeBackgroundActivityDurationsAtIndex:(unint64_t)index;
- (int)causeCodeCumulativeARMUtilityAtIndex:(unint64_t)index;
- (int)causeCodeCumulativeDurationsAtIndex:(unint64_t)index;
- (int)causeCodeMarginalCoverageARMUtilityAtIndex:(unint64_t)index;
- (int)causeCodeMarginalCoverageDurationsAtIndex:(unint64_t)index;
- (int)causeCodeOOSARMUtilityAtIndex:(unint64_t)index;
- (int)causeCodeOOSDurationsAtIndex:(unint64_t)index;
- (int)causeCodeRACHFailARMUtilityAtIndex:(unint64_t)index;
- (int)causeCodeRACHFailDurationsAtIndex:(unint64_t)index;
- (int)causeCodeStruckInDCHARMUtilityAtIndex:(unint64_t)index;
- (int)causeCodeStruckInDCHDurationsAtIndex:(unint64_t)index;
- (int)causeCodeTcXONotShuttingARMUtilityAtIndex:(unint64_t)index;
- (int)causeCodeTcXONotShuttingDurationsAtIndex:(unint64_t)index;
- (int)causeCodeUnknownARMUtilityAtIndex:(unint64_t)index;
- (int)causeCodeUnknownDurationsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasArmUtilityThresholdPoint:(BOOL)point;
- (void)setHasRadarPriority:(BOOL)priority;
- (void)writeTo:(id)to;
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

- (void)setHasRadarPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasArmUtilityThresholdPoint:(BOOL)point
{
  if (point)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)armUtilityPDFAtIndex:(unint64_t)index
{
  p_armUtilityPDFs = &self->_armUtilityPDFs;
  count = self->_armUtilityPDFs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_armUtilityPDFs->list[index];
}

- (int)causeCodeOOSARMUtilityAtIndex:(unint64_t)index
{
  p_causeCodeOOSARMUtilitys = &self->_causeCodeOOSARMUtilitys;
  count = self->_causeCodeOOSARMUtilitys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeOOSARMUtilitys->list[index];
}

- (int)causeCodeOOSDurationsAtIndex:(unint64_t)index
{
  p_causeCodeOOSDurations = &self->_causeCodeOOSDurations;
  count = self->_causeCodeOOSDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeOOSDurations->list[index];
}

- (int)causeCodeTcXONotShuttingARMUtilityAtIndex:(unint64_t)index
{
  p_causeCodeTcXONotShuttingARMUtilitys = &self->_causeCodeTcXONotShuttingARMUtilitys;
  count = self->_causeCodeTcXONotShuttingARMUtilitys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeTcXONotShuttingARMUtilitys->list[index];
}

- (int)causeCodeTcXONotShuttingDurationsAtIndex:(unint64_t)index
{
  p_causeCodeTcXONotShuttingDurations = &self->_causeCodeTcXONotShuttingDurations;
  count = self->_causeCodeTcXONotShuttingDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeTcXONotShuttingDurations->list[index];
}

- (int)causeCodeBackgroundActivityARMUtilityAtIndex:(unint64_t)index
{
  p_causeCodeBackgroundActivityARMUtilitys = &self->_causeCodeBackgroundActivityARMUtilitys;
  count = self->_causeCodeBackgroundActivityARMUtilitys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeBackgroundActivityARMUtilitys->list[index];
}

- (int)causeCodeBackgroundActivityDurationsAtIndex:(unint64_t)index
{
  p_causeCodeBackgroundActivityDurations = &self->_causeCodeBackgroundActivityDurations;
  count = self->_causeCodeBackgroundActivityDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeBackgroundActivityDurations->list[index];
}

- (int)causeCodeRACHFailARMUtilityAtIndex:(unint64_t)index
{
  p_causeCodeRACHFailARMUtilitys = &self->_causeCodeRACHFailARMUtilitys;
  count = self->_causeCodeRACHFailARMUtilitys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeRACHFailARMUtilitys->list[index];
}

- (int)causeCodeRACHFailDurationsAtIndex:(unint64_t)index
{
  p_causeCodeRACHFailDurations = &self->_causeCodeRACHFailDurations;
  count = self->_causeCodeRACHFailDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeRACHFailDurations->list[index];
}

- (int)causeCodeStruckInDCHARMUtilityAtIndex:(unint64_t)index
{
  p_causeCodeStruckInDCHARMUtilitys = &self->_causeCodeStruckInDCHARMUtilitys;
  count = self->_causeCodeStruckInDCHARMUtilitys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeStruckInDCHARMUtilitys->list[index];
}

- (int)causeCodeStruckInDCHDurationsAtIndex:(unint64_t)index
{
  p_causeCodeStruckInDCHDurations = &self->_causeCodeStruckInDCHDurations;
  count = self->_causeCodeStruckInDCHDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeStruckInDCHDurations->list[index];
}

- (int)causeCodeMarginalCoverageARMUtilityAtIndex:(unint64_t)index
{
  p_causeCodeMarginalCoverageARMUtilitys = &self->_causeCodeMarginalCoverageARMUtilitys;
  count = self->_causeCodeMarginalCoverageARMUtilitys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeMarginalCoverageARMUtilitys->list[index];
}

- (int)causeCodeMarginalCoverageDurationsAtIndex:(unint64_t)index
{
  p_causeCodeMarginalCoverageDurations = &self->_causeCodeMarginalCoverageDurations;
  count = self->_causeCodeMarginalCoverageDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeMarginalCoverageDurations->list[index];
}

- (int)causeCodeUnknownARMUtilityAtIndex:(unint64_t)index
{
  p_causeCodeUnknownARMUtilitys = &self->_causeCodeUnknownARMUtilitys;
  count = self->_causeCodeUnknownARMUtilitys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeUnknownARMUtilitys->list[index];
}

- (int)causeCodeUnknownDurationsAtIndex:(unint64_t)index
{
  p_causeCodeUnknownDurations = &self->_causeCodeUnknownDurations;
  count = self->_causeCodeUnknownDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeUnknownDurations->list[index];
}

- (int)causeCodeCumulativeARMUtilityAtIndex:(unint64_t)index
{
  p_causeCodeCumulativeARMUtilitys = &self->_causeCodeCumulativeARMUtilitys;
  count = self->_causeCodeCumulativeARMUtilitys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeCumulativeARMUtilitys->list[index];
}

- (int)causeCodeCumulativeDurationsAtIndex:(unint64_t)index
{
  p_causeCodeCumulativeDurations = &self->_causeCodeCumulativeDurations;
  count = self->_causeCodeCumulativeDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_causeCodeCumulativeDurations->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDBasebandPowerToolKPIs;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDBasebandPowerToolKPIs description](&v3, sel_description), -[AWDBasebandPowerToolKPIs dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_radarPriority), @"radarPriority"}];
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_armUtilityThresholdPoint), @"armUtilityThresholdPoint"}];
  }

LABEL_5:
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"armUtilityPDF"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_OOS_ARMUtility"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_OOS_Durations"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_TcXONotShutting_ARMUtility"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_TcXONotShutting_Durations"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_BackgroundActivity_ARMUtility"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_BackgroundActivity_Durations"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_RACHFail_ARMUtility"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_RACHFail_Durations"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_StruckInDCH_ARMUtility"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_StruckInDCH_Durations"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_MarginalCoverage_ARMUtility"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_MarginalCoverage_Durations"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_Unknown_ARMUtility"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_Unknown_Durations"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_Cumulative_ARMUtility"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"causeCode_Cumulative_Durations"];
  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_75:
    *(to + 107) = self->_radarPriority;
    *(to + 432) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(to + 52) = self->_timestamp;
  *(to + 432) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_75;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(to + 106) = self->_armUtilityThresholdPoint;
    *(to + 432) |= 2u;
  }

LABEL_5:
  if ([(AWDBasebandPowerToolKPIs *)self armUtilityPDFsCount])
  {
    [to clearArmUtilityPDFs];
    armUtilityPDFsCount = [(AWDBasebandPowerToolKPIs *)self armUtilityPDFsCount];
    if (armUtilityPDFsCount)
    {
      v7 = armUtilityPDFsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addArmUtilityPDF:{-[AWDBasebandPowerToolKPIs armUtilityPDFAtIndex:](self, "armUtilityPDFAtIndex:", i)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeOOSARMUtilitysCount])
  {
    [to clearCauseCodeOOSARMUtilitys];
    causeCodeOOSARMUtilitysCount = [(AWDBasebandPowerToolKPIs *)self causeCodeOOSARMUtilitysCount];
    if (causeCodeOOSARMUtilitysCount)
    {
      v10 = causeCodeOOSARMUtilitysCount;
      for (j = 0; j != v10; ++j)
      {
        [to addCauseCodeOOSARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeOOSARMUtilityAtIndex:](self, "causeCodeOOSARMUtilityAtIndex:", j)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeOOSDurationsCount])
  {
    [to clearCauseCodeOOSDurations];
    causeCodeOOSDurationsCount = [(AWDBasebandPowerToolKPIs *)self causeCodeOOSDurationsCount];
    if (causeCodeOOSDurationsCount)
    {
      v13 = causeCodeOOSDurationsCount;
      for (k = 0; k != v13; ++k)
      {
        [to addCauseCodeOOSDurations:{-[AWDBasebandPowerToolKPIs causeCodeOOSDurationsAtIndex:](self, "causeCodeOOSDurationsAtIndex:", k)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeTcXONotShuttingARMUtilitysCount])
  {
    [to clearCauseCodeTcXONotShuttingARMUtilitys];
    causeCodeTcXONotShuttingARMUtilitysCount = [(AWDBasebandPowerToolKPIs *)self causeCodeTcXONotShuttingARMUtilitysCount];
    if (causeCodeTcXONotShuttingARMUtilitysCount)
    {
      v16 = causeCodeTcXONotShuttingARMUtilitysCount;
      for (m = 0; m != v16; ++m)
      {
        [to addCauseCodeTcXONotShuttingARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeTcXONotShuttingARMUtilityAtIndex:](self, "causeCodeTcXONotShuttingARMUtilityAtIndex:", m)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeTcXONotShuttingDurationsCount])
  {
    [to clearCauseCodeTcXONotShuttingDurations];
    causeCodeTcXONotShuttingDurationsCount = [(AWDBasebandPowerToolKPIs *)self causeCodeTcXONotShuttingDurationsCount];
    if (causeCodeTcXONotShuttingDurationsCount)
    {
      v19 = causeCodeTcXONotShuttingDurationsCount;
      for (n = 0; n != v19; ++n)
      {
        [to addCauseCodeTcXONotShuttingDurations:{-[AWDBasebandPowerToolKPIs causeCodeTcXONotShuttingDurationsAtIndex:](self, "causeCodeTcXONotShuttingDurationsAtIndex:", n)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeBackgroundActivityARMUtilitysCount])
  {
    [to clearCauseCodeBackgroundActivityARMUtilitys];
    causeCodeBackgroundActivityARMUtilitysCount = [(AWDBasebandPowerToolKPIs *)self causeCodeBackgroundActivityARMUtilitysCount];
    if (causeCodeBackgroundActivityARMUtilitysCount)
    {
      v22 = causeCodeBackgroundActivityARMUtilitysCount;
      for (ii = 0; ii != v22; ++ii)
      {
        [to addCauseCodeBackgroundActivityARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeBackgroundActivityARMUtilityAtIndex:](self, "causeCodeBackgroundActivityARMUtilityAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeBackgroundActivityDurationsCount])
  {
    [to clearCauseCodeBackgroundActivityDurations];
    causeCodeBackgroundActivityDurationsCount = [(AWDBasebandPowerToolKPIs *)self causeCodeBackgroundActivityDurationsCount];
    if (causeCodeBackgroundActivityDurationsCount)
    {
      v25 = causeCodeBackgroundActivityDurationsCount;
      for (jj = 0; jj != v25; ++jj)
      {
        [to addCauseCodeBackgroundActivityDurations:{-[AWDBasebandPowerToolKPIs causeCodeBackgroundActivityDurationsAtIndex:](self, "causeCodeBackgroundActivityDurationsAtIndex:", jj)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeRACHFailARMUtilitysCount])
  {
    [to clearCauseCodeRACHFailARMUtilitys];
    causeCodeRACHFailARMUtilitysCount = [(AWDBasebandPowerToolKPIs *)self causeCodeRACHFailARMUtilitysCount];
    if (causeCodeRACHFailARMUtilitysCount)
    {
      v28 = causeCodeRACHFailARMUtilitysCount;
      for (kk = 0; kk != v28; ++kk)
      {
        [to addCauseCodeRACHFailARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeRACHFailARMUtilityAtIndex:](self, "causeCodeRACHFailARMUtilityAtIndex:", kk)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeRACHFailDurationsCount])
  {
    [to clearCauseCodeRACHFailDurations];
    causeCodeRACHFailDurationsCount = [(AWDBasebandPowerToolKPIs *)self causeCodeRACHFailDurationsCount];
    if (causeCodeRACHFailDurationsCount)
    {
      v31 = causeCodeRACHFailDurationsCount;
      for (mm = 0; mm != v31; ++mm)
      {
        [to addCauseCodeRACHFailDurations:{-[AWDBasebandPowerToolKPIs causeCodeRACHFailDurationsAtIndex:](self, "causeCodeRACHFailDurationsAtIndex:", mm)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeStruckInDCHARMUtilitysCount])
  {
    [to clearCauseCodeStruckInDCHARMUtilitys];
    causeCodeStruckInDCHARMUtilitysCount = [(AWDBasebandPowerToolKPIs *)self causeCodeStruckInDCHARMUtilitysCount];
    if (causeCodeStruckInDCHARMUtilitysCount)
    {
      v34 = causeCodeStruckInDCHARMUtilitysCount;
      for (nn = 0; nn != v34; ++nn)
      {
        [to addCauseCodeStruckInDCHARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeStruckInDCHARMUtilityAtIndex:](self, "causeCodeStruckInDCHARMUtilityAtIndex:", nn)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeStruckInDCHDurationsCount])
  {
    [to clearCauseCodeStruckInDCHDurations];
    causeCodeStruckInDCHDurationsCount = [(AWDBasebandPowerToolKPIs *)self causeCodeStruckInDCHDurationsCount];
    if (causeCodeStruckInDCHDurationsCount)
    {
      v37 = causeCodeStruckInDCHDurationsCount;
      for (i1 = 0; i1 != v37; ++i1)
      {
        [to addCauseCodeStruckInDCHDurations:{-[AWDBasebandPowerToolKPIs causeCodeStruckInDCHDurationsAtIndex:](self, "causeCodeStruckInDCHDurationsAtIndex:", i1)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeMarginalCoverageARMUtilitysCount])
  {
    [to clearCauseCodeMarginalCoverageARMUtilitys];
    causeCodeMarginalCoverageARMUtilitysCount = [(AWDBasebandPowerToolKPIs *)self causeCodeMarginalCoverageARMUtilitysCount];
    if (causeCodeMarginalCoverageARMUtilitysCount)
    {
      v40 = causeCodeMarginalCoverageARMUtilitysCount;
      for (i2 = 0; i2 != v40; ++i2)
      {
        [to addCauseCodeMarginalCoverageARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeMarginalCoverageARMUtilityAtIndex:](self, "causeCodeMarginalCoverageARMUtilityAtIndex:", i2)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeMarginalCoverageDurationsCount])
  {
    [to clearCauseCodeMarginalCoverageDurations];
    causeCodeMarginalCoverageDurationsCount = [(AWDBasebandPowerToolKPIs *)self causeCodeMarginalCoverageDurationsCount];
    if (causeCodeMarginalCoverageDurationsCount)
    {
      v43 = causeCodeMarginalCoverageDurationsCount;
      for (i3 = 0; i3 != v43; ++i3)
      {
        [to addCauseCodeMarginalCoverageDurations:{-[AWDBasebandPowerToolKPIs causeCodeMarginalCoverageDurationsAtIndex:](self, "causeCodeMarginalCoverageDurationsAtIndex:", i3)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeUnknownARMUtilitysCount])
  {
    [to clearCauseCodeUnknownARMUtilitys];
    causeCodeUnknownARMUtilitysCount = [(AWDBasebandPowerToolKPIs *)self causeCodeUnknownARMUtilitysCount];
    if (causeCodeUnknownARMUtilitysCount)
    {
      v46 = causeCodeUnknownARMUtilitysCount;
      for (i4 = 0; i4 != v46; ++i4)
      {
        [to addCauseCodeUnknownARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeUnknownARMUtilityAtIndex:](self, "causeCodeUnknownARMUtilityAtIndex:", i4)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeUnknownDurationsCount])
  {
    [to clearCauseCodeUnknownDurations];
    causeCodeUnknownDurationsCount = [(AWDBasebandPowerToolKPIs *)self causeCodeUnknownDurationsCount];
    if (causeCodeUnknownDurationsCount)
    {
      v49 = causeCodeUnknownDurationsCount;
      for (i5 = 0; i5 != v49; ++i5)
      {
        [to addCauseCodeUnknownDurations:{-[AWDBasebandPowerToolKPIs causeCodeUnknownDurationsAtIndex:](self, "causeCodeUnknownDurationsAtIndex:", i5)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeCumulativeARMUtilitysCount])
  {
    [to clearCauseCodeCumulativeARMUtilitys];
    causeCodeCumulativeARMUtilitysCount = [(AWDBasebandPowerToolKPIs *)self causeCodeCumulativeARMUtilitysCount];
    if (causeCodeCumulativeARMUtilitysCount)
    {
      v52 = causeCodeCumulativeARMUtilitysCount;
      for (i6 = 0; i6 != v52; ++i6)
      {
        [to addCauseCodeCumulativeARMUtility:{-[AWDBasebandPowerToolKPIs causeCodeCumulativeARMUtilityAtIndex:](self, "causeCodeCumulativeARMUtilityAtIndex:", i6)}];
      }
    }
  }

  if ([(AWDBasebandPowerToolKPIs *)self causeCodeCumulativeDurationsCount])
  {
    [to clearCauseCodeCumulativeDurations];
    causeCodeCumulativeDurationsCount = [(AWDBasebandPowerToolKPIs *)self causeCodeCumulativeDurationsCount];
    if (causeCodeCumulativeDurationsCount)
    {
      v55 = causeCodeCumulativeDurationsCount;
      for (i7 = 0; i7 != v55; ++i7)
      {
        [to addCauseCodeCumulativeDurations:{-[AWDBasebandPowerToolKPIs causeCodeCumulativeDurationsAtIndex:](self, "causeCodeCumulativeDurationsAtIndex:", i7)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 432);
  if (*&self->_has)
  {
    if ((*(equal + 432) & 1) == 0 || self->_timestamp != *(equal + 52))
    {
      return 0;
    }
  }

  else if (*(equal + 432))
  {
    return 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 432) & 4) == 0 || self->_radarPriority != *(equal + 107))
    {
      return 0;
    }
  }

  else if ((*(equal + 432) & 4) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 432) & 2) == 0 || self->_armUtilityThresholdPoint != *(equal + 106))
    {
      return 0;
    }
  }

  else if ((*(equal + 432) & 2) != 0)
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

- (void)mergeFrom:(id)from
{
  v5 = *(from + 432);
  if (v5)
  {
    self->_timestamp = *(from + 52);
    *&self->_has |= 1u;
    v5 = *(from + 432);
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

  else if ((*(from + 432) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_radarPriority = *(from + 107);
  *&self->_has |= 4u;
  if ((*(from + 432) & 2) != 0)
  {
LABEL_4:
    self->_armUtilityThresholdPoint = *(from + 106);
    *&self->_has |= 2u;
  }

LABEL_5:
  armUtilityPDFsCount = [from armUtilityPDFsCount];
  if (armUtilityPDFsCount)
  {
    v7 = armUtilityPDFsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDBasebandPowerToolKPIs addArmUtilityPDF:](self, "addArmUtilityPDF:", [from armUtilityPDFAtIndex:i]);
    }
  }

  causeCodeOOSARMUtilitysCount = [from causeCodeOOSARMUtilitysCount];
  if (causeCodeOOSARMUtilitysCount)
  {
    v10 = causeCodeOOSARMUtilitysCount;
    for (j = 0; j != v10; ++j)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeOOSARMUtility:](self, "addCauseCodeOOSARMUtility:", [from causeCodeOOSARMUtilityAtIndex:j]);
    }
  }

  causeCodeOOSDurationsCount = [from causeCodeOOSDurationsCount];
  if (causeCodeOOSDurationsCount)
  {
    v13 = causeCodeOOSDurationsCount;
    for (k = 0; k != v13; ++k)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeOOSDurations:](self, "addCauseCodeOOSDurations:", [from causeCodeOOSDurationsAtIndex:k]);
    }
  }

  causeCodeTcXONotShuttingARMUtilitysCount = [from causeCodeTcXONotShuttingARMUtilitysCount];
  if (causeCodeTcXONotShuttingARMUtilitysCount)
  {
    v16 = causeCodeTcXONotShuttingARMUtilitysCount;
    for (m = 0; m != v16; ++m)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeTcXONotShuttingARMUtility:](self, "addCauseCodeTcXONotShuttingARMUtility:", [from causeCodeTcXONotShuttingARMUtilityAtIndex:m]);
    }
  }

  causeCodeTcXONotShuttingDurationsCount = [from causeCodeTcXONotShuttingDurationsCount];
  if (causeCodeTcXONotShuttingDurationsCount)
  {
    v19 = causeCodeTcXONotShuttingDurationsCount;
    for (n = 0; n != v19; ++n)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeTcXONotShuttingDurations:](self, "addCauseCodeTcXONotShuttingDurations:", [from causeCodeTcXONotShuttingDurationsAtIndex:n]);
    }
  }

  causeCodeBackgroundActivityARMUtilitysCount = [from causeCodeBackgroundActivityARMUtilitysCount];
  if (causeCodeBackgroundActivityARMUtilitysCount)
  {
    v22 = causeCodeBackgroundActivityARMUtilitysCount;
    for (ii = 0; ii != v22; ++ii)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeBackgroundActivityARMUtility:](self, "addCauseCodeBackgroundActivityARMUtility:", [from causeCodeBackgroundActivityARMUtilityAtIndex:ii]);
    }
  }

  causeCodeBackgroundActivityDurationsCount = [from causeCodeBackgroundActivityDurationsCount];
  if (causeCodeBackgroundActivityDurationsCount)
  {
    v25 = causeCodeBackgroundActivityDurationsCount;
    for (jj = 0; jj != v25; ++jj)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeBackgroundActivityDurations:](self, "addCauseCodeBackgroundActivityDurations:", [from causeCodeBackgroundActivityDurationsAtIndex:jj]);
    }
  }

  causeCodeRACHFailARMUtilitysCount = [from causeCodeRACHFailARMUtilitysCount];
  if (causeCodeRACHFailARMUtilitysCount)
  {
    v28 = causeCodeRACHFailARMUtilitysCount;
    for (kk = 0; kk != v28; ++kk)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeRACHFailARMUtility:](self, "addCauseCodeRACHFailARMUtility:", [from causeCodeRACHFailARMUtilityAtIndex:kk]);
    }
  }

  causeCodeRACHFailDurationsCount = [from causeCodeRACHFailDurationsCount];
  if (causeCodeRACHFailDurationsCount)
  {
    v31 = causeCodeRACHFailDurationsCount;
    for (mm = 0; mm != v31; ++mm)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeRACHFailDurations:](self, "addCauseCodeRACHFailDurations:", [from causeCodeRACHFailDurationsAtIndex:mm]);
    }
  }

  causeCodeStruckInDCHARMUtilitysCount = [from causeCodeStruckInDCHARMUtilitysCount];
  if (causeCodeStruckInDCHARMUtilitysCount)
  {
    v34 = causeCodeStruckInDCHARMUtilitysCount;
    for (nn = 0; nn != v34; ++nn)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeStruckInDCHARMUtility:](self, "addCauseCodeStruckInDCHARMUtility:", [from causeCodeStruckInDCHARMUtilityAtIndex:nn]);
    }
  }

  causeCodeStruckInDCHDurationsCount = [from causeCodeStruckInDCHDurationsCount];
  if (causeCodeStruckInDCHDurationsCount)
  {
    v37 = causeCodeStruckInDCHDurationsCount;
    for (i1 = 0; i1 != v37; ++i1)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeStruckInDCHDurations:](self, "addCauseCodeStruckInDCHDurations:", [from causeCodeStruckInDCHDurationsAtIndex:i1]);
    }
  }

  causeCodeMarginalCoverageARMUtilitysCount = [from causeCodeMarginalCoverageARMUtilitysCount];
  if (causeCodeMarginalCoverageARMUtilitysCount)
  {
    v40 = causeCodeMarginalCoverageARMUtilitysCount;
    for (i2 = 0; i2 != v40; ++i2)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeMarginalCoverageARMUtility:](self, "addCauseCodeMarginalCoverageARMUtility:", [from causeCodeMarginalCoverageARMUtilityAtIndex:i2]);
    }
  }

  causeCodeMarginalCoverageDurationsCount = [from causeCodeMarginalCoverageDurationsCount];
  if (causeCodeMarginalCoverageDurationsCount)
  {
    v43 = causeCodeMarginalCoverageDurationsCount;
    for (i3 = 0; i3 != v43; ++i3)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeMarginalCoverageDurations:](self, "addCauseCodeMarginalCoverageDurations:", [from causeCodeMarginalCoverageDurationsAtIndex:i3]);
    }
  }

  causeCodeUnknownARMUtilitysCount = [from causeCodeUnknownARMUtilitysCount];
  if (causeCodeUnknownARMUtilitysCount)
  {
    v46 = causeCodeUnknownARMUtilitysCount;
    for (i4 = 0; i4 != v46; ++i4)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeUnknownARMUtility:](self, "addCauseCodeUnknownARMUtility:", [from causeCodeUnknownARMUtilityAtIndex:i4]);
    }
  }

  causeCodeUnknownDurationsCount = [from causeCodeUnknownDurationsCount];
  if (causeCodeUnknownDurationsCount)
  {
    v49 = causeCodeUnknownDurationsCount;
    for (i5 = 0; i5 != v49; ++i5)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeUnknownDurations:](self, "addCauseCodeUnknownDurations:", [from causeCodeUnknownDurationsAtIndex:i5]);
    }
  }

  causeCodeCumulativeARMUtilitysCount = [from causeCodeCumulativeARMUtilitysCount];
  if (causeCodeCumulativeARMUtilitysCount)
  {
    v52 = causeCodeCumulativeARMUtilitysCount;
    for (i6 = 0; i6 != v52; ++i6)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeCumulativeARMUtility:](self, "addCauseCodeCumulativeARMUtility:", [from causeCodeCumulativeARMUtilityAtIndex:i6]);
    }
  }

  causeCodeCumulativeDurationsCount = [from causeCodeCumulativeDurationsCount];
  if (causeCodeCumulativeDurationsCount)
  {
    v55 = causeCodeCumulativeDurationsCount;
    for (i7 = 0; i7 != v55; ++i7)
    {
      -[AWDBasebandPowerToolKPIs addCauseCodeCumulativeDurations:](self, "addCauseCodeCumulativeDurations:", [from causeCodeCumulativeDurationsAtIndex:i7]);
    }
  }
}

@end