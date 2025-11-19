@interface RCWaveformSegment
+ (id)_discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:(id)a3;
+ (id)_mergedSegmentByResamplingWithMergeableSegments:(id)a3 mergedLevelsDuration:(double)a4;
+ (id)_segmentByMergingMergableSegments:(id)a3;
+ (id)_segmentsByJoiningSegment:(id)a3 toSegmentIfNecessaryWithGreaterSegment:(id)a4 averagePowerLevelJoinLimit:(unint64_t)a5;
+ (id)emptySegmentWithTimeRange:(id)a3;
+ (id)segmentsByMergingSegments:(id)a3 preferredSegmentDuration:(double)a4;
+ (id)segmentsByMergingSegments:(id)a3 preferredSegmentDuration:(double)a4 beforeTime:(double)a5 andThenUsePreferredSegmentDuration:(double)a6;
+ (id)segmentsByReparingDiscontinuitiesInSegments:(id)a3;
+ (id)segmentsByShiftingSegments:(id)a3 byTimeOffset:(double)a4;
+ (void)initialize;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange;
- (BOOL)hasUniformPowerLevel:(float)a3;
- (BOOL)isWaveformDataAlmostEqualToDataInSegment:(id)a3;
- (BOOL)isWaveformDataEqualToDataInSegment:(id)a3;
- (RCWaveformSegment)initWithCoder:(id)a3;
- (RCWaveformSegment)initWithTimeRange:(id)a3 averagePowerLevelData:(id)a4;
- (RCWaveformSegment)initWithTimeRange:(id)a3 averagePowerLevelVector:(void *)a4;
- (id)_initWithTimeRange:(id)a3 averagePowerLevelData:(id)a4;
- (id)_segmentWithValuesInContainedTimeRange:(id)a3;
- (id)_segmentsByJoiningIfNecessaryGreaterSegment:(id)a3 averagePowerLevelJoinLimit:(unint64_t)a4;
- (id)copyWithAdjustedTimeRange:(id)a3;
- (id)copyWithTimeRangeOffsetByTimeOffset:(double)a3;
- (id)segmentByClippingToTimeRange:(id)a3;
- (id)segmentsByJoiningIfSmallSegment:(id)a3;
- (id)segmentsByJoiningIfSmallSegment:(id)a3 averagePowerLevelJoinLimit:(unint64_t)a4;
- (id)simpleDescription;
- (id)verboseDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCWaveformSegment

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [RCWaveformSegment setVersion:1];
  }
}

+ (id)emptySegmentWithTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x277CBEA90] data];
  v7 = [v5 _initWithTimeRange:v6 averagePowerLevelData:{var0, var1}];

  return v7;
}

- (RCWaveformSegment)initWithTimeRange:(id)a3 averagePowerLevelData:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = a4;
  if (!v8)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"RCWaveformSegment.mm" lineNumber:33 description:{@"invalid segment data.  if this segment really has no data, use +emptySegmentWithTimeRange:"}];
  }

  v9 = [(RCWaveformSegment *)self _initWithTimeRange:v8 averagePowerLevelData:var0, var1];

  return v9;
}

- (id)_initWithTimeRange:(id)a3 averagePowerLevelData:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RCWaveformSegment;
  v9 = [(RCWaveformSegment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_timeRange.beginTime = var0;
    v9->_timeRange.endTime = var1;
    objc_storeStrong(&v9->_averagePowerLevelData, a4);
    v10->_isRendered = 0;
  }

  return v10;
}

- (RCWaveformSegment)initWithTimeRange:(id)a3 averagePowerLevelVector:(void *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (*(a4 + 1) == *a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:*a4 length:*(a4 + 1) - *a4];
    memcpy([v8 mutableBytes], *a4, *(a4 + 1) - *a4);
  }

  v9 = [(RCWaveformSegment *)self initWithTimeRange:v8 averagePowerLevelData:var0, var1];
  v10 = v9;
  if (v9)
  {
    v9->_timeRange.beginTime = var0;
    v9->_timeRange.endTime = var1;
  }

  return v10;
}

- (id)verboseDescription
{
  v3 = [(RCWaveformSegment *)self simpleDescription];
  v4 = RCTimeRangeDeltaWithExactPrecision(self->_timeRange.beginTime, self->_timeRange.endTime);
  v5 = [(RCWaveformSegment *)self averagePowerLevelsCount];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = 0;
  v8 = v4 / v5;
  while (v7 < [(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    v9 = [(RCWaveformSegment *)self averagePowerLevels];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%.3fs] %.2f", v8 * v7, v9[v7]];
    [v6 addObject:v10];

    ++v7;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [v6 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"%@ %@", v3, v12];

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

- (RCWaveformSegment)initWithCoder:(id)a3
{
  v4 = a3;
  self->_timeRange.beginTime = RCTimeRangeDecodeWithKey(v4, @"RCTimeRange");
  self->_timeRange.endTime = v5;
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RCAveragePowerLevelVectorData"];
  averagePowerLevelData = self->_averagePowerLevelData;
  self->_averagePowerLevelData = v6;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  RCTimeRangeEncodeWithKey(v4, @"RCTimeRange", self->_timeRange.beginTime, self->_timeRange.endTime);
  [v4 encodeObject:self->_averagePowerLevelData forKey:@"RCAveragePowerLevelVectorData"];
}

- (BOOL)hasUniformPowerLevel:(float)a3
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
    v7 = v6 == a3;
    if (v6 != a3)
    {
      break;
    }

    ++v5;
  }

  while (v5 < [(RCWaveformSegment *)self averagePowerLevelsCount]);
  return v7;
}

- (BOOL)isWaveformDataEqualToDataInSegment:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  else
  {
    return [(NSData *)self->_averagePowerLevelData isEqual:*(a3 + 1)];
  }
}

- (BOOL)isWaveformDataAlmostEqualToDataInSegment:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    goto LABEL_10;
  }

  v6 = [(RCWaveformSegment *)v4 averagePowerLevelsCount];
  if (v6 != [(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    v11 = 0;
    goto LABEL_12;
  }

  v7 = [(RCWaveformSegment *)self averagePowerLevelsCount];
  if (!v7)
  {
LABEL_10:
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = v7 - 1;
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

- (id)copyWithTimeRangeOffsetByTimeOffset:(double)a3
{
  v4 = self->_timeRange.beginTime + a3;
  v5 = self->_timeRange.endTime + a3;
  v6 = objc_alloc(objc_opt_class());
  averagePowerLevelData = self->_averagePowerLevelData;

  return [v6 initWithTimeRange:averagePowerLevelData averagePowerLevelData:{v4, v5}];
}

- (id)copyWithAdjustedTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = objc_alloc(objc_opt_class());
  averagePowerLevelData = self->_averagePowerLevelData;

  return [v6 initWithTimeRange:averagePowerLevelData averagePowerLevelData:{var0, var1}];
}

+ (id)segmentsByReparingDiscontinuitiesInSegments:(id)a3
{
  v3 = [a1 _discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:a3];

  return v3;
}

+ (id)segmentsByShiftingSegments:(id)a3 byTimeOffset:(double)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
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

          v11 = [*(*(&v14 + 1) + 8 * i) copyWithTimeRangeOffsetByTimeOffset:{a4, v14}];
          [v6 addObject:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = [v5 mutableCopy];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)segmentsByMergingSegments:(id)a3 preferredSegmentDuration:(double)a4 beforeTime:(double)a5 andThenUsePreferredSegmentDuration:(double)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if ([v10 count] <= 1)
  {
    v11 = v10;
    goto LABEL_42;
  }

  v45 = v10;
  v46 = [v10 mutableCopy];
  if (v46)
  {
    v12 = MEMORY[0x277CBEB18];
    v13 = [MEMORY[0x277CBEB18] array];
    v14 = [v12 arrayWithObject:v13];

    v11 = [MEMORY[0x277CBEB18] array];
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
      v19 = a4;
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
          if (v22 >= a5 && v19 == a4)
          {
            v27 = [MEMORY[0x277CBEB18] array];
            [v14 addObject:v27];

            v19 = a6;
          }

          v28 = [v14 lastObject];
          if (![v28 count])
          {
            v18 = v23;
          }

          [v28 addObject:v21];
          if (v25 - v18 >= v19)
          {
            v29 = [MEMORY[0x277CBEB18] array];
            [v14 addObject:v29];
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
            v35 = [v34 objectAtIndexedSubscript:0];
            [v11 addObject:v35];
          }

          else
          {
            if ([v34 count] < 2)
            {
              continue;
            }

            v35 = [v34 firstObject];
            v36 = [v34 lastObject];
            [v35 timeRange];
            v38 = v37;
            [v36 timeRange];
            v40 = v39 - v38;
            if (v38 >= a5)
            {
              v41 = a6;
            }

            else
            {
              v41 = a4;
            }

            if (v40 >= v41)
            {
              v42 = [a1 _segmentByMergingMergableSegments:v34];
              [v11 addObject:v42];
            }

            else
            {
              [v11 addObjectsFromArray:v34];
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
    v11 = v10;
  }

  v10 = v45;
LABEL_42:

  v43 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)segmentsByMergingSegments:(id)a3 preferredSegmentDuration:(double)a4
{
  v4 = [a1 segmentsByMergingSegments:a3 preferredSegmentDuration:a4 beforeTime:1.79769313e308 andThenUsePreferredSegmentDuration:1.0];

  return v4;
}

- (id)segmentsByJoiningIfSmallSegment:(id)a3
{
  v3 = [(RCWaveformSegment *)self _segmentsByJoiningIfNecessaryGreaterSegment:a3 averagePowerLevelJoinLimit:8];

  return v3;
}

- (id)segmentsByJoiningIfSmallSegment:(id)a3 averagePowerLevelJoinLimit:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v21 = self;
    v11 = &v21;
    v12 = 1;
LABEL_5:
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:{v12, v19, v20, v21, v22}];
    goto LABEL_8;
  }

  [(RCWaveformSegment *)self timeRange];
  v8 = v7;
  [v6 timeRange];
  if (v8 == v9)
  {
    v10 = [(RCWaveformSegment *)self _segmentsByJoiningIfNecessaryGreaterSegment:v6 averagePowerLevelJoinLimit:a4];
    goto LABEL_8;
  }

  [v6 timeRange];
  v14 = v13;
  [(RCWaveformSegment *)self timeRange];
  if (v14 != v15)
  {
    v19 = self;
    v20 = v6;
    v11 = &v19;
    v12 = 2;
    goto LABEL_5;
  }

  v10 = [v6 _segmentsByJoiningIfNecessaryGreaterSegment:self averagePowerLevelJoinLimit:a4];
LABEL_8:
  v16 = v10;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)segmentByClippingToTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  [(RCWaveformSegment *)self timeRange];
  if (RCTimeRangeEqualToTimeRange(var0, var1, v6, v7) || ([(RCWaveformSegment *)self timeRange], RCTimeRangeContainsRange(var0, var1, v8, v9)) || ([(RCWaveformSegment *)self timeRange], RCTimeRangeContainsRange(var0, var1, v10, v11)))
  {
    v12 = self;
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
      v12 = 0;
    }

    else
    {
      RCTimeRangeMake(var0, v17);
      v12 = [(RCWaveformSegment *)self _segmentWithValuesInContainedTimeRange:?];
    }
  }

  return v12;
}

+ (id)_discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:(id)a3
{
  v3 = a3;
  if ([v3 count] > 1)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    for (i = 1; i < [v3 count]; i = v8 + 1)
    {
      v6 = i - 1;
      v7 = [v3 objectAtIndexedSubscript:i - 1];
      v8 = v6 + 1;
      v9 = [v3 objectAtIndexedSubscript:v6 + 1];
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

    v14 = [v3 lastObject];
    [v4 addObject:v14];
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (id)_segmentWithValuesInContainedTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = [(RCWaveformSegment *)self averagePowerLevelsCount];
  if (v7)
  {
    v8 = v7;
    [(RCWaveformSegment *)self timeRange];
    if (!RCTimeRangeContainsRange(v9, v10, var0, var1))
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"RCWaveformSegment.mm" lineNumber:355 description:@"Invalid argment"];
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

- (id)_segmentsByJoiningIfNecessaryGreaterSegment:(id)a3 averagePowerLevelJoinLimit:(unint64_t)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = objc_opt_class();
    v15[0] = self;
    v15[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v9 = [v7 _discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:v8];

    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v9 objectAtIndexedSubscript:1];
    v12 = [RCWaveformSegment _segmentsByJoiningSegment:v10 toSegmentIfNecessaryWithGreaterSegment:v11 averagePowerLevelJoinLimit:a4];
  }

  else
  {
    v16[0] = self;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_segmentsByJoiningSegment:(id)a3 toSegmentIfNecessaryWithGreaterSegment:(id)a4 averagePowerLevelJoinLimit:(unint64_t)a5
{
  v60[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  [v7 timeRange];
  v11 = RCTimeRangeDeltaWithExactPrecision(v9, v10);
  [v8 timeRange];
  v14 = RCTimeRangeDeltaWithExactPrecision(v12, v13);
  if ([v7 averagePowerLevelsCount] <= 1)
  {
    [v7 timeRange];
    v16 = v15;
    [v8 timeRange];
    RCTimeRangeMake(v16, v17);
    v18 = [v8 copyWithAdjustedTimeRange:?];
    v60[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
LABEL_5:
    v23 = v19;
LABEL_6:

    goto LABEL_7;
  }

  if ([v8 averagePowerLevelsCount] <= 1)
  {
    [v7 timeRange];
    v21 = v20;
    [v8 timeRange];
    RCTimeRangeMake(v21, v22);
    v18 = [v7 copyWithAdjustedTimeRange:?];
    v59 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    goto LABEL_5;
  }

  v26 = [v7 averagePowerLevelsCount];
  if ([v8 averagePowerLevelsCount] + v26 < a5)
  {
    v27 = v11;
    v28 = v14;
    if ((v27 + v28) > 0.0)
    {
      [v7 timeRange];
      v30 = v29;
      [v8 timeRange];
      v32 = RCTimeRangeMake(v30, v31);
      v34 = v33;
      [v7 timeRange];
      v37 = RCTimeRangeDeltaWithExactPrecision(v35, v36);
      v38 = [v7 averagePowerLevelsCount];
      [v8 timeRange];
      v41 = RCTimeRangeDeltaWithExactPrecision(v39, v40);
      v42 = [v8 averagePowerLevelsCount];
      v43 = v37;
      v44 = v43 / v38;
      v45 = v41;
      v46 = v45 / v42;
      if (v44 > 0.0)
      {
        if (v46 <= 0.0)
        {
          v46 = v43 / v38;
        }

        else if (v44 < v46)
        {
          v46 = v43 / v38;
        }
      }

      v47 = (RCTimeRangeDeltaWithExactPrecision(v32, v34) / v46);
      v18 = [MEMORY[0x277CBEB28] dataWithLength:4 * v47];
      v48 = [v18 mutableBytes];
      if (v47)
      {
        v49 = v48;
        for (i = 0; i != v47; ++i)
        {
          [v7 timeRange];
          v51 = v46 * i;
          if (v52 <= v51)
          {
            v53 = [v8 averagePowerLevels];
            v54 = (v51 - v43);
            v55 = v45;
          }

          else
          {
            v53 = [v7 averagePowerLevels];
            v54 = v51;
            v55 = v43;
          }

          *(v49 + 4 * i) = *(v53 + 4 * (v54 / v55));
        }
      }

      v56 = [[RCWaveformSegment alloc] initWithTimeRange:v18 averagePowerLevelData:v32, v34];
      v58 = v56;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];

      goto LABEL_6;
    }
  }

  v57[0] = v7;
  v57[1] = v8;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
LABEL_7:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_segmentByMergingMergableSegments:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count])
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_17:
    v6 = [0 objectAtIndexedSubscript:0];
    goto LABEL_18;
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:a1 file:@"RCWaveformSegment.mm" lineNumber:441 description:@"Invalid paremeter"];

  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ([v5 count] == 1)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
LABEL_18:
    v17 = v6;
    goto LABEL_19;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
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
  v17 = [a1 _mergedSegmentByFastMergingWithMergeableSegments:v7 mergedLevelsDuration:v16];
  if (!v17)
  {
    v6 = [a1 _mergedSegmentByResamplingWithMergeableSegments:v7 mergedLevelsDuration:v16];
    goto LABEL_18;
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_mergedSegmentByResamplingWithMergeableSegments:(id)a3 mergedLevelsDuration:(double)a4
{
  v5 = a3;
  v43 = [v5 firstObject];
  v42 = [v5 lastObject];
  [v43 timeRange];
  v7 = v6;
  [v42 timeRange];
  v9 = RCTimeRangeMake(v7, v8);
  v11 = v10;
  v12 = (RCTimeRangeDeltaWithExactPrecision(v9, v10) / a4);
  v41 = [MEMORY[0x277CBEB28] dataWithLength:4 * v12];
  v13 = [v41 mutableBytes];
  if (v12)
  {
    v14 = v13;
    v15 = 0;
    for (i = 0; i != v12; ++i)
    {
      [v43 timeRange];
      v18 = v17 + i * a4;
      v19 = v15;
      do
      {
        v15 = v19;
        if (v19 >= [v5 count])
        {
          break;
        }

        v20 = [v5 objectAtIndexedSubscript:v19];
        [v20 timeRange];
        v23 = RCTimeRangeContainsTime(v21, v22, v18);
        ++v19;
      }

      while (!v23);
      if ([v5 count] == v15)
      {
        break;
      }

      v24 = [v5 objectAtIndexedSubscript:v15];
      [v24 timeRange];
      v27 = RCTimeRangeDeltaWithExactPrecision(v25, v26);
      v28 = [v24 averagePowerLevelsCount];
      [v24 timeRange];
      v30 = v29;
      v31 = [v24 averagePowerLevelsCount];
      v32 = (v18 - v30) / (v27 / v28);
      if (v31 - 1 >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v31 - 1;
      }

      v34 = [v5 objectAtIndexedSubscript:v15];
      v35 = v33 + 1;
      if (v33 + 1 >= ([v24 averagePowerLevelsCount] - 1))
      {
        if (v15 + 1 >= [v5 count])
        {
          v35 = v33;
        }

        else
        {
          v36 = [v5 objectAtIndexedSubscript:?];

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