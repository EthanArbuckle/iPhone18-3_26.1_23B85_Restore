@interface _UILegibilityImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (void)setImage:(id)a3;
@end

@implementation _UILegibilityImageView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if ([a3 isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = _UILegibilityImageView;
  return [(UIImageView *)&v6 _shouldAnimatePropertyWithKey:a3];
}

- (void)setImage:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UILegibilityImageView;
  [(UIImageView *)&v3 setImage:a3];
}

@end