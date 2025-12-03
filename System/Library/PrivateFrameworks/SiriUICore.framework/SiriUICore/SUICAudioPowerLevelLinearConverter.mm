@interface SUICAudioPowerLevelLinearConverter
+ (float)_adjustedLinearPowerLevel:(float)level isInput:(BOOL)input;
+ (float)_expectedLinearInputPowerLevelMaximum;
+ (float)_linearValueForPowerLevel:(float)level shouldAdjustForDeviceType:(BOOL)type isInput:(BOOL)input;
@end

@implementation SUICAudioPowerLevelLinearConverter

+ (float)_expectedLinearInputPowerLevelMaximum
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return flt_1C435BD08[v3];
}

+ (float)_linearValueForPowerLevel:(float)level shouldAdjustForDeviceType:(BOOL)type isInput:(BOOL)input
{
  inputCopy = input;
  typeCopy = type;
  *&v8 = __exp10f(level / 20.0);
  if (typeCopy)
  {
    [self _adjustedLinearPowerLevel:inputCopy isInput:v8];
  }

  if (*&v8 > 1.0)
  {
    *&v8 = 1.0;
  }

  return fmaxf(*&v8, 0.0);
}

+ (float)_adjustedLinearPowerLevel:(float)level isInput:(BOOL)input
{
  if (input)
  {
    [self _expectedLinearInputPowerLevelMaximum];
  }

  else
  {
    v5 = 0.0316;
  }

  return level / v5;
}

@end