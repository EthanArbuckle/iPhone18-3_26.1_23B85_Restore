@interface __TVAnimatedImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation __TVAnimatedImageView

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
    v7.super_class = __TVAnimatedImageView;
    v5 = [(__TVAnimatedImageView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end