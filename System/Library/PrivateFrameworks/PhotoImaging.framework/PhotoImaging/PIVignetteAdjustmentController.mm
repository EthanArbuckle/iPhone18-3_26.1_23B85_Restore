@interface PIVignetteAdjustmentController
- (double)falloff;
- (double)intensity;
- (double)radius;
- (void)setFalloff:(double)a3;
- (void)setIntensity:(double)a3;
- (void)setRadius:(double)a3;
@end

@implementation PIVignetteAdjustmentController

- (void)setFalloff:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIVignetteAdjustmentController falloffKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)falloff
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIVignetteAdjustmentController falloffKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setRadius:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIVignetteAdjustmentController radiusKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)radius
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIVignetteAdjustmentController radiusKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setIntensity:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIVignetteAdjustmentController intensityKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)intensity
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIVignetteAdjustmentController intensityKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

@end