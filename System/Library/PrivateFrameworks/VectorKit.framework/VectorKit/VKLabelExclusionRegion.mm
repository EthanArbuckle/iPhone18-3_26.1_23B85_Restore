@interface VKLabelExclusionRegion
- (CGRect)rect;
- (VKLabelExclusionRegion)initWithCoder:(id)coder;
- (VKLabelExclusionRegion)initWithRect:(CGRect)rect;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VKLabelExclusionRegion

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

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt32:type forKey:@"type"];
  x = self->_rect.origin.x;
  *&x = x;
  [coderCopy encodeFloat:@"rect.origin.x" forKey:x];
  y = self->_rect.origin.y;
  *&y = y;
  [coderCopy encodeFloat:@"rect.origin.y" forKey:y];
  width = self->_rect.size.width;
  *&width = width;
  [coderCopy encodeFloat:@"rect.size.width" forKey:width];
  height = self->_rect.size.height;
  *&height = height;
  [coderCopy encodeFloat:@"rect.size.height" forKey:height];
}

- (VKLabelExclusionRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = VKLabelExclusionRegion;
  v5 = [(VKLabelExclusionRegion *)&v11 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt32ForKey:@"type"];
    [coderCopy decodeFloatForKey:@"rect.origin.x"];
    v5->_rect.origin.x = v6;
    [coderCopy decodeFloatForKey:@"rect.origin.y"];
    v5->_rect.origin.y = v7;
    [coderCopy decodeFloatForKey:@"rect.size.width"];
    v5->_rect.size.width = v8;
    [coderCopy decodeFloatForKey:@"rect.size.height"];
    v5->_rect.size.height = v9;
  }

  return v5;
}

- (VKLabelExclusionRegion)initWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = VKLabelExclusionRegion;
  result = [(VKLabelExclusionRegion *)&v8 init];
  if (result)
  {
    result->_type = 0;
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
  }

  return result;
}

@end