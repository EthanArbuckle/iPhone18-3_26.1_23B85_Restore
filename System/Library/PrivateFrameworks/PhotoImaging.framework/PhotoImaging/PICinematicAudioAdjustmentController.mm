@interface PICinematicAudioAdjustmentController
- (NSString)renderingStyle;
- (double)dialogMixBias;
- (unint64_t)renderingVersion;
- (void)setDialogMixBias:(double)bias;
- (void)setRenderingStyle:(id)style;
- (void)setRenderingVersion:(unint64_t)version;
@end

@implementation PICinematicAudioAdjustmentController

- (void)setRenderingVersion:(unint64_t)version
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  adjustment = [(PIAdjustmentController *)self adjustment];
  [adjustment setObject:v5 forKeyedSubscript:@"renderingVersion"];
}

- (void)setRenderingStyle:(id)style
{
  styleCopy = style;
  adjustment = [(PIAdjustmentController *)self adjustment];
  [adjustment setObject:styleCopy forKeyedSubscript:@"renderingStyle"];
}

- (unint64_t)renderingVersion
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = [adjustment objectForKeyedSubscript:@"renderingVersion"];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (NSString)renderingStyle
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = [adjustment objectForKeyedSubscript:@"renderingStyle"];

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

- (void)setDialogMixBias:(double)bias
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:bias];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PICinematicAudioAdjustmentController dialogMixBiasKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)dialogMixBias
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PICinematicAudioAdjustmentController dialogMixBiasKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

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