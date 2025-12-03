@interface PXStoryConcreteCompanionTimeline
- (NSString)diagnosticDescription;
- (PXStoryCompanionColorEffect)colorGradingEffect;
- (PXStoryConcreteCompanionTimeline)init;
- (PXStoryConcreteCompanionTimeline)initWithTimeline:(id)timeline colorGradeKind:(int64_t)kind colorGradingRepository:(id)repository;
- (id)segmentAtIndex:(int64_t)index;
- (int64_t)numberOfSegments;
@end

@implementation PXStoryConcreteCompanionTimeline

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  timeline = [(PXStoryConcreteCompanionTimeline *)self timeline];
  diagnosticDescription = [timeline diagnosticDescription];
  [(PXStoryConcreteCompanionTimeline *)self colorGradeKind];
  v8 = PFStoryColorGradeKindToString();
  colorGradingRepository = [(PXStoryConcreteCompanionTimeline *)self colorGradingRepository];
  v10 = [v3 initWithFormat:@"<%@: %p, timeline=%@, colorGradeKind=%@, colorGradingRepository=%@>", v5, self, diagnosticDescription, v8, colorGradingRepository];

  return v10;
}

- (PXStoryCompanionColorEffect)colorGradingEffect
{
  colorGradingRepository = [(PXStoryConcreteCompanionTimeline *)self colorGradingRepository];
  v4 = [colorGradingRepository colorLookupCubeForColorGradeKind:{-[PXStoryConcreteCompanionTimeline colorGradeKind](self, "colorGradeKind")}];

  v5 = [[_PXStoryConcreteCompanionColorEffect alloc] initWithColorLookupCube:v4];

  return v5;
}

- (id)segmentAtIndex:(int64_t)index
{
  v5 = [_PXStoryConcreteCompanionTimelineSegment alloc];
  timeline = [(PXStoryConcreteCompanionTimeline *)self timeline];
  v7 = [(_PXStoryConcreteCompanionTimelineSegment *)v5 initWithTimeline:timeline segmentIndex:index];

  return v7;
}

- (int64_t)numberOfSegments
{
  timeline = [(PXStoryConcreteCompanionTimeline *)self timeline];
  numberOfSegments = [timeline numberOfSegments];

  return numberOfSegments;
}

- (PXStoryConcreteCompanionTimeline)initWithTimeline:(id)timeline colorGradeKind:(int64_t)kind colorGradingRepository:(id)repository
{
  timelineCopy = timeline;
  repositoryCopy = repository;
  v14.receiver = self;
  v14.super_class = PXStoryConcreteCompanionTimeline;
  v11 = [(PXStoryConcreteCompanionTimeline *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timeline, timeline);
    v12->_colorGradeKind = kind;
    objc_storeStrong(&v12->_colorGradingRepository, repository);
  }

  return v12;
}

- (PXStoryConcreteCompanionTimeline)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteCompanionTimeline.m" lineNumber:63 description:{@"%s is not available as initializer", "-[PXStoryConcreteCompanionTimeline init]"}];

  abort();
}

@end