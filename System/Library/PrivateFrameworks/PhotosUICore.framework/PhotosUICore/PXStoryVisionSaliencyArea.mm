@interface PXStoryVisionSaliencyArea
- (CGRect)sourceRegionOfInterest;
- (PXStoryVisionSaliencyArea)initWithContentsRect:(CGRect)rect confidence:(float)confidence type:(int64_t)type sourceRegionOfInterest:(CGRect)interest;
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

- (PXStoryVisionSaliencyArea)initWithContentsRect:(CGRect)rect confidence:(float)confidence type:(int64_t)type sourceRegionOfInterest:(CGRect)interest
{
  v8.receiver = self;
  v8.super_class = PXStoryVisionSaliencyArea;
  result = [(PXStoryConcreteSaliencyArea *)&v8 initWithContentsRect:rect.origin.x confidence:rect.origin.y, rect.size.width, rect.size.height];
  if (result)
  {
    result->_type = type;
    result->_sourceRegionOfInterest = interest;
  }

  return result;
}

@end