@interface PXStoryAspectFittingTimeline
- (PXStoryAspectFittingTimeline)initWithOriginalTimeline:(id)timeline keySegmentMix:(id *)mix;
- (void)_enumerateClipsKeySegmentWithTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block;
- (void)_setupKeySegmentDisplayAssetClips;
- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block;
@end

@implementation PXStoryAspectFittingTimeline

- (void)_enumerateClipsKeySegmentWithTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v37 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __87__PXStoryAspectFittingTimeline__enumerateClipsKeySegmentWithTimeRange_rect_usingBlock___block_invoke;
  v34[3] = &unk_1E7743FC0;
  v12 = blockCopy;
  v35 = v12;
  v33.receiver = self;
  v33.super_class = PXStoryAspectFittingTimeline;
  v13 = *&range->var0.var3;
  v24[0] = *&range->var0.var0;
  v24[1] = v13;
  v24[2] = *&range->var1.var1;
  [(PXStoryDerivedTimeline *)&v33 enumerateClipsInTimeRange:v24 rect:v34 usingBlock:x, y, width, height];
  v32 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  keySegmentDisplayAssetClips = [(PXStoryAspectFittingTimeline *)self keySegmentDisplayAssetClips];
  v15 = [keySegmentDisplayAssetClips countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v29 != v17)
      {
        objc_enumerationMutation(keySegmentDisplayAssetClips);
      }

      v19 = *(*(&v28 + 1) + 8 * v18);
      [v19 clipFrame];
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      if (CGRectIntersectsRect(v38, v39))
      {
        v26 = 0u;
        v27 = 0u;
        [v19 transformedFrame];
        *&v26 = v20;
        *(&v26 + 1) = v21;
        *&v27 = v22;
        *(&v27 + 1) = v23;
        memset(v25, 0, sizeof(v25));
        if (v19)
        {
          [v19 clipTimeRange];
          memset(&v24[30], 0, 32);
          [v19 clipInfo];
        }

        else
        {
          bzero(v24, 0x300uLL);
        }

        (*(v12 + 2))(v12, 1, v25, &v26, v24, &v32);
        if (v32)
        {
          break;
        }
      }

      if (v16 == ++v18)
      {
        v16 = [keySegmentDisplayAssetClips countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t __87__PXStoryAspectFittingTimeline__enumerateClipsKeySegmentWithTimeRange_rect_usingBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    do
    {
      if (*(a5 + 8) != 1)
      {
        result = (*(*(v9 + 32) + 16))();
      }

      a4 += 32;
      a3 += 48;
      a5 += 768;
      --v8;
    }

    while (v8);
  }

  return result;
}

- (void)_setupKeySegmentDisplayAssetClips
{
  v3 = *MEMORY[0x1E69E9840];
  if (!self->_keySegmentDisplayAssetClips)
  {
    v2.receiver = self;
    v2.super_class = PXStoryAspectFittingTimeline;
    [(PXStoryDerivedTimeline *)&v2 frameForSegmentWithIdentifier:[(PXStoryAspectFittingTimeline *)self keySegmentIdentifier]];
    PXSizeGetAspectRatio();
  }
}

void __65__PXStoryAspectFittingTimeline__setupKeySegmentDisplayAssetClips__block_invoke(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v9 = (a4 + 16);
    do
    {
      if (a5[1] == 1)
      {
        v10 = [*(a1 + 32) clipWithIdentifier:*a5];
        v11 = objc_alloc_init(_PXStoryAspectFittingTimeline_DisplayAssetClip);
        [(_PXStoryAspectFittingTimeline_DisplayAssetClip *)v11 setClipFrame:*(v9 - 2), *(v9 - 1), *v9, v9[1]];
        v12 = a3[1];
        v15[0] = *a3;
        v15[1] = v12;
        v15[2] = a3[2];
        [(_PXStoryAspectFittingTimeline_DisplayAssetClip *)v11 setClipTimeRange:v15];
        memcpy(v15, a5, 0x300uLL);
        [(_PXStoryAspectFittingTimeline_DisplayAssetClip *)v11 setClipInfo:v15];
        v13 = [v10 resource];
        v14 = [v13 px_storyResourceDisplayAsset];
        [(_PXStoryAspectFittingTimeline_DisplayAssetClip *)v11 setDisplayAsset:v14];

        [*(a1 + 40) addObject:v11];
      }

      a3 += 3;
      v9 += 4;
      a5 += 96;
      --v7;
    }

    while (v7);
  }
}

void __65__PXStoryAspectFittingTimeline__setupKeySegmentDisplayAssetClips__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setWeight:{(1.0 / *(a1 + 40)), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  memset(&v25[1], 0, sizeof(CMTimeRange));
  [(PXStoryDerivedTimeline *)self timeRangeForSegmentWithIdentifier:[(PXStoryAspectFittingTimeline *)self keySegmentIdentifier]];
  v12 = *&range->var0.var3;
  *&lhs.start.value = *&range->var0.var0;
  *&lhs.start.epoch = v12;
  *&lhs.duration.timescale = *&range->var1.var1;
  v25[0] = v25[1];
  if (PXStoryTimeRangeIntersectsTimeRange(&lhs, v25))
  {
    memset(v25, 0, 48);
    v13 = *&range->var0.var3;
    *&lhs.start.value = *&range->var0.var0;
    *&lhs.start.epoch = v13;
    *&lhs.duration.timescale = *&range->var1.var1;
    v23 = v25[1];
    PXStoryTimeRangeIntersection(&lhs, &v23, v25);
    memset(&v23, 0, sizeof(v23));
    *&lhs.start.value = *&v25[0].start.value;
    lhs.start.epoch = v25[0].start.epoch;
    *&rhs.start.value = *&range->var0.var0;
    rhs.start.epoch = range->var0.var3;
    CMTimeSubtract(&duration, &lhs.start, &rhs.start);
    *&lhs.start.value = *&v25[0].start.value;
    lhs.start.epoch = v25[0].start.epoch;
    rhs.start = duration;
    CMTimeRangeMake(&v23, &lhs.start, &rhs.start);
    memset(&rhs, 0, sizeof(rhs));
    lhs = v25[0];
    CMTimeRangeGetEnd(&v21, &lhs);
    v14 = *&range->var0.var3;
    *&lhs.start.value = *&range->var0.var0;
    *&lhs.start.epoch = v14;
    *&lhs.duration.timescale = *&range->var1.var1;
    CMTimeRangeGetEnd(&v19, &lhs);
    lhs = v25[0];
    CMTimeRangeGetEnd(&v18, &lhs);
    lhs.start = v19;
    duration = v18;
    CMTimeSubtract(&v20, &lhs.start, &duration);
    lhs.start = v21;
    duration = v20;
    CMTimeRangeMake(&rhs, &lhs.start, &duration);
    v17.receiver = self;
    v17.super_class = PXStoryAspectFittingTimeline;
    lhs = v23;
    [(PXStoryDerivedTimeline *)&v17 enumerateClipsInTimeRange:&lhs rect:blockCopy usingBlock:x, y, width, height];
    lhs = v25[0];
    [(PXStoryAspectFittingTimeline *)self _enumerateClipsKeySegmentWithTimeRange:&lhs rect:blockCopy usingBlock:x, y, width, height];
    lhs = rhs;
    [(PXStoryDerivedTimeline *)&v16 enumerateClipsInTimeRange:&lhs rect:blockCopy usingBlock:x, y, width, height, self, PXStoryAspectFittingTimeline];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PXStoryAspectFittingTimeline;
    v15 = *&range->var0.var3;
    *&lhs.start.value = *&range->var0.var0;
    *&lhs.start.epoch = v15;
    *&lhs.duration.timescale = *&range->var1.var1;
    [(PXStoryDerivedTimeline *)&v24 enumerateClipsInTimeRange:&lhs rect:blockCopy usingBlock:x, y, width, height, v16.receiver, v16.super_class];
  }
}

- (PXStoryAspectFittingTimeline)initWithOriginalTimeline:(id)timeline keySegmentMix:(id *)mix
{
  v9.receiver = self;
  v9.super_class = PXStoryAspectFittingTimeline;
  v5 = [(PXStoryDerivedTimeline *)&v9 initWithOriginalTimeline:timeline];
  v6 = v5;
  if (v5)
  {
    p_var2 = &mix->var2;
    if (mix->var1 <= 0.5)
    {
      p_var2 = mix;
    }

    v5->_keySegmentIdentifier = p_var2->var0;
    [(PXStoryAspectFittingTimeline *)v5 _setupKeySegmentDisplayAssetClips];
  }

  return v6;
}

@end