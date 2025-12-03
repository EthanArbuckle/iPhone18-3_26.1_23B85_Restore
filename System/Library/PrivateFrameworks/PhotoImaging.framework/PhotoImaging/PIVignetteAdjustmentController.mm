@interface PIVignetteAdjustmentController
- (double)falloff;
- (double)intensity;
- (double)radius;
- (void)setFalloff:(double)falloff;
- (void)setIntensity:(double)intensity;
- (void)setRadius:(double)radius;
@end

@implementation PIVignetteAdjustmentController

- (void)setFalloff:(double)falloff
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:falloff];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIVignetteAdjustmentController falloffKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)falloff
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIVignetteAdjustmentController falloffKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setRadius:(double)radius
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIVignetteAdjustmentController radiusKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)radius
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIVignetteAdjustmentController radiusKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setIntensity:(double)intensity
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:intensity];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIVignetteAdjustmentController intensityKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)intensity
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIVignetteAdjustmentController intensityKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

@end