@interface PHUIConfiguration
+ (BOOL)canAutoRotateInCallUIForFaceTime;
+ (BOOL)canAutoRotateInCallUIForFaceTimeAudio;
+ (BOOL)preferShorterStrings;
+ (BOOL)shouldUseExplicitLayoutDimensions:(int64_t)a3;
+ (BOOL)shouldUseSOSTightSpacing;
+ (double)ambientAudioRoutesButtonSize;
+ (double)ambientAudioRoutesInset;
+ (double)ambientAudioRoutesSymbolInset;
+ (double)ambientHorizontalPadding;
+ (double)ambientInCallControlSize;
+ (double)ambientVerticalPadding;
+ (double)distanceBetweenEndButtonAndKeyPadLastRow;
+ (double)pipPartialHomeOffset;
+ (double)pipRadius;
+ (double)pipWallInset;
+ (double)pipWidth;
+ (double)yOffsetForDialerLCDView:(int64_t)a3;
+ (double)yOffsetForDialerLCDViewForDxDevices;
+ (double)yOffsetForParticipantsView:(int64_t)a3;
+ (double)yParticipantsViewAdjustmentForKeypad;
+ (unint64_t)ambientHorizontalSizeClass;
+ (unint64_t)ambientVerticalSizeClass;
+ (unint64_t)contentViewSizeForFaceTime;
+ (unint64_t)handsetDialerSize;
+ (unint64_t)handsetDialerSpacing;
+ (unint64_t)inCallBottomBarAssetSize;
+ (unint64_t)inCallBottomBarLowerOffset;
+ (unint64_t)inCallBottomBarMaxTitleSize;
+ (unint64_t)inCallBottomBarSpacing;
+ (unint64_t)inCallControlAlignment;
+ (unint64_t)inCallControlSize;
+ (unint64_t)inCallControlSpacing;
+ (unint64_t)inCallFaceTimeOverlayUISize;
+ (unint64_t)inCallSlideToAnswerSize;
+ (unint64_t)pipStatusBarPadding;
+ (unint64_t)screenSize;
+ (unint64_t)tableViewCellVerticalSpacing;
+ (unint64_t)voicemailLayoutSpacing;
@end

@implementation PHUIConfiguration

+ (BOOL)canAutoRotateInCallUIForFaceTime
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

+ (unint64_t)screenSize
{
  if (screenSize_onceToken != -1)
  {
    +[PHUIConfiguration screenSize];
  }

  return screenSize_screenSize;
}

+ (double)ambientInCallControlSize
{
  v2 = +[PHUIConfiguration screenSize]- 10;
  if (v2 < 6)
  {
    return dbl_25E509F50[v2];
  }

  if (+[PHUIConfiguration inCallBottomBarSpacing]== 6)
  {
    return 104.0;
  }

  v4 = +[PHUIConfiguration inCallBottomBarSpacing];
  result = 90.0;
  if (v4 == 3)
  {
    return 104.0;
  }

  return result;
}

+ (unint64_t)inCallBottomBarMaxTitleSize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PHUIConfiguration_inCallBottomBarMaxTitleSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (inCallBottomBarMaxTitleSize_onceToken != -1)
  {
    dispatch_once(&inCallBottomBarMaxTitleSize_onceToken, block);
  }

  if (inCallBottomBarMaxTitleSize_size)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (unint64_t)inCallBottomBarSpacing
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PHUIConfiguration_inCallBottomBarSpacing__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (inCallBottomBarSpacing_onceToken != -1)
  {
    dispatch_once(&inCallBottomBarSpacing_onceToken, block);
  }

  return inCallBottomBarSpacing_spacing;
}

void __31__PHUIConfiguration_screenSize__block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 5)
  {
    goto LABEL_8;
  }

  if (_os_feature_enabled_impl())
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v3 == 1)
    {
      goto LABEL_8;
    }
  }

  v4 = [MEMORY[0x277CD9E40] mainDisplay];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = v6 >= v8 ? v6 : v8;
  v10 = v9;
  v11 = MGGetProductType();
  if (v10 == 1136)
  {
    goto LABEL_8;
  }

  if (v11 > 2795618602)
  {
    if (v11 <= 3048527335)
    {
      if (v11 > 2941181570)
      {
        if (v11 != 2941181571)
        {
          if (v11 != 3001488778)
          {
            goto LABEL_56;
          }

          goto LABEL_47;
        }

        goto LABEL_38;
      }

      if (v11 != 2795618603)
      {
        v13 = 2940697645;
        goto LABEL_33;
      }
    }

    else
    {
      if (v11 > 3825599859)
      {
        if (v11 != 3825599860)
        {
          if (v11 != 4201643249)
          {
            if (v11 == 3885279870)
            {
              v12 = 9;
              if (v10 == 2436)
              {
                v12 = 10;
              }

              goto LABEL_9;
            }

            goto LABEL_56;
          }

          v16 = v10 == 2778;
          goto LABEL_53;
        }

        goto LABEL_38;
      }

      if (v11 != 3048527336)
      {
        v14 = 3591055299;
LABEL_44:
        if (v11 != v14)
        {
          goto LABEL_56;
        }

        v16 = v10 == 2868;
        goto LABEL_53;
      }
    }

LABEL_46:
    v15 = v10 == 2622;
    goto LABEL_48;
  }

  if (v11 > 1169082143)
  {
    if (v11 > 1872992316)
    {
      if (v11 != 1872992317)
      {
        if (v11 != 2688879999)
        {
          v13 = 2793418701;
          goto LABEL_33;
        }

        goto LABEL_38;
      }

      v16 = v10 == 2736;
LABEL_53:
      v12 = 14;
      if (!v16)
      {
        v12 = 15;
      }

      goto LABEL_9;
    }

    if (v11 != 1169082144)
    {
      if (v11 != 1781728947)
      {
        goto LABEL_56;
      }

      goto LABEL_46;
    }

LABEL_47:
    v15 = v10 == 2532;
LABEL_48:
    v12 = 9;
    if (v15)
    {
      v12 = 12;
    }

    goto LABEL_9;
  }

  if (v11 <= 574536382)
  {
    if (v11 == 133314240)
    {
LABEL_34:
      v15 = v10 == 2556;
      goto LABEL_48;
    }

    v14 = 330877086;
    goto LABEL_44;
  }

  if (v11 == 574536383)
  {
LABEL_38:
    v16 = v10 == 2796;
    goto LABEL_53;
  }

  v13 = 851437781;
LABEL_33:
  if (v11 == v13)
  {
    goto LABEL_34;
  }

LABEL_56:
  if (v10 <= 2271)
  {
    v12 = 2;
    if (v10 > 2000)
    {
      if (v10 > 2078)
      {
        switch(v10)
        {
          case 2079:
            v12 = 9;
            goto LABEL_9;
          case 2208:
            v12 = 6;
            goto LABEL_9;
          case 2224:
            v12 = 3;
            goto LABEL_9;
        }

        return;
      }

      if (v10 != 2001)
      {
        if (v10 == 2048)
        {
          goto LABEL_9;
        }

        return;
      }

LABEL_90:
      v12 = 1;
      goto LABEL_9;
    }

    if (v10 <= 1623)
    {
      if (v10 == 1024)
      {
        goto LABEL_9;
      }

      if (v10 != 1334)
      {
        return;
      }

      goto LABEL_90;
    }

    if (v10 != 1624)
    {
      if (v10 != 1792)
      {
        return;
      }

      goto LABEL_88;
    }

LABEL_82:
    v12 = 4;
    goto LABEL_9;
  }

  if (v10 > 2531)
  {
    if (v10 > 2731)
    {
      if (v10 == 2732 || v10 == 2752)
      {
        v12 = 7;
        goto LABEL_9;
      }

      if (v10 == 2778)
      {
        v12 = 14;
        goto LABEL_9;
      }

      return;
    }

    if (v10 == 2532)
    {
      v12 = 12;
      goto LABEL_9;
    }

    if (v10 != 2688)
    {
      return;
    }

LABEL_88:
    v12 = 5;
    goto LABEL_9;
  }

  if (v10 > 2387)
  {
    if (v10 != 2388)
    {
      if (v10 != 2436)
      {
        return;
      }

      goto LABEL_82;
    }

LABEL_89:
    v12 = 8;
    goto LABEL_9;
  }

  if (v10 == 2272)
  {
LABEL_8:
    v12 = 0;
LABEL_9:
    screenSize_screenSize = v12;
    return;
  }

  if (v10 == 2360)
  {
    goto LABEL_89;
  }
}

+ (unint64_t)inCallControlAlignment
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PHUIConfiguration_inCallControlAlignment__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (inCallControlAlignment_onceToken != -1)
  {
    dispatch_once(&inCallControlAlignment_onceToken, block);
  }

  return inCallControlAlignment_alignment;
}

uint64_t __43__PHUIConfiguration_inCallControlAlignment__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  if ((result - 1) > 0xE)
  {
    v2 = 3;
  }

  else
  {
    v2 = qword_25E509D50[result - 1];
  }

  inCallControlAlignment_alignment = v2;
  return result;
}

+ (unint64_t)inCallControlSpacing
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PHUIConfiguration_inCallControlSpacing__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (inCallControlSpacing_onceToken != -1)
  {
    dispatch_once(&inCallControlSpacing_onceToken, block);
  }

  return inCallControlSpacing_spacing;
}

unint64_t __41__PHUIConfiguration_inCallControlSpacing__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  if (result > 0xE)
  {
    v2 = 1;
  }

  else
  {
    v2 = qword_25E509DC8[result];
  }

  inCallControlSpacing_spacing = v2;
  return result;
}

unint64_t __43__PHUIConfiguration_inCallBottomBarSpacing__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  if (result > 0xF)
  {
    v2 = 1;
  }

  else
  {
    v2 = qword_25E509E40[result];
  }

  inCallBottomBarSpacing_spacing = v2;
  return result;
}

+ (unint64_t)inCallBottomBarLowerOffset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PHUIConfiguration_inCallBottomBarLowerOffset__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (inCallBottomBarLowerOffset_onceToken != -1)
  {
    dispatch_once(&inCallBottomBarLowerOffset_onceToken, block);
  }

  return inCallBottomBarLowerOffset_spacing;
}

uint64_t __47__PHUIConfiguration_inCallBottomBarLowerOffset__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  if ((result - 1) > 7)
  {
    v2 = 1;
  }

  else
  {
    v2 = qword_25E509EC0[result - 1];
  }

  inCallBottomBarLowerOffset_spacing = v2;
  return result;
}

uint64_t __48__PHUIConfiguration_inCallBottomBarMaxTitleSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  inCallBottomBarMaxTitleSize_size = result == 0;
  return result;
}

+ (unint64_t)inCallControlSize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PHUIConfiguration_inCallControlSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (inCallControlSize_onceToken != -1)
  {
    dispatch_once(&inCallControlSize_onceToken, block);
  }

  return inCallControlSize_size;
}

uint64_t __38__PHUIConfiguration_inCallControlSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  if ((result - 5) > 9)
  {
    v2 = 2;
  }

  else
  {
    v2 = qword_25E509F00[result - 5];
  }

  inCallControlSize_size = v2;
  return result;
}

+ (unint64_t)inCallSlideToAnswerSize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PHUIConfiguration_inCallSlideToAnswerSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (inCallSlideToAnswerSize_onceToken != -1)
  {
    dispatch_once(&inCallSlideToAnswerSize_onceToken, block);
  }

  if (inCallSlideToAnswerSize_size)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

unint64_t __44__PHUIConfiguration_inCallSlideToAnswerSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  inCallSlideToAnswerSize_size = (result < 0xF) & (0x5060u >> result);
  return result;
}

+ (unint64_t)inCallBottomBarAssetSize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PHUIConfiguration_inCallBottomBarAssetSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (inCallBottomBarAssetSize_onceToken != -1)
  {
    dispatch_once(&inCallBottomBarAssetSize_onceToken, block);
  }

  if (inCallBottomBarAssetSize_size)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

unint64_t __45__PHUIConfiguration_inCallBottomBarAssetSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  inCallBottomBarAssetSize_size = (result < 0xF) & (0x5060u >> result);
  return result;
}

+ (unint64_t)ambientVerticalSizeClass
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  if (v4 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  return v7 > 375;
}

+ (unint64_t)ambientHorizontalSizeClass
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  if (v4 >= v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 > 667;
}

+ (double)ambientVerticalPadding
{
  v2 = +[PHUIConfiguration ambientVerticalSizeClass];
  result = 37.0;
  if (v2 == 1)
  {
    return 44.0;
  }

  return result;
}

+ (double)ambientHorizontalPadding
{
  v2 = +[PHUIConfiguration ambientHorizontalSizeClass];
  result = 40.0;
  if (v2 == 1)
  {
    return 6.0;
  }

  return result;
}

+ (double)ambientAudioRoutesInset
{
  v2 = +[PHUIConfiguration ambientVerticalSizeClass];
  result = 16.0;
  if (v2 == 1)
  {
    return 26.0;
  }

  return result;
}

+ (double)ambientAudioRoutesButtonSize
{
  v2 = +[PHUIConfiguration ambientVerticalSizeClass];
  result = 40.0;
  if (v2 == 1)
  {
    return 54.0;
  }

  return result;
}

+ (double)ambientAudioRoutesSymbolInset
{
  v2 = +[PHUIConfiguration ambientVerticalSizeClass];
  result = 6.0;
  if (v2 == 1)
  {
    return 3.0;
  }

  return result;
}

+ (unint64_t)handsetDialerSpacing
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PHUIConfiguration_handsetDialerSpacing__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (handsetDialerSpacing_onceToken != -1)
  {
    dispatch_once(&handsetDialerSpacing_onceToken, block);
  }

  return handsetDialerSpacing_spacing;
}

unint64_t __41__PHUIConfiguration_handsetDialerSpacing__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  if (result > 0xE)
  {
    v2 = 1;
  }

  else
  {
    v2 = qword_25E509F80[result];
  }

  handsetDialerSpacing_spacing = v2;
  return result;
}

+ (unint64_t)handsetDialerSize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PHUIConfiguration_handsetDialerSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (handsetDialerSize_onceToken != -1)
  {
    dispatch_once(&handsetDialerSize_onceToken, block);
  }

  return handsetDialerSize_size;
}

uint64_t __38__PHUIConfiguration_handsetDialerSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  if ((result - 1) > 0xE)
  {
    v2 = 2;
  }

  else
  {
    v2 = qword_25E509FF8[result - 1];
  }

  handsetDialerSize_size = v2;
  return result;
}

+ (double)yOffsetForDialerLCDView:(int64_t)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__PHUIConfiguration_yOffsetForDialerLCDView___block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a3;
  if (yOffsetForDialerLCDView__onceToken != -1)
  {
    dispatch_once(&yOffsetForDialerLCDView__onceToken, v4);
  }

  return *&yOffsetForDialerLCDView__yOffset;
}

unint64_t __45__PHUIConfiguration_yOffsetForDialerLCDView___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldUseExplicitLayoutDimensions:*(a1 + 40)])
  {
    result = [*(a1 + 32) yOffsetForDialerLCDViewForDxDevices];
  }

  else
  {
    result = +[PHUIConfiguration screenSize];
    if (result > 7)
    {
      v3 = 0x4061000000000000;
    }

    else
    {
      v3 = qword_25E50A070[result];
    }
  }

  yOffsetForDialerLCDView__yOffset = v3;
  return result;
}

+ (double)yOffsetForDialerLCDViewForDxDevices
{
  v2 = +[PHUIConfiguration screenSize];
  result = 0.0;
  if (v2 - 10 <= 5)
  {
    return dbl_25E50A0B0[v2 - 10];
  }

  return result;
}

+ (double)yOffsetForParticipantsView:(int64_t)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PHUIConfiguration_yOffsetForParticipantsView___block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a3;
  if (yOffsetForParticipantsView__onceToken != -1)
  {
    dispatch_once(&yOffsetForParticipantsView__onceToken, v4);
  }

  return *&yOffsetForParticipantsView__yOffset;
}

double __48__PHUIConfiguration_yOffsetForParticipantsView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) yOffsetForDialerLCDView:*(a1 + 40)];
  v3 = v2;
  [*(a1 + 32) yParticipantsViewAdjustmentForKeypad];
  result = v3 + v4;
  yOffsetForParticipantsView__yOffset = *&result;
  return result;
}

+ (double)yParticipantsViewAdjustmentForKeypad
{
  if (yParticipantsViewAdjustmentForKeypad_onceToken != -1)
  {
    +[PHUIConfiguration yParticipantsViewAdjustmentForKeypad];
  }

  return *&yParticipantsViewAdjustmentForKeypad_yOffset;
}

unint64_t __57__PHUIConfiguration_yParticipantsViewAdjustmentForKeypad__block_invoke()
{
  result = +[PHUIConfiguration screenSize];
  if (!result)
  {
    yParticipantsViewAdjustmentForKeypad_yOffset = 0x4046800000000000;
  }

  return result;
}

+ (BOOL)canAutoRotateInCallUIForFaceTimeAudio
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

+ (unint64_t)contentViewSizeForFaceTime
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PHUIConfiguration_contentViewSizeForFaceTime__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (contentViewSizeForFaceTime_onceToken != -1)
  {
    dispatch_once(&contentViewSizeForFaceTime_onceToken, block);
  }

  return contentViewSizeForFaceTime_size;
}

uint64_t __47__PHUIConfiguration_contentViewSizeForFaceTime__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  v2 = 1;
  if (result == 7)
  {
    v2 = 2;
  }

  if (result == 6)
  {
    v2 = 0;
  }

  contentViewSizeForFaceTime_size = v2;
  return result;
}

+ (double)pipWidth
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__PHUIConfiguration_pipWidth__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (pipWidth_onceToken != -1)
  {
    dispatch_once(&pipWidth_onceToken, block);
  }

  return *&pipWidth_width;
}

unint64_t __29__PHUIConfiguration_pipWidth__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  if (result > 8)
  {
    v2 = 0x4055900000000000;
  }

  else
  {
    v2 = qword_25E50A0E0[result];
  }

  pipWidth_width = v2;
  return result;
}

+ (double)pipWallInset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PHUIConfiguration_pipWallInset__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (pipWallInset_onceToken != -1)
  {
    dispatch_once(&pipWallInset_onceToken, block);
  }

  return *&pipWallInset_inset;
}

uint64_t __33__PHUIConfiguration_pipWallInset__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  v2 = 13.0;
  if ((result - 4) <= 0xA)
  {
    v2 = dbl_25E50A128[result - 4];
  }

  pipWallInset_inset = *&v2;
  return result;
}

+ (double)pipPartialHomeOffset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PHUIConfiguration_pipPartialHomeOffset__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (pipPartialHomeOffset_onceToken != -1)
  {
    dispatch_once(&pipPartialHomeOffset_onceToken, block);
  }

  return *&pipPartialHomeOffset_offset;
}

uint64_t __41__PHUIConfiguration_pipPartialHomeOffset__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  v2 = result == 9 || result == 4;
  v3 = 0.0;
  if (v2)
  {
    v3 = 2.5;
  }

  pipPartialHomeOffset_offset = *&v3;
  return result;
}

+ (double)pipRadius
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__PHUIConfiguration_pipRadius__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (pipRadius_onceToken != -1)
  {
    dispatch_once(&pipRadius_onceToken, block);
  }

  return *&pipRadius_radius;
}

uint64_t __30__PHUIConfiguration_pipRadius__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  v2 = 4.0;
  if (result == 4)
  {
    v2 = 17.0;
  }

  pipRadius_radius = *&v2;
  return result;
}

+ (unint64_t)pipStatusBarPadding
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PHUIConfiguration_pipStatusBarPadding__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (pipStatusBarPadding_onceToken != -1)
  {
    dispatch_once(&pipStatusBarPadding_onceToken, block);
  }

  return *&pipStatusBarPadding_padding;
}

uint64_t __40__PHUIConfiguration_pipStatusBarPadding__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  v2 = 1.0;
  if ((result - 1) <= 0xE)
  {
    v2 = dbl_25E50A180[result - 1];
  }

  pipStatusBarPadding_padding = *&v2;
  return result;
}

+ (unint64_t)inCallFaceTimeOverlayUISize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PHUIConfiguration_inCallFaceTimeOverlayUISize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (inCallFaceTimeOverlayUISize_onceToken != -1)
  {
    dispatch_once(&inCallFaceTimeOverlayUISize_onceToken, block);
  }

  if (inCallFaceTimeOverlayUISize_size)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

unint64_t __48__PHUIConfiguration_inCallFaceTimeOverlayUISize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  inCallFaceTimeOverlayUISize_size = (result < 9) & (0x18Cu >> result);
  return result;
}

+ (unint64_t)tableViewCellVerticalSpacing
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PHUIConfiguration_tableViewCellVerticalSpacing__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (tableViewCellVerticalSpacing_onceToken != -1)
  {
    dispatch_once(&tableViewCellVerticalSpacing_onceToken, block);
  }

  if (tableViewCellVerticalSpacing_spacing)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t __49__PHUIConfiguration_tableViewCellVerticalSpacing__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  tableViewCellVerticalSpacing_spacing = result == 7;
  return result;
}

+ (unint64_t)voicemailLayoutSpacing
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PHUIConfiguration_voicemailLayoutSpacing__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (voicemailLayoutSpacing_onceToken != -1)
  {
    dispatch_once(&voicemailLayoutSpacing_onceToken, block);
  }

  if (voicemailLayoutSpacing_size)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t __43__PHUIConfiguration_voicemailLayoutSpacing__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  voicemailLayoutSpacing_size = result == 6;
  return result;
}

+ (BOOL)preferShorterStrings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PHUIConfiguration_preferShorterStrings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (preferShorterStrings_onceToken != -1)
  {
    dispatch_once(&preferShorterStrings_onceToken, block);
  }

  return preferShorterStrings_preferShortStrings;
}

uint64_t __41__PHUIConfiguration_preferShorterStrings__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  preferShorterStrings_preferShortStrings = result == 0;
  return result;
}

+ (BOOL)shouldUseExplicitLayoutDimensions:(int64_t)a3
{
  v4 = +[PHUIConfiguration screenSize];
  result = 0;
  if (v4 <= 0xF)
  {
    if (((1 << v4) & 0xFC00) != 0)
    {
      return 1;
    }

    if (((1 << v4) & 0x213) != 0 && a3 == 1)
    {
      return 1;
    }
  }

  return result;
}

+ (BOOL)shouldUseSOSTightSpacing
{
  if (shouldUseSOSTightSpacing_onceToken != -1)
  {
    +[PHUIConfiguration shouldUseSOSTightSpacing];
  }

  return shouldUseSOSTightSpacing_isSEDevice;
}

unint64_t __45__PHUIConfiguration_shouldUseSOSTightSpacing__block_invoke()
{
  result = +[PHUIConfiguration inCallControlSpacing];
  if (result <= 6)
  {
    shouldUseSOSTightSpacing_isSEDevice = (7u >> result) & 1;
  }

  return result;
}

+ (double)distanceBetweenEndButtonAndKeyPadLastRow
{
  if ([a1 screenSize] == 1)
  {
    return 0.02998;
  }

  v3 = objc_opt_class();

  [v3 inCallControlButtonVerticalSpacingRatio];
  return result;
}

@end