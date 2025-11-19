void sub_21E74FB94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id SBUIGetUserAgent()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  if (objc_opt_respondsToSelector())
  {
    v1 = [v0 pluginUserAgent];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

__CFString *NSStringFromLockSource(int a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return @"None";
  }

  else
  {
    return off_27836AB58[a1 - 1];
  }
}

__CFString *NSStringFromUnlockSource(int a1)
{
  if ((a1 - 1) > 0x28)
  {
    return @"None";
  }

  else
  {
    return off_27836AC30[a1 - 1];
  }
}

__CFString *NSStringFromUnlockIntent(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_27836AD78[a1 - 1];
  }
}

uint64_t SBUIConvertLockSourceToBacklightChangeSource(int a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return qword_21E76A740[a1 - 1];
  }
}

uint64_t SBUIConvertUnlockSourceToBacklightChangeSource(int a1)
{
  if ((a1 - 1) > 0x28)
  {
    return 0;
  }

  else
  {
    return qword_21E76A818[a1 - 1];
  }
}

__CFString *NSStringFromSBUIBackgroundStyle(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return off_27836ADB0[a1];
  }
}

id SBUIGetBackdropSettingsForBackgroundStyle(uint64_t a1)
{
  if (SBUIGetBackdropSettingsForBackgroundStyle___once != -1)
  {
    SBUIGetBackdropSettingsForBackgroundStyle_cold_1();
  }

  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (SBUIGetBackdropSettingsForBackgroundStyle_wasReducedTransparencyEnabledLastTime != IsReduceTransparencyEnabled)
  {
    v3 = IsReduceTransparencyEnabled;
    [SBUIGetBackdropSettingsForBackgroundStyle__mapFromBackgroundStyleToBackdropSettings removeAllObjects];
    SBUIGetBackdropSettingsForBackgroundStyle_wasReducedTransparencyEnabledLastTime = v3;
  }

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5 = [SBUIGetBackdropSettingsForBackgroundStyle__mapFromBackgroundStyleToBackdropSettings objectForKeyedSubscript:v4];
  if (!v5)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v6 = MEMORY[0x277D75DF0];
        v7 = 2050;
        goto LABEL_18;
      }

      if (a1 != 8)
      {
        if (a1 == 9)
        {
          v5 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:2030];
          [v5 setGrayscaleTintAlpha:0.0];
          [v5 setGrayscaleTintLevel:0.0];
          [v5 setColorTintAlpha:0.0];
          [v5 setSaturationDeltaFactor:1.9];
          [v5 setBlurRadius:30.0];
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v5 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:2030];
      [v5 setGrayscaleTintAlpha:0.15];
      [v5 setGrayscaleTintLevel:0.0];
      [v5 setColorTintAlpha:0.0];
      [v5 setSaturationDeltaFactor:1.0];
    }

    else
    {
      if ((a1 - 4) < 2)
      {
        v6 = MEMORY[0x277D75DF0];
        v7 = 2020;
        goto LABEL_18;
      }

      if (a1 != 3)
      {
        if (a1 == 6)
        {
          v6 = MEMORY[0x277D75DF0];
          v7 = 2030;
LABEL_18:
          v5 = [v6 settingsForPrivateStyle:v7];
          goto LABEL_19;
        }

LABEL_17:
        v6 = MEMORY[0x277D75DF0];
        v7 = -2;
        goto LABEL_18;
      }

      v5 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:2030];
      [v5 setGrayscaleTintAlpha:0.0];
      [v5 setGrayscaleTintLevel:0.0];
      [v5 setColorTintAlpha:0.0];
    }

LABEL_19:
    if (v5)
    {
      [SBUIGetBackdropSettingsForBackgroundStyle__mapFromBackgroundStyleToBackdropSettings setObject:v5 forKeyedSubscript:v4];
    }
  }

  return v5;
}

uint64_t __SBUIGetBackdropSettingsForBackgroundStyle_block_invoke()
{
  SBUIGetBackdropSettingsForBackgroundStyle__mapFromBackgroundStyleToBackdropSettings = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

__CFString *NSStringFromSBSceneViewDisplayMode(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"None";
  }

  else
  {
    return off_27836AFF8[a1 - 1];
  }
}

void sub_21E755258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id SpringBoardUIBundle()
{
  v0 = SpringBoardUIBundle___SpringBoardUIBundle;
  if (!SpringBoardUIBundle___SpringBoardUIBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = SpringBoardUIBundle___SpringBoardUIBundle;
    SpringBoardUIBundle___SpringBoardUIBundle = v1;

    v0 = SpringBoardUIBundle___SpringBoardUIBundle;
  }

  return v0;
}

__CFString *NSStringFromSBAlertItemPresentationState(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_27836B050[a1 - 1];
  }
}

__CFString *SBStringFromAlertItemDeactivateReason(int a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Lock";
  }

  else
  {
    return off_27836B020[a1 - 1];
  }
}

__CFString *NSStringFromLockScreenElement(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_27836B138[a1];
  }
}

id NSStringFromLockScreenCapabilities(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __NSStringFromLockScreenCapabilities_block_invoke;
  v13 = &unk_27836B118;
  v3 = v2;
  v14 = v3;
  v4 = &v10;
  if (a1)
  {
    v5 = 0;
    v15 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v12)(v4);
        if (v15)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  v8 = [v3 componentsJoinedByString:{@", ", v10, v11}];

  return v8;
}

void *__NSStringFromLockScreenCapabilities_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = @"TodayCenter";
  v3 = @"ControlCenter";
  v4 = @"Screenshot";
  if (a2 != 512)
  {
    v4 = 0;
  }

  if (a2 != 256)
  {
    v3 = v4;
  }

  if (a2 != 128)
  {
    v2 = v3;
  }

  v5 = @"MediaControls";
  if (a2 != 64)
  {
    v5 = 0;
  }

  if (a2 == 32)
  {
    v5 = @"TouchID";
  }

  if (a2 == 16)
  {
    v5 = @"Logout";
  }

  if (a2 <= 127)
  {
    v2 = v5;
  }

  v6 = @"Camera";
  v7 = @"Unlock";
  if (a2 != 8)
  {
    v7 = 0;
  }

  if (a2 != 4)
  {
    v6 = v7;
  }

  if (a2 == 2)
  {
    v6 = @"Siri";
  }

  v8 = @"None";
  if (a2)
  {
    v8 = 0;
  }

  if (a2 == -1)
  {
    v8 = @"All";
  }

  if (a2 <= 1)
  {
    v6 = v8;
  }

  if (a2 <= 15)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  result = *(a1 + 32);
  if (result)
  {
    return [result addObject:v9];
  }

  return result;
}

__CFString *NSStringFromLockScreenEvent(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_27836B158[a1];
  }
}

__CFString *NSStringFromLockScreenPluginBackgroundStyle(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_27836B1A0[a1];
  }
}

__CFString *NSStringFromLockScreenPluginPresentationStyle(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27836B1C0[a1];
  }
}

__CFString *NSStringFromLockScreenPluginNotificationBehavior(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_27836B1E8[a1];
  }
}

void sub_21E75B814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_21E75E19C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E75F464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _NewChevronPiece()
{
  v0 = objc_alloc(MEMORY[0x277D75D18]);
  BSRectWithSize();
  v1 = [v0 initWithFrame:?];
  v2 = [v1 layer];
  [v2 setCornerRadius:2.25];

  v3 = [v1 layer];
  [v3 setAllowsEdgeAntialiasing:1];

  return v1;
}

void SBUIPrewarmKeyboard()
{
  if (SBUIPrewarmKeyboard_onceToken != -1)
  {
    SBUIPrewarmKeyboard_cold_1();
  }
}

uint64_t __SBUIPrewarmKeyboard_block_invoke()
{
  v0 = [MEMORY[0x277D75678] sharedInstance];
  v1 = UIKeyboardOrderInAutomaticSkippingAnimation();

  return MEMORY[0x2821DE6F0](v1);
}

__CFString *SBUIPluginStringForActivationEvent(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"Unknown";
  }

  else
  {
    return off_27836B648[a1 - 1];
  }
}

void sub_21E764548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBLogUIRemoteVC()
{
  if (SBLogUIRemoteVC_onceToken != -1)
  {
    SBLogUIRemoteVC_cold_1();
  }

  v1 = SBLogUIRemoteVC___logObj;

  return v1;
}

uint64_t __SBLogUIRemoteVC_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "UIRemoteVC");
  v1 = SBLogUIRemoteVC___logObj;
  SBLogUIRemoteVC___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id SBLogLegibility()
{
  if (SBLogLegibility_onceToken != -1)
  {
    SBLogLegibility_cold_1();
  }

  v1 = SBLogLegibility___logObj;

  return v1;
}

uint64_t __SBLogLegibility_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "Legibility");
  v1 = SBLogLegibility___logObj;
  SBLogLegibility___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id SBLogContinuitySessionService()
{
  if (SBLogContinuitySessionService_onceToken != -1)
  {
    SBLogContinuitySessionService_cold_1();
  }

  v1 = SBLogContinuitySessionService___logObj;

  return v1;
}

uint64_t __SBLogContinuitySessionService_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "ContinuitySessionService");
  v1 = SBLogContinuitySessionService___logObj;
  SBLogContinuitySessionService___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x28211F860](aString);
  result.length = v2;
  result.location = v1;
  return result;
}