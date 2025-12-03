@interface _VUIAnimatedImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _VUIAnimatedImageView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contentsRect"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _VUIAnimatedImageView;
    v5 = [(_VUIAnimatedImageView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end