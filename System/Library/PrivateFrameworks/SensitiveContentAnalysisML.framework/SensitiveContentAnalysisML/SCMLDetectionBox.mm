@interface SCMLDetectionBox
- (CGRect)rect;
- (SCMLDetectionBox)initWithScore:(float)score label:(id)label rect:(CGRect)rect;
@end

@implementation SCMLDetectionBox

- (SCMLDetectionBox)initWithScore:(float)score label:(id)label rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelCopy = label;
  v16.receiver = self;
  v16.super_class = SCMLDetectionBox;
  v13 = [(SCMLDetectionBox *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_score = score;
    objc_storeStrong(&v13->_label, label);
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