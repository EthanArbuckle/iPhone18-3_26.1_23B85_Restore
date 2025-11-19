@interface __TVAnimatedImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation __TVAnimatedImageView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"contentsRect"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = __TVAnimatedImageView;
    v5 = [(__TVAnimatedImageView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end