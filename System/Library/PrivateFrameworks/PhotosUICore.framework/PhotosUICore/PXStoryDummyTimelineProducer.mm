@interface PXStoryDummyTimelineProducer
- (id)createTimelineWithConfiguration:(id)configuration detailsFraction:(double)fraction;
- (id)requestTimelineWithConfiguration:(id)configuration options:(unint64_t)options resultHandler:(id)handler;
- (void)setFixedDuration:(id *)duration;
@end

@implementation PXStoryDummyTimelineProducer

- (void)setFixedDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_fixedDuration.epoch = duration->var3;
  *&self->_fixedDuration.value = v3;
}

- (id)createTimelineWithConfiguration:(id)configuration detailsFraction:(double)fraction
{
  v56[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = [PXStoryMutableDummyTimeline alloc];
  spec = [configurationCopy spec];
  [spec viewportSize];
  v9 = [(PXStoryDummyTimeline *)v7 initWithSize:?];

  resourcesDataSource = [configurationCopy resourcesDataSource];
  spec2 = [configurationCopy spec];
  style = [configurationCopy style];
  createRandomNumberGenerators = [style createRandomNumberGenerators];
  errorReporter = [configurationCopy errorReporter];
  v43 = createRandomNumberGenerators;
  v15 = [style timelineStyleWithSpec:spec2 resourcesDataSource:resourcesDataSource randomNumberGenerators:createRandomNumberGenerators errorReporter:errorReporter];

  keyAssetResource = [resourcesDataSource keyAssetResource];
  v42 = keyAssetResource;
  if (keyAssetResource)
  {
    v56[0] = keyAssetResource;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    CMTimeMakeWithSeconds(&v54, 2.0, 600);
    memset(&range, 0, 40);
    *&rhs.start.value = PXStoryTransitionInfoNone;
    *&rhs.start.epoch = unk_1A5383378;
    *&rhs.duration.timescale = 0;
    [(PXStoryMutableDummyTimeline *)v9 addSegmentWithResources:v17 preferredDuration:&v54 compositionInfo:&range transitionInfo:&rhs];
  }

  memset(&v54, 0, sizeof(v54));
  [(PXStoryDummyTimelineProducer *)self fixedDuration];
  flags = v54.flags;
  numberOfDisplayAssetResources = [resourcesDataSource numberOfDisplayAssetResources];
  if (numberOfDisplayAssetResources >= 1)
  {
    v19 = numberOfDisplayAssetResources;
    v39 = style;
    v40 = spec2;
    v41 = configurationCopy;
    memset(&v53, 0, sizeof(v53));
    if (v15)
    {
      [v15 defaultDisplayAssetPresentationDuration];
    }

    v20 = [[_PXStoryDummyDisplayAssetsFetchResult alloc] initWithResourcesDataSource:resourcesDataSource];
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v22 = 0;
    v23 = 0;
    v24 = v19;
    v44 = v20;
    while (1)
    {
      v25 = v19 - v22;
      v26 = v19 - v22 >= 3 ? 3 : v19 - v22;
      [(_PXStoryDummyDisplayAssetsFetchResult *)v20 configureWithRange:v22, v26, v39, v40, v41, v42];
      if (v9)
      {
        [(PXStoryDummyTimeline *)v9 timeRange];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      range = rhs;
      CMTimeRangeGetEnd(&v52, &range);
      v27 = [v15 allowedClipCompositionsWithStartTime:&v52 nextDisplayAssets:v20];
      if ([v27 count] < 2)
      {
        break;
      }

      v28 = 1;
      if (v23)
      {
        if (v22 / v24 >= fraction)
        {
          break;
        }

        v28 = 2;
      }

LABEL_18:
      if (v25 >= 1)
      {
        v46 = v27;
        v29 = v19;
        v30 = v15;
        v31 = v9;
        if (v28 >= v25)
        {
          v32 = v25;
        }

        else
        {
          v32 = v28;
        }

        v33 = v22 + v32;
        do
        {
          v34 = [resourcesDataSource displayAssetResourceAtIndex:v22];
          [v21 addObject:v34];

          ++v22;
          --v32;
        }

        while (v32);
        v22 = v33;
        v9 = v31;
        v15 = v30;
        v19 = v29;
        v20 = v44;
        v27 = v46;
      }

      v35 = 1;
      if ((flags & 1) != 0 && v23)
      {
        if (v9)
        {
          [(PXStoryDummyTimeline *)v9 timeRange];
        }

        else
        {
          memset(v50, 0, sizeof(v50));
          v49 = 0u;
        }

        v52 = *(v50 + 8);
        memset(&v48, 0, sizeof(v48));
        *&range.start.value = *(v50 + 8);
        range.start.epoch = *(&v50[1] + 1);
        rhs.start = v53;
        CMTimeAdd(&v48, &range.start, &rhs.start);
        range.start = v48;
        rhs.start = v54;
        v36 = CMTimeCompare(&range.start, &rhs.start) >= 0 || v22 == v19;
        v35 = !v36;
        if (v36)
        {
          range.start = v54;
          rhs.start = v52;
          CMTimeSubtract(&v47, &range.start, &rhs.start);
          v53 = v47;
        }
      }

      v52 = v53;
      memset(&range, 0, 40);
      *&rhs.start.value = PXStoryTransitionInfoNone;
      *&rhs.start.epoch = unk_1A5383378;
      *&rhs.duration.timescale = 0;
      [(PXStoryMutableDummyTimeline *)v9 addSegmentWithResources:v21 preferredDuration:&v52 compositionInfo:&range transitionInfo:&rhs];
      [v21 removeAllObjects];

      if (v22 < v19)
      {
        ++v23;
        if (v35)
        {
          continue;
        }
      }

      spec2 = v40;
      configurationCopy = v41;
      style = v39;
      goto LABEL_42;
    }

    v28 = 1;
    goto LABEL_18;
  }

LABEL_42:
  [style songResource];
  if (objc_claimAutoreleasedReturnValue())
  {
    if (v9)
    {
      [(PXStoryDummyTimeline *)v9 timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    [(PXStoryDummyTimeline *)v9 size];
    PXRectWithOriginAndSize();
  }

  v37 = [(PXStoryMutableDummyTimeline *)v9 copy];

  return v37;
}

- (id)requestTimelineWithConfiguration:(id)configuration options:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [(PXStoryDummyTimelineProducer *)self createTimelineWithConfiguration:configuration detailsFraction:1.0];
  v9 = [[PXStoryProducerResult alloc] initWithObject:v8];
  handlerCopy[2](handlerCopy, v9);

  return 0;
}

@end