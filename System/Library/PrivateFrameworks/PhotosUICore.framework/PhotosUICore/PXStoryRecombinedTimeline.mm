@interface PXStoryRecombinedTimeline
+ (BOOL)_isSegmentIndex:(int64_t)index inTimeline:(id)timeline visuallyEqualToSegmentIndex:(int64_t)segmentIndex inTimeline:(id)inTimeline;
+ (id)timelineByRecombiningSourceTimeline:(id)timeline withTargetTimeline:(id)targetTimeline visibleSegmentIdentifiers:(id)identifiers;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)sourceTimeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)targetTimeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)targetTimeRangeInSourceTime;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRangeForSegmentWithIdentifier:(SEL)identifier;
- (CGRect)frameForSegmentWithIdentifier:(int64_t)identifier;
- (CGSize)size;
- (PXStoryRecombinedTimeline)init;
- (PXStoryRecombinedTimeline)initWithSourceTimeline:(id)timeline upToSegmentIndex:(int64_t)index targetTimeline:(id)targetTimeline fromSegmentIndex:(int64_t)segmentIndex;
- (id)clipWithIdentifier:(int64_t)identifier;
- (id)indexesOfResourcesWithKind:(int64_t)kind inResourcesDataSource:(id)source forClipsInSegmentWithIdentifier:(int64_t)identifier;
- (int64_t)dataSourceIdentifier;
- (int64_t)identifierForSegmentAtIndex:(int64_t)index;
- (int64_t)identifierOfFirstClipContainingResourceAtIndex:(int64_t)index inResourcesDataSource:(id)source resourceKind:(int64_t)kind;
- (int64_t)indexOfResourceForClipWithIdentifier:(int64_t)identifier inResourcesDataSource:(id)source resourceKind:(int64_t)kind;
- (int64_t)indexOfSegmentWithIdentifier:(int64_t)identifier;
- (int64_t)numberOfSegments;
- (void)_shiftTimeRanges:(id *)ranges count:(int64_t)count byTime:(id *)time resultHandler:(id)handler;
- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block;
- (void)enumerateSegmentsInTimeRange:(id *)range usingBlock:(id)block;
@end

@implementation PXStoryRecombinedTimeline

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)targetTimeRange
{
  v3 = *&self[3].var1.var3;
  *&retstr->var0.var0 = *&self[3].var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[4].var0.var1;
  return self;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)targetTimeRangeInSourceTime
{
  v3 = *&self[2].var1.var3;
  *&retstr->var0.var0 = *&self[2].var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var0.var1;
  return self;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)sourceTimeRange
{
  v3 = *&self[1].var1.var3;
  *&retstr->var0.var0 = *&self[1].var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var0.var1;
  return self;
}

- (void)_shiftTimeRanges:(id *)ranges count:(int64_t)count byTime:(id *)time resultHandler:(id)handler
{
  handlerCopy = handler;
  shiftedTimeRangesStore = [(PXStoryRecombinedTimeline *)self shiftedTimeRangesStore];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PXStoryRecombinedTimeline__shiftTimeRanges_count_byTime_resultHandler___block_invoke;
  v13[3] = &unk_1E772EFF0;
  countCopy = count;
  rangesCopy = ranges;
  v17 = *time;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [shiftedTimeRangesStore accessArrayWithElementsCount:count accessBlock:v13];
}

uint64_t __73__PXStoryRecombinedTimeline__shiftTimeRanges_count_byTime_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (a2 + v4);
      v7 = (*(a1 + 48) + v4);
      *v10 = v7[1];
      *&v10[16] = v7[2];
      *&lhs.start.value = *v7;
      rhs = *(a1 + 56);
      lhs.start.epoch = *v10;
      CMTimeAdd(&v12, &lhs.start, &rhs);
      duration = *&v10[8];
      rhs = v12;
      CMTimeRangeMake(&lhs, &rhs, &duration);
      v8 = *&lhs.start.epoch;
      *v6 = *&lhs.start.value;
      v6[1] = v8;
      v6[2] = *&lhs.duration.timescale;
      ++v5;
      v4 += 48;
    }

    while (v5 < *(a1 + 40));
  }

  return (*(*(a1 + 32) + 16))();
}

- (int64_t)dataSourceIdentifier
{
  targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
  dataSourceIdentifier = [targetTimeline dataSourceIdentifier];

  return dataSourceIdentifier;
}

- (int64_t)identifierOfFirstClipContainingResourceAtIndex:(int64_t)index inResourcesDataSource:(id)source resourceKind:(int64_t)kind
{
  sourceCopy = source;
  sourceTimeline = [(PXStoryRecombinedTimeline *)self sourceTimeline];
  v10 = [sourceTimeline identifierOfFirstClipContainingResourceAtIndex:index inResourcesDataSource:sourceCopy resourceKind:kind];

  targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
  v12 = [targetTimeline identifierOfFirstClipContainingResourceAtIndex:index inResourcesDataSource:sourceCopy resourceKind:kind];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  [(PXStoryRecombinedTimeline *)self timeRange];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __111__PXStoryRecombinedTimeline_identifierOfFirstClipContainingResourceAtIndex_inResourcesDataSource_resourceKind___block_invoke;
  v15[3] = &unk_1E772EFC8;
  v15[4] = &v17;
  v15[5] = v10;
  v15[6] = v12;
  [(PXStoryRecombinedTimeline *)self enumerateClipsInTimeRange:v16 rect:v15 usingBlock:*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)];
  v13 = v18[3];
  _Block_object_dispose(&v17, 8);

  return v13;
}

void *__111__PXStoryRecombinedTimeline_identifierOfFirstClipContainingResourceAtIndex_inResourcesDataSource_resourceKind___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _BYTE *a6)
{
  if (a2 >= 1)
  {
    v6 = result[5];
    while (*a5 != v6)
    {
      if (*a5 == result[6])
      {
        v6 = *a5;
        break;
      }

      a5 += 96;
      if (!--a2)
      {
        return result;
      }
    }

    *(*(result[4] + 8) + 24) = v6;
    *a6 = 1;
  }

  return result;
}

- (int64_t)indexOfResourceForClipWithIdentifier:(int64_t)identifier inResourcesDataSource:(id)source resourceKind:(int64_t)kind
{
  sourceCopy = source;
  sourceTimeline = [(PXStoryRecombinedTimeline *)self sourceTimeline];
  v10 = [sourceTimeline indexOfResourceForClipWithIdentifier:identifier inResourcesDataSource:sourceCopy resourceKind:kind];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
    v10 = [targetTimeline indexOfResourceForClipWithIdentifier:identifier inResourcesDataSource:sourceCopy resourceKind:kind];
  }

  return v10;
}

- (id)indexesOfResourcesWithKind:(int64_t)kind inResourcesDataSource:(id)source forClipsInSegmentWithIdentifier:(int64_t)identifier
{
  sourceCopy = source;
  sourceTimeline = [(PXStoryRecombinedTimeline *)self sourceTimeline];
  v10 = [sourceTimeline indexesOfResourcesWithKind:kind inResourcesDataSource:sourceCopy forClipsInSegmentWithIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
    v12 = [targetTimeline indexesOfResourcesWithKind:kind inResourcesDataSource:sourceCopy forClipsInSegmentWithIdentifier:identifier];
  }

  return v12;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRangeForSegmentWithIdentifier:(SEL)identifier
{
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  sourceTimeline = [(PXStoryRecombinedTimeline *)self sourceTimeline];
  v8 = [sourceTimeline indexOfSegmentWithIdentifier:a4];
  if (v8 <= [(PXStoryRecombinedTimeline *)self lastSourceSegmentIndex])
  {
    if (sourceTimeline)
    {
      [sourceTimeline timeRangeForSegmentWithIdentifier:a4];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    *&retstr->var0.var0 = *&v13[0].value;
    *&retstr->var0.var3 = *&v13[0].epoch;
    *&retstr->var1.var1 = *&v13[1].timescale;
  }

  else
  {
    targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
    v10 = [targetTimeline indexOfSegmentWithIdentifier:a4];
    if (v10 >= [(PXStoryRecombinedTimeline *)self firstTargetSegmentIndex])
    {
      if (targetTimeline)
      {
        [targetTimeline timeRangeForSegmentWithIdentifier:a4];
      }

      else
      {
        memset(v13, 0, sizeof(v13));
      }

      [(PXStoryRecombinedTimeline *)self targetTimeOffset];
      lhs = v13[0];
      rhs = v12;
      CMTimeAdd(&v14, &lhs, &rhs);
      rhs = v13[1];
      lhs = v14;
      CMTimeRangeMake(retstr, &lhs, &rhs);
    }
  }

  return result;
}

- (CGRect)frameForSegmentWithIdentifier:(int64_t)identifier
{
  sourceTimeline = [(PXStoryRecombinedTimeline *)self sourceTimeline];
  if ([sourceTimeline containsSegmentWithIdentifier:identifier])
  {
    [sourceTimeline frameForSegmentWithIdentifier:identifier];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
    [targetTimeline frameForSegmentWithIdentifier:identifier];
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v13 = v18;
  }

  v19 = v7;
  v20 = v9;
  v21 = v11;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)enumerateSegmentsInTimeRange:(id *)range usingBlock:(id)block
{
  blockCopy = block;
  sourceTimeline = [(PXStoryRecombinedTimeline *)self sourceTimeline];
  [(PXStoryRecombinedTimeline *)self sourceTimeRange];
  v8 = *&range->var0.var3;
  *start = *&range->var0.var0;
  v9 = *&range->var1.var1;
  *&start[16] = v8;
  v20 = v9;
  [sourceTimeline enumerateSegmentsInTimeRange:&lhs usingBlock:{blockCopy, PXStoryTimeRangeIntersection(start, &rhs, &lhs)}];

  memset(&v18, 0, sizeof(v18));
  [(PXStoryRecombinedTimeline *)self targetTimeOffset];
  memset(&v17, 0, sizeof(v17));
  rhs = v18;
  *&lhs.start.value = PXStoryTimeZero;
  lhs.start.epoch = 0;
  CMTimeSubtract(&v17, &lhs.start, &rhs);
  targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
  [(PXStoryRecombinedTimeline *)self targetTimeRangeInSourceTime];
  v11 = *&range->var0.var3;
  *start = *&range->var0.var0;
  v12 = *&range->var1.var1;
  *&start[16] = v11;
  v20 = v12;
  PXStoryTimeRangeIntersection(start, &lhs, &rhs);
  *start = v17;
  lhs.start = rhs;
  CMTimeAdd(&v24, &lhs.start, start);
  duration = v22;
  *start = v24;
  CMTimeRangeMake(&lhs, start, &duration);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PXStoryRecombinedTimeline_enumerateSegmentsInTimeRange_usingBlock___block_invoke;
  v14[3] = &unk_1E772EFA0;
  v16 = v18;
  v14[4] = self;
  v15 = blockCopy;
  v13 = blockCopy;
  [targetTimeline enumerateSegmentsInTimeRange:&lhs usingBlock:v14];
}

void __69__PXStoryRecombinedTimeline_enumerateSegmentsInTimeRange_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PXStoryRecombinedTimeline_enumerateSegmentsInTimeRange_usingBlock___block_invoke_2;
  v13[3] = &unk_1E772EF78;
  v10 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = a2;
  v16 = a4;
  v17 = a5;
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  [v10 _shiftTimeRanges:a3 count:a2 byTime:&v11 resultHandler:v13];
}

- (int64_t)indexOfSegmentWithIdentifier:(int64_t)identifier
{
  sourceTimeline = [(PXStoryRecombinedTimeline *)self sourceTimeline];
  v6 = [sourceTimeline indexOfSegmentWithIdentifier:identifier];
  lastSourceSegmentIndex = [(PXStoryRecombinedTimeline *)self lastSourceSegmentIndex];
  v8 = lastSourceSegmentIndex;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v6 > lastSourceSegmentIndex)
  {
    targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
    v10 = [targetTimeline indexOfSegmentWithIdentifier:identifier];
    firstTargetSegmentIndex = [(PXStoryRecombinedTimeline *)self firstTargetSegmentIndex];
    if (v10 < firstTargetSegmentIndex || v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v8 + v10 - firstTargetSegmentIndex + 1;
    }
  }

  return v6;
}

- (int64_t)identifierForSegmentAtIndex:(int64_t)index
{
  if ([(PXStoryRecombinedTimeline *)self lastSourceSegmentIndex]>= index)
  {
    sourceTimeline = [(PXStoryRecombinedTimeline *)self sourceTimeline];
    targetTimeline = sourceTimeline;
    indexCopy = index;
  }

  else
  {
    targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
    v6 = ~[(PXStoryRecombinedTimeline *)self lastSourceSegmentIndex];
    indexCopy = v6 + index + [(PXStoryRecombinedTimeline *)self firstTargetSegmentIndex];
    sourceTimeline = targetTimeline;
  }

  v9 = [sourceTimeline identifierForSegmentAtIndex:indexCopy];

  return v9;
}

- (int64_t)numberOfSegments
{
  lastSourceSegmentIndex = [(PXStoryRecombinedTimeline *)self lastSourceSegmentIndex];
  targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
  v5 = lastSourceSegmentIndex + [targetTimeline numberOfSegments];
  v6 = v5 - [(PXStoryRecombinedTimeline *)self firstTargetSegmentIndex];

  return v6 + 1;
}

- (id)clipWithIdentifier:(int64_t)identifier
{
  sourceTimeline = [(PXStoryRecombinedTimeline *)self sourceTimeline];
  v6 = [sourceTimeline clipWithIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
    v8 = [targetTimeline clipWithIdentifier:identifier];
  }

  return v8;
}

- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  sourceTimeline = [(PXStoryRecombinedTimeline *)self sourceTimeline];
  [(PXStoryRecombinedTimeline *)self sourceTimeRange];
  v13 = *&range->var0.var3;
  *start = *&range->var0.var0;
  v14 = *&range->var1.var1;
  *&start[16] = v13;
  v25 = v14;
  PXStoryTimeRangeIntersection(start, &rhs, &lhs);
  [sourceTimeline enumerateClipsInTimeRange:&lhs rect:blockCopy usingBlock:{x, y, width, height}];

  memset(&v23, 0, sizeof(v23));
  [(PXStoryRecombinedTimeline *)self targetTimeOffset];
  memset(&v22, 0, sizeof(v22));
  rhs = v23;
  *&lhs.start.value = PXStoryTimeZero;
  lhs.start.epoch = 0;
  CMTimeSubtract(&v22, &lhs.start, &rhs);
  targetTimeline = [(PXStoryRecombinedTimeline *)self targetTimeline];
  [(PXStoryRecombinedTimeline *)self targetTimeRangeInSourceTime];
  v16 = *&range->var0.var3;
  *start = *&range->var0.var0;
  v17 = *&range->var1.var1;
  *&start[16] = v16;
  v25 = v17;
  PXStoryTimeRangeIntersection(start, &lhs, &rhs);
  *start = v22;
  lhs.start = rhs;
  CMTimeAdd(&v29, &lhs.start, start);
  duration = v27;
  *start = v29;
  CMTimeRangeMake(&lhs, start, &duration);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__PXStoryRecombinedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke;
  v19[3] = &unk_1E772EF50;
  v21 = v23;
  v19[4] = self;
  v20 = blockCopy;
  v18 = blockCopy;
  [targetTimeline enumerateClipsInTimeRange:&lhs rect:v19 usingBlock:{x, y, width, height}];
}

void __71__PXStoryRecombinedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__PXStoryRecombinedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke_2;
  v15[3] = &unk_1E772EF28;
  v12 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = a2;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  [v12 _shiftTimeRanges:a3 count:a2 byTime:&v13 resultHandler:v15];
}

- (CGSize)size
{
  [(PXStoryRecombinedTimeline *)self sourceTimeline];
  [objc_claimAutoreleasedReturnValue() size];
  [(PXStoryRecombinedTimeline *)self targetTimeline];
  [objc_claimAutoreleasedReturnValue() size];
  PXSizeMax();
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  [(PXStoryRecombinedTimeline *)self sourceTimeRange];
  [(PXStoryRecombinedTimeline *)self targetTimeRangeInSourceTime];
  return PXStoryTimeRangeUnion(&v7, &v6, retstr);
}

- (PXStoryRecombinedTimeline)initWithSourceTimeline:(id)timeline upToSegmentIndex:(int64_t)index targetTimeline:(id)targetTimeline fromSegmentIndex:(int64_t)segmentIndex
{
  timelineCopy = timeline;
  targetTimelineCopy = targetTimeline;
  v36.receiver = self;
  v36.super_class = PXStoryRecombinedTimeline;
  v13 = [(PXStoryRecombinedTimeline *)&v36 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sourceTimeline, timeline);
    v14->_lastSourceSegmentIndex = index;
    objc_storeStrong(&v14->_targetTimeline, targetTimeline);
    v14->_firstTargetSegmentIndex = segmentIndex;
    v15 = [timelineCopy identifierForSegmentAtIndex:index];
    memset(&v35, 0, sizeof(v35));
    if (timelineCopy)
    {
      [timelineCopy timeRangeForSegmentWithIdentifier:v15];
      [timelineCopy timeRange];
    }

    else
    {
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
    }

    *&start.start.value = v31;
    start.start.epoch = v32;
    *&duration.start.value = PXStoryTimeZero;
    duration.start.epoch = 0;
    CMTimeRangeMake(&v34, &start.start, &duration.start);
    start = v35;
    PXStoryTimeRangeUnion(&v34, &start, &range);
    v16 = *&range.start.value;
    v17 = *&range.duration.timescale;
    *&v14->_sourceTimeRange.start.epoch = *&range.start.epoch;
    *&v14->_sourceTimeRange.duration.timescale = v17;
    *&v14->_sourceTimeRange.start.value = v16;
    v18 = [targetTimelineCopy identifierForSegmentAtIndex:segmentIndex];
    memset(&v34, 0, sizeof(v34));
    if (targetTimelineCopy)
    {
      [targetTimelineCopy timeRangeForSegmentWithIdentifier:v18];
      [targetTimelineCopy timeRange];
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
    }

    range = v27;
    CMTimeRangeGetEnd(&v28, &range);
    range.start = v28;
    *&v27.start.value = PXStoryTimeZero;
    v27.start.epoch = 0;
    CMTimeRangeMake(&duration, &range.start, &v27.start);
    range = v34;
    PXStoryTimeRangeUnion(&range, &duration, &start);
    v19 = *&start.start.value;
    v20 = *&start.duration.timescale;
    *&v14->_targetTimeRange.start.epoch = *&start.start.epoch;
    *&v14->_targetTimeRange.duration.timescale = v20;
    *&v14->_targetTimeRange.start.value = v19;
    start = v14->_sourceTimeRange;
    range = start;
    CMTimeRangeGetEnd(&v27.start, &range);
    v28 = v14->_targetTimeRange.duration;
    *&start.start.value = *&v27.start.value;
    start.start.epoch = v27.start.epoch;
    duration.start = v28;
    CMTimeRangeMake(&range, &start.start, &duration.start);
    v21 = *&range.start.value;
    v22 = *&range.duration.timescale;
    *&v14->_targetTimeRangeInSourceTime.start.epoch = *&range.start.epoch;
    *&v14->_targetTimeRangeInSourceTime.duration.timescale = v22;
    *&v14->_targetTimeRangeInSourceTime.start.value = v21;
    *&v27.start.value = *&v14->_targetTimeRangeInSourceTime.start.value;
    v27.start.epoch = v14->_targetTimeRangeInSourceTime.start.epoch;
    v28 = v14->_targetTimeRange.start;
    *&range.start.value = *&v27.start.value;
    range.start.epoch = v27.start.epoch;
    start.start = v28;
    CMTimeSubtract(&duration.start, &range.start, &start.start);
    v23 = *&duration.start.value;
    v14->_targetTimeOffset.epoch = duration.start.epoch;
    *&v14->_targetTimeOffset.value = v23;
    v24 = [[off_1E7721500 alloc] initWithElementSize:48];
    shiftedTimeRangesStore = v14->_shiftedTimeRangesStore;
    v14->_shiftedTimeRangesStore = v24;
  }

  return v14;
}

- (PXStoryRecombinedTimeline)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRecombinedTimeline.m" lineNumber:131 description:{@"%s is not available as initializer", "-[PXStoryRecombinedTimeline init]"}];

  abort();
}

+ (BOOL)_isSegmentIndex:(int64_t)index inTimeline:(id)timeline visuallyEqualToSegmentIndex:(int64_t)segmentIndex inTimeline:(id)inTimeline
{
  timelineCopy = timeline;
  inTimelineCopy = inTimeline;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 1;
  v11 = [timelineCopy identifierForSegmentAtIndex:index];
  if (timelineCopy)
  {
    [timelineCopy timeRangeForSegmentWithIdentifier:v11];
  }

  v12 = [inTimelineCopy identifierForSegmentAtIndex:segmentIndex];
  if (inTimelineCopy)
  {
    [inTimelineCopy timeRangeForSegmentWithIdentifier:v12];
  }

  [timelineCopy size];
  PXRectWithOriginAndSize();
}

uint64_t __95__PXStoryRecombinedTimeline__isSegmentIndex_inTimeline_visuallyEqualToSegmentIndex_inTimeline___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95__PXStoryRecombinedTimeline__isSegmentIndex_inTimeline_visuallyEqualToSegmentIndex_inTimeline___block_invoke_2;
  v16[3] = &unk_1E772EED8;
  v16[4] = *(a1 + 40);
  v16[5] = a2;
  v16[6] = a4;
  v16[7] = a3;
  v8 = *(a1 + 144);
  v9 = *(a1 + 160);
  v10 = *(a1 + 112);
  v17 = *(a1 + 128);
  v18 = v8;
  v11 = *(a1 + 80);
  v12 = *(a1 + 112);
  v21 = *(a1 + 96);
  v22 = v12;
  v13 = *(a1 + 80);
  v19 = v9;
  v20 = v13;
  v16[8] = a5;
  v16[9] = a6;
  v15[0] = v11;
  v15[1] = v21;
  v15[2] = v10;
  return [v7 enumerateClipsInTimeRange:v15 rect:v16 usingBlock:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

uint64_t __95__PXStoryRecombinedTimeline__isSegmentIndex_inTimeline_visuallyEqualToSegmentIndex_inTimeline___block_invoke_2(uint64_t result, uint64_t a2, __int128 *a3, CGRect *a4, uint64_t a5, _BYTE *a6)
{
  v6 = result;
  if (*(result + 40) == a2)
  {
    if (a2 < 1)
    {
      goto LABEL_18;
    }

    result = CGRectEqualToRect(**(result + 48), *a4);
    if (result)
    {
      v8 = *(v6 + 56) + 24;
      v9 = *(*(v6 + 56) + 16);
      v45 = **(v6 + 56);
      v46 = v9;
      v10 = *(v8 + 8);
      v11 = a3[1];
      v42 = *a3;
      v43 = v11;
      v44 = a3[2];
      v41 = *v8;
      v12 = *(a3 + 24);
      v47 = v10;
      *&time2.value = v12;
      time2.epoch = *(a3 + 5);
      time1 = v41;
      result = CMTimeCompare(&time1, &time2);
      if (!result)
      {
        *&time1.value = v45;
        time1.epoch = v46;
        time2 = *(v6 + 80);
        CMTimeSubtract(&v41, &time1, &time2);
        *&time1.value = v42;
        time1.epoch = v43;
        time2 = *(v6 + 128);
        CMTimeSubtract(&v40, &time1, &time2);
        time1 = v41;
        time2 = v40;
        result = CMTimeCompare(&time1, &time2);
        if (!result)
        {
          v13 = *(v6 + 64);
          if (*(v13 + 152) == *(a5 + 152) && *(v13 + 16) == *(a5 + 16) && *(v13 + 24) == *(a5 + 24) && ((*(a5 + 32) ^ *(v13 + 32)) & 0xDLL) == 0 && *(v13 + 160) == *(a5 + 160) && *(v13 + 168) == *(a5 + 168))
          {
            v14 = *(v13 + 208);
            v15 = *(v13 + 216);
            v16 = *(v13 + 224);
            v17 = *(v13 + 232);
            v36 = *(v13 + 248);
            v37 = *(v13 + 240);
            v34 = *(v13 + 264);
            v35 = *(v13 + 256);
            v28 = *(v13 + 280);
            v29 = *(v13 + 272);
            v26 = *(v13 + 296);
            v27 = *(v13 + 288);
            v18 = *(a5 + 208);
            v19 = *(a5 + 216);
            v20 = *(a5 + 224);
            v21 = *(a5 + 232);
            v32 = *(a5 + 248);
            v33 = *(a5 + 240);
            v30 = *(a5 + 264);
            v31 = *(a5 + 256);
            v24 = *(a5 + 280);
            v25 = *(a5 + 272);
            v22 = *(a5 + 296);
            v23 = *(a5 + 288);
            result = CGRectEqualToRect(*(v13 + 176), *(a5 + 176));
            if (result)
            {
              v50.origin.x = v14;
              v50.origin.y = v15;
              v50.size.width = v16;
              v50.size.height = v17;
              v53.origin.x = v18;
              v53.origin.y = v19;
              v53.size.width = v20;
              v53.size.height = v21;
              result = CGRectEqualToRect(v50, v53);
              if (result)
              {
                v51.origin.y = v36;
                v51.origin.x = v37;
                v51.size.height = v34;
                v51.size.width = v35;
                v54.origin.y = v32;
                v54.origin.x = v33;
                v54.size.height = v30;
                v54.size.width = v31;
                result = CGRectEqualToRect(v51, v54);
                if (result)
                {
                  v52.origin.y = v28;
                  v52.origin.x = v29;
                  v52.size.height = v26;
                  v52.size.width = v27;
                  v55.origin.y = v24;
                  v55.origin.x = v25;
                  v55.size.height = v22;
                  v55.size.width = v23;
                  result = CGRectEqualToRect(v52, v55);
                  if (result)
                  {
                    PXEdgeInsetsEqualToEdgeInsets();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *(*(*(v6 + 32) + 8) + 24) = 0;
LABEL_18:
  if ((*(*(*(v6 + 32) + 8) + 24) & 1) == 0)
  {
    *a6 = 1;
    **(v6 + 72) = 1;
  }

  return result;
}

+ (id)timelineByRecombiningSourceTimeline:(id)timeline withTargetTimeline:(id)targetTimeline visibleSegmentIdentifiers:(id)identifiers
{
  timelineCopy = timeline;
  targetTimelineCopy = targetTimeline;
  identifiersCopy = identifiers;
  v12 = targetTimelineCopy;
  v13 = +[PXStorySettings sharedInstance];
  allowsTimelineRecombination = [v13 allowsTimelineRecombination];
  v15 = [identifiersCopy count];
  [v12 size];
  v17 = v16;
  v19 = v18;
  [timelineCopy size];
  v21 = v20;
  v23 = v22;
  dataSourceIdentifier = [v12 dataSourceIdentifier];
  dataSourceIdentifier2 = [timelineCopy dataSourceIdentifier];
  v26 = v12;
  if (timelineCopy)
  {
    v26 = v12;
    if (v12 != timelineCopy)
    {
      v26 = v12;
      if (dataSourceIdentifier == dataSourceIdentifier2)
      {
        v26 = v12;
        if (v17 == v21)
        {
          v26 = v12;
          if (v19 == v23)
          {
            v26 = v12;
            if (v15)
            {
              v26 = v12;
              if (allowsTimelineRecombination)
              {
                v26 = v12;
                if (([v12 containsAllSegmentsWithIdentifiers:identifiersCopy] & 1) == 0)
                {
                  v45 = 0;
                  v46 = &v45;
                  v47 = 0x2020000000;
                  v48 = 0x7FFFFFFFFFFFFFFFLL;
                  v40[0] = MEMORY[0x1E69E9820];
                  v40[1] = 3221225472;
                  v40[2] = __110__PXStoryRecombinedTimeline_timelineByRecombiningSourceTimeline_withTargetTimeline_visibleSegmentIdentifiers___block_invoke;
                  v40[3] = &unk_1E7747118;
                  v27 = timelineCopy;
                  v43 = a2;
                  selfCopy = self;
                  v41 = v27;
                  v42 = &v45;
                  [identifiersCopy enumerateIndexesUsingBlock:v40];
                  v26 = v12;
                  if (v46[3] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v28 = [v12 identifiersOfSegmentsMatchingSegmentWithIdentifier:objc_msgSend(v27 inTimeline:{"identifierForSegmentAtIndex:"), v27}];
                    v36 = 0;
                    v37 = &v36;
                    v38 = 0x2020000000;
                    v39 = 0x7FFFFFFFFFFFFFFFLL;
                    v33[0] = MEMORY[0x1E69E9820];
                    v33[1] = 3221225472;
                    v33[2] = __110__PXStoryRecombinedTimeline_timelineByRecombiningSourceTimeline_withTargetTimeline_visibleSegmentIdentifiers___block_invoke_1;
                    v33[3] = &unk_1E773BA28;
                    v26 = v12;
                    v34 = v26;
                    v35 = &v36;
                    [v28 enumerateIndexesUsingBlock:v33];
                    v29 = v37[3];
                    if (v29 != 0x7FFFFFFFFFFFFFFFLL && v29 < [v26 numberOfSegments] - 1 && ((objc_msgSend(v13, "shouldRecombineTimelineWithSameVisibleSegments") & 1) != 0 || objc_msgSend(identifiersCopy, "count") != 1 || (objc_msgSend(self, "_isSegmentIndex:inTimeline:visuallyEqualToSegmentIndex:inTimeline:", v46[3], v27, v37[3], v26) & 1) == 0))
                    {
                      v30 = [self alloc];
                      v31 = [v30 initWithSourceTimeline:v27 upToSegmentIndex:v46[3] targetTimeline:v26 fromSegmentIndex:v37[3] + 1];

                      v26 = v31;
                    }

                    _Block_object_dispose(&v36, 8);
                  }

                  _Block_object_dispose(&v45, 8);
                }
              }
            }
          }
        }
      }
    }
  }

  return v26;
}

uint64_t __110__PXStoryRecombinedTimeline_timelineByRecombiningSourceTimeline_withTargetTimeline_visibleSegmentIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) indexOfSegmentWithIdentifier:a2];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    PXAssertGetLog();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v4 + 24) = result;
  }

  else
  {
    if (v5 <= result)
    {
      v6 = result;
    }

    else
    {
      v6 = *(v4 + 24);
    }

    *(v4 + 24) = v6;
  }

  return result;
}

uint64_t __110__PXStoryRecombinedTimeline_timelineByRecombiningSourceTimeline_withTargetTimeline_visibleSegmentIdentifiers___block_invoke_1(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) indexOfSegmentWithIdentifier:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || result > v5)
  {
    *(v4 + 24) = result;
  }

  return result;
}

@end