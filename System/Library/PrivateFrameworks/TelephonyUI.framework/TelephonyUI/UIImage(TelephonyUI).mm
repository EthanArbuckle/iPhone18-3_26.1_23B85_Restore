@interface UIImage(TelephonyUI)
+ (BOOL)cappedSizedImagesAreValid;
+ (BOOL)isIPad;
+ (__CFString)systemImageNameForSymbolType:()TelephonyUI;
+ (id)TTYActionImage;
+ (id)_modelSymbolCache;
+ (id)actionGlyphForSymbolType:()TelephonyUI;
+ (id)currentDeviceRouteGlyphForDisplayStyle:()TelephonyUI;
+ (id)favoritesAudioGlyphImage;
+ (id)favoritesMailGlyphImage;
+ (id)favoritesMessageGlyphImage;
+ (id)favoritesTTYDirectGlyphImage;
+ (id)favoritesTTYRelayGlyphImage;
+ (id)favoritesVideoGlyphImage;
+ (id)flatImageForSymbolType:()TelephonyUI;
+ (id)genericBusinessLogo;
+ (id)hierarchicalImageForSymbolType:()TelephonyUI color:;
+ (id)mailActionImage;
+ (id)messagesActionImage;
+ (id)recentsAudioCallImage;
+ (id)recentsIncomingAudioCallGlyphImage;
+ (id)recentsIncomingVideoCallGlyphImage;
+ (id)recentsOutgoingAudioCallGlyphImage;
+ (id)recentsOutgoingVideoCallGlyphImage;
+ (id)recentsRTTChevronImage;
+ (id)recentsTTYGlyphImage;
+ (id)recentsVerifiedCheckmarkImage;
+ (id)recentsVideoCallImage;
+ (id)routeGlyphForDeviceType:()TelephonyUI displayStyle:;
+ (id)routeGlyphForDeviceType:()TelephonyUI displayStyle:color:;
+ (id)routeGlyphWithSymbolType:()TelephonyUI displayStyle:;
+ (id)routeGlyphWithSymbolType:()TelephonyUI displayStyle:color:;
+ (id)symbolNameForCurrentDevice;
+ (id)systemImageNameForModelIdSync:()TelephonyUI;
+ (id)telephonyUIActionButtonGlyphImage;
+ (id)telephonyUIImageNamed:()TelephonyUI;
+ (id)telephonyUIInfoButtonGlyphImage;
+ (id)telephonyUIUnreadIndicatorGlyphImage;
+ (id)tpHierarchicalImageForSymbolType:()TelephonyUI pointSize:;
+ (id)tpHierarchicalImageForSymbolType:()TelephonyUI pointSize:scale:;
+ (id)tpImageForGameControllerSFSymbol:()TelephonyUI textStyle:scale:symbolWeight:;
+ (id)tpImageForSymbolType:()TelephonyUI configuration:;
+ (id)tpImageForSymbolType:()TelephonyUI pointSize:;
+ (id)tpImageForSymbolType:()TelephonyUI scale:paletteColors:;
+ (id)tpImageForSymbolType:()TelephonyUI textStyle:cappedAt:;
+ (id)tpImageForSymbolType:()TelephonyUI textStyle:scale:hierarchicalColor:isStaticSize:;
+ (id)tpImageForSymbolType:()TelephonyUI textStyle:scale:isStaticSize:;
+ (id)tpImageForSymbolType:()TelephonyUI textStyle:scale:paletteColors:isStaticSize:;
+ (id)tpImageForSymbolType:()TelephonyUI textStyle:scale:symbolWeight:;
+ (id)tpImageForTextStyle:()TelephonyUI scale:symbolWeight:systemImageName:;
+ (id)videoMessageRecordGlyphImage;
+ (id)voicemailAudioRouteGlyphImage;
+ (id)voicemailDeleteGlyphImage;
+ (id)voicemailDialRequestGlyphImage;
+ (id)voicemailGlyphForSymbolType:()TelephonyUI;
+ (id)voicemailPauseGlyphDisabledImage;
+ (id)voicemailPauseGlyphImage;
+ (id)voicemailPlayGlyphDisabledImage;
+ (id)voicemailPlayGlyphImage;
+ (id)voicemailReportFeedbackGlyphImage;
+ (id)voicemailTTYGlyphImage;
+ (id)voicemailUndeleteGlyphImage;
+ (uint64_t)fallbackSymbolTypeForCurrentDevice;
+ (uint64_t)scaleForTPScale:()TelephonyUI;
+ (uint64_t)symbolTypeForDeviceType:()TelephonyUI;
+ (uint64_t)systemImageNameForDeviceType:()TelephonyUI;
+ (void)clearCachedCappedSizeImagesIfNeeded;
+ (void)routeGlyphForModelId:()TelephonyUI displayStyle:completion:;
+ (void)systemImageNameForModelId:()TelephonyUI completion:;
- (id)imageWithEtchedBorderOfColor:()TelephonyUI radius:;
- (id)imageWithShadow:()TelephonyUI;
- (id)tpFlattenedWithColor:()TelephonyUI;
@end

@implementation UIImage(TelephonyUI)

+ (id)recentsOutgoingVideoCallGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UIImage_TelephonyUI__recentsOutgoingVideoCallGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (recentsOutgoingVideoCallGlyphImage_onceToken != -1)
  {
    dispatch_once(&recentsOutgoingVideoCallGlyphImage_onceToken, block);
  }

  v1 = recentsOutgoingVideoCallGlyphImage___sGlyphImage;

  return v1;
}

+ (id)recentsOutgoingAudioCallGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UIImage_TelephonyUI__recentsOutgoingAudioCallGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (recentsOutgoingAudioCallGlyphImage_onceToken != -1)
  {
    dispatch_once(&recentsOutgoingAudioCallGlyphImage_onceToken, block);
  }

  v1 = recentsOutgoingAudioCallGlyphImage___sGlyphImage;

  return v1;
}

+ (BOOL)isIPad
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [currentDevice userInterfaceIdiom] == 1;

  return v1;
}

+ (BOOL)cappedSizedImagesAreValid
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  v2 = __lastCappedImageSizeContentCategory && ([preferredContentSizeCategory isEqualToString:?] & 1) != 0;
  return v2;
}

+ (void)clearCachedCappedSizeImagesIfNeeded
{
  if (([MEMORY[0x1E69DCAB8] cappedSizedImagesAreValid] & 1) == 0)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    v2 = __lastCappedImageSizeContentCategory;
    __lastCappedImageSizeContentCategory = preferredContentSizeCategory;

    v3 = __telephonyUIActionButtonGlyphImage;
    __telephonyUIActionButtonGlyphImage = 0;

    v4 = __telephonyUIInfoButtonGlyphImage;
    __telephonyUIInfoButtonGlyphImage = 0;
  }
}

+ (id)telephonyUIActionButtonGlyphImage
{
  [MEMORY[0x1E69DCAB8] clearCachedCappedSizeImagesIfNeeded];
  v0 = __telephonyUIActionButtonGlyphImage;
  if (!__telephonyUIActionButtonGlyphImage)
  {
    v1 = [MEMORY[0x1E69DCAB8] tpImageForSymbolType:27 textStyle:*MEMORY[0x1E69DDCF8] cappedAt:*MEMORY[0x1E69DDC50]];
    v2 = __telephonyUIActionButtonGlyphImage;
    __telephonyUIActionButtonGlyphImage = v1;

    v0 = __telephonyUIActionButtonGlyphImage;
  }

  return v0;
}

+ (id)telephonyUIInfoButtonGlyphImage
{
  [MEMORY[0x1E69DCAB8] clearCachedCappedSizeImagesIfNeeded];
  v0 = __telephonyUIInfoButtonGlyphImage;
  if (!__telephonyUIInfoButtonGlyphImage)
  {
    v1 = [MEMORY[0x1E69DCAB8] tpImageForSymbolType:28 textStyle:*MEMORY[0x1E69DDCF8] cappedAt:*MEMORY[0x1E69DDC50]];
    v2 = __telephonyUIInfoButtonGlyphImage;
    __telephonyUIInfoButtonGlyphImage = v1;

    v0 = __telephonyUIInfoButtonGlyphImage;
  }

  return v0;
}

+ (id)telephonyUIUnreadIndicatorGlyphImage
{
  if (telephonyUIUnreadIndicatorGlyphImage_onceToken != -1)
  {
    +[UIImage(TelephonyUI) telephonyUIUnreadIndicatorGlyphImage];
  }

  v1 = telephonyUIUnreadIndicatorGlyphImage___sGlyphImage;

  return v1;
}

+ (id)favoritesAudioGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UIImage_TelephonyUI__favoritesAudioGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (favoritesAudioGlyphImage_onceToken != -1)
  {
    dispatch_once(&favoritesAudioGlyphImage_onceToken, block);
  }

  v1 = favoritesAudioGlyphImage___sGlyphImage;

  return v1;
}

+ (id)favoritesMailGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UIImage_TelephonyUI__favoritesMailGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (favoritesMailGlyphImage_onceToken != -1)
  {
    dispatch_once(&favoritesMailGlyphImage_onceToken, block);
  }

  v1 = favoritesMailGlyphImage___sGlyphImage;

  return v1;
}

+ (id)favoritesMessageGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UIImage_TelephonyUI__favoritesMessageGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (favoritesMessageGlyphImage_onceToken != -1)
  {
    dispatch_once(&favoritesMessageGlyphImage_onceToken, block);
  }

  v1 = favoritesMessageGlyphImage___sGlyphImage;

  return v1;
}

+ (id)favoritesTTYDirectGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIImage_TelephonyUI__favoritesTTYDirectGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (favoritesTTYDirectGlyphImage_onceToken != -1)
  {
    dispatch_once(&favoritesTTYDirectGlyphImage_onceToken, block);
  }

  v1 = favoritesTTYDirectGlyphImage___sGlyphImage;

  return v1;
}

+ (id)favoritesTTYRelayGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UIImage_TelephonyUI__favoritesTTYRelayGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (favoritesTTYRelayGlyphImage_onceToken != -1)
  {
    dispatch_once(&favoritesTTYRelayGlyphImage_onceToken, block);
  }

  v1 = favoritesTTYRelayGlyphImage___sGlyphImage;

  return v1;
}

+ (id)favoritesVideoGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UIImage_TelephonyUI__favoritesVideoGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (favoritesVideoGlyphImage_onceToken != -1)
  {
    dispatch_once(&favoritesVideoGlyphImage_onceToken, block);
  }

  v1 = favoritesVideoGlyphImage___sGlyphImage;

  return v1;
}

+ (id)recentsIncomingAudioCallGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UIImage_TelephonyUI__recentsIncomingAudioCallGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (recentsIncomingAudioCallGlyphImage_onceToken != -1)
  {
    dispatch_once(&recentsIncomingAudioCallGlyphImage_onceToken, block);
  }

  v1 = recentsIncomingAudioCallGlyphImage___sGlyphImage;

  return v1;
}

+ (id)recentsIncomingVideoCallGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UIImage_TelephonyUI__recentsIncomingVideoCallGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (recentsIncomingVideoCallGlyphImage_onceToken != -1)
  {
    dispatch_once(&recentsIncomingVideoCallGlyphImage_onceToken, block);
  }

  v1 = recentsIncomingVideoCallGlyphImage___sGlyphImage;

  return v1;
}

+ (id)recentsTTYGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UIImage_TelephonyUI__recentsTTYGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (recentsTTYGlyphImage_onceToken != -1)
  {
    dispatch_once(&recentsTTYGlyphImage_onceToken, block);
  }

  v1 = recentsTTYGlyphImage___sGlyphImage;

  return v1;
}

+ (id)recentsVerifiedCheckmarkImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__UIImage_TelephonyUI__recentsVerifiedCheckmarkImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (recentsVerifiedCheckmarkImage_onceToken != -1)
  {
    dispatch_once(&recentsVerifiedCheckmarkImage_onceToken, block);
  }

  v1 = recentsVerifiedCheckmarkImage___sCheckmarkImage;

  return v1;
}

+ (id)recentsRTTChevronImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__UIImage_TelephonyUI__recentsRTTChevronImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (recentsRTTChevronImage_onceToken != -1)
  {
    dispatch_once(&recentsRTTChevronImage_onceToken, block);
  }

  v1 = recentsRTTChevronImage___sChevronImage;

  return v1;
}

+ (id)recentsAudioCallImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__UIImage_TelephonyUI__recentsAudioCallImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (recentsAudioCallImage_onceToken != -1)
  {
    dispatch_once(&recentsAudioCallImage_onceToken, block);
  }

  v1 = recentsAudioCallImage___sAudioCallImage;

  return v1;
}

+ (id)recentsVideoCallImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__UIImage_TelephonyUI__recentsVideoCallImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (recentsVideoCallImage_onceToken != -1)
  {
    dispatch_once(&recentsVideoCallImage_onceToken, block);
  }

  v1 = recentsVideoCallImage___sVideoCallImage;

  return v1;
}

+ (id)mailActionImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__UIImage_TelephonyUI__mailActionImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mailActionImage_onceToken != -1)
  {
    dispatch_once(&mailActionImage_onceToken, block);
  }

  v1 = mailActionImage___sMailActionImage;

  return v1;
}

+ (id)messagesActionImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIImage_TelephonyUI__messagesActionImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (messagesActionImage_onceToken != -1)
  {
    dispatch_once(&messagesActionImage_onceToken, block);
  }

  v1 = messagesActionImage___sMessagesActionImage;

  return v1;
}

+ (id)TTYActionImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__UIImage_TelephonyUI__TTYActionImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (TTYActionImage_onceToken != -1)
  {
    dispatch_once(&TTYActionImage_onceToken, block);
  }

  v1 = TTYActionImage___sTTYActionImage;

  return v1;
}

+ (id)actionGlyphForSymbolType:()TelephonyUI
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCAB8];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v11[0] = systemBlueColor;
  quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v11[1] = quaternarySystemFillColor;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [v4 tpImageForSymbolType:a3 scale:2 paletteColors:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)voicemailAudioRouteGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__UIImage_TelephonyUI__voicemailAudioRouteGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voicemailAudioRouteGlyphImage_onceToken != -1)
  {
    dispatch_once(&voicemailAudioRouteGlyphImage_onceToken, block);
  }

  v1 = voicemailAudioRouteGlyphImage___sGlyphImage;

  return v1;
}

+ (id)voicemailDialRequestGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UIImage_TelephonyUI__voicemailDialRequestGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voicemailDialRequestGlyphImage_onceToken != -1)
  {
    dispatch_once(&voicemailDialRequestGlyphImage_onceToken, block);
  }

  v1 = voicemailDialRequestGlyphImage___sGlyphImage;

  return v1;
}

+ (id)voicemailDeleteGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__UIImage_TelephonyUI__voicemailDeleteGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voicemailDeleteGlyphImage_onceToken != -1)
  {
    dispatch_once(&voicemailDeleteGlyphImage_onceToken, block);
  }

  v1 = voicemailDeleteGlyphImage___sGlyphImage;

  return v1;
}

+ (id)voicemailUndeleteGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UIImage_TelephonyUI__voicemailUndeleteGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voicemailUndeleteGlyphImage_onceToken != -1)
  {
    dispatch_once(&voicemailUndeleteGlyphImage_onceToken, block);
  }

  v1 = voicemailUndeleteGlyphImage___sGlyphImage;

  return v1;
}

+ (id)voicemailPlayGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UIImage_TelephonyUI__voicemailPlayGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voicemailPlayGlyphImage_onceToken != -1)
  {
    dispatch_once(&voicemailPlayGlyphImage_onceToken, block);
  }

  v1 = voicemailPlayGlyphImage___sGlyphImage;

  return v1;
}

+ (id)voicemailPlayGlyphDisabledImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__UIImage_TelephonyUI__voicemailPlayGlyphDisabledImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voicemailPlayGlyphDisabledImage_onceToken != -1)
  {
    dispatch_once(&voicemailPlayGlyphDisabledImage_onceToken, block);
  }

  v1 = voicemailPlayGlyphDisabledImage___sGlyphImage;

  return v1;
}

+ (id)voicemailPauseGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UIImage_TelephonyUI__voicemailPauseGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voicemailPauseGlyphImage_onceToken != -1)
  {
    dispatch_once(&voicemailPauseGlyphImage_onceToken, block);
  }

  v1 = voicemailPauseGlyphImage___sGlyphImage;

  return v1;
}

+ (id)voicemailPauseGlyphDisabledImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__UIImage_TelephonyUI__voicemailPauseGlyphDisabledImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voicemailPauseGlyphDisabledImage_onceToken != -1)
  {
    dispatch_once(&voicemailPauseGlyphDisabledImage_onceToken, block);
  }

  v1 = voicemailPauseGlyphDisabledImage___sGlyphImage;

  return v1;
}

+ (id)voicemailReportFeedbackGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__UIImage_TelephonyUI__voicemailReportFeedbackGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voicemailReportFeedbackGlyphImage_onceToken != -1)
  {
    dispatch_once(&voicemailReportFeedbackGlyphImage_onceToken, block);
  }

  v1 = voicemailReportFeedbackGlyphImage___sGlyphImage;

  return v1;
}

+ (id)voicemailTTYGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__UIImage_TelephonyUI__voicemailTTYGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voicemailTTYGlyphImage_onceToken != -1)
  {
    dispatch_once(&voicemailTTYGlyphImage_onceToken, block);
  }

  v1 = voicemailTTYGlyphImage___sGlyphImage;

  return v1;
}

+ (id)voicemailGlyphForSymbolType:()TelephonyUI
{
  if ((a3 - 25) > 1)
  {
    v3 = MEMORY[0x1E69DCAB8];
    if (a3 == 35)
    {
      v5 = *MEMORY[0x1E69DDD28];
    }

    else
    {
      v6 = *MEMORY[0x1E69DDCF8];
    }
  }

  else
  {
    v3 = MEMORY[0x1E69DCAB8];
    v4 = *MEMORY[0x1E69DDDC0];
  }

  v7 = [v3 tpImageForSymbolType:? textStyle:? scale:? isStaticSize:?];

  return v7;
}

+ (id)videoMessageRecordGlyphImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIImage_TelephonyUI__videoMessageRecordGlyphImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (videoMessageRecordGlyphImage_onceToken != -1)
  {
    dispatch_once(&videoMessageRecordGlyphImage_onceToken, block);
  }

  v1 = videoMessageRecordGlyphImage___sGlyphImage;

  return v1;
}

+ (id)currentDeviceRouteGlyphForDisplayStyle:()TelephonyUI
{
  v5 = [self routeGlyphWithSymbolType:81 displayStyle:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    fallbackSymbolTypeForCurrentDevice = [self fallbackSymbolTypeForCurrentDevice];
    v9 = TPDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(UIImage(TelephonyUI) *)self currentDeviceRouteGlyphForDisplayStyle:fallbackSymbolTypeForCurrentDevice, v9];
    }

    v7 = [self routeGlyphWithSymbolType:fallbackSymbolTypeForCurrentDevice displayStyle:a3];
  }

  v10 = v7;

  return v10;
}

+ (id)routeGlyphWithSymbolType:()TelephonyUI displayStyle:
{
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v8 = [self routeGlyphWithSymbolType:a3 displayStyle:a4 color:labelColor];

  return v8;
}

+ (id)routeGlyphWithSymbolType:()TelephonyUI displayStyle:color:
{
  v8 = a5;
  v9 = 0;
  if (a4 > 1)
  {
    switch(a4)
    {
      case 2:
        v15 = MEMORY[0x1E69DDDC8];
        break;
      case 3:
        v15 = MEMORY[0x1E69DDD28];
        break;
      case 4:
        v10 = *MEMORY[0x1E69DDDC8];
        selfCopy2 = self;
        v12 = a3;
        v13 = 2;
        goto LABEL_12;
      default:
        goto LABEL_14;
    }

    v10 = *v15;
    selfCopy2 = self;
    v12 = a3;
    v13 = 3;
LABEL_12:
    v14 = [selfCopy2 tpImageForSymbolType:v12 textStyle:v10 scale:v13 symbolWeight:4];
    goto LABEL_13;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_14;
    }

    v14 = [self tpHierarchicalImageForSymbolType:a3 pointSize:32.0];
  }

  else
  {
    if ([self shouldBeHierarchicalSymbolType:a3])
    {
      [self hierarchicalImageForSymbolType:a3 color:v8];
    }

    else
    {
      [self flatImageForSymbolType:a3];
    }
    v14 = ;
  }

LABEL_13:
  v9 = v14;
LABEL_14:

  return v9;
}

+ (id)flatImageForSymbolType:()TelephonyUI
{
  v5 = [self isCustomSymbol:?];
  v6 = MEMORY[0x1E69DCAB8];
  if (v5)
  {
    v7 = [self customImageNameForSymbolType:a3];
    [v6 imageNamed:v7];
  }

  else
  {
    v7 = [self systemImageNameForSymbolType:a3];
    [v6 _systemImageNamed:v7];
  }
  v8 = ;
  v9 = [v8 imageWithRenderingMode:2];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v11 = [v9 imageWithTintColor:labelColor];

  return v11;
}

+ (id)hierarchicalImageForSymbolType:()TelephonyUI color:
{
  v6 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:a4];
  v7 = [self isCustomSymbol:a3];
  v8 = MEMORY[0x1E69DCAB8];
  if (v7)
  {
    v9 = [self customImageNameForSymbolType:a3];
    v10 = TelephonyUIBundle();
    v11 = [v8 imageNamed:v9 inBundle:v10 withConfiguration:v6];
    v12 = [v11 imageWithRenderingMode:2];
  }

  else
  {
    v9 = [self systemImageNameForSymbolType:a3];
    v10 = [v8 _systemImageNamed:v9 withConfiguration:v6];
    v12 = [v10 imageWithRenderingMode:2];
  }

  return v12;
}

+ (id)routeGlyphForDeviceType:()TelephonyUI displayStyle:
{
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v8 = [self routeGlyphForDeviceType:a3 displayStyle:a4 color:labelColor];

  return v8;
}

+ (uint64_t)symbolTypeForDeviceType:()TelephonyUI
{
  if ((a3 - 1) > 0x26)
  {
    return 0;
  }

  else
  {
    return qword_1B48EB880[a3 - 1];
  }
}

+ (uint64_t)systemImageNameForDeviceType:()TelephonyUI
{
  v2 = [self symbolTypeForDeviceType:?];

  return [self systemImageNameForSymbolType:v2];
}

+ (void)routeGlyphForModelId:()TelephonyUI displayStyle:completion:
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (v8 && [v8 length])
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__UIImage_TelephonyUI__routeGlyphForModelId_displayStyle_completion___block_invoke;
      v12[3] = &unk_1E7C0C230;
      v13 = v8;
      v14 = v9;
      v15 = a4;
      selfCopy = self;
      [self systemImageNameForModelId:v13 completion:v12];
    }

    else
    {
      v10 = TPDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        +[UIImage(TelephonyUI) routeGlyphForModelId:displayStyle:completion:];
      }

      (*(v9 + 2))(v9, 0);
    }
  }

  else
  {
    v11 = TPDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[UIImage(TelephonyUI) routeGlyphForModelId:displayStyle:completion:];
    }
  }
}

+ (id)tpImageForTextStyle:()TelephonyUI scale:symbolWeight:systemImageName:
{
  v10 = a3;
  v11 = a6;
  if (v11)
  {
    v12 = MEMORY[0x1E69DCAD8];
    v13 = [self scaleForTPScale:a4];
    if (a5)
    {
      [v12 tpConfigurationWithStaticTextStyle:v10 scale:v13 symbolWeight:a5];
    }

    else
    {
      [v12 tpConfigurationWithStaticTextStyle:v10 scale:v13];
    }
    v15 = ;
    v14 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v11 withConfiguration:v15];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_modelSymbolCache
{
  if (_modelSymbolCache_onceToken != -1)
  {
    +[UIImage(TelephonyUI) _modelSymbolCache];
  }

  v1 = _modelSymbolCache__symbolCache;

  return v1;
}

+ (void)systemImageNameForModelId:()TelephonyUI completion:
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v9 = TPDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[UIImage(TelephonyUI) routeGlyphForModelId:displayStyle:completion:];
    }

    goto LABEL_12;
  }

  if (v6 && [v6 length])
  {
    _modelSymbolCache = [self _modelSymbolCache];
    v9 = [_modelSymbolCache objectForKey:v6];

    if (v9)
    {
      v7[2](v7, v9);
    }

    else
    {
      v11 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__UIImage_TelephonyUI__systemImageNameForModelId_completion___block_invoke;
      block[3] = &unk_1E7C0C2A0;
      v13 = v6;
      selfCopy = self;
      v14 = v7;
      dispatch_async(v11, block);
    }

LABEL_12:

    goto LABEL_13;
  }

  v10 = TPDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    +[UIImage(TelephonyUI) routeGlyphForModelId:displayStyle:completion:];
  }

  v7[2](v7, 0);
LABEL_13:
}

+ (id)systemImageNameForModelIdSync:()TelephonyUI
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    _modelSymbolCache = [self _modelSymbolCache];
    v7 = [_modelSymbolCache objectForKey:v5];

    if (v7)
    {
      v7 = v7;
      name = v7;
    }

    else
    {
      v10 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:v5];
      v11 = v10;
      if (v10)
      {
        v12 = MEMORY[0x1E69A8A40];
        identifier = [v10 identifier];
        v18 = 0;
        v14 = [v12 symbolForTypeIdentifier:identifier withResolutionStrategy:1 variantOptions:1 error:&v18];
        v15 = v18;

        if (v15 || !v14)
        {
          v17 = TPDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            +[UIImage(TelephonyUI) systemImageNameForModelIdSync:];
          }

          name = 0;
        }

        else
        {
          name = [v14 name];
          _modelSymbolCache2 = [self _modelSymbolCache];
          [_modelSymbolCache2 setObject:name forKey:v5];

          v17 = TPDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            +[UIImage(TelephonyUI) systemImageNameForModelIdSync:];
          }
        }
      }

      else
      {
        name = 0;
        v15 = 0;
      }
    }
  }

  else
  {
    v7 = TPDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[UIImage(TelephonyUI) routeGlyphForModelId:displayStyle:completion:];
    }

    name = 0;
  }

  return name;
}

+ (id)routeGlyphForDeviceType:()TelephonyUI displayStyle:color:
{
  v8 = a5;
  v9 = [self symbolTypeForDeviceType:a3];
  if (v9)
  {
    v10 = [self routeGlyphWithSymbolType:v9 displayStyle:a4 color:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (uint64_t)scaleForTPScale:()TelephonyUI
{
  if ((a3 + 1) >= 5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (id)tpImageForSymbolType:()TelephonyUI textStyle:scale:isStaticSize:
{
  v10 = MEMORY[0x1E69DC888];
  v11 = a4;
  labelColor = [v10 labelColor];
  v13 = [self tpImageForSymbolType:a3 textStyle:v11 scale:a5 hierarchicalColor:labelColor isStaticSize:a6];

  return v13;
}

+ (id)tpImageForSymbolType:()TelephonyUI textStyle:scale:hierarchicalColor:isStaticSize:
{
  v12 = a4;
  v13 = a6;
  if (a7)
  {
    v14 = [self shouldBeHierarchicalSymbolType:a3];
    v15 = MEMORY[0x1E69DCAD8];
    v16 = [self scaleForTPScale:a5];
    if (v14)
    {
      [v15 hierarchicalTpConfigurationWithStaticTextStyle:v12 scale:v16 color:v13];
    }

    else
    {
      [v15 tpConfigurationWithStaticTextStyle:v12 scale:v16];
    }
    v17 = ;
  }

  else
  {
    v17 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v12 scale:{objc_msgSend(self, "scaleForTPScale:", a5)}];
  }

  v18 = v17;
  v19 = [self tpImageForSymbolType:a3 configuration:v17];

  return v19;
}

+ (id)tpImageForSymbolType:()TelephonyUI textStyle:scale:paletteColors:isStaticSize:
{
  v12 = a4;
  v13 = a6;
  if (a7)
  {
    v14 = [self shouldBeHierarchicalSymbolType:a3];
    v15 = MEMORY[0x1E69DCAD8];
    v16 = [self scaleForTPScale:a5];
    if (v14)
    {
      [v15 paletteTpConfigurationWithStaticTextStyle:v12 scale:v16 colors:v13];
    }

    else
    {
      [v15 tpConfigurationWithStaticTextStyle:v12 scale:v16];
    }
    v17 = ;
  }

  else
  {
    v17 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v12 scale:{objc_msgSend(self, "scaleForTPScale:", a5)}];
  }

  v18 = v17;
  v19 = [self tpImageForSymbolType:a3 configuration:v17];

  return v19;
}

+ (id)tpImageForSymbolType:()TelephonyUI scale:paletteColors:
{
  v8 = MEMORY[0x1E69DCAD8];
  v9 = a5;
  v10 = [v8 configurationWithScale:{objc_msgSend(self, "scaleForTPScale:", a4)}];
  v11 = [MEMORY[0x1E69DCAD8] configurationWithPaletteColors:v9];

  v12 = [v10 configurationByApplyingConfiguration:v11];

  v13 = [self tpImageForSymbolType:a3 configuration:v12];

  return v13;
}

+ (id)tpImageForSymbolType:()TelephonyUI textStyle:scale:symbolWeight:
{
  v10 = MEMORY[0x1E69DCAD8];
  v11 = a4;
  v12 = [self scaleForTPScale:a5];
  if (a6)
  {
    [v10 tpConfigurationWithStaticTextStyle:v11 scale:v12 symbolWeight:a6];
  }

  else
  {
    [v10 tpConfigurationWithStaticTextStyle:v11 scale:v12];
  }
  v13 = ;

  v14 = [self tpImageForSymbolType:a3 configuration:v13];

  return v14;
}

+ (id)tpImageForGameControllerSFSymbol:()TelephonyUI textStyle:scale:symbolWeight:
{
  v10 = MEMORY[0x1E69DCAD8];
  v11 = a4;
  v12 = a3;
  v13 = [self scaleForTPScale:a5];
  if (a6)
  {
    [v10 tpConfigurationWithStaticTextStyle:v11 scale:v13 symbolWeight:a6];
  }

  else
  {
    [v10 tpConfigurationWithStaticTextStyle:v11 scale:v13];
  }
  v14 = ;

  v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:v12 withConfiguration:v14];

  return v15;
}

+ (id)tpImageForSymbolType:()TelephonyUI textStyle:cappedAt:
{
  v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:a4 maximumContentSizeCategory:a5];
  fontDescriptor = [v7 fontDescriptor];
  fontAttributes = [fontDescriptor fontAttributes];
  v10 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB8F0]];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
  [v11 floatValue];
  v13 = v12;

  v14 = MEMORY[0x1E69DCAD8];
  fontDescriptor2 = [v7 fontDescriptor];
  pointSize = [fontDescriptor2 pointSize];
  v18 = [v14 configurationWithPointSize:MEMORY[0x1B8C79DB0](pointSize weight:{v13), v17}];

  v19 = [self tpImageForSymbolType:a3 configuration:v18];

  return v19;
}

+ (id)tpImageForSymbolType:()TelephonyUI pointSize:
{
  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:?];
  v6 = [self tpImageForSymbolType:a3 configuration:v5];

  return v6;
}

+ (id)tpHierarchicalImageForSymbolType:()TelephonyUI pointSize:
{
  if ([self isIPad])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x1E69DCAB8] tpHierarchicalImageForSymbolType:a4 pointSize:v6 scale:a2];

  return v7;
}

+ (id)tpHierarchicalImageForSymbolType:()TelephonyUI pointSize:scale:
{
  if ([self shouldBeHierarchicalSymbolType:?])
  {
    v9 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:2 scale:a2];
    v10 = MEMORY[0x1E69DCAD8];
    systemBlackColor = [MEMORY[0x1E69DC888] systemBlackColor];
    v12 = [v10 configurationWithHierarchicalColor:systemBlackColor];
    v13 = [v12 configurationByApplyingConfiguration:v9];

    v14 = [self tpImageForSymbolType:a4 configuration:v13];
  }

  else
  {
    v15 = *MEMORY[0x1E69DDD58];
    [self isIPad];
    v14 = [self tpImageForSymbolType:a4 textStyle:v15 scale:a5 isStaticSize:1];
  }

  return v14;
}

+ (id)tpImageForSymbolType:()TelephonyUI configuration:
{
  v6 = a4;
  if ([self isCustomSymbol:a3])
  {
    v7 = [self customImageNameForSymbolType:a3];
    v8 = MEMORY[0x1E69DCAB8];
    v9 = TelephonyUIBundle();
    [v8 imageNamed:v7 inBundle:v9 withConfiguration:v6];
  }

  else
  {
    v7 = [self systemImageNameForSymbolType:a3];
    v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v7];
    [v9 imageWithConfiguration:v6];
  }
  v10 = ;

  return v10;
}

+ (__CFString)systemImageNameForSymbolType:()TelephonyUI
{
  symbolNameForCurrentDevice = &stru_1F2CA8008;
  switch(a3)
  {
    case 0:
      break;
    case 1:
    case 85:
      symbolNameForCurrentDevice = @"phone.fill";
      break;
    case 2:
      symbolNameForCurrentDevice = @"phone.down.fill";
      break;
    case 3:
      symbolNameForCurrentDevice = @"phone.down.circle.fill";
      break;
    case 4:
      v5 = _os_feature_enabled_impl();
      v6 = @"phone.arrow.up.right.fill";
      goto LABEL_64;
    case 5:
    case 87:
      symbolNameForCurrentDevice = @"video.fill";
      break;
    case 6:
      v5 = _os_feature_enabled_impl();
      v6 = @"arrow.up.right.video.fill";
LABEL_64:
      v7 = @"arrow.up.right";
      goto LABEL_83;
    case 7:
      symbolNameForCurrentDevice = @"questionmark.video.fill";
      break;
    case 8:
    case 9:
    case 11:
      symbolNameForCurrentDevice = @"xmark";
      break;
    case 10:
      symbolNameForCurrentDevice = @"checkmark";
      break;
    case 12:
    case 46:
      symbolNameForCurrentDevice = @"speaker.wave.3.fill";
      break;
    case 13:
      symbolNameForCurrentDevice = @"person.crop.circle";
      break;
    case 14:
      symbolNameForCurrentDevice = @"message.fill";
      break;
    case 15:
      symbolNameForCurrentDevice = @"hand.raised.fill";
      break;
    case 16:
      symbolNameForCurrentDevice = @"envelope.fill";
      break;
    case 17:
      symbolNameForCurrentDevice = @"plus";
      break;
    case 18:
      symbolNameForCurrentDevice = @"person.crop.circle.badge.plus";
      break;
    case 19:
      symbolNameForCurrentDevice = @"circle.grid.3x3.fill";
      break;
    case 20:
      symbolNameForCurrentDevice = @"arrow.merge";
      break;
    case 21:
      symbolNameForCurrentDevice = @"arrow.swap";
      break;
    case 22:
      symbolNameForCurrentDevice = @"mic.slash.fill";
      break;
    case 23:
      symbolNameForCurrentDevice = @"delete.backward.fill";
      break;
    case 24:
      symbolNameForCurrentDevice = @"backward.end.fill";
      break;
    case 25:
    case 82:
      symbolNameForCurrentDevice = @"play.fill";
      break;
    case 26:
      symbolNameForCurrentDevice = @"pause.fill";
      break;
    case 27:
      symbolNameForCurrentDevice = @"square.and.arrow.up";
      break;
    case 28:
      symbolNameForCurrentDevice = @"info.circle";
      break;
    case 29:
      symbolNameForCurrentDevice = @"teletype";
      break;
    case 30:
      symbolNameForCurrentDevice = @"realtimetext";
      break;
    case 31:
      symbolNameForCurrentDevice = @"recordingtape";
      break;
    case 32:
      symbolNameForCurrentDevice = @"volume.2.fill";
      break;
    case 33:
      symbolNameForCurrentDevice = @"trash.fill";
      break;
    case 34:
      symbolNameForCurrentDevice = @"trash.slash.fill";
      break;
    case 35:
      symbolNameForCurrentDevice = @"exclamationmark.bubble";
      break;
    case 36:
      symbolNameForCurrentDevice = @"checkmark.square.fill";
      break;
    case 37:
      symbolNameForCurrentDevice = @"chevron.forward";
      break;
    case 38:
      symbolNameForCurrentDevice = @"staroflife.fill";
      break;
    case 39:
      symbolNameForCurrentDevice = @"alarm.fill";
      break;
    case 40:
      symbolNameForCurrentDevice = @"xmark.circle.fill";
      break;
    case 41:
      symbolNameForCurrentDevice = @"hourglass.tophalf.fill";
      break;
    case 42:
      symbolNameForCurrentDevice = @"hourglass";
      break;
    case 43:
      symbolNameForCurrentDevice = @"exclamationmark.triangle";
      break;
    case 44:
      symbolNameForCurrentDevice = @"speaker.bluetooth.fill";
      break;
    case 45:
      symbolNameForCurrentDevice = @"carplay";
      break;
    case 47:
      symbolNameForCurrentDevice = @"airpods";
      break;
    case 48:
    case 76:
      symbolNameForCurrentDevice = @"airpodspro";
      break;
    case 49:
      symbolNameForCurrentDevice = @"airpodsmax";
      break;
    case 50:
      symbolNameForCurrentDevice = @"beats.powerbeats";
      break;
    case 51:
      symbolNameForCurrentDevice = @"beats.powerbeatspro.right";
      break;
    case 52:
      symbolNameForCurrentDevice = @"beats.logo";
      break;
    case 53:
      symbolNameForCurrentDevice = @"beats.pill.fill";
      break;
    case 54:
      symbolNameForCurrentDevice = @"beats.earphones";
      break;
    case 55:
      symbolNameForCurrentDevice = @"beats.headphones";
      break;
    case 56:
      symbolNameForCurrentDevice = @"headphones";
      break;
    case 57:
    case 74:
      symbolNameForCurrentDevice = @"homepod.fill";
      break;
    case 58:
    case 75:
      symbolNameForCurrentDevice = @"homepod.2.fill";
      break;
    case 59:
      symbolNameForCurrentDevice = @"homepodmini.fill";
      break;
    case 60:
      symbolNameForCurrentDevice = @"homepodmini.2.fill";
      break;
    case 61:
      symbolNameForCurrentDevice = @"applewatch.side.right";
      break;
    case 62:
      symbolNameForCurrentDevice = @"desktopcomputer";
      break;
    case 63:
      symbolNameForCurrentDevice = @"macbook.gen2";
      break;
    case 64:
      symbolNameForCurrentDevice = @"ipad";
      break;
    case 65:
      symbolNameForCurrentDevice = @"ipad.homebutton";
      break;
    case 66:
      symbolNameForCurrentDevice = @"iphone";
      break;
    case 67:
      symbolNameForCurrentDevice = @"iphone.homebutton";
      break;
    case 68:
      symbolNameForCurrentDevice = @"ipodtouch";
      break;
    case 69:
      symbolNameForCurrentDevice = @"beats.powerbeats3";
      break;
    case 70:
      symbolNameForCurrentDevice = @"beats.studiobuds";
      break;
    case 71:
      symbolNameForCurrentDevice = @"beats.solobuds";
      break;
    case 72:
    case 79:
      symbolNameForCurrentDevice = @"beats.fit.pro";
      break;
    case 73:
      symbolNameForCurrentDevice = @"airpods.gen3";
      break;
    case 77:
      symbolNameForCurrentDevice = @"40262ECA475D4CCF9722443885EC78D8";
      break;
    case 78:
      symbolNameForCurrentDevice = @"95B33B9C3A4D472CBFCABF219ACA88CC";
      break;
    case 80:
      symbolNameForCurrentDevice = @"711495D10BB643F6BDA3693886C0BCAF";
      break;
    case 81:
      symbolNameForCurrentDevice = [self symbolNameForCurrentDevice];
      break;
    case 83:
      symbolNameForCurrentDevice = @"eye.slash.fill";
      break;
    case 84:
      symbolNameForCurrentDevice = @"circle.fill";
      break;
    case 86:
      v5 = _os_feature_enabled_impl();
      v6 = @"phone.arrow.down.left.fill";
      goto LABEL_82;
    case 88:
      v5 = _os_feature_enabled_impl();
      v6 = @"arrow.down.left.video.fill";
LABEL_82:
      v7 = @"arrow.down.left";
LABEL_83:
      if (v5)
      {
        symbolNameForCurrentDevice = v7;
      }

      else
      {
        symbolNameForCurrentDevice = v6;
      }

      break;
    case 89:
      symbolNameForCurrentDevice = @"person.text.rectangle.fill";
      break;
    case 90:
      symbolNameForCurrentDevice = @"photo.fill.on.rectangle.fill";
      break;
    case 91:
      symbolNameForCurrentDevice = @"rectangle.inset.filled.and.person.filled";
      break;
    case 92:
      symbolNameForCurrentDevice = @"vision.pro";
      break;
    case 93:
    case 94:
      symbolNameForCurrentDevice = @"ellipsis";
      break;
    case 95:
      symbolNameForCurrentDevice = @"waveform.bubble.fill";
      break;
    case 96:
      symbolNameForCurrentDevice = @"arrowshape.turn.up.left.fill";
      break;
    case 97:
      symbolNameForCurrentDevice = @"message";
      break;
    default:
      symbolNameForCurrentDevice = 0;
      break;
  }

  return symbolNameForCurrentDevice;
}

+ (id)symbolNameForCurrentDevice
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UIImage_TelephonyUI__symbolNameForCurrentDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (symbolNameForCurrentDevice_onceToken != -1)
  {
    dispatch_once(&symbolNameForCurrentDevice_onceToken, block);
  }

  v1 = symbolNameForCurrentDevice_symbolName;

  return v1;
}

+ (uint64_t)fallbackSymbolTypeForCurrentDevice
{
  if (fallbackSymbolTypeForCurrentDevice_onceToken != -1)
  {
    +[UIImage(TelephonyUI) fallbackSymbolTypeForCurrentDevice];
  }

  return fallbackSymbolTypeForCurrentDevice_symbolType;
}

- (id)imageWithEtchedBorderOfColor:()TelephonyUI radius:
{
  v6 = a4;
  [self size];
  v9 = v8 + a2 * 2.0;
  v10 = a2 <= 0.0;
  if (a2 <= 0.0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v7 + a2 * 2.0;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  [self scale];
  v14 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__UIImage_TelephonyUI__imageWithEtchedBorderOfColor_radius___block_invoke;
  v18[3] = &unk_1E7C0C2C8;
  v18[4] = self;
  v19 = v6;
  v15 = v6;
  v16 = TPCreateImageWithDrawing(v18, v11, v12, v14);

  return v16;
}

- (id)imageWithShadow:()TelephonyUI
{
  v4 = a3;
  selfCopy = self;
  [v4 shadowOffset];
  v7 = v6;
  v9 = v8;
  v10 = -v8;
  [v4 shadowBlurRadius];
  v12 = v11;
  [selfCopy scale];
  v14 = v13;
  [selfCopy size];
  v17 = fabs(v9);
  if (v9 <= 0.0)
  {
    v17 = 0.0;
  }

  v18 = v15 + v12 * 2.0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __40__UIImage_TelephonyUI__imageWithShadow___block_invoke;
  v24[3] = &unk_1E7C0C2F0;
  v27 = v12;
  v28 = v14;
  v29 = v7;
  v30 = v10;
  v19 = v16 + v17 + v12 * 2.0;
  v25 = v4;
  v26 = selfCopy;
  v20 = selfCopy;
  v21 = v4;
  v22 = TPCreateImageWithDrawing(v24, v18, v19, v14);

  return v22;
}

+ (id)telephonyUIImageNamed:()TelephonyUI
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleWithIdentifier:@"com.apple.TelephonyUI"];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v9 = [self imageNamed:v5 inBundle:v6 compatibleWithTraitCollection:traitCollection];

  return v9;
}

- (id)tpFlattenedWithColor:()TelephonyUI
{
  v4 = a3;
  v5 = [self imageWithRenderingMode:1];
  v6 = [v5 imageWithTintColor:v4];

  return v6;
}

+ (id)genericBusinessLogo
{
  if (genericBusinessLogo_onceToken != -1)
  {
    +[UIImage(TelephonyUI) genericBusinessLogo];
  }

  v1 = genericBusinessLogo___businessLogo;

  return v1;
}

+ (void)currentDeviceRouteGlyphForDisplayStyle:()TelephonyUI .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 symbolNameForCurrentDevice];
  OUTLINED_FUNCTION_0();
  v8 = 2048;
  v9 = a2;
  _os_log_error_impl(&dword_1B4894000, a3, OS_LOG_TYPE_ERROR, "Failed to find current device route glyph with symbol name %@. Using fallback symbol type %zd.", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)routeGlyphForModelId:()TelephonyUI displayStyle:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B4894000, v0, v1, "Invalid modelIdentifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)routeGlyphForModelId:()TelephonyUI displayStyle:completion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1B4894000, v0, v1, "No completion block provided for modelIdentifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)systemImageNameForModelIdSync:()TelephonyUI .cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B4894000, v0, v1, "Sync IconServices failed for model: %@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)systemImageNameForModelIdSync:()TelephonyUI .cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B4894000, v0, v1, "Sync resolved and cached symbol '%@' for model: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end