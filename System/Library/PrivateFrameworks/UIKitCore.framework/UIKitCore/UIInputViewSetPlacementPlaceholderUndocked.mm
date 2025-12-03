@interface UIInputViewSetPlacementPlaceholderUndocked
+ (id)placementWithHeight:(double)height undockedOffset:(CGPoint)offset chromeBuffer:(UIEdgeInsets)buffer;
- (BOOL)isEqual:(id)equal;
@end

@implementation UIInputViewSetPlacementPlaceholderUndocked

+ (id)placementWithHeight:(double)height undockedOffset:(CGPoint)offset chromeBuffer:(UIEdgeInsets)buffer
{
  result = [self placementWithUndockedOffset:offset.x chromeBuffer:{offset.y, buffer.top, buffer.left, buffer.bottom, buffer.right}];
  if (result)
  {
    *(result + 11) = height;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementPlaceholderUndocked;
  if ([(UIInputViewSetPlacementUndocked *)&v7 isEqual:equalCopy])
  {
    v5 = equalCopy[11] == self->_height;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end