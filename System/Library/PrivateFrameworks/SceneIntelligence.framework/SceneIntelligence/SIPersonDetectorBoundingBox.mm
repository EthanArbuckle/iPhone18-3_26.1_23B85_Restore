@interface SIPersonDetectorBoundingBox
- (CGRect)boundingBox;
- (SIPersonDetectorBoundingBox)initWithBoundingBox:(CGRect)box confidence:(float)confidence;
@end

@implementation SIPersonDetectorBoundingBox

- (SIPersonDetectorBoundingBox)initWithBoundingBox:(CGRect)box confidence:(float)confidence
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v13.receiver = self;
  v13.super_class = SIPersonDetectorBoundingBox;
  v9 = [(SIPersonDetectorBoundingBox *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_boundingBox.origin.x = x;
    v9->_boundingBox.origin.y = y;
    v9->_boundingBox.size.width = width;
    v9->_boundingBox.size.height = height;
    v9->_confidence = confidence;
    v11 = v9;
  }

  return v10;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end