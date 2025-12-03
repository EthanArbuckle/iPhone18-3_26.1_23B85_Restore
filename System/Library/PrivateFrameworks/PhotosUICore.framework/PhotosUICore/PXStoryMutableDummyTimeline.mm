@interface PXStoryMutableDummyTimeline
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)addClipWithTimeRange:(id *)range frame:(CGRect)frame resource:(id)resource playbackStyle:(int64_t)style transitionInfo:(id *)info;
- (int64_t)addSegmentWithResources:(id)resources preferredDuration:(id *)duration compositionInfo:(id *)info transitionInfo:(id *)transitionInfo;
- (int64_t)addSegmentWithTimeRange:(id *)range compositionInfo:(id *)info transitionInfo:(id *)transitionInfo;
@end

@implementation PXStoryMutableDummyTimeline

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXStoryDummyTimeline alloc];

  return [(PXStoryDummyTimeline *)v4 initWithTimeline:self];
}

- (int64_t)addSegmentWithResources:(id)resources preferredDuration:(id *)duration compositionInfo:(id *)info transitionInfo:(id *)transitionInfo
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  resourcesCopy = resources;
  [(PXStoryDummyTimeline *)self timeRange];
  memset(&v18, 0, sizeof(v18));
  *&v14[1] = 0;
  v14[0] = PXStoryTimeZero;
  *duration = *duration;
  *&range.start.value = PXStoryTimeZero;
  range.start.epoch = 0;
  CMTimeRangeMake(&v18, &range.start, duration);
  range = v18;
  v11 = *&info->var2;
  *duration = *&info->var0;
  *&duration[16] = v11;
  var4 = info->var4;
  v12 = *&transitionInfo->var2.var1;
  v14[0] = *&transitionInfo->var0;
  v14[1] = v12;
  v15 = *&transitionInfo->var3;
  [(PXStoryMutableDummyTimeline *)self addSegmentWithTimeRange:&range compositionInfo:duration transitionInfo:v14];
  [(PXStoryDummyTimeline *)self size];
  PXRectWithOriginAndSize();
}

void __104__PXStoryMutableDummyTimeline_addSegmentWithResources_preferredDuration_compositionInfo_transitionInfo___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  if ([v5 px_storyResourceKind] == 1)
  {
    v12 = [v5 px_storyResourceDisplayAsset];
    v13 = [v12 playbackStyle];
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 144);
  v19[0] = *(a1 + 128);
  v19[1] = v15;
  v19[2] = *(a1 + 160);
  v16 = *(a1 + 104);
  v17[0] = *(a1 + 88);
  v17[1] = v16;
  v18 = *(a1 + 120);
  [v14 addClipWithTimeRange:v19 frame:v5 resource:v13 playbackStyle:v17 transitionInfo:{v6, v7 + a3 * (v10 + (v9 + v10) / v11 - v10), v8}];
}

- (int64_t)addSegmentWithTimeRange:(id *)range compositionInfo:(id *)info transitionInfo:(id *)transitionInfo
{
  selfCopy = self;
  numberOfSegments = [(PXStoryDummyTimeline *)self numberOfSegments];
  [(PXStoryDummyTimeline *)selfCopy setNumberOfSegments:numberOfSegments + 1];
  *(v28 + 3) = 0;
  LODWORD(v28[0]) = 0;
  *&v41[8] = range->var1;
  *v41 = 0;
  v40 = PXStoryTimeZero;
  memset(v43, 0, 40);
  v42 = PXStoryTimeMaximum;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v33[0] = 0;
  *(v33 + 3) = 0;
  v10 = *&transitionInfo->var2.var1;
  v30 = *&transitionInfo->var0;
  v31 = v10;
  *&v32 = *&transitionInfo->var3;
  v11 = *&info->var2;
  *&v29.start.value = *&info->var0;
  *&v29.start.epoch = v11;
  *&v29.duration.timescale = info->var4;
  add = atomic_fetch_add(PXStorySegmentIdentifierMakeUnique_uniqueIdentifier, 1u);
  v37 = *&v29.start.value;
  v38 = *&v29.start.epoch;
  v39 = *&v29.duration.timescale;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v33[0] = v28[0];
  *(v33 + 3) = *(v28 + 3);
  v13 = &selfCopy->super._segmentTimeRanges[numberOfSegments];
  v15 = *&range->var0.var3;
  v14 = *&range->var1.var1;
  *&v13->var0.var0 = *&range->var0.var0;
  *&v13->var0.var3 = v15;
  *&v13->var1.var1 = v14;
  v16 = selfCopy->super._segmentInfos + 200 * numberOfSegments;
  *v16 = add;
  v17 = v38;
  *(v16 + 8) = v37;
  *(v16 + 24) = v17;
  *(v16 + 40) = v39;
  v18 = v35;
  *(v16 + 48) = v34;
  *(v16 + 64) = v18;
  *(v16 + 80) = v36;
  v19 = v42;
  *(v16 + 120) = *&v41[16];
  v20 = v40;
  *(v16 + 104) = *v41;
  *(v16 + 88) = v20;
  v21 = v43[0];
  v22 = v43[1];
  *(v16 + 184) = *&v43[2];
  *(v16 + 168) = v22;
  *(v16 + 152) = v21;
  *(v16 + 136) = v19;
  *(v16 + 192) = 0;
  v23 = v33[0];
  *(v16 + 196) = *(v33 + 3);
  *(v16 + 193) = v23;
  selfCopy = (selfCopy + 8);
  v24 = *&selfCopy->super._timeRange.start.timescale;
  *&v29.start.value = *&selfCopy->super.super.super.isa;
  *&v29.start.epoch = v24;
  *&v29.duration.timescale = *&selfCopy->super._timeRange.duration.value;
  v25 = *&range->var0.var3;
  v28[0] = *&range->var0.var0;
  v28[1] = v25;
  v28[2] = *&range->var1.var1;
  PXStoryTimeRangeUnion(&v29, v28, &v30);
  v26 = v31;
  *&selfCopy->super.super.super.isa = v30;
  *&selfCopy->super._timeRange.start.timescale = v26;
  *&selfCopy->super._timeRange.duration.value = v32;
  return add;
}

- (int64_t)addClipWithTimeRange:(id *)range frame:(CGRect)frame resource:(id)resource playbackStyle:(int64_t)style transitionInfo:(id *)info
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *&v97[8] = range->var1;
  *v97 = 0;
  v96 = PXStoryTimeZero;
  memset(v99, 0, 40);
  v98 = PXStoryTimeMaximum;
  resourceCopy = resource;
  add = atomic_fetch_add(PXStoryClipIdentifierMakeUnique_uniqueIdentifier, 1u);
  px_storyResourceKind = [resourceCopy px_storyResourceKind];
  v18 = *off_1E7721FA8;
  v19 = *(off_1E7721FA8 + 1);
  v20 = *(off_1E7721FA8 + 2);
  v21 = *(off_1E7721FA8 + 3);
  v22 = *&info->var2.var1;
  v93 = *&info->var0;
  v94 = v22;
  v95 = *&info->var3;
  numberOfClips = [(PXStoryDummyTimeline *)self numberOfClips];
  [(PXStoryDummyTimeline *)self setNumberOfClips:numberOfClips + 1];
  v24 = &self->super._clipTimeRanges[numberOfClips];
  v25 = *&range->var0.var0;
  v26 = *&range->var1.var1;
  *&v24->var0.var3 = *&range->var0.var3;
  *&v24->var1.var1 = v26;
  *&v24->var0.var0 = v25;
  v27 = &self->super._clipFrames[numberOfClips];
  v27->origin.x = x;
  v27->origin.y = y;
  v27->size.width = width;
  v27->size.height = height;
  v28 = self->super._clipInfos + 768 * numberOfClips;
  *v28 = add;
  *(v28 + 1) = px_storyResourceKind;
  *(v28 + 2) = width;
  *(v28 + 3) = height;
  *(v28 + 4) = 0;
  v29 = *&v99[2];
  v30 = v99[0];
  *(v28 + 120) = v99[1];
  *(v28 + 104) = v30;
  v31 = *&v97[16];
  *(v28 + 88) = v98;
  *(v28 + 72) = v31;
  v32 = v96;
  *(v28 + 56) = *v97;
  *(v28 + 40) = v32;
  *(v28 + 17) = v29;
  *(v28 + 18) = 0;
  *(v28 + 19) = style;
  *(v28 + 12) = xmmword_1A53838D0;
  *(v28 + 13) = unk_1A53838E0;
  *(v28 + 10) = PXStoryAssetContentInfoNull;
  *(v28 + 11) = unk_1A53838C0;
  *(v28 + 17) = xmmword_1A5383920;
  *(v28 + 18) = xmmword_1A5383930;
  *(v28 + 15) = xmmword_1A5383900;
  *(v28 + 16) = xmmword_1A5383910;
  *(v28 + 14) = xmmword_1A53838F0;
  *(v28 + 38) = v18;
  *(v28 + 39) = v19;
  *(v28 + 40) = v20;
  *(v28 + 41) = v21;
  *(v28 + 68) = 0;
  *(v28 + 31) = xmmword_1A53839E0;
  *(v28 + 32) = xmmword_1A53839F0;
  *(v28 + 33) = xmmword_1A5383A00;
  *(v28 + 27) = xmmword_1A53839A0;
  *(v28 + 28) = unk_1A53839B0;
  *(v28 + 29) = xmmword_1A53839C0;
  *(v28 + 30) = xmmword_1A53839D0;
  *(v28 + 23) = xmmword_1A5383960;
  *(v28 + 24) = unk_1A5383970;
  *(v28 + 25) = xmmword_1A5383980;
  *(v28 + 26) = unk_1A5383990;
  *(v28 + 21) = PXStoryClippingAnimationInfoNone;
  *(v28 + 22) = *algn_1A5383950;
  *(v28 + 83) = 0;
  *(v28 + 616) = xmmword_1A5383A58;
  *(v28 + 632) = xmmword_1A5383A68;
  *(v28 + 648) = xmmword_1A5383A78;
  *(v28 + 552) = PXStoryKenBurnsAnimationInfoNone;
  *(v28 + 568) = unk_1A5383A28;
  *(v28 + 584) = xmmword_1A5383A38;
  *(v28 + 600) = xmmword_1A5383A48;
  v33 = v93;
  v34 = v94;
  *(v28 + 88) = v95;
  *(v28 + 42) = v33;
  *(v28 + 43) = v34;
  *(v28 + 712) = 0u;
  *(v28 + 728) = 0u;
  *(v28 + 744) = 0u;
  *(v28 + 95) = 0;
  v35 = *&self->super._timeRange.start.epoch;
  *&v92.start.value = *&self->super._timeRange.start.value;
  *&v92.start.epoch = v35;
  *&v92.duration.timescale = *&self->super._timeRange.duration.timescale;
  v36 = *&range->var0.var3;
  v91[0] = *&range->var0.var0;
  v91[1] = v36;
  v91[2] = *&range->var1.var1;
  PXStoryTimeRangeUnion(&v92, v91, &v46);
  v37 = v47;
  *&self->super._timeRange.start.value = v46;
  *&self->super._timeRange.start.epoch = v37;
  *&self->super._timeRange.duration.timescale = *v48;
  px_storyResourceIdentifier = [resourceCopy px_storyResourceIdentifier];
  v39 = [(NSCountedSet *)self->super._resourceOccurrenceCounts countForObject:px_storyResourceIdentifier];
  v40 = [PXStoryDummyClip alloc];
  *&v47 = width;
  *(&v47 + 1) = height;
  v49 = PXStoryAssetContentInfoNull;
  v50 = unk_1A53838C0;
  *&v48[7] = v98;
  *&v48[9] = v99[0];
  *&v48[11] = v99[1];
  *&v48[1] = v96;
  *&v48[3] = *v97;
  *&v48[5] = *&v97[16];
  *&v46 = add;
  *(&v46 + 1) = px_storyResourceKind;
  v48[0] = 0;
  v48[13] = *&v99[2];
  v48[14] = 0;
  v48[15] = style;
  v51 = xmmword_1A53838D0;
  v52 = unk_1A53838E0;
  v56 = xmmword_1A5383920;
  v57 = xmmword_1A5383930;
  v53 = xmmword_1A53838F0;
  v54 = xmmword_1A5383900;
  v55 = xmmword_1A5383910;
  v58 = v18;
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v75 = 0;
  v72 = xmmword_1A53839E0;
  v73 = xmmword_1A53839F0;
  v74 = xmmword_1A5383A00;
  v68 = xmmword_1A53839A0;
  v69 = unk_1A53839B0;
  v70 = xmmword_1A53839C0;
  v71 = xmmword_1A53839D0;
  v64 = xmmword_1A5383960;
  v65 = unk_1A5383970;
  v66 = xmmword_1A5383980;
  v67 = unk_1A5383990;
  v62 = PXStoryClippingAnimationInfoNone;
  v63 = *algn_1A5383950;
  v80 = xmmword_1A5383A58;
  v81 = xmmword_1A5383A68;
  v82 = xmmword_1A5383A78;
  v76 = PXStoryKenBurnsAnimationInfoNone;
  v77 = unk_1A5383A28;
  v78 = xmmword_1A5383A38;
  v79 = xmmword_1A5383A48;
  v83 = 0;
  v86 = v95;
  v85 = v94;
  v84 = v93;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v41 = [(PXStoryDummyClip *)v40 initWithInfo:&v46 resource:resourceCopy resourceOccurrenceIndex:v39];

  clipsByIdentifier = self->super._clipsByIdentifier;
  v43 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXStoryDummyClip identifier](v41, "identifier")}];
  [(NSMutableDictionary *)clipsByIdentifier setObject:v41 forKeyedSubscript:v43];

  [(NSCountedSet *)self->super._resourceOccurrenceCounts addObject:px_storyResourceIdentifier];
  identifier = [(PXStoryDummyClip *)v41 identifier];

  return identifier;
}

@end