@interface PXStoryTransitionTimeline
- ($0AC6E346AE4835514AAA8AC86D8F4844)transitionInfo;
- ($E9652187ED52268AF32221FF65D551B7)_transitionClipInfoWithIdentifier:(SEL)identifier fromOriginalClipInfo:(int64_t)info;
- (CGPoint)_offsetBetweenSegmentWithIdentifier:(int64_t)identifier andSegmentWithIdentifier:(int64_t)withIdentifier;
- (PXStoryTransitionTimeline)initWithOriginalTimeline:(id)timeline;
- (PXStoryTransitionTimeline)initWithOriginalTimeline:(id)timeline transitionInfo:(id)info;
- (id)clipWithIdentifier:(int64_t)identifier;
- (int64_t)numberOfSegments;
- (void)_modifyClipsIfNeeded:(id *)needed frames:(const CGRect *)frames infos:(id *)infos count:(int64_t)count resultHandler:(id)handler;
- (void)_modifySegmentsIfNeeded:(id *)needed infos:(id *)infos count:(int64_t)count resultHandler:(id)handler;
- (void)_prepareForTransitionInfo:(id)info;
- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block;
- (void)enumerateSegmentsInTimeRange:(id *)range usingBlock:(id)block;
@end

@implementation PXStoryTransitionTimeline

- ($0AC6E346AE4835514AAA8AC86D8F4844)transitionInfo
{
  p_transitionInfo = &self->_transitionInfo;
  fromSegmentIdentifier = self->_transitionInfo.fromSegmentIdentifier;
  toSegmentIdentifier = p_transitionInfo->toSegmentIdentifier;
  result.var1 = toSegmentIdentifier;
  result.var0 = fromSegmentIdentifier;
  return result;
}

- ($E9652187ED52268AF32221FF65D551B7)_transitionClipInfoWithIdentifier:(SEL)identifier fromOriginalClipInfo:(int64_t)info
{
  if ((a5->var5 - 3) < 3)
  {
    var5 = 1;
  }

  else
  {
    var5 = a5->var5;
  }

  result = memcpy(retstr, a5, 0x300uLL);
  retstr->var0 = info;
  retstr->var5 = var5;
  return result;
}

- (id)clipWithIdentifier:(int64_t)identifier
{
  originalClipIdentifiersByDuplicateClipIdentifiers = self->_originalClipIdentifiersByDuplicateClipIdentifiers;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)originalClipIdentifiersByDuplicateClipIdentifiers objectForKeyedSubscript:v6];

  if (v7)
  {
    v16.receiver = self;
    v16.super_class = PXStoryTransitionTimeline;
    v8 = -[PXStoryDerivedTimeline clipWithIdentifier:](&v16, sel_clipWithIdentifier_, [v7 integerValue]);
    v9 = v8;
    memset(__src, 0, 512);
    if (v8)
    {
      [v8 info];
    }

    else
    {
      bzero(__dst, 0x300uLL);
    }

    [(PXStoryTransitionTimeline *)self _transitionClipInfoWithIdentifier:identifier fromOriginalClipInfo:__dst];
    v11 = [PXStoryTransitionClip alloc];
    memcpy(__dst, __src, sizeof(__dst));
    v10 = [(PXStoryTransitionClip *)v11 initWithClipInfo:__dst originalClip:v9];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PXStoryTransitionTimeline;
    v10 = [(PXStoryDerivedTimeline *)&v13 clipWithIdentifier:identifier];
  }

  return v10;
}

- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__PXStoryTransitionTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke;
  v16[3] = &unk_1E77380E8;
  v16[4] = self;
  v17 = blockCopy;
  v13 = *&range->var0.var3;
  v15[0] = *&range->var0.var0;
  v15[1] = v13;
  v15[2] = *&range->var1.var1;
  v14 = blockCopy;
  [originalTimeline enumerateClipsInTimeRange:v15 rect:v16 usingBlock:{x, y, width, height}];
}

void __71__PXStoryTransitionTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PXStoryTransitionTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke_2;
  v12[3] = &unk_1E7732718;
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = a6;
  [v11 _modifyClipsIfNeeded:a3 frames:a4 infos:a5 count:a2 resultHandler:v12];
}

- (void)enumerateSegmentsInTimeRange:(id *)range usingBlock:(id)block
{
  blockCopy = block;
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PXStoryTransitionTimeline_enumerateSegmentsInTimeRange_usingBlock___block_invoke;
  v11[3] = &unk_1E77326F0;
  v11[4] = self;
  v12 = blockCopy;
  v8 = *&range->var0.var3;
  v10[0] = *&range->var0.var0;
  v10[1] = v8;
  v10[2] = *&range->var1.var1;
  v9 = blockCopy;
  [originalTimeline enumerateSegmentsInTimeRange:v10 usingBlock:v11];
}

void __69__PXStoryTransitionTimeline_enumerateSegmentsInTimeRange_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PXStoryTransitionTimeline_enumerateSegmentsInTimeRange_usingBlock___block_invoke_2;
  v10[3] = &unk_1E77326C8;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a5;
  [v9 _modifySegmentsIfNeeded:a3 infos:a4 count:a2 resultHandler:v10];
}

- (int64_t)numberOfSegments
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  numberOfSegments = [originalTimeline numberOfSegments];

  if (self->_duplicateSegmentIdentifier)
  {
    return numberOfSegments + 1;
  }

  else
  {
    return numberOfSegments;
  }
}

- (void)_modifyClipsIfNeeded:(id *)needed frames:(const CGRect *)frames infos:(id *)infos count:(int64_t)count resultHandler:(id)handler
{
  handlerCopy = handler;
  v13 = [(NSMutableIndexSet *)self->_clipIdentifiersInTransition count]+ count;
  clipTimeRanges = [(PXStoryTransitionTimeline *)self clipTimeRanges];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__PXStoryTransitionTimeline__modifyClipsIfNeeded_frames_infos_count_resultHandler___block_invoke;
  v16[3] = &unk_1E7732678;
  v18 = v13;
  countCopy = count;
  infosCopy = infos;
  framesCopy = frames;
  neededCopy = needed;
  v16[4] = self;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [clipTimeRanges accessArrayWithElementsCount:v13 accessBlock:v16];
}

void __83__PXStoryTransitionTimeline__modifyClipsIfNeeded_frames_infos_count_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) clipFrames];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__PXStoryTransitionTimeline__modifyClipsIfNeeded_frames_infos_count_resultHandler___block_invoke_2;
  v8[3] = &unk_1E77326A0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v6 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = v6;
  v7 = *(a1 + 80);
  v12 = a2;
  v13 = v7;
  v9 = v5;
  [v4 accessArrayWithElementsCount:v10 accessBlock:v8];
}

void __83__PXStoryTransitionTimeline__modifyClipsIfNeeded_frames_infos_count_resultHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) clipInfos];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v5 = *(a1 + 80);
  v12 = *(a1 + 64);
  v9[2] = __83__PXStoryTransitionTimeline__modifyClipsIfNeeded_frames_infos_count_resultHandler___block_invoke_3;
  v9[3] = &unk_1E77326A0;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = *(a1 + 56);
  v9[4] = v7;
  v13 = a2;
  v14 = v5;
  v10 = v8;
  [v4 accessArrayWithElementsCount:v6 accessBlock:v9];
}

uint64_t __83__PXStoryTransitionTimeline__modifyClipsIfNeeded_frames_infos_count_resultHandler___block_invoke_3(void *a1, uint64_t a2)
{
  if (a1[6] >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      if ([*(a1[4] + 16) containsIndex:*(a1[7] + v6)])
      {
        PXRectGetCenter();
      }

      v9 = (a1[9] + 32 * v7);
      v10 = (a1[8] + v5);
      v11 = v10[1];
      *v9 = *v10;
      v9[1] = v11;
      v12 = (a1[10] + 48 * v7);
      v13 = (a1[11] + v4);
      v14 = *v13;
      v15 = v13[2];
      v12[1] = v13[1];
      v12[2] = v15;
      *v12 = v14;
      memcpy((a2 + 768 * v7), (a1[7] + v6), 0x300uLL);
      ++v8;
      v6 += 768;
      v5 += 32;
      v4 += 48;
      ++v7;
    }

    while (v8 < a1[6]);
  }

  return (*(a1[5] + 16))();
}

- (void)_modifySegmentsIfNeeded:(id *)needed infos:(id *)infos count:(int64_t)count resultHandler:(id)handler
{
  handlerCopy = handler;
  v11 = count + 1;
  transitionInfo = [(PXStoryTransitionTimeline *)self transitionInfo];
  segmentTimeRanges = [(PXStoryTransitionTimeline *)self segmentTimeRanges];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PXStoryTransitionTimeline__modifySegmentsIfNeeded_infos_count_resultHandler___block_invoke;
  v15[3] = &unk_1E7732678;
  v17 = count + 1;
  countCopy = count;
  infosCopy = infos;
  neededCopy = needed;
  v21 = transitionInfo;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [segmentTimeRanges accessArrayWithElementsCount:v11 accessBlock:v15];
}

void __79__PXStoryTransitionTimeline__modifySegmentsIfNeeded_infos_count_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) segmentInfos];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__PXStoryTransitionTimeline__modifySegmentsIfNeeded_infos_count_resultHandler___block_invoke_2;
  v11[3] = &unk_1E7732678;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 72);
  v14 = *(a1 + 64);
  v15 = a2;
  v8 = *(a1 + 80);
  v16 = v7;
  v17 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v5;
  v11[4] = v9;
  v12 = v10;
  [v4 accessArrayWithElementsCount:v6 accessBlock:v11];
}

uint64_t __79__PXStoryTransitionTimeline__modifySegmentsIfNeeded_infos_count_resultHandler___block_invoke_2(void *a1, uint64_t a2)
{
  if (a1[6] >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1[7] + v3);
      v7 = (a1[8] + 48 * v4);
      v8 = (a1[9] + v2);
      v9 = *v8;
      v10 = v8[2];
      v7[1] = v8[1];
      v7[2] = v10;
      *v7 = v9;
      v11 = a2 + 200 * v4;
      v12 = a1[7] + v3;
      *v11 = *v12;
      v13 = *(v12 + 16);
      v14 = *(v12 + 32);
      v15 = *(v12 + 64);
      *(v11 + 48) = *(v12 + 48);
      *(v11 + 64) = v15;
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      v16 = *(v12 + 80);
      v17 = *(v12 + 96);
      v18 = *(v12 + 128);
      *(v11 + 112) = *(v12 + 112);
      *(v11 + 128) = v18;
      *(v11 + 80) = v16;
      *(v11 + 96) = v17;
      v19 = *(v12 + 144);
      v20 = *(v12 + 160);
      v21 = *(v12 + 176);
      *(v11 + 192) = *(v12 + 192);
      *(v11 + 160) = v20;
      *(v11 + 176) = v21;
      *(v11 + 144) = v19;
      v22 = v4 + 1;
      if (v6 == a1[10])
      {
        v23 = (a1[8] + 48 * v22);
        v24 = (a1[9] + v2);
        v25 = *v24;
        v26 = v24[2];
        v23[1] = v24[1];
        v23[2] = v26;
        *v23 = v25;
        v27 = a2 + 200 * v22;
        v28 = a1[7] + v3;
        *v27 = *v28;
        v29 = *(v28 + 16);
        v30 = *(v28 + 32);
        v31 = *(v28 + 64);
        *(v27 + 48) = *(v28 + 48);
        *(v27 + 64) = v31;
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        v32 = *(v28 + 80);
        v33 = *(v28 + 96);
        v34 = *(v28 + 128);
        *(v27 + 112) = *(v28 + 112);
        *(v27 + 128) = v34;
        *(v27 + 80) = v32;
        *(v27 + 96) = v33;
        v35 = *(v28 + 144);
        v36 = *(v28 + 160);
        v37 = *(v28 + 176);
        *(v27 + 192) = *(v28 + 192);
        *(v27 + 160) = v36;
        *(v27 + 176) = v37;
        *(v27 + 144) = v35;
        *v27 = *(a1[4] + 88);
        v22 = v4 + 2;
      }

      ++v5;
      v3 += 200;
      v2 += 48;
      v4 = v22;
    }

    while (v5 < a1[6]);
  }

  return (*(a1[5] + 16))(a1[5], a1[8], a2);
}

- (CGPoint)_offsetBetweenSegmentWithIdentifier:(int64_t)identifier andSegmentWithIdentifier:(int64_t)withIdentifier
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  [originalTimeline frameForSegmentWithIdentifier:identifier];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [originalTimeline frameForSegmentWithIdentifier:withIdentifier];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24.origin.x = v8;
  v24.origin.y = v10;
  v24.size.width = v12;
  v24.size.height = v14;
  CGRectGetMinX(v24);
  v25.origin.x = v8;
  v25.origin.y = v10;
  v25.size.width = v12;
  v25.size.height = v14;
  CGRectGetMinY(v25);
  v26.origin.x = v16;
  v26.origin.y = v18;
  v26.size.width = v20;
  v26.size.height = v22;
  CGRectGetMinX(v26);
  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  CGRectGetMinY(v27);
  PXPointSubtract();
}

- (void)_prepareForTransitionInfo:(id)info
{
  if (info.var0 | info.var1)
  {
    originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
    transitionInfo = [(PXStoryTransitionTimeline *)self transitionInfo];
    v7 = v6;
    [originalTimeline frameForSegmentWithIdentifier:transitionInfo];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    p_fromSegmentTimeRange = &self->_fromSegmentTimeRange;
    if (originalTimeline)
    {
      [originalTimeline timeRangeForSegmentWithIdentifier:transitionInfo];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
    }

    v17 = v23;
    *&p_fromSegmentTimeRange->start.value = v22;
    *&self->_fromSegmentTimeRange.start.epoch = v17;
    *&self->_fromSegmentTimeRange.duration.timescale = v24;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55__PXStoryTransitionTimeline__prepareForTransitionInfo___block_invoke;
    v21[3] = &unk_1E773B178;
    v21[4] = self;
    v18 = *&self->_fromSegmentTimeRange.start.epoch;
    v22 = *&p_fromSegmentTimeRange->start.value;
    v23 = v18;
    v24 = *&self->_fromSegmentTimeRange.duration.timescale;
    [originalTimeline enumerateClipsInTimeRange:&v22 rect:v21 usingBlock:{v9, v11, v13, v15}];
    [(PXStoryTransitionTimeline *)self _offsetBetweenSegmentWithIdentifier:transitionInfo andSegmentWithIdentifier:v7];
    self->_fromSegmentClipOffset.x = v19;
    self->_fromSegmentClipOffset.y = v20;
    self->_duplicateSegmentIdentifier = transitionInfo + 1000000;
  }
}

void __55__PXStoryTransitionTimeline__prepareForTransitionInfo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 >= 1)
  {
    v27 = v14;
    v28 = v13;
    v29 = v12;
    v30 = v11;
    v31 = v10;
    v32 = v9;
    v33 = v8;
    v34 = v7;
    v35 = v6;
    v36 = v5;
    v37 = v15;
    v38 = v16;
    v18 = a2;
    do
    {
      v20 = *a5;
      [*(*(a1 + 32) + 16) addIndex:{*a5, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38}];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
      v22 = *(*(a1 + 32) + 96);
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:v20 + 1000000];
      [v22 setObject:v21 forKeyedSubscript:v23];

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v20 + 1000000];
      v25 = *(*(a1 + 32) + 104);
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
      [v25 setObject:v24 forKeyedSubscript:v26];

      a5 += 96;
      --v18;
    }

    while (v18);
  }
}

- (PXStoryTransitionTimeline)initWithOriginalTimeline:(id)timeline transitionInfo:(id)info
{
  var1 = info.var1;
  var0 = info.var0;
  v24.receiver = self;
  v24.super_class = PXStoryTransitionTimeline;
  v6 = [(PXStoryDerivedTimeline *)&v24 initWithOriginalTimeline:timeline];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
    clipIdentifiersInTransition = v6->_clipIdentifiersInTransition;
    v6->_clipIdentifiersInTransition = v7;

    v9 = [[off_1E7721500 alloc] initWithElementSize:48];
    segmentTimeRanges = v6->_segmentTimeRanges;
    v6->_segmentTimeRanges = v9;

    v11 = [[off_1E7721500 alloc] initWithElementSize:200];
    segmentInfos = v6->_segmentInfos;
    v6->_segmentInfos = v11;

    v13 = [[off_1E7721500 alloc] initWithElementSize:48];
    clipTimeRanges = v6->_clipTimeRanges;
    v6->_clipTimeRanges = v13;

    v15 = [[off_1E7721500 alloc] initWithElementSize:32];
    clipFrames = v6->_clipFrames;
    v6->_clipFrames = v15;

    v17 = [[off_1E7721500 alloc] initWithElementSize:768];
    clipInfos = v6->_clipInfos;
    v6->_clipInfos = v17;

    v6->_transitionInfo.fromSegmentIdentifier = var0;
    v6->_transitionInfo.toSegmentIdentifier = var1;
    v6->_duplicateSegmentIdentifier = 0;
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    originalClipIdentifiersByDuplicateClipIdentifiers = v6->_originalClipIdentifiersByDuplicateClipIdentifiers;
    v6->_originalClipIdentifiersByDuplicateClipIdentifiers = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    duplicateClipIdentifiersByOriginalClipIdentifiers = v6->_duplicateClipIdentifiersByOriginalClipIdentifiers;
    v6->_duplicateClipIdentifiersByOriginalClipIdentifiers = v21;

    [(PXStoryTransitionTimeline *)v6 _prepareForTransitionInfo:var0, var1];
  }

  return v6;
}

- (PXStoryTransitionTimeline)initWithOriginalTimeline:(id)timeline
{
  timelineCopy = timeline;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransitionTimeline.m" lineNumber:53 description:{@"%s is not available as initializer", "-[PXStoryTransitionTimeline initWithOriginalTimeline:]"}];

  abort();
}

@end