@interface SXIssueCoverLayoutAttributes
- (CGRect)frame;
- (SXIssueCoverLayoutAttributes)initWithFrame:(CGRect)frame;
@end

@implementation SXIssueCoverLayoutAttributes

- (SXIssueCoverLayoutAttributes)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = SXIssueCoverLayoutAttributes;
  result = [(SXIssueCoverLayoutAttributes *)&v8 init];
  if (result)
  {
    result->_frame.origin.x = x;
    result->_frame.origin.y = y;
    result->_frame.size.width = width;
    result->_frame.size.height = height;
  }

  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end