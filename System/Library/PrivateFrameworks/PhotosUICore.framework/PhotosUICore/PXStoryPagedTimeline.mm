@interface PXStoryPagedTimeline
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (CGRect)frameForSegmentWithIdentifier:(int64_t)a3;
- (CGSize)size;
- (PXStoryPagedTimeline)initWithOriginalTimeline:(id)a3 interpageSpacing:(double)a4;
- (PXStoryPagedTimeline)initWithOriginalTimeline:(id)a3 keyPage:(id *)a4 spec:(id)a5;
- (id)clipWithIdentifier:(int64_t)a3;
- (id)description;
- (int64_t)_bestClipIndexForSegmentWithClipInfos:(id *)a3 frames:(const CGRect *)a4 count:(int64_t)a5;
- (int64_t)_pageIndexAtX:(double)a3;
- (void)_enumerateSegmentsInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)_transormClips:(id *)a3 frames:(const CGRect *)a4 count:(int64_t)a5 transformHandler:(id)a6 resultHandler:(id)a7;
- (void)enumerateClipsInTimeRange:(id *)a3 rect:(CGRect)a4 usingBlock:(id)a5;
@end

@implementation PXStoryPagedTimeline

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
  v3 = *&self[2].var0.var3;
  *&retstr->var0.var0 = *&self[2].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var1;
  return self;
}

- (CGRect)frameForSegmentWithIdentifier:(int64_t)a3
{
  v4 = [(PXStoryDerivedTimeline *)self indexOfSegmentWithIdentifier:a3];
  [(PXStoryPagedTimeline *)self keyPageMix];
  v5 = &v16;
  if (v15 <= 0.5)
  {
    v5 = &v14;
  }

  if (*v5)
  {
    [(PXStoryPagedTimeline *)self keyPageMix];
    v6 = [(PXStoryDerivedTimeline *)self indexOfSegmentWithIdentifier:v13];
    [(PXStoryPagedTimeline *)self keyPageMix];
    v7 = [(PXStoryDerivedTimeline *)self indexOfSegmentWithIdentifier:v12];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v4 == v6 || v4 == v7)
    {
      [(PXStoryPagedTimeline *)self keyPageMix];
    }

    PXClamp();
  }

  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)enumerateClipsInTimeRange:(id *)a3 rect:(CGRect)a4 usingBlock:(id)a5
{
  v6 = a5;
  [(PXStoryDerivedTimeline *)self originalTimeline];
  [objc_claimAutoreleasedReturnValue() size];
  PXRectWithOriginAndSize();
}

void __66__PXStoryPagedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (*(a1 + 136) == 1)
  {
    [*(a1 + 32) frameForSegmentWithIdentifier:a2];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
  }

  v15 = *(a1 + 40);
  v16 = *a3;
  v17 = a3[2];
  v31[1] = a3[1];
  v31[2] = v17;
  v18 = *(a1 + 104);
  v30[0] = *(a1 + 88);
  v30[1] = v18;
  v30[2] = *(a1 + 120);
  v31[0] = v16;
  PXStoryTimeRangeIntersection(v31, v30, v32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__PXStoryPagedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke_2;
  v20[3] = &unk_1E772E478;
  v29 = *(a1 + 136);
  v20[4] = *(a1 + 32);
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v19 = a4[1];
  v26 = *a4;
  v27 = v19;
  v28 = a4[2];
  v21 = *(a1 + 48);
  [v15 enumerateClipsInTimeRange:v32 rect:v20 usingBlock:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

void __66__PXStoryPagedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 128);
  if (v12 == 1)
  {
    v13 = [*(a1 + 32) _bestClipIndexForSegmentWithClipInfos:a5 frames:a4 count:a2];
    LOBYTE(v12) = *(a1 + 128);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 32);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v15 = *(a1 + 64);
  v23 = *(a1 + 48);
  v24 = v15;
  v16 = *(a1 + 96);
  v25 = *(a1 + 80);
  v22[2] = __66__PXStoryPagedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke_3;
  v22[3] = &__block_descriptor_121_e73__CGRect__CGPoint_dd__CGSize_dd__48__0_CGRect__CGPoint_dd__CGSize_dd__8q40l;
  v28 = v12;
  v22[4] = v13;
  v26 = v16;
  v27 = *(a1 + 112);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__PXStoryPagedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke_4;
  v17[3] = &unk_1E772E450;
  v18 = *(a1 + 40);
  v19 = a2;
  v20 = a3;
  v21 = a6;
  [v14 _transormClips:a5 frames:a4 count:a2 transformHandler:v22 resultHandler:v17];
}

double __66__PXStoryPagedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 32) == a2)
    {
      return *(a1 + 40);
    }

    else
    {
      return *MEMORY[0x1E695F058];
    }
  }

  else
  {
    v11 = v6;
    v12 = v7;
    v9 = *(a1 + 88);
    *&v10.a = *(a1 + 72);
    *&v10.c = v9;
    *&v10.tx = *(a1 + 104);
    *&result = CGRectApplyAffineTransform(*&a3, &v10);
  }

  return result;
}

- (id)clipWithIdentifier:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = PXStoryPagedTimeline;
  v4 = [(PXStoryDerivedTimeline *)&v12 clipWithIdentifier:a3];
  v5 = v4;
  memset(__src, 0, 512);
  if (v4)
  {
    [v4 info];
  }

  else
  {
    bzero(__src, 0x300uLL);
  }

  v6 = [(PXStoryPagedTimeline *)self clipSizeTranformer];
  __src[1].receiver = COERCE_ID(v6[2](*&__src[1].receiver, *&__src[1].super_class));
  __src[1].super_class = v7;

  memcpy(v10, __src, sizeof(v10));
  v8 = [v5 copyWithInfo:v10];

  return v8;
}

- (void)_transormClips:(id *)a3 frames:(const CGRect *)a4 count:(int64_t)a5 transformHandler:(id)a6 resultHandler:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = [(PXStoryPagedTimeline *)self clipSizeTranformer];
  v15 = [(PXStoryPagedTimeline *)self transformedClipInfosStore];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__PXStoryPagedTimeline__transormClips_frames_count_transformHandler_resultHandler___block_invoke;
  v19[3] = &unk_1E772E408;
  v19[4] = self;
  v20 = v12;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v21 = v14;
  v22 = v13;
  v16 = v13;
  v17 = v14;
  v18 = v12;
  [v15 accessArrayWithElementsCount:a5 accessBlock:v19];
}

void __83__PXStoryPagedTimeline__transormClips_frames_count_transformHandler_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) transformedRectsStore];
  v5 = *(a1 + 64);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PXStoryPagedTimeline__transormClips_frames_count_transformHandler_resultHandler___block_invoke_2;
  v9[3] = &unk_1E772E3E0;
  v13 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = v6;
  v14 = v7;
  v15 = a2;
  v16 = v8;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  [v4 accessArrayWithElementsCount:v5 accessBlock:v9];
}

uint64_t __83__PXStoryPagedTimeline__transormClips_frames_count_transformHandler_resultHandler___block_invoke_2(void *a1, uint64_t a2)
{
  if (a1[7] >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 24;
    do
    {
      v7 = (a2 + v6);
      *(v7 - 3) = (*(a1[4] + 16))(*(a1[8] + v6 - 24), *(a1[8] + v6 - 16), *(a1[8] + v6 - 8), *(a1[8] + v6));
      *(v7 - 2) = v8;
      *(v7 - 1) = v9;
      *v7 = v10;
      memcpy((a1[9] + v4), (a1[10] + v4), 0x300uLL);
      v11 = a1[9] + v4;
      *(v11 + 16) = (*(a1[5] + 16))(*(v11 + 16), *(v11 + 24));
      *(v11 + 24) = v12;
      ++v5;
      v4 += 768;
      v6 += 32;
    }

    while (v5 < a1[7]);
  }

  v13 = *(a1[6] + 16);

  return v13();
}

- (int64_t)_bestClipIndexForSegmentWithClipInfos:(id *)a3 frames:(const CGRect *)a4 count:(int64_t)a5
{
  if (a5 < 2)
  {
    return 0;
  }

  v31 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  p_size = &a4->size;
  v11 = 0.0;
  p_var1 = &a3->var1;
  v13 = 0.0;
  do
  {
    if (*p_var1 == 1)
    {
      width = p_size[-1].width;
      height = p_size[-1].height;
      v16 = p_size->width;
      v17 = p_size->height;
      v32.origin.x = width;
      v32.origin.y = height;
      v32.size.width = p_size->width;
      v32.size.height = v17;
      v18 = CGRectGetWidth(v32);
      v33.origin.x = width;
      v33.origin.y = height;
      v33.size.width = v16;
      v33.size.height = v17;
      v19 = v18 * CGRectGetHeight(v33);
      if (v19 > v11)
      {
        ++v8;
        v7 = v9;
        v11 = v19;
      }

      if (v8 <= 1)
      {
        v20 = [(PXStoryPagedTimeline *)self clipWithIdentifier:*(p_var1 - 1)];
        v21 = [v20 resource];
        v22 = [v21 px_storyResourceDisplayAsset];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
          [v23 overallAestheticScore];
          v25 = v24;
          [v23 curationScore];
          v27 = v26;

          v28 = v27 + v25 <= v13;
          if (v27 + v25 > v13)
          {
            v13 = v27 + v25;
          }

          v29 = v31;
          if (!v28)
          {
            v29 = v9;
          }

          v31 = v29;
        }
      }
    }

    ++v9;
    p_size += 2;
    p_var1 += 96;
  }

  while (a5 != v9);
  if (v8 <= 1)
  {
    return v31;
  }

  else
  {
    return v7;
  }
}

- (void)_enumerateSegmentsInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v11 = [(PXStoryPagedTimeline *)self _pageIndexAtX:CGRectGetMinX(v30)];
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v12 = [(PXStoryPagedTimeline *)self _pageIndexAtX:CGRectGetMaxX(v31)];
  if (v11 <= v12)
  {
    v13 = v12;
    if (v11 < 0)
    {
      goto LABEL_10;
    }

LABEL_4:
    if (v11 >= [(PXStoryPagedTimeline *)self numberOfPages])
    {
LABEL_10:
      while (v13 != v11)
      {
LABEL_11:
        if ((++v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v14 = [v10 identifierForSegmentAtIndex:v11];
      memset(&v29, 0, sizeof(v29));
      if (v10)
      {
        [v10 timeRangeForSegmentWithIdentifier:v14];
      }

      [(PXStoryPagedTimeline *)self frameForSegmentWithIdentifier:v14];
      v15 = v32.size.width;
      v16 = v32.size.height;
      MinX = CGRectGetMinX(v32);
      memset(&v28, 0, sizeof(v28));
      CGAffineTransformMakeTranslation(&v28, MinX, 0.0);
      v18 = [(PXStoryDerivedTimeline *)self originalTimeline];
      [v18 size];
      v20 = v19;
      v22 = v21;

      v26 = v28;
      CGAffineTransformScale(&v27, &v26, v15 / v20, v16 / v22);
      v28 = v27;
      v23 = v9[2];
      v24 = *&v27.tx;
      v27 = v29;
      *&v26.a = *&v28.a;
      *&v26.c = *&v28.c;
      v25 = 0;
      *&v26.tx = v24;
      v23(v9, v14, &v27, &v26, &v25);
      if (v13 != v11 && (v25 & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }
}

- (int64_t)_pageIndexAtX:(double)a3
{
  v5 = [(PXStoryPagedTimeline *)self spec];
  [v5 regularPageSize];
  v7 = v6;
  v8 = [(PXStoryPagedTimeline *)self spec];
  [v8 regularInterpageSpacing];
  v10 = v7 + v9;

  [(PXStoryPagedTimeline *)self keyPageMix];
  v11 = &v26;
  if (v25 <= 0.5)
  {
    v11 = v24;
  }

  if (!*v11)
  {
    return (a3 / v10);
  }

  [(PXStoryPagedTimeline *)self keyPageMix];
  v12 = *&v24[16 * (v25 > 0.5)];
  [(PXStoryPagedTimeline *)self frameForSegmentWithIdentifier:v12, v25];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  if (CGRectGetMinX(v27) > a3)
  {
    return (a3 / v10);
  }

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  if (CGRectGetMaxX(v28) > a3)
  {
    return [(PXStoryDerivedTimeline *)self indexOfSegmentWithIdentifier:v12];
  }

  v18 = [(PXStoryPagedTimeline *)self spec];
  [v18 keyPageSize];
  v20 = v19;
  v21 = [(PXStoryPagedTimeline *)self spec];
  [v21 keyInterpageSpacing];
  v23 = v20 + v22;

  return ((a3 - v23) / v10) + 1;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXStoryPagedTimeline *)self numberOfPages];
  [(PXStoryPagedTimeline *)self size];
  v7 = NSStringFromCGSize(v12);
  v8 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v9 = [v3 initWithFormat:@"<%@ %p; Pages: %ld; Size: %@; Original Timeline:\n\t%@>", v5, self, v6, v7, v8];

  return v9;
}

- (PXStoryPagedTimeline)initWithOriginalTimeline:(id)a3 keyPage:(id *)a4 spec:(id)a5
{
  v8 = a3;
  v9 = a5;
  v48.receiver = self;
  v48.super_class = PXStoryPagedTimeline;
  v10 = [(PXStoryDerivedTimeline *)&v48 initWithOriginalTimeline:v8];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_spec, a5);
    var2 = a4->var2;
    *&v11->_keyPageMix.firstSegmentIdentifier = *&a4->var0;
    v11->_keyPageMix.secondSegmentIdentifier = var2;
    *&start.value = PXStoryTimeZero;
    start.epoch = 0;
    *&duration.value = PXStoryTimeMaximum;
    duration.epoch = 0;
    CMTimeRangeMake(&v47, &start, &duration);
    v13 = *&v47.start.value;
    v14 = *&v47.duration.timescale;
    *&v11->_timeRange.start.epoch = *&v47.start.epoch;
    *&v11->_timeRange.duration.timescale = v14;
    *&v11->_timeRange.start.value = v13;
    v15 = [v8 numberOfSegments];
    v11->_numberOfPages = v15;
    v16 = (v15 - 1);
    [v9 regularPageSize];
    v18 = v17;
    [v9 regularInterpageSpacing];
    v20 = v18 + v19;
    [v9 regularInterpageSpacing];
    v22 = -(v21 - v16 * v20);
    [v9 keyPageSize];
    v24 = v23;
    [v9 keyInterpageSpacing];
    v11->_size.width = v22 + v24 + v25 * 2.0;
    [v9 keyPageSize];
    v11->_size.height = v26;
    v27 = [[off_1E7721500 alloc] initWithElementSize:768];
    transformedClipInfosStore = v11->_transformedClipInfosStore;
    v11->_transformedClipInfosStore = v27;

    v29 = [[off_1E7721500 alloc] initWithElementSize:32];
    transformedRectsStore = v11->_transformedRectsStore;
    v11->_transformedRectsStore = v29;

    if ([(PXStoryPagedTimelineSpec *)v11->_spec displayOneAssetPerPage])
    {
      [(PXStoryPagedTimelineSpec *)v11->_spec regularPageSize];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __62__PXStoryPagedTimeline_initWithOriginalTimeline_keyPage_spec___block_invoke;
      v46[3] = &__block_descriptor_48_e28__CGSize_dd_24__0_CGSize_dd_8l;
      v46[4] = v31;
      v46[5] = v32;
      v33 = v46;
    }

    else
    {
      v34 = [(PXStoryDerivedTimeline *)v11 originalTimeline];
      [v34 size];
      v36 = v35;
      v38 = v37;

      [(PXStoryPagedTimelineSpec *)v11->_spec regularPageSize];
      memset(&v47, 0, sizeof(v47));
      CGAffineTransformMakeScale(&v47, v39 / v36, v40 / v38);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __62__PXStoryPagedTimeline_initWithOriginalTimeline_keyPage_spec___block_invoke_2;
      v44[3] = &__block_descriptor_80_e28__CGSize_dd_24__0_CGSize_dd_8l;
      v45 = v47;
      v33 = v44;
    }

    v41 = _Block_copy(v33);
    clipSizeTranformer = v11->_clipSizeTranformer;
    v11->_clipSizeTranformer = v41;
  }

  return v11;
}

- (PXStoryPagedTimeline)initWithOriginalTimeline:(id)a3 interpageSpacing:(double)a4
{
  v6 = a3;
  v7 = objc_alloc_init(PXStoryPagedTimelineSpec);
  [(PXStoryPagedTimelineSpec *)v7 setRegularInterpageSpacing:a4];
  [v6 size];
  [(PXStoryPagedTimelineSpec *)v7 setRegularPageSize:?];
  [(PXStoryPagedTimelineSpec *)v7 setKeyInterpageSpacing:a4];
  [v6 size];
  [(PXStoryPagedTimelineSpec *)v7 setKeyPageSize:?];
  [(PXStoryPagedTimelineSpec *)v7 setDisplayOneAssetPerPage:0];
  memset(v10, 0, sizeof(v10));
  v8 = [(PXStoryPagedTimeline *)self initWithOriginalTimeline:v6 keyPage:v10 spec:v7];

  return v8;
}

@end