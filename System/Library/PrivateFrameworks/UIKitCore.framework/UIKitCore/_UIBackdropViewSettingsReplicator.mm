@interface _UIBackdropViewSettingsReplicator
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsReplicator

- (void)setDefaultValues
{
  v12.receiver = self;
  v12.super_class = _UIBackdropViewSettingsReplicator;
  [(_UIBackdropViewSettings *)&v12 setDefaultValues];
  [(_UIBackdropViewSettings *)self setBackdropVisible:1];
  [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:1.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
  [(_UIBackdropViewSettings *)self setColorTint:0];
  [(_UIBackdropViewSettings *)self setColorTintAlpha:0.0];
  [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
  [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
  self->super._blurRadius = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  *&self->super._saturationDeltaFactor = _Q0;
  filterMaskImage = self->super._filterMaskImage;
  self->super._filterMaskImage = 0;

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  self->super._scale = v10;

  self->super._requiresColorStatistics = 0;
  v11 = +[UIColor whiteColor];
  [(_UIBackdropViewSettings *)self setLegibleColor:v11];
}

@end