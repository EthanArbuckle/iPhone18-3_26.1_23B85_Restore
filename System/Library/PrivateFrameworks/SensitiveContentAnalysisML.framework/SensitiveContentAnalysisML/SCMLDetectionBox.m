@interface SCMLDetectionBox
- (CGRect)rect;
- (SCMLDetectionBox)initWithScore:(float)a3 label:(id)a4 rect:(CGRect)a5;
@end

@implementation SCMLDetectionBox

- (SCMLDetectionBox)initWithScore:(float)a3 label:(id)a4 rect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = SCMLDetectionBox;
  v13 = [(SCMLDetectionBox *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_score = a3;
    objc_storeStrong(&v13->_label, a4);
    v14->_rect.origin.x = x;
    v14->_rect.origin.y = y;
    v14->_rect.size.width = width;
    v14->_rect.size.height = height;
  }

  return v14;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end