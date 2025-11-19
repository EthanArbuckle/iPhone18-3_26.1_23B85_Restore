@interface UPQuiltConfiguration
- (CGRect)timeBounds;
- (CGRect)viewport;
- (UPQuiltConfiguration)initWithRandomizationSeedValue:(unint64_t)a3 viewport:(CGRect)a4 timeBounds:(CGRect)a5 lineVariance:(double)a6;
- (void)initRandomizer;
@end

@implementation UPQuiltConfiguration

- (UPQuiltConfiguration)initWithRandomizationSeedValue:(unint64_t)a3 viewport:(CGRect)a4 timeBounds:(CGRect)a5 lineVariance:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4.size.height;
  v11 = a4.size.width;
  v12 = a4.origin.y;
  v13 = a4.origin.x;
  v18.receiver = self;
  v18.super_class = UPQuiltConfiguration;
  v15 = [(UPQuiltConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(UPQuiltConfiguration *)v15 setRandomizationSeedValue:a3];
    [(UPQuiltConfiguration *)v16 setViewport:v13, v12, v11, v10];
    [(UPQuiltConfiguration *)v16 setTimeBounds:x, y, width, height];
    [(UPQuiltConfiguration *)v16 setLineVariance:a6];
    [(UPQuiltConfiguration *)v16 initRandomizer];
  }

  return v16;
}

- (CGRect)viewport
{
  x = self->_viewport.origin.x;
  y = self->_viewport.origin.y;
  width = self->_viewport.size.width;
  height = self->_viewport.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)timeBounds
{
  x = self->_timeBounds.origin.x;
  y = self->_timeBounds.origin.y;
  width = self->_timeBounds.size.width;
  height = self->_timeBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initRandomizer
{
  if (a1)
  {
    v2 = [a1 randomizer];

    if (v2)
    {
      v3 = [a1 randomizer];
      [v3 reset];
    }

    else
    {
      v3 = +[UPSeededRandomizer randomizerWithSeedValue:](UPSeededRandomizer, "randomizerWithSeedValue:", [a1 randomizationSeedValue]);
      [a1 setRandomizer:?];
    }
  }
}

@end