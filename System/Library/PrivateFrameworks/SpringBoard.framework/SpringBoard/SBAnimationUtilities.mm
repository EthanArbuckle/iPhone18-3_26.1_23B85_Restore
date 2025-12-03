@interface SBAnimationUtilities
+ (double)adjustedRotationAnimationDurationForDuration:(double)duration fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation;
+ (id)animationSettingsForRotationFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
+ (id)animationSettingsForRotationFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation withContext:(id)context;
@end

@implementation SBAnimationUtilities

+ (id)animationSettingsForRotationFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
{
  v6 = +[SBMedusaDomain rootSettings];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  medusa1oSettings = [v6 medusa1oSettings];
  [medusa1oSettings rotationSlowdownFactor];
  v11 = v10;

  v12 = (orientation - 1) <= 1 && (interfaceOrientation - 1) < 2;
  if ((orientation - 3) <= 1)
  {
    v13 = (interfaceOrientation - 3) < 2;
  }

  else
  {
    v13 = v12;
  }

  if (orientation != interfaceOrientation && v13)
  {
    v14 = dbl_21F8A6790[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1] * v11;
    v15 = v14 + v14;
  }

  else
  {
    v15 = dbl_21F8A6790[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1] * v11;
  }

  v16 = MEMORY[0x277CF0B70];
  v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v18 = [v16 settingsWithDuration:v17 delay:v15 timingFunction:0.0];

  return v18;
}

+ (id)animationSettingsForRotationFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation withContext:(id)context
{
  animationSettings = [context animationSettings];
  [animationSettings duration];
  v9 = v8;
  v10 = +[SBMedusaDomain rootSettings];
  medusa1oSettings = [v10 medusa1oSettings];
  [medusa1oSettings rotationSlowdownFactor];
  v13 = v9 * v12;

  if (orientation != toOrientation)
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
  timingFunction = [animationSettings timingFunction];
  v19 = [v17 settingsWithDuration:timingFunction timingFunction:v13];

  return v19;
}

+ (double)adjustedRotationAnimationDurationForDuration:(double)duration fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation
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
    if (v8 < duration)
    {
      return duration * 0.5;
    }
  }

  return duration;
}

@end