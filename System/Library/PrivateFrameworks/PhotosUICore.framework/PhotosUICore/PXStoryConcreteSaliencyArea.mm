@interface PXStoryConcreteSaliencyArea
- (CGRect)contentsRect;
- (PXStoryConcreteSaliencyArea)initWithContentsRect:(CGRect)a3 confidence:(float)a4;
@end

@implementation PXStoryConcreteSaliencyArea

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXStoryConcreteSaliencyArea)initWithContentsRect:(CGRect)a3 confidence:(float)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = PXStoryConcreteSaliencyArea;
  result = [(PXStoryConcreteSaliencyArea *)&v10 init];
  if (result)
  {
    result->_contentsRect.origin.x = x;
    result->_contentsRect.origin.y = y;
    result->_contentsRect.size.width = width;
    result->_contentsRect.size.height = height;
    result->_confidence = a4;
  }

  return result;
}

@end