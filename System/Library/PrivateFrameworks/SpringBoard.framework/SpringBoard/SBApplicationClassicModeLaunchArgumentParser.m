@interface SBApplicationClassicModeLaunchArgumentParser
- (SBApplicationClassicModeLaunchArgumentParser)initWithApplication:(id)a3;
- (int64_t)classicModeForLaunchArgument:(id)a3 error:(id *)a4;
@end

@implementation SBApplicationClassicModeLaunchArgumentParser

- (SBApplicationClassicModeLaunchArgumentParser)initWithApplication:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBApplicationClassicModeLaunchArgumentParser;
  v6 = [(SBApplicationClassicModeLaunchArgumentParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_application, a3);
  }

  return v7;
}

- (int64_t)classicModeForLaunchArgument:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = SBHScreenTypeForCurrentDevice();
    v8 = SBHScreenTypeForShortString();
    if (v7 == v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = v8;
      v9 = [SBApplication _bestClassicModeForScreenType:v8];
      if (v10 == 1 && ![&unk_28336DDE8 containsObject:v6])
      {
        v9 = -1;
      }
    }
  }

  else
  {
    v9 = -1;
  }

  if (_SBApplicationClassicModeIsClassic(v9))
  {
    v11 = [(SBApplication *)self->_application _canLaunchInClassicMode:v9];
    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = -1;
    }

    if (!a4)
    {
      v9 = v12;
      goto LABEL_22;
    }

    if (!v11)
    {
      v13 = SBApplicationClassicModeDescription(v9);
      v15 = [(SBApplication *)self->_application bundleIdentifier];
      *a4 = FBSOpenApplicationErrorCreate();

LABEL_20:
      v9 = -1;
      goto LABEL_22;
    }
  }

  else if (!a4)
  {
    goto LABEL_22;
  }

  if (v9 == -1)
  {
    if (classicModeForLaunchArgument_error__onceToken != -1)
    {
      [SBApplicationClassicModeLaunchArgumentParser classicModeForLaunchArgument:error:];
    }

    *a4 = FBSOpenApplicationErrorCreate();
    goto LABEL_20;
  }

LABEL_22:

  return v9;
}

void __83__SBApplicationClassicModeLaunchArgumentParser_classicModeForLaunchArgument_error___block_invoke()
{
  v3 = [MEMORY[0x277CBEB18] array];
  v0 = v3;
  SBHEnumerateScreenTypes();
  v1 = [v0 componentsJoinedByString:{@", "}];
  v2 = classicModeForLaunchArgument_error__modeString;
  classicModeForLaunchArgument_error__modeString = v1;
}

void __83__SBApplicationClassicModeLaunchArgumentParser_classicModeForLaunchArgument_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (_SBApplicationClassicModeIsClassic([SBApplication _bestClassicModeForScreenType:a2]))
  {
    v3 = *(a1 + 32);
    v4 = SBHShortStringForScreenType();
    [v3 addObject:v4];
  }
}

@end