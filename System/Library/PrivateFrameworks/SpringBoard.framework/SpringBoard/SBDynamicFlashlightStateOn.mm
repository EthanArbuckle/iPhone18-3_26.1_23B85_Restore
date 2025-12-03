@interface SBDynamicFlashlightStateOn
- (BOOL)isEqual:(id)equal;
- (SBDynamicFlashlightStateOn)initWithInitialIntensity:(double)intensity width:(double)width;
@end

@implementation SBDynamicFlashlightStateOn

- (SBDynamicFlashlightStateOn)initWithInitialIntensity:(double)intensity width:(double)width
{
  v7.receiver = self;
  v7.super_class = SBDynamicFlashlightStateOn;
  result = [(SBDynamicFlashlightStateOn *)&v7 init];
  if (result)
  {
    result->_initialIntensity = intensity;
    result->_initialWidth = width;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      initialIntensity = self->_initialIntensity;
      [(SBDynamicFlashlightStateOn *)v7 initialIntensity];
      if (initialIntensity == v9)
      {
        initialWidth = self->_initialWidth;
        [(SBDynamicFlashlightStateOn *)v7 initialWidth];
        v6 = initialWidth == v11;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end