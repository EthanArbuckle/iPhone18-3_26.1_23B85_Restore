@interface PXStoryTimelineSpecManager
- (PXStoryTimelineSpec)timelineSpec;
- (PXStoryTimelineSpecManager)initWithExtendedTraitCollection:(id)collection configuration:(id)configuration;
- (PXStoryTimelineSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
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
  spec = [(PXFeatureSpecManager *)self spec];
  if (!spec)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTimelineSpecManager.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"timelineSpec != nil"}];
  }

  [(PXStoryTimelineSpecManager *)self fixedSegmentDuration];
  v8 = v10;
  v9 = v11;
  [spec setFixedSegmentDuration:&v8];
  [spec setAllowedInlineTitles:{-[PXStoryTimelineSpecManager allowedInlineTitles](self, "allowedInlineTitles")}];
  allowedTransitionKinds = [(PXStoryTimelineSpecManager *)self allowedTransitionKinds];
  [spec setAllowedTransitionKinds:allowedTransitionKinds];

  [spec setFallbackTransitionKind:{-[PXStoryTimelineSpecManager fallbackTransitionKind](self, "fallbackTransitionKind")}];
  [spec setStoryTransitionCurveType:{-[PXStoryTimelineSpecManager storyTransitionCurveType](self, "storyTransitionCurveType")}];

  return spec;
}

- (PXStoryTimelineSpecManager)initWithExtendedTraitCollection:(id)collection configuration:(id)configuration
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = PXStoryTimelineSpecManager;
  v7 = [(PXFeatureSpecManager *)&v16 initWithExtendedTraitCollection:collection options:0];
  if (v7)
  {
    if (configurationCopy)
    {
      [configurationCopy fixedSegmentDuration];
    }

    else
    {
      v14 = 0uLL;
      v15 = 0;
    }

    *(v7 + 21) = v15;
    *(v7 + 152) = v14;
    *(v7 + 16) = [configurationCopy allowedInlineTitles];
    allowedTransitionKinds = [configurationCopy allowedTransitionKinds];
    v9 = *(v7 + 17);
    *(v7 + 17) = allowedTransitionKinds;

    launchType = [configurationCopy launchType];
    v11 = [launchType isEqualToString:@"TVMemoriesScreenSaver"];

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

- (PXStoryTimelineSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTimelineSpecManager.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXStoryTimelineSpecManager initWithExtendedTraitCollection:options:]"}];

  abort();
}

@end