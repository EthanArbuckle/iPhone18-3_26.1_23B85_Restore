@interface VTUIStyle
+ (id)sharedStyle;
- (BOOL)currentLocaleSupportsCompactVoiceTrigger;
- (BOOL)isEdgeToEdgePhone;
- (BOOL)isGreenTeaCapableDevice;
- (BOOL)isIpadMini;
- (BOOL)isSmallestOnboardingDeviceInBuddy;
- (BOOL)proxAccessorySupportsCompactTrigger;
- (BOOL)shouldPresentDisclosureForCompactVoiceTrigger;
- (BOOL)shouldPresentEducationView;
- (BOOL)shouldSetupForMultipleTriggerPhrases;
- (BOOL)shouldShowVoiceTriggerConfirmationInBuddy;
- (BOOL)supportsSiriConversationsAndBargeIn;
- (CGSize)educationAssetSize;
- (VTUIStyle)init;
- (double)PRXdismissButtonMargin;
- (double)continueButtonFromBottom;
- (double)continueButtonFromBottomTwoButtons;
- (double)continueButtonOffset;
- (double)footerButtonMaximumWidth;
- (double)footerHorizontalPadding;
- (double)footerSkipButtonBaselineFromBottom;
- (double)headerTitleLinespacing;
- (double)horizontalPaddingLandscape;
- (double)horizontalPaddingPortrait;
- (double)horizontalTextPadding;
- (double)imageViewTopOffsetLandscape;
- (double)imageViewTopOffsetPortrait;
- (double)instructionHorizontalPadding;
- (double)orbImageOffsetFromTopEnrollment;
- (double)orbImagePadding;
- (double)orbOffsetFromTopEnrollment;
- (double)orbOffsetFromTopTraining;
- (double)primaryButtonHeight;
- (double)proxContainerCornerRadius;
- (double)proxPaddingSkipButtonPageLabel;
- (double)proxPaddingSuccessFromBottom;
- (double)proxPaddingTrainingTitle;
- (double)proxPaddingTrainingTitleLandscape;
- (double)proxTrainingDismissButtonVerticalPaddingBottom;
- (double)proxTrainingNotNowButtonVerticalPaddingTop;
- (double)skipButtonBaselineBottomMarginLandscape;
- (double)skipButtonBaselineBottomMarginPortrait;
- (double)subtitle1BaselineOffset;
- (double)subtitle2BaselineOffset;
- (double)titleBaselineOffsetFromTop;
- (double)turnOnSiriImageOffsetFromTop;
- (double)turnOnSiriSubtitle1BaselineOffset;
- (double)turnOnSiriSubtitle2BaselineOffset;
- (float)educationAssetTopPadding;
- (id)PRXcancelFont;
- (id)PRXheaderFont;
- (id)PRXpageFont;
- (id)ProxCardKitTitleFontDescriptor;
- (id)VTUIDeviceSpecificAudioHintFileName:(id)name;
- (id)VTUIDeviceSpecificString:(id)string;
- (id)dynamicColorWithLightColor:(id)color darkColor:(id)darkColor;
- (id)educationAssetNameForTraitCollection:(id)collection;
- (id)educationViewDetailText;
- (id)educationViewTitleText;
- (id)footerLabelFont;
- (id)instructionLabelFontWithWeight:(double)weight;
- (id)instructionPreAndPostfixFontWithWeight:(double)weight;
- (id)primaryButtonFont;
- (id)proxHSDescription:(id)description;
- (id)proxInstructionPreAndPostfixFont;
- (id)secondaryButtonFont;
- (id)siriIconImage;
- (id)smallestDeviceOnboardingAsset;
- (id)subtitleFont;
- (void)_createStringSuffixesForDevice;
- (void)_prefetchHomePodInfo;
- (void)dealloc;
@end

@implementation VTUIStyle

+ (id)sharedStyle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__VTUIStyle_sharedStyle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedStyle_onceToken != -1)
  {
    dispatch_once(&sharedStyle_onceToken, block);
  }

  v2 = sharedStyle__instance;

  return v2;
}

uint64_t __24__VTUIStyle_sharedStyle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  sharedStyle__instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (VTUIStyle)init
{
  v19.receiver = self;
  v19.super_class = VTUIStyle;
  v2 = [(VTUIStyle *)&v19 init];
  if (v2)
  {
    v3 = +[MGWrapper sharedMGWrapper];
    mgWrapper = v2->_mgWrapper;
    v2->_mgWrapper = v3;

    v5 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    bodyMetricsForScaling = v2->_bodyMetricsForScaling;
    v2->_bodyMetricsForScaling = v5;

    deviceClass = [(MGWrapper *)v2->_mgWrapper deviceClass];
    deviceClass = v2->_deviceClass;
    v2->_deviceClass = deviceClass;

    isDeviceIPad = [(MGWrapper *)v2->_mgWrapper isDeviceIPad];
    v2->_isIpad = isDeviceIPad;
    if (isDeviceIPad)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v2->_isLargeIpad = v11 >= 1366.0;
    }

    else
    {
      v2->_isLargeIpad = 0;
    }

    v2->_supportsSideButtonActivation = [(MGWrapper *)v2->_mgWrapper supportsSideButtonActivation];
    v2->_isHeySiriAlwaysOn = [(MGWrapper *)v2->_mgWrapper isHeySiriAlwaysOn];
    v2->_supportSideButtonActivation = [(MGWrapper *)v2->_mgWrapper supportsSideButtonActivation];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v13 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];

    v2->_needMoreLineSpacing = [v13 isEqual:@"th"];
    [(VTUIStyle *)v2 _createStringSuffixesForDevice];
    v14 = objc_alloc_init(MEMORY[0x277CEF3A8]);
    settingsConnection = v2->_settingsConnection;
    v2->_settingsConnection = v14;

    v16 = dispatch_queue_create("com.apple.siri.voicetrigger.homepod", 0);
    settingsQueue = v2->_settingsQueue;
    v2->_settingsQueue = v16;

    [(VTUIStyle *)v2 _prefetchHomePodInfo];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VTUIStyle;
  [(VTUIStyle *)&v4 dealloc];
}

- (id)subtitleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = +[VTUIFeatureFlags isNaturalUIEnabled];
  v4 = MEMORY[0x277D76A20];
  if (!v3)
  {
    v4 = MEMORY[0x277D76918];
  }

  v5 = *v4;

  return [v2 preferredFontForTextStyle:v5];
}

- (id)primaryButtonFont
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory) && (v5 = *MEMORY[0x277D767F0], UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D767F0]) == NSOrderedDescending))
  {
    v6 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v5];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:v6];
    fontDescriptor = [v7 fontDescriptor];
    v9 = [fontDescriptor fontDescriptorWithSymbolicTraits:0x8000];

    v10 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:0.0];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    fontDescriptor2 = [v6 fontDescriptor];
    v7 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:0x8000];

    v10 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
  }

  return v10;
}

- (id)secondaryButtonFont
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory) && (v5 = *MEMORY[0x277D76828], UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76828]) == NSOrderedDescending))
  {
    v6 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v5];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v6];
    fontDescriptor = [v7 fontDescriptor];
    v9 = [fontDescriptor fontDescriptorWithSymbolicTraits:0x8000];

    v10 = [v9 fontDescriptorWithSymbolicTraits:2];
    v11 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    fontDescriptor2 = [v6 fontDescriptor];
    v7 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:0x8000];

    v9 = [v7 fontDescriptorWithSymbolicTraits:2];
    v11 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:0.0];
  }

  return v11;
}

- (id)instructionLabelFontWithWeight:(double)weight
{
  v5 = MEMORY[0x277D74300];
  v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A00]];
  [v6 pointSize];
  v7 = [v5 systemFontOfSize:? weight:?];

  [v7 pointSize];
  if (v8 > 50.0 && ([(MGWrapper *)self->_mgWrapper isPlusIPhone]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:0]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:17]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:18]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:26]))
  {
    v9 = 0x4049000000000000;
LABEL_11:
    v11 = *&v9;
LABEL_12:
    v12 = [MEMORY[0x277D74300] systemFontOfSize:v11 weight:weight];

    v7 = v12;
    goto LABEL_15;
  }

  [v7 pointSize];
  if (v10 > 40.0 && [(MGWrapper *)self->_mgWrapper isSmallIPhone])
  {
    v9 = 0x4044000000000000;
    goto LABEL_11;
  }

  [v7 pointSize];
  v11 = 30.0;
  if (v13 > 30.0 && [(MGWrapper *)self->_mgWrapper isSmallestIPhone])
  {
    goto LABEL_12;
  }

LABEL_15:

  return v7;
}

- (id)instructionPreAndPostfixFontWithWeight:(double)weight
{
  v5 = MEMORY[0x277D74300];
  v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A28]];
  [v6 pointSize];
  v7 = [v5 systemFontOfSize:? weight:?];

  [v7 pointSize];
  if (v8 > 50.0 && ([(MGWrapper *)self->_mgWrapper isPlusIPhone]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:0]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:17]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:18]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:26]))
  {
    v9 = 0x4049000000000000;
LABEL_11:
    v11 = *&v9;
LABEL_12:
    v12 = [MEMORY[0x277D74300] systemFontOfSize:v11 weight:weight];

    v7 = v12;
    goto LABEL_15;
  }

  [v7 pointSize];
  if (v10 > 40.0 && [(MGWrapper *)self->_mgWrapper isSmallIPhone])
  {
    v9 = 0x4044000000000000;
    goto LABEL_11;
  }

  [v7 pointSize];
  v11 = 30.0;
  if (v13 > 30.0 && [(MGWrapper *)self->_mgWrapper isSmallestIPhone])
  {
    goto LABEL_12;
  }

LABEL_15:

  return v7;
}

- (id)proxInstructionPreAndPostfixFont
{
  v3 = MEMORY[0x277D74300];
  v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988]];
  [v4 pointSize];
  v5 = *MEMORY[0x277D743F8];
  v6 = [v3 systemFontOfSize:? weight:?];

  [v6 pointSize];
  if (v7 > 50.0 && ([(MGWrapper *)self->_mgWrapper isPlusIPhone]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:0]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:17]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:18]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:26]))
  {
    v8 = 0x4049000000000000;
LABEL_11:
    v10 = *&v8;
LABEL_12:
    v11 = [MEMORY[0x277D74300] systemFontOfSize:v10 weight:v5];

    v6 = v11;
    goto LABEL_15;
  }

  [v6 pointSize];
  if (v9 > 40.0 && [(MGWrapper *)self->_mgWrapper isSmallIPhone])
  {
    v8 = 0x4044000000000000;
    goto LABEL_11;
  }

  [v6 pointSize];
  v10 = 30.0;
  if (v12 > 30.0 && [(MGWrapper *)self->_mgWrapper isSmallestIPhone])
  {
    goto LABEL_12;
  }

LABEL_15:

  return v6;
}

- (id)ProxCardKitTitleFontDescriptor
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:{objc_msgSend(v2, "symbolicTraits") | 2}];

  return v3;
}

- (id)PRXheaderFont
{
  v2 = MEMORY[0x277D74300];
  proxCardKitTitleFontDescriptor = [(VTUIStyle *)self ProxCardKitTitleFontDescriptor];
  v4 = [v2 fontWithDescriptor:proxCardKitTitleFontDescriptor size:27.0];

  return v4;
}

- (id)PRXcancelFont
{
  v2 = MEMORY[0x277D74300];
  proxCardKitTitleFontDescriptor = [(VTUIStyle *)self ProxCardKitTitleFontDescriptor];
  v4 = [v2 fontWithDescriptor:proxCardKitTitleFontDescriptor size:17.0];

  return v4;
}

- (id)PRXpageFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:{objc_msgSend(v2, "symbolicTraits") | 2}];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:17.0];

  return v4;
}

- (BOOL)isEdgeToEdgePhone
{
  if (self->_isIpad)
  {
    return 0;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  [traitCollection displayCornerRadius];
  v2 = v5 > 0.0;

  return v2;
}

- (double)PRXdismissButtonMargin
{
  if ([(VTUIStyle *)self isEdgeToEdgePhone])
  {

    [(VTUIStyle *)self PRXdismissButtonEdgeToEdgeMargin];
  }

  else
  {

    [(VTUIStyle *)self PRXdismissButtonDefaultMargin];
  }

  return result;
}

- (double)orbImagePadding
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 27.0;
  if (v2)
  {
    return 17.0;
  }

  return result;
}

- (double)orbOffsetFromTopEnrollment
{
  result = -33.0;
  if (self->_isIpad)
  {
    return 12.0;
  }

  return result;
}

- (double)orbImageOffsetFromTopEnrollment
{
  if (self->_isIpad)
  {
    return 79.0;
  }

  v5 = [(MGWrapper *)self->_mgWrapper isDeviceVision:v2];
  result = 34.0;
  if (v5)
  {
    return 0.0;
  }

  return result;
}

- (double)orbOffsetFromTopTraining
{
  if (!self->_isIpad)
  {
    return 40.0;
  }

  v4 = [(VTUIStyle *)self isIpadMini:v2];
  result = 130.0;
  if (v4)
  {
    return 40.0;
  }

  return result;
}

- (double)instructionHorizontalPadding
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 38.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (double)titleBaselineOffsetFromTop
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;

  v6 = 44.0;
  if (v5 <= 320.0)
  {
    v6 = 36.0;
  }

  bodyMetricsForScaling = self->_bodyMetricsForScaling;

  [(UIFontMetrics *)bodyMetricsForScaling scaledValueForValue:v6];
  return result;
}

- (double)subtitle1BaselineOffset
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 15.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (double)subtitle2BaselineOffset
{
  v2 = 44.0;
  if (!self->_isIpad)
  {
    v2 = 28.0;
  }

  [(UIFontMetrics *)self->_bodyMetricsForScaling scaledValueForValue:v2];
  return result;
}

- (double)continueButtonOffset
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 24.0;
  if (v2)
  {
    return 20.0;
  }

  return result;
}

- (double)imageViewTopOffsetPortrait
{
  if ([(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:0]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:17]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:18]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:26]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:29])
  {
    return 88.0;
  }

  v4 = [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:30];
  result = 64.0;
  if (v4)
  {
    return 88.0;
  }

  return result;
}

- (double)imageViewTopOffsetLandscape
{
  if ([(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:0]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:17]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:18]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:26]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:29])
  {
    return 58.0;
  }

  v4 = [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:30];
  result = 34.0;
  if (v4)
  {
    return 58.0;
  }

  return result;
}

- (double)horizontalTextPadding
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  result = 8.0;
  if (v4 <= 320.0)
  {
    return 0.0;
  }

  return result;
}

- (double)horizontalPaddingPortrait
{
  if (self->_isIpad)
  {
    if (self->_isFloatingWithReducedWidth)
    {
      return 74.0;
    }

    else
    {
      result = 116.0;
      if (self->_isLargeIpad)
      {
        return 244.0;
      }
    }
  }

  else if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    return 38.0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v5 = v4;

    result = 24.0;
    if (v5 <= 320.0)
    {
      return 16.0;
    }
  }

  return result;
}

- (double)horizontalPaddingLandscape
{
  if (self->_isIpad)
  {
    if (self->_isFloatingWithReducedWidth)
    {
      return 74.0;
    }

    else
    {
      result = 244.0;
      if (self->_isLargeIpad)
      {
        return 300.0;
      }
    }
  }

  else
  {
    v5 = [VTUIFeatureFlags isNaturalUIEnabled:v2];
    result = 38.0;
    if (!v5)
    {
      return 24.0;
    }
  }

  return result;
}

- (double)headerTitleLinespacing
{
  result = 0.0;
  if (self->_needMoreLineSpacing)
  {
    return 12.0;
  }

  return result;
}

- (double)primaryButtonHeight
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 50.0;
  if (v2)
  {
    return 52.0;
  }

  return result;
}

- (double)skipButtonBaselineBottomMarginPortrait
{
  if ([(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:0]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:17]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:18]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:26]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:29])
  {
    return 36.0;
  }

  v4 = [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:30];
  result = 36.0;
  if (!v4)
  {
    return 24.0;
  }

  return result;
}

- (double)skipButtonBaselineBottomMarginLandscape
{
  v3 = 24.0;
  if (![(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:0]&& ![(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:17]&& ![(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:18]&& ![(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:26])
  {
    if ([(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:29])
    {
      return 36.0;
    }

    else if ([(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfType:30])
    {
      return 36.0;
    }

    else
    {
      return 24.0;
    }
  }

  return v3;
}

- (id)educationViewTitleText
{
  v2 = +[VTUIStringsHelper sharedStringsHelper];
  v3 = [v2 uiLocalizedStringForKey:@"ASK_SIRI"];

  return v3;
}

- (id)educationViewDetailText
{
  supportsSideButtonActivation = [(MGWrapper *)self->_mgWrapper supportsSideButtonActivation];
  v3 = +[VTUIStringsHelper sharedStringsHelper];
  v4 = v3;
  if (supportsSideButtonActivation)
  {
    v5 = @"SIRI_SIDE_BUTTON_ACTIVATION_INSTRUCTIONS";
  }

  else
  {
    v5 = @"SIRI_HOME_BUTTON_ACTIVATION_INSTRUCTIONS";
  }

  v6 = [v3 uiLocalizedStringForKey:v5];

  return v6;
}

- (BOOL)shouldPresentEducationView
{
  if ([(MGWrapper *)self->_mgWrapper isDeviceIPod]|| (v3 = [(MGWrapper *)self->_mgWrapper isDeviceIPhone]) != 0)
  {
    if (self->_isBuddyOrFollowUp)
    {
      LOBYTE(v3) = _os_feature_enabled_impl() ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)educationAssetNameForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(MGWrapper *)self->_mgWrapper supportsSideButtonActivation])
  {
    v5 = @"SiriEducationHomeAffordance";
  }

  else if ([(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfTypes:&unk_2881EEE48])
  {
    v5 = [@"SiriEducationHomeButton" stringByAppendingString:@"_3x_"];
  }

  else
  {
    v5 = @"SiriEducationHomeButton";
  }

  if ([collectionCopy userInterfaceStyle] == 2)
  {
    v6 = @"Dark";
  }

  else
  {
    v6 = @"Light";
  }

  v7 = [(__CFString *)v5 stringByAppendingString:v6];

  return v7;
}

- (float)educationAssetTopPadding
{
  if ([(MGWrapper *)self->_mgWrapper supportsSideButtonActivation])
  {
    v3 = 60.0;
  }

  else
  {
    v3 = 30.0;
  }

  v4 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2881EEE60];
  [v4 addObject:&unk_2881EF280];
  if ([(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfTypes:v4])
  {
    v5 = 40.0;
  }

  else
  {
    v5 = 20.0;
    if (![(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfTypes:&unk_2881EEE78])
    {
      if ([(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfTypes:&unk_2881EEE90])
      {
        v5 = 15.0;
      }

      else
      {
        v5 = v3;
      }
    }
  }

  return v5;
}

- (CGSize)educationAssetSize
{
  supportsSideButtonActivation = [(MGWrapper *)self->_mgWrapper supportsSideButtonActivation];
  if (supportsSideButtonActivation)
  {
    v4 = 263.3;
  }

  else
  {
    v4 = 153.0;
  }

  if (supportsSideButtonActivation)
  {
    v5 = 332.67;
  }

  else
  {
    v5 = 313.33;
  }

  v6 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2881EEEA8];
  [v6 addObject:&unk_2881EF280];
  if ([(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfTypes:v6]|| [(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfTypes:&unk_2881EEEC0])
  {
    v7 = 0.9;
  }

  else
  {
    if (![(MGWrapper *)self->_mgWrapper MGIsDeviceOneOfTypes:&unk_2881EEED8])
    {
      goto LABEL_11;
    }

    v7 = 0.74;
  }

  v5 = v5 * v7;
  v4 = v4 * v7;
LABEL_11:

  v8 = v4;
  v9 = v5;
  result.height = v9;
  result.width = v8;
  return result;
}

- (double)continueButtonFromBottom
{
  if (!+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    return 44.0;
  }

  result = 0.0;
  if (self->_isIpad)
  {

    [(VTUIStyle *)self iPadSolariumBottomOffset];
  }

  return result;
}

- (double)continueButtonFromBottomTwoButtons
{
  if (!+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    return 60.0;
  }

  if (!self->_isIpad)
  {
    return 66.0;
  }

  [(VTUIStyle *)self iPadSolariumBottomOffset];
  return v3 + 66.0;
}

- (double)footerSkipButtonBaselineFromBottom
{
  v3 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 15.0;
  if (v3)
  {
    result = 4.0;
    if (self->_isIpad)
    {
      [(VTUIStyle *)self iPadSolariumBottomOffset];
      return v5 + 4.0;
    }
  }

  return result;
}

- (id)footerLabelFont
{
  v2 = 12.0;
  if (self->_isIpad)
  {
    v2 = 13.0;
  }

  v3 = [MEMORY[0x277D74300] systemFontOfSize:v2];

  return v3;
}

- (double)footerHorizontalPadding
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;

  if (v5 <= 320.0)
  {
    return 3.5;
  }

  [(VTUIStyle *)self horizontalPadding];
  return result;
}

- (double)footerButtonMaximumWidth
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  result = 340.0;
  if (v4 <= 320.0)
  {
    return 288.0;
  }

  return result;
}

- (double)proxPaddingSuccessFromBottom
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 28.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

- (double)proxPaddingTrainingTitle
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 0.0;
  if (v2)
  {
    return -20.0;
  }

  return result;
}

- (double)proxPaddingTrainingTitleLandscape
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = -48.0;
  if (!v2)
  {
    return -28.0;
  }

  return result;
}

- (double)proxPaddingSkipButtonPageLabel
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 24.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

- (double)proxContainerCornerRadius
{
  v2 = +[MGWrapper sharedMGWrapper];
  if ([v2 isDeviceIPad])
  {

    return 13.0;
  }

  else
  {
    v4 = +[MGWrapper sharedMGWrapper];
    supportsSideButtonActivation = [v4 supportsSideButtonActivation];

    result = 34.0;
    if ((supportsSideButtonActivation & 1) == 0)
    {
      return 13.0;
    }
  }

  return result;
}

- (double)proxTrainingDismissButtonVerticalPaddingBottom
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 28.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

- (double)proxTrainingNotNowButtonVerticalPaddingTop
{
  v2 = +[VTUIFeatureFlags isNaturalUIEnabled];
  result = 32.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

- (id)proxHSDescription:(id)description
{
  descriptionCopy = description;
  v5 = [(VTUIStyle *)self VTUIDeviceSpecificString:descriptionCopy];
  audioProductID = [(VTUIStyle *)self audioProductID];
  v7 = audioProductID;
  if ((audioProductID - 8202) <= 0x25 && ((1 << (audioProductID - 10)) & 0x206C2AB71FLL) != 0)
  {
    v8 = MEMORY[0x277CCACA8];
    goto LABEL_4;
  }

  if ((audioProductID - 8212) <= 0x14 && ((1 << (audioProductID - 20)) & 0x1916A1) != 0)
  {
    v12 = _os_feature_enabled_impl();
    v8 = MEMORY[0x277CCACA8];
    if (v12)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"SIRI_AND_%@_PID_%ld", descriptionCopy, v7];
      goto LABEL_5;
    }

LABEL_4:
    [v8 stringWithFormat:@"%@_PID_%ld", descriptionCopy, v7];
    v9 = LABEL_5:;
    v10 = [(VTUIStyle *)self VTUIDeviceSpecificString:v9];

    v5 = v10;
  }

  return v5;
}

- (BOOL)proxAccessorySupportsCompactTrigger
{
  audioProductID = [(VTUIStyle *)self audioProductID];
  if (_os_feature_enabled_impl() && (+[VTUIStyle sharedStyle](VTUIStyle, "sharedStyle"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 currentLocaleSupportsCompactVoiceTrigger], v3, v4))
  {
    v5 = 0x1916A1u >> (audioProductID - 20);
    if ((audioProductID - 8212) > 0x14)
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (double)turnOnSiriImageOffsetFromTop
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;

  if (v5 <= 668.0)
  {
    return 0.0;
  }

  [(VTUIStyle *)self orbImageOffsetFromTopEnrollment];
  return result;
}

- (double)turnOnSiriSubtitle1BaselineOffset
{
  result = 34.0;
  if (!self->_isIpad)
  {
    return 14.0;
  }

  return result;
}

- (double)turnOnSiriSubtitle2BaselineOffset
{
  result = 34.0;
  if (!self->_isIpad)
  {
    return 14.0;
  }

  return result;
}

- (BOOL)isIpadMini
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice orientation] == 3)
  {

    v3 = 750.0;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v5 = [currentDevice2 orientation] == 4;

    v3 = dbl_272934620[v5];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v8 = v7 <= v3;

  return v8;
}

- (void)_createStringSuffixesForDevice
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc_init(MEMORY[0x277CEF678]);
  spokenLanguageCode = [v4 spokenLanguageCode];

  v5 = [spokenLanguageCode hasSuffix:@"US"];
  isHeySiriAlwaysOn = [(VTUIStyle *)self isHeySiriAlwaysOn];
  if (isHeySiriAlwaysOn)
  {
    [(NSArray *)array addObject:@"_AOP"];
  }

  if ([(NSString *)self->_deviceClass isEqualToString:@"iPod"])
  {
    [(NSArray *)array addObject:@"_IPOD"];
    goto LABEL_25;
  }

  if ([(NSString *)self->_deviceClass isEqualToString:@"iPhone"])
  {
    if (v5)
    {
      [(NSArray *)array addObject:@"_IPHONE"];
      if (!isHeySiriAlwaysOn)
      {
        goto LABEL_25;
      }
    }

    else
    {
      [(NSArray *)array addObject:@"_NONUS_IPHONE"];
      [(NSArray *)array addObject:@"_IPHONE"];
      if (!isHeySiriAlwaysOn)
      {
        goto LABEL_25;
      }

      [(NSArray *)array insertObject:@"_NONUS_AOP_IPHONE" atIndex:0];
    }

    [(NSArray *)array insertObject:@"_AOP_IPHONE" atIndex:0];
    if (!self->_supportSideButtonActivation)
    {
      goto LABEL_25;
    }

    v7 = @"_AOP_SIDE_BUTTON";
LABEL_24:
    [(NSArray *)array insertObject:v7 atIndex:0];
    goto LABEL_25;
  }

  if (![(NSString *)self->_deviceClass isEqualToString:@"iPad"])
  {
    if (![(NSString *)self->_deviceClass isEqualToString:@"RealityDevice"])
    {
      goto LABEL_25;
    }

    v7 = @"_VISION";
    goto LABEL_24;
  }

  if (!v5)
  {
    [(NSArray *)array addObject:@"_NONUS_IPAD"];
    [(NSArray *)array addObject:@"_IPAD"];
    if (!isHeySiriAlwaysOn)
    {
      goto LABEL_25;
    }

    [(NSArray *)array insertObject:@"_NONUS_AOP_IPAD" atIndex:0];
    goto LABEL_21;
  }

  [(NSArray *)array addObject:@"_IPAD"];
  if (isHeySiriAlwaysOn)
  {
LABEL_21:
    if (self->_supportSideButtonActivation)
    {
      [(NSArray *)array insertObject:@"_AOP_TOP_BUTTON" atIndex:0];
    }

    v7 = @"_AOP_IPAD";
    goto LABEL_24;
  }

LABEL_25:
  deviceStringSuffixes = self->_deviceStringSuffixes;
  self->_deviceStringSuffixes = array;
}

- (id)VTUIDeviceSpecificString:(id)string
{
  v33 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (stringCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = self->_deviceStringSuffixes;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [stringCopy stringByAppendingString:*(*(&v27 + 1) + 8 * i)];
          [array addObject:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    [array addObject:stringCopy];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = array;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v24;
LABEL_11:
      v17 = 0;
      v18 = v15;
      while (1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v23 + 1) + 8 * v17);
        v20 = +[VTUIStringsHelper sharedStringsHelper];
        v15 = [v20 uiLocalizedStringForKey:v19];

        if (![v15 isEqualToString:v19])
        {
          break;
        }

        ++v17;
        v18 = v15;
        if (v14 == v17)
        {
          v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        }
      }
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

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)VTUIDeviceSpecificAudioHintFileName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if ([(NSArray *)self->_deviceStringSuffixes containsObject:@"_IPHONE"])
  {
    v5 = @"_IPHONE";
  }

  else if ([(NSArray *)self->_deviceStringSuffixes containsObject:@"_IPAD"])
  {
    v5 = @"_IPAD";
  }

  else
  {
    if (![(NSArray *)self->_deviceStringSuffixes containsObject:@"_IPOD"])
    {
      v7 = nameCopy;
      goto LABEL_10;
    }

    v5 = @"_IPOD";
  }

  v7 = [nameCopy stringByAppendingString:v5];
LABEL_10:
  v6 = v7;
LABEL_11:

  return v6;
}

- (id)siriIconImage
{
  v2 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:@"com.apple.siri"];
  v3 = objc_alloc_init(MEMORY[0x277D1B1C8]);
  [v3 setShape:0];
  v4 = [v2 imageForDescriptor:v3];
  if ([v4 placeholder])
  {
    v5 = [v2 prepareImageForDescriptor:v3];

    v4 = v5;
  }

  v6 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:{objc_msgSend(v4, "CGImage")}];

  return v6;
}

- (BOOL)isSmallestOnboardingDeviceInBuddy
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;

  return v5 <= 568.0 && self->_isBuddyOrFollowUp;
}

- (id)smallestDeviceOnboardingAsset
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"SiriOnboarding" inBundle:v2 compatibleWithTraitCollection:0];

  return v3;
}

- (BOOL)isGreenTeaCapableDevice
{
  if (isGreenTeaCapableDevice___greenTeaCapabilityToken != -1)
  {
    [VTUIStyle isGreenTeaCapableDevice];
  }

  return isGreenTeaCapableDevice___greenTea & 1 | (CFPreferencesGetAppBooleanValue(@"fakeGreenTea", @"com.apple.VoiceTriggerUI.cn", 0) != 0);
}

uint64_t __36__VTUIStyle_isGreenTeaCapableDevice__block_invoke()
{
  result = MGGetBoolAnswer();
  isGreenTeaCapableDevice___greenTea = result;
  return result;
}

- (id)dynamicColorWithLightColor:(id)color darkColor:(id)darkColor
{
  v16[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D75C80];
  darkColorCopy = darkColor;
  colorCopy = color;
  v8 = [v5 traitCollectionWithUserInterfaceStyle:0];
  v15[0] = v8;
  v16[0] = colorCopy;
  v9 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v15[1] = v9;
  v16[1] = colorCopy;
  v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v15[2] = v10;
  v16[2] = darkColorCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v12 = [MEMORY[0x277D75348] _dynamicColorWithColorsByTraitCollection:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)shouldSetupForMultipleTriggerPhrases
{
  v14 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    if ([(VTUIStyle *)self currentLocaleSupportsCompactVoiceTrigger])
    {
      v3 = AFDeviceSupportsANE();
    }

    else
    {
      v3 = 0;
    }

    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    v5 = [mEMORY[0x277D7A8D0] getUserPreferredVoiceTriggerPhraseTypeForDeviceType:0 endpointId:0 error:0];

    if (v5 != 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Should NOT";
    if (v3)
    {
      v7 = @"Should";
    }

    v10 = 136315394;
    v11 = "[VTUIStyle shouldSetupForMultipleTriggerPhrases]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s %@ set up for multiple triggers", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)shouldShowVoiceTriggerConfirmationInBuddy
{
  v22 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  voiceTriggerEnabled = [mEMORY[0x277D7A8D0] voiceTriggerEnabled];

  v4 = @"not needed";
  v5 = &stru_2881E5778;
  if (voiceTriggerEnabled)
  {
    mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
    isVoiceTriggerRepromptRequired = [mEMORY[0x277D653F8] isVoiceTriggerRepromptRequired];

    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"forceNeedsConfirmation", @"com.apple.VoiceTriggerUI.vtconf", 0);
    if (isVoiceTriggerRepromptRequired)
    {
      v4 = @"needed";
    }

    v9 = (AppBooleanValue != 0) | isVoiceTriggerRepromptRequired;
    if (AppBooleanValue)
    {
      v5 = @"(forced)";
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[VTUIStyle shouldShowVoiceTriggerConfirmationInBuddy]";
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_2728BC000, v10, OS_LOG_TYPE_DEFAULT, "%s VT confirmation is %@ %@", &v16, 0x20u);
  }

  v11 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"Will not show";
    if (v9)
    {
      v12 = @"Will show";
    }

    v16 = 136315650;
    v17 = "[VTUIStyle shouldShowVoiceTriggerConfirmationInBuddy]";
    v18 = 2112;
    v19 = v12;
    if (voiceTriggerEnabled)
    {
      v13 = @"enabled";
    }

    else
    {
      v13 = @"not enabled";
    }

    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_2728BC000, v11, OS_LOG_TYPE_DEFAULT, "%s %@ VT confirmation - voice trigger is %@", &v16, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)supportsSiriConversationsAndBargeIn
{
  mEMORY[0x277D01508] = [MEMORY[0x277D01508] sharedPreferences];
  isFlexibleFollowupsSupported = [mEMORY[0x277D01508] isFlexibleFollowupsSupported];

  return isFlexibleFollowupsSupported;
}

- (BOOL)shouldPresentDisclosureForCompactVoiceTrigger
{
  v22 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && [(VTUIStyle *)self currentLocaleSupportsCompactVoiceTrigger])
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    assistantIsEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];

    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    voiceTriggerEnabled = [mEMORY[0x277D7A8D0] voiceTriggerEnabled];

    mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
    mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
    languageCode = [mEMORY[0x277CEF368]2 languageCode];
    v10 = [mEMORY[0x277D653F8] isSATEnrolledForSiriProfileId:0 forLanguageCode:languageCode];

    mEMORY[0x277CEF368]3 = [MEMORY[0x277CEF368] sharedPreferences];
    hasPresentedCompactVoiceTriggerDisclosure = [mEMORY[0x277CEF368]3 hasPresentedCompactVoiceTriggerDisclosure];

    v13 = 0;
    if (self->_isBuddyOrFollowUp && assistantIsEnabled && voiceTriggerEnabled && v10 && (hasPresentedCompactVoiceTriggerDisclosure & 1) == 0)
    {
      v13 = AFDeviceSupportsANE();
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"should NOT present";
    if (v13)
    {
      v15 = @"should present";
    }

    v18 = 136315394;
    v19 = "[VTUIStyle shouldPresentDisclosureForCompactVoiceTrigger]";
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_2728BC000, v14, OS_LOG_TYPE_DEFAULT, "%s Compact trigger disclosure check: %@", &v18, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)currentLocaleSupportsCompactVoiceTrigger
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  if (!languageCode)
  {
    mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
    languageCode = [mEMORY[0x277CEF368]2 bestSupportedLanguageCodeForLanguageCode:0];
  }

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  v6 = [mEMORY[0x277D7A8D0] isCompactVoiceTriggerAvailableForLanguageCode:languageCode];

  return v6;
}

- (void)_prefetchHomePodInfo
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[VTUIStyle _prefetchHomePodInfo]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Fetch of HomePod Info", buf, 0xCu);
  }

  settingsConnection = self->_settingsConnection;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, self);
    settingsQueue = self->_settingsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__VTUIStyle__prefetchHomePodInfo__block_invoke;
    block[3] = &unk_279E541F8;
    objc_copyWeak(&v8, buf);
    dispatch_async(settingsQueue, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __33__VTUIStyle__prefetchHomePodInfo__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 6);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __33__VTUIStyle__prefetchHomePodInfo__block_invoke_2;
    v5[3] = &unk_279E54C60;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 isJustSiriEnabledInTheHome:v5];
    objc_destroyWeak(&v6);
  }
}

void __33__VTUIStyle__prefetchHomePodInfo__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_ERROR))
    {
      __33__VTUIStyle__prefetchHomePodInfo__block_invoke_2_cold_1(v5, v6);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"not enabled";
        if (a3)
        {
          v10 = @"enabled";
        }

        v12 = 136315394;
        v13 = "[VTUIStyle _prefetchHomePodInfo]_block_invoke";
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s Fetch of HomePod compact trigger enablement completed with result: %@", &v12, 0x16u);
      }

      v8[69] = a3;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __33__VTUIStyle__prefetchHomePodInfo__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[VTUIStyle _prefetchHomePodInfo]_block_invoke_2";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_2728BC000, a2, OS_LOG_TYPE_ERROR, "%s Fetch of HomePod compact trigger enablement failed with error:%@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end