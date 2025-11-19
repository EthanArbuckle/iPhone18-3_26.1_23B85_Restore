@interface PXStoryMutableConcreteTimeline
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_appendSegmentFromTimeline:(id)a3 withIdentifier:(int64_t)a4;
- (int64_t)addSegmentWithTimeRange:(id *)a3 info:(id *)a4;
- (int64_t)appendSegmentWithDurationInfo:(id *)a3 clipCount:(int64_t)a4 compositionInfo:(id *)a5 configuration:(id)a6;
- (int64_t)insertClipInTimeRange:(id *)a3 resourceKind:(int64_t)a4 options:(unint64_t)a5 resourceIndex:(int64_t)a6 frame:(CGRect)a7 transitionInfo:(id *)a8 kenBurnsAnimationInfo:(id *)a9;
- (void)appendTimeRange:(id *)a3 fromTimeline:(id)a4;
- (void)appendTimeline:(id)a3;
- (void)dealloc;
- (void)modifyInfoForSegmentAtIndex:(int64_t)a3 usingBlock:(id)a4;
- (void)modifyOptionsForClipWithIdentifier:(int64_t)a3 hintIndex:(int64_t)a4 usingBlock:(id)a5;
- (void)removeAllClipsAndSegments;
- (void)setStartTime:(id *)a3;
- (void)setTimeline:(id)a3;
@end

@implementation PXStoryMutableConcreteTimeline

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXStoryConcreteTimeline alloc];

  return [(PXStoryConcreteTimeline *)v4 initWithTimeline:self];
}

- (void)setStartTime:(id *)a3
{
  if ([(PXStoryConcreteTimeline *)self numberOfClips]|| [(PXStoryConcreteTimeline *)self numberOfSegments])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:726 description:@"currently only supporting changing the start time for an empty timeline"];
  }

  [(PXStoryConcreteTimeline *)self timeRange];
  duration = v8.duration;
  start = *a3;
  CMTimeRangeMake(&v8, &start, &duration);
  v6 = *&v8.start.epoch;
  *&self->super._timeRange.start.value = *&v8.start.value;
  *&self->super._timeRange.start.epoch = v6;
  *&self->super._timeRange.duration.timescale = *&v8.duration.timescale;
}

- (void)removeAllClipsAndSegments
{
  v2 = self;
  [(PXStoryConcreteTimeline *)self setNumberOfClips:0];
  [(PXStoryConcreteTimeline *)v2 setNumberOfSegments:0];
  v2 = (v2 + 8);
  *&start.value = PXStoryTimeZero;
  start.epoch = 0;
  *&duration.value = PXStoryTimeZero;
  duration.epoch = 0;
  CMTimeRangeMake(&v4, &start, &duration);
  v3 = *&v4.start.epoch;
  *&v2->super.super.super.isa = *&v4.start.value;
  *&v2->super._timeRange.start.timescale = v3;
  *&v2->super._timeRange.duration.value = *&v4.duration.timescale;
}

- (void)modifyOptionsForClipWithIdentifier:(int64_t)a3 hintIndex:(int64_t)a4 usingBlock:(id)a5
{
  v9 = a5;
  v10 = [(PXStoryConcreteTimeline *)self numberOfClips];
  if (a4 < 0 || v10 <= a4 || *(&self->super._clipInfos->var0 + 96 * a4) != a3)
  {
    PXAssertGetLog();
  }

  if (a4 >= v10)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:715 description:{@"no clip found with identifier %li", a3}];
  }

  v9[2](v9, &self->super._clipInfos->var3 + 96 * a4);
}

BOOL __80__PXStoryMutableConcreteTimeline_addClipWithTimeRange_frame_info_resourceIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 64) + 48 * *(*(*(a1 + 32) + 72) + 8 * a2));
  range = v4;
  CMTimeRangeGetEnd(&v5, &range);
  *&v4.start.value = *(a1 + 40);
  v4.start.epoch = *(a1 + 56);
  range.start = v5;
  return CMTimeCompare(&range.start, &v4.start) > 0;
}

BOOL __80__PXStoryMutableConcreteTimeline_addClipWithTimeRange_frame_info_resourceIndex___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 64) + 48 * *(*(*(a1 + 32) + 72) + 8 * a2));
  v2 = *(a1 + 56);
  *&range.start.value = *(a1 + 40);
  *&range.start.epoch = v2;
  *&range.duration.timescale = *(a1 + 72);
  CMTimeRangeGetEnd(&v6, &range);
  range = v4;
  CMTimeRangeGetEnd(&v5, &range);
  range.start = v6;
  v4.start = v5;
  return CMTimeCompare(&range.start, &v4.start) < 1;
}

- (int64_t)insertClipInTimeRange:(id *)a3 resourceKind:(int64_t)a4 options:(unint64_t)a5 resourceIndex:(int64_t)a6 frame:(CGRect)a7 transitionInfo:(id *)a8 kenBurnsAnimationInfo:(id *)a9
{
  memset(v27, 0, sizeof(v27));
  *&v71[8] = a3->var1;
  *v71 = 0;
  v70 = PXStoryTimeZero;
  memset(v73, 0, 40);
  v72 = PXStoryTimeMaximum;
  add = atomic_fetch_add(PXStoryClipIdentifierMakeUnique_uniqueIdentifier, 1u);
  v10 = *&a9->var1.var0.tx;
  v58 = *&a9->var1.var0.c;
  v59 = v10;
  v60 = *&a9->var2.var0;
  v11 = *&a9->var0.var0.c;
  v54 = *&a9->var0.var0.a;
  v55 = v11;
  v12 = *&a9->var1.var0.a;
  v56 = *&a9->var0.var0.tx;
  v57 = v12;
  v13 = *&a8->var2.var1;
  v62 = *&a8->var0;
  v63 = v13;
  v35 = xmmword_1A5383910;
  v36 = xmmword_1A5383920;
  v31 = xmmword_1A53838D0;
  v32 = unk_1A53838E0;
  v33 = xmmword_1A53838F0;
  v34 = xmmword_1A5383900;
  v29 = PXStoryAssetContentInfoNull;
  v30 = unk_1A53838C0;
  v14 = *&a3->var0.var3;
  v69[0] = *&a3->var0.var0;
  v69[1] = v14;
  v69[2] = *&a3->var1.var1;
  v22 = v72;
  v23 = v73[0];
  v24 = v73[1];
  v19 = v70;
  v20 = *v71;
  v21 = *&v71[16];
  v16 = *off_1E7721FA8;
  v15 = *(off_1E7721FA8 + 1);
  v37 = xmmword_1A5383930;
  v38 = v16;
  v49 = xmmword_1A53839D0;
  v50 = xmmword_1A53839E0;
  v51 = xmmword_1A53839F0;
  v52 = xmmword_1A5383A00;
  v45 = unk_1A5383990;
  v46 = xmmword_1A53839A0;
  v47 = unk_1A53839B0;
  v48 = xmmword_1A53839C0;
  v41 = *algn_1A5383950;
  v42 = xmmword_1A5383960;
  v43 = unk_1A5383970;
  v44 = xmmword_1A5383980;
  var3 = a9->var2.var3;
  v64 = *&a8->var3;
  v18[0] = add;
  v18[1] = a4;
  v18[2] = *&a7.size.width;
  v18[3] = *&a7.size.height;
  v18[4] = a5;
  v25 = *&v73[2];
  v26 = 0;
  v28 = 0;
  v53 = 0;
  v39 = v15;
  v40 = PXStoryClippingAnimationInfoNone;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v68 = 0;
  return [(PXStoryMutableConcreteTimeline *)self addClipWithTimeRange:v69 frame:v18 info:a6 resourceIndex:a7.origin.x, a7.origin.y];
}

- (void)setTimeline:(id)a3
{
  v4 = a3;
  [(PXStoryMutableConcreteTimeline *)self removeAllClipsAndSegments];
  [(PXStoryMutableConcreteTimeline *)self appendTimeline:v4];
}

- (int64_t)_appendSegmentFromTimeline:(id)a3 withIdentifier:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  memset(v38, 0, sizeof(v38));
  v37 = 0u;
  if (v6)
  {
    [v6 timeRangeForSegmentWithIdentifier:a4];
    *&v34[8] = *(v38 + 8);
    *&v34[24] = *(&v38[1] + 1);
    *v34 = 0;
    v33 = PXStoryTimeZero;
    memset(v36, 0, 40);
    v35 = PXStoryTimeMaximum;
    [v7 infoForSegmentWithIdentifier:a4];
  }

  else
  {
    *&v34[8] = *(v38 + 8);
    *&v34[24] = *(&v38[1] + 1);
    *v34 = 0;
    v33 = PXStoryTimeZero;
    memset(v36, 0, 40);
    v35 = PXStoryTimeMaximum;
    v29 = 0;
    memset(v28, 0, sizeof(v28));
  }

  v30 = *(v28 + 8);
  v31 = *(&v28[1] + 8);
  v32 = *(&v28[2] + 1);
  v16 = v37;
  v17 = v38[0];
  v18 = v38[1];
  v8 = [v7 _smallestRangeOfClipsPotentiallyIntersectingTimeRange:&v16];
  v10 = v9;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __76__PXStoryMutableConcreteTimeline__appendSegmentFromTimeline_withIdentifier___block_invoke;
  v24[3] = &unk_1E773BA00;
  v26 = v8;
  v27 = v9;
  v25 = v7;
  v20 = v36[0];
  v21 = v36[1];
  v16 = v33;
  v17 = *v34;
  v18 = *&v34[16];
  v19 = v35;
  v22 = *&v36[2];
  v23 = 0;
  v14[0] = v30;
  v14[1] = v31;
  v15 = v32;
  v11 = v7;
  v12 = [(PXStoryMutableConcreteTimeline *)self appendSegmentWithDurationInfo:&v16 clipCount:v10 compositionInfo:v14 configuration:v24];

  return v12;
}

- (void)appendTimeRange:(id *)a3 fromTimeline:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PXStoryMutableConcreteTimeline_appendTimeRange_fromTimeline___block_invoke;
  v10[3] = &unk_1E773B9D8;
  v10[4] = self;
  v11 = v6;
  v7 = *&a3->var0.var3;
  v9[0] = *&a3->var0.var0;
  v9[1] = v7;
  v9[2] = *&a3->var1.var1;
  v8 = v6;
  [v8 enumerateSegmentsInTimeRange:v9 usingBlock:v10];
}

uint64_t __63__PXStoryMutableConcreteTimeline_appendTimeRange_fromTimeline___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 >= 1)
  {
    v14 = v7;
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v18 = v8;
    v19 = v9;
    v11 = a2;
    v12 = result;
    do
    {
      v13 = *a4;
      a4 += 25;
      result = [*(v12 + 32) _appendSegmentFromTimeline:*(v12 + 40) withIdentifier:{v13, v14, v15, v16, v17, v18, v19}];
      --v11;
    }

    while (v11);
  }

  return result;
}

- (void)appendTimeline:(id)a3
{
  v5 = a3;
  [(PXStoryConcreteTimeline *)self size];
  v7 = v6;
  v9 = v8;
  [v5 size];
  if (v7 != v11 || v9 != v10)
  {
    PXAssertGetLog();
  }

  v13 = [(PXStoryConcreteTimeline *)self resourcesDataSource];
  v14 = [v5 resourcesDataSource];
  v15 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    v16 = [v13 isEqual:v14];

    if (v16)
    {
      goto LABEL_11;
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:582 description:@"timeline resources data sources aren't compatible"];
  }

LABEL_11:
  memset(&v21, 0, sizeof(v21));
  [(PXStoryConcreteTimeline *)self timeRange];
  range = rhs;
  CMTimeRangeGetEnd(&v20, &range);
  if (v5)
  {
    [v5 timeRange];
  }

  else
  {
    v18 = 0;
    v17 = 0u;
  }

  *&rhs.start.value = v17;
  rhs.start.epoch = v18;
  range.start = v20;
  CMTimeSubtract(&v21, &range.start, &rhs.start);
  -[PXStoryConcreteTimeline setNumberOfClips:](self, "setNumberOfClips:", [v5 numberOfClips] + -[PXStoryConcreteTimeline numberOfClips](self, "numberOfClips"));
  _PXGArrayCopyRangeToArray();
}

- (int64_t)addSegmentWithTimeRange:(id *)a3 info:(id *)a4
{
  v7 = [(PXStoryConcreteTimeline *)self numberOfSegments];
  [(PXStoryConcreteTimeline *)self setNumberOfSegments:v7 + 1];
  v8 = &self->super._segmentTimeRanges[v7];
  v9 = *&a3->var1.var1;
  v10 = *&a3->var0.var0;
  *&v8->var0.var3 = *&a3->var0.var3;
  *&v8->var1.var1 = v9;
  *&v8->var0.var0 = v10;
  v7 *= 200;
  v11 = self->super._segmentInfos + v7;
  v12 = *&a4->var3.var0.var0;
  v13 = *&a4->var3.var0.var3;
  v14 = *&a4->var3.var1.var1;
  *(v11 + 5) = *&a4->var2.var3;
  *(v11 + 6) = v12;
  *(v11 + 7) = v13;
  *(v11 + 8) = v14;
  v15 = *&a4->var1.var3;
  v16 = *&a4->var2.var0;
  v17 = *&a4->var2.var2.var1;
  *(v11 + 1) = *&a4->var1.var1;
  *(v11 + 2) = v15;
  *(v11 + 3) = v16;
  *(v11 + 4) = v17;
  v18 = *&a4->var3.var2.var0;
  v19 = *&a4->var3.var2.var3;
  v20 = *&a4->var3.var3.var0.var1;
  *(v11 + 24) = a4->var3.var3.var1;
  *(v11 + 10) = v19;
  *(v11 + 11) = v20;
  *(v11 + 9) = v18;
  *v11 = *&a4->var0;
  v21 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v21;
  *&range.duration.timescale = *&a3->var1.var1;
  CMTimeRangeGetEnd(&v23, &range);
  range.start = self->super._timeRange.duration;
  time2 = v23;
  CMTimeMaximum(&v24, &range.start, &time2);
  self->super._timeRange.duration = v24;
  return *(&self->super._segmentInfos->var0 + v7);
}

- (void)modifyInfoForSegmentAtIndex:(int64_t)a3 usingBlock:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ([(PXStoryConcreteTimeline *)self numberOfSegments]<= a3)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:550 description:{@"Asked to modify out-of bounds segment index %ld", a3}];
  }

  v8 = self->super._segmentInfos + 200 * a3;
  v9 = *v8;
  v10 = *(v8 + 88);
  v49 = *(v8 + 72);
  v50 = v10;
  v11 = *(v8 + 120);
  *v51 = *(v8 + 104);
  *&v51[16] = v11;
  v12 = *(v8 + 24);
  v45 = *(v8 + 8);
  v46 = v12;
  v13 = *(v8 + 56);
  v47 = *(v8 + 40);
  v48 = v13;
  v43 = *(v8 + 184);
  v42 = *(v8 + 168);
  v41 = *(v8 + 152);
  v40 = *(v8 + 136);
  *v39 = v9;
  *&v39[72] = v49;
  *&v39[88] = v50;
  *&v39[104] = *v51;
  *&v39[120] = *&v51[16];
  *&v39[8] = v45;
  *&v39[24] = v46;
  *&v39[40] = v47;
  *&v39[56] = v13;
  *&v39[184] = v43;
  *&v39[168] = v42;
  *&v39[152] = v41;
  *&v39[136] = v40;
  v7[2](v7, v39);
  if (*v39 != v9)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:554 description:@"Modified segment info identifier must match existing identifier."];
  }

  v14 = self->super._segmentInfos + 200 * a3;
  *v14 = *v39;
  v15 = *&v39[16];
  v16 = *&v39[32];
  v17 = *&v39[64];
  *(v14 + 3) = *&v39[48];
  *(v14 + 4) = v17;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  v18 = *&v39[80];
  v19 = *&v39[96];
  v20 = *&v39[128];
  *(v14 + 7) = *&v39[112];
  *(v14 + 8) = v20;
  *(v14 + 5) = v18;
  *(v14 + 6) = v19;
  v21 = *&v39[144];
  v22 = *&v39[160];
  v23 = *&v39[176];
  *(v14 + 24) = *&v39[192];
  *(v14 + 10) = v22;
  *(v14 + 11) = v23;
  *(v14 + 9) = v21;
  v24 = &self->super._segmentTimeRanges[a3];
  v25 = *&v39[128];
  *&v24->var1.var0 = *&v39[112];
  v24->var1.var3 = v25;
  memset(&v38, 0, sizeof(v38));
  *&lhs.var0.var0 = *&v39[112];
  lhs.var0.var3 = *&v39[128];
  *&rhs.var0.var0 = *&v51[8];
  rhs.var0.var3 = *&v51[24];
  CMTimeSubtract(&v38, &lhs, &rhs);
  lhs.var0 = v38;
  *&rhs.var0.var0 = PXStoryTimeZero;
  rhs.var0.var3 = 0;
  if (CMTimeCompare(&lhs, &rhs))
  {
    v26 = a3 + 1;
    if (a3 + 1 < [(PXStoryConcreteTimeline *)self numberOfSegments])
    {
      v27 = 48 * a3 + 48;
      do
      {
        v28 = self->super._segmentTimeRanges + v27;
        rhs = *v28;
        v36 = v38;
        PXStoryTimeRangeOffset(&rhs, &v36, &lhs);
        v29 = *&lhs.var0.var0;
        v30 = *&lhs.var1.var1;
        *(v28 + 1) = *&lhs.var0.var3;
        *(v28 + 2) = v30;
        *v28 = v29;
        ++v26;
        v27 += 48;
      }

      while (v26 < [(PXStoryConcreteTimeline *)self numberOfSegments]);
    }
  }

  segmentTimeRanges = self->super._segmentTimeRanges;
  p_timeRange = &self->super._timeRange;
  rhs = segmentTimeRanges[a3];
  lhs = rhs;
  CMTimeRangeGetEnd(&v35, &lhs);
  *&lhs.var0.var0 = *&p_timeRange->duration.value;
  lhs.var0.var3 = p_timeRange->duration.epoch;
  rhs.var0 = v35;
  CMTimeMaximum(&v36, &lhs, &rhs);
  p_timeRange->duration = v36;
}

- (int64_t)appendSegmentWithDurationInfo:(id *)a3 clipCount:(int64_t)a4 compositionInfo:(id *)a5 configuration:(id)a6
{
  v8 = a6;
  [(PXStoryConcreteTimeline *)self setNumberOfClips:[(PXStoryConcreteTimeline *)self numberOfClips]+ a4];
  _PXGArrayCapacityResizeToCount();
}

- (void)dealloc
{
  free(self->_playbackStyles);
  free(self->_assetContentInfos);
  free(self->_safeAreaInsets);
  free(self->_clippingAnimationInfos);
  free(self->_kenBurnsAnimationInfos);
  free(self->_transitionInfos);
  free(self->_audioInfos);
  free(self->_clipOptions);
  v3.receiver = self;
  v3.super_class = PXStoryMutableConcreteTimeline;
  [(PXStoryConcreteTimeline *)&v3 dealloc];
}

@end