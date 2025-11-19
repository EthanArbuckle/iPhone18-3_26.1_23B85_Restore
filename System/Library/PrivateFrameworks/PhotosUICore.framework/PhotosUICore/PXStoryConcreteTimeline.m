@interface PXStoryConcreteTimeline
- ($26774211E5BDBF3D92665BB0B9FD0ED0)infoForSegmentWithIdentifier:(SEL)a3;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRangeForSegmentWithIdentifier:(SEL)a3;
- (CGSize)size;
- (PXStoryConcreteTimeline)init;
- (PXStoryConcreteTimeline)initWithSize:(CGSize)a3 resourcesDataSource:(id)a4;
- (PXStoryConcreteTimeline)initWithTimeline:(id)a3;
- (_NSRange)_smallestRangeOfClipsPotentiallyIntersectingTimeRange:(id *)a3;
- (_NSRange)_smallestRangeOfSegmentsPotentiallyIntersectingTimeRange:(id *)a3;
- (id)_clipResourceIndexesOfKind:(int64_t)a3 inSegmentAtIndex:(int64_t)a4;
- (id)_indexesOfSegmentsContainingClipsWithResourceKind:(int64_t)a3 indexes:(id)a4;
- (id)clipWithIdentifier:(int64_t)a3;
- (id)debugDescription;
- (id)description;
- (id)identifiersOfSegmentsMatchingSegmentWithIdentifier:(int64_t)a3 inTimeline:(id)a4;
- (id)indexesOfResourcesWithKind:(int64_t)a3 inResourcesDataSource:(id)a4 forClipsInSegmentWithIdentifier:(int64_t)a5;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)dataSourceIdentifier;
- (int64_t)identifierForSegmentAtIndex:(int64_t)a3;
- (int64_t)identifierOfFirstClipContainingResourceAtIndex:(int64_t)a3 inResourcesDataSource:(id)a4 resourceKind:(int64_t)a5;
- (int64_t)identifierOfSegmentClosestToSegmentWithIdentifier:(int64_t)a3 inTimeline:(id)a4;
- (int64_t)indexOfResourceForClipWithIdentifier:(int64_t)a3 inResourcesDataSource:(id)a4 resourceKind:(int64_t)a5;
- (int64_t)indexOfSegmentWithIdentifier:(int64_t)a3;
- (int64_t)lastClipIdentifier;
- (void)_assertConsistency;
- (void)_enumerateClipsWithResourceKind:(int64_t)a3 indexes:(id)a4 usingBlock:(id)a5;
- (void)_enumerateSegmentsInTimeRange:(id *)a3 usingBlock:(id)a4;
- (void)dealloc;
- (void)enumerateClipsInTimeRange:(id *)a3 rect:(CGRect)a4 usingBlock:(id)a5;
- (void)enumerateConcreteClipsInTimeRange:(id *)a3 rect:(CGRect)a4 usingBlock:(id)a5;
- (void)enumerateSegmentsInTimeRange:(id *)a3 usingBlock:(id)a4;
- (void)setNumberOfClips:(int64_t)a3;
- (void)setNumberOfSegments:(int64_t)a3;
@end

@implementation PXStoryConcreteTimeline

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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PXStoryMutableConcreteTimeline alloc];

  return [(PXStoryConcreteTimeline *)v4 initWithTimeline:self];
}

- (int64_t)dataSourceIdentifier
{
  v2 = [(PXStoryConcreteTimeline *)self resourcesDataSource];
  v3 = [v2 identifier];

  return v3;
}

- (int64_t)identifierOfFirstClipContainingResourceAtIndex:(int64_t)a3 inResourcesDataSource:(id)a4 resourceKind:(int64_t)a5
{
  v8 = a4;
  v9 = [(PXStoryConcreteTimeline *)self resourcesDataSource];
  v10 = [v8 hasSameResourcesOfKind:a5 as:v9];

  if (v10 && (numberOfClips = self->_numberOfClips, numberOfClips >= 1))
  {
    v12 = 0;
    clipResourceIndexes = self->_clipResourceIndexes;
    while (1)
    {
      v14 = *clipResourceIndexes++;
      if (v14 == a3)
      {
        v15 = (&self->_clipInfos->var0 + v12);
        if (v15[1] == a5)
        {
          break;
        }
      }

      v12 += 768;
      if (!--numberOfClips)
      {
        goto LABEL_7;
      }
    }

    v16 = *v15;
  }

  else
  {
LABEL_7:
    v16 = 0;
  }

  return v16;
}

- (int64_t)indexOfResourceForClipWithIdentifier:(int64_t)a3 inResourcesDataSource:(id)a4 resourceKind:(int64_t)a5
{
  v8 = a4;
  v9 = [(PXStoryConcreteTimeline *)self resourcesDataSource];
  LODWORD(a5) = [v8 hasSameResourcesOfKind:a5 as:v9];

  if (a5 && (numberOfClips = self->_numberOfClips, numberOfClips >= 1))
  {
    v11 = 0;
    clipInfos = self->_clipInfos;
    while (clipInfos->var0 != a3)
    {
      clipInfos = (clipInfos + 768);
      if (numberOfClips == ++v11)
      {
        goto LABEL_6;
      }
    }

    v13 = self->_clipResourceIndexes[v11];
  }

  else
  {
LABEL_6:
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (id)indexesOfResourcesWithKind:(int64_t)a3 inResourcesDataSource:(id)a4 forClipsInSegmentWithIdentifier:(int64_t)a5
{
  v8 = a4;
  v9 = [(PXStoryConcreteTimeline *)self resourcesDataSource];
  v10 = [v8 hasSameResourcesOfKind:a3 as:v9];

  if (v10 && (v11 = [(PXStoryConcreteTimeline *)self indexOfSegmentWithIdentifier:a5], v11 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = [(PXStoryConcreteTimeline *)self _clipResourceIndexesOfKind:a3 inSegmentAtIndex:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)identifiersOfSegmentsMatchingSegmentWithIdentifier:(int64_t)a3 inTimeline:(id)a4
{
  v6 = a4;
  v7 = [(PXStoryConcreteTimeline *)self resourcesDataSource];
  v8 = [v6 indexesOfResourcesWithKind:1 inResourcesDataSource:v7 forClipsInSegmentWithIdentifier:a3];

  if (v8)
  {
    v9 = [(PXStoryConcreteTimeline *)self _indexesOfSegmentsContainingClipsWithResourceKind:1 indexes:v8];
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __89__PXStoryConcreteTimeline_identifiersOfSegmentsMatchingSegmentWithIdentifier_inTimeline___block_invoke;
    v15[3] = &unk_1E774A7B8;
    v16 = v10;
    v17 = self;
    v11 = v10;
    [v9 enumerateIndexesUsingBlock:v15];
    v12 = [v11 copy];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PXStoryConcreteTimeline;
    v12 = [(PXStoryBaseTimeline *)&v14 identifiersOfSegmentsMatchingSegmentWithIdentifier:a3 inTimeline:v6];
  }

  return v12;
}

uint64_t __89__PXStoryConcreteTimeline_identifiersOfSegmentsMatchingSegmentWithIdentifier_inTimeline___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifierForSegmentAtIndex:a2];

  return [v2 addIndex:v3];
}

- (int64_t)identifierOfSegmentClosestToSegmentWithIdentifier:(int64_t)a3 inTimeline:(id)a4
{
  v6 = a4;
  v7 = [(PXStoryConcreteTimeline *)self resourcesDataSource];
  v8 = [v6 indexesOfResourcesWithKind:1 inResourcesDataSource:v7 forClipsInSegmentWithIdentifier:a3];
  if (v8)
  {
    v9 = [(PXStoryConcreteTimeline *)self _indexesOfSegmentsContainingClipsWithResourceKind:1 indexes:v8];
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0x8000000000000001;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0x7FFFFFFFFFFFFFFFLL;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __88__PXStoryConcreteTimeline_identifierOfSegmentClosestToSegmentWithIdentifier_inTimeline___block_invoke;
    v32[3] = &unk_1E773B988;
    v32[4] = self;
    v37 = 1;
    v25 = v8;
    v10 = v8;
    v33 = v10;
    v34 = &v46;
    v35 = &v38;
    v36 = &v42;
    [v9 enumerateIndexesUsingBlock:v32];
    v11 = v43[3];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      if (v39[3] > v47[3])
      {
        v24 = v9;
        v13 = [v6 indexOfSegmentWithIdentifier:a3];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __88__PXStoryConcreteTimeline_identifierOfSegmentClosestToSegmentWithIdentifier_inTimeline___block_invoke_2;
        aBlock[3] = &unk_1E773B9B0;
        v14 = v6;
        v28 = v14;
        v31 = 1;
        v29 = v7;
        v30 = v10;
        v15 = _Block_copy(aBlock);
        v16 = v13;
        do
        {
          v17 = v16;
          v18 = v16-- < 1;
        }

        while (!v18 && (v15[2](v15, v16) & 1) != 0);
        v19 = [v14 numberOfSegments];
        if (v13 <= v19 - 1)
        {
          v20 = v19 - 1;
        }

        else
        {
          v20 = v13;
        }

        v21 = v13 + 1;
        while (v21 - v20 != 1)
        {
          v22 = v15[2](v15, v21++);
          if ((v22 & 1) == 0)
          {
            v20 = v21 - 2;
            break;
          }
        }

        if (v17 < v20)
        {
          PXFloatNormalize();
        }

        v11 = v43[3];
        v9 = v24;
      }

      v12 = [(PXStoryConcreteTimeline *)self identifierForSegmentAtIndex:v11];
    }

    v8 = v25;

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v26.receiver = self;
    v26.super_class = PXStoryConcreteTimeline;
    v12 = [(PXStoryBaseTimeline *)&v26 identifierOfSegmentClosestToSegmentWithIdentifier:a3 inTimeline:v6];
  }

  return v12;
}

void __88__PXStoryConcreteTimeline_identifierOfSegmentClosestToSegmentWithIdentifier_inTimeline___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) _clipResourceIndexesOfKind:*(a1 + 72) inSegmentAtIndex:a2];
  v4 = MatchingScoreBetweenClipResourceIndexes(*(a1 + 40), v7);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 24);
  if (v4 >= v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 24);
  }

  if (v4 > v6)
  {
    *(v5 + 24) = v4;
    *(*(*(a1 + 64) + 8) + 24) = a2;
  }
}

uint64_t __88__PXStoryConcreteTimeline_identifierOfSegmentClosestToSegmentWithIdentifier_inTimeline___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexesOfResourcesWithKind:*(a1 + 56) inResourcesDataSource:*(a1 + 40) forClipsInSegmentWithIdentifier:{objc_msgSend(*(a1 + 32), "identifierForSegmentAtIndex:", a2)}];
  v4 = [v3 isEqualToIndexSet:*(a1 + 48)];

  return v4;
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
  var0 = self->var3.var2.var0;
  if (var0 >= 1)
  {
    for (i = *&self->var3.var1.var1; *i != a4; i += 200)
    {
      if (!--var0)
      {
        return self;
      }
    }

    v6 = *(i + 176);
    *&retstr->var3.var2.var3 = *(i + 160);
    *&retstr->var3.var3.var0.var1 = v6;
    retstr->var3.var3.var1 = *(i + 192);
    v7 = *(i + 112);
    *&retstr->var3.var0.var0 = *(i + 96);
    *&retstr->var3.var0.var3 = v7;
    v8 = *(i + 144);
    *&retstr->var3.var1.var1 = *(i + 128);
    *&retstr->var3.var2.var0 = v8;
    v9 = *(i + 48);
    *&retstr->var1.var3 = *(i + 32);
    *&retstr->var2.var0 = v9;
    v10 = *(i + 80);
    *&retstr->var2.var2.var1 = *(i + 64);
    *&retstr->var2.var3 = v10;
    v11 = *(i + 16);
    *&retstr->var0 = *i;
    *&retstr->var1.var1 = v11;
  }

  return self;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRangeForSegmentWithIdentifier:(SEL)a3
{
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  var0 = self[3].var0.var0;
  if (var0 >= 1)
  {
    v5 = 0;
    v6 = *&self[2].var1.var1;
    while (1)
    {
      v7 = *v6;
      v6 += 25;
      if (v7 == a4)
      {
        break;
      }

      if (var0 == ++v5)
      {
        return self;
      }
    }

    v8 = (self[2].var1.var0 + 48 * v5);
    v9 = v8[1];
    *&retstr->var0.var0 = *v8;
    *&retstr->var0.var3 = v9;
    *&retstr->var1.var1 = v8[2];
  }

  return self;
}

- (int64_t)indexOfSegmentWithIdentifier:(int64_t)a3
{
  numberOfSegments = self->_numberOfSegments;
  if (numberOfSegments < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = 0;
  segmentInfos = self->_segmentInfos;
  while (1)
  {
    var0 = segmentInfos->var0;
    segmentInfos = (segmentInfos + 200);
    if (var0 == a3)
    {
      break;
    }

    if (numberOfSegments == ++result)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (int64_t)identifierForSegmentAtIndex:(int64_t)a3
{
  if (a3 < 0 || self->_numberOfSegments <= a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:313 description:{@"segment index %ti out of bounds 0 ..< %ti", a3, self->_numberOfSegments}];
  }

  return *(&self->_segmentInfos->var0 + 25 * a3);
}

- (void)enumerateSegmentsInTimeRange:(id *)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = *&a3->var0.var3;
  v9[0] = *&a3->var0.var0;
  v9[1] = v7;
  v9[2] = *&a3->var1.var1;
  [(PXStoryConcreteTimeline *)self _smallestRangeOfSegmentsPotentiallyIntersectingTimeRange:v9];
  v8 = v6;
  PXEnumerateSubrangesMatchingTestUsingBlock();
}

BOOL __67__PXStoryConcreteTimeline_enumerateSegmentsInTimeRange_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a1 + 32) + 120) + 48 * a2);
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

- (id)clipWithIdentifier:(int64_t)a3
{
  numberOfClips = self->_numberOfClips;
  if (numberOfClips < 1)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    v5 = 0;
    clipInfos = self->_clipInfos;
    while (clipInfos->var0 != a3)
    {
      clipInfos = (clipInfos + 768);
      if (numberOfClips == ++v5)
      {
        goto LABEL_5;
      }
    }

    v8 = [(PXStoryConcreteTimeline *)self resourcesDataSource];
    clipResourceKinds = self->_clipResourceKinds;
    v10 = clipResourceKinds[v5];
    clipResourceIndexes = self->_clipResourceIndexes;
    v12 = clipResourceIndexes[v5];
    if (v5)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        if (clipResourceIndexes[v13] == v12 && clipResourceKinds[v13] == v10)
        {
          ++v14;
        }

        ++v13;
      }

      while (v5 != v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = [PXStoryConcreteClip alloc];
    memcpy(v17, self->_clipInfos + 768 * v5, sizeof(v17));
    v7 = [(PXStoryConcreteClip *)v15 initWithInfo:v17 resourceKind:v10 resourceIndex:v12 resourceOccurrenceIndex:v14 resourcesDataSource:v8];
  }

  return v7;
}

- (int64_t)lastClipIdentifier
{
  numberOfClips = self->_numberOfClips;
  if (numberOfClips < 1)
  {
    v3 = &PXStoryClipIdentifierNull;
  }

  else
  {
    v3 = (self->_clipInfos + 768 * numberOfClips - 768);
  }

  return *v3;
}

- (void)enumerateConcreteClipsInTimeRange:(id *)a3 rect:(CGRect)a4 usingBlock:(id)a5
{
  v7 = a5;
  v8 = *&a3->var0.var3;
  v10[0] = *&a3->var0.var0;
  v10[1] = v8;
  v10[2] = *&a3->var1.var1;
  [(PXStoryConcreteTimeline *)self _smallestRangeOfClipsPotentiallyIntersectingTimeRange:v10];
  v9 = v7;
  PXEnumerateSubrangesMatchingTestUsingBlock();
}

BOOL __77__PXStoryConcreteTimeline_enumerateConcreteClipsInTimeRange_rect_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
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
    v8 = (*(*(a1 + 32) + 80) + 32 * a2);
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

- (void)enumerateClipsInTimeRange:(id *)a3 rect:(CGRect)a4 usingBlock:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PXStoryConcreteTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke;
  v15[3] = &unk_1E773B960;
  v16 = v11;
  v12 = *&a3->var0.var3;
  v14[0] = *&a3->var0.var0;
  v14[1] = v12;
  v14[2] = *&a3->var1.var1;
  v13 = v11;
  [(PXStoryConcreteTimeline *)self enumerateConcreteClipsInTimeRange:v14 rect:v15 usingBlock:x, y, width, height];
}

- (void)_assertConsistency
{
  v3 = [(PXStoryConcreteTimeline *)self numberOfClips];
  if (v3 >= 2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 - 1;
    do
    {
      v7 = &self->_clipTimeRanges[v4];
      v14 = *v7;
      v13 = v7[2];
      time1.start = v14;
      v12.start = v13;
      if (CMTimeCompare(&time1.start, &v12.start) >= 1)
      {
        PXAssertGetLog();
      }

      v12 = self->_clipTimeRanges[self->_clipIndicesSortedByTimeRangeEnd[v5]];
      time1 = v12;
      CMTimeRangeGetEnd(&v14, &time1);
      v12 = self->_clipTimeRanges[self->_clipIndicesSortedByTimeRangeEnd[v5 + 1]];
      time1 = v12;
      CMTimeRangeGetEnd(&v13, &time1);
      time1.start = v14;
      v12.start = v13;
      if (CMTimeCompare(&time1.start, &v12.start) >= 1)
      {
        PXAssertGetLog();
      }

      ++v5;
      ++v4;
    }

    while (v6 != v5);
  }

  v8 = [(PXStoryConcreteTimeline *)self numberOfSegments];
  if (v8 >= 2)
  {
    v9 = 0;
    v10 = v8 - 1;
    do
    {
      v11 = &self->_segmentTimeRanges[v9];
      v14 = *v11;
      v13 = v11[2];
      time1.start = v14;
      v12.start = v13;
      if (CMTimeCompare(&time1.start, &v12.start) >= 1)
      {
        PXAssertGetLog();
      }

      v12 = self->_segmentTimeRanges[v9];
      time1 = v12;
      CMTimeRangeGetEnd(&v14, &time1);
      v12 = self->_segmentTimeRanges[v9 + 1];
      time1 = v12;
      CMTimeRangeGetEnd(&v13, &time1);
      time1.start = v14;
      v12.start = v13;
      if (CMTimeCompare(&time1.start, &v12.start) >= 1)
      {
        PXAssertGetLog();
      }

      ++v9;
      --v10;
    }

    while (v10);
  }
}

- (void)_enumerateClipsWithResourceKind:(int64_t)a3 indexes:(id)a4 usingBlock:(id)a5
{
  v10 = a4;
  v8 = a5;
  if (self->_numberOfClips >= 1)
  {
    v9 = 0;
    do
    {
      if (self->_clipResourceKinds[v9] == a3 && [v10 containsIndex:self->_clipResourceIndexes[v9]])
      {
        v8[2](v8, v9);
      }

      ++v9;
    }

    while (v9 < self->_numberOfClips);
  }
}

- (void)_enumerateSegmentsInTimeRange:(id *)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = *&a3->var0.var3;
  v16 = *&a3->var0.var0;
  v17 = v7;
  v18 = *&a3->var1.var1;
  v8 = [(PXStoryConcreteTimeline *)self _smallestRangeOfSegmentsPotentiallyIntersectingTimeRange:&v16];
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = v8;
    do
    {
      v13 = &self->_segmentTimeRanges[v12];
      v16 = *&v13->var0.var0;
      v17 = *&v13->var0.var3;
      v18 = *&v13->var1.var1;
      v14 = *&a3->var0.var3;
      v15[0] = *&a3->var0.var0;
      v15[1] = v14;
      v15[2] = *&a3->var1.var1;
      if (PXStoryTimeRangeIntersectsTimeRange(&v16, v15))
      {
        v6[2](v6, v10);
      }

      ++v10;
      ++v12;
      --v11;
    }

    while (v11);
  }
}

- (id)_indexesOfSegmentsContainingClipsWithResourceKind:(int64_t)a3 indexes:(id)a4
{
  v6 = MEMORY[0x1E696AD50];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __85__PXStoryConcreteTimeline__indexesOfSegmentsContainingClipsWithResourceKind_indexes___block_invoke;
  v15 = &unk_1E774B608;
  v16 = self;
  v17 = v8;
  v9 = v8;
  [(PXStoryConcreteTimeline *)self _enumerateClipsWithResourceKind:a3 indexes:v7 usingBlock:&v12];

  v10 = [v9 copy];

  return v10;
}

void __85__PXStoryConcreteTimeline__indexesOfSegmentsContainingClipsWithResourceKind_indexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = (v2[8] + 48 * a2);
  v4 = v3[1];
  v8 = *v3;
  v9 = v4;
  v10 = v3[2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__PXStoryConcreteTimeline__indexesOfSegmentsContainingClipsWithResourceKind_indexes___block_invoke_2;
  v6[3] = &unk_1E7748D18;
  v7 = *(a1 + 40);
  v5[0] = v8;
  v5[1] = v9;
  v5[2] = v10;
  [v2 _enumerateSegmentsInTimeRange:v5 usingBlock:v6];
}

- (id)_clipResourceIndexesOfKind:(int64_t)a3 inSegmentAtIndex:(int64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v8 = &self->_segmentTimeRanges[a4];
  v9 = *&v8->var1.var1;
  v23 = *&v8->var0.var3;
  v24 = v9;
  v22 = *&v8->var0.var0;
  v19 = v22;
  v20 = v23;
  v21 = v9;
  v10 = [(PXStoryConcreteTimeline *)self _smallestRangeOfClipsPotentiallyIntersectingTimeRange:&v19];
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    v14 = v10;
    do
    {
      if (self->_clipResourceKinds[v13] == a3)
      {
        v15 = &self->_clipTimeRanges[v14];
        v19 = *&v15->var0.var0;
        v20 = *&v15->var0.var3;
        v21 = *&v15->var1.var1;
        v18[0] = v22;
        v18[1] = v23;
        v18[2] = v24;
        if (PXStoryTimeRangeIntersectsTimeRange(&v19, v18))
        {
          [v7 addIndex:self->_clipResourceIndexes[v13]];
        }
      }

      ++v13;
      ++v14;
      --v12;
    }

    while (v12);
  }

  v16 = [v7 copy];

  return v16;
}

- (_NSRange)_smallestRangeOfSegmentsPotentiallyIntersectingTimeRange:(id *)a3
{
  [(PXStoryConcreteTimeline *)self numberOfSegments];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v5 = *&a3->var0.var3;
  v11 = *&a3->var0.var0;
  v8 = __84__PXStoryConcreteTimeline__smallestRangeOfSegmentsPotentiallyIntersectingTimeRange___block_invoke;
  v9 = &unk_1E773B938;
  v10 = self;
  v12 = v5;
  v13 = *&a3->var1.var1;
  PXFirstIndexInSortedRangePassingTest();
}

BOOL __84__PXStoryConcreteTimeline__smallestRangeOfSegmentsPotentiallyIntersectingTimeRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 120) + 48 * a2);
  range = v4;
  CMTimeRangeGetEnd(&v5, &range);
  *&v4.start.value = *(a1 + 40);
  v4.start.epoch = *(a1 + 56);
  range.start = v5;
  return CMTimeCompare(&range.start, &v4.start) > 0;
}

BOOL __84__PXStoryConcreteTimeline__smallestRangeOfSegmentsPotentiallyIntersectingTimeRange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 120) + 48 * a2;
  *&v4.value = *v2;
  v4.epoch = *(v2 + 16);
  time2 = *(a1 + 40);
  time1 = v4;
  return CMTimeCompare(&time1, &time2) < 1;
}

- (_NSRange)_smallestRangeOfClipsPotentiallyIntersectingTimeRange:(id *)a3
{
  [(PXStoryConcreteTimeline *)self numberOfClips];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v5 = *&a3->var0.var3;
  v11 = *&a3->var0.var0;
  v8 = __81__PXStoryConcreteTimeline__smallestRangeOfClipsPotentiallyIntersectingTimeRange___block_invoke;
  v9 = &unk_1E773B938;
  v10 = self;
  v12 = v5;
  v13 = *&a3->var1.var1;
  PXFirstIndexInSortedRangePassingTest();
}

BOOL __81__PXStoryConcreteTimeline__smallestRangeOfClipsPotentiallyIntersectingTimeRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 64) + 48 * *(*(*(a1 + 32) + 72) + 8 * a2));
  range = v4;
  CMTimeRangeGetEnd(&v5, &range);
  *&v4.start.value = *(a1 + 40);
  v4.start.epoch = *(a1 + 56);
  range.start = v5;
  return CMTimeCompare(&range.start, &v4.start) > 0;
}

uint64_t __81__PXStoryConcreteTimeline__smallestRangeOfClipsPotentiallyIntersectingTimeRange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 64) + 48 * a2;
  *&v4.value = *v2;
  v4.epoch = *(v2 + 16);
  time2 = *(a1 + 40);
  time1 = v4;
  return CMTimeCompare(&time1, &time2) >> 31;
}

- (void)setNumberOfSegments:(int64_t)a3
{
  if (self->_numberOfSegments != a3)
  {
    self->_numberOfSegments = a3;
    _PXGArrayCapacityResizeToCount();
  }
}

- (void)setNumberOfClips:(int64_t)a3
{
  if (self->_numberOfClips != a3)
  {
    self->_numberOfClips = a3;
    _PXGArrayCapacityResizeToCount();
  }
}

- (void)dealloc
{
  free(self->_clipTimeRanges);
  free(self->_clipIndicesSortedByTimeRangeEnd);
  free(self->_clipFrames);
  free(self->_clipInfos);
  free(self->_clipResourceKinds);
  free(self->_clipResourceIndexes);
  free(self->_segmentTimeRanges);
  free(self->_segmentInfos);
  v3.receiver = self;
  v3.super_class = PXStoryConcreteTimeline;
  [(PXStoryConcreteTimeline *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = [(PXStoryConcreteTimeline *)self description];
  v5 = [v3 initWithString:v4];

  if ([(PXStoryConcreteTimeline *)self numberOfSegments]>= 1)
  {
    v6 = 0;
    do
    {
      [(PXStoryConcreteTimeline *)self infoForSegmentWithIdentifier:[(PXStoryConcreteTimeline *)self identifierForSegmentAtIndex:v6]];
      v7 = PXStorySegmentInfoDescription(v10);
      [v5 appendFormat:@"\n\t%@", v7];

      ++v6;
    }

    while (v6 < [(PXStoryConcreteTimeline *)self numberOfSegments]);
  }

  v8 = [v5 copy];

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PXStoryConcreteTimeline *)self size];
  v6 = NSStringFromCGSize(v12);
  [(PXStoryConcreteTimeline *)self timeRange];
  v7 = PXStoryTimeRangeDescription(v10);
  v8 = [v3 initWithFormat:@"<%@ %p; Size: %@; Time Range: %@>", v5, self, v6, v7];

  return v8;
}

- (PXStoryConcreteTimeline)initWithTimeline:(id)a3
{
  v4 = a3;
  [v4 size];
  v6 = v5;
  v8 = v7;
  v9 = [v4 resourcesDataSource];
  v10 = [(PXStoryConcreteTimeline *)self initWithSize:v9 resourcesDataSource:v6, v8];

  if (v10)
  {
    -[PXStoryConcreteTimeline setNumberOfClips:](v10, "setNumberOfClips:", [v4 numberOfClips]);
    [(PXStoryConcreteTimeline *)v10 numberOfClips];
    _PXGArrayCopyRangeToArray();
  }

  return 0;
}

- (PXStoryConcreteTimeline)initWithSize:(CGSize)a3 resourcesDataSource:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PXStoryConcreteTimeline;
  v9 = [(PXStoryConcreteTimeline *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_size.width = width;
    v9->_size.height = height;
    objc_storeStrong(&v9->_resourcesDataSource, a4);
    *&start.value = PXStoryTimeZero;
    start.epoch = 0;
    *&duration.value = PXStoryTimeZero;
    duration.epoch = 0;
    CMTimeRangeMake(&v14, &start, &duration);
    v11 = *&v14.start.value;
    v12 = *&v14.duration.timescale;
    *&v10->_timeRange.start.epoch = *&v14.start.epoch;
    *&v10->_timeRange.duration.timescale = v12;
    *&v10->_timeRange.start.value = v11;
  }

  return v10;
}

- (PXStoryConcreteTimeline)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:72 description:{@"%s is not available as initializer", "-[PXStoryConcreteTimeline init]"}];

  abort();
}

@end