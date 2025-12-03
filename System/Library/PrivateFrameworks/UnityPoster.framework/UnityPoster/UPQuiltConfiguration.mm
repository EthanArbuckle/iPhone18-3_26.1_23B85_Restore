@interface UPQuiltConfiguration
- (CGRect)timeBounds;
- (CGRect)viewport;
- (UPQuiltConfiguration)initWithRandomizationSeedValue:(unint64_t)value viewport:(CGRect)viewport timeBounds:(CGRect)bounds lineVariance:(double)variance;
- (void)initRandomizer;
@end

@implementation UPQuiltConfiguration

- (UPQuiltConfiguration)initWithRandomizationSeedValue:(unint64_t)value viewport:(CGRect)viewport timeBounds:(CGRect)bounds lineVariance:(double)variance
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = viewport.size.height;
  v11 = viewport.size.width;
  v12 = viewport.origin.y;
  v13 = viewport.origin.x;
  v18.receiver = self;
  v18.super_class = UPQuiltConfiguration;
  v15 = [(UPQuiltConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(UPQuiltConfiguration *)v15 setRandomizationSeedValue:value];
    [(UPQuiltConfiguration *)v16 setViewport:v13, v12, v11, v10];
    [(UPQuiltConfiguration *)v16 setTimeBounds:x, y, width, height];
    [(UPQuiltConfiguration *)v16 setLineVariance:variance];
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
  if (self)
  {
    randomizer = [self randomizer];

    if (randomizer)
    {
      randomizer2 = [self randomizer];
      [randomizer2 reset];
    }

    else
    {
      randomizer2 = +[UPSeededRandomizer randomizerWithSeedValue:](UPSeededRandomizer, "randomizerWithSeedValue:", [self randomizationSeedValue]);
      [self setRandomizer:?];
    }
  }
}

@end