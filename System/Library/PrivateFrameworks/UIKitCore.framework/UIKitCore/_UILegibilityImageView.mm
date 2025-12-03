@interface _UILegibilityImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (void)setImage:(id)image;
@end

@implementation _UILegibilityImageView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if ([key isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = _UILegibilityImageView;
  return [(UIImageView *)&v6 _shouldAnimatePropertyWithKey:key];
}

- (void)setImage:(id)image
{
  v3.receiver = self;
  v3.super_class = _UILegibilityImageView;
  [(UIImageView *)&v3 setImage:image];
}

@end