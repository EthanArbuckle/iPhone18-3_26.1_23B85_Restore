@interface PICinematicAudioAdjustmentController
- (NSString)renderingStyle;
- (double)dialogMixBias;
- (unint64_t)renderingVersion;
- (void)setDialogMixBias:(double)a3;
- (void)setRenderingStyle:(id)a3;
- (void)setRenderingVersion:(unint64_t)a3;
@end

@implementation PICinematicAudioAdjustmentController

- (void)setRenderingVersion:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  [v4 setObject:v5 forKeyedSubscript:@"renderingVersion"];
}

- (void)setRenderingStyle:(id)a3
{
  v4 = a3;
  v5 = [(PIAdjustmentController *)self adjustment];
  [v5 setObject:v4 forKeyedSubscript:@"renderingStyle"];
}

- (unint64_t)renderingVersion
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [v2 objectForKeyedSubscript:@"renderingVersion"];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (NSString)renderingStyle
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [v2 objectForKeyedSubscript:@"renderingStyle"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"original";
  }

  v5 = v4;

  return &v4->isa;
}

- (void)setDialogMixBias:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PICinematicAudioAdjustmentController dialogMixBiasKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)dialogMixBias
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PICinematicAudioAdjustmentController dialogMixBiasKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    [v4 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.5;
  }

  return v6;
}

@end