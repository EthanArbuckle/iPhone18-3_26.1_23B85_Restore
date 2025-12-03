@interface RCWaveform
+ (RCWaveform)waveformWithContentsOfURL:(id)l minimumRequiredVersion:(unint64_t)version;
+ (_NSRange)rangeOfSegmentsIntersectingTimeRange:(id)range withSegments:(id)segments;
+ (id)_mutableSegmentsByClippingToTimeRange:(id)range withSegments:(id)segments;
+ (id)_mutableSegmentsIntersectingTimeRange:(id)range intersectionRange:(_NSRange *)intersectionRange withSegments:(id)segments;
+ (id)waveformURLForAVURL:(id)l trackIndex:(unint64_t)index;
+ (void)_mergeBoundarySegmentsInArray:(id)array;
+ (void)initialize;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange;
- (BOOL)_isWaveformDataEqualToDataInWaveform:(id)waveform useAlmostEqual:(BOOL)equal;
- (BOOL)hasUniformPowerLevel:(float)level;
- (BOOL)saveContentsToURL:(id)l;
- (NSArray)segmentsCopy;
- (RCWaveform)init;
- (RCWaveform)initWithCoder:(id)coder;
- (RCWaveform)initWithSegments:(id)segments;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)segmentsByClippingToTimeRange:(id)range;
- (id)segmentsIntersectingTimeRange:(id)range;
- (unint64_t)averagePowerLevelsRate;
- (unint64_t)segmentCount;
- (void)encodeWithCoder:(id)coder;
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

- (RCWaveform)initWithSegments:(id)segments
{
  segmentsCopy = segments;
  v9.receiver = self;
  v9.super_class = RCWaveform;
  v5 = [(RCWaveform *)&v9 init];
  if (v5)
  {
    v6 = [segmentsCopy mutableCopy];
    segments = v5->_segments;
    v5->_segments = v6;
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [RCWaveform setVersion:2];
  }
}

- (BOOL)hasUniformPowerLevel:(float)level
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  segments = [(RCWaveform *)selfCopy segments];
  v6 = [segments count];

  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    segments2 = [(RCWaveform *)selfCopy segments];
    v8 = [segments2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(segments2);
          }

          *&v9 = level;
          if (([*(*(&v14 + 1) + 8 * i) hasUniformPowerLevel:v9] & 1) == 0)
          {
            LOBYTE(v6) = 0;
            goto LABEL_12;
          }
        }

        v8 = [segments2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_isWaveformDataEqualToDataInWaveform:(id)waveform useAlmostEqual:(BOOL)equal
{
  equalCopy = equal;
  waveformCopy = waveform;
  if (waveformCopy == self)
  {
    v15 = 1;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    segments = [(RCWaveform *)waveformCopy segments];
    v9 = [segments count];
    segments2 = [(RCWaveform *)selfCopy segments];
    v11 = [segments2 count];

    if (v9 == v11)
    {
      for (i = 0; ; ++i)
      {
        segments3 = [(RCWaveform *)selfCopy segments];
        v14 = [segments3 count];

        v15 = i >= v14;
        if (i >= v14)
        {
          break;
        }

        if (equalCopy)
        {
          segments4 = [(RCWaveform *)waveformCopy segments];
          v17 = [segments4 objectAtIndexedSubscript:i];
          segments5 = [(RCWaveform *)selfCopy segments];
          v19 = [segments5 objectAtIndexedSubscript:i];
          v20 = [v17 isWaveformDataAlmostEqualToDataInSegment:v19];

          if ((v20 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          segments6 = [(RCWaveform *)waveformCopy segments];
          v22 = [segments6 objectAtIndexedSubscript:i];
          segments7 = [(RCWaveform *)selfCopy segments];
          v24 = [segments7 objectAtIndexedSubscript:i];
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

    objc_sync_exit(selfCopy);
  }

  return v15;
}

- (NSArray)segmentsCopy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  segments = [(RCWaveform *)selfCopy segments];
  v4 = [segments copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (unint64_t)segmentCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  segments = [(RCWaveform *)selfCopy segments];
  v4 = [segments count];

  objc_sync_exit(selfCopy);
  return v4;
}

- (unint64_t)averagePowerLevelsRate
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  segments = [(RCWaveform *)selfCopy segments];
  v4 = [segments countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(segments);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        averagePowerLevelsCount = [v9 averagePowerLevelsCount];
        [v9 timeRange];
        v5 += averagePowerLevelsCount;
        v7 = v7 + RCTimeRangeDeltaWithExactPrecision(v11, v12);
      }

      v4 = [segments countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
    v13 = v5;
  }

  else
  {
    v7 = 0.0;
    v13 = 0.0;
  }

  objc_sync_exit(selfCopy);
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

+ (id)waveformURLForAVURL:(id)l trackIndex:(unint64_t)index
{
  lCopy = l;
  v6 = lCopy;
  if (index == -1)
  {
    v8 = [lCopy rc_URLByAppendingStringToLastComponentBasename:@"-overview" replacingPathExtension:@"waveform"];
  }

  else
  {
    index = [MEMORY[0x277CCACA8] stringWithFormat:@"-track%lu", index];
    v8 = [v6 rc_URLByAppendingStringToLastComponentBasename:index replacingPathExtension:@"waveform"];
  }

  return v8;
}

+ (RCWaveform)waveformWithContentsOfURL:(id)l minimumRequiredVersion:(unint64_t)version
{
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l];
  v13 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];
  v7 = v13;
  if (v6)
  {
    if (v6[1] >= version)
    {
      v9 = objc_opt_class();
      if (v9 == objc_opt_class())
      {
        goto LABEL_7;
      }

      v10 = objc_alloc(objc_opt_class());
      segments = [v6 segments];
      v8 = [v10 initWithSegments:segments];

      v6 = segments;
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

- (BOOL)saveContentsToURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  v12 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [v7 writeToURL:lCopy atomically:1];
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

- (id)segmentsByClippingToTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_opt_class();
  segments = [(RCWaveform *)selfCopy segments];
  v8 = [v6 _mutableSegmentsByClippingToTimeRange:segments withSegments:{var0, var1}];

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)segmentsIntersectingTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_opt_class();
  segments = [(RCWaveform *)selfCopy segments];
  v8 = [v6 _mutableSegmentsIntersectingTimeRange:0 intersectionRange:segments withSegments:{var0, var1}];

  objc_sync_exit(selfCopy);

  return v8;
}

+ (_NSRange)rangeOfSegmentsIntersectingTimeRange:(id)range withSegments:(id)segments
{
  var1 = range.var1;
  var0 = range.var0;
  segmentsCopy = segments;
  if ([segmentsCopy count])
  {
    v7 = [RCWaveformSegment alloc];
    data = [MEMORY[0x277CBEA90] data];
    var1 = [(RCWaveformSegment *)v7 initWithTimeRange:data averagePowerLevelData:var0, var1];

    v10 = [segmentsCopy indexOfObject:var1 inSortedRange:0 options:objc_msgSend(segmentsCopy usingComparator:{"count"), 256, &__block_literal_global_11}];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (v10 == [segmentsCopy count] - 1)
    {
      v11 = 1;
    }

    else
    {
      v12 = [segmentsCopy indexOfObject:var1 inSortedRange:v10 options:objc_msgSend(segmentsCopy usingComparator:{"count") - v10, 512, &__block_literal_global_11}];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [segmentsCopy count] - 1;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  segments = [(RCWaveform *)selfCopy segments];
  firstObject = [segments firstObject];
  [firstObject timeRange];
  v6 = v5;
  segments2 = [(RCWaveform *)selfCopy segments];
  lastObject = [segments2 lastObject];
  [lastObject timeRange];
  v10 = RCTimeRangeMake(v6, v9);
  v12 = v11;

  objc_sync_exit(selfCopy);
  v13 = v10;
  v14 = v12;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (RCWaveform)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"RCSegments"];
  v9 = [v8 mutableCopy];
  segments = self->_segments;
  self->_segments = v9;

  self->_decodedVersion = [coderCopy decodeIntegerForKey:@"RCWaveformEncodingVersion"];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [RCWaveformSegment segmentsByReparingDiscontinuitiesInSegments:self->_segments];
  [coderCopy encodeObject:v4 forKey:@"RCSegments"];
  [coderCopy encodeInteger:+[RCWaveform version](RCWaveform forKey:{"version"), @"RCWaveformEncodingVersion"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = [RCMutableWaveform alloc];
  segments = [(RCWaveform *)selfCopy segments];
  v6 = [(RCWaveform *)v4 initWithSegments:segments];

  [(RCWaveform *)v6 setPotentiallyCorrupted:[(RCWaveform *)selfCopy potentiallyCorrupted]];
  objc_sync_exit(selfCopy);

  return v6;
}

+ (id)_mutableSegmentsByClippingToTimeRange:(id)range withSegments:(id)segments
{
  var1 = range.var1;
  var0 = range.var0;
  segmentsCopy = segments;
  v8 = [self _mutableSegmentsIntersectingTimeRange:0 intersectionRange:segmentsCopy withSegments:{var0, var1}];
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

    [self _mergeBoundarySegmentsInArray:v9];
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

+ (id)_mutableSegmentsIntersectingTimeRange:(id)range intersectionRange:(_NSRange *)intersectionRange withSegments:(id)segments
{
  var1 = range.var1;
  var0 = range.var0;
  segmentsCopy = segments;
  v10 = [self rangeOfSegmentsIntersectingTimeRange:segmentsCopy withSegments:{var0, var1}];
  v12 = v10;
  v13 = v11;
  if (intersectionRange)
  {
    intersectionRange->location = v10;
    intersectionRange->length = v11;
  }

  if (v11 && [segmentsCopy count])
  {
    v14 = [segmentsCopy count];
    if (v12 >= v14 - 1)
    {
      v12 = v14 - 1;
    }

    v15 = [segmentsCopy count];
    v16 = [segmentsCopy count] - v12;
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

    v18 = [segmentsCopy subarrayWithRange:{v12, v17}];
    array = [v18 mutableCopy];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  return array;
}

+ (void)_mergeBoundarySegmentsInArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count] >= 2)
  {
    v3 = [arrayCopy objectAtIndex:0];
    v4 = [arrayCopy objectAtIndex:1];
    v5 = [v3 segmentsByJoiningIfSmallSegment:v4];
    [arrayCopy replaceObjectsInRange:0 withObjectsFromArray:{2, v5}];
    if ([arrayCopy count] < 2)
    {
      v7 = v4;
      v6 = v3;
    }

    else
    {
      v6 = [arrayCopy objectAtIndex:{objc_msgSend(arrayCopy, "count") - 2}];

      v7 = [arrayCopy objectAtIndex:{objc_msgSend(arrayCopy, "count") - 1}];

      v8 = [v6 segmentsByJoiningIfSmallSegment:v7];
      [arrayCopy replaceObjectsInRange:objc_msgSend(arrayCopy withObjectsFromArray:{"count") - 2, 2, v8}];
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