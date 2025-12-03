@interface SBUISearchUtilities
+ (double)idealSearchPlatterWidth;
- (SBUISearchUtilities)init;
@end

@implementation SBUISearchUtilities

+ (double)idealSearchPlatterWidth
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  interfaceOrientation = [mEMORY[0x1E69DC668] interfaceOrientation];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  v6 = v5;
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  currentDevice = "SpringBoard";
  if (_os_feature_enabled_impl())
  {
    v11 = 500.0;
  }

  else
  {
    v11 = 672.0;
  }

  if (_os_feature_enabled_impl())
  {
    v12 = 425.0;
  }

  else
  {
    v12 = 556.0;
  }

  mainScreen2 = __sb__runningInSpringBoard();
  if (mainScreen2)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_20;
    }
  }

  v15 = mainScreen2 ^ 1;
  v16 = __sb__runningInSpringBoard();
  if (v16)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v17 >= *(MEMORY[0x1E69D4380] + 280))
  {
    if (v16)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  v14 = v16 ^ 1;
LABEL_20:
  v11 = v9 + -16.0;
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      v11 = v12;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v11 = v12;
    }

    if (!v14)
    {
LABEL_24:
      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

LABEL_35:

  if (v15)
  {
LABEL_25:
  }

LABEL_26:
  if ((interfaceOrientation - 1) >= 2)
  {
    v18 = v8;
  }

  else
  {
    v18 = v6;
  }

  result = v18 + -16.0;
  if (v11 < result)
  {
    return v11;
  }

  return result;
}

- (SBUISearchUtilities)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBUISearchUtilities.m" lineNumber:34 description:@"Do not instantiate this class"];

  v6.receiver = self;
  v6.super_class = SBUISearchUtilities;
  return [(SBUISearchUtilities *)&v6 init];
}

@end