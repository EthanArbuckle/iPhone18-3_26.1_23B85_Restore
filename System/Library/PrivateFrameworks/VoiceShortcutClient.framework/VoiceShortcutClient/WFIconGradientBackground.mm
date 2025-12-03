@interface WFIconGradientBackground
- (BOOL)isEqual:(id)equal;
- (WFIconGradientBackground)initWithCoder:(id)coder;
- (WFIconGradientBackground)initWithGradient:(id)gradient;
@end

@implementation WFIconGradientBackground

- (WFIconGradientBackground)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gradient"];

  v6 = [(WFIconGradientBackground *)self initWithGradient:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    gradient = [(WFIconGradientBackground *)self gradient];
    gradient2 = [equalCopy gradient];
    v7 = gradient;
    v8 = gradient2;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [v7 isEqual:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (WFIconGradientBackground)initWithGradient:(id)gradient
{
  gradientCopy = gradient;
  if (!gradientCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFIconBackground.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"gradient"}];
  }

  v12.receiver = self;
  v12.super_class = WFIconGradientBackground;
  _init = [(WFIconBackground *)&v12 _init];
  v8 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, gradient);
    v9 = v8;
  }

  return v8;
}

@end