@interface PXLemonadeOneUpSettings
+ (BOOL)isOneUpRefreshEnabled;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXLemonadeOneUpSettings

- (void)setDefaultValues
{
  v9.receiver = self;
  v9.super_class = PXLemonadeOneUpSettings;
  v3 = [(PTSettings *)&v9 setDefaultValues];
  v4 = MEMORY[0x1A590D320](v3);
  if (v4)
  {
    v5 = PFIsCameraMessagesApp() ^ 1;
  }

  else
  {
    v5 = 0;
  }

  if (PFIsPhotosAppAnyPlatform() & 1) != 0 || (PFIsCamera())
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = PFIsPreferences() | v5;
  }

  [(PXLemonadeOneUpSettings *)self setInternal_isOneUpRefreshEnabled:v6 & 1];
  v7 = 1;
  [(PXLemonadeOneUpSettings *)self setChromeLibraryScrubberEnabled:1];
  [(PXLemonadeOneUpSettings *)self setChromeLibraryScrubberHiddenWhileZoomed:1];
  [(PXLemonadeOneUpSettings *)self setChromeEDRBoostBehavior:3];
  [(PXLemonadeOneUpSettings *)self setVideoControlsEDRBoostBehavior:3];
  [(PXLemonadeOneUpSettings *)self setChromeButtonsEDRBoost:2.0];
  [(PXLemonadeOneUpSettings *)self setChromeTitleEDRBoost:3.0];
  [(PXLemonadeOneUpSettings *)self setChromeVideoControlsEDRBoost:3.0];
  [(PXLemonadeOneUpSettings *)self setMinimumDurationForVideoLooping:1.0];
  [(PXLemonadeOneUpSettings *)self setMinimumMarginForInsetContent:12.0];
  [(PXLemonadeOneUpSettings *)self setInsetContentCornerRadius:5.0];
  [(PXLemonadeOneUpSettings *)self setInsetContentBorderWidth:1.0];
  [(PXLemonadeOneUpSettings *)self setInsetContentBorderOpacityDarkMode:0.1];
  [(PXLemonadeOneUpSettings *)self setInsetContentBorderOpacityLightMode:0.05];
  [(PXLemonadeOneUpSettings *)self setInsetAllContent:0];
  [(PXLemonadeOneUpSettings *)self setDebugBarKindRawValue:0x7FFFFFFFFFFFFFFFLL];
  [(PXLemonadeOneUpSettings *)self setEnableClearMagicPocket:1];
  [(PXLemonadeOneUpSettings *)self setEnableLegibilityBlur:1];
  [(PXLemonadeOneUpSettings *)self setLegibilityBlurCurve:4];
  [(PXLemonadeOneUpSettings *)self setLegibilityBlurRadius:5.0];
  [(PXLemonadeOneUpSettings *)self setLegibilityBlurDistanceToBaseline:20.0];
  [(PXLemonadeOneUpSettings *)self setLegibilityTintCurve:4];
  [(PXLemonadeOneUpSettings *)self setLegibilityTintOpacity:0.75];
  [(PXLemonadeOneUpSettings *)self setDismissalFractionForHidingChrome:0.05];
  [(PXLemonadeOneUpSettings *)self setVideoScrubberPaletteShadowOpacity:0.2];
  [(PXLemonadeOneUpSettings *)self setVideoScrubberPaletteShadowBlurRadius:12.0];
  [(PXLemonadeOneUpSettings *)self setVideoScrubberPaletteShadowOffsetX:0.0];
  [(PXLemonadeOneUpSettings *)self setVideoScrubberPaletteShadowOffsetY:2.0];
  [(PXLemonadeOneUpSettings *)self setVideoScrubberTrackShadowOpacity:0.2];
  [(PXLemonadeOneUpSettings *)self setVideoScrubberTrackShadowBlurRadius:12.0];
  [(PXLemonadeOneUpSettings *)self setVideoScrubberTrackShadowOffsetX:0.0];
  [(PXLemonadeOneUpSettings *)self setVideoScrubberTrackShadowOffsetY:2.0];
  [(PXLemonadeOneUpSettings *)self setMinimumVideoScrubberWidth:200.0];
  [(PXLemonadeOneUpSettings *)self setShowPlaybackRateButton:0];
  [(PXLemonadeOneUpSettings *)self setShowAudioMixButton:0];
  [(PXLemonadeOneUpSettings *)self setLoopAllVideos:1];
  [(PXLemonadeOneUpSettings *)self setEnableSideCommentsInLandscape:1];
  [(PXLemonadeOneUpSettings *)self setShowChromeSafeAreaBox:0];
  [(PXLemonadeOneUpSettings *)self setShowChromeMarginsBox:0];
  [(PXLemonadeOneUpSettings *)self setShowLegibilityGradientBorders:0];
  [(PXLemonadeOneUpSettings *)self setDoubleTapFillsScreen:1];
  [(PXLemonadeOneUpSettings *)self setShowSaveVideoFrameAction:0];
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if (!v4)
  {
    v7 = 2;
  }

  [(PXLemonadeOneUpSettings *)self setInsetMode:v8];
  [(PXLemonadeOneUpSettings *)self setScreenshotInsetMode:v7];
  [(PXLemonadeOneUpSettings *)self setRegularSizeClassInsetMode:v4 ^ 1];
  [(PXLemonadeOneUpSettings *)self setEnableSystemBars:v4];
  [(PXLemonadeOneUpSettings *)self setShowSharedLibraryStatusInSubtitle:v4];
}

+ (BOOL)isOneUpRefreshEnabled
{
  v2 = +[PXLemonadeOneUpSettings sharedInstance];
  v3 = [v2 internal_isOneUpRefreshEnabled];

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_23957 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_23957, &__block_literal_global_23958);
  }

  v3 = sharedInstance_sharedInstance_23959;

  return v3;
}

void __41__PXLemonadeOneUpSettings_sharedInstance__block_invoke()
{
  v2 = +[PXLemonadeSettings sharedInstance];
  v0 = [v2 oneUpSettings];
  v1 = sharedInstance_sharedInstance_23959;
  sharedInstance_sharedInstance_23959 = v0;
}

@end