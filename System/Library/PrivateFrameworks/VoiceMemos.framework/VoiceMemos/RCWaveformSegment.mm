@interface RCWaveformSegment
+ (id)_discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:(id)segments;
+ (id)_mergedSegmentByResamplingWithMergeableSegments:(id)segments mergedLevelsDuration:(double)duration;
+ (id)_segmentByMergingMergableSegments:(id)segments;
+ (id)_segmentsByJoiningSegment:(id)segment toSegmentIfNecessaryWithGreaterSegment:(id)greaterSegment averagePowerLevelJoinLimit:(unint64_t)limit;
+ (id)emptySegmentWithTimeRange:(id)range;
+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration;
+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration beforeTime:(double)time andThenUsePreferredSegmentDuration:(double)segmentDuration;
+ (id)segmentsByReparingDiscontinuitiesInSegments:(id)segments;
+ (id)segmentsByShiftingSegments:(id)segments byTimeOffset:(double)offset;
+ (void)initialize;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange;
- (BOOL)hasUniformPowerLevel:(float)level;
- (BOOL)isWaveformDataAlmostEqualToDataInSegment:(id)segment;
- (BOOL)isWaveformDataEqualToDataInSegment:(id)segment;
- (RCWaveformSegment)initWithCoder:(id)coder;
- (RCWaveformSegment)initWithTimeRange:(id)range averagePowerLevelData:(id)data;
- (RCWaveformSegment)initWithTimeRange:(id)range averagePowerLevelVector:(void *)vector;
- (id)_initWithTimeRange:(id)range averagePowerLevelData:(id)data;
- (id)_segmentWithValuesInContainedTimeRange:(id)range;
- (id)_segmentsByJoiningIfNecessaryGreaterSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit;
- (id)copyWithAdjustedTimeRange:(id)range;
- (id)copyWithTimeRangeOffsetByTimeOffset:(double)offset;
- (id)segmentByClippingToTimeRange:(id)range;
- (id)segmentsByJoiningIfSmallSegment:(id)segment;
- (id)segmentsByJoiningIfSmallSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit;
- (id)simpleDescription;
- (id)verboseDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RCWaveformSegment

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [RCWaveformSegment setVersion:1];
  }
}

+ (id)emptySegmentWithTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v5 = [self alloc];
  data = [MEMORY[0x277CBEA90] data];
  v7 = [v5 _initWithTimeRange:data averagePowerLevelData:{var0, var1}];

  return v7;
}

- (RCWaveformSegment)initWithTimeRange:(id)range averagePowerLevelData:(id)data
{
  var1 = range.var1;
  var0 = range.var0;
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"RCWaveformSegment.mm" lineNumber:33 description:{@"invalid segment data.  if this segment really has no data, use +emptySegmentWithTimeRange:"}];
  }

  var1 = [(RCWaveformSegment *)self _initWithTimeRange:dataCopy averagePowerLevelData:var0, var1];

  return var1;
}

- (id)_initWithTimeRange:(id)range averagePowerLevelData:(id)data
{
  var1 = range.var1;
  var0 = range.var0;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = RCWaveformSegment;
  v9 = [(RCWaveformSegment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_timeRange.beginTime = var0;
    v9->_timeRange.endTime = var1;
    objc_storeStrong(&v9->_averagePowerLevelData, data);
    v10->_isRendered = 0;
  }

  return v10;
}

- (RCWaveformSegment)initWithTimeRange:(id)range averagePowerLevelVector:(void *)vector
{
  var1 = range.var1;
  var0 = range.var0;
  if (*(vector + 1) == *vector)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:*vector length:*(vector + 1) - *vector];
    memcpy([v8 mutableBytes], *vector, *(vector + 1) - *vector);
  }

  var1 = [(RCWaveformSegment *)self initWithTimeRange:v8 averagePowerLevelData:var0, var1];
  v10 = var1;
  if (var1)
  {
    var1->_timeRange.beginTime = var0;
    var1->_timeRange.endTime = var1;
  }

  return v10;
}

- (id)verboseDescription
{
  simpleDescription = [(RCWaveformSegment *)self simpleDescription];
  v4 = RCTimeRangeDeltaWithExactPrecision(self->_timeRange.beginTime, self->_timeRange.endTime);
  averagePowerLevelsCount = [(RCWaveformSegment *)self averagePowerLevelsCount];
  array = [MEMORY[0x277CBEB18] array];
  v7 = 0;
  v8 = v4 / averagePowerLevelsCount;
  while (v7 < [(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    averagePowerLevels = [(RCWaveformSegment *)self averagePowerLevels];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%.3fs] %.2f", v8 * v7, averagePowerLevels[v7]];
    [array addObject:v10];

    ++v7;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [array componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"%@ %@", simpleDescription, v12];

  return v13;
}

- (id)simpleDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RCWaveformSegment;
  v4 = [(RCWaveformSegment *)&v8 description];
  v5 = NSStringFromRCTimeRange(self->_timeRange.beginTime, self->_timeRange.endTime);
  v6 = [v3 stringWithFormat:@"%@: timeRange=%@, levelCount=%d", v4, v5, -[RCWaveformSegment averagePowerLevelsCount](self, "averagePowerLevelsCount")];

  return v6;
}

- (RCWaveformSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_timeRange.beginTime = RCTimeRangeDecodeWithKey(coderCopy, @"RCTimeRange");
  self->_timeRange.endTime = v5;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RCAveragePowerLevelVectorData"];
  averagePowerLevelData = self->_averagePowerLevelData;
  self->_averagePowerLevelData = v6;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  RCTimeRangeEncodeWithKey(coderCopy, @"RCTimeRange", self->_timeRange.beginTime, self->_timeRange.endTime);
  [coderCopy encodeObject:self->_averagePowerLevelData forKey:@"RCAveragePowerLevelVectorData"];
}

- (BOOL)hasUniformPowerLevel:(float)level
{
  if (![(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    return 0;
  }

  if (![(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = [(RCWaveformSegment *)self averagePowerLevels][4 * v5];
    v7 = v6 == level;
    if (v6 != level)
    {
      break;
    }

    ++v5;
  }

  while (v5 < [(RCWaveformSegment *)self averagePowerLevelsCount]);
  return v7;
}

- (BOOL)isWaveformDataEqualToDataInSegment:(id)segment
{
  if (segment == self)
  {
    return 1;
  }

  else
  {
    return [(NSData *)self->_averagePowerLevelData isEqual:*(segment + 1)];
  }
}

- (BOOL)isWaveformDataAlmostEqualToDataInSegment:(id)segment
{
  segmentCopy = segment;
  v5 = segmentCopy;
  if (segmentCopy == self)
  {
    goto LABEL_10;
  }

  averagePowerLevelsCount = [(RCWaveformSegment *)segmentCopy averagePowerLevelsCount];
  if (averagePowerLevelsCount != [(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    v11 = 0;
    goto LABEL_12;
  }

  averagePowerLevelsCount2 = [(RCWaveformSegment *)self averagePowerLevelsCount];
  if (!averagePowerLevelsCount2)
  {
LABEL_10:
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = averagePowerLevelsCount2 - 1;
    do
    {
      v10 = RCEqualFloatsWithTolerance([(RCWaveformSegment *)self averagePowerLevels][4 * v8], [(RCWaveformSegment *)v5 averagePowerLevels][4 * v8], 0.1);
      v11 = v10;
    }

    while (v9 != v8++ && v10);
  }

LABEL_12:

  return v11;
}

- (id)copyWithTimeRangeOffsetByTimeOffset:(double)offset
{
  v4 = self->_timeRange.beginTime + offset;
  v5 = self->_timeRange.endTime + offset;
  v6 = objc_alloc(objc_opt_class());
  averagePowerLevelData = self->_averagePowerLevelData;

  return [v6 initWithTimeRange:averagePowerLevelData averagePowerLevelData:{v4, v5}];
}

- (id)copyWithAdjustedTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v6 = objc_alloc(objc_opt_class());
  averagePowerLevelData = self->_averagePowerLevelData;

  return [v6 initWithTimeRange:averagePowerLevelData averagePowerLevelData:{var0, var1}];
}

+ (id)segmentsByReparingDiscontinuitiesInSegments:(id)segments
{
  v3 = [self _discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:segments];

  return v3;
}

+ (id)segmentsByShiftingSegments:(id)segments byTimeOffset:(double)offset
{
  v19 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  if ([segmentsCopy count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(segmentsCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = segmentsCopy;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) copyWithTimeRangeOffsetByTimeOffset:{offset, v14}];
          [v6 addObject:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = [segmentsCopy mutableCopy];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration beforeTime:(double)time andThenUsePreferredSegmentDuration:(double)segmentDuration
{
  v57 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  if ([segmentsCopy count] <= 1)
  {
    array2 = segmentsCopy;
    goto LABEL_42;
  }

  v45 = segmentsCopy;
  v46 = [segmentsCopy mutableCopy];
  if (v46)
  {
    v12 = MEMORY[0x277CBEB18];
    array = [MEMORY[0x277CBEB18] array];
    v14 = [v12 arrayWithObject:array];

    array2 = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v15 = v46;
    v16 = [v15 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v16)
    {
      v17 = *v52;
      v18 = 0.0;
      segmentDurationCopy = duration;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v52 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v51 + 1) + 8 * i);
          [v21 timeRange];
          v23 = v22;
          v25 = v24;
          if (v22 >= time && segmentDurationCopy == duration)
          {
            array3 = [MEMORY[0x277CBEB18] array];
            [v14 addObject:array3];

            segmentDurationCopy = segmentDuration;
          }

          lastObject = [v14 lastObject];
          if (![lastObject count])
          {
            v18 = v23;
          }

          [lastObject addObject:v21];
          if (v25 - v18 >= segmentDurationCopy)
          {
            array4 = [MEMORY[0x277CBEB18] array];
            [v14 addObject:array4];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v16);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v30 = v14;
    v31 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v31)
    {
      v32 = *v48;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v47 + 1) + 8 * j);
          if ([v34 count] == 1)
          {
            firstObject = [v34 objectAtIndexedSubscript:0];
            [array2 addObject:firstObject];
          }

          else
          {
            if ([v34 count] < 2)
            {
              continue;
            }

            firstObject = [v34 firstObject];
            lastObject2 = [v34 lastObject];
            [firstObject timeRange];
            v38 = v37;
            [lastObject2 timeRange];
            v40 = v39 - v38;
            if (v38 >= time)
            {
              durationCopy2 = segmentDuration;
            }

            else
            {
              durationCopy2 = duration;
            }

            if (v40 >= durationCopy2)
            {
              v42 = [self _segmentByMergingMergableSegments:v34];
              [array2 addObject:v42];
            }

            else
            {
              [array2 addObjectsFromArray:v34];
            }
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v31);
    }
  }

  else
  {
    array2 = segmentsCopy;
  }

  segmentsCopy = v45;
LABEL_42:

  v43 = *MEMORY[0x277D85DE8];

  return array2;
}

+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration
{
  v4 = [self segmentsByMergingSegments:segments preferredSegmentDuration:duration beforeTime:1.79769313e308 andThenUsePreferredSegmentDuration:1.0];

  return v4;
}

- (id)segmentsByJoiningIfSmallSegment:(id)segment
{
  v3 = [(RCWaveformSegment *)self _segmentsByJoiningIfNecessaryGreaterSegment:segment averagePowerLevelJoinLimit:8];

  return v3;
}

- (id)segmentsByJoiningIfSmallSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit
{
  v22 = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  if (!segmentCopy)
  {
    selfCopy = self;
    v11 = &selfCopy;
    v12 = 1;
LABEL_5:
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:{v12, selfCopy2, v20, selfCopy, v22}];
    goto LABEL_8;
  }

  [(RCWaveformSegment *)self timeRange];
  v8 = v7;
  [segmentCopy timeRange];
  if (v8 == v9)
  {
    v10 = [(RCWaveformSegment *)self _segmentsByJoiningIfNecessaryGreaterSegment:segmentCopy averagePowerLevelJoinLimit:limit];
    goto LABEL_8;
  }

  [segmentCopy timeRange];
  v14 = v13;
  [(RCWaveformSegment *)self timeRange];
  if (v14 != v15)
  {
    selfCopy2 = self;
    v20 = segmentCopy;
    v11 = &selfCopy2;
    v12 = 2;
    goto LABEL_5;
  }

  v10 = [segmentCopy _segmentsByJoiningIfNecessaryGreaterSegment:self averagePowerLevelJoinLimit:limit];
LABEL_8:
  v16 = v10;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)segmentByClippingToTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  [(RCWaveformSegment *)self timeRange];
  if (RCTimeRangeEqualToTimeRange(var0, var1, v6, v7) || ([(RCWaveformSegment *)self timeRange], RCTimeRangeContainsRange(var0, var1, v8, v9)) || ([(RCWaveformSegment *)self timeRange], RCTimeRangeContainsRange(var0, var1, v10, v11)))
  {
    selfCopy = self;
  }

  else
  {
    [(RCWaveformSegment *)self timeRange];
    if (v14 > var1)
    {
      [(RCWaveformSegment *)self timeRange];
      if (v15 <= var1)
      {
        goto LABEL_16;
      }
    }

    [(RCWaveformSegment *)self timeRange];
    if (var0 < v16)
    {
      var0 = v16;
    }

    [(RCWaveformSegment *)self timeRange];
    if (var1 < v17)
    {
      v17 = var1;
    }

    if (var0 >= v17)
    {
LABEL_16:
      selfCopy = 0;
    }

    else
    {
      RCTimeRangeMake(var0, v17);
      selfCopy = [(RCWaveformSegment *)self _segmentWithValuesInContainedTimeRange:?];
    }
  }

  return selfCopy;
}

+ (id)_discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:(id)segments
{
  segmentsCopy = segments;
  if ([segmentsCopy count] > 1)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(segmentsCopy, "count")}];
    for (i = 1; i < [segmentsCopy count]; i = v8 + 1)
    {
      v6 = i - 1;
      v7 = [segmentsCopy objectAtIndexedSubscript:i - 1];
      v8 = v6 + 1;
      v9 = [segmentsCopy objectAtIndexedSubscript:v6 + 1];
      [v9 timeRange];
      v11 = v10;
      [v7 timeRange];
      if (vabdd_f64(v11, v12) > 0.01)
      {
        [v7 timeRange];
        v13 = [v7 copyWithAdjustedTimeRange:?];

        v7 = v13;
      }

      [v4 addObject:v7];
    }

    lastObject = [segmentsCopy lastObject];
    [v4 addObject:lastObject];
  }

  else
  {
    v4 = segmentsCopy;
  }

  return v4;
}

- (id)_segmentWithValuesInContainedTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  averagePowerLevelsCount = [(RCWaveformSegment *)self averagePowerLevelsCount];
  if (averagePowerLevelsCount)
  {
    v8 = averagePowerLevelsCount;
    [(RCWaveformSegment *)self timeRange];
    if (!RCTimeRangeContainsRange(v9, v10, var0, var1))
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"RCWaveformSegment.mm" lineNumber:355 description:@"Invalid argment"];
    }

    v11 = RCTimeRangeDeltaWithExactPrecision(self->_timeRange.beginTime, self->_timeRange.endTime);
    v12 = v11 / [(RCWaveformSegment *)self averagePowerLevelsCount];
    [(RCWaveformSegment *)self timeRange];
    v14 = (var0 - v13) / v12;
    if (v8 - 1 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v8 - 1;
    }

    [(RCWaveformSegment *)self timeRange];
    v17 = v16 + (v12 * v15);
    v18 = RCTimeRangeDeltaWithExactPrecision(v17, var1);
    if (v8 == v15)
    {
      v19 = 0;
    }

    else
    {
      v20 = vcvtpd_u64_f64(v18 / v12);
      if (v20 <= 1)
      {
        v20 = 1;
      }

      if (v8 - v15 >= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v8 - v15;
      }

      v22 = [MEMORY[0x277CBEB28] dataWithLength:4 * v21];
      memmove([v22 mutableBytes], -[RCWaveformSegment averagePowerLevels](self, "averagePowerLevels") + 4 * v15, 4 * v21);
      v19 = [[RCWaveformSegment alloc] initWithTimeRange:v22 averagePowerLevelData:v17, v17 + (v12 * v21)];
    }
  }

  else
  {
    v19 = [objc_opt_class() emptySegmentWithTimeRange:{var0, var1}];
  }

  return v19;
}

- (id)_segmentsByJoiningIfNecessaryGreaterSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit
{
  v16[1] = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  if (segmentCopy)
  {
    v7 = objc_opt_class();
    v15[0] = self;
    v15[1] = segmentCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v9 = [v7 _discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:v8];

    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v9 objectAtIndexedSubscript:1];
    v12 = [RCWaveformSegment _segmentsByJoiningSegment:v10 toSegmentIfNecessaryWithGreaterSegment:v11 averagePowerLevelJoinLimit:limit];
  }

  else
  {
    v16[0] = self;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_segmentsByJoiningSegment:(id)segment toSegmentIfNecessaryWithGreaterSegment:(id)greaterSegment averagePowerLevelJoinLimit:(unint64_t)limit
{
  v60[1] = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  greaterSegmentCopy = greaterSegment;
  [segmentCopy timeRange];
  v11 = RCTimeRangeDeltaWithExactPrecision(v9, v10);
  [greaterSegmentCopy timeRange];
  v14 = RCTimeRangeDeltaWithExactPrecision(v12, v13);
  if ([segmentCopy averagePowerLevelsCount] <= 1)
  {
    [segmentCopy timeRange];
    v16 = v15;
    [greaterSegmentCopy timeRange];
    RCTimeRangeMake(v16, v17);
    v18 = [greaterSegmentCopy copyWithAdjustedTimeRange:?];
    v60[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
LABEL_5:
    v23 = v19;
LABEL_6:

    goto LABEL_7;
  }

  if ([greaterSegmentCopy averagePowerLevelsCount] <= 1)
  {
    [segmentCopy timeRange];
    v21 = v20;
    [greaterSegmentCopy timeRange];
    RCTimeRangeMake(v21, v22);
    v18 = [segmentCopy copyWithAdjustedTimeRange:?];
    v59 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    goto LABEL_5;
  }

  averagePowerLevelsCount = [segmentCopy averagePowerLevelsCount];
  if ([greaterSegmentCopy averagePowerLevelsCount] + averagePowerLevelsCount < limit)
  {
    v27 = v11;
    v28 = v14;
    if ((v27 + v28) > 0.0)
    {
      [segmentCopy timeRange];
      v30 = v29;
      [greaterSegmentCopy timeRange];
      v32 = RCTimeRangeMake(v30, v31);
      v34 = v33;
      [segmentCopy timeRange];
      v37 = RCTimeRangeDeltaWithExactPrecision(v35, v36);
      averagePowerLevelsCount2 = [segmentCopy averagePowerLevelsCount];
      [greaterSegmentCopy timeRange];
      v41 = RCTimeRangeDeltaWithExactPrecision(v39, v40);
      averagePowerLevelsCount3 = [greaterSegmentCopy averagePowerLevelsCount];
      v43 = v37;
      v44 = v43 / averagePowerLevelsCount2;
      v45 = v41;
      v46 = v45 / averagePowerLevelsCount3;
      if (v44 > 0.0)
      {
        if (v46 <= 0.0)
        {
          v46 = v43 / averagePowerLevelsCount2;
        }

        else if (v44 < v46)
        {
          v46 = v43 / averagePowerLevelsCount2;
        }
      }

      v47 = (RCTimeRangeDeltaWithExactPrecision(v32, v34) / v46);
      v18 = [MEMORY[0x277CBEB28] dataWithLength:4 * v47];
      mutableBytes = [v18 mutableBytes];
      if (v47)
      {
        v49 = mutableBytes;
        for (i = 0; i != v47; ++i)
        {
          [segmentCopy timeRange];
          v51 = v46 * i;
          if (v52 <= v51)
          {
            averagePowerLevels = [greaterSegmentCopy averagePowerLevels];
            v54 = (v51 - v43);
            v55 = v45;
          }

          else
          {
            averagePowerLevels = [segmentCopy averagePowerLevels];
            v54 = v51;
            v55 = v43;
          }

          *(v49 + 4 * i) = *(averagePowerLevels + 4 * (v54 / v55));
        }
      }

      v56 = [[RCWaveformSegment alloc] initWithTimeRange:v18 averagePowerLevelData:v32, v34];
      v58 = v56;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];

      goto LABEL_6;
    }
  }

  v57[0] = segmentCopy;
  v57[1] = greaterSegmentCopy;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
LABEL_7:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_segmentByMergingMergableSegments:(id)segments
{
  v26 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  if ([segmentsCopy count])
  {
    if (segmentsCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    v6 = [0 objectAtIndexedSubscript:0];
    goto LABEL_18;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RCWaveformSegment.mm" lineNumber:441 description:@"Invalid paremeter"];

  if (!segmentsCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ([segmentsCopy count] == 1)
  {
    v6 = [segmentsCopy objectAtIndexedSubscript:0];
LABEL_18:
    v17 = v6;
    goto LABEL_19;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = segmentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        [v12 timeRange];
        v15 = RCTimeRangeDeltaWithExactPrecision(v13, v14);
        v10 = v10 + v15 / [v12 averagePowerLevelsCount];
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v16 = v10 / [v7 count];
  v17 = [self _mergedSegmentByFastMergingWithMergeableSegments:v7 mergedLevelsDuration:v16];
  if (!v17)
  {
    v6 = [self _mergedSegmentByResamplingWithMergeableSegments:v7 mergedLevelsDuration:v16];
    goto LABEL_18;
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_mergedSegmentByResamplingWithMergeableSegments:(id)segments mergedLevelsDuration:(double)duration
{
  segmentsCopy = segments;
  firstObject = [segmentsCopy firstObject];
  lastObject = [segmentsCopy lastObject];
  [firstObject timeRange];
  v7 = v6;
  [lastObject timeRange];
  v9 = RCTimeRangeMake(v7, v8);
  v11 = v10;
  v12 = (RCTimeRangeDeltaWithExactPrecision(v9, v10) / duration);
  v41 = [MEMORY[0x277CBEB28] dataWithLength:4 * v12];
  mutableBytes = [v41 mutableBytes];
  if (v12)
  {
    v14 = mutableBytes;
    v15 = 0;
    for (i = 0; i != v12; ++i)
    {
      [firstObject timeRange];
      v18 = v17 + i * duration;
      v19 = v15;
      do
      {
        v15 = v19;
        if (v19 >= [segmentsCopy count])
        {
          break;
        }

        v20 = [segmentsCopy objectAtIndexedSubscript:v19];
        [v20 timeRange];
        v23 = RCTimeRangeContainsTime(v21, v22, v18);
        ++v19;
      }

      while (!v23);
      if ([segmentsCopy count] == v15)
      {
        break;
      }

      v24 = [segmentsCopy objectAtIndexedSubscript:v15];
      [v24 timeRange];
      v27 = RCTimeRangeDeltaWithExactPrecision(v25, v26);
      averagePowerLevelsCount = [v24 averagePowerLevelsCount];
      [v24 timeRange];
      v30 = v29;
      averagePowerLevelsCount2 = [v24 averagePowerLevelsCount];
      v32 = (v18 - v30) / (v27 / averagePowerLevelsCount);
      if (averagePowerLevelsCount2 - 1 >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = averagePowerLevelsCount2 - 1;
      }

      v34 = [segmentsCopy objectAtIndexedSubscript:v15];
      v35 = v33 + 1;
      if (v33 + 1 >= ([v24 averagePowerLevelsCount] - 1))
      {
        if (v15 + 1 >= [segmentsCopy count])
        {
          v35 = v33;
        }

        else
        {
          v36 = [segmentsCopy objectAtIndexedSubscript:?];

          v35 = 0;
          v34 = v36;
        }
      }

      v37 = *([v24 averagePowerLevels] + 4 * v33);
      v38 = *([v34 averagePowerLevels] + 4 * v35);
      if (v37 >= v38)
      {
        v38 = v37;
      }

      *(v14 + 4 * i) = v38;
    }
  }

  v39 = [[RCWaveformSegment alloc] initWithTimeRange:v41 averagePowerLevelData:v9, v11];

  return v39;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange
{
  beginTime = self->_timeRange.beginTime;
  endTime = self->_timeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

@end