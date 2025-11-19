@interface UIInputViewSetPlacementPlaceholderUndocked
+ (id)placementWithHeight:(double)a3 undockedOffset:(CGPoint)a4 chromeBuffer:(UIEdgeInsets)a5;
- (BOOL)isEqual:(id)a3;
@end

@implementation UIInputViewSetPlacementPlaceholderUndocked

+ (id)placementWithHeight:(double)a3 undockedOffset:(CGPoint)a4 chromeBuffer:(UIEdgeInsets)a5
{
  result = [a1 placementWithUndockedOffset:a4.x chromeBuffer:{a4.y, a5.top, a5.left, a5.bottom, a5.right}];
  if (result)
  {
    *(result + 11) = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementPlaceholderUndocked;
  if ([(UIInputViewSetPlacementUndocked *)&v7 isEqual:v4])
  {
    v5 = v4[11] == self->_height;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end