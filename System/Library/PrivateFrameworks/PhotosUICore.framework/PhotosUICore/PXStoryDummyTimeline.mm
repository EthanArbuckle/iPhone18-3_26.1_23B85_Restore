@interface PXStoryDummyTimeline
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (CGSize)size;
- (PXStoryDummyTimeline)init;
- (PXStoryDummyTimeline)initWithSize:(CGSize)size;
- (PXStoryDummyTimeline)initWithTimeline:(id)timeline;
- (id)clipWithIdentifier:(int64_t)identifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block;
- (void)enumerateSegmentsInTimeRange:(id *)range usingBlock:(id)block;
- (void)setNumberOfClips:(int64_t)clips;
- (void)setNumberOfSegments:(int64_t)segments;
@end

@implementation PXStoryDummyTimeline

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  v3 = *&self->var1.var0;
  *&retstr->var0.var0 = *&self->var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self->var1.var3;
  return self;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PXStoryMutableDummyTimeline alloc];

  return [(PXStoryDummyTimeline *)v4 initWithTimeline:self];
}

- (void)enumerateSegmentsInTimeRange:(id *)range usingBlock:(id)block
{
  blockCopy = block;
  [(PXStoryDummyTimeline *)self numberOfSegments];
  v6 = blockCopy;
  PXEnumerateSubrangesMatchingTestUsingBlock();
}

BOOL __64__PXStoryDummyTimeline_enumerateSegmentsInTimeRange_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a1 + 32) + 96) + 48 * a2);
  v3 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v3;
  v7[2] = *(a1 + 72);
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  v6[2] = v2[2];
  return PXStoryTimeRangeIntersectsTimeRange(v7, v6);
}

- (id)clipWithIdentifier:(int64_t)identifier
{
  clipsByIdentifier = self->_clipsByIdentifier;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  v5 = [(NSMutableDictionary *)clipsByIdentifier objectForKeyedSubscript:v4];

  return v5;
}

- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block
{
  blockCopy = block;
  [(PXStoryDummyTimeline *)self numberOfClips];
  v7 = blockCopy;
  PXEnumerateSubrangesMatchingTestUsingBlock();
}

BOOL __66__PXStoryDummyTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 32) + 64) + 48 * a2);
  v5 = v4[1];
  v18[0] = *v4;
  v18[1] = v5;
  v18[2] = v4[2];
  v6 = *(a1 + 88);
  v17[0] = *(a1 + 72);
  v17[1] = v6;
  v17[2] = *(a1 + 104);
  result = PXStoryTimeRangeIntersectsTimeRange(v18, v17);
  if (result)
  {
    v8 = (*(*(a1 + 32) + 72) + 32 * a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);

    return CGRectIntersectsRect(*&v9, *&v13);
  }

  return result;
}

- (void)setNumberOfSegments:(int64_t)segments
{
  if (self->_numberOfSegments != segments)
  {
    self->_numberOfSegments = segments;
    segmentCapacity = self->_segmentCapacity;
    if (segmentCapacity < segments)
    {
      if (segmentCapacity)
      {
        do
        {
          segmentCapacity *= 2;
          self->_segmentCapacity = segmentCapacity;
        }

        while (segmentCapacity < self->_numberOfSegments);
      }

      else
      {
        self->_segmentCapacity = segments;
      }

      _PXGArrayResize();
    }
  }
}

- (void)setNumberOfClips:(int64_t)clips
{
  if (self->_numberOfClips != clips)
  {
    self->_numberOfClips = clips;
    clipCapacity = self->_clipCapacity;
    if (clipCapacity < clips)
    {
      if (clipCapacity)
      {
        do
        {
          clipCapacity *= 2;
          self->_clipCapacity = clipCapacity;
        }

        while (clipCapacity < self->_numberOfClips);
      }

      else
      {
        self->_clipCapacity = clips;
      }

      _PXGArrayResize();
    }
  }
}

- (void)dealloc
{
  free(self->_clipTimeRanges);
  free(self->_clipFrames);
  free(self->_clipInfos);
  free(self->_segmentTimeRanges);
  free(self->_segmentInfos);
  v3.receiver = self;
  v3.super_class = PXStoryDummyTimeline;
  [(PXStoryDummyTimeline *)&v3 dealloc];
}

- (PXStoryDummyTimeline)initWithTimeline:(id)timeline
{
  timelineCopy = timeline;
  [timelineCopy size];
  v5 = [(PXStoryDummyTimeline *)self initWithSize:?];
  v6 = v5;
  if (v5)
  {
    v8 = *(timelineCopy + 24);
    v7 = *(timelineCopy + 40);
    *&v5->_timeRange.start.value = *(timelineCopy + 8);
    *&v5->_timeRange.start.epoch = v8;
    *&v5->_timeRange.duration.timescale = v7;
    numberOfClips = [timelineCopy numberOfClips];
    [(PXStoryDummyTimeline *)v6 setNumberOfClips:numberOfClips];
    if (numberOfClips >= 1)
    {
      memcpy(v6->_clipTimeRanges, *(timelineCopy + 8), 48 * numberOfClips);
      memcpy(v6->_clipFrames, *(timelineCopy + 9), 32 * numberOfClips);
      memcpy(v6->_clipInfos, *(timelineCopy + 10), 768 * numberOfClips);
    }

    numberOfSegments = [timelineCopy numberOfSegments];
    [(PXStoryDummyTimeline *)v6 setNumberOfSegments:numberOfSegments];
    if (numberOfSegments >= 1)
    {
      memcpy(v6->_segmentTimeRanges, *(timelineCopy + 12), 48 * numberOfSegments);
      memcpy(v6->_segmentInfos, *(timelineCopy + 13), 200 * numberOfSegments);
    }

    [(NSMutableDictionary *)v6->_clipsByIdentifier setDictionary:*(timelineCopy + 14)];
    v11 = [*(timelineCopy + 15) copy];
    resourceOccurrenceCounts = v6->_resourceOccurrenceCounts;
    v6->_resourceOccurrenceCounts = v11;
  }

  return v6;
}

- (PXStoryDummyTimeline)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = PXStoryDummyTimeline;
  v5 = [(PXStoryDummyTimeline *)&v12 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 18) = width;
    *(v5 + 19) = height;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clipsByIdentifier = v6->_clipsByIdentifier;
    v6->_clipsByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696AB50]);
    resourceOccurrenceCounts = v6->_resourceOccurrenceCounts;
    v6->_resourceOccurrenceCounts = v9;
  }

  return v6;
}

- (PXStoryDummyTimeline)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDummyTimeline.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXStoryDummyTimeline init]"}];

  abort();
}

@end