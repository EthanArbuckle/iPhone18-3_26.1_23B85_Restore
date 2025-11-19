@interface SUICAudioPowerLevelLinearConverter
+ (float)_adjustedLinearPowerLevel:(float)a3 isInput:(BOOL)a4;
+ (float)_expectedLinearInputPowerLevelMaximum;
+ (float)_linearValueForPowerLevel:(float)a3 shouldAdjustForDeviceType:(BOOL)a4 isInput:(BOOL)a5;
@end

@implementation SUICAudioPowerLevelLinearConverter

+ (float)_expectedLinearInputPowerLevelMaximum
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return flt_1C435BD08[v3];
}

+ (float)_linearValueForPowerLevel:(float)a3 shouldAdjustForDeviceType:(BOOL)a4 isInput:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  *&v8 = __exp10f(a3 / 20.0);
  if (v6)
  {
    [a1 _adjustedLinearPowerLevel:v5 isInput:v8];
  }

  if (*&v8 > 1.0)
  {
    *&v8 = 1.0;
  }

  return fmaxf(*&v8, 0.0);
}

+ (float)_adjustedLinearPowerLevel:(float)a3 isInput:(BOOL)a4
{
  if (a4)
  {
    [a1 _expectedLinearInputPowerLevelMaximum];
  }

  else
  {
    v5 = 0.0316;
  }

  return a3 / v5;
}

@end