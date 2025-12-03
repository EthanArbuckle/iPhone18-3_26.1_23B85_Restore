@interface SBPIPContentViewLayoutMetrics
+ (double)minimumLandscapePadding;
+ (id)pegasusDefaultMetrics;
+ (id)pegasusDefaultMicroPIPMetrics;
+ (id)pegasusMetricsForContentType:(int64_t)type;
+ (id)pegasusQNBacklinkMetrics;
+ (id)pegasusScreenSharingMetrics;
+ (id)pegasusVideoCallMetrics;
+ (id)systemNotesMetricsForPresentationMode:(int64_t)mode;
+ (void)microPIPLandscapeSizePreferences:(id *)preferences portraitSizePreferences:(id *)sizePreferences squareSizePreferences:(id *)squareSizePreferences;
+ (void)videoCallLandscapeSizePreferences:(id *)preferences portraitSizePreferences:(id *)sizePreferences squareSizePreferences:(id *)squareSizePreferences;
+ (void)videoContentLandscapeSizePreferences:(id *)preferences portraitSizePreferences:(id *)sizePreferences squareSizePreferences:(id *)squareSizePreferences;
- (CGSize)minimumStashedTabSize;
- (SBPIPContentViewLayoutMetrics)initWithContentTypeIdentifier:(id)identifier padding:(double)padding paddingWhileStashed:(double)stashed minimumStashedTabSize:(CGSize)size defaultCornerRadius:(double)radius sizePolicy:(id)policy defaultPosition:(unint64_t)position prefersDefaultPosition:(BOOL)self0;
@end

@implementation SBPIPContentViewLayoutMetrics

+ (void)videoContentLandscapeSizePreferences:(id *)preferences portraitSizePreferences:(id *)sizePreferences squareSizePreferences:(id *)squareSizePreferences
{
  SBHScreenTypeForCurrentDevice();
  IsMoreSpace = SBHScreenTypeIsMoreSpace();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v10 = IsMoreSpace;
  if (videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences__onceToken == -1)
  {
    if (!preferences)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences__onceToken, block);
  if (preferences)
  {
LABEL_3:
    *preferences = videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
  }

LABEL_4:
  if (sizePreferences)
  {
    *sizePreferences = videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref;
  }

  if (squareSizePreferences)
  {
    *squareSizePreferences = videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____squarePIPSizePref;
  }
}

void __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = [SBPIPContentViewLayoutSizePreferences alloc];
    if (_SBHalfPortraitScreenWidthMinusPadding_onceToken != -1)
    {
      __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_1();
    }

    v8 = *&_SBHalfPortraitScreenWidthMinusPadding___size;
    if (_SBThreeFourthsPortraitScreenWidthMinusPadding_onceToken != -1)
    {
      __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_2();
    }

    v9 = *&_SBThreeFourthsPortraitScreenWidthMinusPadding___size;
    if (_SBPortraitScreenWidthMinusPadding_onceToken != -1)
    {
      __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_3();
    }

    v10 = [(SBPIPContentViewLayoutSizePreferences *)v7 initWithLongSideMinimumSize:v8 longSideDefaultSize:v9 longSideMaximumSize:*&_SBPortraitScreenWidthMinusPadding___size shortSideMinimumSize:96.0];
    v11 = videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
    videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref = v10;

    v12 = [SBPIPContentViewLayoutSizePreferences alloc];
    if (_SBFiveEighthsPortraitScreenWidthMinusPadding_onceToken != -1)
    {
      __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_4();
    }

    v13 = _SBFiveEighthsPortraitScreenWidthMinusPadding___size;
    if (_SBSevenEighthsPortraitScreenWidthMinusPadding_onceToken != -1)
    {
      __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_5();
    }

    v14 = _SBSevenEighthsPortraitScreenWidthMinusPadding___size;
    if (_SBPortraitScreenWidthMinusPadding_onceToken != -1)
    {
      __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_3();
    }

    v15 = *&_SBPortraitScreenWidthMinusPadding___size;
    v16 = 96.0;
    v17 = v12;
    v18 = *&v13;
    v19 = *&v14;
    goto LABEL_36;
  }

  v5 = __sb__runningInSpringBoard();
  v6 = v5;
  if (v5)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_32;
    }

LABEL_19:
    v20 = __sb__runningInSpringBoard();
    v21 = v20;
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v1 = [MEMORY[0x277D759A0] mainScreen];
      [v1 _referenceBounds];
    }

    BSSizeRoundForScale();
    v23 = v22;
    v24 = *(MEMORY[0x277D66E30] + 280);
    if ((v21 & 1) == 0)
    {
    }

    if ((v6 & 1) == 0)
    {
    }

    if (v23 >= v24)
    {
      if (*(a1 + 32))
      {
        v25 = 740.0;
      }

      else
      {
        v25 = 638.0;
      }

      v26 = [[SBPIPContentViewLayoutSizePreferences alloc] initWithLongSideMinimumSize:280.0 longSideDefaultSize:400.0 longSideMaximumSize:v25 shortSideMinimumSize:136.0];
      v27 = videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
      videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref = v26;

      v28 = [[SBPIPContentViewLayoutSizePreferences alloc] initWithLongSideMinimumSize:400.0 longSideDefaultSize:467.0 longSideMaximumSize:v25 shortSideMinimumSize:136.0];
      v29 = videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref;
      videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref = v28;

      v30 = [[SBPIPContentViewLayoutSizePreferences alloc] initWithLongSideMinimumSize:220.0 longSideDefaultSize:335.0 longSideMaximumSize:v25 shortSideMinimumSize:136.0];
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  if ([v4 userInterfaceIdiom] == 1)
  {
    goto LABEL_19;
  }

LABEL_32:
  if (*(a1 + 32))
  {
    v31 = 542.0;
  }

  else
  {
    v31 = 467.0;
  }

  v32 = [[SBPIPContentViewLayoutSizePreferences alloc] initWithLongSideMinimumSize:220.0 longSideDefaultSize:335.0 longSideMaximumSize:v31 shortSideMinimumSize:136.0];
  v33 = videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
  videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref = v32;

  v17 = [SBPIPContentViewLayoutSizePreferences alloc];
  v19 = 400.0;
  v18 = 335.0;
  v15 = v31;
  v16 = 136.0;
LABEL_36:
  v34 = [(SBPIPContentViewLayoutSizePreferences *)v17 initWithLongSideMinimumSize:v18 longSideDefaultSize:v19 longSideMaximumSize:v15 shortSideMinimumSize:v16];
  v35 = videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref;
  videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref = v34;

  v30 = videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
LABEL_37:
  v36 = videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____squarePIPSizePref;
  videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____squarePIPSizePref = v30;
}

+ (void)videoCallLandscapeSizePreferences:(id *)preferences portraitSizePreferences:(id *)sizePreferences squareSizePreferences:(id *)squareSizePreferences
{
  SBHScreenTypeForCurrentDevice();
  IsMoreSpace = SBHScreenTypeIsMoreSpace();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__SBPIPContentViewLayoutMetrics_Pegasus__videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v10 = IsMoreSpace;
  if (videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences__onceToken == -1)
  {
    if (!preferences)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences__onceToken, block);
  if (preferences)
  {
LABEL_3:
    *preferences = videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
  }

LABEL_4:
  if (sizePreferences)
  {
    *sizePreferences = videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref;
  }

  if (squareSizePreferences)
  {
    *squareSizePreferences = videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____squarePIPSizePref;
  }
}

void __122__SBPIPContentViewLayoutMetrics_Pegasus__videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = __sb__runningInSpringBoard();
    v6 = v5;
    if (v5)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v4 = [MEMORY[0x277D75418] currentDevice];
      if ([v4 userInterfaceIdiom] != 1)
      {

        goto LABEL_44;
      }
    }

    v25 = __sb__runningInSpringBoard();
    v26 = v25;
    if (v25)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v1 = [MEMORY[0x277D759A0] mainScreen];
      [v1 _referenceBounds];
    }

    BSSizeRoundForScale();
    v28 = v27;
    v29 = *(MEMORY[0x277D66E30] + 280);
    if ((v26 & 1) == 0)
    {
    }

    if ((v6 & 1) == 0)
    {
    }

    if (v28 >= v29)
    {
      if (*(a1 + 32))
      {
        v30 = 542.0;
      }

      else
      {
        v30 = 467.0;
      }

      if (*(a1 + 32))
      {
        v31 = 464.0;
      }

      else
      {
        v31 = 400.0;
      }

      if (*(a1 + 32))
      {
        v32 = 389.0;
      }

      else
      {
        v32 = 335.0;
      }

      v33 = 0x406B800000000000;
      v34 = [[SBPIPContentViewLayoutSizePreferences alloc] initWithLongSideMinimumSize:220.0 longSideDefaultSize:280.0 longSideMaximumSize:v30 shortSideMinimumSize:136.0];
      v35 = videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
      videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref = v34;

      v36 = [[SBPIPContentViewLayoutSizePreferences alloc] initWithLongSideMinimumSize:220.0 longSideDefaultSize:280.0 longSideMaximumSize:v31 shortSideMinimumSize:136.0];
      v37 = videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref;
      videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref = v36;

      v22 = [SBPIPContentViewLayoutSizePreferences alloc];
      v23 = 160.0;
      goto LABEL_54;
    }

LABEL_44:
    if (*(a1 + 32))
    {
      v38 = 464.0;
    }

    else
    {
      v38 = 400.0;
    }

    if (*(a1 + 32))
    {
      v39 = 389.0;
    }

    else
    {
      v39 = 335.0;
    }

    if (*(a1 + 32))
    {
      v32 = 325.0;
    }

    else
    {
      v32 = 280.0;
    }

    v33 = 0x4064000000000000;
    v40 = [[SBPIPContentViewLayoutSizePreferences alloc] initWithLongSideMinimumSize:160.0 longSideDefaultSize:220.0 longSideMaximumSize:v38 shortSideMinimumSize:136.0];
    v41 = videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
    videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref = v40;

    v42 = [[SBPIPContentViewLayoutSizePreferences alloc] initWithLongSideMinimumSize:160.0 longSideDefaultSize:220.0 longSideMaximumSize:v39 shortSideMinimumSize:136.0];
    v43 = videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref;
    videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref = v42;

    v22 = [SBPIPContentViewLayoutSizePreferences alloc];
    v23 = 160.0;
LABEL_54:
    v24 = *&v33;
    v20 = v32;
    v21 = 136.0;
    goto LABEL_55;
  }

  v7 = [SBPIPContentViewLayoutSizePreferences alloc];
  if (_SBHalfPortraitScreenWidthMinusPadding_onceToken != -1)
  {
    __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_1();
  }

  v8 = *&_SBHalfPortraitScreenWidthMinusPadding___size;
  if (_SBFiveEighthsPortraitScreenWidthMinusPadding_onceToken != -1)
  {
    __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_4();
  }

  v9 = *&_SBFiveEighthsPortraitScreenWidthMinusPadding___size;
  if (_SBPortraitScreenWidthMinusPadding_onceToken != -1)
  {
    __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_3();
  }

  v10 = [(SBPIPContentViewLayoutSizePreferences *)v7 initWithLongSideMinimumSize:v8 longSideDefaultSize:v9 longSideMaximumSize:*&_SBPortraitScreenWidthMinusPadding___size shortSideMinimumSize:96.0];
  v11 = videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
  videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref = v10;

  v12 = [SBPIPContentViewLayoutSizePreferences alloc];
  if (_SBHalfPortraitScreenWidthMinusPadding_onceToken != -1)
  {
    __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_1();
  }

  v13 = *&_SBHalfPortraitScreenWidthMinusPadding___size;
  if (_SBThreeFourthsPortraitScreenWidthMinusPadding_onceToken != -1)
  {
    __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_2();
  }

  v14 = *&_SBThreeFourthsPortraitScreenWidthMinusPadding___size;
  if (_SBSevenEighthsPortraitScreenWidthMinusPadding_onceToken != -1)
  {
    __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_5();
  }

  v15 = [(SBPIPContentViewLayoutSizePreferences *)v12 initWithLongSideMinimumSize:v13 longSideDefaultSize:v14 longSideMaximumSize:*&_SBSevenEighthsPortraitScreenWidthMinusPadding___size shortSideMinimumSize:96.0];
  v16 = videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref;
  videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____portraitPIPSizePref = v15;

  v17 = [SBPIPContentViewLayoutSizePreferences alloc];
  if (_SBSeventeenFiftiethsScreenWidthMinusPadding_onceToken != -1)
  {
    __122__SBPIPContentViewLayoutMetrics_Pegasus__videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_7();
  }

  v18 = _SBSeventeenFiftiethsScreenWidthMinusPadding___size;
  if (_SBHalfPortraitScreenWidthMinusPadding_onceToken != -1)
  {
    __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_1();
  }

  v19 = _SBHalfPortraitScreenWidthMinusPadding___size;
  if (_SBThreeFourthsPortraitScreenWidthMinusPadding_onceToken != -1)
  {
    __125__SBPIPContentViewLayoutMetrics_Pegasus__videoContentLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke_cold_2();
  }

  v20 = *&_SBThreeFourthsPortraitScreenWidthMinusPadding___size;
  v21 = 96.0;
  v22 = v17;
  v23 = *&v18;
  v24 = *&v19;
LABEL_55:
  v44 = [(SBPIPContentViewLayoutSizePreferences *)v22 initWithLongSideMinimumSize:v23 longSideDefaultSize:v24 longSideMaximumSize:v20 shortSideMinimumSize:v21];
  v45 = videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____squarePIPSizePref;
  videoCallLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____squarePIPSizePref = v44;
}

+ (void)microPIPLandscapeSizePreferences:(id *)preferences portraitSizePreferences:(id *)sizePreferences squareSizePreferences:(id *)squareSizePreferences
{
  SBHScreenTypeForCurrentDevice();
  IsMoreSpace = SBHScreenTypeIsMoreSpace();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__SBPIPContentViewLayoutMetrics_Pegasus__microPIPLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v10 = IsMoreSpace;
  if (microPIPLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences__onceToken == -1)
  {
    if (!preferences)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&microPIPLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences__onceToken, block);
  if (preferences)
  {
LABEL_3:
    *preferences = microPIPLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
  }

LABEL_4:
  if (sizePreferences)
  {
    *sizePreferences = 0;
  }

  if (squareSizePreferences)
  {
    *squareSizePreferences = 0;
  }
}

void __121__SBPIPContentViewLayoutMetrics_Pegasus__microPIPLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = [SBPIPContentViewLayoutSizePreferences alloc];
    v8 = 66.0;
    goto LABEL_21;
  }

  v5 = __sb__runningInSpringBoard();
  v6 = v5;
  if (v5)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    if ([v4 userInterfaceIdiom] != 1)
    {

      goto LABEL_17;
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
    v1 = [MEMORY[0x277D759A0] mainScreen];
    [v1 _referenceBounds];
  }

  BSSizeRoundForScale();
  v12 = v11;
  v13 = *(MEMORY[0x277D66E30] + 280);
  if ((v10 & 1) == 0)
  {
  }

  if ((v6 & 1) == 0)
  {
  }

  if (v12 >= v13)
  {
    v7 = [SBPIPContentViewLayoutSizePreferences alloc];
    v14 = *(a1 + 32) == 0;
    v15 = 88.0;
    v16 = 102.0;
    goto LABEL_18;
  }

LABEL_17:
  v7 = [SBPIPContentViewLayoutSizePreferences alloc];
  v14 = *(a1 + 32) == 0;
  v15 = 72.0;
  v16 = 84.0;
LABEL_18:
  if (v14)
  {
    v8 = v15;
  }

  else
  {
    v8 = v16;
  }

LABEL_21:
  v17 = [(SBPIPContentViewLayoutSizePreferences *)v7 initWithLongSideMinimumSize:44.0 longSideDefaultSize:44.0 longSideMaximumSize:v8 shortSideMinimumSize:0.0];
  v18 = microPIPLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref;
  microPIPLandscapeSizePreferences_portraitSizePreferences_squareSizePreferences____landscapePIPSizePref = v17;
}

+ (id)pegasusDefaultMetrics
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  [self videoContentLandscapeSizePreferences:&v12 portraitSizePreferences:&v11 squareSizePreferences:&v10];
  v2 = v12;
  v3 = v11;
  v4 = v10;
  v5 = [[SBPIPContentViewLayoutMetricsSizePolicy alloc] initWithSizePreferencesForLandscape:v2 portrait:v3 square:v4];

  v6 = [SBPIPContentViewLayoutMetrics alloc];
  v7 = _SBPIPContentViewPaddingWhileStashed(0);
  v8 = [(SBPIPContentViewLayoutMetrics *)v6 initWithContentTypeIdentifier:@"VideoContent" padding:v5 paddingWhileStashed:3 minimumStashedTabSize:v7 defaultCornerRadius:_SBPIPContentViewPaddingWhileStashed(1) sizePolicy:24.0 defaultPosition:96.0, 0.0];

  return v8;
}

+ (id)pegasusVideoCallMetrics
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  [self videoCallLandscapeSizePreferences:&v12 portraitSizePreferences:&v11 squareSizePreferences:&v10];
  v2 = v12;
  v3 = v11;
  v4 = v10;
  v5 = [[SBPIPContentViewLayoutMetricsSizePolicy alloc] initWithSizePreferencesForLandscape:v2 portrait:v3 square:v4];

  v6 = [SBPIPContentViewLayoutMetrics alloc];
  v7 = _SBPIPContentViewPaddingWhileStashed(0);
  v8 = [(SBPIPContentViewLayoutMetrics *)v6 initWithContentTypeIdentifier:@"VideoCall" padding:v5 paddingWhileStashed:3 minimumStashedTabSize:v7 defaultCornerRadius:_SBPIPContentViewPaddingWhileStashed(1) sizePolicy:24.0 defaultPosition:96.0, 0.0];

  return v8;
}

+ (id)pegasusScreenSharingMetrics
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  [self screenSharingLandscapeSizePreferences:&v12 portraitSizePreferences:&v11 squareSizePreferences:&v10];
  v2 = v12;
  v3 = v11;
  v4 = v10;
  v5 = [[SBPIPContentViewLayoutMetricsSizePolicy alloc] initWithSizePreferencesForLandscape:v2 portrait:v3 square:v4];

  v6 = [SBPIPContentViewLayoutMetrics alloc];
  v7 = _SBPIPContentViewPaddingWhileStashed(0);
  v8 = [(SBPIPContentViewLayoutMetrics *)v6 initWithContentTypeIdentifier:@"ScreenSharing" padding:v5 paddingWhileStashed:3 minimumStashedTabSize:v7 defaultCornerRadius:_SBPIPContentViewPaddingWhileStashed(1) sizePolicy:24.0 defaultPosition:96.0, 0.0];

  return v8;
}

+ (id)pegasusDefaultMicroPIPMetrics
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  [self microPIPLandscapeSizePreferences:&v11 portraitSizePreferences:&v10 squareSizePreferences:&v9];
  v2 = v11;
  v3 = v10;
  v4 = v9;
  v5 = [[SBPIPContentViewLayoutMetricsSizePolicy alloc] initWithSizePreferencesForLandscape:v2 portrait:v3 square:v4];

  v6 = [SBPIPContentViewLayoutMetrics alloc];
  v7 = [(SBPIPContentViewLayoutMetrics *)v6 initWithContentTypeIdentifier:@"MicroPIP" padding:v5 paddingWhileStashed:3 minimumStashedTabSize:0.0 defaultCornerRadius:0.0 sizePolicy:*MEMORY[0x277CBF3A8] defaultPosition:*(MEMORY[0x277CBF3A8] + 8), 0.0];

  return v7;
}

+ (id)pegasusQNBacklinkMetrics
{
  v2 = [[SBPIPContentViewLayoutSizePreferences alloc] initWithLongSideMinimumSize:112.0 longSideDefaultSize:112.0 longSideMaximumSize:112.0 shortSideMinimumSize:112.0];
  v3 = [[SBPIPContentViewLayoutMetricsSizePolicy alloc] initWithSizePreferencesForLandscape:v2 portrait:v2 square:v2];

  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [SBPIPContentViewLayoutMetrics alloc];
  v6 = _SBPIPContentViewPaddingWhileStashed(0);
  v7 = [(SBPIPContentViewLayoutMetrics *)v5 initWithContentTypeIdentifier:@"QNBacklink" padding:v3 paddingWhileStashed:v4 minimumStashedTabSize:1 defaultCornerRadius:v6 sizePolicy:_SBPIPContentViewPaddingWhileStashed(1) defaultPosition:24.0 prefersDefaultPosition:96.0, 0.0];

  return v7;
}

+ (id)pegasusMetricsForContentType:(int64_t)type
{
  if (type <= 3)
  {
    if (type >= 4)
    {
      goto LABEL_5;
    }

    pegasusDefaultMetrics = [self pegasusDefaultMetrics];
    goto LABEL_4;
  }

  switch(type)
  {
    case 4:
      pegasusDefaultMetrics = [self pegasusVideoCallMetrics];
      goto LABEL_4;
    case 5:
      pegasusDefaultMetrics = [self pegasusScreenSharingMetrics];
      goto LABEL_4;
    case 6:
      pegasusDefaultMetrics = [self pegasusQNBacklinkMetrics];
LABEL_4:
      a2 = pegasusDefaultMetrics;
      break;
  }

LABEL_5:

  return a2;
}

- (SBPIPContentViewLayoutMetrics)initWithContentTypeIdentifier:(id)identifier padding:(double)padding paddingWhileStashed:(double)stashed minimumStashedTabSize:(CGSize)size defaultCornerRadius:(double)radius sizePolicy:(id)policy defaultPosition:(unint64_t)position prefersDefaultPosition:(BOOL)self0
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  policyCopy = policy;
  v25.receiver = self;
  v25.super_class = SBPIPContentViewLayoutMetrics;
  v21 = [(SBPIPContentViewLayoutMetrics *)&v25 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    contentTypeIdentifier = v21->_contentTypeIdentifier;
    v21->_contentTypeIdentifier = v22;

    v21->_padding = padding;
    v21->_paddingWhileStashed = stashed;
    v21->_minimumStashedTabSize.width = width;
    v21->_minimumStashedTabSize.height = height;
    v21->_defaultCornerRadius = radius;
    objc_storeStrong(&v21->_sizePolicy, policy);
    v21->_defaultPosition = position;
    v21->_prefersDefaultPosition = defaultPosition;
  }

  return v21;
}

+ (double)minimumLandscapePadding
{
  if (__sb__runningInSpringBoard())
  {
    if (!SBFEffectiveDeviceClass() || (v2 = 0.0, SBFEffectiveDeviceClass() == 1))
    {
      if (SBFEffectiveHomeButtonType() == 2)
      {
        return 16.0;
      }

      else
      {
        return 0.0;
      }
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v2 = 0.0;
    if (![currentDevice userInterfaceIdiom])
    {
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v2 = 16.0;
      }

      else
      {
        v2 = 0.0;
      }
    }
  }

  return v2;
}

- (CGSize)minimumStashedTabSize
{
  width = self->_minimumStashedTabSize.width;
  height = self->_minimumStashedTabSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)systemNotesMetricsForPresentationMode:(int64_t)mode
{
  if (mode == 1)
  {
    v3 = @"SystemNotes-Thumbnail";
    v5 = 121.0;
    v4 = 121.0;
  }

  else if (mode)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = SBSSystemNotesPresentationModeDescription();
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBPIPContentViewLayoutMetrics+SystemNotes.m" lineNumber:73 description:{@"invalid presentationMode %@ received", v9}];

    v3 = 0;
    v5 = 0.0;
    v4 = 0.0;
  }

  else
  {
    v3 = @"SystemNotes-Window";
    v4 = 560.0;
    v5 = 455.0;
  }

  v10 = SBSystemNotesMaximumWindowSize();
  v11 = SBSystemNotesMaximumWindowSize();
  if (v10 < v12)
  {
    v10 = v12;
  }

  v13 = +[SBPIPContentViewLayoutMetrics pegasusDefaultMetrics];
  v14 = [[SBPIPContentViewLayoutSizePreferences alloc] initWithLongSideMinimumSize:v4 longSideDefaultSize:v5 longSideMaximumSize:v10 shortSideMinimumSize:v5];
  v15 = [[SBPIPContentViewLayoutMetricsSizePolicy alloc] initWithSizePreferencesForLandscape:v14 portrait:0 square:0];
  v16 = [SBPIPContentViewLayoutMetrics alloc];
  [v13 padding];
  v18 = v17;
  [v13 paddingWhileStashed];
  v20 = v19;
  [v13 minimumStashedTabSize];
  v22 = v21;
  v24 = v23;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = [(SBPIPContentViewLayoutMetrics *)v16 initWithContentTypeIdentifier:v3 padding:v15 paddingWhileStashed:v25 minimumStashedTabSize:v18 defaultCornerRadius:v20 sizePolicy:v22 defaultPosition:v24, 34.0];

  return v26;
}

@end