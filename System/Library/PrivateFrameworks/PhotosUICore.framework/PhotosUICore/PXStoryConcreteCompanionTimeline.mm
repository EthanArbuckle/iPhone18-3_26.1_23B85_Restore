@interface PXStoryConcreteCompanionTimeline
- (NSString)diagnosticDescription;
- (PXStoryCompanionColorEffect)colorGradingEffect;
- (PXStoryConcreteCompanionTimeline)init;
- (PXStoryConcreteCompanionTimeline)initWithTimeline:(id)a3 colorGradeKind:(int64_t)a4 colorGradingRepository:(id)a5;
- (id)segmentAtIndex:(int64_t)a3;
- (int64_t)numberOfSegments;
@end

@implementation PXStoryConcreteCompanionTimeline

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXStoryConcreteCompanionTimeline *)self timeline];
  v7 = [v6 diagnosticDescription];
  [(PXStoryConcreteCompanionTimeline *)self colorGradeKind];
  v8 = PFStoryColorGradeKindToString();
  v9 = [(PXStoryConcreteCompanionTimeline *)self colorGradingRepository];
  v10 = [v3 initWithFormat:@"<%@: %p, timeline=%@, colorGradeKind=%@, colorGradingRepository=%@>", v5, self, v7, v8, v9];

  return v10;
}

- (PXStoryCompanionColorEffect)colorGradingEffect
{
  v3 = [(PXStoryConcreteCompanionTimeline *)self colorGradingRepository];
  v4 = [v3 colorLookupCubeForColorGradeKind:{-[PXStoryConcreteCompanionTimeline colorGradeKind](self, "colorGradeKind")}];

  v5 = [[_PXStoryConcreteCompanionColorEffect alloc] initWithColorLookupCube:v4];

  return v5;
}

- (id)segmentAtIndex:(int64_t)a3
{
  v5 = [_PXStoryConcreteCompanionTimelineSegment alloc];
  v6 = [(PXStoryConcreteCompanionTimeline *)self timeline];
  v7 = [(_PXStoryConcreteCompanionTimelineSegment *)v5 initWithTimeline:v6 segmentIndex:a3];

  return v7;
}

- (int64_t)numberOfSegments
{
  v2 = [(PXStoryConcreteCompanionTimeline *)self timeline];
  v3 = [v2 numberOfSegments];

  return v3;
}

- (PXStoryConcreteCompanionTimeline)initWithTimeline:(id)a3 colorGradeKind:(int64_t)a4 colorGradingRepository:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PXStoryConcreteCompanionTimeline;
  v11 = [(PXStoryConcreteCompanionTimeline *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timeline, a3);
    v12->_colorGradeKind = a4;
    objc_storeStrong(&v12->_colorGradingRepository, a5);
  }

  return v12;
}

- (PXStoryConcreteCompanionTimeline)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteCompanionTimeline.m" lineNumber:63 description:{@"%s is not available as initializer", "-[PXStoryConcreteCompanionTimeline init]"}];

  abort();
}

@end