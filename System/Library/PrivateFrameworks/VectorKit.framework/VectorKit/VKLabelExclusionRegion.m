@interface VKLabelExclusionRegion
- (CGRect)rect;
- (VKLabelExclusionRegion)initWithCoder:(id)a3;
- (VKLabelExclusionRegion)initWithRect:(CGRect)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v9 = a3;
  [v9 encodeInt32:type forKey:@"type"];
  x = self->_rect.origin.x;
  *&x = x;
  [v9 encodeFloat:@"rect.origin.x" forKey:x];
  y = self->_rect.origin.y;
  *&y = y;
  [v9 encodeFloat:@"rect.origin.y" forKey:y];
  width = self->_rect.size.width;
  *&width = width;
  [v9 encodeFloat:@"rect.size.width" forKey:width];
  height = self->_rect.size.height;
  *&height = height;
  [v9 encodeFloat:@"rect.size.height" forKey:height];
}

- (VKLabelExclusionRegion)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VKLabelExclusionRegion;
  v5 = [(VKLabelExclusionRegion *)&v11 init];
  if (v5)
  {
    v5->_type = [v4 decodeInt32ForKey:@"type"];
    [v4 decodeFloatForKey:@"rect.origin.x"];
    v5->_rect.origin.x = v6;
    [v4 decodeFloatForKey:@"rect.origin.y"];
    v5->_rect.origin.y = v7;
    [v4 decodeFloatForKey:@"rect.size.width"];
    v5->_rect.size.width = v8;
    [v4 decodeFloatForKey:@"rect.size.height"];
    v5->_rect.size.height = v9;
  }

  return v5;
}

- (VKLabelExclusionRegion)initWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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