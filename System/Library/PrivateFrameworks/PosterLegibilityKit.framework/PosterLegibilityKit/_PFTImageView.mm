@interface _PFTImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _PFTImageView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PFTImageView;
    v5 = [(_PFTImageView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end