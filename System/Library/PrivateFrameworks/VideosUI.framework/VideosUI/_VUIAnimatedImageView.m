@interface _VUIAnimatedImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _VUIAnimatedImageView

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
    v7.super_class = _VUIAnimatedImageView;
    v5 = [(_VUIAnimatedImageView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end