@interface PXGBlurEffectViewConfiguration
- (BOOL)isEqual:(id)equal;
- (PXGBlurEffectViewConfiguration)init;
- (PXGBlurEffectViewConfiguration)initWithStyle:(int64_t)style;
@end

@implementation PXGBlurEffectViewConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_style == self->_style;
  }

  return v5;
}

- (PXGBlurEffectViewConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGBlurEffectView.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXGBlurEffectViewConfiguration init]"}];

  abort();
}

- (PXGBlurEffectViewConfiguration)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = PXGBlurEffectViewConfiguration;
  result = [(PXGBlurEffectViewConfiguration *)&v5 init];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

@end