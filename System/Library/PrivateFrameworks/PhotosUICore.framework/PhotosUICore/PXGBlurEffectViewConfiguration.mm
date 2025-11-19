@interface PXGBlurEffectViewConfiguration
- (BOOL)isEqual:(id)a3;
- (PXGBlurEffectViewConfiguration)init;
- (PXGBlurEffectViewConfiguration)initWithStyle:(int64_t)a3;
@end

@implementation PXGBlurEffectViewConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4->_style == self->_style;
  }

  return v5;
}

- (PXGBlurEffectViewConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGBlurEffectView.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXGBlurEffectViewConfiguration init]"}];

  abort();
}

- (PXGBlurEffectViewConfiguration)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PXGBlurEffectViewConfiguration;
  result = [(PXGBlurEffectViewConfiguration *)&v5 init];
  if (result)
  {
    result->_style = a3;
  }

  return result;
}

@end