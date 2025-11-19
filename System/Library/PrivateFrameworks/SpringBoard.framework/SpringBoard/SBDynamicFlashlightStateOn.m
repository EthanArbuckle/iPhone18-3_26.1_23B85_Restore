@interface SBDynamicFlashlightStateOn
- (BOOL)isEqual:(id)a3;
- (SBDynamicFlashlightStateOn)initWithInitialIntensity:(double)a3 width:(double)a4;
@end

@implementation SBDynamicFlashlightStateOn

- (SBDynamicFlashlightStateOn)initWithInitialIntensity:(double)a3 width:(double)a4
{
  v7.receiver = self;
  v7.super_class = SBDynamicFlashlightStateOn;
  result = [(SBDynamicFlashlightStateOn *)&v7 init];
  if (result)
  {
    result->_initialIntensity = a3;
    result->_initialWidth = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
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