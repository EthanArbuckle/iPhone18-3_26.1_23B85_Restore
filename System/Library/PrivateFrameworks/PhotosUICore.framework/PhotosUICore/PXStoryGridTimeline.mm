@interface PXStoryGridTimeline
- (CGRect)frameForSegmentWithIdentifier:(int64_t)identifier;
- (CGSize)size;
- (PXStoryGridTimeline)initWithOriginalTimeline:(id)timeline;
- (PXStoryGridTimeline)initWithOriginalTimeline:(id)timeline layoutSpec:(id)spec viewportSize:(CGSize)size;
- (void)dealloc;
- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block;
@end

@implementation PXStoryGridTimeline

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)frameForSegmentWithIdentifier:(int64_t)identifier
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x4010000000;
  v7[3] = &unk_1A561E057;
  v5 = *(MEMORY[0x1E695F058] + 16);
  v8 = *MEMORY[0x1E695F058];
  v9 = v5;
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  if (originalTimeline)
  {
    [originalTimeline timeRangeForSegmentWithIdentifier:identifier];
  }

  [(PXStoryGridTimeline *)self size];
  PXRectWithOriginAndSize();
}

void __53__PXStoryGridTimeline_frameForSegmentWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a4[1];
  *(v4 + 32) = *a4;
  *(v4 + 48) = v5;
  if (a2 >= 2)
  {
    v7 = a2 - 1;
    v8 = a4 + 56;
    do
    {
      *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), *(v8 - 24));
      v8 += 32;
      --v7;
    }

    while (v7);
  }
}

- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block
{
  blockCopy = block;
  [(PXStoryDerivedTimeline *)self originalTimeline];
  [objc_claimAutoreleasedReturnValue() size];
  PXRectWithOriginAndSize();
}

void __65__PXStoryGridTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PXStoryGridTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke_2;
  v12[3] = &unk_1E773B8C0;
  v14 = a2;
  v15 = a5;
  v12[4] = v9;
  v11 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = v11;
  v13 = *(a1 + 40);
  v18 = a3;
  v19 = a6;
  [v10 accessArrayWithElementsCount:a2 accessBlock:v12];
}

uint64_t __65__PXStoryGridTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke_2(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4 < 1)
  {
LABEL_5:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = (*(result + 56) + 8);
    while (*v6 != 1)
    {
      v6 += 96;
      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  v7 = *(result + 32);
  v8 = *(v7 + 32);
  if (v8 < 1)
  {
    v11 = 1;
  }

  else
  {
    v9 = *(v7 + 16);
    v10 = *(*(result + 56) + 768 * v5);
    if (*v9 == v10)
    {
      v11 = 0;
    }

    else
    {
      v12 = 0;
      v13 = v9 + 1;
      while (v8 - 1 != v12)
      {
        v14 = v13[v12++];
        if (v14 == v10)
        {
          goto LABEL_15;
        }
      }

      v12 = v8;
LABEL_15:
      v11 = v12 >= v8;
    }
  }

  if (v4 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = MEMORY[0x1E695F058];
    do
    {
      while (1)
      {
        v18 = *(*(v3 + 56) + 768 * v15 + 8) != 1 || v11;
        v19 = (a2 + 32 * v15);
        if ((v18 & 1) == 0)
        {
          PXRectWithCenterAndSize();
        }

        v20 = v17[1];
        *v19 = *v17;
        *(v19 + 1) = v20;
        v21 = *v19;
        *&v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        result = CGRectIntersectsRect(*(&v20 - 8), *(v3 + 64));
        v16 += result;
        if ((result & 1) != 0 || v16 < 1)
        {
          break;
        }

        result = (*(*(v3 + 40) + 16))();
        if ((**(v3 + 104) & 1) == 0)
        {
          v16 = 0;
          if (++v15 < *(v3 + 48))
          {
            continue;
          }
        }

        return result;
      }

      ++v15;
    }

    while (v15 < *(v3 + 48));
    if (v16 >= 1 && (**(v3 + 104) & 1) == 0)
    {
      v24 = *(*(v3 + 40) + 16);

      return v24();
    }
  }

  return result;
}

- (void)dealloc
{
  free(self->_assetClipIdentifiers);
  free(self->_assetClipGeometries);
  v3.receiver = self;
  v3.super_class = PXStoryGridTimeline;
  [(PXStoryGridTimeline *)&v3 dealloc];
}

- (PXStoryGridTimeline)initWithOriginalTimeline:(id)timeline layoutSpec:(id)spec viewportSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  timelineCopy = timeline;
  specCopy = spec;
  browserGridLayoutMetrics = [specCopy browserGridLayoutMetrics];

  if (!browserGridLayoutMetrics)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryGridTimeline.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"layoutSpec.browserGridLayoutMetrics"}];
  }

  v18.receiver = self;
  v18.super_class = PXStoryGridTimeline;
  v13 = [(PXStoryDerivedTimeline *)&v18 initWithOriginalTimeline:timelineCopy];
  if (v13)
  {
    [specCopy browserGridLayoutMetrics];
    [objc_claimAutoreleasedReturnValue() setReferenceSize:{width, height}];
    v14 = [timelineCopy numberOfClipsWithResourceKind:1];
    v13->_numberOfAssetClips = v14;
    v13->_assetClipIdentifiers = malloc_type_calloc(v14, 8uLL, 0x100004000313F17uLL);
    v13->_assetClipGeometries = malloc_type_calloc(v13->_numberOfAssetClips, 0x98uLL, 0x100004050011849uLL);
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    if (timelineCopy)
    {
      [timelineCopy timeRange];
    }

    [timelineCopy size];
    PXRectWithOriginAndSize();
  }

  return 0;
}

uint64_t __72__PXStoryGridTimeline_initWithOriginalTimeline_layoutSpec_viewportSize___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = (a5 + 8);
    do
    {
      if (*v5 == 1)
      {
        *(*(*(result + 32) + 16) + 8 * (*(*(*(result + 40) + 8) + 24))++) = *(v5 - 1);
      }

      v5 += 96;
      --a2;
    }

    while (a2);
  }

  return result;
}

id __72__PXStoryGridTimeline_initWithOriginalTimeline_layoutSpec_viewportSize___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    v6 = &PXStoryClipIdentifierNull;
  }

  else
  {
    v6 = (*(*(a1 + 32) + 16) + 8 * a2 - 8);
  }

  v7 = [*(a1 + 40) clipWithResourceKind:1 afterClipIdentifier:{*v6, v3, v2, v4}];
  v8 = [v7 resource];

  return v8;
}

- (PXStoryGridTimeline)initWithOriginalTimeline:(id)timeline
{
  timelineCopy = timeline;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryGridTimeline.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXStoryGridTimeline initWithOriginalTimeline:]"}];

  abort();
}

@end