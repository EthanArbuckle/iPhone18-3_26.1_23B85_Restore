@interface RCWaveform
+ (RCWaveform)waveformWithContentsOfURL:(id)a3 minimumRequiredVersion:(unint64_t)a4;
+ (_NSRange)rangeOfSegmentsIntersectingTimeRange:(id)a3 withSegments:(id)a4;
+ (id)_mutableSegmentsByClippingToTimeRange:(id)a3 withSegments:(id)a4;
+ (id)_mutableSegmentsIntersectingTimeRange:(id)a3 intersectionRange:(_NSRange *)a4 withSegments:(id)a5;
+ (id)waveformURLForAVURL:(id)a3 trackIndex:(unint64_t)a4;
+ (void)_mergeBoundarySegmentsInArray:(id)a3;
+ (void)initialize;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange;
- (BOOL)_isWaveformDataEqualToDataInWaveform:(id)a3 useAlmostEqual:(BOOL)a4;
- (BOOL)hasUniformPowerLevel:(float)a3;
- (BOOL)saveContentsToURL:(id)a3;
- (NSArray)segmentsCopy;
- (RCWaveform)init;
- (RCWaveform)initWithCoder:(id)a3;
- (RCWaveform)initWithSegments:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)segmentsByClippingToTimeRange:(id)a3;
- (id)segmentsIntersectingTimeRange:(id)a3;
- (unint64_t)averagePowerLevelsRate;
- (unint64_t)segmentCount;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCWaveform

- (RCWaveform)init
{
  v6.receiver = self;
  v6.super_class = RCWaveform;
  v2 = [(RCWaveform *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    segments = v2->_segments;
    v2->_segments = v3;
  }

  return v2;
}

- (RCWaveform)initWithSegments:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RCWaveform;
  v5 = [(RCWaveform *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    segments = v5->_segments;
    v5->_segments = v6;
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [RCWaveform setVersion:2];
  }
}

- (BOOL)hasUniformPowerLevel:(float)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(RCWaveform *)v4 segments];
  v6 = [v5 count];

  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(RCWaveform *)v4 segments];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          *&v9 = a3;
          if (([*(*(&v14 + 1) + 8 * i) hasUniformPowerLevel:v9] & 1) == 0)
          {
            LOBYTE(v6) = 0;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v6) = 1;
LABEL_12:
  }

  objc_sync_exit(v4);

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_isWaveformDataEqualToDataInWaveform:(id)a3 useAlmostEqual:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 == self)
  {
    v15 = 1;
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(RCWaveform *)v6 segments];
    v9 = [v8 count];
    v10 = [(RCWaveform *)v7 segments];
    v11 = [v10 count];

    if (v9 == v11)
    {
      for (i = 0; ; ++i)
      {
        v13 = [(RCWaveform *)v7 segments];
        v14 = [v13 count];

        v15 = i >= v14;
        if (i >= v14)
        {
          break;
        }

        if (v4)
        {
          v16 = [(RCWaveform *)v6 segments];
          v17 = [v16 objectAtIndexedSubscript:i];
          v18 = [(RCWaveform *)v7 segments];
          v19 = [v18 objectAtIndexedSubscript:i];
          v20 = [v17 isWaveformDataAlmostEqualToDataInSegment:v19];

          if ((v20 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          v21 = [(RCWaveform *)v6 segments];
          v22 = [v21 objectAtIndexedSubscript:i];
          v23 = [(RCWaveform *)v7 segments];
          v24 = [v23 objectAtIndexedSubscript:i];
          v25 = [v22 isWaveformDataEqualToDataInSegment:v24];

          if (!v25)
          {
            break;
          }
        }
      }
    }

    else
    {
      v15 = 0;
    }

    objc_sync_exit(v7);
  }

  return v15;
}

- (NSArray)segmentsCopy
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(RCWaveform *)v2 segments];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (unint64_t)segmentCount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(RCWaveform *)v2 segments];
  v4 = [v3 count];

  objc_sync_exit(v2);
  return v4;
}

- (unint64_t)averagePowerLevelsRate
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(RCWaveform *)v2 segments];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v17;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 averagePowerLevelsCount];
        [v9 timeRange];
        v5 += v10;
        v7 = v7 + RCTimeRangeDeltaWithExactPrecision(v11, v12);
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
    v13 = v5;
  }

  else
  {
    v7 = 0.0;
    v13 = 0.0;
  }

  objc_sync_exit(v2);
  if (v7 >= 0.00000011920929)
  {
    result = fmax(v13 / v7, 1.0);
  }

  else
  {
    result = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)waveformURLForAVURL:(id)a3 trackIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == -1)
  {
    v8 = [v5 rc_URLByAppendingStringToLastComponentBasename:@"-overview" replacingPathExtension:@"waveform"];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"-track%lu", a4];
    v8 = [v6 rc_URLByAppendingStringToLastComponentBasename:v7 replacingPathExtension:@"waveform"];
  }

  return v8;
}

+ (RCWaveform)waveformWithContentsOfURL:(id)a3 minimumRequiredVersion:(unint64_t)a4
{
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3];
  v13 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];
  v7 = v13;
  if (v6)
  {
    if (v6[1] >= a4)
    {
      v9 = objc_opt_class();
      if (v9 == objc_opt_class())
      {
        goto LABEL_7;
      }

      v10 = objc_alloc(objc_opt_class());
      v11 = [v6 segments];
      v8 = [v10 initWithSegments:v11];

      v6 = v11;
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;
  }

LABEL_7:

  return v6;
}

- (BOOL)saveContentsToURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v4 URLByDeletingLastPathComponent];
  [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:0];

  v12 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [v7 writeToURL:v4 atomically:1];
  }

  else
  {
    v10 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(RCWaveform *)v8 saveContentsToURL:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (id)segmentsByClippingToTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_opt_class();
  v7 = [(RCWaveform *)v5 segments];
  v8 = [v6 _mutableSegmentsByClippingToTimeRange:v7 withSegments:{var0, var1}];

  objc_sync_exit(v5);

  return v8;
}

- (id)segmentsIntersectingTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_opt_class();
  v7 = [(RCWaveform *)v5 segments];
  v8 = [v6 _mutableSegmentsIntersectingTimeRange:0 intersectionRange:v7 withSegments:{var0, var1}];

  objc_sync_exit(v5);

  return v8;
}

+ (_NSRange)rangeOfSegmentsIntersectingTimeRange:(id)a3 withSegments:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = a4;
  if ([v6 count])
  {
    v7 = [RCWaveformSegment alloc];
    v8 = [MEMORY[0x277CBEA90] data];
    v9 = [(RCWaveformSegment *)v7 initWithTimeRange:v8 averagePowerLevelData:var0, var1];

    v10 = [v6 indexOfObject:v9 inSortedRange:0 options:objc_msgSend(v6 usingComparator:{"count"), 256, &__block_literal_global_11}];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (v10 == [v6 count] - 1)
    {
      v11 = 1;
    }

    else
    {
      v12 = [v6 indexOfObject:v9 inSortedRange:v10 options:objc_msgSend(v6 usingComparator:{"count") - v10, 512, &__block_literal_global_11}];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [v6 count] - 1;
      }

      v11 = v12 - v10 + 1;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v10;
  v14 = v11;
  result.length = v14;
  result.location = v13;
  return result;
}

uint64_t __64__RCWaveform_rangeOfSegmentsIntersectingTimeRange_withSegments___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 timeRange];
  v6 = v5;
  v8 = v7;
  [v4 timeRange];
  if (v10 < v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v9 <= v6)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(RCWaveform *)v2 segments];
  v4 = [v3 firstObject];
  [v4 timeRange];
  v6 = v5;
  v7 = [(RCWaveform *)v2 segments];
  v8 = [v7 lastObject];
  [v8 timeRange];
  v10 = RCTimeRangeMake(v6, v9);
  v12 = v11;

  objc_sync_exit(v2);
  v13 = v10;
  v14 = v12;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (RCWaveform)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"RCSegments"];
  v9 = [v8 mutableCopy];
  segments = self->_segments;
  self->_segments = v9;

  self->_decodedVersion = [v4 decodeIntegerForKey:@"RCWaveformEncodingVersion"];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [RCWaveformSegment segmentsByReparingDiscontinuitiesInSegments:self->_segments];
  [v5 encodeObject:v4 forKey:@"RCSegments"];
  [v5 encodeInteger:+[RCWaveform version](RCWaveform forKey:{"version"), @"RCWaveformEncodingVersion"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = [RCMutableWaveform alloc];
  v5 = [(RCWaveform *)v3 segments];
  v6 = [(RCWaveform *)v4 initWithSegments:v5];

  [(RCWaveform *)v6 setPotentiallyCorrupted:[(RCWaveform *)v3 potentiallyCorrupted]];
  objc_sync_exit(v3);

  return v6;
}

+ (id)_mutableSegmentsByClippingToTimeRange:(id)a3 withSegments:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v8 = [a1 _mutableSegmentsIntersectingTimeRange:0 intersectionRange:v7 withSegments:{var0, var1}];
  if ([v8 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__RCWaveform__mutableSegmentsByClippingToTimeRange_withSegments___block_invoke;
    v13[3] = &unk_279E44720;
    v9 = v8;
    v14 = v9;
    v15 = var0;
    v16 = var1;
    v10 = MEMORY[0x2743CA3B0](v13);
    if ([v9 count])
    {
      v10[2](v10, 0);
    }

    if ([v9 count])
    {
      v10[2](v10, [v9 count] - 1);
    }

    [a1 _mergeBoundarySegmentsInArray:v9];
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CBEBF8] mutableCopy];
  }

  return v11;
}

void __65__RCWaveform__mutableSegmentsByClippingToTimeRange_withSegments___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) objectAtIndex:a2];
  v4 = [v6 segmentByClippingToTimeRange:{*(a1 + 40), *(a1 + 48)}];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 replaceObjectAtIndex:a2 withObject:v4];
  }

  else
  {
    [v5 removeObjectAtIndex:a2];
  }
}

+ (id)_mutableSegmentsIntersectingTimeRange:(id)a3 intersectionRange:(_NSRange *)a4 withSegments:(id)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a5;
  v10 = [a1 rangeOfSegmentsIntersectingTimeRange:v9 withSegments:{var0, var1}];
  v12 = v10;
  v13 = v11;
  if (a4)
  {
    a4->location = v10;
    a4->length = v11;
  }

  if (v11 && [v9 count])
  {
    v14 = [v9 count];
    if (v12 >= v14 - 1)
    {
      v12 = v14 - 1;
    }

    v15 = [v9 count];
    v16 = [v9 count] - v12;
    if (v13 < v16)
    {
      v16 = v13;
    }

    if (v16 <= (v15 != 0))
    {
      v17 = v15 != 0;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v9 subarrayWithRange:{v12, v17}];
    v19 = [v18 mutableCopy];
  }

  else
  {
    v19 = [MEMORY[0x277CBEB18] array];
  }

  return v19;
}

+ (void)_mergeBoundarySegmentsInArray:(id)a3
{
  v9 = a3;
  if ([v9 count] >= 2)
  {
    v3 = [v9 objectAtIndex:0];
    v4 = [v9 objectAtIndex:1];
    v5 = [v3 segmentsByJoiningIfSmallSegment:v4];
    [v9 replaceObjectsInRange:0 withObjectsFromArray:{2, v5}];
    if ([v9 count] < 2)
    {
      v7 = v4;
      v6 = v3;
    }

    else
    {
      v6 = [v9 objectAtIndex:{objc_msgSend(v9, "count") - 2}];

      v7 = [v9 objectAtIndex:{objc_msgSend(v9, "count") - 1}];

      v8 = [v6 segmentsByJoiningIfSmallSegment:v7];
      [v9 replaceObjectsInRange:objc_msgSend(v9 withObjectsFromArray:{"count") - 2, 2, v8}];
    }
  }
}

- (void)saveContentsToURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[RCWaveform saveContentsToURL:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- ERROR:  archiving waveform:  %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end