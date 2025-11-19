@interface UIProgressView(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIProgressView(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  v5 = [v4 tintColor];
  [a1 setTintColor:v5];

  [a1 tintColorDidChange];
  v6 = [v4 progressBarTintColor];
  [a1 setProgressTintColor:v6];

  v7 = [v4 progressBarTrackTintColor];

  [a1 setTrackTintColor:v7];
}

@end