@interface SBAnimationUtilities
+ (double)adjustedRotationAnimationDurationForDuration:(double)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5;
+ (id)animationSettingsForRotationFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4;
+ (id)animationSettingsForRotationFromOrientation:(int64_t)a3 toOrientation:(int64_t)a4 withContext:(id)a5;
@end

@implementation SBAnimationUtilities

+ (id)animationSettingsForRotationFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4
{
  v6 = +[SBMedusaDomain rootSettings];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = [v6 medusa1oSettings];
  [v9 rotationSlowdownFactor];
  v11 = v10;

  v12 = (a3 - 1) <= 1 && (a4 - 1) < 2;
  if ((a3 - 3) <= 1)
  {
    v13 = (a4 - 3) < 2;
  }

  else
  {
    v13 = v12;
  }

  if (a3 != a4 && v13)
  {
    v14 = dbl_21F8A6790[(v8 & 0xFFFFFFFFFFFFFFFBLL) == 1] * v11;
    v15 = v14 + v14;
  }

  else
  {
    v15 = dbl_21F8A6790[(v8 & 0xFFFFFFFFFFFFFFFBLL) == 1] * v11;
  }

  v16 = MEMORY[0x277CF0B70];
  v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v18 = [v16 settingsWithDuration:v17 delay:v15 timingFunction:0.0];

  return v18;
}

+ (id)animationSettingsForRotationFromOrientation:(int64_t)a3 toOrientation:(int64_t)a4 withContext:(id)a5
{
  v7 = [a5 animationSettings];
  [v7 duration];
  v9 = v8;
  v10 = +[SBMedusaDomain rootSettings];
  v11 = [v10 medusa1oSettings];
  [v11 rotationSlowdownFactor];
  v13 = v9 * v12;

  if (a3 != a4)
  {
    if (BSInterfaceOrientationIsLandscape())
    {
      IsLandscape = BSInterfaceOrientationIsLandscape();
    }

    else
    {
      IsLandscape = 0;
    }

    IsPortrait = BSInterfaceOrientationIsPortrait();
    if (IsPortrait)
    {
      LOBYTE(IsPortrait) = BSInterfaceOrientationIsPortrait();
    }

    v16 = 1.0;
    if ((IsLandscape | IsPortrait))
    {
      v16 = 2.0;
    }

    v13 = v13 * v16;
  }

  v17 = MEMORY[0x277CF0B70];
  v18 = [v7 timingFunction];
  v19 = [v17 settingsWithDuration:v18 timingFunction:v13];

  return v19;
}

+ (double)adjustedRotationAnimationDurationForDuration:(double)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5
{
  v6 = XBRotationDegreesForInterfaceOrientationRotation();
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  if (v7 >= 0x5B)
  {
    [*MEMORY[0x277D76620] windowRotationDuration];
    if (v8 < a3)
    {
      return a3 * 0.5;
    }
  }

  return a3;
}

@end