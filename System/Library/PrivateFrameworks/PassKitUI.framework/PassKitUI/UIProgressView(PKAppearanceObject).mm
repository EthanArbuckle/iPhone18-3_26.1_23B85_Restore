@interface UIProgressView(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIProgressView(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  tintColor = [v4 tintColor];
  [self setTintColor:tintColor];

  [self tintColorDidChange];
  progressBarTintColor = [v4 progressBarTintColor];
  [self setProgressTintColor:progressBarTintColor];

  progressBarTrackTintColor = [v4 progressBarTrackTintColor];

  [self setTrackTintColor:progressBarTrackTintColor];
}

@end