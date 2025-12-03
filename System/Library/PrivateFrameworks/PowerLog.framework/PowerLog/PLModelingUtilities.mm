@interface PLModelingUtilities
+ (BOOL)carrierBuild;
+ (BOOL)hasAOD;
+ (BOOL)internalBuild;
+ (BOOL)isAppleTV;
+ (BOOL)isHeySiriAlwaysOn;
+ (BOOL)isLowPowerModeSupported;
+ (BOOL)isNarrowScreen;
+ (BOOL)isWatch;
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (BOOL)isiPod;
+ (BOOL)shouldShowBatteryGraphs;
+ (BOOL)supportsPhysicalSim;
+ (BOOL)supportsSlowCharging;
+ (double)defaultBatteryEnergyCapacity;
+ (double)duetDiscretionaryBudget;
+ (id)valueForMobileGestaltCapability:(id)capability;
+ (int)criticalBatteryLevel;
@end

@implementation PLModelingUtilities

+ (BOOL)supportsSlowCharging
{
  if (_os_feature_enabled_impl())
  {
    +[PLModelingUtilities isWatch];
  }

  return 1;
}

+ (double)duetDiscretionaryBudget
{
  v11 = *MEMORY[0x1E69E9840];
  if (+[PLModelingUtilities isiPhone])
  {
    v2 = 280.0;
    goto LABEL_13;
  }

  if (MGIsDeviceOneOfType())
  {
    v3 = 0x4064000000000000;
LABEL_12:
    v2 = *&v3;
    goto LABEL_13;
  }

  if (MGIsDeviceOneOfType())
  {
    goto LABEL_6;
  }

  if (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType())
  {
    v3 = 0x4054000000000000;
    goto LABEL_12;
  }

  if (MGIsDeviceOneOfType())
  {
LABEL_6:
    v3 = 0x404E000000000000;
    goto LABEL_12;
  }

  if (MGIsDeviceOneOfType())
  {
    v2 = 110.0;
  }

  else
  {
    v2 = 135.0;
    if ((MGIsDeviceOneOfType() & 1) == 0 && (MGIsDeviceOneOfType() & 1) == 0 && (MGIsDeviceOneOfType() & 1) == 0 && (MGIsDeviceOneOfType() & 1) == 0 && (MGIsDeviceOneOfType() & 1) == 0)
    {
      LODWORD(v10) = -1509831889;
      if ((MGIsDeviceOneOfType() & 1) == 0)
      {
        v2 = 210.0;
        if ((MGIsDeviceOneOfType() & 1) == 0 && (MGIsDeviceOneOfType() & 1) == 0)
        {
          v6 = 0.05;
          if ([PLModelingUtilities isiPad:0])
          {
            v7 = 0.01;
          }

          else
          {
            v7 = 0.05;
          }

          v8 = +[PLModelingUtilities isWatch];
          if (!+[PLModelingUtilities isMac]&& !v8)
          {
            v6 = v7;
          }

          +[PLModelingUtilities defaultBatteryEnergyCapacity];
          v2 = v6 * v9;
        }
      }
    }
  }

LABEL_13:
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)valueForMobileGestaltCapability:(id)capability
{
  capabilityCopy = capability;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PLModelingUtilities_valueForMobileGestaltCapability___block_invoke;
  block[3] = &unk_1E7F187A0;
  v10 = capabilityCopy;
  v4 = valueForMobileGestaltCapability__once;
  v5 = capabilityCopy;
  if (v4 != -1)
  {
    dispatch_once(&valueForMobileGestaltCapability__once, block);
  }

  v6 = valueForMobileGestaltCapability__gestaltValue;
  v7 = valueForMobileGestaltCapability__gestaltValue;

  return v6;
}

void __55__PLModelingUtilities_valueForMobileGestaltCapability___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MGCopyAnswerWithError();
  v3 = valueForMobileGestaltCapability__gestaltValue;
  valueForMobileGestaltCapability__gestaltValue = v2;
}

+ (BOOL)isiPad
{
  if (isiPad_once != -1)
  {
    +[PLModelingUtilities isiPad];
  }

  return isiPad_isiPad;
}

void __29__PLModelingUtilities_isiPad__block_invoke()
{
  v0 = [PLModelingUtilities valueForMobileGestaltCapability:@"DeviceClass"];
  isiPad_isiPad = [v0 isEqualToString:@"iPad"];
}

+ (BOOL)isiPhone
{
  if (isiPhone_once != -1)
  {
    +[PLModelingUtilities isiPhone];
  }

  return isiPhone_isiPhone;
}

void __31__PLModelingUtilities_isiPhone__block_invoke()
{
  v0 = [PLModelingUtilities valueForMobileGestaltCapability:@"DeviceClass"];
  isiPhone_isiPhone = [v0 isEqualToString:@"iPhone"];
}

+ (BOOL)isiPod
{
  if (isiPod_once != -1)
  {
    +[PLModelingUtilities isiPod];
  }

  return isiPod_isiPod;
}

void __29__PLModelingUtilities_isiPod__block_invoke()
{
  v0 = [PLModelingUtilities valueForMobileGestaltCapability:@"DeviceClass"];
  isiPod_isiPod = [v0 isEqualToString:@"iPod"];
}

+ (BOOL)isWatch
{
  if (isWatch_once != -1)
  {
    +[PLModelingUtilities isWatch];
  }

  return isWatch_isWatch;
}

void __30__PLModelingUtilities_isWatch__block_invoke()
{
  v0 = [PLModelingUtilities valueForMobileGestaltCapability:@"DeviceClass"];
  isWatch_isWatch = [v0 isEqualToString:@"Watch"];
}

+ (BOOL)isAppleTV
{
  if (isAppleTV_once != -1)
  {
    +[PLModelingUtilities isAppleTV];
  }

  return isAppleTV_isAppleTV;
}

void __32__PLModelingUtilities_isAppleTV__block_invoke()
{
  v0 = [PLModelingUtilities valueForMobileGestaltCapability:@"DeviceClass"];
  isAppleTV_isAppleTV = [v0 isEqualToString:@"AppleTV"];
}

+ (BOOL)shouldShowBatteryGraphs
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = MGIsDeviceOneOfType();
  v3 = *MEMORY[0x1E69E9840];
  return v2 ^ 1;
}

+ (double)defaultBatteryEnergyCapacity
{
  v15 = *MEMORY[0x1E69E9840];
  if (MGIsDeviceOneOfType())
  {
    result = 7449.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 11080.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 6176.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 10480.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 6484.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 11100.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 6870.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 5608.6;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 5427.2;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 5173.9;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 26700.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 38500.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 19120.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 23120.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 27900.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    goto LABEL_32;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 42500.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
LABEL_32:
    result = 31590.0;
    goto LABEL_130;
  }

  v3 = 28570.0;
  if (MGIsDeviceOneOfType())
  {
LABEL_37:
    result = v3;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 36210.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 28370.0;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 36636.0;
    goto LABEL_130;
  }

  v4 = 19020.0;
  if (MGIsDeviceOneOfType())
  {
LABEL_45:
    result = v4;
    goto LABEL_130;
  }

  if (MGIsDeviceOneOfType())
  {
    result = 29620.0;
    goto LABEL_130;
  }

  v5 = MGIsDeviceOneOfType();
  result = 31590.0;
  if ((v5 & 1) == 0)
  {
    v6 = MGIsDeviceOneOfType();
    result = 28570.0;
    if ((v6 & 1) == 0)
    {
      v3 = 28650.0;
      if (MGIsDeviceOneOfType())
      {
        goto LABEL_37;
      }

      if (MGIsDeviceOneOfType())
      {
        result = 28760.0;
        goto LABEL_130;
      }

      if (MGIsDeviceOneOfType())
      {
        result = 41160.0;
        goto LABEL_130;
      }

      v7 = MGIsDeviceOneOfType();
      result = 28650.0;
      if ((v7 & 1) == 0)
      {
        v8 = MGIsDeviceOneOfType();
        result = 19020.0;
        if ((v8 & 1) == 0)
        {
          if (MGIsDeviceOneOfType())
          {
            result = 28990.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 36730.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 31290.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 38990.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 3975.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 10030.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 12060.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 11160.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 11920.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 11750.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 15100.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 6960.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 8670.0;
            goto LABEL_130;
          }

          v4 = 10960.0;
          if (MGIsDeviceOneOfType())
          {
            goto LABEL_45;
          }

          v9 = MGIsDeviceOneOfType();
          result = 10960.0;
          if (v9)
          {
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 14620.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 12129.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 17024.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 9467.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 12563.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 7909.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 12823.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 16872.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 12449.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 17070.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 12872.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 17305.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 13162.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 17181.0;
            goto LABEL_130;
          }

          v4 = 14052.0;
          if (MGIsDeviceOneOfType())
          {
            goto LABEL_45;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 18260.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 14006.0;
            goto LABEL_130;
          }

          if (MGIsDeviceOneOfType())
          {
            result = 18089.0;
            goto LABEL_130;
          }

          v3 = 15752.0;
          if (MGIsDeviceOneOfType())
          {
            goto LABEL_37;
          }

          v10 = MGIsDeviceOneOfType();
          result = 15752.0;
          if ((v10 & 1) == 0)
          {
            v11 = MGIsDeviceOneOfType();
            result = 14052.0;
            if ((v11 & 1) == 0)
            {
              if (MGIsDeviceOneOfType())
              {
                v12 = ![PLModelingUtilities supportsPhysicalSim:0];
                result = 16773.0;
                v13 = 15735.0;
              }

              else if (MGIsDeviceOneOfType())
              {
                v12 = ![PLModelingUtilities supportsPhysicalSim:0];
                result = 20032.0;
                v13 = 18994.0;
              }

              else
              {
                v12 = ![PLModelingUtilities isiPad:0];
                result = 7000.0;
                v13 = 19120.0;
              }

              if (!v12)
              {
                result = v13;
              }
            }
          }
        }
      }
    }
  }

LABEL_130:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)internalBuild
{
  if (internalBuild_onceToken != -1)
  {
    +[PLModelingUtilities internalBuild];
  }

  return internalBuild_result;
}

uint64_t __36__PLModelingUtilities_internalBuild__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  internalBuild_result = result;
  return result;
}

+ (BOOL)carrierBuild
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PLModelingUtilities_carrierBuild__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (carrierBuild_onceToken != -1)
  {
    dispatch_once(&carrierBuild_onceToken, block);
  }

  return carrierBuild_carrierBuild;
}

void __35__PLModelingUtilities_carrierBuild__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) internalBuild])
  {
    carrierBuild_carrierBuild = 0;
  }

  else
  {
    v1 = MGCopyAnswer();
    carrierBuild_carrierBuild = CFBooleanGetValue(v1) != 0;

    CFRelease(v1);
  }
}

+ (int)criticalBatteryLevel
{
  if (+[PLModelingUtilities isiPad])
  {
    return 10;
  }

  else
  {
    return 20;
  }
}

+ (BOOL)isLowPowerModeSupported
{
  if (isLowPowerModeSupported_onceToken != -1)
  {
    +[PLModelingUtilities isLowPowerModeSupported];
  }

  return isLowPowerModeSupported__retValue;
}

void __46__PLModelingUtilities_isLowPowerModeSupported__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (!v0)
  {
    isLowPowerModeSupported__retValue = 0;
  }

  isLowPowerModeSupported__retValue = CFStringCompare(v0, @"iPhone", 0) == kCFCompareEqualTo;
  if (_os_feature_enabled_impl())
  {
    v2 = +[PLModelingUtilities isiPad](PLModelingUtilities, "isiPad") || +[PLModelingUtilities isiPod];
    isLowPowerModeSupported__retValue |= v2;
  }

  CFRelease(v1);
}

+ (BOOL)isNarrowScreen
{
  if (isNarrowScreen_onceToken != -1)
  {
    +[PLModelingUtilities isNarrowScreen];
  }

  return isNarrowScreen__retValue;
}

uint64_t __37__PLModelingUtilities_isNarrowScreen__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = MGIsDeviceOneOfType();
  if (result)
  {
    isNarrowScreen__retValue = 1;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)isHeySiriAlwaysOn
{
  if (isHeySiriAlwaysOn_onceToken != -1)
  {
    +[PLModelingUtilities isHeySiriAlwaysOn];
  }

  return isHeySiriAlwaysOn__retValue;
}

uint64_t __40__PLModelingUtilities_isHeySiriAlwaysOn__block_invoke()
{
  result = MGGetBoolAnswer();
  isHeySiriAlwaysOn__retValue = result;
  return result;
}

+ (BOOL)hasAOD
{
  if (hasAOD_onceToken != -1)
  {
    +[PLModelingUtilities hasAOD];
  }

  return hasAOD_result;
}

uint64_t __29__PLModelingUtilities_hasAOD__block_invoke()
{
  result = +[PLModelingUtilities isiPhone];
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  hasAOD_result = result;
  return result;
}

+ (BOOL)supportsPhysicalSim
{
  if (supportsPhysicalSim_onceToken != -1)
  {
    +[PLModelingUtilities supportsPhysicalSim];
  }

  return supportsPhysicalSim_ret;
}

void __42__PLModelingUtilities_supportsPhysicalSim__block_invoke()
{
  v0 = MGCopyAnswer();
  supportsPhysicalSim_ret = [v0 BOOLValue] ^ 1;
}

@end