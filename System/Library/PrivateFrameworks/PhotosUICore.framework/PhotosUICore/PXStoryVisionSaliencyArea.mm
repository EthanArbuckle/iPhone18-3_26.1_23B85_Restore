@interface PXStoryVisionSaliencyArea
- (CGRect)sourceRegionOfInterest;
- (PXStoryVisionSaliencyArea)initWithContentsRect:(CGRect)a3 confidence:(float)a4 type:(int64_t)a5 sourceRegionOfInterest:(CGRect)a6;
@end

@implementation PXStoryVisionSaliencyArea

- (CGRect)sourceRegionOfInterest
{
  x = self->_sourceRegionOfInterest.origin.x;
  y = self->_sourceRegionOfInterest.origin.y;
  width = self->_sourceRegionOfInterest.size.width;
  height = self->_sourceRegionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXStoryVisionSaliencyArea)initWithContentsRect:(CGRect)a3 confidence:(float)a4 type:(int64_t)a5 sourceRegionOfInterest:(CGRect)a6
{
  v8.receiver = self;
  v8.super_class = PXStoryVisionSaliencyArea;
  result = [(PXStoryConcreteSaliencyArea *)&v8 initWithContentsRect:a3.origin.x confidence:a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_type = a5;
    result->_sourceRegionOfInterest = a6;
  }

  return result;
}

@end