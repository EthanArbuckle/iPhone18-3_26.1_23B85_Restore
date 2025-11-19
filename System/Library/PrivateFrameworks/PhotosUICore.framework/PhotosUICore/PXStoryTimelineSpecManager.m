@interface PXStoryTimelineSpecManager
- (PXStoryTimelineSpec)timelineSpec;
- (PXStoryTimelineSpecManager)initWithExtendedTraitCollection:(id)a3 configuration:(id)a4;
- (PXStoryTimelineSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
- (unint64_t)defaultChangesToUpdateFor;
@end

@implementation PXStoryTimelineSpecManager

- (unint64_t)defaultChangesToUpdateFor
{
  v3.receiver = self;
  v3.super_class = PXStoryTimelineSpecManager;
  return [(PXFeatureSpecManager *)&v3 defaultChangesToUpdateFor]| 0x10;
}

- (PXStoryTimelineSpec)timelineSpec
{
  v4 = [(PXFeatureSpecManager *)self spec];
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXStoryTimelineSpecManager.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"timelineSpec != nil"}];
  }

  [(PXStoryTimelineSpecManager *)self fixedSegmentDuration];
  v8 = v10;
  v9 = v11;
  [v4 setFixedSegmentDuration:&v8];
  [v4 setAllowedInlineTitles:{-[PXStoryTimelineSpecManager allowedInlineTitles](self, "allowedInlineTitles")}];
  v5 = [(PXStoryTimelineSpecManager *)self allowedTransitionKinds];
  [v4 setAllowedTransitionKinds:v5];

  [v4 setFallbackTransitionKind:{-[PXStoryTimelineSpecManager fallbackTransitionKind](self, "fallbackTransitionKind")}];
  [v4 setStoryTransitionCurveType:{-[PXStoryTimelineSpecManager storyTransitionCurveType](self, "storyTransitionCurveType")}];

  return v4;
}

- (PXStoryTimelineSpecManager)initWithExtendedTraitCollection:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = PXStoryTimelineSpecManager;
  v7 = [(PXFeatureSpecManager *)&v16 initWithExtendedTraitCollection:a3 options:0];
  if (v7)
  {
    if (v6)
    {
      [v6 fixedSegmentDuration];
    }

    else
    {
      v14 = 0uLL;
      v15 = 0;
    }

    *(v7 + 21) = v15;
    *(v7 + 152) = v14;
    *(v7 + 16) = [v6 allowedInlineTitles];
    v8 = [v6 allowedTransitionKinds];
    v9 = *(v7 + 17);
    *(v7 + 17) = v8;

    v10 = [v6 launchType];
    v11 = [v10 isEqualToString:@"TVMemoriesScreenSaver"];

    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v7[120] = v12;
    *(v7 + 18) = v11;
  }

  return v7;
}

- (PXStoryTimelineSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXStoryTimelineSpecManager.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXStoryTimelineSpecManager initWithExtendedTraitCollection:options:]"}];

  abort();
}

@end