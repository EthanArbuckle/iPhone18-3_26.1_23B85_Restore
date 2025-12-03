@interface _PFTImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _PFTImageView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PFTImageView;
    v5 = [(_PFTImageView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end