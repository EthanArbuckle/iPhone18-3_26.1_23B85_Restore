@interface PXStoryBaseTimeline
- ($26774211E5BDBF3D92665BB0B9FD0ED0)infoForSegmentWithIdentifier:(SEL)a3;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRangeForSegmentWithIdentifier:(SEL)a3;
- (BOOL)containsAllSegmentsWithIdentifiers:(id)a3;
- (CGRect)frameForSegmentWithIdentifier:(int64_t)a3;
- (CGSize)size;
- (NSString)diagnosticDescription;
- (id)clipWithIdentifier:(int64_t)a3;
- (id)clipWithResourceKind:(int64_t)a3 afterClipIdentifier:(int64_t)a4;
- (id)identifiersOfSegmentsMatchingSegmentWithIdentifier:(int64_t)a3 inTimeline:(id)a4;
- (id)segmentIdentifiersInTimeRange:(id *)a3 rect:(CGRect)a4;
- (int64_t)firstSegmentIdentifier;
- (int64_t)identifierForSegmentAtIndex:(int64_t)a3;
- (int64_t)identifierForSegmentWithOffset:(id *)a3 fromEndOfSegmentWithIdentifier:(int64_t)a4 timeIntoSegment:(id *)a5;
- (int64_t)identifierOfFirstSegmentContainingAsset:(id)a3;
- (int64_t)identifierOfSegmentClosestToSegmentWithIdentifier:(int64_t)a3 inTimeline:(id)a4;
- (int64_t)indexOfSegmentWithIdentifier:(int64_t)a3;
- (int64_t)lastSegmentIdentifier;
- (int64_t)numberOfClipsWithResourceKind:(int64_t)a3;
- (int64_t)numberOfSegments;
- (void)_findSegmentMatchingIdentifier:(int64_t)a3 timeRange:(id *)a4 info:(id *)a5;
- (void)enumerateClipsInTimeRange:(id *)a3 rect:(CGRect)a4 usingBlock:(id)a5;
- (void)enumerateSegmentsInTimeRange:(id *)a3 usingBlock:(id)a4;
@end

@implementation PXStoryBaseTimeline

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PXStoryBaseTimeline *)self timeRange];
  v6 = PXStoryTimeRangeDescription(v11);
  [(PXStoryBaseTimeline *)self size];
  v7 = NSStringFromCGSize(v12);
  v8 = [v3 initWithFormat:@"<%@: %p, timeRange=%@, size=%@\n", v5, self, v6, v7];

  [v8 appendFormat:@"== Clips ==\n"];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  [(PXStoryBaseTimeline *)self timeRange];
  [(PXStoryBaseTimeline *)self size];
  PXRectWithOriginAndSize();
}

uint64_t __44__PXStoryBaseTimeline_diagnosticDescription__block_invoke(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v22 = v5;
    v23 = v6;
    v8 = a2;
    v9 = a4 + 16;
    v10 = (a5 + 8);
    v20 = result;
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = *(result + 32);
      v14 = *(*(*(result + 40) + 8) + 24);
      v15 = a3[1];
      v21[0] = *a3;
      v21[1] = v15;
      v21[2] = a3[2];
      v16 = PXStoryTimeRangeDescription(v21);
      v17 = NSStringFromCGRect(*(v9 - 16));
      v18 = @"??";
      if (v12 <= 5)
      {
        v18 = off_1E77400B0[v12];
      }

      v10 += 96;
      v19 = v18;
      [v13 appendFormat:@"\t%li: %@ frame=%@ id=%li kind=%@\n", v14, v16, v17, v11, v19];

      result = v20;
      ++*(*(*(v20 + 40) + 8) + 24);
      v9 += 32;
      a3 += 3;
      --v8;
    }

    while (v8);
  }

  return result;
}

void __44__PXStoryBaseTimeline_diagnosticDescription__block_invoke_2(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (a2 >= 1)
  {
    v27 = v4;
    v28 = v5;
    v7 = a2;
    v9 = a4 + 48;
    do
    {
      v10 = *(a1 + 32);
      v11 = *(*(*(a1 + 40) + 8) + 24);
      v12 = a3[1];
      v20 = *a3;
      v21 = v12;
      v22 = a3[2];
      v13 = PXStoryTimeRangeDescription(&v20);
      v14 = *(v9 + 88);
      v15 = *(v9 + 120);
      v24 = *(v9 + 104);
      v25 = v15;
      v26 = *(v9 + 136);
      v16 = *(v9 + 56);
      v20 = *(v9 + 40);
      v21 = v16;
      v22 = *(v9 + 72);
      v23 = v14;
      v17 = PXStoryDurationInfoDescription(&v20);
      v18 = *(v9 + 16);
      v20 = *v9;
      v21 = v18;
      *&v22 = *(v9 + 32);
      v19 = PXStoryTransitionInfoDescription(&v20);
      [v10 appendFormat:@"\t%li: %@ %@ %@ id=%li\n", v11, v13, v17, v19, *(v9 - 48)];

      ++*(*(*(a1 + 40) + 8) + 24);
      a3 += 3;
      v9 += 200;
      --v7;
    }

    while (v7);
  }
}

void __44__PXStoryBaseTimeline_diagnosticDescription__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 >= 1)
  {
    v50 = v5;
    v51 = v6;
    v8 = a2;
    do
    {
      v11 = *a5;
      v10 = a5[1];
      v12 = *(a5 + 11);
      v13 = *(a5 + 15);
      v47 = *(a5 + 13);
      v48 = v13;
      v49 = *(a5 + 17);
      v14 = *(a5 + 7);
      v43 = *(a5 + 5);
      v44 = v14;
      v45 = *(a5 + 9);
      v46 = v12;
      v15 = *(a5 + 13);
      v36 = *(a5 + 12);
      v37 = v15;
      v16 = *(a5 + 11);
      v34 = *(a5 + 10);
      v35 = v16;
      v17 = *(a5 + 18);
      v41 = *(a5 + 17);
      v42 = v17;
      v18 = *(a5 + 16);
      v39 = *(a5 + 15);
      v40 = v18;
      v38 = *(a5 + 14);
      memcpy(__dst, a5 + 38, sizeof(__dst));
      v19 = *(a5 + 43);
      v30 = *(a5 + 42);
      v31 = v19;
      v32 = a5[88];
      v20 = *(a5 + 91);
      v28[9] = *(a5 + 89);
      v28[10] = v20;
      v28[11] = *(a5 + 93);
      v29 = a5[95];
      v21 = [*(a1 + 32) clipWithIdentifier:v11];
      v22 = *(a1 + 40);
      v23 = *(*(*(a1 + 48) + 8) + 24);
      v24 = [v21 resource];
      v25 = [v24 px_storyResourceIdentifier];
      [v22 appendFormat:@"\t%li (id=%li): resourceID=%@\n", v23, v11, v25];

      if (v10 == 1)
      {
        v26 = *(a1 + 40);
        v28[4] = v47;
        v28[5] = v48;
        v28[6] = v49;
        v28[0] = v43;
        v28[1] = v44;
        v28[2] = v45;
        v28[3] = v46;
        v27 = PXStoryDurationInfoDescription(v28);
        [v26 appendFormat:@"\t\tDuration=%@\n", v27];

        PXDisplayAssetPlaybackStyleDescription();
      }

      a5 += 96;
      ++*(*(*(a1 + 48) + 8) + 24);

      --v8;
    }

    while (v8);
  }
}

- (id)segmentIdentifiersInTimeRange:(id *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __58__PXStoryBaseTimeline_segmentIdentifiersInTimeRange_rect___block_invoke;
  v21 = &unk_1E7735650;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  v22 = self;
  v23 = v10;
  v11 = *&a3->var0.var3;
  v15 = *&a3->var0.var0;
  v16 = v11;
  v17 = *&a3->var1.var1;
  v12 = v10;
  [(PXStoryBaseTimeline *)self enumerateSegmentsInTimeRange:&v15 usingBlock:&v18];
  v13 = [v12 copy];

  return v13;
}

uint64_t __58__PXStoryBaseTimeline_segmentIdentifiersInTimeRange_rect___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 >= 1)
  {
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v4;
    v23 = v8;
    v24 = v9;
    v11 = a2;
    v12 = result;
    do
    {
      v14 = *a4;
      a4 += 25;
      v13 = v14;
      [*(v12 + 32) frameForSegmentWithIdentifier:{v14, v19, v20, v21, v22, v23, v24}];
      v25.origin.x = v15;
      v25.origin.y = v16;
      v25.size.width = v17;
      v25.size.height = v18;
      result = CGRectIntersectsRect(*(v12 + 48), v25);
      if (result)
      {
        result = [*(v12 + 40) addIndex:v13];
      }

      --v11;
    }

    while (v11);
  }

  return result;
}

- (CGRect)frameForSegmentWithIdentifier:(int64_t)a3
{
  [(PXStoryBaseTimeline *)self size];

  PXRectWithOriginAndSize();
}

- (id)identifiersOfSegmentsMatchingSegmentWithIdentifier:(int64_t)a3 inTimeline:(id)a4
{
  if (a4)
  {
    v5 = AnchorableResourceIdentifiersInTimelineSegment(a4, a3);
    v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v7 = [(PXStoryBaseTimeline *)self numberOfSegments];
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(PXStoryBaseTimeline *)self identifierForSegmentAtIndex:i];
        v11 = AnchorableResourceIdentifiersInTimelineSegment(self, v10);
        if (MatchingScoreBetweenResourceIdentifierSets(v11, v5) >= 1)
        {
          [v6 addIndex:v10];
        }
      }
    }

    v12 = [v6 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)identifierOfSegmentClosestToSegmentWithIdentifier:(int64_t)a3 inTimeline:(id)a4
{
  if (a4 && a3)
  {
    v5 = AnchorableResourceIdentifiersInTimelineSegment(a4, a3);
    v6 = [(PXStoryBaseTimeline *)self numberOfSegments];
    if (v6 < 1)
    {
      v9 = 0;
    }

    else
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = 0x8000000000000001;
      do
      {
        v11 = [(PXStoryBaseTimeline *)self identifierForSegmentAtIndex:v8];
        v12 = AnchorableResourceIdentifiersInTimelineSegment(self, v11);
        v13 = MatchingScoreBetweenResourceIdentifierSets(v12, v5);
        if (v13 > v10)
        {
          v9 = v11;
          v10 = v13;
        }

        ++v8;
      }

      while (v7 != v8);
    }

    return v9;
  }

  else
  {

    return [(PXStoryBaseTimeline *)self firstSegmentIdentifier];
  }
}

- (void)_findSegmentMatchingIdentifier:(int64_t)a3 timeRange:(id *)a4 info:(id *)a5
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x5010000000;
  v43 = &unk_1A561E057;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v23 = 0;
  v24 = &v23;
  v25 = 0xE810000000;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = &unk_1A561E057;
  v39 = 0;
  [(PXStoryBaseTimeline *)self timeRange];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__PXStoryBaseTimeline__findSegmentMatchingIdentifier_timeRange_info___block_invoke;
  v21[3] = &unk_1E77355D8;
  v21[5] = &v23;
  v21[6] = a3;
  v21[4] = &v40;
  [(PXStoryBaseTimeline *)self enumerateSegmentsInTimeRange:v22 usingBlock:v21];
  if (a4)
  {
    v10 = *(v41 + 3);
    v9 = *(v41 + 4);
    *&a4->var0.var0 = *(v41 + 2);
    *&a4->var0.var3 = v10;
    *&a4->var1.var1 = v9;
  }

  if (a5)
  {
    v11 = v24;
    *&a5->var0 = *(v24 + 2);
    v12 = *(v11 + 6);
    v14 = *(v11 + 3);
    v13 = *(v11 + 4);
    *&a5->var2.var0 = *(v11 + 5);
    *&a5->var2.var2.var1 = v12;
    *&a5->var1.var1 = v14;
    *&a5->var1.var3 = v13;
    v15 = *(v11 + 10);
    v17 = *(v11 + 7);
    v16 = *(v11 + 8);
    *&a5->var3.var0.var3 = *(v11 + 9);
    *&a5->var3.var1.var1 = v15;
    *&a5->var2.var3 = v17;
    *&a5->var3.var0.var0 = v16;
    v19 = *(v11 + 12);
    v18 = *(v11 + 13);
    v20 = *(v11 + 11);
    a5->var3.var3.var1 = v11[28];
    *&a5->var3.var2.var3 = v19;
    *&a5->var3.var3.var0.var1 = v18;
    *&a5->var3.var2.var0 = v20;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v40, 8);
}

__n128 __69__PXStoryBaseTimeline__findSegmentMatchingIdentifier_timeRange_info___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2 >= 1)
  {
    v5 = 0;
    while (*a4 != a1[6])
    {
      ++v5;
      a4 += 200;
      if (a2 == v5)
      {
        return result;
      }
    }

    v6 = *(a1[4] + 8);
    v7 = (a3 + 48 * v5);
    v8 = *v7;
    v9 = v7[2];
    v6[3] = v7[1];
    v6[4] = v9;
    v6[2] = v8;
    v10 = *(a1[5] + 8);
    v11 = *(a4 + 64);
    v13 = *(a4 + 16);
    v12 = *(a4 + 32);
    *(v10 + 80) = *(a4 + 48);
    *(v10 + 96) = v11;
    *(v10 + 48) = v13;
    *(v10 + 64) = v12;
    v14 = *(a4 + 128);
    v16 = *(a4 + 80);
    v15 = *(a4 + 96);
    *(v10 + 144) = *(a4 + 112);
    *(v10 + 160) = v14;
    *(v10 + 112) = v16;
    *(v10 + 128) = v15;
    v18 = *(a4 + 160);
    v17 = *(a4 + 176);
    v19 = *(a4 + 144);
    *(v10 + 224) = *(a4 + 192);
    *(v10 + 192) = v18;
    *(v10 + 208) = v17;
    *(v10 + 176) = v19;
    result = *a4;
    *(v10 + 32) = *a4;
    *a5 = 1;
  }

  return result;
}

- ($26774211E5BDBF3D92665BB0B9FD0ED0)infoForSegmentWithIdentifier:(SEL)a3
{
  retstr->var3.var3.var1 = 0;
  *&retstr->var3.var2.var3 = 0u;
  *&retstr->var3.var3.var0.var1 = 0u;
  *&retstr->var3.var1.var1 = 0u;
  *&retstr->var3.var2.var0 = 0u;
  *&retstr->var3.var0.var0 = 0u;
  *&retstr->var3.var0.var3 = 0u;
  *&retstr->var2.var2.var1 = 0u;
  *&retstr->var2.var3 = 0u;
  *&retstr->var1.var3 = 0u;
  *&retstr->var2.var0 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var1.var1 = 0u;
  return [(PXStoryBaseTimeline *)self _findSegmentMatchingIdentifier:a4 timeRange:0 info:retstr];
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRangeForSegmentWithIdentifier:(SEL)a3
{
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return [(PXStoryBaseTimeline *)self _findSegmentMatchingIdentifier:a4 timeRange:retstr info:0];
}

- (BOOL)containsAllSegmentsWithIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__PXStoryBaseTimeline_containsAllSegmentsWithIdentifiers___block_invoke;
    v7[3] = &unk_1E773BA28;
    v7[4] = self;
    v7[5] = &v8;
    [v4 enumerateIndexesUsingBlock:v7];
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t __58__PXStoryBaseTimeline_containsAllSegmentsWithIdentifiers___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsSegmentWithIdentifier:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (int64_t)identifierOfFirstSegmentContainingAsset:(id)a3
{
  v4 = a3;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  [(PXStoryBaseTimeline *)self size];
  PXRectWithOriginAndSize();
}

void __63__PXStoryBaseTimeline_identifierOfFirstSegmentContainingAsset___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 1)
  {
    v29 = v7;
    v30 = v6;
    v31 = v4;
    v32 = v5;
    v11 = 0;
    v12 = 0uLL;
    do
    {
      v27 = v12;
      v28 = v12;
      v26 = v12;
      v13 = *(a1 + 32);
      v14 = [v13 identifierForSegmentAtIndex:v11];
      if (v13)
      {
        [v13 timeRangeForSegmentWithIdentifier:v14];
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
      }

      v15 = *(a1 + 32);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __63__PXStoryBaseTimeline_identifierOfFirstSegmentContainingAsset___block_invoke_2;
      v20[3] = &unk_1E7735600;
      v16 = *(a1 + 88);
      v20[4] = v15;
      v23 = v16;
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v21 = v17;
      v22 = v18;
      v24 = a4;
      v25 = v11;
      v19[0] = v26;
      v19[1] = v27;
      v19[2] = v28;
      [v15 enumerateClipsInTimeRange:v19 rect:v20 usingBlock:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

      ++v11;
      v12 = 0uLL;
    }

    while (a2 != v11);
  }
}

void __63__PXStoryBaseTimeline_identifierOfFirstSegmentContainingAsset___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (a2 < 1)
  {
    return;
  }

  v7 = a2;
  for (i = (a5 + 8); *i != 1; i += 96)
  {
LABEL_6:
    if (!--v7)
    {
      return;
    }
  }

  v10 = [*(a1 + 32) clipWithIdentifier:*(i - 1)];
  v15 = [v10 resource];

  v11 = [v15 px_storyResourceDisplayAsset];
  v12 = [v11 uuid];
  v13 = [*(a1 + 40) uuid];
  v14 = [v12 isEqualToString:v13];

  if (!v14)
  {

    goto LABEL_6;
  }

  *a6 = 1;
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 64) + 200 * *(a1 + 72));
}

- (int64_t)identifierForSegmentWithOffset:(id *)a3 fromEndOfSegmentWithIdentifier:(int64_t)a4 timeIntoSegment:(id *)a5
{
  v6 = a4;
  v9 = [(PXStoryBaseTimeline *)self indexOfSegmentWithIdentifier:a4];
  v19 = *a3;
  if (v9 >= [(PXStoryBaseTimeline *)self numberOfSegments]- 1)
  {
    [(PXStoryBaseTimeline *)self timeRangeForSegmentWithIdentifier:v6];
    v19 = v13;
  }

  else
  {
    v10 = [(PXStoryBaseTimeline *)self identifierForSegmentAtIndex:v9 + 1];
    v11 = [(PXStoryBaseTimeline *)self indexOfSegmentWithIdentifier:v6]+ 1;
    [(PXStoryBaseTimeline *)self timeRangeForSegmentWithIdentifier:v10];
    *&v18.value = v16;
    v18.epoch = v17;
    v6 = v10;
    while (1)
    {
      time1 = v19;
      time2 = v18;
      if (CMTimeCompare(&time1, &time2) < 1)
      {
        break;
      }

      if (v11 < [(PXStoryBaseTimeline *)self numberOfSegments]- 1)
      {
        time1 = v19;
        time2 = v18;
        CMTimeSubtract(&v19, &time1, &time2);
        v6 = [(PXStoryBaseTimeline *)self identifierForSegmentAtIndex:++v11];
        [(PXStoryBaseTimeline *)self timeRangeForSegmentWithIdentifier:v6];
        *&v18.value = v14;
        v18.epoch = v15;
      }

      else
      {
        v19 = v18;
      }
    }
  }

  *a5 = v19;
  return v6;
}

- (int64_t)indexOfSegmentWithIdentifier:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  [(PXStoryBaseTimeline *)self timeRange];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PXStoryBaseTimeline_indexOfSegmentWithIdentifier___block_invoke;
  v7[3] = &unk_1E77355D8;
  v7[5] = v9;
  v7[6] = a3;
  v7[4] = &v10;
  [(PXStoryBaseTimeline *)self enumerateSegmentsInTimeRange:v8 usingBlock:v7];
  v5 = v11[3];
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);
  return v5;
}

void *__52__PXStoryBaseTimeline_indexOfSegmentWithIdentifier___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, _BYTE *a5)
{
  if (a2 >= 1)
  {
    while (1)
    {
      v5 = *a4;
      a4 += 25;
      v6 = *(result[5] + 8);
      v7 = *(v6 + 24);
      if (v5 == result[6])
      {
        break;
      }

      *(v6 + 24) = v7 + 1;
      if (!--a2)
      {
        return result;
      }
    }

    *(*(result[4] + 8) + 24) = v7;
    *a5 = 1;
  }

  return result;
}

- (int64_t)identifierForSegmentAtIndex:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  [(PXStoryBaseTimeline *)self timeRange];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PXStoryBaseTimeline_identifierForSegmentAtIndex___block_invoke;
  v7[3] = &unk_1E77355D8;
  v7[5] = &v10;
  v7[6] = a3;
  v7[4] = v9;
  [(PXStoryBaseTimeline *)self enumerateSegmentsInTimeRange:v8 usingBlock:v7];
  v5 = v11[3];
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);
  return v5;
}

void *__51__PXStoryBaseTimeline_identifierForSegmentAtIndex___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2 >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(result[4] + 8);
      v7 = *(v6 + 24);
      if (v7 == result[6])
      {
        break;
      }

      *(v6 + 24) = v7 + 1;
      if (a2 == ++v5)
      {
        return result;
      }
    }

    *(*(result[5] + 8) + 24) = *(a4 + 200 * v5);
    *a5 = 1;
  }

  return result;
}

- (int64_t)lastSegmentIdentifier
{
  if ([(PXStoryBaseTimeline *)self numberOfSegments]< 1)
  {
    return 0;
  }

  v3 = [(PXStoryBaseTimeline *)self numberOfSegments]- 1;

  return [(PXStoryBaseTimeline *)self identifierForSegmentAtIndex:v3];
}

- (int64_t)firstSegmentIdentifier
{
  if ([(PXStoryBaseTimeline *)self numberOfSegments]< 1)
  {
    return 0;
  }

  return [(PXStoryBaseTimeline *)self identifierForSegmentAtIndex:0];
}

- (void)enumerateSegmentsInTimeRange:(id *)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"PXStoryBaseTimeline.m" lineNumber:117 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryBaseTimeline enumerateSegmentsInTimeRange:usingBlock:]", v9}];

  abort();
}

- (int64_t)numberOfSegments
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryBaseTimeline.m" lineNumber:113 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryBaseTimeline numberOfSegments]", v6}];

  abort();
}

- (id)clipWithIdentifier:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryBaseTimeline.m" lineNumber:109 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryBaseTimeline clipWithIdentifier:]", v7}];

  abort();
}

- (id)clipWithResourceKind:(int64_t)a3 afterClipIdentifier:(int64_t)a4
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__76722;
  v8[4] = __Block_byref_object_dispose__76723;
  v8[5] = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = a4 == 0;
  [(PXStoryBaseTimeline *)self timeRange];
  [(PXStoryBaseTimeline *)self size];
  PXRectWithOriginAndSize();
}

void __64__PXStoryBaseTimeline_clipWithResourceKind_afterClipIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  if (a2 >= 1)
  {
    while (1)
    {
      v8 = *(*(a1 + 40) + 8);
      if (*(v8 + 24) == 1 && a5[1] == *(a1 + 56))
      {
        break;
      }

      if (*a5 == *(a1 + 64))
      {
        *(v8 + 24) = 1;
      }

      a5 += 96;
      if (!--a2)
      {
        return;
      }
    }

    v9 = [*(a1 + 32) clipWithIdentifier:*a5];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a6 = 1;
  }
}

- (void)enumerateClipsInTimeRange:(id *)a3 rect:(CGRect)a4 usingBlock:(id)a5
{
  v7 = a5;
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v8 handleFailureInMethod:a2 object:self file:@"PXStoryBaseTimeline.m" lineNumber:87 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryBaseTimeline enumerateClipsInTimeRange:rect:usingBlock:]", v10}];

  abort();
}

- (int64_t)numberOfClipsWithResourceKind:(int64_t)a3
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  [(PXStoryBaseTimeline *)self timeRange];
  [(PXStoryBaseTimeline *)self size];
  PXRectWithOriginAndSize();
}

uint64_t __53__PXStoryBaseTimeline_numberOfClipsWithResourceKind___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = (a5 + 8);
    do
    {
      if (*v5 == *(result + 40))
      {
        ++*(*(*(result + 32) + 8) + 24);
      }

      v5 += 96;
      --a2;
    }

    while (a2);
  }

  return result;
}

- (CGSize)size
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryBaseTimeline.m" lineNumber:71 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryBaseTimeline size]", v6}];

  abort();
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a3 object:self file:@"PXStoryBaseTimeline.m" lineNumber:67 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryBaseTimeline timeRange]", v7}];

  abort();
}

@end