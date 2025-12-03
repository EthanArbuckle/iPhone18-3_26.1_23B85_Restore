@interface PXStoryMutableConcreteTimeline
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_appendSegmentFromTimeline:(id)timeline withIdentifier:(int64_t)identifier;
- (int64_t)addSegmentWithTimeRange:(id *)range info:(id *)info;
- (int64_t)appendSegmentWithDurationInfo:(id *)info clipCount:(int64_t)count compositionInfo:(id *)compositionInfo configuration:(id)configuration;
- (int64_t)insertClipInTimeRange:(id *)range resourceKind:(int64_t)kind options:(unint64_t)options resourceIndex:(int64_t)index frame:(CGRect)frame transitionInfo:(id *)info kenBurnsAnimationInfo:(id *)animationInfo;
- (void)appendTimeRange:(id *)range fromTimeline:(id)timeline;
- (void)appendTimeline:(id)timeline;
- (void)dealloc;
- (void)modifyInfoForSegmentAtIndex:(int64_t)index usingBlock:(id)block;
- (void)modifyOptionsForClipWithIdentifier:(int64_t)identifier hintIndex:(int64_t)index usingBlock:(id)block;
- (void)removeAllClipsAndSegments;
- (void)setStartTime:(id *)time;
- (void)setTimeline:(id)timeline;
@end

@implementation PXStoryMutableConcreteTimeline

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXStoryConcreteTimeline alloc];

  return [(PXStoryConcreteTimeline *)v4 initWithTimeline:self];
}

- (void)setStartTime:(id *)time
{
  if ([(PXStoryConcreteTimeline *)self numberOfClips]|| [(PXStoryConcreteTimeline *)self numberOfSegments])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:726 description:@"currently only supporting changing the start time for an empty timeline"];
  }

  [(PXStoryConcreteTimeline *)self timeRange];
  duration = v8.duration;
  start = *time;
  CMTimeRangeMake(&v8, &start, &duration);
  v6 = *&v8.start.epoch;
  *&self->super._timeRange.start.value = *&v8.start.value;
  *&self->super._timeRange.start.epoch = v6;
  *&self->super._timeRange.duration.timescale = *&v8.duration.timescale;
}

- (void)removeAllClipsAndSegments
{
  selfCopy = self;
  [(PXStoryConcreteTimeline *)self setNumberOfClips:0];
  [(PXStoryConcreteTimeline *)selfCopy setNumberOfSegments:0];
  selfCopy = (selfCopy + 8);
  *&start.value = PXStoryTimeZero;
  start.epoch = 0;
  *&duration.value = PXStoryTimeZero;
  duration.epoch = 0;
  CMTimeRangeMake(&v4, &start, &duration);
  v3 = *&v4.start.epoch;
  *&selfCopy->super.super.super.isa = *&v4.start.value;
  *&selfCopy->super._timeRange.start.timescale = v3;
  *&selfCopy->super._timeRange.duration.value = *&v4.duration.timescale;
}

- (void)modifyOptionsForClipWithIdentifier:(int64_t)identifier hintIndex:(int64_t)index usingBlock:(id)block
{
  blockCopy = block;
  numberOfClips = [(PXStoryConcreteTimeline *)self numberOfClips];
  if (index < 0 || numberOfClips <= index || *(&self->super._clipInfos->var0 + 96 * index) != identifier)
  {
    PXAssertGetLog();
  }

  if (index >= numberOfClips)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:715 description:{@"no clip found with identifier %li", identifier}];
  }

  blockCopy[2](blockCopy, &self->super._clipInfos->var3 + 96 * index);
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

- (int64_t)insertClipInTimeRange:(id *)range resourceKind:(int64_t)kind options:(unint64_t)options resourceIndex:(int64_t)index frame:(CGRect)frame transitionInfo:(id *)info kenBurnsAnimationInfo:(id *)animationInfo
{
  memset(v27, 0, sizeof(v27));
  *&v71[8] = range->var1;
  *v71 = 0;
  v70 = PXStoryTimeZero;
  memset(v73, 0, 40);
  v72 = PXStoryTimeMaximum;
  add = atomic_fetch_add(PXStoryClipIdentifierMakeUnique_uniqueIdentifier, 1u);
  v10 = *&animationInfo->var1.var0.tx;
  v58 = *&animationInfo->var1.var0.c;
  v59 = v10;
  v60 = *&animationInfo->var2.var0;
  v11 = *&animationInfo->var0.var0.c;
  v54 = *&animationInfo->var0.var0.a;
  v55 = v11;
  v12 = *&animationInfo->var1.var0.a;
  v56 = *&animationInfo->var0.var0.tx;
  v57 = v12;
  v13 = *&info->var2.var1;
  v62 = *&info->var0;
  v63 = v13;
  v35 = xmmword_1A5383910;
  v36 = xmmword_1A5383920;
  v31 = xmmword_1A53838D0;
  v32 = unk_1A53838E0;
  v33 = xmmword_1A53838F0;
  v34 = xmmword_1A5383900;
  v29 = PXStoryAssetContentInfoNull;
  v30 = unk_1A53838C0;
  v14 = *&range->var0.var3;
  v69[0] = *&range->var0.var0;
  v69[1] = v14;
  v69[2] = *&range->var1.var1;
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
  var3 = animationInfo->var2.var3;
  v64 = *&info->var3;
  v18[0] = add;
  v18[1] = kind;
  v18[2] = *&frame.size.width;
  v18[3] = *&frame.size.height;
  v18[4] = options;
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
  return [(PXStoryMutableConcreteTimeline *)self addClipWithTimeRange:v69 frame:v18 info:index resourceIndex:frame.origin.x, frame.origin.y];
}

- (void)setTimeline:(id)timeline
{
  timelineCopy = timeline;
  [(PXStoryMutableConcreteTimeline *)self removeAllClipsAndSegments];
  [(PXStoryMutableConcreteTimeline *)self appendTimeline:timelineCopy];
}

- (int64_t)_appendSegmentFromTimeline:(id)timeline withIdentifier:(int64_t)identifier
{
  timelineCopy = timeline;
  v7 = timelineCopy;
  memset(v38, 0, sizeof(v38));
  v37 = 0u;
  if (timelineCopy)
  {
    [timelineCopy timeRangeForSegmentWithIdentifier:identifier];
    *&v34[8] = *(v38 + 8);
    *&v34[24] = *(&v38[1] + 1);
    *v34 = 0;
    v33 = PXStoryTimeZero;
    memset(v36, 0, 40);
    v35 = PXStoryTimeMaximum;
    [v7 infoForSegmentWithIdentifier:identifier];
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

- (void)appendTimeRange:(id *)range fromTimeline:(id)timeline
{
  timelineCopy = timeline;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PXStoryMutableConcreteTimeline_appendTimeRange_fromTimeline___block_invoke;
  v10[3] = &unk_1E773B9D8;
  v10[4] = self;
  v11 = timelineCopy;
  v7 = *&range->var0.var3;
  v9[0] = *&range->var0.var0;
  v9[1] = v7;
  v9[2] = *&range->var1.var1;
  v8 = timelineCopy;
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

- (void)appendTimeline:(id)timeline
{
  timelineCopy = timeline;
  [(PXStoryConcreteTimeline *)self size];
  v7 = v6;
  v9 = v8;
  [timelineCopy size];
  if (v7 != v11 || v9 != v10)
  {
    PXAssertGetLog();
  }

  resourcesDataSource = [(PXStoryConcreteTimeline *)self resourcesDataSource];
  resourcesDataSource2 = [timelineCopy resourcesDataSource];
  v15 = resourcesDataSource2;
  if (resourcesDataSource == resourcesDataSource2)
  {
  }

  else
  {
    v16 = [resourcesDataSource isEqual:resourcesDataSource2];

    if (v16)
    {
      goto LABEL_11;
    }

    resourcesDataSource = [MEMORY[0x1E696AAA8] currentHandler];
    [resourcesDataSource handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:582 description:@"timeline resources data sources aren't compatible"];
  }

LABEL_11:
  memset(&v21, 0, sizeof(v21));
  [(PXStoryConcreteTimeline *)self timeRange];
  range = rhs;
  CMTimeRangeGetEnd(&v20, &range);
  if (timelineCopy)
  {
    [timelineCopy timeRange];
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
  -[PXStoryConcreteTimeline setNumberOfClips:](self, "setNumberOfClips:", [timelineCopy numberOfClips] + -[PXStoryConcreteTimeline numberOfClips](self, "numberOfClips"));
  _PXGArrayCopyRangeToArray();
}

- (int64_t)addSegmentWithTimeRange:(id *)range info:(id *)info
{
  numberOfSegments = [(PXStoryConcreteTimeline *)self numberOfSegments];
  [(PXStoryConcreteTimeline *)self setNumberOfSegments:numberOfSegments + 1];
  v8 = &self->super._segmentTimeRanges[numberOfSegments];
  v9 = *&range->var1.var1;
  v10 = *&range->var0.var0;
  *&v8->var0.var3 = *&range->var0.var3;
  *&v8->var1.var1 = v9;
  *&v8->var0.var0 = v10;
  numberOfSegments *= 200;
  v11 = self->super._segmentInfos + numberOfSegments;
  v12 = *&info->var3.var0.var0;
  v13 = *&info->var3.var0.var3;
  v14 = *&info->var3.var1.var1;
  *(v11 + 5) = *&info->var2.var3;
  *(v11 + 6) = v12;
  *(v11 + 7) = v13;
  *(v11 + 8) = v14;
  v15 = *&info->var1.var3;
  v16 = *&info->var2.var0;
  v17 = *&info->var2.var2.var1;
  *(v11 + 1) = *&info->var1.var1;
  *(v11 + 2) = v15;
  *(v11 + 3) = v16;
  *(v11 + 4) = v17;
  v18 = *&info->var3.var2.var0;
  v19 = *&info->var3.var2.var3;
  v20 = *&info->var3.var3.var0.var1;
  *(v11 + 24) = info->var3.var3.var1;
  *(v11 + 10) = v19;
  *(v11 + 11) = v20;
  *(v11 + 9) = v18;
  *v11 = *&info->var0;
  v21 = *&range->var0.var3;
  *&range.start.value = *&range->var0.var0;
  *&range.start.epoch = v21;
  *&range.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v23, &range);
  range.start = self->super._timeRange.duration;
  time2 = v23;
  CMTimeMaximum(&v24, &range.start, &time2);
  self->super._timeRange.duration = v24;
  return *(&self->super._segmentInfos->var0 + numberOfSegments);
}

- (void)modifyInfoForSegmentAtIndex:(int64_t)index usingBlock:(id)block
{
  v52 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([(PXStoryConcreteTimeline *)self numberOfSegments]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:550 description:{@"Asked to modify out-of bounds segment index %ld", index}];
  }

  v8 = self->super._segmentInfos + 200 * index;
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
  blockCopy[2](blockCopy, v39);
  if (*v39 != v9)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimeline.m" lineNumber:554 description:@"Modified segment info identifier must match existing identifier."];
  }

  v14 = self->super._segmentInfos + 200 * index;
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
  v24 = &self->super._segmentTimeRanges[index];
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
    v26 = index + 1;
    if (index + 1 < [(PXStoryConcreteTimeline *)self numberOfSegments])
    {
      v27 = 48 * index + 48;
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
  rhs = segmentTimeRanges[index];
  lhs = rhs;
  CMTimeRangeGetEnd(&v35, &lhs);
  *&lhs.var0.var0 = *&p_timeRange->duration.value;
  lhs.var0.var3 = p_timeRange->duration.epoch;
  rhs.var0 = v35;
  CMTimeMaximum(&v36, &lhs, &rhs);
  p_timeRange->duration = v36;
}

- (int64_t)appendSegmentWithDurationInfo:(id *)info clipCount:(int64_t)count compositionInfo:(id *)compositionInfo configuration:(id)configuration
{
  configurationCopy = configuration;
  [(PXStoryConcreteTimeline *)self setNumberOfClips:[(PXStoryConcreteTimeline *)self numberOfClips]+ count];
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