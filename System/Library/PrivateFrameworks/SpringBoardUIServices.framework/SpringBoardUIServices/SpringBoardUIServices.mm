double SBLayoutDefaultSideLayoutElementWidth(uint64_t a1)
{
  v5 = __sb__runningInSpringBoard();
  v6 = v5;
  if (v5)
  {
    if (SBFEffectiveDeviceClass() != 2 || SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v1 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v1 userInterfaceIdiom] != 1 || SBFEffectiveHomeButtonType() != 2)
    {

      goto LABEL_10;
    }
  }

  v7 = __sb__runningInSpringBoard();
  v8 = v7;
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v10 = MEMORY[0x1E69D4380];
  v11 = *(MEMORY[0x1E69D4380] + 344);
  v13 = v12 >= v11;
  if (v12 >= v11)
  {
    v14 = __sb__runningInSpringBoard();
    v15 = v14;
    if (v14)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v16 userInterfaceIdiom] != 1)
      {
        v13 = 1;
LABEL_26:

        goto LABEL_27;
      }

      v21 = v16;
    }

    v17 = __sb__runningInSpringBoard();
    v18 = v17;
    if (v17)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v3 _referenceBounds];
    }

    BSSizeRoundForScale();
    v13 = v19 < *(v10 + 280);
    if ((v18 & 1) == 0)
    {
    }

    if ((v15 & 1) == 0)
    {
      v16 = v21;
      goto LABEL_26;
    }
  }

LABEL_27:
  if ((v8 & 1) == 0)
  {
  }

  if (v6)
  {
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_10:
    *&result = SBPhoneOnPadFallbackLaunchSize().n128_u64[0];
    return result;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_33:
  if ((a1 - 1) >= 2)
  {
    v20 = v10 + 32;
  }

  else
  {
    v20 = v10;
  }

  return *v20;
}

__n128 SBPhoneOnPadFallbackLaunchSize()
{
  v2 = __sb__runningInSpringBoard();
  v3 = v2;
  if (v2)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return *MEMORY[0x1E69D4380];
    }

LABEL_5:
    v5 = __sb__runningInSpringBoard();
    v6 = v5;
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v1 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v1 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v7 >= *(MEMORY[0x1E69D4380] + 280))
    {
      result = *(MEMORY[0x1E69D4380] + 32);
      if (v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = *MEMORY[0x1E69D4380];
      if (v6)
      {
LABEL_14:
        if (v3)
        {
          return result;
        }

        goto LABEL_15;
      }
    }

    v8 = result;

    result = v8;
    goto LABEL_14;
  }

  v0 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v0 userInterfaceIdiom] == 1)
  {
    goto LABEL_5;
  }

  result = *MEMORY[0x1E69D4380];
LABEL_15:
  v9 = result;

  return v9;
}

uint64_t SBUIIsSystemApertureEnabled()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  [v1 isEqualToString:@"com.apple.springboard"];

  return SBSIsSystemApertureAvailable();
}

void sub_1A9A7BD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBSAcquireWallpaperAnimationSuspensionAssertion(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E698E6C0]);
  if ([v5 isUsable] && (memset(v8, 0, 512), objc_msgSend(v3, "getCString:maxLength:encoding:", v8, 1024, 4)) && (v6 = SBSSpringBoardServerPort(), !MEMORY[0x1AC58DEF0](v6, v8, objc_msgSend(v5, "port"))))
  {
    v7 = [objc_alloc(MEMORY[0x1E69D41E8]) initWithAssertionName:@"SBSUIWallpaperAnimationSuspensionAssertionName" reason:v3 receiveRight:v5];
  }

  else
  {
    v7 = 0;
  }

  v4[2](v4, v7);
}

id SBUIDeriveUILegibilitySettings(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_respondsToSelector())
      {
        v2 = [objc_opt_class() legibilitySettingsForLegibilitySettings:v1];

        if (objc_opt_respondsToSelector())
        {
          v1 = [v2 _UILegibilitySettings];
        }

        else
        {
          v1 = v2;
        }
      }
    }
  }

  return v1;
}

void _SBUIPhoneUnlockWithRemoteDeviceEnumerateHandlers(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _SBUIPhoneUnlockWithRemoteDeviceEnumerateHandlers_cold_1();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  _SBUIPhoneUnlockWithRemoteDeviceEnumerateHandlers_cold_2();
LABEL_3:
  v5 = [*(a1 + 8) copy];
  v6 = [v5 count];
  v10 = 0;
  if (v6)
  {
    v7 = 0;
    v8 = v6 - 1;
    do
    {
      (v4)[2](v4, [v5 pointerAtIndex:v7], &v10);
      if (v10)
      {
        break;
      }
    }

    while (v8 != v7++);
  }
}

uint64_t __SBUICurrentPasscodeStyleForUser_block_invoke()
{
  SBUICurrentPasscodeStyleForUser___simplePasscodeType = -1;
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  SBUICurrentPasscodeStyleForUser___unlockScreenType = [v0 unlockScreenTypeWithOutSimplePasscodeType:&SBUICurrentPasscodeStyleForUser___simplePasscodeType];

  out_token = 0;
  v1 = [*MEMORY[0x1E69ADFB0] UTF8String];
  return notify_register_dispatch(v1, &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_3);
}

uint64_t SBUICurrentPasscodeStyleForUser()
{
  if (SBUICurrentPasscodeStyleForUser_onceToken != -1)
  {
    SBUICurrentPasscodeStyleForUser_cold_1();
  }

  if (SBUICurrentPasscodeStyleForUser___unlockScreenType == 1)
  {
    return 2;
  }

  if (SBUICurrentPasscodeStyleForUser___unlockScreenType)
  {
    return 3;
  }

  result = SBUICurrentPasscodeStyleForUser___simplePasscodeType;
  if (!SBUICurrentPasscodeStyleForUser___simplePasscodeType)
  {
    return result;
  }

  if (SBUICurrentPasscodeStyleForUser___simplePasscodeType == -1)
  {
    [MEMORY[0x1E695DF30] raise:@"Cannot be simple and have a non-simple passcode type." format:&stru_1F1D7ED48];
    return 3;
  }

  return 1;
}

double SBUIFloatFloorForScale(double a1, double a2)
{
  v2 = a2;
  if (fabs(a2) < 2.22044605e-16)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v2 = v5;
  }

  return floor(v2 * a1) / v2;
}

double SBUIScaledFontSizeWithMaxSizeCategory(void *a1, double a2)
{
  v3 = a1;
  v4 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(v4, v3);

  v6 = MEMORY[0x1E69DB878];
  v7 = *MEMORY[0x1E69DDCF8];
  if (v5 == NSOrderedAscending)
  {
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  else
  {
    v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v3];
    v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v8];
  }

  [v9 _scaledValueForValue:a2];
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  UIRoundToScreenScale();
  v12 = v11;

  return v12;
}

void sub_1A9A7F7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SBUIAXAwareLocalizedStringForKey(void *a1, uint64_t a2)
{
  v3 = a1;
  if (SBUIPasscodeScreenShouldNotWrapSubtitle(a2))
  {
    v4 = [v3 stringByAppendingString:@"_LARGE"];

    v3 = v4;
  }

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v3 value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

  return v6;
}

BOOL SBUIPasscodeScreenShouldNotWrapSubtitle(uint64_t a1)
{
  if (!__sb__runningInSpringBoard())
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 userInterfaceIdiom] != 1)
    {
      IsEqualToCategory = 0;
      goto LABEL_9;
    }

    if ((a1 - 3) > 1)
    {
      return 0;
    }

LABEL_7:
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    v5 = [v4 preferredContentSizeCategory];
    IsEqualToCategory = UIContentSizeCategoryIsEqualToCategory(v5, *MEMORY[0x1E69DDC20]);

LABEL_9:
    return IsEqualToCategory;
  }

  v2 = SBFEffectiveDeviceClass();
  IsEqualToCategory = 0;
  if ((a1 - 3) <= 1 && v2 == 2)
  {
    goto LABEL_7;
  }

  return IsEqualToCategory;
}

uint64_t SBUIFaceIDCoachingConditionShouldBeVisible(uint64_t a1)
{
  result = 1;
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 3)
      {
        return 0;
      }

LABEL_11:
      v7 = [MEMORY[0x1E69DC938] currentDevice];
      v8 = [v7 userInterfaceIdiom];

      return (v8 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    }

    if (a1 <= 1)
    {
      return 0;
    }
  }

  else
  {
    if (a1 <= 12)
    {
      if ((a1 - 5) >= 3)
      {
        return result;
      }

      return 0;
    }

    switch(a1)
    {
      case 15:

        return _SBUI_Private_PeriocularPoseOutOfRangeCoachingEnabled();
      case 14:
        return 0;
      case 13:
        goto LABEL_11;
    }
  }

  return result;
}

id NSStringForSBUIProudLockIconViewState(uint64_t a1)
{
  if (SBUIProudLockIconViewStateIsCoaching(a1))
  {
    v2 = SBUIFaceIDCoachingConditionForSBUIProudLockIconViewState(a1);
    if ((a1 - 16) >= 3)
    {
      v3 = DebugStringForSBUIFaceIDCoachingCondition(v2);
    }

    else
    {
      v3 = off_1E789F158[a1 - 16];
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Coaching: %@", v3];
  }

  else
  {
    v4 = @"Face ID Matched";
    v5 = @"Face ID Failed";
    v6 = @"Face ID Not Looking";
    if (a1 != 25)
    {
      v6 = 0;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 != 6)
    {
      v4 = v5;
    }

    v7 = @"Reticles";
    v8 = @"Spinner";
    if (a1 != 5)
    {
      v8 = 0;
    }

    if (a1 != 4)
    {
      v7 = v8;
    }

    if (a1 <= 5)
    {
      v4 = v7;
    }

    v9 = @"Unlocked";
    v10 = @"Lock Shake";
    if (a1 != 3)
    {
      v10 = 0;
    }

    if (a1 != 2)
    {
      v9 = v10;
    }

    v11 = @"None";
    v12 = @"Locked";
    if (a1 != 1)
    {
      v12 = 0;
    }

    if (a1)
    {
      v11 = v12;
    }

    if (a1 <= 1)
    {
      v9 = v11;
    }

    if (a1 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  return v13;
}

uint64_t SBUIProudLockIconViewStateIsCoaching(unint64_t a1)
{
  if (a1 < 0xE)
  {
    return 0;
  }

  if (a1 == 28)
  {
    return _SBUI_Private_PeriocularPoseOutOfRangeCoachingEnabled();
  }

  return 1;
}

uint64_t SBUIProudLockIconViewStateShowsCoachingText(unint64_t a1)
{
  v2 = +[SBUIBiometricResource sharedInstance];
  v3 = [v2 hasPoseidonSupport];

  if (v3)
  {
    return 0;
  }

  result = 1;
  if (a1 > 0x1C)
  {
    return result;
  }

  if (((1 << a1) & 0x38BFFF) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x1874000) != 0)
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    return (v6 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else if (a1 == 28)
  {

    return _SBUI_Private_PeriocularPoseOutOfRangeCoachingEnabled();
  }

  return result;
}

uint64_t SBUICeilingCapHeightForCoachingTextForUIContentSizeCategory(void *a1)
{
  v1 = MEMORY[0x1E69DCEB0];
  v2 = a1;
  v3 = [v1 mainScreen];
  [v3 scale];

  v4 = [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] hiFontStyle:12 contentSizeCategory:v2];

  [v4 capHeight];

  return BSFloatRoundForScale();
}

uint64_t SBUILegibilitySettingsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v8 = 1;
    goto LABEL_18;
  }

  if (!v3 && v4)
  {
    goto LABEL_17;
  }

  if (v3 && !v4)
  {
    goto LABEL_17;
  }

  v6 = [v3 style];
  if (v6 != [v5 style])
  {
    goto LABEL_17;
  }

  [v3 minFillHeight];
  [v5 minFillHeight];
  if (BSCompareFloats())
  {
    goto LABEL_17;
  }

  v7 = 0uLL;
  if (v3)
  {
    [v3 shadowSettings];
    v7 = 0uLL;
  }

  v20 = v7;
  v21 = v7;
  if (v5)
  {
    [v5 shadowSettings];
  }

  if (BSCompareFloats() || BSCompareFloats() || BSCompareFloats() || BSCompareIntegers())
  {
    goto LABEL_17;
  }

  v10 = [v3 primaryColor];
  v11 = [v5 primaryColor];
  v12 = v11;
  if (v10 == v11 || !(v10 | v11))
  {
  }

  else
  {
    v13 = [v10 _isSimilarToColor:v11 withinPercentage:0.01];

    if (!v13)
    {
      goto LABEL_17;
    }
  }

  v14 = [v3 secondaryColor];
  v15 = [v5 secondaryColor];
  v16 = v15;
  if (v14 == v15 || !(v14 | v15))
  {

    goto LABEL_29;
  }

  v17 = [v14 _isSimilarToColor:v15 withinPercentage:0.01];

  if (!v17)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

LABEL_29:
  v18 = [v3 shadowColor];
  v19 = [v5 shadowColor];
  v8 = 1;
  if (v18 != v19 && v18 | v19)
  {
    v8 = [v18 _isSimilarToColor:v19 withinPercentage:0.01];
  }

LABEL_18:
  return v8;
}

uint64_t SBUILegibilityShadowCompositingFilterForCAFilterName(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:*MEMORY[0x1E69798C8]])
  {
    v2 = 1;
  }

  else if ([v1 isEqual:*MEMORY[0x1E6979C38]])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SBVelocityMatrixForUniform2DScaling@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = MEMORY[0x1E69792E8];
  v4 = fabs(a3);
  v5 = *(MEMORY[0x1E69792E8] + 80);
  *(a2 + 64) = *(MEMORY[0x1E69792E8] + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = *(v3 + 112);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  v7 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v7;
  *a2 = v4;
  *(a2 + 40) = v4;
  *(a2 + 80) = 0;
  LODWORD(v3) = a3 < 0.0;
  v8 = NAN;
  if ((v3 & result) == 0)
  {
    v8 = 0.0;
  }

  *(a2 + 120) = v8;
  return result;
}

uint64_t SBUIFaceIDCoachingConditionForSBUIProudLockIconViewState(uint64_t a1)
{
  v2 = +[SBUIBiometricResource sharedInstance];
  v3 = [v2 hasPoseidonSupport];

  if (v3)
  {
    return 1;
  }

  result = 3;
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 11:
    case 12:
    case 13:
      return 1;
    case 8:
      result = 16;
      break;
    case 9:
      result = 17;
      break;
    case 10:
      result = 18;
      break;
    case 14:
      result = 2;
      break;
    case 16:
    case 17:
    case 18:
      result = 4;
      break;
    case 19:
      result = 5;
      break;
    case 20:
      result = 6;
      break;
    case 21:
      result = 7;
      break;
    case 22:
      result = 8;
      break;
    case 23:
    case 24:
      result = 13;
      break;
    case 25:
      result = 9;
      break;
    case 26:
      result = 10;
      break;
    case 27:
      result = 11;
      break;
    case 28:
      if (_SBUI_Private_PeriocularPoseOutOfRangeCoachingEnabled())
      {
        result = 15;
      }

      else
      {
        result = 1;
      }

      break;
    case 29:
      result = 12;
      break;
    default:
      return result;
  }

  return result;
}

__CFString *SBUICoachingTextForSBUIFaceIDCoachingCondition(uint64_t a1)
{
  v1 = &stru_1F1D7ED48;
  switch(a1)
  {
    case 2:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"FACE_ID_FACE_TOO_FAR";
      goto LABEL_16;
    case 3:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"FACE_ID_FACE_TOO_CLOSE";
      goto LABEL_16;
    case 4:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"FACE_ID_CAMERA_COVERED";
      goto LABEL_16;
    case 5:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"FACE_ID_ATTENTION_REQUIRED";
      goto LABEL_16;
    case 6:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"FACE_ID_SHOW_COMPLETE_FACE";
      goto LABEL_16;
    case 7:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"FACE_ID_FACE_OUT_OF_VIEW";
      goto LABEL_16;
    case 8:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"FACE_ID_DISABLED";
      goto LABEL_16;
    case 9:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"FACE_ID_NOT_LOOKING";
      goto LABEL_16;
    case 10:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"GENERIC_WATCH_UNLOCK_ERROR";
      goto LABEL_16;
    case 11:
      v5 = +[SBUIPhoneUnlockWithWatchController sharedInstance];
      v6 = [v5 errorCode];

      v1 = SBUIStringForPhoneUnlockWithWatchErrorCode(v6);
      goto LABEL_17;
    case 12:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"GENERIC_VISION_UNLOCK_ERROR";
      goto LABEL_16;
    case 13:
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"FACE_ID_UPSIDE_DOWN";
      goto LABEL_16;
    case 15:
      if (!_SBUI_Private_PeriocularPoseOutOfRangeCoachingEnabled())
      {
        goto LABEL_17;
      }

      v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = v2;
      v4 = @"FACE_ID_POSE_OUT_OF_RANGE";
LABEL_16:
      v1 = [v2 localizedStringForKey:v4 value:&stru_1F1D7ED48 table:@"SpringBoardUIServices_Late_Fall_2018_iOS"];

LABEL_17:

      return v1;
    default:
      goto LABEL_17;
  }
}

void _PowerChanged(int a1, int a2, uint64_t a3, intptr_t notificationID)
{
  if (a3 == -536870288 || a3 == -536870272)
  {
    v6 = __SBUIBiometricEMRootDomainConnect;

    IOAllowPowerChange(v6, notificationID);
  }

  else if (a3 == -536870112)
  {
    v7 = [SBUIBiometricResource sharedInstance:a3];
    [v7 _deviceWillWake];
  }
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

__CFString *SBSUIInCallSceneClientSettingKeyDescription(uint64_t a1)
{
  if ((a1 - 2001) > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E789F560[a1 - 2001];
  }
}

__CFString *SBSUIInCallSceneClientSettingKeyDescription_0(uint64_t a1)
{
  if ((a1 - 3001) > 6)
  {
    return 0;
  }

  else
  {
    return off_1E78A0398[a1 - 3001];
  }
}

id SBSUIInCallSceneClientSettingValueDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((a1 - 2002) <= 0xA)
  {
    if (((1 << (a1 + 46)) & 0x7DE) != 0)
    {
      v4 = objc_opt_class();
      v5 = v3;
      if (v4)
      {
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      [v7 BOOLValue];
      v8 = NSStringFromBOOL();
    }

    else
    {
      if (a1 == 2002)
      {
        v11 = objc_opt_class();
        v12 = v3;
        if (v11)
        {
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v22 = v13;

        v9 = _SBUISafeBackgroundActivityIdentifiersDescription(v22);

        goto LABEL_10;
      }

      v17 = objc_opt_class();
      v18 = v3;
      if (v17)
      {
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v23 = v19;

      [v23 UIEdgeInsetsValue];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v33.top = v25;
      v33.left = v27;
      v33.bottom = v29;
      v33.right = v31;
      v8 = NSStringFromUIEdgeInsets(v33);
    }

    goto LABEL_9;
  }

  if (a1 == 2001)
  {
    v14 = objc_opt_class();
    v15 = v3;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v20 = v16;

    v21 = [v20 unsignedIntegerValue];
    v8 = SBSUIHardwareButtonEventTypeMaskDescription(v21);
LABEL_9:
    v9 = v8;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

id SBSUIInCallSceneClientSettingValueDescription_0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 > 3003)
  {
    if ((a1 - 3004) >= 3)
    {
      if (a1 != 3007)
      {
        goto LABEL_11;
      }

      v6 = [v3 UUIDString];
      goto LABEL_10;
    }

LABEL_9:
    [v3 BOOLValue];
    BSSettingFlagForBool();
    v6 = BSSettingFlagDescription();
    goto LABEL_10;
  }

  if (a1 == 3001)
  {
    [v3 integerValue];
    v6 = SBSInCallPresentationModeDescription();
    goto LABEL_10;
  }

  if (a1 == 3002)
  {
    goto LABEL_9;
  }

  if (a1 != 3003)
  {
    goto LABEL_11;
  }

  [v3 CGRectValue];
  v6 = NSStringFromCGRect(v9);
LABEL_10:
  v5 = v6;
LABEL_11:

  return v5;
}

void sub_1A9A88994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getPKGlyphViewClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PassKitUIFoundationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PassKitUIFoundationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E789DAA8;
    v5 = 0;
    PassKitUIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PassKitUIFoundationLibraryCore_frameworkLibrary)
  {
    __getPKGlyphViewClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PKGlyphView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKGlyphViewClass_block_invoke_cold_1();
  }

  getPKGlyphViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitUIFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitUIFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t SBUILockedStateForIconContentState(unint64_t a1)
{
  if (a1 < 5)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

void SBGetPowerDownViewMetrics(uint64_t a1, int a2)
{
  if (!a1)
  {
    SBGetPowerDownViewMetrics_cold_1();
  }

  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (v6)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v8 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
    {
      v8 = 0;
LABEL_14:

      goto LABEL_15;
    }
  }

  v9 = __sb__runningInSpringBoard();
  v10 = v9;
  if (v9)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v8 = v11 >= *(MEMORY[0x1E69D4380] + 280);
  if ((v10 & 1) == 0)
  {
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (__sb__runningInSpringBoard())
  {
    v12 = SBFEffectiveDeviceClass();
    *(a1 + 24) = 0x402A000000000000;
    *(a1 + 40) = 0x402A000000000000;
    if (v12 != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E69DC938] currentDevice];
    v17 = [v16 userInterfaceIdiom];

    *(a1 + 24) = 0x402A000000000000;
    *(a1 + 40) = 0x402A000000000000;
    if (v17 != 1)
    {
LABEL_17:
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v13 = 64.0;
      }

      else
      {
        v13 = 28.0;
      }

      goto LABEL_20;
    }
  }

  v18 = 70.0;
  if (a2)
  {
    v18 = 62.0;
  }

  if (v8)
  {
    v13 = v18;
  }

  else
  {
    v13 = 40.0;
  }

  if (!__sb__runningInSpringBoard())
  {
    v19 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v19 userInterfaceIdiom] != 1)
    {

      goto LABEL_20;
    }

    v20 = SBFEffectiveHomeButtonType();

    if (v20 != 2)
    {
      goto LABEL_20;
    }

LABEL_37:
    v13 = v13 + -4.0;
    goto LABEL_20;
  }

  if (SBFEffectiveDeviceClass() == 2 && SBFEffectiveHomeButtonType() == 2)
  {
    goto LABEL_37;
  }

LABEL_20:
  *a1 = v13;
  *(a1 + 8) = 0x4052000000000000;
  v14 = 120.0;
  if (v8)
  {
    v14 = 54.0;
  }

  v15 = 100.0;
  if (v8)
  {
    v15 = 34.0;
  }

  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
}

void sub_1A9A8DFE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A9A8E1A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0@<X0>(void *a1@<X0>, double *x8_0@<X8>, double a3@<D0>, double a4@<D1>)
{
  *x8_0 = a3;
  x8_0[1] = a4;
  return [a1 setNeedsLayout];
}

Class _SBUIEffectiveBiometricClassFromString(void *a1)
{
  v1 = a1;
  if (![(NSString *)v1 hasPrefix:@"BK"]|| !_os_feature_enabled_impl())
  {
LABEL_7:
    v3 = NSClassFromString(v1);
    goto LABEL_8;
  }

  v2 = [@"_LA" stringByAppendingString:v1];
  v3 = NSClassFromString(v2);

  if (!v3)
  {
    v4 = SBLogBiometricResource();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      _SBUIEffectiveBiometricClassFromString_cold_1(v1, v4);
    }

    goto LABEL_7;
  }

LABEL_8:
  v5 = v3;

  return v3;
}

uint64_t NSStringFromBiometricKitStatus(unsigned int a1)
{
  if (a1 > 0x64)
  {
    return 0;
  }

  else
  {
    return *(&off_1E789DE00 + a1);
  }
}

void sub_1A9A8F19C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 256));
  _Unwind_Resume(a1);
}

void sub_1A9A90ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *____loadBiometricKitIfNecessary_block_invoke()
{
  __loadBiometricKitIfNecessary_biometricKit = dlopen("/System/Library/PrivateFrameworks/BiometricKit.framework/BiometricKit", 1);
  if (_os_feature_enabled_impl())
  {
    v0 = SBLogBiometricResource();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      ____loadBiometricKitIfNecessary_block_invoke_cold_1(v0);
    }

    result = dlopen("/System/Library/Frameworks/LocalAuthentication.framework/LocalAuthentication", 1);
  }

  else
  {
    result = __loadBiometricKitIfNecessary_biometricKit;
  }

  __loadBiometricKitIfNecessary_localAuthentication = result;
  return result;
}

id _SBUIPasscodeLocalizeStringForMesaOrPearlKey(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if ([a3 hasPearlSupport])
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = _SBUIAXAwareLocalizedStringForKey(v9, a4);

  return v10;
}

__CFString *NSStringFromSBUIPasscodeLockViewState(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"SBUIPasscodeLockViewStatePasscode";
  }

  else
  {
    return @"SBUIPasscodeLockViewStateBiometric";
  }
}

uint64_t SBUIPasscodeLockViewTransitionContextMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

void sub_1A9A95E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A9A9780C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

double SBUISystemApertureMinimumMicroNoticeHorizontalPaddingFromWindow()
{
  v0 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
  [v0 maximumExpandedSize];
  v1 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
  [v1 maximumMicroNoticeSize];
  UICeilToScale();
  v3 = v2;

  return v3;
}

double SBUISystemApertureMaximumMicroNoticeSize()
{
  v0 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
  [v0 maximumMicroNoticeSize];
  v2 = v1;

  return v2;
}

void sub_1A9A9BD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

id _SBUIColorInterpolatedColor(void *a1, void *a2)
{
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v3 = a2;
  [a1 getRed:&v23 green:&v22 blue:&v21 alpha:&v20];
  [v3 getRed:&v19 green:&v18 blue:&v17 alpha:&v16];

  if (a1)
  {
    v4 = v23;
    if (v3)
    {
LABEL_3:
      v5 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = v19;
    v22 = v18;
    v23 = v19;
    v21 = v17;
    v20 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v18 = v22;
  v19 = v4;
  v17 = v21;
  v16 = 0;
  v5 = 0;
LABEL_6:
  v6 = v20;
  BSIntervalValueForFraction();
  v8 = v7;
  BSIntervalValueForFraction();
  v10 = v9;
  BSIntervalValueForFraction();
  v12 = v11;
  BSIntervalValueForFraction();
  v14 = [MEMORY[0x1E69DC888] colorWithRed:v8 green:v10 blue:v12 alpha:{v13, v6, 1, v5, 1}];

  return v14;
}

id _SBUIInterpolatedLegibilitySettings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [v4 style];
      v7 = [v3 primaryColor];
      v8 = [v5 primaryColor];
      v9 = _SBUIColorInterpolatedColor(v7, v8);

      v10 = [v3 secondaryColor];
      v11 = [v5 secondaryColor];
      v12 = _SBUIColorInterpolatedColor(v10, v11);

      v13 = [v3 shadowColor];
      v14 = [v5 shadowColor];
      v15 = _SBUIColorInterpolatedColor(v13, v14);

      v16 = [objc_alloc(MEMORY[0x1E69DD5B8]) initWithStyle:v6 primaryColor:v9 secondaryColor:v12 shadowColor:v15];
      goto LABEL_7;
    }

    v17 = v3;
  }

  else
  {
    v17 = v4;
  }

  v16 = v17;
LABEL_7:

  return v16;
}

void sub_1A9A9E0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMUIAmbientPresentationSceneExtensionClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AmbientUIServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AmbientUIServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E789E490;
    v5 = 0;
    AmbientUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AmbientUIServicesLibraryCore_frameworkLibrary)
  {
    __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AMUIAmbientPresentationSceneExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_cold_1();
  }

  getAMUIAmbientPresentationSceneExtensionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AmbientUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AmbientUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id getLAUIPearlGlyphStaticConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAUIPearlGlyphStaticConfigurationClass_softClass;
  v7 = getLAUIPearlGlyphStaticConfigurationClass_softClass;
  if (!getLAUIPearlGlyphStaticConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLAUIPearlGlyphStaticConfigurationClass_block_invoke;
    v3[3] = &unk_1E789DA88;
    v3[4] = &v4;
    __getLAUIPearlGlyphStaticConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9AA1AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getLAUIPearlGlyphViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAUIPearlGlyphViewClass_softClass;
  v7 = getLAUIPearlGlyphViewClass_softClass;
  if (!getLAUIPearlGlyphViewClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLAUIPearlGlyphViewClass_block_invoke;
    v3[3] = &unk_1E789DA88;
    v3[4] = &v4;
    __getLAUIPearlGlyphViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9AA1BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLAUIPearlGlyphStaticConfigurationClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationPrivateUILibrary();
  result = objc_getClass("LAUIPearlGlyphStaticConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAUIPearlGlyphStaticConfigurationClass_block_invoke_cold_1();
  }

  getLAUIPearlGlyphStaticConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void LocalAuthenticationPrivateUILibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!LocalAuthenticationPrivateUILibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __LocalAuthenticationPrivateUILibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E789E658;
    v2 = 0;
    LocalAuthenticationPrivateUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LocalAuthenticationPrivateUILibraryCore_frameworkLibrary)
  {
    LocalAuthenticationPrivateUILibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __LocalAuthenticationPrivateUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LocalAuthenticationPrivateUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getLAUIPearlGlyphViewClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationPrivateUILibrary();
  result = objc_getClass("LAUIPearlGlyphView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAUIPearlGlyphViewClass_block_invoke_cold_1();
  }

  getLAUIPearlGlyphViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A9AA2CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AmbientUIServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AmbientUIServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E789E698;
    v5 = 0;
    AmbientUIServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!AmbientUIServicesLibraryCore_frameworkLibrary_0)
  {
    __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AMUIAmbientPresentationSceneExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_cold_1_0();
  }

  getAMUIAmbientPresentationSceneExtensionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AmbientUIServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AmbientUIServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id SBSUIStarkNotificationsSceneClientSettingValueDescription(uint64_t a1)
{
  if ((a1 - 2998744415) > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = BSSettingFlagDescription();
  }

  return v2;
}

__CFString *SBUIServiceButtonEventDescription(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
    v3 = v2;
    if (v1)
    {
      [(__CFString *)v2 appendString:@" lock"];
      v1 &= ~1uLL;
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [(__CFString *)v3 appendString:@" volUp"];
    v1 &= ~2uLL;
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_17:
    [(__CFString *)v3 appendString:@" volDown"];
    v1 &= ~4uLL;
    if ((v1 & 0x10) == 0)
    {
LABEL_6:
      if ((v1 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

LABEL_18:
    [(__CFString *)v3 appendString:@" home"];
    v1 &= ~0x10uLL;
    if ((v1 & 8) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    [(__CFString *)v3 appendString:@" headset"];
    v1 &= ~8uLL;
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if (!v1)
      {
LABEL_10:
        [(__CFString *)v3 appendString:@""]);
        goto LABEL_12;
      }

LABEL_9:
      [(__CFString *)v3 appendFormat:@" %li", v1];
      goto LABEL_10;
    }

LABEL_20:
    [(__CFString *)v3 appendString:@" headset-long"];
    v1 &= ~0x20uLL;
    if (!v1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = @"none";
LABEL_12:

  return v3;
}

void __SBUICurrentPasscodeStyleForUser_block_invoke_2()
{
  SBUICurrentPasscodeStyleForUser___simplePasscodeType = -1;
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  SBUICurrentPasscodeStyleForUser___unlockScreenType = [v0 unlockScreenTypeWithOutSimplePasscodeType:&SBUICurrentPasscodeStyleForUser___simplePasscodeType];
}

void sub_1A9AA7E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMUIAmbientPresentationSettingsExtensionClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AmbientUIServicesLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AmbientUIServicesLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E789E818;
    v5 = 0;
    AmbientUIServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!AmbientUIServicesLibraryCore_frameworkLibrary_1)
  {
    __getAMUIAmbientPresentationSettingsExtensionClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AMUIAmbientPresentationSettingsExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMUIAmbientPresentationSettingsExtensionClass_block_invoke_cold_1();
  }

  getAMUIAmbientPresentationSettingsExtensionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AmbientUIServicesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AmbientUIServicesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return objc_opt_class();
}

__CFString *SBUIStringForPhoneUnlockWithWatchErrorCode(uint64_t a1)
{
  v1 = @"Internal only - AKSFailure";
  switch(a1)
  {
    case 101:
      break;
    case 102:
      v1 = @"Internal only - DeviceLocked";
      break;
    case 103:
      v1 = @"Internal only - MessageSendFailed";
      break;
    case 104:
      v1 = @"Internal only - BadDeviceIdentifier";
      break;
    case 105:
      v1 = @"Internal only - PairedDeviceNotNearby";
      break;
    case 106:
      v1 = @"Internal only - SendFailedToPairedDevice";
      break;
    case 107:
      v1 = @"Internal only - EnableRequestTimedOut";
      break;
    case 108:
      v1 = @"Internal only - KeyDeviceNoPasscode";
      break;
    case 109:
      v1 = @"Internal only - PairedUnlockDisabled";
      break;
    case 110:
      v1 = @"Internal only - StashRequestTimedOut";
      break;
    case 111:
      v1 = @"Internal only - NoPermission";
      break;
    case 112:
      v1 = @"Internal only - InvalidParameters";
      break;
    case 113:
      v1 = @"Internal only - StateRequestTimedOut";
      break;
    case 114:
      v1 = @"Internal only - WiFiFailure";
      break;
    case 115:
      v1 = @"Internal only - FeatureUnsupported";
      break;
    case 116:
      v1 = @"Internal only - ScanTimeout";
      break;
    case 117:
      v1 = @"Internal only - NoEnabledDevices";
      break;
    case 118:
      v1 = @"Internal only - Cancelled";
      break;
    case 119:
      v1 = @"Internal only - CodeWatchNotInState";
      break;
    case 120:
      v1 = @"Internal only - WiFiInterfaceDisabled";
      break;
    case 121:
      v1 = @"Internal only - ViewNotSyncing";
      break;
    case 122:
      v1 = @"Internal only - NoEntitlement";
      break;
    case 123:
      v1 = @"Internal only - BluetoothInterfaceDisabled";
      break;
    case 124:
      v1 = @"Internal only - BluetoothWiFiInterfaceDisabled";
      break;
    case 125:
      v1 = @"Internal only - WatchMissingLTK";
      break;
    case 126:
      v1 = @"Internal only - OldProtocol";
      break;
    case 127:
      v1 = @"Internal only - UnlockAttemptLimitReached";
      break;
    case 128:
      v1 = @"Internal only - PeerNotAvailable";
      break;
    case 129:
      v1 = @"Internal only - LTKHashesMismatch";
      break;
    case 130:
      v1 = @"Internal only - AppleWatchOutOfRange";
      break;
    case 131:
      v1 = @"Internal only - UnableToFindWatch";
      break;
    case 132:
      v1 = @"Internal only - UnableToFindWatchInProxy";
      break;
    case 133:
      v1 = @"Internal only - SetupFailed";
      break;
    case 134:
      v1 = @"Internal only - NotCloudPaired";
      break;
    case 135:
      v1 = @"Internal only - WatchLockedAndOnWrist";
      break;
    case 136:
      v1 = @"Internal only - CodeConfirmationFailure";
      break;
    case 137:
      v1 = @"Internal only - NoRangingResults";
      break;
    case 138:
      v1 = @"Internal only - UnableToFindRangingPeer";
      break;
    case 139:
      v1 = @"Internal only - RangingFailure";
      break;
    case 140:
      v1 = @"Internal only - ProxyFailedToConnect";
      break;
    case 141:
      v1 = @"Internal only - ProxyFailedToSend";
      break;
    case 142:
      v1 = @"Internal only - ProxyFailedToSendTimeout";
      break;
    case 143:
      v1 = @"Internal only - ProxyUnknownError";
      break;
    case 144:
      v1 = @"Internal only - ProxyNotAvailableForUnlock";
      break;
    case 145:
      v1 = @"Internal only - MachineClamshellWithNoDisplay";
      break;
    case 146:
      v1 = @"Internal only - MacInternetSharing";
      break;
    case 147:
      v1 = @"Internal only - IncorrectUserPassword";
      break;
    case 148:
      v1 = @"Internal only - MacMissingLTK";
      break;
    case 149:
      v1 = @"Internal only - MissingLocalLTK";
      break;
    case 150:
      v1 = @"Internal only - WatchNotSignedIn";
      break;
    case 151:
      v1 = @"Internal only - SetupRequestSendFailed";
      break;
    case 152:
      v1 = @"Internal only - SetupTokenExchangeSendFailed";
      break;
    case 153:
      v1 = @"Internal only - SetupInitialRequestTimeout";
      break;
    case 154:
      v1 = @"Internal only - SetupTokenExchangeTimeout";
      break;
    case 155:
      v1 = @"Internal only - SetupWatchFailedToSendToken";
      break;
    case 156:
      v1 = @"Internal only - SetupWatchFailedSendCompnID";
      break;
    case 157:
      v1 = @"Internal only - OverallAttemptTimeout";
      break;
    case 158:
      v1 = @"Internal only - WatchOffWrist";
      break;
    case 159:
      v1 = @"Internal only - WatchLockedAndOffWrist";
      break;
    case 160:
      v1 = @"Internal only - MessageMissingSetupToken";
      break;
    case 161:
      v1 = @"Internal only - AKSSessionSetupFailedWatch";
      break;
    case 163:
      v1 = @"Internal only - AKSSecretStepFailed";
      break;
    case 164:
      v1 = @"Internal only - AKSFinalStepFailed";
      break;
    case 165:
      v1 = @"Internal only - FailedCreateSessionTokenWatch";
      break;
    case 166:
      v1 = @"Internal only - FailedStoreSessionTokenWatch";
      break;
    case 169:
      v1 = @"Internal only - FailedToCreateEscrowSecret";
      break;
    case 170:
      v1 = @"Internal only - FailedToStoreEscrowSecret";
      break;
    case 171:
      v1 = @"Internal only - UnknownWatchFailure";
      break;
    case 172:
      v1 = @"Internal only - AKSPeerSetupFailed";
      break;
    case 173:
      v1 = @"Internal only - NewWatchVersion";
      break;
    case 174:
      v1 = @"Internal only - PasscodeKeychainMismatch";
      break;
    case 175:
      v1 = @"Internal only - MissingPasscode";
      break;
    case 176:
      v1 = @"Internal only - WaitingForLTKSync";
      break;
    case 177:
      v1 = @"Internal only - iPhoneNeedsUnlock";
      break;
    case 178:
      v1 = @"Internal only - MacNotIDSRegistered";
      break;
    case 179:
      v1 = @"Internal only - UserDeniedAuthRequest";
      break;
    case 180:
      v1 = @"Internal only - AuthRequestFailedToPost";
      break;
    case 181:
      v1 = @"Internal only - UnexpectedAuthMode";
      break;
    case 182:
      v1 = @"Internal only - TestMode";
      break;
    case 183:
      v1 = @"Internal only - UserSessionNotAvailable";
      break;
    case 184:
      v1 = @"Internal only - AuthPromptsDisabled";
      break;
    case 185:
      v1 = @"Internal only - AuthPromptsMissingToken";
      break;
    case 186:
      v1 = @"Internal only - WatchFailedToConnect";
      break;
    case 187:
      v1 = @"Internal only - LTKMissing";
      break;
    case 188:
      v1 = @"Internal only - IncorrectLocalLTK";
      break;
    case 189:
      v1 = @"Internal only - EncryptionFailed";
      break;
    case 190:
      v1 = @"Internal only - DecryptionFailed";
      break;
    case 191:
      v1 = @"Internal only - MissingSessionKey";
      break;
    case 192:
      v1 = @"Internal only - AWDLFailedToStart";
      break;
    case 193:
      v1 = @"Internal only - MacLTKHashMismatch";
      break;
    case 194:
      v1 = @"Internal only - MissingLocalIDSID";
      break;
    case 195:
      v1 = @"Internal only - ReceivedMsgBeforeFirstUnlock";
      break;
    case 196:
      v1 = @"Internal only - TimeoutLTKResponseFromPhone";
      break;
    case 197:
      v1 = @"Internal only - PairingWatchTimeout";
      break;
    case 198:
      v1 = @"Internal only - NoIDSDeviceForBluetoothID";
      break;
    case 199:
      v1 = @"Internal only - WatchWiFiInterfaceDisabled";
      break;
    case 200:
      v1 = @"Internal only - AuthPromptRequestFailed";
      break;
    case 201:
      v1 = @"Internal only - AuthPromptResponseFailed";
      break;
    case 202:
      v1 = @"Internal only - AuthPromptImageDataFailed";
      break;
    case 203:
      v1 = @"Internal only - AuthPromptCallerInfoMissing";
      break;
    case 204:
      v1 = @"Internal only - WatchInSleepMode";
      break;
    case 205:
      v1 = @"Internal only - FaceIDDisabled";
      break;
    case 206:
      v1 = @"Internal only - NoMask";
      break;
    case 207:
      v1 = @"Internal only - BioLockout";
      break;
    case 210:
      v1 = @"Internal only - WatchNoMotionDetected";
      break;
    case 211:
      v1 = @"Internal only - RegistrationTokenMissing";
      break;
    case 212:
      v1 = @"Internal only - RegistrationMalformedRequest";
      break;
    case 213:
      v1 = @"Internal only - UnlockAttemptTokenNotArmed";
      break;
    case 214:
      v1 = @"Internal only - UnlockAttemptNoRecentUnlock";
      break;
    case 215:
      v1 = @"Internal only - WatchUnlockedAfterPhone";
      break;
    case 216:
      v1 = @"Internal only - AttemptBlockedDueToRelock";
      break;
    default:
      v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
      v1 = [v2 stringValue];

      break;
  }

  return v1;
}

__CFString *SBUISystemApertureCommandDescription(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"unknown";
  }

  else
  {
    return off_1E789E938[a1 - 1];
  }
}

uint64_t SBLayoutSupportsSideLayoutRole()
{
  if (SBLayoutSupportsSideLayoutRole_onceToken != -1)
  {
    SBLayoutSupportsSideLayoutRole_cold_1();
  }

  return SBLayoutSupportsSideLayoutRole_sSBLayoutSupportsSideLayoutRole;
}

uint64_t __SBLayoutSupportsSideLayoutRole_block_invoke()
{
  if (MGGetBoolAnswer())
  {
    result = 1;
  }

  else
  {
    result = MGGetBoolAnswer();
  }

  SBLayoutSupportsSideLayoutRole_sSBLayoutSupportsSideLayoutRole = result;
  return result;
}

void sub_1A9AACF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBSUIInCallWindowSceneSessionDestructionReasonDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E789EA70[a1];
  }
}

__CFString *SBSUIHardwareButtonEventTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E789EAB8[a1 - 1];
  }
}

__CFString *SBSUIHardwareButtonEventTypeMaskDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v10 = __SBSUIHardwareButtonEventTypeMaskDescription_block_invoke;
    v11 = &unk_1E789EA98;
    v3 = v2;
    v12 = v3;
    v4 = v9;
    v5 = 0;
    v13 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v10)(v4);
        if (v13)
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

    [(__CFString *)v3 appendFormat:@" %lu", a1];
    [(__CFString *)v3 appendString:@""]);
  }

  else
  {
    v3 = @"none";
  }

  return v3;
}

uint64_t __SBSUIHardwareButtonEventTypeMaskDescription_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if ((a3 - 1) > 3)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E789EAB8[a3 - 1];
  }

  return [v3 appendFormat:@" %@", v4];
}

void _SBUIApplyDisplayEdgeInfo(void *a1)
{
  v1 = _SBUIApplyDisplayEdgeInfo_onceToken;
  v2 = a1;
  v4 = v2;
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    _SBUIApplyDisplayEdgeInfo_cold_1();
    v3 = v4;
  }

  [_SBUIApplyDisplayEdgeInfo_displayEdgeInfo sb_applyDisplayEdgeInfoToSceneSettings:v3];
  [v4 setCornerRadiusConfiguration:_SBUIApplyDisplayEdgeInfo_cornerRadiusConfiguration];
}

void sub_1A9AADB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBHScreenTypeForCurrentDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary();
  result = dlsym(v2, "SBHScreenTypeForCurrentDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBHScreenTypeForCurrentDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SpringBoardHomeLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __SpringBoardHomeLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E789EBC8;
    v4 = 0;
    SpringBoardHomeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SpringBoardHomeLibraryCore_frameworkLibrary;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary)
  {
    SpringBoardHomeLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __SpringBoardHomeLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardHomeLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSBHDisplayCornerRadiusForScreenTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary();
  result = dlsym(v2, "SBHDisplayCornerRadiusForScreenType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBHDisplayCornerRadiusForScreenTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A9AB2944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A9AB2C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A9AB31A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1A9AB4B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPBItemMetadataKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getPBItemMetadataKeySymbolLoc_ptr;
  v7 = getPBItemMetadataKeySymbolLoc_ptr;
  if (!getPBItemMetadataKeySymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPBItemMetadataKeySymbolLoc_block_invoke;
    v3[3] = &unk_1E789DA88;
    v3[4] = &v4;
    __getPBItemMetadataKeySymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getPBItemMetadataKey_cold_1();
  }

  v1 = *v0;

  return v1;
}

void sub_1A9AB8828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPBItemMetadataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PasteboardLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PasteboardLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E789EDA0;
    v6 = 0;
    PasteboardLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PasteboardLibraryCore_frameworkLibrary;
  if (!PasteboardLibraryCore_frameworkLibrary)
  {
    __getPBItemMetadataKeySymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "PBItemMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPBItemMetadataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PasteboardLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PasteboardLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t SBUI_LegibilitySettingsShadowHasSameShapeAsLegibilitySettings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    [v3 shadowSettings];
    v6 = v18;
    if (v5)
    {
LABEL_3:
      [v5 shadowSettings];
      v7 = v17;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0.0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0.0;
LABEL_6:
  if (vabdd_f64(v6, v7) > 2.22044605e-16)
  {
    goto LABEL_14;
  }

  if (!v3)
  {
    v8 = 0.0;
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_11:
    v9 = 0.0;
    goto LABEL_12;
  }

  [v3 shadowSettings];
  v8 = v16;
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  [v5 shadowSettings];
  v9 = v15;
LABEL_12:
  if (vabdd_f64(v8, v9) <= 2.22044605e-16)
  {
    [v3 minFillHeight];
    v11 = v10;
    [v5 minFillHeight];
    if (vabdd_f64(v11, v12) <= 2.22044605e-16)
    {
      v13 = 1;
      goto LABEL_15;
    }
  }

LABEL_14:
  v13 = 0;
LABEL_15:

  return v13;
}

uint64_t SBUILegibilityShadowSettingsHash(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*a1];
  v3 = [v2 hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 8)];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 16)];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 24)];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

id CAFilterForSBUILegibilityShadowCompositingFilter(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = MEMORY[0x1E69798C8];
LABEL_5:
    v3 = *v2;

    return v3;
  }

  if (a1 == 2)
  {
    v2 = MEMORY[0x1E6979C38];
    goto LABEL_5;
  }

  v3 = 0;

  return v3;
}

double SBUILegibilityImageSizeForContentSizeAndStyle(uint64_t a1, double a2)
{
  v3 = [SBUILegibilitySettings sharedInstanceForStyle:a1];
  v4 = SBUILegibilityImageSizeForContentSizeAndSettings(v3, a2);

  return v4;
}

double SBUILegibilityImageSizeForContentSizeAndSettings(void *a1, double a2)
{
  v3 = a1;
  [v3 imageOutset];
  v5 = a2 + v4;
  [v3 imageOutset];

  return v5;
}

uint64_t SBUISystemApertureSettingValidateComponentStates(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SBUISystemApertureSettingValidateComponentStates_block_invoke;
  v4[3] = &unk_1E789EEF0;
  v4[4] = &v5;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A9AC2290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBUISystemApertureSettingKeyValueDescription(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_42;
  }

  if (a2 > 3213030)
  {
    if (a2 <= 3213036)
    {
      if ((a2 - 3213032) < 4)
      {
        v5 = MEMORY[0x1E696AEC0];
        v6 = objc_opt_class();
        v7 = v4;
        if (v6)
        {
          if (objc_opt_isKindOfClass())
          {
            v8 = v7;
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }

        v24 = v8;

        v25 = [v24 unsignedLongLongValue];
        [v5 stringWithFormat:@"%llu", v25];
        v22 = LABEL_40:;
LABEL_41:
        v9 = v22;
        goto LABEL_42;
      }

      if (a2 == 3213031)
      {
        v30 = MEMORY[0x1E696AEC0];
        v31 = objc_opt_class();
        v32 = v4;
        if (v31)
        {
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        v47 = v33;

        v48 = [v47 unsignedIntValue];
        [v30 stringWithFormat:@"%u", v48];
        goto LABEL_40;
      }

      goto LABEL_63;
    }

    if (a2 <= 3213055)
    {
      switch(a2)
      {
        case 3213037:
          v37 = objc_opt_class();
          v38 = v4;
          if (v37)
          {
            if (objc_opt_isKindOfClass())
            {
              v39 = v38;
            }

            else
            {
              v39 = 0;
            }
          }

          else
          {
            v39 = 0;
          }

          v42 = v39;

          v9 = _SBUISafeBackgroundActivityIdentifiersDescription(v42);

          goto LABEL_42;
        case 3213039:
          v34 = objc_opt_class();
          v35 = v4;
          if (v34)
          {
            if (objc_opt_isKindOfClass())
            {
              v36 = v35;
            }

            else
            {
              v36 = 0;
            }
          }

          else
          {
            v36 = 0;
          }

          v40 = v36;

          v41 = [v40 integerValue];
          v22 = SBUISystemApertureCustomLayoutDescription(v41);
          goto LABEL_41;
        case 3213042:
          v13 = objc_opt_class();
          v14 = v4;
          if (v13)
          {
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          v43 = v15;

          v44 = [v43 unsignedIntegerValue];
          v22 = SBUISystemAperturePresentationBehaviorsDescription(v44);
          goto LABEL_41;
      }

      goto LABEL_63;
    }

    if ((a2 - 3213056) >= 2)
    {
LABEL_63:
      v22 = [v3 description];
      goto LABEL_41;
    }

LABEL_30:
    v17 = objc_opt_class();
    v18 = v4;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = v19;

    [v23 BOOLValue];
    v22 = NSStringFromBOOL();
    goto LABEL_41;
  }

  if (a2 > 3213020)
  {
    if ((a2 - 3213022) >= 4)
    {
      if (a2 == 3213021)
      {
        v27 = objc_opt_class();
        v28 = v4;
        if (v27)
        {
          if (objc_opt_isKindOfClass())
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v45 = v29;

        v46 = [v45 unsignedIntegerValue];
        v22 = SBUISystemApertureContentRoleDescription(v46);
        goto LABEL_41;
      }

      goto LABEL_63;
    }

    goto LABEL_12;
  }

  if ((a2 - 3213017) < 2)
  {
    goto LABEL_30;
  }

  if (a2 == 3213009)
  {
LABEL_12:
    v10 = objc_opt_class();
    v11 = v4;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v20 = v12;

    v21 = [v20 unsignedIntegerValue];
    v22 = SBUISystemApertureLayoutModeDescription(v21);
    goto LABEL_41;
  }

  if (a2 != 3213016)
  {
    goto LABEL_63;
  }

  v16 = [v3 unsignedIntegerValue];
  if (v16 >= 4)
  {
    v9 = @"invalid";
  }

  else
  {
    v9 = off_1E789EF10[v16];
  }

LABEL_42:

  return v9;
}

__CFString *SBUISystemApertureSettingKeyDescription(uint64_t a1)
{
  if ((a1 - 3213008) > 0x35)
  {
    return @"invalid";
  }

  else
  {
    return off_1E789EF30[a1 - 3213008];
  }
}

void sub_1A9AC2A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SBUISystemApertureSettingValidateComponentStates_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_opt_class();
  v14 = v7;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v14;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = objc_opt_class();
  v13 = v8;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  if (!v12)
  {
LABEL_12:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t SBUIProudLockIconViewStateForSBUIFaceIDCoachingCondition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  switch(a1)
  {
    case 2:
      result = 14;
      break;
    case 4:
      v7 = SBUIFaceIDCameraOrientationForDevice();
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          result = 18;
        }

        else
        {
          if (a3 != 3)
          {
            goto LABEL_26;
          }

          result = 16;
        }
      }

      else if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_26;
        }

        if (SBUIInterfaceOrientationForFaceIDCameraOrientation(v7) == a2)
        {
          result = 16;
        }

        else
        {
          result = 18;
        }
      }

      else if (SBUIFaceIDCameraOrientationAlignsWithInterfaceOrientation(v7, a2))
      {
        result = 16;
      }

      else
      {
        result = 18;
      }

      break;
    case 5:
    case 6:
    case 7:
      result = 4;
      break;
    case 8:
      result = 22;
      break;
    case 9:
      result = 25;
      break;
    case 10:
      result = 26;
      break;
    case 11:
      result = 27;
      break;
    case 12:
      result = 29;
      break;
    case 13:
      if (a3 >= 4)
      {
        goto LABEL_26;
      }

      result = qword_1A9B2AB98[a3];
      break;
    case 14:
LABEL_26:
      result = 0;
      break;
    case 15:
      if (_SBUI_Private_PeriocularPoseOutOfRangeCoachingEnabled())
      {
        result = 28;
      }

      else
      {
        result = 0;
      }

      break;
    case 16:
      result = 8;
      break;
    case 17:
      result = 9;
      break;
    case 18:
      result = 10;
      break;
    default:
      return result;
  }

  return result;
}

id NSStringCoachingTextForSBUIProudLockIconViewState(unint64_t a1)
{
  if (SBUIProudLockIconViewStateIsCoaching(a1))
  {
    v2 = SBUIFaceIDCoachingConditionForSBUIProudLockIconViewState(a1);
    v3 = SBUICoachingTextForSBUIFaceIDCoachingCondition(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id SBUIWindowForViewControllerTransition(void *a1)
{
  v1 = [a1 containerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 window];
  }

  v3 = v2;

  return v3;
}

void sub_1A9AC4120(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

__CFString *SBSUIIdleTimerModeDescription(uint64_t a1)
{
  v1 = @"unknown";
  if (!a1)
  {
    v1 = @"SBSUIIdleTimerModeUnlocked";
  }

  if (a1 == 1)
  {
    return @"SBSUIIdleTimerModeLocked";
  }

  else
  {
    return v1;
  }
}

__CFString *SBSUIRotationModeDescription(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"SBSUIRotationModeNotAllowed";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"SBSUIRotationModeAllowed";
  }
}

__CFString *SBSUIWallpaperModeDescription(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"SBSUIWallpaperModeDark";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"SBSUIWallpaperModeLight";
  }
}

__CFString *SBSUILoginUISceneClientSettingValueDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 736840729)
  {
    v9 = [v3 unsignedIntegerValue];
    v6 = @"unknown";
    if (v9 == 1)
    {
      v6 = @"SBSUIWallpaperModeDark";
    }

    v7 = @"SBSUIWallpaperModeLight";
    goto LABEL_13;
  }

  if (a1 == 736840728)
  {
    v9 = [v3 integerValue];
    v6 = @"unknown";
    if (v9 == 1)
    {
      v6 = @"SBSUIRotationModeNotAllowed";
    }

    v7 = @"SBSUIRotationModeAllowed";
LABEL_13:
    v8 = v9 == 0;
    goto LABEL_14;
  }

  if (a1 != 736840726)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v5 = [v3 integerValue];
  v6 = @"unknown";
  if (!v5)
  {
    v6 = @"SBSUIIdleTimerModeUnlocked";
  }

  v7 = @"SBSUIIdleTimerModeLocked";
  v8 = v5 == 1;
LABEL_14:
  if (v8)
  {
    v6 = v7;
  }

  v10 = v6;
LABEL_18:

  return v10;
}

id NSDictionaryFromSBUILegibilityShadowSettings(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"kSBUIModernLegibilityShadowRadiusKey";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*a1];
  v9[0] = v2;
  v8[1] = @"kSBUIModernLegibilityShadowAlphaKey";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 8)];
  v9[1] = v3;
  v8[2] = @"kSBUIModernLegibilityImageOutsetKey";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 16)];
  v9[2] = v4;
  v8[3] = @"kSBUIModernLegibilityShadowCompositingFilterNameKey";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 24)];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

void SBUILegibilityShadowSettingsFromDictionary(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"kSBUIModernLegibilityShadowRadiusKey"];
  [v4 floatValue];
  *a2 = v5;

  v6 = [v3 objectForKeyedSubscript:@"kSBUIModernLegibilityShadowAlphaKey"];
  [v6 floatValue];
  *(a2 + 8) = v7;

  v8 = [v3 objectForKeyedSubscript:@"kSBUIModernLegibilityImageOutsetKey"];
  [v8 floatValue];
  *(a2 + 16) = v9;

  v10 = [v3 objectForKeyedSubscript:@"kSBUIModernLegibilityShadowCompositingFilterNameKey"];

  *(a2 + 24) = [v10 integerValue];
}

id ComputeLegibilityColorFromColor(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69DC888] blackColor];
  if (CGColorGetNumberOfComponents([v1 CGColor]) >= 3)
  {
    v7 = 0.0;
    v8 = 0.0;
    v6 = 0;
    if ([v1 getHue:&v8 saturation:&v7 brightness:&v6 alpha:0])
    {
      v3 = 0.0;
      if (v8 != 0.0)
      {
        v3 = fmin(fmax(v7, 0.3), 0.5);
      }

      v4 = [MEMORY[0x1E69DC888] colorWithHue:v8 saturation:v3 brightness:0.3 alpha:1.0];

      v2 = v4;
    }
  }

  return v2;
}

id SBUISystemApertureSecureFlipBookClientComposedSequence(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = a4;
  v9 = a2;
  v10 = [v7 stringWithFormat:@"%@.%@", a3, a1];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, v9];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v10, v11];

  return v12;
}

void sub_1A9AD2420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBUIBiometricEvent(unint64_t a1)
{
  if (a1 > 0x24)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E789F3D0[a1];
  }
}

__CFString *NSStringFromSBUIBiometricLockoutState(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"None";
  }

  else
  {
    return off_1E789F4F8[a1 - 1];
  }
}

__CFString *NSStringFromSBUIBiometricMatchMode(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_1E789F548[a1 - 1];
  }
}

double _SBMainScreenScale()
{
  if (_SBMainScreenScale_onceToken != -1)
  {
    _SBMainScreenScale_cold_1();
  }

  return *&_SBMainScreenScale___s;
}

uint64_t SBRectEqualsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (CGRectEqualToRect(*&a1, *&a5))
  {
    return 1;
  }

  v17 = vabdd_f64(a2, a6);
  if (vabdd_f64(a1, a5) >= 2.22044605e-16 || v17 >= 2.22044605e-16)
  {
    return 0;
  }

  v19 = vabdd_f64(a3, a7) < 2.22044605e-16;
  return vabdd_f64(a4, a8) < 2.22044605e-16 && v19;
}

uint64_t SBSizeGreaterThanOrEqualToSize(double a1, double a2, double a3, double a4)
{
  v4 = vabdd_f64(a1, a3);
  if (a1 <= a3 && v4 >= 2.22044605e-16)
  {
    return 0;
  }

  v6 = vabdd_f64(a2, a4) < 2.22044605e-16;
  return a2 > a4 || v6;
}

BOOL SBPointEqualToPointAtScale(double a1, double a2, double a3, double a4, double a5)
{
  if (fabs(a5) < 2.22044605e-16)
  {
    if (_SBMainScreenScale_onceToken != -1)
    {
      _SBMainScreenScale_cold_1();
    }

    a5 = *&_SBMainScreenScale___s;
  }

  return vabdd_f64(a1 * a5, a3 * a5) < 2.22044605e-16 && vabdd_f64(a2 * a5, a4 * a5) < 2.22044605e-16;
}

double SBFloatRoundForScale(double a1, double a2)
{
  if (fabs(a2) < 2.22044605e-16)
  {
    if (_SBMainScreenScale_onceToken != -1)
    {
      _SBMainScreenScale_cold_1();
    }

    a2 = *&_SBMainScreenScale___s;
  }

  return round(a2 * a1) / a2;
}

double SBFloatRoundForMainScreenScale(double a1)
{
  if (_SBMainScreenScale_onceToken != -1)
  {
    _SBMainScreenScale_cold_1();
  }

  return round(*&_SBMainScreenScale___s * a1) / *&_SBMainScreenScale___s;
}

double SBFloatFloorForScale(double a1, double a2)
{
  if (fabs(a2) < 2.22044605e-16)
  {
    if (_SBMainScreenScale_onceToken != -1)
    {
      _SBMainScreenScale_cold_1();
    }

    a2 = *&_SBMainScreenScale___s;
  }

  return floor(a2 * a1) / a2;
}

double SBFloatCeilForScale(double a1, double a2)
{
  if (fabs(a2) < 2.22044605e-16)
  {
    if (_SBMainScreenScale_onceToken != -1)
    {
      _SBMainScreenScale_cold_1();
    }

    a2 = *&_SBMainScreenScale___s;
  }

  return ceil(a2 * a1) / a2;
}

double SBPointRoundForScale(double a1, double a2, double a3)
{
  v5 = SBFloatRoundForScale(a1, a3);
  SBFloatRoundForScale(a2, a3);
  return v5;
}

double SBPointRoundForMainScreenScale(double a1)
{
  if (_SBMainScreenScale_onceToken != -1)
  {
    _SBMainScreenScale_cold_1();
  }

  return round(a1 * *&_SBMainScreenScale___s) / *&_SBMainScreenScale___s;
}

double SBRectRoundForScale(double a1, double a2, double a3, double a4, double a5)
{
  v9 = SBFloatRoundForScale(a1, a5);
  SBFloatRoundForScale(a2, a5);
  SBFloatRoundForScale(a3, a5);
  SBFloatRoundForScale(a4, a5);
  return v9;
}

double SBOffsetPointInReferenceSpaceAlongSceneSpaceDirectionForOrientation(unint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v7 = -a5;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v7 = a5;
    }

    if (a2 > 1)
    {
      if (a2 == 2)
      {
        return a3;
      }

      if (a2 != 3)
      {
        if (a2 != 4)
        {
          return a3;
        }

        return a3 - v7;
      }

      return a3 + v7;
    }

    if (a2)
    {
      return a3;
    }

    return *MEMORY[0x1E695EFF8];
  }

  if (a1 == 2)
  {
    v8 = a5;
  }

  else
  {
    v8 = -a5;
  }

  v9 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v7 = -v8;
  if (v9 != 1)
  {
    v7 = v8;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      return a3;
    }

    return a3 + v7;
  }

  if (!a2)
  {
    return *MEMORY[0x1E695EFF8];
  }

  if (a2 == 1)
  {
    return a3 - v7;
  }

  return a3;
}

BOOL SBRectContainsPointIncludingEdges(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  result = 0;
  if (!CGRectIsNull(*&a2))
  {
    v15.origin.x = a2;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    if (!CGRectIsEmpty(v15))
    {
      v16.origin.x = a2;
      v16.origin.y = a3;
      v16.size.width = a4;
      v16.size.height = a5;
      if (CGRectGetMinX(v16) <= a6)
      {
        v17.origin.x = a2;
        v17.origin.y = a3;
        v17.size.width = a4;
        v17.size.height = a5;
        if (a6 <= CGRectGetMaxX(v17))
        {
          v18.origin.x = a2;
          v18.origin.y = a3;
          v18.size.width = a4;
          v18.size.height = a5;
          if (CGRectGetMinY(v18) <= a7)
          {
            v19.origin.x = a2;
            v19.origin.y = a3;
            v19.size.width = a4;
            v19.size.height = a5;
            if (a7 <= CGRectGetMaxY(v19))
            {
              if ((a1 & 1) != 0 || (v20.origin.x = a2, v20.origin.y = a3, v20.size.width = a4, v20.size.height = a5, a7 != CGRectGetMinY(v20)))
              {
                if ((a1 & 2) != 0 || (v21.origin.x = a2, v21.origin.y = a3, v21.size.width = a4, v21.size.height = a5, a6 != CGRectGetMinX(v21)))
                {
                  if ((a1 & 4) != 0 || (v22.origin.x = a2, v22.origin.y = a3, v22.size.width = a4, v22.size.height = a5, a7 != CGRectGetMaxY(v22)))
                  {
                    if ((a1 & 8) != 0)
                    {
                      return 1;
                    }

                    v23.origin.x = a2;
                    v23.origin.y = a3;
                    v23.size.width = a4;
                    v23.size.height = a5;
                    if (a6 != CGRectGetMaxX(v23))
                    {
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

__CFString *SBStringFromCornerMask(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 15)
    {
      v3 = @"allCorners";
    }

    else
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"minXminY:%d maxXminY:%d minXmaxY:%d maxXmaxY:%d", a1 & 1, (a1 >> 1) & 1, (a1 >> 2) & 1, (a1 >> 3) & 1, v1];
    }
  }

  else
  {
    v3 = @"noCorners";
  }

  return v3;
}

id SBStringFromUIRectCorner(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __SBStringFromUIRectCorner_block_invoke;
  v11 = &unk_1E789EA98;
  v3 = v2;
  v12 = v3;
  v4 = v9;
  if (a1)
  {
    v5 = 0;
    v13 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v10)(v4);
        if (v13)
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

  return v3;
}

uint64_t __SBStringFromUIRectCorner_block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) length];
  if (result)
  {
    result = [*(a1 + 32) appendString:@"|"];
  }

  v5 = a2 - 1;
  if (a2 - 1) <= 7 && ((0x8Bu >> v5))
  {
    v6 = off_1E789F5C0[v5];
    v7 = *(a1 + 32);

    return [v7 appendString:v6];
  }

  return result;
}

void SBTransformedRectWithScale(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = a1 + CGRectGetWidth(*&a1) * 0.5;
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  v11 = a2 + CGRectGetHeight(v19) * 0.5;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, -v10, -v11);
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, v10, v11);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, a5, a5);
  t1 = v18;
  memset(&v15, 0, sizeof(v15));
  t2 = v16;
  CGAffineTransformConcat(&v15, &t1, &t2);
  t2 = v15;
  memset(&t1, 0, sizeof(t1));
  v12 = v17;
  CGAffineTransformConcat(&t1, &t2, &v12);
  t2 = t1;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectApplyAffineTransform(v20, &t2);
}

void sub_1A9AD8BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SBUILegibilityMetalEngineCGDataProviderFreeDataCallback(uint64_t a1, void *a2)
{
  v3 = malloc_default_zone();

  malloc_zone_free(v3, a2);
}

void sub_1A9ADA648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  objc_destroyWeak((v49 + 104));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v50 - 248), 8);
  _Block_object_dispose((v50 - 200), 8);
  _Block_object_dispose((v50 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1A9AE0068(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBUIContinuitySessionErrorCode(uint64_t a1)
{
  v1 = @"None";
  if (a1 == -1000)
  {
    v1 = @"Generic";
  }

  if (a1 == -1001)
  {
    v1 = @"Security";
  }

  if (a1 == -2001)
  {
    return @"InvalidSession";
  }

  else
  {
    return v1;
  }
}

id SBUIContinuitySessionErrorCreate(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  if (a1)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = v11;
    v13 = @"None";
    if (a1 == -1000)
    {
      v13 = @"Generic";
    }

    if (a1 == -1001)
    {
      v13 = @"Security";
    }

    if (a1 == -2001)
    {
      v14 = @"InvalidSession";
    }

    else
    {
      v14 = v13;
    }

    [v11 bs_setSafeObject:v14 forKey:*MEMORY[0x1E698E5B8]];
    if (v10)
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
      [v12 bs_setSafeObject:v15 forKey:*MEMORY[0x1E696A588]];
    }

    a1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBUIContinuitySessionErrorDomain" code:a1 userInfo:v12];
  }

  return a1;
}

__CFString *NSStringFromSBUIContinuityButtonEventType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"none";
  }

  else
  {
    return off_1E789F8B0[a1 - 1];
  }
}

__CFString *NSStringFromSBUIContinuitySessionStep(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E789F8D0[a1 - 1];
  }
}

id SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration(void *a1)
{
  v1 = [a1 hardwareIdentifier];
  v2 = @"<embedded>";
  if (v1)
  {
    v2 = v1;
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SB-display-%@", v2];

  return v3;
}

__CFString *SBSUIDeviceLockSourceTypeDescription(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"smartCover";
  }

  if (a1 == 1)
  {
    return @"lockButton";
  }

  else
  {
    return v1;
  }
}

uint64_t SBUIFaceIDCoachingConditionForBiometricEvent(uint64_t a1)
{
  if ((a1 - 16) > 0x14)
  {
    return 0;
  }

  else
  {
    return qword_1A9B2AC58[a1 - 16];
  }
}

void sub_1A9AE3A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAPSLaunchUtilClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppPlaceholderSyncLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppPlaceholderSyncLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E789F9C0;
    v5 = 0;
    AppPlaceholderSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppPlaceholderSyncLibraryCore_frameworkLibrary)
  {
    __getAPSLaunchUtilClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("APSLaunchUtil");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPSLaunchUtilClass_block_invoke_cold_1();
  }

  getAPSLaunchUtilClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppPlaceholderSyncLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppPlaceholderSyncLibraryCore_frameworkLibrary = result;
  return result;
}

void *UIContentSizeCategoryOneSmallerThanSizeCategory(void *a1)
{
  v1 = a1;
  v2 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC20]);
  v3 = *MEMORY[0x1E69DDC28];
  if (v2)
  {
    v4 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC28]);
    v3 = *MEMORY[0x1E69DDC30];
    if (v4)
    {
      v5 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC30]);
      v3 = *MEMORY[0x1E69DDC38];
      if (v5)
      {
        v6 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC38]);
        v3 = *MEMORY[0x1E69DDC40];
        if (v6)
        {
          v7 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC40]);
          v3 = *MEMORY[0x1E69DDC50];
          if (v7)
          {
            v8 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC50]);
            v3 = *MEMORY[0x1E69DDC58];
            if (v8)
            {
              v9 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC58]);
              v3 = *MEMORY[0x1E69DDC60];
              if (v9)
              {
                v10 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC60]);
                v3 = *MEMORY[0x1E69DDC70];
                if (v10)
                {
                  v11 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC70]);
                  v3 = *MEMORY[0x1E69DDC78];
                  if (v11)
                  {
                    v12 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC78]);
                    v3 = *MEMORY[0x1E69DDC88];
                    if (v12)
                    {
                      v13 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC88]);
                      v3 = *MEMORY[0x1E69DDC68];
                      if (v13)
                      {
                        if (UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC68]))
                        {
                          v3 = *MEMORY[0x1E69DDC90];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v14 = v3;

  return v3;
}

NSString *UIContentSizeCategoryClip(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = v5;
    v9 = UIContentSizeCategoryCompareToCategory(v8, v7);
    v10 = v7;
    if (v9 == NSOrderedDescending || (v11 = UIContentSizeCategoryCompareToCategory(v8, v6), v10 = v6, v11 == NSOrderedAscending))
    {
      v12 = v10;

      v8 = v12;
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

BOOL UIContentSizeCategoryIsInRange(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = UIContentSizeCategoryClip(v5, a2, a3);
  v7 = UIContentSizeCategoryCompareToCategory(v5, v6);

  return v7 == NSOrderedSame;
}

id SBUICurrentPreferredFontForCoachingText()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  v2 = [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] hiFontStyle:12 contentSizeCategory:v1];

  return v2;
}

uint64_t SBUIBytesPerPixelForMetalPixelFormat(uint64_t a1)
{
  v1 = a1 - 1;
  result = 4;
  switch(v1)
  {
    case 0:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 79:
    case 80:
      result = 8;
      break;
    case 19:
    case 21:
    case 22:
    case 23:
    case 24:
    case 59:
    case 61:
    case 62:
    case 63:
    case 64:
    case 109:
    case 111:
    case 112:
    case 113:
    case 114:
      result = 16;
      break;
    case 39:
    case 40:
    case 42:
      result = 5;
      break;
    case 41:
      return result;
    case 52:
    case 53:
    case 54:
    case 102:
    case 103:
    case 104:
    case 122:
    case 123:
    case 124:
      result = 32;
      break;
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
      result = 10;
      break;
    default:
      SBUIBytesPerPixelForMetalPixelFormat_cold_1();
  }

  return result;
}

uint64_t SBUIBitsPerComponentForMTLPixelFormat(uint64_t a1)
{
  v1 = a1 - 1;
  result = 4;
  switch(v1)
  {
    case 0:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 79:
    case 80:
      result = 8;
      break;
    case 19:
    case 21:
    case 22:
    case 23:
    case 24:
    case 59:
    case 61:
    case 62:
    case 63:
    case 64:
    case 109:
    case 111:
    case 112:
    case 113:
    case 114:
      result = 16;
      break;
    case 39:
    case 40:
    case 42:
      result = 5;
      break;
    case 41:
      return result;
    case 52:
    case 53:
    case 54:
    case 102:
    case 103:
    case 104:
    case 122:
    case 123:
    case 124:
      result = 32;
      break;
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
      result = 10;
      break;
    default:
      SBUIBitsPerComponentForMTLPixelFormat_cold_1();
  }

  return result;
}

uint64_t UIImageCreateFromMTLPixelFormat(unint64_t a1, char a2, void *a3, void *a4, void *a5, double a6, double a7, double a8)
{
  v56 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v53 = a4;
  v16 = a5;
  v17 = objc_autoreleasePoolPush();
  v18 = a6 * a8;
  v19 = vcvtps_u32_f32(v18);
  v20 = UIImageBytesNeeded(a1, a6, a7, a8);
  v21 = SBUIBitsPerComponentForMTLPixelFormat(a1);
  v22 = SBUIBytesPerPixelForMetalPixelFormat(a1) * v21;
  bytesPerRow = CGBitmapGetAlignedBytesPerRow();
  space = SBUIColorSpaceFromPixelFormat(a1);
  v23 = 7;
  switch(a1)
  {
    case 1uLL:
      goto LABEL_18;
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x15uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3DuLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x44uLL:
    case 0x45uLL:
    case 0x4BuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x5FuLL:
    case 0x60uLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x63uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6FuLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
    case 0x77uLL:
    case 0x78uLL:
    case 0x79uLL:
    case 0x7AuLL:
      goto LABEL_9;
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
      goto LABEL_2;
    case 0x14uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x28uLL:
    case 0x3CuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x40uLL:
      v23 = 4096;
      goto LABEL_18;
    case 0x19uLL:
    case 0x41uLL:
      v23 = 4352;
      goto LABEL_18;
    case 0x29uLL:
    case 0x2AuLL:
      v23 = 4098;
      goto LABEL_18;
    case 0x2BuLL:
    case 0x6EuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
      v23 = 4097;
      goto LABEL_18;
    case 0x35uLL:
    case 0x36uLL:
    case 0x67uLL:
    case 0x68uLL:
      goto LABEL_10;
    case 0x37uLL:
    case 0x5CuLL:
    case 0x5DuLL:
    case 0x69uLL:
    case 0x7BuLL:
    case 0x7CuLL:
      v23 = 8448;
      goto LABEL_18;
    case 0x46uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4AuLL:
      v23 = 1;
      goto LABEL_18;
    case 0x50uLL:
    case 0x51uLL:
      v23 = 8194;
      goto LABEL_18;
    case 0x5AuLL:
    case 0x5BuLL:
      v23 = 204801;
      goto LABEL_18;
    case 0x5EuLL:
      v23 = 16385;
      goto LABEL_18;
    case 0x73uLL:
      v23 = 4353;
      goto LABEL_18;
    case 0x7DuLL:
      v23 = 8449;
      goto LABEL_18;
    default:
      if (a1 == 252)
      {
LABEL_10:
        v23 = 0x2000;
      }

      else
      {
        if (a1 != 253)
        {
LABEL_9:
          UIImageCreateFromMTLPixelFormat_cold_1();
        }

LABEL_2:
        v23 = 0;
      }

LABEL_18:
      bitsPerPixel = v22;
      v49 = v20;
      context = v17;
      v51 = v16;
      v24 = a7 * a8;
      v25 = vcvtps_u32_f32(v24);
      v26 = v53;
      if (v15)
      {
        v46 = a2;
        v27 = v23;
        v28 = [v15 slotLength];
        if (v20 > v28)
        {
          v41 = v28;
          v42 = [MEMORY[0x1E696AAA8] currentHandler];
          v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIImage * _Nonnull UIImageCreateFromMTLPixelFormat(CGSize, CGFloat, MTLPixelFormat, CGImageAlphaInfo, CPMemoryPool *__strong _Nullable, __strong SBUIGraphicsDrawBlock _Nonnull, __strong SBUIGraphicsCreateImageBlock _Nullable)"}];
          v43 = NSStringFromMTLPixelFormat(a1);
          v57.width = a6;
          v57.height = a7;
          v44 = NSStringFromCGSize(v57);
          [v42 handleFailureInFunction:v45 file:@"SBUIMetalHelpers.m" lineNumber:369 description:{@"requested slot length (%zd) larger than maximum slotLength (%zd), not large enough for %@ context with dimensions %@ @%fx", v49, v41, v43, v44, *&a8}];

          v26 = v53;
        }

        v29 = v15;
        Data = CGBitmapAllocateData();
        v23 = v27;
        a2 = v46;
      }

      else
      {
        v29 = 0;
        Data = 0;
      }

      v31 = a2 & 0x1F;
      v32 = v21;
      v47 = v23;
      v33 = CGBitmapContextCreate(Data, v19, v25, v21, bytesPerRow, space, v23 | v31);
      v58.size.width = v19;
      v58.origin.x = 0.0;
      v58.origin.y = 0.0;
      v58.size.height = v25;
      CGContextClearRect(v33, v58);
      if (v26)
      {
        CGContextTranslateCTM(v33, 0.0, v25);
        CGContextScaleCTM(v33, a8, -a8);
        CGContextGetCTM(&v55, v33);
        CGContextSetBaseCTM();
        UIGraphicsPushContext(v33);
        v26[2](v26);
        UIGraphicsPopContext();
      }

      if (Data)
      {
        v34 = [v29 nextSlotWithBytes:Data length:v49];
        v35 = CGDataProviderCreateWithCFData(v34);
        if (_MTLPixeLFormatIsSingleComponent(a1))
        {
          *&v55.a = xmmword_1A9B2AD10;
          v36 = CGImageMaskCreate(v19, v25, v32, bitsPerPixel, bytesPerRow, v35, &v55.a, 0);
        }

        else
        {
          v36 = CGImageCreate(v19, v25, v32, bitsPerPixel, bytesPerRow, space, v47 | v31, v35, 0, 0, kCGRenderingIntentDefault);
        }

        Image = v36;
        CGDataProviderRelease(v35);
        CGBitmapFreeData();
      }

      else
      {
        Image = CGBitmapContextCreateImage(v33);
      }

      if (v51)
      {
        v38 = (v51)[2](v51, Image, 0, a8);
      }

      else
      {
        v38 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:a8];
      }

      v39 = v38;
      CGImageRelease(Image);
      CGColorSpaceRelease(space);
      CGContextRelease(v33);
      objc_autoreleasePoolPop(context);

      return v39;
  }
}

uint64_t UIImageBytesNeeded(uint64_t a1, double a2, double a3, double a4)
{
  v5 = a3 * a4;
  v6 = vcvtps_u32_f32(v5);
  SBUIBitsPerComponentForMTLPixelFormat(a1);
  SBUIBytesPerPixelForMetalPixelFormat(a1);
  return CGBitmapGetAlignedBytesPerRow() * v6;
}

CGColorSpaceRef SBUIColorSpaceFromPixelFormat(uint64_t a1)
{
  if ((a1 - 10) <= 0x3D)
  {
    if (((1 << (a1 - 10)) & 0x200000008009) != 0)
    {
      return CGColorSpaceCreateDeviceGray();
    }

    if (a1 == 71)
    {
      return CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    }
  }

  if ((a1 - 252) < 2)
  {
    return CGColorSpaceCreateDeviceGray();
  }

  if (a1 == 81)
  {
    return CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  }

  else
  {
    return CGColorSpaceCreateDeviceRGB();
  }
}

__CFString *NSStringFromMTLPixelFormat(uint64_t a1)
{
  result = 0;
  if (a1 > 551)
  {
    v3 = @"MTLPixelFormatBGR10_XR";
    v4 = @"MTLPixelFormatBGR10_XR_sRGB";
    if (a1 != 555)
    {
      v4 = 0;
    }

    if (a1 != 554)
    {
      v3 = v4;
    }

    v5 = @"MTLPixelFormatBGRA10_XR";
    v6 = @"MTLPixelFormatBGRA10_XR_sRGB";
    if (a1 != 553)
    {
      v6 = 0;
    }

    if (a1 != 552)
    {
      v5 = v6;
    }

    if (a1 <= 553)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        result = @"MTLPixelFormatInvalid";
        break;
      case 1:
        result = @"MTLPixelFormatA8Unorm";
        break;
      case 10:
        result = @"MTLPixelFormatR8Unorm";
        break;
      case 11:
        result = @"MTLPixelFormatR8Unorm_sRGB";
        break;
      case 12:
        result = @"MTLPixelFormatR8Snorm";
        break;
      case 13:
        result = @"MTLPixelFormatR8Uint";
        break;
      case 14:
        result = @"MTLPixelFormatR8Sint";
        break;
      case 20:
        result = @"MTLPixelFormatR16Unorm";
        break;
      case 22:
        result = @"MTLPixelFormatR16Snorm";
        break;
      case 23:
        result = @"MTLPixelFormatR16Uint";
        break;
      case 24:
        result = @"MTLPixelFormatR16Sint";
        break;
      case 25:
        result = @"MTLPixelFormatR16Float";
        break;
      case 30:
        result = @"MTLPixelFormatRG8Unorm";
        break;
      case 31:
        result = @"MTLPixelFormatRG8Unorm_sRGB";
        break;
      case 32:
        result = @"MTLPixelFormatRG8Snorm";
        break;
      case 33:
        result = @"MTLPixelFormatRG8Uint";
        break;
      case 34:
        result = @"MTLPixelFormatRG8Sint";
        break;
      case 40:
        result = @"MTLPixelFormatB5G6R5Unorm";
        break;
      case 41:
        result = @"MTLPixelFormatA1BGR5Unorm";
        break;
      case 42:
        result = @"MTLPixelFormatABGR4Unorm";
        break;
      case 43:
        result = @"MTLPixelFormatBGR5A1Unorm";
        break;
      case 53:
        result = @"MTLPixelFormatR32Uint";
        break;
      case 54:
        result = @"MTLPixelFormatR32Sint";
        break;
      case 55:
        result = @"MTLPixelFormatR32Float";
        break;
      case 60:
        result = @"MTLPixelFormatRG16Unorm";
        break;
      case 62:
        result = @"MTLPixelFormatRG16Snorm";
        break;
      case 63:
        result = @"MTLPixelFormatRG16Uint";
        break;
      case 64:
        result = @"MTLPixelFormatRG16Sint";
        break;
      case 65:
        result = @"MTLPixelFormatRG16Float";
        break;
      case 70:
        result = @"MTLPixelFormatRGBA8Unorm";
        break;
      case 71:
        result = @"MTLPixelFormatRGBA8Unorm_sRGB";
        break;
      case 72:
        result = @"MTLPixelFormatRGBA8Snorm";
        break;
      case 73:
        result = @"MTLPixelFormatRGBA8Uint";
        break;
      case 74:
        result = @"MTLPixelFormatRGBA8Sint";
        break;
      case 80:
        result = @"MTLPixelFormatBGRA8Unorm";
        break;
      case 81:
        result = @"MTLPixelFormatBGRA8Unorm_sRGB";
        break;
      case 90:
        result = @"MTLPixelFormatRGB10A2Unorm";
        break;
      case 91:
        result = @"MTLPixelFormatRGB10A2Uint";
        break;
      case 92:
        result = @"MTLPixelFormatRG11B10Float";
        break;
      case 93:
        result = @"MTLPixelFormatRGB9E5Float";
        break;
      case 94:
        result = @"MTLPixelFormatBGR10A2Unorm";
        break;
      case 103:
        result = @"MTLPixelFormatRG32Uint";
        break;
      case 104:
        result = @"MTLPixelFormatRG32Sint";
        break;
      case 105:
        result = @"MTLPixelFormatRG32Float";
        break;
      case 110:
        result = @"MTLPixelFormatRGBA16Unorm";
        break;
      case 112:
        result = @"MTLPixelFormatRGBA16Snorm";
        break;
      case 113:
        result = @"MTLPixelFormatRGBA16Uint";
        break;
      case 114:
        result = @"MTLPixelFormatRGBA16Sint";
        break;
      case 115:
        result = @"MTLPixelFormatRGBA16Float";
        break;
      case 123:
        result = @"MTLPixelFormatRGBA32Uint";
        break;
      case 124:
        result = @"MTLPixelFormatRGBA32Sint";
        break;
      case 125:
        result = @"MTLPixelFormatRGBA32Float";
        break;
      case 160:
        result = @"MTLPixelFormatPVRTC_RGB_2BPP";
        break;
      case 161:
        result = @"MTLPixelFormatPVRTC_RGB_2BPP_sRGB";
        break;
      case 162:
        result = @"MTLPixelFormatPVRTC_RGB_4BPP";
        break;
      case 163:
        result = @"MTLPixelFormatPVRTC_RGB_4BPP_sRGB";
        break;
      case 164:
        result = @"MTLPixelFormatPVRTC_RGBA_2BPP";
        break;
      case 165:
        result = @"MTLPixelFormatPVRTC_RGBA_2BPP_sRGB";
        break;
      case 166:
        result = @"MTLPixelFormatPVRTC_RGBA_4BPP";
        break;
      case 167:
        result = @"MTLPixelFormatPVRTC_RGBA_4BPP_sRGB";
        break;
      case 170:
        result = @"MTLPixelFormatEAC_R11Unorm";
        break;
      case 172:
        result = @"MTLPixelFormatEAC_R11Snorm";
        break;
      case 174:
        result = @"MTLPixelFormatEAC_RG11Unorm";
        break;
      case 176:
        result = @"MTLPixelFormatEAC_RG11Snorm";
        break;
      case 178:
        result = @"MTLPixelFormatEAC_RGBA8";
        break;
      case 179:
        result = @"MTLPixelFormatEAC_RGBA8_sRGB";
        break;
      case 180:
        result = @"MTLPixelFormatETC2_RGB8";
        break;
      case 181:
        result = @"MTLPixelFormatETC2_RGB8_sRGB";
        break;
      case 182:
        result = @"MTLPixelFormatETC2_RGB8A1";
        break;
      case 183:
        result = @"MTLPixelFormatETC2_RGB8A1_sRGB";
        break;
      case 186:
        result = @"MTLPixelFormatASTC_4x4_sRGB";
        break;
      case 187:
        result = @"MTLPixelFormatASTC_5x4_sRGB";
        break;
      case 188:
        result = @"MTLPixelFormatASTC_5x5_sRGB";
        break;
      case 189:
        result = @"MTLPixelFormatASTC_6x5_sRGB";
        break;
      case 190:
        result = @"MTLPixelFormatASTC_6x6_sRGB";
        break;
      case 192:
        result = @"MTLPixelFormatASTC_8x5_sRGB";
        break;
      case 193:
        result = @"MTLPixelFormatASTC_8x6_sRGB";
        break;
      case 194:
        result = @"MTLPixelFormatASTC_8x8_sRGB";
        break;
      case 195:
        result = @"MTLPixelFormatASTC_10x5_sRGB";
        break;
      case 196:
        result = @"MTLPixelFormatASTC_10x6_sRGB";
        break;
      case 197:
        result = @"MTLPixelFormatASTC_10x8_sRGB";
        break;
      case 198:
        result = @"MTLPixelFormatASTC_10x10_sRGB";
        break;
      case 199:
        result = @"MTLPixelFormatASTC_12x10_sRGB";
        break;
      case 200:
        result = @"MTLPixelFormatASTC_12x12_sRGB";
        break;
      case 204:
        result = @"MTLPixelFormatASTC_4x4_LDR";
        break;
      case 205:
        result = @"MTLPixelFormatASTC_5x4_LDR";
        break;
      case 206:
        result = @"MTLPixelFormatASTC_5x5_LDR";
        break;
      case 207:
        result = @"MTLPixelFormatASTC_6x5_LDR";
        break;
      case 208:
        result = @"MTLPixelFormatASTC_6x6_LDR";
        break;
      case 210:
        result = @"MTLPixelFormatASTC_8x5_LDR";
        break;
      case 211:
        result = @"MTLPixelFormatASTC_8x6_LDR";
        break;
      case 212:
        result = @"MTLPixelFormatASTC_8x8_LDR";
        break;
      case 213:
        result = @"MTLPixelFormatASTC_10x5_LDR";
        break;
      case 214:
        result = @"MTLPixelFormatASTC_10x6_LDR";
        break;
      case 215:
        result = @"MTLPixelFormatASTC_10x8_LDR";
        break;
      case 216:
        result = @"MTLPixelFormatASTC_10x10_LDR";
        break;
      case 217:
        result = @"MTLPixelFormatASTC_12x10_LDR";
        break;
      case 218:
        result = @"MTLPixelFormatASTC_12x12_LDR";
        break;
      case 222:
        result = @"MTLPixelFormatASTC_4x4_HDR";
        break;
      case 223:
        result = @"MTLPixelFormatASTC_5x4_HDR";
        break;
      case 224:
        result = @"MTLPixelFormatASTC_5x5_HDR";
        break;
      case 225:
        result = @"MTLPixelFormatASTC_6x5_HDR";
        break;
      case 226:
        result = @"MTLPixelFormatASTC_6x6_HDR";
        break;
      case 228:
        result = @"MTLPixelFormatASTC_8x5_HDR";
        break;
      case 229:
        result = @"MTLPixelFormatASTC_8x6_HDR";
        break;
      case 230:
        result = @"MTLPixelFormatASTC_8x8_HDR";
        break;
      case 231:
        result = @"MTLPixelFormatASTC_10x5_HDR";
        break;
      case 232:
        result = @"MTLPixelFormatASTC_10x6_HDR";
        break;
      case 233:
        result = @"MTLPixelFormatASTC_10x8_HDR";
        break;
      case 234:
        result = @"MTLPixelFormatASTC_10x10_HDR";
        break;
      case 235:
        result = @"MTLPixelFormatASTC_12x10_HDR";
        break;
      case 236:
        result = @"MTLPixelFormatASTC_12x12_HDR";
        break;
      case 240:
        result = @"MTLPixelFormatGBGR422";
        break;
      case 241:
        result = @"MTLPixelFormatBGRG422";
        break;
      case 250:
        result = @"MTLPixelFormatDepth16Unorm";
        break;
      case 252:
        result = @"MTLPixelFormatDepth32Float";
        break;
      case 253:
        result = @"MTLPixelFormatStencil8";
        break;
      case 260:
        result = @"MTLPixelFormatDepth32Float_Stencil8";
        break;
      case 261:
        result = @"MTLPixelFormatX32_Stencil8";
        break;
      default:
        return result;
    }
  }

  return result;
}

BOOL _MTLPixeLFormatIsSingleComponent(unint64_t a1)
{
  result = 1;
  if (a1 > 0x37 || ((1 << a1) & 0x80000002002400) == 0)
  {
    return a1 - 252 < 2;
  }

  return result;
}

uint64_t SBUIMetalPixelFormatForCGImage(CGImage *a1, int *a2)
{
  BitmapInfo = CGImageGetBitmapInfo(a1);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  if ((BitmapInfo & 0x1B) == 1)
  {
    v7 = 0;
    v9 = 0;
    v8 = 1;
  }

  else if ((BitmapInfo & 0x1B) == 2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (BitmapInfo & 0x1F) == 7;
  }

  if ((BitmapInfo & 0x3000) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ((BitmapInfo & 0x3000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if ((BitmapInfo & 0x3000) != 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if ((BitmapInfo & 0x3000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v14 = (BitsPerPixel + BitsPerComponent - 1) / BitsPerComponent;
  if ((BitmapInfo & 0x100) != 0)
  {
    if (v14 == 4)
    {
      v18 = 0;
      if (BitsPerComponent == 16)
      {
        v17 = 115;
        goto LABEL_65;
      }

      if (BitsPerComponent == 32)
      {
        v18 = 0;
        v17 = 125;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

LABEL_43:
    v17 = 0;
    v18 = 0;
    goto LABEL_64;
  }

  if (BitsPerComponent == 8)
  {
    switch(v14)
    {
      case 4uLL:
        if ((BitmapInfo & 0x3000) != 0)
        {
          v22 = v9;
        }

        else
        {
          v22 = v8;
        }

        if (v10)
        {
          v17 = 80;
        }

        else
        {
          v17 = 70;
        }

        if (v22)
        {
          v18 = 0;
        }

        else
        {
          if (v12)
          {
            v18 = 2;
          }

          else
          {
            v18 = 0;
          }

          if (v12)
          {
            v17 = 80;
          }

          else
          {
            v17 = 0;
          }

          if (v11)
          {
            v18 = 1;
            v17 = 70;
          }

          else if (v12 != 1)
          {
            goto LABEL_64;
          }
        }

        goto LABEL_65;
      case 2uLL:
        v18 = 8;
        v17 = 30;
        goto LABEL_65;
      case 1uLL:
        if (v7)
        {
          v18 = 0;
        }

        else
        {
          v18 = 4;
        }

        if (v7)
        {
          v17 = 1;
        }

        else
        {
          v17 = 10;
        }

        goto LABEL_65;
    }

    goto LABEL_43;
  }

  if (BitsPerComponent == 5)
  {
    v15 = v14 != 4;
    if (v14 == 4)
    {
      v16 = v10;
    }

    else
    {
      v16 = 1;
    }

    if (v14 == 4)
    {
      v17 = 43;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0;
    if ((v16 & 1) == 0)
    {
      if (v12)
      {
        v17 = 41;
        goto LABEL_65;
      }

LABEL_63:
      v17 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    v19 = BitsPerComponent == 16 && v14 == 4;
    v15 = !v19;
    if (v19)
    {
      v20 = v13;
    }

    else
    {
      v20 = 1;
    }

    if (v19)
    {
      v17 = 110;
    }

    else
    {
      v17 = 0;
    }

    if (((v11 | v20) & 1) == 0)
    {
      v18 = 0;
      if (v12)
      {
        v17 = 110;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    v18 = v20 ^ 1;
  }

  if (v15)
  {
LABEL_64:
    NSLog(&cfstr_NoMatchingMtlp.isa, a1);
  }

LABEL_65:
  if (a2)
  {
    *a2 = v18;
  }

  return v17;
}

void sub_1A9AE8FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  objc_destroyWeak((v47 + 104));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v48 - 248), 8);
  _Block_object_dispose((v48 - 200), 8);
  _Block_object_dispose((v48 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1A9AEC438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A9AEC7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A9AEC9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A9AECBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t SBUIProudLockContainerViewControllerConfigurationDefault@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 1;
  *(a1 + 8) = 0x3FF3333333333333;
  *(a1 + 16) = 1;
  *(a1 + 24) = vdupq_n_s64(0x3FE999999999999AuLL);
  *(a1 + 40) = xmmword_1A9B2AF40;
  *(a1 + 56) = 0x4008000000000000;
  *(a1 + 64) = 0;
  result = SBSIsSystemApertureAvailable();
  *(a1 + 64) = result ^ 1;
  *(a1 + 65) = 0;
  *(a1 + 72) = 0;
  return result;
}

uint64_t SBSUIWallpaperSetImageAsWallpaperForLocations(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69D4028];
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  v8 = a1;
  v9 = [v3 optionsWithName:0 parallaxFactor:1 zoomScale:1 supportsCropping:0 cropRect:1.0 portrait:1.0 hasVideo:v4 stillTimeInVideo:{v5, v6, v7, 0.0}];
  v10 = _SBSUIWallpaperSetImageWithoutCheckingMC(v8, v9, a2);

  return v10;
}

uint64_t _SBSUIWallpaperSetImageWithoutCheckingMC(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 name];
  if ([v7 length])
  {
    v8 = [v6 name];
    v9 = [v8 intValue];

    if (v9 <= 49)
    {
      v10 = SBLogWallpaper();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        _SBSUIWallpaperSetImageWithoutCheckingMC_cold_1(v6);
      }

      v11 = SBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_INFO, "You're trying to set a wallpaper with a name that doesn't start with a >50 number. This is wrong because we expect a number to be able to gather diagnostics.", v14, 2u);
      }

      __assert_rtn("_SBSUIWallpaperSetImageWithoutCheckingMC", "SBSUIWallpaperUtilities.m", 310, "0");
    }
  }

  else
  {
  }

  if (SBSUIWallpaperSetImageSurface(v5, v6, a3))
  {
    v12 = 1;
  }

  else
  {
    v12 = SBSUIWallpaperSetImageArchive(v5, v6);
  }

  return v12;
}

uint64_t SBSUIWallpaperSetImageArchive(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setWallpaperStatus:1];
  v5 = SBSUIWallpaperSetImageArchiveWithWallpaperMode(v4, v3);

  return v5;
}

uint64_t SBSUIWallpaperSetImageArchiveWithWallpaperMode(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 bs_secureEncoded];
  v5 = v4;
  if (v4)
  {
    [v4 bytes];
    [v5 length];
    [v3 cropRect];
    bzero(v10, 0x400uLL);
    v6 = [v3 name];
    [v6 getCString:v10 maxLength:1024 encoding:4];

    v7 = [v3 wallpaperKitData];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:0];
    }

    else
    {
      v8 = 0;
    }

    SBSSpringBoardServerPort();
    [v3 parallaxFactor];
    [v3 zoomScale];
    [v3 supportsCropping];
    [v3 isPortrait];
    [v3 hasVideo];
    [v3 stillTimeInVideo];
    [v3 wallpaperMode];
    [v3 wallpaperStatus];
    [v8 bytes];
    [v8 length];
    SBSetWallpaperImageForLocations();
  }

  return 0;
}

uint64_t SBSUIWallpaperSetImagesArchive(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 count] >= 2)
  {
    v5 = PBUIStringForWallpaperMode();
    v6 = PBUIStringForWallpaperMode();
    v7 = [v3 objectForKeyedSubscript:v5];
    v8 = [v4 objectForKeyedSubscript:v5];
    [v8 setWallpaperStatus:2];
    v9 = SBSUIWallpaperSetImageArchiveWithWallpaperMode(v7, v8);
    v10 = [v3 objectForKeyedSubscript:v6];
    v24 = v6;
    v11 = [v4 objectForKeyedSubscript:v6];
    [v11 setWallpaperStatus:3];
    v23 = v10;
    v12 = [v10 bs_secureEncoded];
    v13 = v12;
    if (v12)
    {
      v21 = v7;
      v22 = v5;
      [v12 bytes];
      [v13 length];
      [v11 cropRect];
      bzero(v25, 0x400uLL);
      v14 = [v11 name];
      [v14 getCString:v25 maxLength:1024 encoding:4];

      v15 = [v11 wallpaperKitData];
      if (v15)
      {
        v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v15 format:200 options:0 error:0];
      }

      else
      {
        v16 = 0;
      }

      SBSSpringBoardServerPort();
      [v11 parallaxFactor];
      [v11 zoomScale];
      [v11 supportsCropping];
      [v11 isPortrait];
      [v11 hasVideo];
      [v11 stillTimeInVideo];
      [v11 wallpaperMode];
      [v11 wallpaperStatus];
      [v16 bytes];
      [v16 length];
      SBSetWallpaperImageForLocations();

      v9 = v9;
      v7 = v21;
      v5 = v22;
    }

    goto LABEL_11;
  }

  if ([v3 count] == 1)
  {
    v17 = [v3 allKeys];
    v7 = [v17 firstObject];

    v18 = [v3 objectForKeyedSubscript:v7];
    v19 = [v4 objectForKeyedSubscript:v7];
    [v19 setWallpaperMode:0];
    [v19 setWallpaperStatus:1];
    v9 = SBSUIWallpaperSetImageArchive(v18, v19);

LABEL_11:
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

BOOL SBSUIWallpaperSetImageSurface(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  [v5 setWallpaperStatus:1];
  v7 = SBSUIWallpaperSetImageSurfaceWithWallpaperMode(v6, v5, a3, 0);

  return v7;
}

BOOL SBSUIWallpaperSetImageSurfaceWithWallpaperMode(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = SBLogWallpaper();
  if (os_signpost_enabled(v8))
  {
    *buf = 138543618;
    v78 = v7;
    v79 = 2048;
    v80 = a4;
    _os_signpost_emit_with_name_impl(&dword_1A9A79000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_SET_IMAGE_SURFACE", "Options: %{public}@, Mode: %ld", buf, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    v9 = SBFCreateIOSurfaceForImage();
    v10 = v9;
    if (v9)
    {
      XPCObject = IOSurfaceCreateXPCObject(v9);
      v11 = MEMORY[0x1E69DCAB8];
      v12 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v12 scale];
      v13 = [v11 sbf_imageWithIOSurface:v10 scale:0 orientation:?];

      v14 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v19 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v19 scale];
      v21 = v20;
      v22 = PBUICurrentParallaxDeviceType();
      [v13 scale];
      [v7 bestWallpaperSizeForWallpaperSize:v22 wallpaperScale:v16 deviceType:v18 imageScale:{v21, v23}];

      [v7 cropRect];
      v71 = v13;
      v24 = [v13 sbf_cropImageWithRect:? outputSize:?];
      v25 = SBFCreateIOSurfaceForImage();
      v26 = v25;
      if (v25)
      {
        v69 = IOSurfaceCreateXPCObject(v25);
        v27 = [v24 pbui_CGImageBackedImage];
        v28 = [MEMORY[0x1E69DCAB8] pbui_thumbnailImageForImage:v27];
        v29 = [v28 pbui_CGImageBackedImage];

        v65 = v29;
        if (v29)
        {
          v64 = UIImageJPEGRepresentation(v29, 0.8);
        }

        else
        {
          v64 = 0;
        }

        v74 = v6;
        v67 = v27;
        v63 = [v27 sbf_imageHashData];
        v56 = SBLogWallpaper();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v78 = v7;
          _os_log_impl(&dword_1A9A79000, v56, OS_LOG_TYPE_DEFAULT, "SETTING WALLPAPER: %{public}@", buf, 0xCu);
        }

        v57 = PBUIStringForWallpaperLocations();
        v58 = PBUIStringForWallpaperMode();
        v34 = XPCObject;
        v33 = [SBSUIWallpaperService setWallpaperImage:XPCObject adjustedImage:v69 thumbnailData:v64 imageHashData:v63 wallpaperOptions:v7 forLocations:v57 currentWallpaperMode:v58];

        v6 = v74;
      }

      else
      {
        v33 = 0;
        v34 = XPCObject;
      }
    }

    else
    {
      v33 = 0;
    }

    v59 = SBLogWallpaper();
    if (os_signpost_enabled(v59))
    {
      *buf = 138543618;
      v78 = v7;
      v79 = 2048;
      v80 = a4;
      _os_signpost_emit_with_name_impl(&dword_1A9A79000, v59, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_SET_IMAGE_SURFACE", "Options: %{public}@, Mode: %ld", buf, 0x16u);
    }
  }

  else
  {
    v30 = SBFCreateIOSurfaceForImage();
    if (v30)
    {
      [v7 cropRect];
      bzero(buf, 0x400uLL);
      v31 = [v7 name];
      [v31 getCString:buf maxLength:1024 encoding:4];

      v32 = [v7 wallpaperKitData];
      v70 = v32;
      if (v32)
      {
        v76 = [MEMORY[0x1E696AE40] dataWithPropertyList:v32 format:200 options:0 error:0];
      }

      else
      {
        v76 = 0;
      }

      IOSurfaceCreateMachPort(v30);
      v35 = MEMORY[0x1E69DCAB8];
      [MEMORY[0x1E69DCEB0] mainScreen];
      v37 = v36 = v30;
      [v37 scale];
      v72 = v36;
      v38 = [v35 sbf_imageWithIOSurface:v36 scale:0 orientation:?];

      v39 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v39 bounds];
      v41 = v40;
      v43 = v42;
      v44 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v44 scale];
      v46 = v45;
      v47 = PBUICurrentParallaxDeviceType();
      [v38 scale];
      [v7 bestWallpaperSizeForWallpaperSize:v47 wallpaperScale:v41 deviceType:v43 imageScale:{v46, v48}];

      [v7 cropRect];
      v68 = v38;
      v49 = [v38 sbf_cropImageWithRect:? outputSize:?];
      v50 = SBFCreateIOSurfaceForImage();
      v51 = v50;
      if (v50)
      {
        v73 = v6;
        IOSurfaceCreateMachPort(v50);
        v66 = v49;
        v52 = [v49 pbui_CGImageBackedImage];
        v53 = [MEMORY[0x1E69DCAB8] pbui_thumbnailImageForImage:v52];
        v54 = [v53 pbui_CGImageBackedImage];

        if (v54)
        {
          v55 = UIImageJPEGRepresentation(v54, 0.8);
        }

        else
        {
          v55 = 0;
        }

        [v55 bytes];
        [v55 length];
        v60 = [v52 sbf_imageHashData];
        [v60 bytes];
        [v60 length];
        SBSSpringBoardServerPort();
        [v7 parallaxFactor];
        [v7 zoomScale];
        [v7 supportsCropping];
        [v7 isPortrait];
        [v7 hasVideo];
        [v7 stillTimeInVideo];
        [v7 wallpaperMode];
        [v7 wallpaperStatus];
        [v76 bytes];
        [v76 length];
        SBSetWallpaperImageSurfaceForLocations();
        BSMachSendRightRelease();

        v6 = v73;
        v49 = v66;
      }

      BSMachSendRightRelease();

      v30 = v72;
    }

    v61 = SBLogWallpaper();
    if (os_signpost_enabled(v61))
    {
      *buf = 138543618;
      v78 = v7;
      v79 = 2048;
      v80 = a4;
      _os_signpost_emit_with_name_impl(&dword_1A9A79000, v61, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_SET_IMAGE_SURFACE", "Options: %{public}@, Mode: %ld", buf, 0x16u);
    }

    v33 = 0;
  }

  return v33;
}

BOOL SBSUIWallpaperSetImagesSurface(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if ([v7 count] < 2)
  {
    if ([v7 count] != 1)
    {
      v12 = 0;
      goto LABEL_7;
    }

    [v7 allKeys];
    v18 = v17 = v8;
    v16 = [v18 firstObject];

    v8 = v17;
    v11 = [v7 objectForKeyedSubscript:v16];
    v13 = [v17 objectForKeyedSubscript:v16];
    [v13 setWallpaperMode:0];
    [v13 setWallpaperStatus:1];
    v12 = SBSUIWallpaperSetImageSurface(v11, v13, a3);
  }

  else
  {
    v9 = PBUIStringForWallpaperMode();
    v10 = PBUIStringForWallpaperMode();
    v20 = [v7 objectForKeyedSubscript:v9];
    v11 = [v8 objectForKeyedSubscript:v9];
    [v11 setWallpaperStatus:2];
    v12 = SBSUIWallpaperSetImageSurfaceWithWallpaperMode(v20, v11, a3, a4);
    v13 = [v7 objectForKeyedSubscript:v10];
    [v8 objectForKeyedSubscript:v10];
    v15 = v14 = v8;
    [v15 setWallpaperStatus:3];
    SBSUIWallpaperSetImageSurfaceWithWallpaperMode(v13, v15, a3, a4);

    v8 = v14;
    v16 = v20;
  }

LABEL_7:
  return v12;
}

uint64_t _SBSUIWallpaperSetImagesWithoutCheckingMC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = a2;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = [v14 name];

        if ([v15 length] && objc_msgSend(v15, "intValue") <= 49)
        {
          v18 = SBLogWallpaper();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            _SBSUIWallpaperSetImagesWithoutCheckingMC_cold_1(v15, v13, v18);
          }

          v19 = SBLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *v20 = 0;
            _os_log_impl(&dword_1A9A79000, v19, OS_LOG_TYPE_INFO, "You're trying to set a wallpaper with a name that doesn't start with a >50 number. This is wrong because we expect a number to be able to gather diagnostics.", v20, 2u);
          }

          __assert_rtn("_SBSUIWallpaperSetImagesWithoutCheckingMC", "SBSUIWallpaperUtilities.m", 329, "0");
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if (SBSUIWallpaperSetImagesSurface(v7, v8, a3, a4))
  {
    v16 = 1;
  }

  else
  {
    v16 = SBSUIWallpaperSetImagesArchive(v7, v8);
  }

  return v16;
}

uint64_t SBSUIWallpaperSetImage(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v8 = [v7 isWallpaperModificationAllowed];

  if (v8)
  {
    v9 = _SBSUIWallpaperSetImageWithoutCheckingMC(v5, v6, a3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t SBSUIWallpaperSetImages(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v10 = [v9 isWallpaperModificationAllowed];

  if (v10)
  {
    v11 = _SBSUIWallpaperSetImagesWithoutCheckingMC(v7, v8, a3, a4);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t SBSUIWallpaperSetImagesAndVideos(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v11;
  v14 = os_transaction_create();
  if (a5 == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = PBUIStringForWallpaperMode();
  v17 = PBUIStringForWallpaperMode();
  v18 = [v13 objectForKeyedSubscript:v16];
  [v18 setWallpaperStatus:2];
  v74 = [v13 objectForKeyedSubscript:v17];
  [v74 setWallpaperStatus:3];
  v19 = [v10 count];
  v73 = v17;
  if ((v12 & 1) == 0 || v19 < 2)
  {
    v46 = [v10 count];
    if ((v12 & 1) != 0 && v46 == 1)
    {
      v72 = v12;
      SBSUIWallpaperClearVideo();
      v47 = [v9 objectForKeyedSubscript:v16];
      if (!v47)
      {
        v66 = 0;
        goto LABEL_23;
      }

      v48 = v47;
      [v18 cropRect];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      [v48 size];
      v58 = 1.0 / v57;
      [v48 size];
      CGAffineTransformMakeScale(&v75, v58, 1.0 / v59);
      v78.origin.x = v50;
      v78.origin.y = v52;
      v78.size.width = v54;
      v78.size.height = v56;
      v79 = CGRectApplyAffineTransform(v78, &v75);
      x = v79.origin.x;
      y = v79.origin.y;
      width = v79.size.width;
      height = v79.size.height;
      v64 = [v10 objectForKeyedSubscript:v16];
      v65 = SBSUIWallpaperSetVideoWithWallpaperMode(v64, [v18 supportsCropping], 0, x, y, width, height);

      v12 = v72;
      if ((v65 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if ((v12 & 1) == 0)
    {
LABEL_20:
      v66 = SBSUIWallpaperSetImages(v9, v13, v12, a5);
      v20 = v14;
      v14 = 0;
      goto LABEL_21;
    }

LABEL_18:
    if (![v10 count])
    {
      SBSUIWallpaperClearVideo();
    }

    goto LABEL_20;
  }

  v70 = v14;
  v71 = v12;
  v20 = [v9 objectForKeyedSubscript:v16];
  v21 = [v9 objectForKeyedSubscript:v17];
  v22 = v21;
  if (!v20 || !v21 || ([v18 cropRect], v24 = v23, v26 = v25, v28 = v27, v30 = v29, objc_msgSend(v20, "size"), v32 = 1.0 / v31, objc_msgSend(v20, "size"), CGAffineTransformMakeScale(&v75, v32, 1.0 / v33), v76.origin.x = v24, v76.origin.y = v26, v76.size.width = v28, v76.size.height = v30, v77 = CGRectApplyAffineTransform(v76, &v75), v34 = v77.origin.x, v35 = v77.origin.y, v36 = v77.size.width, v37 = v77.size.height, objc_msgSend(v10, "objectForKeyedSubscript:", v16), v69 = v9, v38 = objc_claimAutoreleasedReturnValue(), v39 = SBSUIWallpaperSetVideoWithWallpaperMode(v38, objc_msgSend(v18, "supportsCropping"), a5, v34, v35, v36, v37), v38, v9 = v69, !v39))
  {

    v66 = 0;
    v14 = v70;
LABEL_21:

    goto LABEL_22;
  }

  v40 = [v10 objectForKeyedSubscript:v73];
  v68 = [v74 supportsCropping];
  [v74 cropRect];
  v9 = v69;
  v45 = SBSUIWallpaperSetVideoWithWallpaperMode(v40, v68, v15, v41, v42, v43, v44);

  v14 = v70;
  v12 = v71;
  if (v45)
  {
    goto LABEL_18;
  }

LABEL_15:
  v66 = 0;
LABEL_22:
  v17 = v73;
LABEL_23:

  return v66;
}

uint64_t SBSUIWallpaperSetVideoWithWallpaperMode(void *a1, int a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a1;
  v14 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v15 = [v14 isWallpaperModificationAllowed];

  if (v15)
  {
    if (_os_feature_enabled_impl())
    {
      if (a2)
      {
        v28.origin.x = a4;
        v28.origin.y = a5;
        v28.size.width = a6;
        v28.size.height = a7;
        v16 = NSStringFromCGRect(v28);
      }

      else
      {
        v16 = 0;
      }

      v22 = [v13 URL];
      [v22 fileSystemRepresentation];
      v23 = sandbox_extension_issue_file();

      v20 = [MEMORY[0x1E695DEF0] dataWithBytes:v23 length:strlen(v23)];
      free(v23);
      v21 = [v13 URL];
      v24 = PBUIStringForWallpaperMode();
      v17 = [SBSUIWallpaperService setWallpaperWithVideo:v21 sandboxToken:v20 cropRect:v16 wallpaperMode:v24];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E69D4318]);
      v18 = [v13 URL];
      v19 = [v18 path];
      if ((a2 & 1) == 0)
      {
        a4 = *MEMORY[0x1E695F050];
        a5 = *(MEMORY[0x1E695F050] + 8);
        a6 = *(MEMORY[0x1E695F050] + 16);
        a7 = *(MEMORY[0x1E695F050] + 24);
      }

      v17 = [v16 setWallpaperWithVideoWithWallpaperMode:v19 cropRect:a3 wallpaperMode:{a4, a5, a6, a7}];

      [v16 invalidate];
      if (v17)
      {
        goto LABEL_13;
      }

      SBSUIWallpaperSetVideoWithWallpaperMode_cold_1(&v26, &v27);
      v20 = v26;
      v21 = v27;
    }

LABEL_13:
    goto LABEL_14;
  }

  v17 = 0;
LABEL_14:

  return v17;
}

uint64_t SBSUIWallpaperClearVideo()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v1 = [v0 isWallpaperModificationAllowed];

  if (v1)
  {
    if (_os_feature_enabled_impl())
    {
      +[SBSUIWallpaperService removeWallpaperVideo];
    }

    else
    {
      v4 = 0;
      v2 = SBSSpringBoardServerPort();
      MEMORY[0x1AC58DF00](v2, &v4);
      if (!v4)
      {
        SBSUIWallpaperClearVideo_cold_1();
      }
    }
  }

  return v1;
}

uint64_t SBSUIWallpaperSetColorName(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v5 = [v4 isWallpaperModificationAllowed];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D4318]);
    v7 = [v6 setWallpaperColorName:v3 forVariants:a2];
    [v6 invalidate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t SBSUIWallpaperSetColor(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v5 = [v4 isWallpaperModificationAllowed];

  if (v5)
  {
    v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
    v7 = [v3 resolvedColorWithTraitCollection:v6];

    v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v9 = [v3 resolvedColorWithTraitCollection:v8];

    if ([v7 isEqual:v9])
    {

      v9 = 0;
    }

    if (_os_feature_enabled_impl())
    {
      v10 = PBUIStringForWallpaperLocations();
      v11 = [SBSUIWallpaperService setWallpaperColor:v7 darkColor:v9 forLocations:v10];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E69D4318]);
      v11 = [v10 setWallpaperColor:v7 darkColor:v9 forVariants:a2];
      [v10 invalidate];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t SBSUIWallpaperSetGradient(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v5 = [v4 isWallpaperModificationAllowed];

  if (v5)
  {
    if (_os_feature_enabled_impl())
    {
      v6 = PBUIStringForWallpaperLocations();
      v7 = [SBSUIWallpaperService setWallpaperGradient:v3 forLocations:v6];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E69D4318]);
      v7 = [v6 setWallpaperGradient:v3 forVariants:a2];
      [v6 invalidate];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t SBSUIWallpaperRestoreDefault()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v1 = [v0 isWallpaperModificationAllowed];

  if (v1)
  {
    if (_os_feature_enabled_impl())
    {
      +[SBSUIWallpaperService restoreDefaultWallpaper];
    }

    else
    {
      v2 = objc_alloc_init(MEMORY[0x1E69D4318]);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __SBSUIWallpaperRestoreDefault_block_invoke;
      v5[3] = &unk_1E789DA38;
      v6 = v2;
      v3 = v2;
      [v3 restoreDefaultWallpaperWithCompletion:v5];
    }
  }

  return v1;
}

uint64_t SBSUITriggerPosterSignificantEvent()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4318]);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __SBSUITriggerPosterSignificantEvent_block_invoke;
  v3[3] = &unk_1E789DA38;
  v4 = v0;
  v1 = v0;
  [v1 triggerPosterSignificantEventWithCompletion:v3];

  return 1;
}

id SBSUIWallpaperGetPreviewWithImageUsingData(unsigned __int8 a1, uint64_t a2, void *a3, double a4)
{
  v17 = 0;
  v16 = 0;
  v7 = [a3 bs_secureEncoded];
  v8 = [v7 bytes];
  v9 = [v7 length];
  v10 = SBSSpringBoardServerPort();
  v11 = MEMORY[0x1AC58DFE0](v10, a1, a2, v8, v9, &v17, &v16, a4);
  v12 = 0;
  if (!v11)
  {
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v17 length:v16];
    v12 = [MEMORY[0x1E69DCAB8] bs_secureDecodedFromData:v13];
  }

  v14 = MEMORY[0x1E69E9A60];
  if (v17)
  {
    MEMORY[0x1AC58EBD0](*MEMORY[0x1E69E9A60], v17, v16);
  }

  if (v8)
  {
    MEMORY[0x1AC58EBD0](*v14, v8, v9);
  }

  return v12;
}

id SBSUIWallpaperGetPreviewWithImage(unsigned __int8 a1, uint64_t a2, void *a3, double a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  MEMORY[0x1AC58E390]();
  v21 = 0;
  v8 = SBFCreateIOSurfaceForImage();
  MachPort = IOSurfaceCreateMachPort(v8);
  v20 = 0;
  v10 = SBSSpringBoardServerPort();
  v11 = 0;
  if (!MEMORY[0x1AC58DFF0](v10, a1, a2, MachPort, &v20, a4))
  {
    v12 = objc_alloc(MEMORY[0x1E696CDE8]);
    v13 = [v12 initWithMachPort:v20];
    v14 = MEMORY[0x1E69E9A60];
    if (IOSurfaceSetOwnership())
    {
      v15 = SBLogWallpaper();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v14;
        *buf = 67109120;
        v23 = v16;
        _os_log_impl(&dword_1A9A79000, v15, OS_LOG_TYPE_DEFAULT, "Failed to assign surface ownership to task %d", buf, 8u);
      }
    }

    v17 = MEMORY[0x1E69DCAB8];
    v18 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v18 scale];
    v11 = [v17 sbf_imageWithIOSurface:v13 scale:0 orientation:?];
  }

  BSMachSendRightRelease();
  BSMachSendRightRelease();
  if (v21)
  {
    CGImageBlockSetRelease();
  }

  if (!v11)
  {
    v11 = SBSUIWallpaperGetPreviewWithImageUsingData(a1, a2, v7, a4);
  }

  return v11;
}

id SBSUIWallpaperGetOverlay(unsigned __int8 a1, uint64_t a2, double a3)
{
  v6 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{1.0, 1.0}];
  v7 = [v6 imageWithActions:&__block_literal_global_37];
  v8 = SBSUIWallpaperGetPreviewWithImage(a1, a2, v7, a3);

  return v8;
}

void __SBSUIWallpaperGetOverlay_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC888];
  v3 = a2;
  v4 = [v2 colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.1];
  [v4 setFill];

  v5 = [v3 format];
  [v5 bounds];
  [v3 fillRect:?];
}

id SBSUIWallpaperGetOptions()
{
  if (_os_feature_enabled_impl())
  {
    v0 = PBUIStringForWallpaperVariant();
    v1 = [SBSUIWallpaperService getWallpaperOptionsForVariant:v0];
  }

  else
  {
    v12 = 1.0;
    v13 = 1.0;
    v10 = 0;
    v11 = 0;
    v9 = 1;
    v8 = 1;
    v7 = 0;
    v6 = 0.0;
    v5 = 0;
    v4 = 0;
    SBSSpringBoardServerPort();
    SBGetWallpaperOptions();
    v0 = 0;
    MEMORY[0x1AC58EBD0](*MEMORY[0x1E69E9A60]);
    v1 = [MEMORY[0x1E69D4028] optionsWithName:0 parallaxFactor:v9 != 0 zoomScale:v8 != 0 supportsCropping:v7 != 0 cropRect:0 portrait:v13 hasVideo:v12 stillTimeInVideo:*(&v11 + 1) wallpaperKitData:{*&v11, *(&v10 + 1), *&v10, v6}];
  }

  v2 = v1;

  return v2;
}

id SBSUIWallpaperGetLegibilitySettings(unsigned __int8 a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = PBUIStringForWallpaperVariant();
    v3 = [SBSUIWallpaperService getWallpaperLegibilitySettingsForVariant:v2];
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v4 = SBSSpringBoardServerPort();
    v5 = MEMORY[0x1AC58DFC0](v4, a1, &v13, &v12);
    if (v13)
    {
      if (v5)
      {
        v3 = 0;
      }

      else
      {
        v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v13 length:v12 freeWhenDone:0];
        v7 = MEMORY[0x1E696ACD0];
        v8 = objc_opt_self();
        v11 = 0;
        v3 = [v7 unarchivedObjectOfClass:v8 fromData:v6 error:&v11];

        if (!v3)
        {
          v9 = SBLogCommon();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            SBSUIWallpaperGetLegibilitySettings_cold_1(v9);
          }
        }
      }

      MEMORY[0x1AC58EBD0](*MEMORY[0x1E69E9A60]);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void SBSUIMagicWallpaperSetWithOptions(void *a1, unsigned __int8 a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a1;
  v7 = _os_feature_enabled_impl();
  v8 = *MEMORY[0x1E69B7E18];
  if (v7)
  {
    v9 = [v6 objectForKey:v8];
    v10 = PBUIMagicWallpaperOptionsDictionary();

    v11 = PBUIStringForWallpaperLocations();
    [SBSUIWallpaperService setProceduralWallpaperIdentifier:v9 options:v10 locations:v11];

    v12 = SBLogWallpaper();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1A9A79000, v12, OS_LOG_TYPE_DEFAULT, "SETTING PROCEDURAL WALLPAPER %{public}@: %{public}@", buf, 0x16u);
    }

    return;
  }

  v13 = [v6 objectForKey:v8];
  v14 = PBUIMagicWallpaperOptionsDictionary();

  if (!v13)
  {
    v15 = "com.apple.springboard.unset-procedural-wallpaper";
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v15 = [v13 UTF8String];
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = [MEMORY[0x1E696AE40] dataWithPropertyList:v14 format:200 options:0 error:0];
LABEL_10:
  v16 = SBSSpringBoardServerPort();
  v17 = v18;
  MEMORY[0x1AC58E150](v16, v15, a2, [v18 bytes], objc_msgSend(v18, "length"));
}

BOOL SBSUIWallpaperSetVariant(unsigned __int8 a1)
{
  v4 = 0;
  v2 = SBSSpringBoardServerPort();
  MEMORY[0x1AC58E190](v2, a1, &v4);
  return v4 != 0;
}

BOOL SBSUIWallpaperSetOptionsForLocations(void *a1, unsigned __int8 a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v29 = 0;
  v4 = [v3 name];
  if ([v4 length])
  {
    v5 = [v3 name];
    v6 = [v5 intValue];

    if (v6 <= 49)
    {
      v7 = SBLogWallpaper();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _SBSUIWallpaperSetImageWithoutCheckingMC_cold_1(v3);
      }

      v8 = SBLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_INFO, "You're trying to set a wallpaper with a name that doesn't start with a >50 number. This is wrong because we expect a number to be able to gather diagnostics.", buf, 2u);
      }

      __assert_rtn("SBSUIWallpaperSetOptionsForLocations", "SBSUIWallpaperUtilities.m", 791, "0");
    }
  }

  else
  {
  }

  [v3 cropRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  bzero(buf, 0x400uLL);
  v17 = [v3 name];
  [v17 getCString:buf maxLength:1024 encoding:4];

  v18 = SBSSpringBoardServerPort();
  [v3 parallaxFactor];
  v20 = v19;
  [v3 zoomScale];
  v22 = v21;
  v23 = [v3 supportsCropping];
  v24 = [v3 isPortrait];
  v25 = [v3 hasVideo];
  [v3 stillTimeInVideo];
  *&v10 = v10;
  *&v12 = v12;
  *&v14 = v14;
  *&v16 = v16;
  MEMORY[0x1AC58E180](v18, v23, v24, v25, buf, a2, &v29, v20, v22, *&v10, *&v12, *&v14, *&v16, v26);
  v27 = v29 != 0;

  return v27;
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1A9AF63B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A9AFC404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A9AFC5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBSUIStarkNotificationsSuspensionReasonsDescription(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
    v3 = v2;
    if (v1)
    {
      [(__CFString *)v2 appendString:@" assistant"];
      v1 &= ~1uLL;
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if (!v1)
        {
LABEL_6:
          [(__CFString *)v3 appendString:@""]);
          goto LABEL_8;
        }

LABEL_5:
        [(__CFString *)v3 appendFormat:@" %li", v1];
        goto LABEL_6;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [(__CFString *)v3 appendString:@" other"];
    v1 &= ~2uLL;
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = @"none";
LABEL_8:

  return v3;
}

id SBSUIStarkNotificationsSceneSettingValueDescription(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (a1 > 2998744416)
  {
    if (a1 == 2998744417)
    {
      v10 = [v4 description];
      goto LABEL_14;
    }

    if (a1 != 2998744418)
    {
      goto LABEL_15;
    }
  }

  else if (a1 != 2998744415)
  {
    if (a1 != 2998744416)
    {
      goto LABEL_15;
    }

    v7 = objc_opt_class();
    v8 = v5;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    v12 = [v11 unsignedIntegerValue];
    v10 = SBSUIStarkNotificationsSuspensionReasonsDescription(v12);
    goto LABEL_14;
  }

  v10 = BSSettingFlagDescription();
LABEL_14:
  v6 = v10;
LABEL_15:

  return v6;
}

void sub_1A9AFE5F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

double _CentroidOfTouches(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v18;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v9 = *(*(&v17 + 1) + 8 * i);
      v10 = [v9 window];
      [v9 locationInView:0];
      [v10 _convertPointToSceneReferenceSpace:?];
      v12 = v11;
      v14 = v13;

      v6 = v6 + v12;
      v7 = v7 + v14;
    }

    v4 += v3;
    v3 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v3);
  if (v4)
  {
    v15 = v6 / v4;
  }

  else
  {
LABEL_10:
    v15 = *MEMORY[0x1E695EFF8];
  }

  return v15;
}

uint64_t SBSUIHardwareButtonHintViewsSupported()
{
  if (SBSUIHardwareButtonHintViewsSupported_onceToken != -1)
  {
    SBSUIHardwareButtonHintViewsSupported_cold_1();
  }

  return SBSUIHardwareButtonHintViewsSupported_hintViewsSupported;
}

void __SBSUIHardwareButtonHintViewsSupported_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4220]);
  SBSUIHardwareButtonHintViewsSupported_hintViewsSupported = [v0 getAssociatedHintViewsSupported];
  [v0 invalidate];
}

void SBSUIHardwareButtonGetHintViewsSupportedAsync(void *a1)
{
  v1 = a1;
  v2 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SBSUIHardwareButtonGetHintViewsSupportedAsync_block_invoke;
  block[3] = &unk_1E789DBB8;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

uint64_t __SBSUIHardwareButtonGetHintViewsSupportedAsync_block_invoke(uint64_t a1)
{
  if (SBSUIHardwareButtonHintViewsSupported_onceToken != -1)
  {
    SBSUIHardwareButtonHintViewsSupported_cold_1();
  }

  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id SBSUIRegisterHardwareButtonHintView(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x1E69D4220]);
  v5 = [v3 layer];
  if (v5)
  {
    v6 = CALayerGetContext();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 contextId];
      RenderId = CALayerGetRenderId();
      [v5 size];
      v10 = [v4 registerAssociatedHintViewContextId:v8 layerRenderId:RenderId layerSize:a2 forButtonKind:?];
      [v4 invalidate];
      goto LABEL_10;
    }

    v11 = SBLogHardwareButtonService();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      SBSUIRegisterHardwareButtonHintView_cold_1(v5, v11);
    }
  }

  else
  {
    v7 = SBLogHardwareButtonService();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SBSUIRegisterHardwareButtonHintView_cold_2(v3, v7);
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

void SBSUIRegisterHardwareButtonHintViewAsync(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SBSUIRegisterHardwareButtonHintViewAsync_block_invoke;
  block[3] = &unk_1E789F2B8;
  v12 = v6;
  v13 = a2;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __SBSUIRegisterHardwareButtonHintViewAsync_block_invoke(uint64_t a1)
{
  v2 = SBSUIRegisterHardwareButtonHintView(*(a1 + 32), *(a1 + 48));
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = v2;
    v3 = (*(v3 + 16))();
    v2 = v5;
  }

  return MEMORY[0x1EEE66BB8](v3, v2);
}

void SBSUIRequestHardwareButtonSystemGlowEffectWithInitialStyle(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69D4220]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SBSUIRequestHardwareButtonSystemGlowEffectWithInitialStyle_block_invoke;
  v7[3] = &unk_1E78A0078;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [v6 requestSystemGlowEffectWithInitialStyle:a1 completion:v7];
}

void __SBSUIRequestHardwareButtonSystemGlowEffectWithInitialStyle_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) invalidate];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t SBUISupportsIndicatorSecureRendering()
{
  if (SBUISupportsIndicatorSecureRendering_onceToken != -1)
  {
    SBUISupportsIndicatorSecureRendering_cold_1();
  }

  return SBUISupportsIndicatorSecureRendering_supportsSecureIndicator;
}

uint64_t __SBUISupportsIndicatorSecureRendering_block_invoke()
{
  result = MGGetBoolAnswer();
  SBUISupportsIndicatorSecureRendering_supportsSecureIndicator = result;
  return result;
}

uint64_t SBUIAllowsIndicatorSecureRendering()
{
  if (SBUISupportsIndicatorSecureRendering_onceToken != -1)
  {
    SBUISupportsIndicatorSecureRendering_cold_1();
  }

  if (SBUISupportsIndicatorSecureRendering_supportsSecureIndicator != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

__CFString *SBUISystemApertureLayoutModeDescription(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return @"invalid mode";
  }

  else
  {
    return off_1E78A01B8[a1 + 1];
  }
}

__CFString *SBUISystemApertureContentRoleDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"invalid role";
  }

  else
  {
    return off_1E78A01E8[a1];
  }
}

__CFString *SBUISystemApertureCustomLayoutDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"invalid layout";
  }

  else
  {
    return off_1E78A0200[a1];
  }
}

__CFString *SBUISystemAperturePresentationBehaviorsDescription(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __SBUISystemAperturePresentationBehaviorsDescription_block_invoke;
  v11 = &unk_1E78A0118;
  v12 = &v13;
  v2 = v9;
  if (a1)
  {
    v3 = 0;
    v19 = 0;
    v4 = vcnt_s8(a1);
    v4.i16[0] = vaddlv_u8(v4);
    v5 = v4.i32[0];
    do
    {
      if (((1 << v3) & a1) != 0)
      {
        (v10)(v2);
        if (v19)
        {
          break;
        }

        --v5;
      }

      if (v3 > 0x3E)
      {
        break;
      }

      ++v3;
    }

    while (v5 > 0);
  }

  v6 = v14[5];
  if (!v6)
  {
    v6 = @"default";
  }

  v7 = v6;
  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_1A9B03284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBUISystemAperturePresentationBehaviorsDescription_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 > 127)
  {
    if (a2 > 1023)
    {
      switch(a2)
      {
        case 1024:
          v3 = @"showsExclusivelyOverAssociatedAppOrScene";
          break;
        case 2048:
          v3 = @"isSuppressedOnContinuityDisplay";
          break;
        case 4096:
          v3 = @"requireAssociatedAppBundleIdentifierForSuppression";
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(a2)
      {
        case 128:
          v3 = @"customViewHandlesLongPress";
          break;
        case 256:
          v3 = @"requiresAssociatedApp";
          break;
        case 512:
          v3 = @"dismissesUponHandlingLaunchAction";
          break;
        default:
          return result;
      }
    }
  }

  else if (a2 > 15)
  {
    switch(a2)
    {
      case 16:
        v3 = @"disablesTapToApp";
        break;
      case 32:
        v3 = @"disablesTapToAppWhenCompactOrMinimal";
        break;
      case 64:
        v3 = @"undimsScreenIfNecessary";
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v3 = @"showsOverAssociatedAppBundleIdentifier";
        break;
      case 4:
        v3 = @"showsOverAssociatedScene";
        break;
      case 8:
        v3 = @"showsOnCoversheet";
        break;
      default:
        return result;
    }
  }

  v4 = *(*(*(result + 32) + 8) + 40);
  if (v4)
  {
    return [v4 appendFormat:@" | %@", v3];
  }

  v5 = [MEMORY[0x1E696AD60] stringWithString:v3];
  v6 = *(*(v2 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

void sub_1A9B040E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t SystemStatusLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = SystemStatusLibraryCore_frameworkLibrary;
  v5 = SystemStatusLibraryCore_frameworkLibrary;
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E78A0450;
    v7 = *off_1E78A0460;
    v8 = 0;
    v3[3] = _sl_dlopen();
    SystemStatusLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1A9B0A598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SystemStatusLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SystemStatusLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SystemStatusLibrary()
{
  v1 = 0;
  result = SystemStatusLibraryCore();
  if (!result)
  {
    SystemStatusLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getSTBackgroundActivityIdentifiersDescriptionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_ptr;
  v6 = getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_ptr;
  if (!getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_ptr)
  {
    v1 = SystemStatusLibrary();
    v4[3] = dlsym(v1, "STBackgroundActivityIdentifiersDescription");
    getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A9B0A770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemStatusLibrary();
  result = dlsym(v2, "STBackgroundActivityIdentifiersDescription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_STBackgroundActivityIdentifiersDescription(uint64_t a1)
{
  STBackgroundActivityIdentifiersDescriptionSymbolLoc = getSTBackgroundActivityIdentifiersDescriptionSymbolLoc();
  if (!STBackgroundActivityIdentifiersDescriptionSymbolLoc)
  {
    soft_STBackgroundActivityIdentifiersDescription_cold_1();
  }

  return STBackgroundActivityIdentifiersDescriptionSymbolLoc(a1);
}

uint64_t SystemStatusUILibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = SystemStatusUILibraryCore_frameworkLibrary;
  v5 = SystemStatusUILibraryCore_frameworkLibrary;
  if (!SystemStatusUILibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E78A04A0;
    v7 = *off_1E78A04B0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    SystemStatusUILibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1A9B0A930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SystemStatusUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SystemStatusUILibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SystemStatusUILibrary()
{
  v1 = 0;
  result = SystemStatusUILibraryCore();
  if (!result)
  {
    SystemStatusUILibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_ptr;
  v6 = getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_ptr;
  if (!getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_ptr)
  {
    v1 = SystemStatusUILibrary();
    v4[3] = dlsym(v1, "STUIBackgroundActivityIdentifiersForStyleOverrides");
    getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A9B0AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemStatusUILibrary();
  result = dlsym(v2, "STUIBackgroundActivityIdentifiersForStyleOverrides");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_STUIBackgroundActivityIdentifiersForStyleOverrides(uint64_t a1)
{
  STUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc = getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc();
  if (!STUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc)
  {
    soft_STUIBackgroundActivityIdentifiersForStyleOverrides_cold_1();
  }

  return STUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc(a1);
}

uint64_t getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_ptr;
  v6 = getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_ptr;
  if (!getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_ptr)
  {
    v1 = SystemStatusUILibrary();
    v4[3] = dlsym(v1, "STUIStyleOverridesForBackgroundActivityIdentifiers");
    getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A9B0AC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemStatusUILibrary();
  result = dlsym(v2, "STUIStyleOverridesForBackgroundActivityIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_STUIStyleOverridesForBackgroundActivityIdentifiers(uint64_t a1)
{
  STUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc = getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc();
  if (!STUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc)
  {
    soft_STUIStyleOverridesForBackgroundActivityIdentifiers_cold_1();
  }

  return STUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc(a1);
}

id _SBUISafeBackgroundActivityIdentifiersDescription(void *a1)
{
  v1 = a1;
  if (SystemStatusLibraryCore() && getSTBackgroundActivityIdentifiersDescriptionSymbolLoc())
  {
    v2 = soft_STBackgroundActivityIdentifiersDescription(v1);
  }

  else
  {
    v3 = [v1 allObjects];
    v2 = [v3 componentsJoinedByString:{@", "}];
  }

  return v2;
}

void sub_1A9B0CE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
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
  v0 = os_log_create(*MEMORY[0x1E69D4388], "UIRemoteVC");
  v1 = SBLogUIRemoteVC___logObj;
  SBLogUIRemoteVC___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __SBLogLegibility_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "Legibility");
  v1 = SBLogLegibility___logObj;
  SBLogLegibility___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
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
  v0 = os_log_create(*MEMORY[0x1E69D4388], "ContinuitySessionService");
  v1 = SBLogContinuitySessionService___logObj;
  SBLogContinuitySessionService___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__CFString *DebugStringForSBUIFaceIDCoachingCondition(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return @"Face is too far";
  }

  else
  {
    return *(&off_1E78A0520 + a1);
  }
}

uint64_t SBUIFaceIDCameraOrientationForDevice()
{
  v0 = +[SBUIBiometricResource sharedInstance];
  v1 = [v0 hasPearlSupport];

  if (!v1)
  {
    return 0;
  }

  if (MGGetSInt32Answer())
  {
    return 2;
  }

  return 1;
}

uint64_t SBUIInterfaceOrientationForFaceIDCameraOrientation(uint64_t a1)
{
  v1 = 3;
  if (a1 != 2)
  {
    v1 = 1;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

BOOL SBUIFaceIDCameraOrientationAlignsWithInterfaceOrientation(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - 1) < 2;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return (a2 - 3) < 2;
  }

  else
  {
    return v2;
  }
}

__CFString *SBUIStringFromPresentableButtonEvent(uint64_t a1)
{
  v1 = @"[INVALID]";
  if (a1 == 1)
  {
    v1 = @"homeButtonPress";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"noEvent";
  }
}

id getACUISActivityMetricsRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getACUISActivityMetricsRequestClass_softClass;
  v7 = getACUISActivityMetricsRequestClass_softClass;
  if (!getACUISActivityMetricsRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getACUISActivityMetricsRequestClass_block_invoke;
    v3[3] = &unk_1E789DA88;
    v3[4] = &v4;
    __getACUISActivityMetricsRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9B0E0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getACUISSizeDimensionRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getACUISSizeDimensionRequestClass_softClass;
  v7 = getACUISSizeDimensionRequestClass_softClass;
  if (!getACUISSizeDimensionRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getACUISSizeDimensionRequestClass_block_invoke;
    v3[3] = &unk_1E789DA88;
    v3[4] = &v4;
    __getACUISSizeDimensionRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9B0E334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getACUISEdgeInsetsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getACUISEdgeInsetsClass_softClass;
  v7 = getACUISEdgeInsetsClass_softClass;
  if (!getACUISEdgeInsetsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getACUISEdgeInsetsClass_block_invoke;
    v3[3] = &unk_1E789DA88;
    v3[4] = &v4;
    __getACUISEdgeInsetsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9B0E414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getACUISActivityItemMetricsRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getACUISActivityItemMetricsRequestClass_softClass;
  v7 = getACUISActivityItemMetricsRequestClass_softClass;
  if (!getACUISActivityItemMetricsRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getACUISActivityItemMetricsRequestClass_block_invoke;
    v3[3] = &unk_1E789DA88;
    v3[4] = &v4;
    __getACUISActivityItemMetricsRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9B0E4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9B0EAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9B0ECEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getACUISActivityMetricsRequestClass_block_invoke(uint64_t a1)
{
  ActivityUIServicesLibrary();
  result = objc_getClass("ACUISActivityMetricsRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACUISActivityMetricsRequestClass_block_invoke_cold_1();
  }

  getACUISActivityMetricsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ActivityUIServicesLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ActivityUIServicesLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ActivityUIServicesLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E78A05B8;
    v2 = 0;
    ActivityUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ActivityUIServicesLibraryCore_frameworkLibrary)
  {
    ActivityUIServicesLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ActivityUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ActivityUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getACUISSizeDimensionRequestClass_block_invoke(uint64_t a1)
{
  ActivityUIServicesLibrary();
  result = objc_getClass("ACUISSizeDimensionRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACUISSizeDimensionRequestClass_block_invoke_cold_1();
  }

  getACUISSizeDimensionRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getACUISEdgeInsetsClass_block_invoke(uint64_t a1)
{
  ActivityUIServicesLibrary();
  result = objc_getClass("ACUISEdgeInsets");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACUISEdgeInsetsClass_block_invoke_cold_1();
  }

  getACUISEdgeInsetsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getACUISActivityItemMetricsRequestClass_block_invoke(uint64_t a1)
{
  ActivityUIServicesLibrary();
  result = objc_getClass("ACUISActivityItemMetricsRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACUISActivityItemMetricsRequestClass_block_invoke_cold_1();
  }

  getACUISActivityItemMetricsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getACUISSystemApertureMetricsRequestClass_block_invoke(uint64_t a1)
{
  ActivityUIServicesLibrary();
  result = objc_getClass("ACUISSystemApertureMetricsRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACUISSystemApertureMetricsRequestClass_block_invoke_cold_1();
  }

  getACUISSystemApertureMetricsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNCNotificationStructuredListViewControllerInsetMarginHorizontalSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UserNotificationsUIKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UserNotificationsUIKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E78A05D0;
    v6 = 0;
    UserNotificationsUIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = UserNotificationsUIKitLibraryCore_frameworkLibrary;
  if (!UserNotificationsUIKitLibraryCore_frameworkLibrary)
  {
    __getNCNotificationStructuredListViewControllerInsetMarginHorizontalSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "NCNotificationStructuredListViewControllerInsetMarginHorizontal");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNCNotificationStructuredListViewControllerInsetMarginHorizontalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UserNotificationsUIKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UserNotificationsUIKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A9B13990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOBWelcomeControllerClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBWelcomeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBWelcomeControllerClass_block_invoke_cold_1();
  }

  getOBWelcomeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OnBoardingKitLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __OnBoardingKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E78A0650;
    v2 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    OnBoardingKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __OnBoardingKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getOBBoldTrayButtonClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBBoldTrayButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBBoldTrayButtonClass_block_invoke_cold_1();
  }

  getOBBoldTrayButtonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _enhanceContrastChanged()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  __graphicsQuality = [v0 _graphicsQuality];
}

void SBUICommonInitialize()
{
  if (SBUICommonInitialize_onceToken != -1)
  {
    SBUICommonInitialize_cold_1();
  }
}

void __SBUICommonInitialize_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  __graphicsQuality = [v0 _graphicsQuality];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  v2 = *MEMORY[0x1E69DD920];

  CFNotificationCenterAddObserver(LocalCenter, 0, _enhanceContrastChanged, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t SBUIGraphicsQuality()
{
  result = __graphicsQuality;
  if (__graphicsQuality == -1)
  {
    v3[1] = v0;
    v3[2] = v1;
    SBUIGraphicsQuality_cold_1(v3);
    return v3[0];
  }

  return result;
}

uint64_t SBUIGlassContentInterfaceStyleFromLuminance(double a1)
{
  if (a1 > 0.75)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void __getPKGlyphViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPKGlyphViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUIPasscodeBiometricAuthenticationView.m" lineNumber:22 description:{@"Unable to find class %s", "PKGlyphView"}];

  __break(1u);
}

void __getPKGlyphViewClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PassKitUIFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBUIPasscodeBiometricAuthenticationView.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void SBGetPowerDownViewMetrics_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void SBGetPowerDownViewMetrics(SBUIPowerDownViewMetrics *, BOOL)"}];
  [v1 handleFailureInFunction:v0 file:@"SBUIPowerDownView.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"metrics"}];
}

void _SBUIEffectiveBiometricClassFromString_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_DEBUG, "_LABK: %@ is not wrapped, using original BiometricKit class", &v2, 0xCu);
}

void __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAMUIAmbientPresentationSceneExtensionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUIBannerSourceApplicationSceneSpecification.m" lineNumber:16 description:{@"Unable to find class %s", "AMUIAmbientPresentationSceneExtension"}];

  __break(1u);
}

void __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AmbientUIServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBUIBannerSourceApplicationSceneSpecification.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getLAUIPearlGlyphStaticConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLAUIPearlGlyphStaticConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUIProudLockIconView.m" lineNumber:41 description:{@"Unable to find class %s", "LAUIPearlGlyphStaticConfiguration"}];

  __break(1u);
}

void LocalAuthenticationPrivateUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LocalAuthenticationPrivateUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBUIProudLockIconView.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void __getLAUIPearlGlyphViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLAUIPearlGlyphViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUIProudLockIconView.m" lineNumber:40 description:{@"Unable to find class %s", "LAUIPearlGlyphView"}];

  __break(1u);
}

void __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAMUIAmbientPresentationSceneExtensionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBSUIInCallSceneSpecification.m" lineNumber:21 description:{@"Unable to find class %s", "AMUIAmbientPresentationSceneExtension"}];

  __break(1u);
}

void __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AmbientUIServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBSUIInCallSceneSpecification.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getAMUIAmbientPresentationSettingsExtensionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAMUIAmbientPresentationSettingsExtensionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBSUIInCallWindowScene.m" lineNumber:32 description:{@"Unable to find class %s", "AMUIAmbientPresentationSettingsExtension"}];

  __break(1u);
}

void __getAMUIAmbientPresentationSettingsExtensionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AmbientUIServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBSUIInCallWindowScene.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void SpringBoardHomeLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardHomeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBUIAccessorySceneManager.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void getPBItemMetadataKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPBItemMetadataKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBUISystemDrag.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getPBItemMetadataKeySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PasteboardLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBUISystemDrag.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void _SBUIPhoneUnlockWithRemoteDeviceEnumerateHandlers_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _SBUIPhoneUnlockWithRemoteDeviceEnumerateHandlers(SBUIPhoneUnlockWithRemoteDeviceCoordinator *__unsafe_unretained, void (^__strong)(id<SBUIPhoneUnlockWithRemoteDeviceHandler>  _Nullable __strong, BOOL *))"}];
  [v1 handleFailureInFunction:v0 file:@"SBUIPhoneUnlockWithRemoteDeviceCoordinator.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"self"}];
}

void _SBUIPhoneUnlockWithRemoteDeviceEnumerateHandlers_cold_2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _SBUIPhoneUnlockWithRemoteDeviceEnumerateHandlers(SBUIPhoneUnlockWithRemoteDeviceCoordinator *__unsafe_unretained, void (^__strong)(id<SBUIPhoneUnlockWithRemoteDeviceHandler>  _Nullable __strong, BOOL *))"}];
  [v1 handleFailureInFunction:v0 file:@"SBUIPhoneUnlockWithRemoteDeviceCoordinator.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void __getAPSLaunchUtilClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPSLaunchUtilClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUIContinuitySessionAppLaunchEvent.m" lineNumber:18 description:{@"Unable to find class %s", "APSLaunchUtil"}];

  __break(1u);
}

void __getAPSLaunchUtilClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppPlaceholderSyncLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBUIContinuitySessionAppLaunchEvent.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void _SBSUIWallpaperSetImageWithoutCheckingMC_cold_1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_4(&dword_1A9A79000, v2, v3, "Asserting because wallpaper name is: %{public}@", v4, v5, v6, v7, 2u);
}

void _SBSUIWallpaperSetImagesWithoutCheckingMC_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A9A79000, log, OS_LOG_TYPE_ERROR, "Asserting because wallpaper name is: %{public}@ for key: %{public}@", &v3, 0x16u);
}

uint64_t SBSUIWallpaperSetVideoWithWallpaperMode_cold_1(void *a1, uint64_t *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  *a1 = v4;
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL SBSUIWallpaperSetVideoWithWallpaperMode(AVURLAsset *__strong, BOOL, CGRect, SBFWallpaperMode)"}];
  *a2 = v5;

  return [v4 handleFailureInFunction:v5 file:@"SBSUIWallpaperUtilities.m" lineNumber:449 description:@"The iris wallpaper asset failed to be exported."];
}

void SBSUIWallpaperClearVideo_cold_1()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A9A79000, v0, OS_LOG_TYPE_INFO, "The iris wallpaper asset failed to be exported.", v1, 2u);
  }

  __assert_rtn("SBSUIWallpaperClearVideo", "SBSUIWallpaperUtilities.m", 471, "0");
}

void SBSUIWallpaperGetLegibilitySettings_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_1A9A79000, log, OS_LOG_TYPE_ERROR, "Error unarchive wallpaper legibility settings: %@", &v1, 0xCu);
}

void SBSUIRegisterHardwareButtonHintView_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_ERROR, "hint view layer %@ has no CAContext", &v2, 0xCu);
}

void SBSUIRegisterHardwareButtonHintView_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_ERROR, "no CALayer present for view %{public}@", &v2, 0xCu);
}

void SystemStatusLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SystemStatusLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_SBUISystemStatusSoftLinking.m" lineNumber:12 description:{@"%s", *a1}];

  __break(1u);
}

void soft_STBackgroundActivityIdentifiersDescription_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef soft_STBackgroundActivityIdentifiersDescription(CFSetRef)"];
  [v0 handleFailureInFunction:v1 file:@"_SBUISystemStatusSoftLinking.m" lineNumber:13 description:{@"%s", dlerror()}];

  __break(1u);
}

void SystemStatusUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SystemStatusUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_SBUISystemStatusSoftLinking.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void soft_STUIBackgroundActivityIdentifiersForStyleOverrides_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFSetRef soft_STUIBackgroundActivityIdentifiersForStyleOverrides(uint64_t)"];
  [v0 handleFailureInFunction:v1 file:@"_SBUISystemStatusSoftLinking.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_STUIStyleOverridesForBackgroundActivityIdentifiers_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint64_t soft_STUIStyleOverridesForBackgroundActivityIdentifiers(CFSetRef)"];
  [v0 handleFailureInFunction:v1 file:@"_SBUISystemStatusSoftLinking.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getACUISActivityMetricsRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getACUISActivityMetricsRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUILiveActivityMetrics.m" lineNumber:23 description:{@"Unable to find class %s", "ACUISActivityMetricsRequest"}];

  __break(1u);
}

void ActivityUIServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ActivityUIServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBUILiveActivityMetrics.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getACUISSizeDimensionRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getACUISSizeDimensionRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUILiveActivityMetrics.m" lineNumber:32 description:{@"Unable to find class %s", "ACUISSizeDimensionRequest"}];

  __break(1u);
}

void __getACUISEdgeInsetsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getACUISEdgeInsetsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUILiveActivityMetrics.m" lineNumber:35 description:{@"Unable to find class %s", "ACUISEdgeInsets"}];

  __break(1u);
}

void __getACUISActivityItemMetricsRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getACUISActivityItemMetricsRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUILiveActivityMetrics.m" lineNumber:26 description:{@"Unable to find class %s", "ACUISActivityItemMetricsRequest"}];

  __break(1u);
}

void __getACUISSystemApertureMetricsRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getACUISSystemApertureMetricsRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUILiveActivityMetrics.m" lineNumber:29 description:{@"Unable to find class %s", "ACUISSystemApertureMetricsRequest"}];

  __break(1u);
}

void __getNCNotificationStructuredListViewControllerInsetMarginHorizontalSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UserNotificationsUIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBUILiveActivityMetrics.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getOBWelcomeControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOBWelcomeControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBSUIBuddyMultitaskingFlow.m" lineNumber:22 description:{@"Unable to find class %s", "OBWelcomeController"}];

  __break(1u);
}

void OnBoardingKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *OnBoardingKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBSUIBuddyMultitaskingFlow.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getOBBoldTrayButtonClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOBBoldTrayButtonClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBSUIBuddyMultitaskingFlow.m" lineNumber:23 description:{@"Unable to find class %s", "OBBoldTrayButton"}];

  __break(1u);
}

void SBUIGraphicsQuality_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIDeviceGraphicsQuality SBUIGraphicsQuality(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBUICommon.m" lineNumber:26 description:@"Reading graphics quality static before it has been initialized"];

  *a1 = __graphicsQuality;
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}