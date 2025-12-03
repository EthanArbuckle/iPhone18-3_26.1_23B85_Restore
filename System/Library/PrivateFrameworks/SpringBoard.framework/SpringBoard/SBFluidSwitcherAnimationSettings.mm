@interface SBFluidSwitcherAnimationSettings
+ (id)settingsControllerModule;
- (double)homeScreenAlphaForMode:(int64_t)mode;
- (double)homeScreenBlurProgressForMode:(int64_t)mode;
- (double)homeScreenDimmingAlphaForMode:(int64_t)mode;
- (double)homeScreenScaleForMode:(int64_t)mode;
- (double)wallpaperScaleForMode:(int64_t)mode;
- (void)_setEntityPresentationDefaultValues;
- (void)_setGenieAnimationDefaultValues;
- (void)_setHomeGestureAnimationDefaultValues;
- (void)_setKeyboardShortcutDefaultValues;
- (void)_setTopAffordanceTransitionDefaultValues;
- (void)setDefaultValues;
@end

@implementation SBFluidSwitcherAnimationSettings

- (void)setDefaultValues
{
  v173 = *MEMORY[0x277D85DE8];
  layoutSettings = [(SBFluidSwitcherAnimationSettings *)self layoutSettings];
  [layoutSettings setDefaultValues];

  layoutSettings2 = [(SBFluidSwitcherAnimationSettings *)self layoutSettings];
  v174 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [layoutSettings2 setFrameRateRange:1114113 highFrameRateReason:{*&v174.minimum, *&v174.maximum, *&v174.preferred}];

  zoomUpSettings = [(SBFluidSwitcherAnimationSettings *)self zoomUpSettings];
  [zoomUpSettings setDefaultCriticallyDampedValues];

  zoomUpSettings2 = [(SBFluidSwitcherAnimationSettings *)self zoomUpSettings];
  v175 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [zoomUpSettings2 setFrameRateRange:1114114 highFrameRateReason:{*&v175.minimum, *&v175.maximum, *&v175.preferred}];

  iconZoomDownSettings = [(SBFluidSwitcherAnimationSettings *)self iconZoomDownSettings];
  [iconZoomDownSettings setDefaultCriticallyDampedValues];

  centerZoomSettings = [(SBFluidSwitcherAnimationSettings *)self centerZoomSettings];
  [centerZoomSettings setDefaultCriticallyDampedValues];

  centerZoomSettings2 = [(SBFluidSwitcherAnimationSettings *)self centerZoomSettings];
  v176 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [centerZoomSettings2 setFrameRateRange:1114113 highFrameRateReason:{*&v176.minimum, *&v176.maximum, *&v176.preferred}];

  slideOverSettings = [(SBFluidSwitcherAnimationSettings *)self slideOverSettings];
  [slideOverSettings setDefaultCriticallyDampedValues];

  slideOverSettings2 = [(SBFluidSwitcherAnimationSettings *)self slideOverSettings];
  v177 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [slideOverSettings2 setFrameRateRange:1114113 highFrameRateReason:{*&v177.minimum, *&v177.maximum, *&v177.preferred}];

  toggleAppSwitcherSettings = [(SBFluidSwitcherAnimationSettings *)self toggleAppSwitcherSettings];
  [toggleAppSwitcherSettings setDefaultCriticallyDampedValues];

  toggleAppSwitcherSettings2 = [(SBFluidSwitcherAnimationSettings *)self toggleAppSwitcherSettings];
  v178 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [toggleAppSwitcherSettings2 setFrameRateRange:1114113 highFrameRateReason:{*&v178.minimum, *&v178.maximum, *&v178.preferred}];

  launchAppFromSwitcherSettings = [(SBFluidSwitcherAnimationSettings *)self launchAppFromSwitcherSettings];
  [launchAppFromSwitcherSettings setDefaultCriticallyDampedValues];

  launchAppFromSwitcherSettings2 = [(SBFluidSwitcherAnimationSettings *)self launchAppFromSwitcherSettings];
  v179 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [launchAppFromSwitcherSettings2 setFrameRateRange:1114114 highFrameRateReason:{*&v179.minimum, *&v179.maximum, *&v179.preferred}];

  continuityBannerSlideUpSettings = [(SBFluidSwitcherAnimationSettings *)self continuityBannerSlideUpSettings];
  [continuityBannerSlideUpSettings setDampingRatio:1.0];

  continuityBannerSlideUpSettings2 = [(SBFluidSwitcherAnimationSettings *)self continuityBannerSlideUpSettings];
  [continuityBannerSlideUpSettings2 setResponse:0.4];

  continuityBannerSlideUpSettings3 = [(SBFluidSwitcherAnimationSettings *)self continuityBannerSlideUpSettings];
  v180 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [continuityBannerSlideUpSettings3 setFrameRateRange:1114114 highFrameRateReason:{*&v180.minimum, *&v180.maximum, *&v180.preferred}];

  stackedSwitcherTrackingSettings = [(SBFluidSwitcherAnimationSettings *)self stackedSwitcherTrackingSettings];
  [stackedSwitcherTrackingSettings setTrackingDampingRatio:1.2];

  stackedSwitcherTrackingSettings2 = [(SBFluidSwitcherAnimationSettings *)self stackedSwitcherTrackingSettings];
  [stackedSwitcherTrackingSettings2 setTrackingResponse:0.14];

  stackedSwitcherTrackingSettings3 = [(SBFluidSwitcherAnimationSettings *)self stackedSwitcherTrackingSettings];
  v181 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [stackedSwitcherTrackingSettings3 setFrameRateRange:1114113 highFrameRateReason:{*&v181.minimum, *&v181.maximum, *&v181.preferred}];

  splitViewHandleFadeOutSettings = [(SBFluidSwitcherAnimationSettings *)self splitViewHandleFadeOutSettings];
  [splitViewHandleFadeOutSettings setDampingRatio:1.0];

  splitViewHandleFadeOutSettings2 = [(SBFluidSwitcherAnimationSettings *)self splitViewHandleFadeOutSettings];
  [splitViewHandleFadeOutSettings2 setResponse:0.08];

  splitViewHandleFadeOutSettings3 = [(SBFluidSwitcherAnimationSettings *)self splitViewHandleFadeOutSettings];
  v182 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [splitViewHandleFadeOutSettings3 setFrameRateRange:1114113 highFrameRateReason:{*&v182.minimum, *&v182.maximum, *&v182.preferred}];

  splitViewHandleFadeInSettings = [(SBFluidSwitcherAnimationSettings *)self splitViewHandleFadeInSettings];
  [splitViewHandleFadeInSettings setDampingRatio:1.0];

  splitViewHandleFadeInSettings2 = [(SBFluidSwitcherAnimationSettings *)self splitViewHandleFadeInSettings];
  [splitViewHandleFadeInSettings2 setResponse:0.3];

  splitViewHandleFadeInSettings3 = [(SBFluidSwitcherAnimationSettings *)self splitViewHandleFadeInSettings];
  v183 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [splitViewHandleFadeInSettings3 setFrameRateRange:1114113 highFrameRateReason:{*&v183.minimum, *&v183.maximum, *&v183.preferred}];

  [(SBFluidSwitcherAnimationSettings *)self _setTopAffordanceTransitionDefaultValues];
  [(SBFluidSwitcherAnimationSettings *)self _setEntityPresentationDefaultValues];
  [(SBFluidSwitcherAnimationSettings *)self _setKeyboardShortcutDefaultValues];
  [(SBFluidSwitcherAnimationSettings *)self _setGenieAnimationDefaultValues];
  [(SBFluidSwitcherAnimationSettings *)self _setHomeGestureAnimationDefaultValues];
  dosidoSettings = [(SBFluidSwitcherAnimationSettings *)self dosidoSettings];
  [dosidoSettings setDampingRatio:1.0];

  dosidoSettings2 = [(SBFluidSwitcherAnimationSettings *)self dosidoSettings];
  [dosidoSettings2 setResponse:0.442];

  dosidoSettings3 = [(SBFluidSwitcherAnimationSettings *)self dosidoSettings];
  v184 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [dosidoSettings3 setFrameRateRange:1114116 highFrameRateReason:{*&v184.minimum, *&v184.maximum, *&v184.preferred}];

  dosidoScaleDownSettings = [(SBFluidSwitcherAnimationSettings *)self dosidoScaleDownSettings];
  [dosidoScaleDownSettings setDampingRatio:1.0];

  dosidoScaleDownSettings2 = [(SBFluidSwitcherAnimationSettings *)self dosidoScaleDownSettings];
  [dosidoScaleDownSettings2 setResponse:0.331];

  dosidoScaleDownSettings3 = [(SBFluidSwitcherAnimationSettings *)self dosidoScaleDownSettings];
  v185 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [dosidoScaleDownSettings3 setFrameRateRange:1114116 highFrameRateReason:{*&v185.minimum, *&v185.maximum, *&v185.preferred}];

  dosidoScaleUpSettings = [(SBFluidSwitcherAnimationSettings *)self dosidoScaleUpSettings];
  [dosidoScaleUpSettings setDampingRatio:1.0];

  dosidoScaleUpSettings2 = [(SBFluidSwitcherAnimationSettings *)self dosidoScaleUpSettings];
  [dosidoScaleUpSettings2 setResponse:0.491];

  dosidoScaleUpSettings3 = [(SBFluidSwitcherAnimationSettings *)self dosidoScaleUpSettings];
  v186 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [dosidoScaleUpSettings3 setFrameRateRange:1114116 highFrameRateReason:{*&v186.minimum, *&v186.maximum, *&v186.preferred}];

  [(SBFluidSwitcherAnimationSettings *)self setDosidoScale:0.8];
  [(SBFluidSwitcherAnimationSettings *)self setDosidoScaleUpDelay:0.137];
  crossblurDosidoSettings = [(SBFluidSwitcherAnimationSettings *)self crossblurDosidoSettings];
  [crossblurDosidoSettings setDampingRatio:1.0];

  crossblurDosidoSettings2 = [(SBFluidSwitcherAnimationSettings *)self crossblurDosidoSettings];
  [crossblurDosidoSettings2 setResponse:0.442];

  crossblurDosidoSettings3 = [(SBFluidSwitcherAnimationSettings *)self crossblurDosidoSettings];
  v187 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [crossblurDosidoSettings3 setFrameRateRange:1114116 highFrameRateReason:{*&v187.minimum, *&v187.maximum, *&v187.preferred}];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(SBFluidSwitcherAnimationSettings *)self setCrossblurDosidoSmallScale:dbl_21F8A5730[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1]];
  if (__sb__runningInSpringBoard())
  {
    v42 = SBFEffectiveDeviceClass();
    v43 = 0.92;
    if (v42 != 2)
    {
      v43 = 0.5;
    }

    [(SBFluidSwitcherAnimationSettings *)self setCrossblurDosidoCenterZoomUpSmallScale:v43];
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];
    v46 = 0.92;
    if (userInterfaceIdiom2 != 1)
    {
      v46 = 0.5;
    }

    [(SBFluidSwitcherAnimationSettings *)self setCrossblurDosidoCenterZoomUpSmallScale:v46];
  }

  [(SBFluidSwitcherAnimationSettings *)self setCrossblurDosidoLargeScale:1.1];
  [(SBFluidSwitcherAnimationSettings *)self setCrossblurDosidoBlurRadius:6.0];
  [(SBFluidSwitcherAnimationSettings *)self setCrossblurRasterizationScale:0.8];
  crossfadeDosidoSettings = [(SBFluidSwitcherAnimationSettings *)self crossfadeDosidoSettings];
  [crossfadeDosidoSettings setDampingRatio:1.0];

  crossfadeDosidoSettings2 = [(SBFluidSwitcherAnimationSettings *)self crossfadeDosidoSettings];
  [crossfadeDosidoSettings2 setResponse:0.24];

  [(SBFluidSwitcherAnimationSettings *)self setAppToSwitcherTransitionMinCardScaleFactor:0.97];
  [(SBFluidSwitcherAnimationSettings *)self setDisableAsyncRenderingTransitionPercentage:0.6];
  [(SBFluidSwitcherAnimationSettings *)self setDisallowAcceleratedHomeButtonPressTransitionPercentage:0.6];
  [(SBFluidSwitcherAnimationSettings *)self setDisableTapDuringMorphFromInAppViewTransitionDelay:0.25];
  [(SBFluidSwitcherAnimationSettings *)self setDockHurdlingIconZoomInitialVelocity:-4500.0];
  [(SBFluidSwitcherAnimationSettings *)self setDockHurdlingIconZoomDockToBackTiming:?];
  [(SBFluidSwitcherAnimationSettings *)self setDockHurdlingIconZoomDockToFrontTiming:0.215];
  backdropBlurSettings = [(SBFluidSwitcherAnimationSettings *)self backdropBlurSettings];
  [backdropBlurSettings setBehaviorType:1];

  backdropBlurSettings2 = [(SBFluidSwitcherAnimationSettings *)self backdropBlurSettings];
  [backdropBlurSettings2 setDampingRatio:0.776];

  backdropBlurSettings3 = [(SBFluidSwitcherAnimationSettings *)self backdropBlurSettings];
  [backdropBlurSettings3 setResponse:0.574];

  backdropBlurSettings4 = [(SBFluidSwitcherAnimationSettings *)self backdropBlurSettings];
  [backdropBlurSettings4 setRetargetImpulse:0.006];

  homeScreenOpacitySettings = [(SBFluidSwitcherAnimationSettings *)self homeScreenOpacitySettings];
  [homeScreenOpacitySettings setBehaviorType:1];

  homeScreenOpacitySettings2 = [(SBFluidSwitcherAnimationSettings *)self homeScreenOpacitySettings];
  [homeScreenOpacitySettings2 setDampingRatio:1.0];

  homeScreenOpacitySettings3 = [(SBFluidSwitcherAnimationSettings *)self homeScreenOpacitySettings];
  [homeScreenOpacitySettings3 setResponse:0.23];

  homeScreenScaleSettings = [(SBFluidSwitcherAnimationSettings *)self homeScreenScaleSettings];
  [homeScreenScaleSettings setBehaviorType:2];

  homeScreenScaleSettings2 = [(SBFluidSwitcherAnimationSettings *)self homeScreenScaleSettings];
  [homeScreenScaleSettings2 setDampingRatio:0.783];

  homeScreenScaleSettings3 = [(SBFluidSwitcherAnimationSettings *)self homeScreenScaleSettings];
  [homeScreenScaleSettings3 setResponse:0.702];

  homeScreenScaleSettings4 = [(SBFluidSwitcherAnimationSettings *)self homeScreenScaleSettings];
  v188 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [homeScreenScaleSettings4 setFrameRateRange:1114117 highFrameRateReason:{*&v188.minimum, *&v188.maximum, *&v188.preferred}];

  opacitySettings = [(SBFluidSwitcherAnimationSettings *)self opacitySettings];
  [opacitySettings setBehaviorType:1];

  opacitySettings2 = [(SBFluidSwitcherAnimationSettings *)self opacitySettings];
  [opacitySettings2 setDampingRatio:1.0];

  opacitySettings3 = [(SBFluidSwitcherAnimationSettings *)self opacitySettings];
  [opacitySettings3 setResponse:0.314];

  centerZoomOpacitySettings = [(SBFluidSwitcherAnimationSettings *)self centerZoomOpacitySettings];
  [centerZoomOpacitySettings setBehaviorType:1];

  centerZoomOpacitySettings2 = [(SBFluidSwitcherAnimationSettings *)self centerZoomOpacitySettings];
  [centerZoomOpacitySettings2 setDampingRatio:4.33];

  centerZoomOpacitySettings3 = [(SBFluidSwitcherAnimationSettings *)self centerZoomOpacitySettings];
  [centerZoomOpacitySettings3 setResponse:0.1];

  swipeToKillOpacitySettings = [(SBFluidSwitcherAnimationSettings *)self swipeToKillOpacitySettings];
  [swipeToKillOpacitySettings setBehaviorType:1];

  swipeToKillOpacitySettings2 = [(SBFluidSwitcherAnimationSettings *)self swipeToKillOpacitySettings];
  [swipeToKillOpacitySettings2 setDampingRatio:1.0];

  swipeToKillOpacitySettings3 = [(SBFluidSwitcherAnimationSettings *)self swipeToKillOpacitySettings];
  [swipeToKillOpacitySettings3 setResponse:0.25];

  wallpaperScaleSettings = [(SBFluidSwitcherAnimationSettings *)self wallpaperScaleSettings];
  [wallpaperScaleSettings setBehaviorType:1];

  wallpaperScaleSettings2 = [(SBFluidSwitcherAnimationSettings *)self wallpaperScaleSettings];
  [wallpaperScaleSettings2 setDampingRatio:1.0];

  wallpaperScaleSettings3 = [(SBFluidSwitcherAnimationSettings *)self wallpaperScaleSettings];
  [wallpaperScaleSettings3 setResponse:0.75];

  appSelectionSquishSettings = [(SBFluidSwitcherAnimationSettings *)self appSelectionSquishSettings];
  [appSelectionSquishSettings setBehaviorType:1];

  appSelectionSquishSettings2 = [(SBFluidSwitcherAnimationSettings *)self appSelectionSquishSettings];
  [appSelectionSquishSettings2 setDampingRatio:0.975];

  appSelectionSquishSettings3 = [(SBFluidSwitcherAnimationSettings *)self appSelectionSquishSettings];
  [appSelectionSquishSettings3 setResponse:0.35];

  appSelectionSquishSettings4 = [(SBFluidSwitcherAnimationSettings *)self appSelectionSquishSettings];
  v189 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [appSelectionSquishSettings4 setFrameRateRange:1114113 highFrameRateReason:{*&v189.minimum, *&v189.maximum, *&v189.preferred}];

  statusBarFadeInSettings = [(SBFluidSwitcherAnimationSettings *)self statusBarFadeInSettings];
  [statusBarFadeInSettings setDefaultValues];

  statusBarFadeInSettings2 = [(SBFluidSwitcherAnimationSettings *)self statusBarFadeInSettings];
  [statusBarFadeInSettings2 setDampingRatio:1.0];

  statusBarFadeInSettings3 = [(SBFluidSwitcherAnimationSettings *)self statusBarFadeInSettings];
  [statusBarFadeInSettings3 setResponse:0.6];

  statusBarFadeOutSettings = [(SBFluidSwitcherAnimationSettings *)self statusBarFadeOutSettings];
  [statusBarFadeOutSettings setDefaultValues];

  statusBarFadeOutSettings2 = [(SBFluidSwitcherAnimationSettings *)self statusBarFadeOutSettings];
  [statusBarFadeOutSettings2 setDampingRatio:1.0];

  statusBarFadeOutSettings3 = [(SBFluidSwitcherAnimationSettings *)self statusBarFadeOutSettings];
  [statusBarFadeOutSettings3 setResponse:0.4];

  [(SBFluidSwitcherAnimationSettings *)self setStatusBarToApexBounceAnimationDuration:0.2];
  [(SBFluidSwitcherAnimationSettings *)self setStatusBarFromApexBounceAnimationDuration:0.8];
  reopenButtonScaleSettings = [(SBFluidSwitcherAnimationSettings *)self reopenButtonScaleSettings];
  [reopenButtonScaleSettings setDefaultValues];

  reopenButtonScaleSettings2 = [(SBFluidSwitcherAnimationSettings *)self reopenButtonScaleSettings];
  [reopenButtonScaleSettings2 setDampingRatio:0.75];

  reopenButtonScaleSettings3 = [(SBFluidSwitcherAnimationSettings *)self reopenButtonScaleSettings];
  [reopenButtonScaleSettings3 setResponse:0.375];

  [(SBFluidSwitcherAnimationSettings *)self setReopenButtonInitialScale:?];
  [(SBFluidSwitcherAnimationSettings *)self setReopenButtonFadeInDelay:0.3];
  alertCardifiedDismissalSettings = [(SBFluidSwitcherAnimationSettings *)self alertCardifiedDismissalSettings];
  [alertCardifiedDismissalSettings setDefaultValues];

  alertCardifiedDismissalSettings2 = [(SBFluidSwitcherAnimationSettings *)self alertCardifiedDismissalSettings];
  [alertCardifiedDismissalSettings2 setDampingRatio:0.748];

  alertCardifiedDismissalSettings3 = [(SBFluidSwitcherAnimationSettings *)self alertCardifiedDismissalSettings];
  [alertCardifiedDismissalSettings3 setResponse:0.435];

  alertCardifiedDismissalSettings4 = [(SBFluidSwitcherAnimationSettings *)self alertCardifiedDismissalSettings];
  [alertCardifiedDismissalSettings4 setSmoothingAndProjectionEnabled:1];

  alertCardifiedDismissalSettings5 = [(SBFluidSwitcherAnimationSettings *)self alertCardifiedDismissalSettings];
  [alertCardifiedDismissalSettings5 setInertialTargetSmoothingRatio:0.4];

  alertCardifiedDismissalSettings6 = [(SBFluidSwitcherAnimationSettings *)self alertCardifiedDismissalSettings];
  [alertCardifiedDismissalSettings6 setInertialProjectionDeceleration:0.995];

  [(SBFluidSwitcherAnimationSettings *)self setAlertCardifiedDismissHapticDelay:0.34];
  [(SBFluidSwitcherAnimationSettings *)self setAlertCardifiedDismissZoomOutDelay:0.1];
  [(SBFluidSwitcherAnimationSettings *)self setAlertCardifiedDismissClientAnimationsDelay:0.2];
  alertCardifiedDismissalSettings7 = [(SBFluidSwitcherAnimationSettings *)self alertCardifiedDismissalSettings];
  v190 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [alertCardifiedDismissalSettings7 setFrameRateRange:1114115 highFrameRateReason:{*&v190.minimum, *&v190.maximum, *&v190.preferred}];

  alertBarSwipeDismissalSettings = [(SBFluidSwitcherAnimationSettings *)self alertBarSwipeDismissalSettings];
  [alertBarSwipeDismissalSettings setDefaultValues];

  alertBarSwipeDismissalSettings2 = [(SBFluidSwitcherAnimationSettings *)self alertBarSwipeDismissalSettings];
  [alertBarSwipeDismissalSettings2 setDampingRatio:0.471];

  alertBarSwipeDismissalSettings3 = [(SBFluidSwitcherAnimationSettings *)self alertBarSwipeDismissalSettings];
  [alertBarSwipeDismissalSettings3 setResponse:0.299];

  [(SBFluidSwitcherAnimationSettings *)self setAlertBarSwipeDismissHapticDelay:0.0];
  [(SBFluidSwitcherAnimationSettings *)self setAlertBarSwipeDismissZoomOutDelay:0.1];
  [(SBFluidSwitcherAnimationSettings *)self setAlertBarSwipeDismissClientAnimationsDelay:0.0];
  alertBarSwipeDismissalSettings4 = [(SBFluidSwitcherAnimationSettings *)self alertBarSwipeDismissalSettings];
  v191 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [alertBarSwipeDismissalSettings4 setFrameRateRange:1114115 highFrameRateReason:{*&v191.minimum, *&v191.maximum, *&v191.preferred}];

  siriSwipeDismissalSettings = [(SBFluidSwitcherAnimationSettings *)self siriSwipeDismissalSettings];
  [siriSwipeDismissalSettings setDefaultValues];

  siriSwipeDismissalSettings2 = [(SBFluidSwitcherAnimationSettings *)self siriSwipeDismissalSettings];
  [siriSwipeDismissalSettings2 setDampingRatio:1.1];

  siriSwipeDismissalSettings3 = [(SBFluidSwitcherAnimationSettings *)self siriSwipeDismissalSettings];
  [siriSwipeDismissalSettings3 setResponse:0.45];

  [(SBFluidSwitcherAnimationSettings *)self setSiriSwipeDismissHapticDelay:0.25];
  [(SBFluidSwitcherAnimationSettings *)self setSiriSwipeDismissZoomOutDelay:0.06];
  [(SBFluidSwitcherAnimationSettings *)self setSiriSwipeDismissClientAnimationsDelay:0.0];
  siriSwipeDismissalSettings4 = [(SBFluidSwitcherAnimationSettings *)self siriSwipeDismissalSettings];
  v192 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [siriSwipeDismissalSettings4 setFrameRateRange:1114115 highFrameRateReason:{*&v192.minimum, *&v192.maximum, *&v192.preferred}];

  bannerUnfurlSettings = [(SBFluidSwitcherAnimationSettings *)self bannerUnfurlSettings];
  [bannerUnfurlSettings setDefaultValues];

  bannerUnfurlSettings2 = [(SBFluidSwitcherAnimationSettings *)self bannerUnfurlSettings];
  [bannerUnfurlSettings2 setDampingRatio:1.0];

  bannerUnfurlSettings3 = [(SBFluidSwitcherAnimationSettings *)self bannerUnfurlSettings];
  [bannerUnfurlSettings3 setResponse:0.4];

  bannerUnfurlSettings4 = [(SBFluidSwitcherAnimationSettings *)self bannerUnfurlSettings];
  v193 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [bannerUnfurlSettings4 setFrameRateRange:1114114 highFrameRateReason:{*&v193.minimum, *&v193.maximum, *&v193.preferred}];

  bannerUnfurlWallpaperAlphaSettings = [(SBFluidSwitcherAnimationSettings *)self bannerUnfurlWallpaperAlphaSettings];
  [bannerUnfurlWallpaperAlphaSettings setDefaultValues];

  bannerUnfurlWallpaperAlphaSettings2 = [(SBFluidSwitcherAnimationSettings *)self bannerUnfurlWallpaperAlphaSettings];
  [bannerUnfurlWallpaperAlphaSettings2 setDampingRatio:1.0];

  bannerUnfurlWallpaperAlphaSettings3 = [(SBFluidSwitcherAnimationSettings *)self bannerUnfurlWallpaperAlphaSettings];
  [bannerUnfurlWallpaperAlphaSettings3 setResponse:0.39];

  [(SBFluidSwitcherAnimationSettings *)self setBannerUnfurlWallpaperAlphaDelay:0.025];
  coverSheetFlyInScaleSettings = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInScaleSettings];
  [coverSheetFlyInScaleSettings setDefaultValues];

  coverSheetFlyInScaleSettings2 = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInScaleSettings];
  [coverSheetFlyInScaleSettings2 setDampingRatio:0.8];

  coverSheetFlyInScaleSettings3 = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInScaleSettings];
  [coverSheetFlyInScaleSettings3 setResponse:0.6];

  coverSheetFlyInScaleSettings4 = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInScaleSettings];
  v194 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [coverSheetFlyInScaleSettings4 setFrameRateRange:1114125 highFrameRateReason:{*&v194.minimum, *&v194.maximum, *&v194.preferred}];

  coverSheetFlyInBlurSettings = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInBlurSettings];
  [coverSheetFlyInBlurSettings setDefaultValues];

  coverSheetFlyInBlurSettings2 = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInBlurSettings];
  [coverSheetFlyInBlurSettings2 setDampingRatio:1.0];

  coverSheetFlyInBlurSettings3 = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInBlurSettings];
  [coverSheetFlyInBlurSettings3 setResponse:0.3];

  coverSheetFlyInBlurSettings4 = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInBlurSettings];
  v195 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [coverSheetFlyInBlurSettings4 setFrameRateRange:1114125 highFrameRateReason:{*&v195.minimum, *&v195.maximum, *&v195.preferred}];

  coverSheetFlyInOpacitySettings = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInOpacitySettings];
  [coverSheetFlyInOpacitySettings setDefaultValues];

  coverSheetFlyInOpacitySettings2 = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInOpacitySettings];
  [coverSheetFlyInOpacitySettings2 setDampingRatio:1.0];

  coverSheetFlyInOpacitySettings3 = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInOpacitySettings];
  [coverSheetFlyInOpacitySettings3 setResponse:0.2];

  coverSheetFlyInOpacitySettings4 = [(SBFluidSwitcherAnimationSettings *)self coverSheetFlyInOpacitySettings];
  v196 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [coverSheetFlyInOpacitySettings4 setFrameRateRange:1114125 highFrameRateReason:{*&v196.minimum, *&v196.maximum, *&v196.preferred}];

  [(SBFluidSwitcherAnimationSettings *)self setCoverSheetFlyInScale:1.24];
  [(SBFluidSwitcherAnimationSettings *)self setCoverSheetFlyInBlurRadius:3.33];
  [(SBFluidSwitcherAnimationSettings *)self setCoverSheetFlyInVelocityScaleFactor:0.4];
  [(SBFluidSwitcherAnimationSettings *)self setCoverSheetFlyInMaximumVelocity:100000.0];
  switcherToHomeSettings = [(SBFluidSwitcherAnimationSettings *)self switcherToHomeSettings];
  [switcherToHomeSettings setDampingRatio:1.0];

  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  v122 = dbl_21F8A5740[(userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  switcherToHomeSettings2 = [(SBFluidSwitcherAnimationSettings *)self switcherToHomeSettings];
  [switcherToHomeSettings2 setResponse:v122];

  switcherToHomeSettings3 = [(SBFluidSwitcherAnimationSettings *)self switcherToHomeSettings];
  v197 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [switcherToHomeSettings3 setFrameRateRange:1114113 highFrameRateReason:{*&v197.minimum, *&v197.maximum, *&v197.preferred}];

  switcherToHomeOpacitySettings = [(SBFluidSwitcherAnimationSettings *)self switcherToHomeOpacitySettings];
  [switcherToHomeOpacitySettings setBehaviorType:1];

  switcherToHomeOpacitySettings2 = [(SBFluidSwitcherAnimationSettings *)self switcherToHomeOpacitySettings];
  [switcherToHomeOpacitySettings2 setResponse:0.0];

  [(SBFluidSwitcherAnimationSettings *)self setReduceMotionCrossfadeDuration:0.3];
  floatingDockIconFadeSettings = [(SBFluidSwitcherAnimationSettings *)self floatingDockIconFadeSettings];
  [floatingDockIconFadeSettings setResponse:0.21];

  floatingDockIconFadeSettings2 = [(SBFluidSwitcherAnimationSettings *)self floatingDockIconFadeSettings];
  [floatingDockIconFadeSettings2 setDampingRatio:1.0];

  [(SBFluidSwitcherAnimationSettings *)self setIconZoomFloatingDockFadeDelay:0.1];
  switcherZoomDownIconFadeOutSettings = [(SBFluidSwitcherAnimationSettings *)self switcherZoomDownIconFadeOutSettings];
  [switcherZoomDownIconFadeOutSettings setResponse:0.25];

  switcherZoomDownIconFadeOutSettings2 = [(SBFluidSwitcherAnimationSettings *)self switcherZoomDownIconFadeOutSettings];
  [switcherZoomDownIconFadeOutSettings2 setDampingRatio:1.0];

  iconFadeInSettings = [(SBFluidSwitcherAnimationSettings *)self iconFadeInSettings];
  [iconFadeInSettings setResponse:0.5];

  iconFadeInSettings2 = [(SBFluidSwitcherAnimationSettings *)self iconFadeInSettings];
  [iconFadeInSettings2 setDampingRatio:1.0];

  switcherFadeOutSettings = [(SBFluidSwitcherAnimationSettings *)self switcherFadeOutSettings];
  [switcherFadeOutSettings setResponse:0.15];

  switcherFadeOutSettings2 = [(SBFluidSwitcherAnimationSettings *)self switcherFadeOutSettings];
  [switcherFadeOutSettings2 setDampingRatio:1.0];

  [(SBFluidSwitcherAnimationSettings *)self setEmptySwitcherDismissDelay:0.2];
  [(SBFluidSwitcherAnimationSettings *)self setResizeBlurDelay:0.1];
  [(SBFluidSwitcherAnimationSettings *)self setAppSwitcherTitleAndIconFadeInSlowDownFactor:2.2];
  [(SBFluidSwitcherAnimationSettings *)self setCenterZoomScale:0.02];
  pulseScaleSettings = [(SBFluidSwitcherAnimationSettings *)self pulseScaleSettings];
  [pulseScaleSettings setDefaultValues];

  pulseScaleSettings2 = [(SBFluidSwitcherAnimationSettings *)self pulseScaleSettings];
  [pulseScaleSettings2 setDampingRatio:1.0];

  pulseScaleSettings3 = [(SBFluidSwitcherAnimationSettings *)self pulseScaleSettings];
  [pulseScaleSettings3 setResponse:0.358];

  pulseScaleSettings4 = [(SBFluidSwitcherAnimationSettings *)self pulseScaleSettings];
  v198 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [pulseScaleSettings4 setFrameRateRange:1114113 highFrameRateReason:{*&v198.minimum, *&v198.maximum, *&v198.preferred}];

  [(SBFluidSwitcherAnimationSettings *)self setPulseScale:0.96];
  [(SBFluidSwitcherAnimationSettings *)self setPulseSecondStageDelay:0.07];
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v139 = [&unk_28336DB78 countByEnumeratingWithState:&v168 objects:v172 count:16];
  if (v139)
  {
    v140 = v139;
    v141 = *v169;
    do
    {
      for (i = 0; i != v140; ++i)
      {
        if (*v169 != v141)
        {
          objc_enumerationMutation(&unk_28336DB78);
        }

        v143 = *(*(&v168 + 1) + 8 * i);
        v144 = [(SBFluidSwitcherAnimationSettings *)self valueForKey:v143];
        [v144 setName:v143];
      }

      v140 = [&unk_28336DB78 countByEnumeratingWithState:&v168 objects:v172 count:16];
    }

    while (v140);
  }

  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenBlurInSwitcher:1.0];
  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenBlurInSwitcherReduceMotionEnabled:1.0];
  [(SBFluidSwitcherAnimationSettings *)self homeScreenBlurInSwitcher];
  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenBlurInApplication:?];
  [(SBFluidSwitcherAnimationSettings *)self homeScreenBlurInSwitcher];
  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenBlurInAssistant:?];
  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenOpacityInSwitcher:0.5];
  [(SBFluidSwitcherAnimationSettings *)self homeScreenOpacityInSwitcher];
  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenOpacityInApplication:?];
  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenScaleInSwitcher:0.9];
  [(SBFluidSwitcherAnimationSettings *)self homeScreenScaleInSwitcher];
  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenScaleInApplication:?];
  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenScaleInAssistant:0.92];
  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

  [(SBFluidSwitcherAnimationSettings *)self setWallpaperScaleInSwitcher:dbl_21F8A5750[(userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1]];
  [(SBFluidSwitcherAnimationSettings *)self setWallpaperScaleInApplication:1.0];
  [(SBFluidSwitcherAnimationSettings *)self setDimmingAlphaInSwitcher:0.25];
  [(SBFluidSwitcherAnimationSettings *)self setDimmingAlphaInApplication:0.67];
  if (SBIsHomeGestureEnabledByDefault())
  {
    layoutSettings3 = [(SBFluidSwitcherAnimationSettings *)self layoutSettings];
    [layoutSettings3 setTrackingDampingRatio:0.577];

    layoutSettings4 = [(SBFluidSwitcherAnimationSettings *)self layoutSettings];
    [layoutSettings4 setTrackingResponse:0.145];

    layoutSettings5 = [(SBFluidSwitcherAnimationSettings *)self layoutSettings];
    [layoutSettings5 setTrackingRetargetImpulse:0.008];

    homeScreenScaleSettings5 = [(SBFluidSwitcherAnimationSettings *)self homeScreenScaleSettings];
    [homeScreenScaleSettings5 setDampingRatio:0.88];

    homeScreenScaleSettings6 = [(SBFluidSwitcherAnimationSettings *)self homeScreenScaleSettings];
    [homeScreenScaleSettings6 setResponse:0.7];

    wallpaperScaleSettings4 = [(SBFluidSwitcherAnimationSettings *)self wallpaperScaleSettings];
    [wallpaperScaleSettings4 setDampingRatio:1.3];

    wallpaperScaleSettings5 = [(SBFluidSwitcherAnimationSettings *)self wallpaperScaleSettings];
    [wallpaperScaleSettings5 setResponse:0.75];

    wallpaperScaleSettings6 = [(SBFluidSwitcherAnimationSettings *)self wallpaperScaleSettings];
    [wallpaperScaleSettings6 setRetargetImpulse:0.028];

    [(SBFluidSwitcherAnimationSettings *)self setHomeScreenBlurInSwitcher:0.6];
    [(SBFluidSwitcherAnimationSettings *)self setHomeScreenBlurInSwitcherReduceMotionEnabled:1.0];
    [(SBFluidSwitcherAnimationSettings *)self setHomeScreenBlurInApplication:1.0];
    [(SBFluidSwitcherAnimationSettings *)self setHomeScreenBlurInAssistant:0.045];
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom5 = [currentDevice5 userInterfaceIdiom];

    if ((userInterfaceIdiom5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [(SBFluidSwitcherAnimationSettings *)self setHomeScreenOpacityInSwitcher:0.6];
      [(SBFluidSwitcherAnimationSettings *)self setHomeScreenOpacityInApplication:0.95];
      [(SBFluidSwitcherAnimationSettings *)self setHomeScreenScaleInSwitcher:0.95];
      [(SBFluidSwitcherAnimationSettings *)self setHomeScreenScaleInApplication:0.88];
      [(SBFluidSwitcherAnimationSettings *)self setWallpaperScaleInSwitcher:1.1];
      [(SBFluidSwitcherAnimationSettings *)self setWallpaperScaleInApplication:1.0];
    }

    [(SBFluidSwitcherAnimationSettings *)self setDimmingAlphaInApplication:0.5];
  }

  [(SBFluidSwitcherAnimationSettings *)self setAllowIconZoomFromMediumWidgets:1];
  [(SBFluidSwitcherAnimationSettings *)self setAllowIconZoomFromLargeWidgets:1];
  if (__sb__runningInSpringBoard())
  {
    v157 = SBFEffectiveDeviceClass();
    v158 = 44.0;
    if (v157 == 2)
    {
      v158 = 10.0;
    }

    [(SBFluidSwitcherAnimationSettings *)self setHomeScreenCenterZoomInitialBlur:v158];
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom6 = [currentDevice6 userInterfaceIdiom];
    v161 = 44.0;
    if (userInterfaceIdiom6 == 1)
    {
      v161 = 10.0;
    }

    [(SBFluidSwitcherAnimationSettings *)self setHomeScreenCenterZoomInitialBlur:v161];
  }

  if (__sb__runningInSpringBoard())
  {
    v162 = SBFEffectiveDeviceClass();
    v163 = 0.86;
    if (v162 != 2)
    {
      v163 = 0.5;
    }

    [(SBFluidSwitcherAnimationSettings *)self setHomeScreenCenterZoomInitialScale:v163];
  }

  else
  {
    currentDevice7 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom7 = [currentDevice7 userInterfaceIdiom];
    v166 = 0.86;
    if (userInterfaceIdiom7 != 1)
    {
      v166 = 0.5;
    }

    [(SBFluidSwitcherAnimationSettings *)self setHomeScreenCenterZoomInitialScale:v166];
  }

  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenCenterZoomInitialOpacity:0.0];
  if (__sb__runningInSpringBoard())
  {
    [(SBFluidSwitcherAnimationSettings *)self setHomeScreenCenterZoomTargetScaleWhenUnblurringIsComplete:dbl_21F8A5760[SBFEffectiveDeviceClass() == 2]];
  }

  else
  {
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    -[SBFluidSwitcherAnimationSettings setHomeScreenCenterZoomTargetScaleWhenUnblurringIsComplete:](self, "setHomeScreenCenterZoomTargetScaleWhenUnblurringIsComplete:", dbl_21F8A5760[[currentDevice8 userInterfaceIdiom] == 1]);
  }

  [(SBFluidSwitcherAnimationSettings *)self setHomeScreenCenterZoomYOffsetPercentOfScreenHeight:0.0];
}

- (void)_setTopAffordanceTransitionDefaultValues
{
  [(SBFluidSwitcherAnimationSettings *)self setPerformTwoPhaseFullScreenToPeekTransition:1];
  fullScreenToPeekFirstPhaseAnimationSettings = [(SBFluidSwitcherAnimationSettings *)self fullScreenToPeekFirstPhaseAnimationSettings];
  [fullScreenToPeekFirstPhaseAnimationSettings setDefaultValues];

  fullScreenToPeekFirstPhaseAnimationSettings2 = [(SBFluidSwitcherAnimationSettings *)self fullScreenToPeekFirstPhaseAnimationSettings];
  [fullScreenToPeekFirstPhaseAnimationSettings2 setDampingRatio:1.1];

  fullScreenToPeekFirstPhaseAnimationSettings3 = [(SBFluidSwitcherAnimationSettings *)self fullScreenToPeekFirstPhaseAnimationSettings];
  [fullScreenToPeekFirstPhaseAnimationSettings3 setResponse:0.45];

  fullScreenToPeekSecondPhaseAnimationSettings = [(SBFluidSwitcherAnimationSettings *)self fullScreenToPeekSecondPhaseAnimationSettings];
  [fullScreenToPeekSecondPhaseAnimationSettings setDefaultValues];

  fullScreenToPeekSecondPhaseAnimationSettings2 = [(SBFluidSwitcherAnimationSettings *)self fullScreenToPeekSecondPhaseAnimationSettings];
  [fullScreenToPeekSecondPhaseAnimationSettings2 setDampingRatio:0.9];

  fullScreenToPeekSecondPhaseAnimationSettings3 = [(SBFluidSwitcherAnimationSettings *)self fullScreenToPeekSecondPhaseAnimationSettings];
  [fullScreenToPeekSecondPhaseAnimationSettings3 setResponse:0.44];

  [(SBFluidSwitcherAnimationSettings *)self setFullScreenToPeekSecondPhaseAnimationDelay:0.4];
  splitViewToSlideOverSettings = [(SBFluidSwitcherAnimationSettings *)self splitViewToSlideOverSettings];
  [splitViewToSlideOverSettings setDefaultCriticallyDampedValues];

  slideOverToFullScreenAnimationSettings = [(SBFluidSwitcherAnimationSettings *)self slideOverToFullScreenAnimationSettings];
  [slideOverToFullScreenAnimationSettings setDefaultCriticallyDampedValues];

  [(SBFluidSwitcherAnimationSettings *)self setSlideOverToFullScreenOutgoingAppScaleBack:0.9];
  [(SBFluidSwitcherAnimationSettings *)self setSlideOverToFullScreenOutgoingFinalOpacity:0.0];
  centerToSlideOverAnimationSettings = [(SBFluidSwitcherAnimationSettings *)self centerToSlideOverAnimationSettings];
  [centerToSlideOverAnimationSettings setDefaultCriticallyDampedValues];
}

- (void)_setEntityPresentationDefaultValues
{
  slideUpSettings = [(SBFluidSwitcherAnimationSettings *)self slideUpSettings];
  [slideUpSettings setDefaultCriticallyDampedValues];
}

- (void)_setKeyboardShortcutDefaultValues
{
  swapAppSidesLayoutAnimationSettings = [(SBFluidSwitcherAnimationSettings *)self swapAppSidesLayoutAnimationSettings];
  [swapAppSidesLayoutAnimationSettings setDefaultCriticallyDampedValues];

  swapAppSidesOpacityAnimationSettings = [(SBFluidSwitcherAnimationSettings *)self swapAppSidesOpacityAnimationSettings];
  [swapAppSidesOpacityAnimationSettings setDefaultCriticallyDampedValues];

  swapAppSidesOpacityAnimationSettings2 = [(SBFluidSwitcherAnimationSettings *)self swapAppSidesOpacityAnimationSettings];
  [swapAppSidesOpacityAnimationSettings2 setResponse:0.15];

  [(SBFluidSwitcherAnimationSettings *)self setSwapAppSidesShadowFadeOutDelay:0.3];
}

- (void)_setGenieAnimationDefaultValues
{
  self->_genieCornerRadiusToAppResetDelay = 0.06;
  self->_genieCornerRadiusToHomeResetDelay = 0.12;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 1.05;
  }

  else
  {
    v5 = 1.0;
  }

  [(SBFFluidBehaviorSettings *)self->_genieFullScreenCenterRowZoomUpSettings setDampingRatio:v5];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  [(SBFFluidBehaviorSettings *)self->_genieFullScreenCenterRowZoomUpSettings setResponse:dbl_21F8A5770[(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1]];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice3 userInterfaceIdiom];

  [(SBFFluidBehaviorSettings *)self->_genieFullScreenCenterRowZoomUpSettings setRetargetImpulse:0.0];
  genieFullScreenCenterRowZoomUpSettings = self->_genieFullScreenCenterRowZoomUpSettings;
  v19 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)genieFullScreenCenterRowZoomUpSettings setFrameRateRange:1114114 highFrameRateReason:*&v19.minimum, *&v19.maximum, *&v19.preferred];
  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice4 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = 1.05;
  }

  else
  {
    v12 = 1.0;
  }

  [(SBFFluidBehaviorSettings *)self->_genieFullScreenEdgeRowZoomUpSettings setDampingRatio:v12];
  currentDevice5 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom4 = [currentDevice5 userInterfaceIdiom];

  [(SBFFluidBehaviorSettings *)self->_genieFullScreenEdgeRowZoomUpSettings setResponse:dbl_21F8A5780[(userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1]];
  currentDevice6 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice6 userInterfaceIdiom];

  [(SBFFluidBehaviorSettings *)self->_genieFullScreenEdgeRowZoomUpSettings setRetargetImpulse:0.0];
  genieFullScreenEdgeRowZoomUpSettings = self->_genieFullScreenEdgeRowZoomUpSettings;
  v20 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)genieFullScreenEdgeRowZoomUpSettings setFrameRateRange:1114114 highFrameRateReason:*&v20.minimum, *&v20.maximum, *&v20.preferred];
  [(SBFFluidBehaviorSettings *)self->_genieWindowedZoomUpSettings setDampingRatio:0.85];
  [(SBFFluidBehaviorSettings *)self->_genieWindowedZoomUpSettings setResponse:0.384];
  [(SBFFluidBehaviorSettings *)self->_genieWindowedZoomUpSettings setRetargetImpulse:0.0];
  genieWindowedZoomUpSettings = self->_genieWindowedZoomUpSettings;
  v21 = CAFrameRateRangeMake(80.0, 120.0, 120.0);

  [(SBFFluidBehaviorSettings *)genieWindowedZoomUpSettings setFrameRateRange:1114114 highFrameRateReason:*&v21.minimum, *&v21.maximum, *&v21.preferred];
}

- (void)_setHomeGestureAnimationDefaultValues
{
  [(SBFFluidBehaviorSettings *)self->_homeGestureCenterRowZoomUpSettings setDampingRatio:1.1];
  [(SBFFluidBehaviorSettings *)self->_homeGestureCenterRowZoomUpSettings setResponse:?];
  [(SBFFluidBehaviorSettings *)self->_homeGestureCenterRowZoomUpSettings setRetargetImpulse:0.0];
  homeGestureCenterRowZoomUpSettings = self->_homeGestureCenterRowZoomUpSettings;
  v65 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureCenterRowZoomUpSettings setFrameRateRange:1114114 highFrameRateReason:*&v65.minimum, *&v65.maximum, *&v65.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureEdgeRowZoomUpSettings setDampingRatio:1.1];
  [(SBFFluidBehaviorSettings *)self->_homeGestureEdgeRowZoomUpSettings setResponse:0.34];
  [(SBFFluidBehaviorSettings *)self->_homeGestureEdgeRowZoomUpSettings setRetargetImpulse:0.0];
  homeGestureEdgeRowZoomUpSettings = self->_homeGestureEdgeRowZoomUpSettings;
  v66 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureEdgeRowZoomUpSettings setFrameRateRange:1114114 highFrameRateReason:*&v66.minimum, *&v66.maximum, *&v66.preferred];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.8;
  }

  self->_homeGestureZoomDownScaleMultiplier = v7;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v10 = 0.75;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 1.0;
  }

  self->_homeGestureZoomDownScaleMultiplierWidgets = v10;
  [(SBFFluidBehaviorSettings *)self->_homeGestureTopRowZoomDownLayoutSettings setDampingRatio:1.1];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  v13 = 0.375;
  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v13 = 0.425;
  }

  [(SBFFluidBehaviorSettings *)self->_homeGestureTopRowZoomDownLayoutSettings setResponse:v13];
  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice4 userInterfaceIdiom];

  [(SBFFluidBehaviorSettings *)self->_homeGestureTopRowZoomDownLayoutSettings setRetargetImpulse:0.0];
  homeGestureTopRowZoomDownLayoutSettings = self->_homeGestureTopRowZoomDownLayoutSettings;
  v67 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureTopRowZoomDownLayoutSettings setFrameRateRange:1114115 highFrameRateReason:*&v67.minimum, *&v67.maximum, *&v67.preferred];
  currentDevice5 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom4 = [currentDevice5 userInterfaceIdiom];

  if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v18 = 0.86;
  }

  else
  {
    v18 = 0.8;
  }

  [(SBFFluidBehaviorSettings *)self->_homeGestureTopRowZoomDownPositionSettings setDampingRatio:v18];
  currentDevice6 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom5 = [currentDevice6 userInterfaceIdiom];

  v21 = 0.45;
  if ((userInterfaceIdiom5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v21 = 0.55;
  }

  [(SBFFluidBehaviorSettings *)self->_homeGestureTopRowZoomDownPositionSettings setResponse:v21];
  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice7 userInterfaceIdiom];

  [(SBFFluidBehaviorSettings *)self->_homeGestureTopRowZoomDownPositionSettings setRetargetImpulse:0.0];
  homeGestureTopRowZoomDownPositionSettings = self->_homeGestureTopRowZoomDownPositionSettings;
  v68 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureTopRowZoomDownPositionSettings setFrameRateRange:1114115 highFrameRateReason:*&v68.minimum, *&v68.maximum, *&v68.preferred];
  currentDevice8 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom6 = [currentDevice8 userInterfaceIdiom];

  if ((userInterfaceIdiom6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v26 = 0.8;
  }

  else
  {
    v26 = 0.84;
  }

  [(SBFFluidBehaviorSettings *)self->_homeGestureTopRowZoomDownScaleSettings setDampingRatio:v26];
  currentDevice9 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom7 = [currentDevice9 userInterfaceIdiom];

  if ((userInterfaceIdiom7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v29 = 0.5;
  }

  else
  {
    v29 = 0.55;
  }

  [(SBFFluidBehaviorSettings *)self->_homeGestureTopRowZoomDownScaleSettings setResponse:v29];
  currentDevice10 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice10 userInterfaceIdiom];

  [(SBFFluidBehaviorSettings *)self->_homeGestureTopRowZoomDownScaleSettings setRetargetImpulse:0.0];
  homeGestureTopRowZoomDownScaleSettings = self->_homeGestureTopRowZoomDownScaleSettings;
  v69 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureTopRowZoomDownScaleSettings setFrameRateRange:1114115 highFrameRateReason:*&v69.minimum, *&v69.maximum, *&v69.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureBottomRowZoomDownLayoutSettings setDampingRatio:1.1];
  [(SBFFluidBehaviorSettings *)self->_homeGestureBottomRowZoomDownLayoutSettings setResponse:0.375];
  currentDevice11 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice11 userInterfaceIdiom];

  [(SBFFluidBehaviorSettings *)self->_homeGestureBottomRowZoomDownLayoutSettings setRetargetImpulse:0.0];
  homeGestureBottomRowZoomDownLayoutSettings = self->_homeGestureBottomRowZoomDownLayoutSettings;
  v70 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureBottomRowZoomDownLayoutSettings setFrameRateRange:1114115 highFrameRateReason:*&v70.minimum, *&v70.maximum, *&v70.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureBottomRowZoomDownPositionSettings setDampingRatio:0.86];
  [(SBFFluidBehaviorSettings *)self->_homeGestureBottomRowZoomDownPositionSettings setResponse:0.55];
  currentDevice12 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice12 userInterfaceIdiom];

  [(SBFFluidBehaviorSettings *)self->_homeGestureBottomRowZoomDownPositionSettings setRetargetImpulse:0.0];
  homeGestureBottomRowZoomDownPositionSettings = self->_homeGestureBottomRowZoomDownPositionSettings;
  v71 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureBottomRowZoomDownPositionSettings setFrameRateRange:1114115 highFrameRateReason:*&v71.minimum, *&v71.maximum, *&v71.preferred];
  currentDevice13 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom8 = [currentDevice13 userInterfaceIdiom];

  if ((userInterfaceIdiom8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v38 = 0.8;
  }

  else
  {
    v38 = 0.84;
  }

  [(SBFFluidBehaviorSettings *)self->_homeGestureBottomRowZoomDownScaleSettings setDampingRatio:v38];
  currentDevice14 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom9 = [currentDevice14 userInterfaceIdiom];

  if ((userInterfaceIdiom9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v41 = 0.5;
  }

  else
  {
    v41 = 0.55;
  }

  [(SBFFluidBehaviorSettings *)self->_homeGestureBottomRowZoomDownScaleSettings setResponse:v41];
  currentDevice15 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice15 userInterfaceIdiom];

  [(SBFFluidBehaviorSettings *)self->_homeGestureBottomRowZoomDownScaleSettings setRetargetImpulse:0.0];
  homeGestureBottomRowZoomDownScaleSettings = self->_homeGestureBottomRowZoomDownScaleSettings;
  v72 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureBottomRowZoomDownScaleSettings setFrameRateRange:1114115 highFrameRateReason:*&v72.minimum, *&v72.maximum, *&v72.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureSmallWidgetZoomDownLayoutSettings setDampingRatio:1.1];
  [(SBFFluidBehaviorSettings *)self->_homeGestureSmallWidgetZoomDownLayoutSettings setResponse:0.425];
  [(SBFFluidBehaviorSettings *)self->_homeGestureSmallWidgetZoomDownLayoutSettings setRetargetImpulse:0.016];
  homeGestureSmallWidgetZoomDownLayoutSettings = self->_homeGestureSmallWidgetZoomDownLayoutSettings;
  v73 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureSmallWidgetZoomDownLayoutSettings setFrameRateRange:1114115 highFrameRateReason:*&v73.minimum, *&v73.maximum, *&v73.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureSmallWidgetZoomDownPositionSettings setDampingRatio:0.88];
  [(SBFFluidBehaviorSettings *)self->_homeGestureSmallWidgetZoomDownPositionSettings setResponse:0.45];
  [(SBFFluidBehaviorSettings *)self->_homeGestureSmallWidgetZoomDownPositionSettings setRetargetImpulse:0.02];
  homeGestureSmallWidgetZoomDownPositionSettings = self->_homeGestureSmallWidgetZoomDownPositionSettings;
  v74 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureSmallWidgetZoomDownPositionSettings setFrameRateRange:1114115 highFrameRateReason:*&v74.minimum, *&v74.maximum, *&v74.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureSmallWidgetZoomDownScaleSettings setDampingRatio:0.96];
  [(SBFFluidBehaviorSettings *)self->_homeGestureSmallWidgetZoomDownScaleSettings setResponse:0.54];
  [(SBFFluidBehaviorSettings *)self->_homeGestureSmallWidgetZoomDownScaleSettings setRetargetImpulse:?];
  homeGestureSmallWidgetZoomDownScaleSettings = self->_homeGestureSmallWidgetZoomDownScaleSettings;
  v75 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureSmallWidgetZoomDownScaleSettings setFrameRateRange:1114115 highFrameRateReason:*&v75.minimum, *&v75.maximum, *&v75.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureMediumWidgetZoomDownLayoutSettings setDampingRatio:0.96];
  [(SBFFluidBehaviorSettings *)self->_homeGestureMediumWidgetZoomDownLayoutSettings setResponse:0.32];
  [(SBFFluidBehaviorSettings *)self->_homeGestureMediumWidgetZoomDownLayoutSettings setRetargetImpulse:0.016];
  homeGestureMediumWidgetZoomDownLayoutSettings = self->_homeGestureMediumWidgetZoomDownLayoutSettings;
  v76 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureMediumWidgetZoomDownLayoutSettings setFrameRateRange:1114115 highFrameRateReason:*&v76.minimum, *&v76.maximum, *&v76.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureMediumWidgetZoomDownPositionSettings setDampingRatio:0.88];
  [(SBFFluidBehaviorSettings *)self->_homeGestureMediumWidgetZoomDownPositionSettings setResponse:0.45];
  [(SBFFluidBehaviorSettings *)self->_homeGestureMediumWidgetZoomDownPositionSettings setRetargetImpulse:0.02];
  homeGestureMediumWidgetZoomDownPositionSettings = self->_homeGestureMediumWidgetZoomDownPositionSettings;
  v77 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureMediumWidgetZoomDownPositionSettings setFrameRateRange:1114115 highFrameRateReason:*&v77.minimum, *&v77.maximum, *&v77.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureMediumWidgetZoomDownScaleSettings setDampingRatio:0.96];
  [(SBFFluidBehaviorSettings *)self->_homeGestureMediumWidgetZoomDownScaleSettings setResponse:0.54];
  [(SBFFluidBehaviorSettings *)self->_homeGestureMediumWidgetZoomDownScaleSettings setRetargetImpulse:0.0];
  homeGestureMediumWidgetZoomDownScaleSettings = self->_homeGestureMediumWidgetZoomDownScaleSettings;
  v78 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureMediumWidgetZoomDownScaleSettings setFrameRateRange:1114115 highFrameRateReason:*&v78.minimum, *&v78.maximum, *&v78.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureLargeWidgetZoomDownLayoutSettings setDampingRatio:0.96];
  [(SBFFluidBehaviorSettings *)self->_homeGestureLargeWidgetZoomDownLayoutSettings setResponse:0.4];
  [(SBFFluidBehaviorSettings *)self->_homeGestureLargeWidgetZoomDownLayoutSettings setRetargetImpulse:0.016];
  homeGestureLargeWidgetZoomDownLayoutSettings = self->_homeGestureLargeWidgetZoomDownLayoutSettings;
  v79 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureLargeWidgetZoomDownLayoutSettings setFrameRateRange:1114115 highFrameRateReason:*&v79.minimum, *&v79.maximum, *&v79.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureLargeWidgetZoomDownPositionSettings setDampingRatio:0.88];
  [(SBFFluidBehaviorSettings *)self->_homeGestureLargeWidgetZoomDownPositionSettings setResponse:0.45];
  [(SBFFluidBehaviorSettings *)self->_homeGestureLargeWidgetZoomDownPositionSettings setRetargetImpulse:0.0];
  homeGestureLargeWidgetZoomDownPositionSettings = self->_homeGestureLargeWidgetZoomDownPositionSettings;
  v80 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureLargeWidgetZoomDownPositionSettings setFrameRateRange:1114115 highFrameRateReason:*&v80.minimum, *&v80.maximum, *&v80.preferred];
  [(SBFFluidBehaviorSettings *)self->_homeGestureLargeWidgetZoomDownScaleSettings setDampingRatio:0.96];
  [(SBFFluidBehaviorSettings *)self->_homeGestureLargeWidgetZoomDownScaleSettings setResponse:0.54];
  [(SBFFluidBehaviorSettings *)self->_homeGestureLargeWidgetZoomDownScaleSettings setRetargetImpulse:0.0];
  homeGestureLargeWidgetZoomDownScaleSettings = self->_homeGestureLargeWidgetZoomDownScaleSettings;
  v81 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)homeGestureLargeWidgetZoomDownScaleSettings setFrameRateRange:1114115 highFrameRateReason:*&v81.minimum, *&v81.maximum, *&v81.preferred];
  self->_zoomDownWidgetScaleVelocityYMinimum = 3000.0;
  self->_zoomDownWidgetScaleVelocityYMaximum = 5000.0;
  self->_zoomDownWidgetScaleOvershootMinimumMultiplier = 0.8;
  self->_zoomDownWidgetScaleOvershootMaximumMultiplier = 0.7;
  self->_zoomDownWidgetScaleOvershootDuration = 0.1;
  [(SBFFluidBehaviorSettings *)self->_arcSwipeSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_arcSwipeSettings setRetargetImpulse:0.018];
  arcSwipeSettings = self->_arcSwipeSettings;
  v82 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)arcSwipeSettings setFrameRateRange:1114113 highFrameRateReason:*&v82.minimum, *&v82.maximum, *&v82.preferred];
  [(SBFFluidBehaviorSettings *)self->_arcSwipeSwitcherGlancingSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_arcSwipeSwitcherGlancingSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_arcSwipeSwitcherGlancingSettings setResponse:0.55];
  [(SBFFluidBehaviorSettings *)self->_arcSwipeSwitcherGlancingSettings setTrackingDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_arcSwipeSwitcherGlancingSettings setTrackingResponse:0.55];
  arcSwipeSwitcherGlancingSettings = self->_arcSwipeSwitcherGlancingSettings;
  v83 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)arcSwipeSwitcherGlancingSettings setFrameRateRange:1114113 highFrameRateReason:*&v83.minimum, *&v83.maximum, *&v83.preferred];
  [(SBFFluidBehaviorSettings *)self->_appToSwitcherCornerRadiusSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_appToSwitcherCornerRadiusSettings setRetargetImpulse:0.018];
  appToSwitcherCornerRadiusSettings = self->_appToSwitcherCornerRadiusSettings;
  v84 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)appToSwitcherCornerRadiusSettings setFrameRateRange:1114113 highFrameRateReason:*&v84.minimum, *&v84.maximum, *&v84.preferred];
  [(SBFFluidBehaviorSettings *)self->_gestureInitiatedAppToSwitcherSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_gestureInitiatedAppToSwitcherSettings setDampingRatio:0.94];
  [(SBFFluidBehaviorSettings *)self->_gestureInitiatedAppToSwitcherSettings setRetargetImpulse:0.018];
  gestureInitiatedAppToSwitcherSettings = self->_gestureInitiatedAppToSwitcherSettings;
  v85 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)gestureInitiatedAppToSwitcherSettings setFrameRateRange:1114113 highFrameRateReason:*&v85.minimum, *&v85.maximum, *&v85.preferred];
  [(SBFFluidBehaviorSettings *)self->_cardFlyInSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_cardFlyInSettings setResponse:0.3];
  cardFlyInSettings = self->_cardFlyInSettings;
  v86 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)cardFlyInSettings setFrameRateRange:1114113 highFrameRateReason:*&v86.minimum, *&v86.maximum, *&v86.preferred];
  self->_cardFlyInAccelerationDipThreshold = 2000.0;
  self->_minimumTouchSamplesForAccelerationDip = 4;
  [(SBFFluidBehaviorSettings *)self->_reduceMotionArcSwipeSettings setDefaultValues];
  reduceMotionArcSwipeSettings = self->_reduceMotionArcSwipeSettings;
  [(SBFFluidBehaviorSettings *)reduceMotionArcSwipeSettings response];
  [(SBFFluidBehaviorSettings *)reduceMotionArcSwipeSettings setResponse:v59 * 0.8];
  [(SBFFluidBehaviorSettings *)self->_reduceMotionArcSwipeSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_reduceMotionArcSwipeSettings setRetargetImpulse:0.018];
  [(SBFFluidBehaviorSettings *)self->_reduceMotionAppToSwitcherSettings setDefaultValues];
  reduceMotionAppToSwitcherSettings = self->_reduceMotionAppToSwitcherSettings;
  [(SBFFluidBehaviorSettings *)reduceMotionAppToSwitcherSettings response];
  [(SBFFluidBehaviorSettings *)reduceMotionAppToSwitcherSettings setResponse:v61 * 0.8];
  [(SBFFluidBehaviorSettings *)self->_reduceMotionAppToSwitcherSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_reduceMotionAppToSwitcherSettings setRetargetImpulse:0.018];
  currentDevice16 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom10 = [currentDevice16 userInterfaceIdiom];

  v64 = 0.15;
  if ((userInterfaceIdiom10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v64 = 0.0;
  }

  self->_reduceMotionTriggerDelay = v64;
  self->_zoomDownVelocityYMinimum = 3000.0;
  self->_zoomDownVelocityYMaximum = 5000.0;
  self->_zoomDownVelocityYLayoutResponseMultiplier = 0.7;
  self->_zoomDownVelocityXMinimum = 1000.0;
  self->_zoomDownVelocityXMaximum = 4000.0;
  self->_zoomDownVelocityXPositionResponseMultiplier = 1.2;
}

+ (id)settingsControllerModule
{
  v307[26] = *MEMORY[0x277D85DE8];
  v282 = [MEMORY[0x277D431D8] rowWithTitle:@"Layout" childSettingsKeyPath:@"layoutSettings"];
  v281 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Up" childSettingsKeyPath:@"zoomUpSettings"];
  v280 = [MEMORY[0x277D431D8] rowWithTitle:@"Icon ZoomDown" childSettingsKeyPath:@"iconZoomDownSettings"];
  v279 = [MEMORY[0x277D431D8] rowWithTitle:@"Icon Zoom Floating Dock Fade Delay" childSettingsKeyPath:@"floatingDockIconFadeSettings"];
  v278 = [MEMORY[0x277D431D8] rowWithTitle:@"Switcher Icon Zoom Fade Out" childSettingsKeyPath:@"switcherZoomDownIconFadeOutSettings"];
  v277 = [MEMORY[0x277D431D8] rowWithTitle:@"Switcher Icon Fade In" childSettingsKeyPath:@"iconFadeInSettings"];
  v276 = [MEMORY[0x277D431D8] rowWithTitle:@"Switcher Fade Out" childSettingsKeyPath:@"switcherFadeOutSettings"];
  v275 = [MEMORY[0x277D431D8] rowWithTitle:@"Center Zoom" childSettingsKeyPath:@"centerZoomSettings"];
  v274 = [MEMORY[0x277D431D8] rowWithTitle:@"Slide Over" childSettingsKeyPath:@"slideOverSettings"];
  v273 = [MEMORY[0x277D431D8] rowWithTitle:@"Toggle App Switcher" childSettingsKeyPath:@"toggleAppSwitcherSettings"];
  v272 = [MEMORY[0x277D431D8] rowWithTitle:@"Launch App From Switcher" childSettingsKeyPath:@"launchAppFromSwitcherSettings"];
  v271 = [MEMORY[0x277D431D8] rowWithTitle:@"Switcher To Home" childSettingsKeyPath:@"switcherToHomeSettings"];
  v270 = [MEMORY[0x277D431D8] rowWithTitle:@"Stacked Switcher Tracking Paramters" childSettingsKeyPath:@"stackedSwitcherTrackingSettings"];
  v269 = [MEMORY[0x277D431D8] rowWithTitle:@"Home Screen Blur" childSettingsKeyPath:@"backdropBlurSettings"];
  v268 = [MEMORY[0x277D431D8] rowWithTitle:@"Home Screen Opacity" childSettingsKeyPath:@"homeScreenOpacitySettings"];
  v267 = [MEMORY[0x277D431D8] rowWithTitle:@"Home Screen Scale" childSettingsKeyPath:@"homeScreenScaleSettings"];
  v266 = [MEMORY[0x277D431D8] rowWithTitle:@"Opacity" childSettingsKeyPath:@"opacitySettings"];
  v265 = [MEMORY[0x277D431D8] rowWithTitle:@"Center Zoom Opacity" childSettingsKeyPath:@"centerZoomOpacitySettings"];
  v210 = [MEMORY[0x277D431D8] rowWithTitle:@"Swipe Shelf to Kill Opacity" childSettingsKeyPath:@"swipeToKillOpacitySettings"];
  v209 = [MEMORY[0x277D431D8] rowWithTitle:@"Switcher To Home Opacity" childSettingsKeyPath:@"switcherToHomeOpacitySettings"];
  v208 = [MEMORY[0x277D431D8] rowWithTitle:@"Wallpaper Scale" childSettingsKeyPath:@"wallpaperScaleSettings"];
  v207 = [MEMORY[0x277D431D8] rowWithTitle:@"App Selection Squish" childSettingsKeyPath:@"appSelectionSquishSettings"];
  v206 = [MEMORY[0x277D431D8] rowWithTitle:@"Status Bar Fade In" childSettingsKeyPath:@"statusBarFadeInSettings"];
  v205 = [MEMORY[0x277D431D8] rowWithTitle:@"Status Bar Fade Out" childSettingsKeyPath:@"statusBarFadeOutSettings"];
  v2 = [MEMORY[0x277D431E8] rowWithTitle:@"Status Bar To Apex Bounce Duration" valueKeyPath:@"statusBarToApexBounceAnimationDuration"];
  v204 = [v2 between:0.0 and:2.0];

  v3 = [MEMORY[0x277D431E8] rowWithTitle:@"Status Bar From Apex Bounce Duration" valueKeyPath:@"statusBarFromApexBounceAnimationDuration"];
  v203 = [v3 between:0.0 and:2.0];

  v4 = MEMORY[0x277D43210];
  v307[0] = v282;
  v307[1] = v281;
  v307[2] = v280;
  v307[3] = v279;
  v307[4] = v278;
  v307[5] = v277;
  v307[6] = v276;
  v307[7] = v275;
  v307[8] = v274;
  v307[9] = v273;
  v307[10] = v272;
  v307[11] = v271;
  v307[12] = v270;
  v307[13] = v269;
  v307[14] = v268;
  v307[15] = v267;
  v307[16] = v266;
  v307[17] = v265;
  v307[18] = v210;
  v307[19] = v209;
  v307[20] = v208;
  v307[21] = v207;
  v307[22] = v206;
  v307[23] = v205;
  v307[24] = v204;
  v307[25] = v203;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v307 count:26];
  v264 = [v4 sectionWithRows:v5 title:@"Animation Settings"];

  v202 = [MEMORY[0x277D432A8] rowWithTitle:@"Perform Two Phase Full Screen To Peek Transition" valueKeyPath:@"performTwoPhaseFullScreenToPeekTransition"];
  v201 = [MEMORY[0x277D431D8] rowWithTitle:@"Full Screen To Peek First Phase Animation Settings" childSettingsKeyPath:@"fullScreenToPeekFirstPhaseAnimationSettings"];
  v200 = [MEMORY[0x277D431D8] rowWithTitle:@"Full Screen To Peek Second Phase Animation Settings" childSettingsKeyPath:@"fullScreenToPeekSecondPhaseAnimationSettings"];
  v199 = [MEMORY[0x277D431E8] rowWithTitle:@"Full Screen To Peek Second Phase Animation Delay" valueKeyPath:@"fullScreenToPeekSecondPhaseAnimationDelay"];
  v198 = [MEMORY[0x277D431D8] rowWithTitle:@"Split View to Slide Over" childSettingsKeyPath:@"splitViewToSlideOverSettings"];
  v197 = [MEMORY[0x277D431D8] rowWithTitle:@"Slide Over to Full Screen Animation Settings" childSettingsKeyPath:@"slideOverToFullScreenAnimationSettings"];
  v196 = [MEMORY[0x277D431E8] rowWithTitle:@"Slide Over to Full Screen Outgoing App Scale Back Amount" valueKeyPath:@"slideOverToFullScreenOutgoingAppScaleBack"];
  v195 = [MEMORY[0x277D431E8] rowWithTitle:@"Slide Over to Full Screen Outgoing App Final Opacity" valueKeyPath:@"slideOverToFullScreenOutgoingFinalOpacity"];
  v194 = [MEMORY[0x277D431D8] rowWithTitle:@"Center to Slide Over (and Back) Animation Settings" childSettingsKeyPath:@"centerToSlideOverAnimationSettings"];
  v6 = MEMORY[0x277D43210];
  v306[0] = v202;
  v306[1] = v201;
  v306[2] = v200;
  v306[3] = v199;
  v306[4] = v198;
  v306[5] = v197;
  v306[6] = v196;
  v306[7] = v195;
  v306[8] = v194;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v306 count:9];
  v263 = [v6 sectionWithRows:v7 title:@"Top Affordance Transition Settings"];

  v8 = MEMORY[0x277D43210];
  v9 = [MEMORY[0x277D431D8] rowWithTitle:@"Slide Up" childSettingsKeyPath:@"slideUpSettings"];
  v305 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v305 count:1];
  v262 = [v8 sectionWithRows:v10 title:@"Entity Presentation"];

  v11 = MEMORY[0x277D43210];
  v12 = [MEMORY[0x277D431D8] rowWithTitle:@"Swap App Sides Using 🌐-Control-Left/Right childSettingsKeyPath:{Layout", @"swapAppSidesLayoutAnimationSettings"}];
  v304[0] = v12;
  v13 = [MEMORY[0x277D431D8] rowWithTitle:@"Swap App Sides Using 🌐-Control-Left/Right childSettingsKeyPath:{Opacity", @"swapAppSidesOpacityAnimationSettings"}];
  v304[1] = v13;
  v14 = [MEMORY[0x277D431E8] rowWithTitle:@"Delay Until Shadow Starts Fading Out In Swap App Sides Transition" valueKeyPath:@"swapAppSidesShadowFadeOutDelay"];
  v304[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v304 count:3];
  v261 = [v11 sectionWithRows:v15 title:@"Keyboard Shortcut Transition Settings"];

  v16 = MEMORY[0x277D43210];
  v17 = [MEMORY[0x277D431D8] rowWithTitle:@"Full Screen Zoom Up (Center Row)" childSettingsKeyPath:@"genieFullScreenCenterRowZoomUpSettings"];
  v303[0] = v17;
  v18 = [MEMORY[0x277D431D8] rowWithTitle:@"Full Screen Zoom Up (Edge Row)" childSettingsKeyPath:@"genieFullScreenEdgeRowZoomUpSettings"];
  v303[1] = v18;
  v19 = [MEMORY[0x277D431D8] rowWithTitle:@"Windowed Zoom Up" childSettingsKeyPath:@"genieWindowedZoomUpSettings"];
  v303[2] = v19;
  v20 = [MEMORY[0x277D431E8] rowWithTitle:@"Corner Reset Delay To App" valueKeyPath:@"genieCornerRadiusToAppResetDelay"];
  v303[3] = v20;
  v21 = [MEMORY[0x277D431E8] rowWithTitle:@"Corner Reset Delay To Home" valueKeyPath:@"genieCornerRadiusToHomeResetDelay"];
  v303[4] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v303 count:5];
  v260 = [v16 sectionWithRows:v22 title:@"Genie"];

  v259 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Up Center" childSettingsKeyPath:@"homeGestureCenterRowZoomUpSettings"];
  v258 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Up Top/Bottom" childSettingsKeyPath:@"homeGestureEdgeRowZoomUpSettings"];
  v257 = [MEMORY[0x277D431E8] rowWithTitle:@"Zoom Down Scale Multiplier" valueKeyPath:@"homeGestureZoomDownScaleMultiplier"];
  v256 = [MEMORY[0x277D431E8] rowWithTitle:@"Zoom Down Scale Multiplier Widgets" valueKeyPath:@"homeGestureZoomDownScaleMultiplierWidgets"];
  v255 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Top (Layout)" childSettingsKeyPath:@"homeGestureTopRowZoomDownLayoutSettings"];
  v254 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Top (Position)" childSettingsKeyPath:@"homeGestureTopRowZoomDownPositionSettings"];
  v253 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Top (Scale)" childSettingsKeyPath:@"homeGestureTopRowZoomDownScaleSettings"];
  v252 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Bottom (Layout)" childSettingsKeyPath:@"homeGestureBottomRowZoomDownLayoutSettings"];
  v251 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Bottom (Position)" childSettingsKeyPath:@"homeGestureBottomRowZoomDownPositionSettings"];
  v250 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Bottom (Scale)" childSettingsKeyPath:@"homeGestureBottomRowZoomDownScaleSettings"];
  v249 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Small Widget (Layout)" childSettingsKeyPath:@"homeGestureSmallWidgetZoomDownLayoutSettings"];
  v248 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Small Widget (Position)" childSettingsKeyPath:@"homeGestureSmallWidgetZoomDownPositionSettings"];
  v247 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Small Widget (Scale)" childSettingsKeyPath:@"homeGestureSmallWidgetZoomDownScaleSettings"];
  v246 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Medium Widget (Layout)" childSettingsKeyPath:@"homeGestureMediumWidgetZoomDownLayoutSettings"];
  v245 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Medium Widget (Position)" childSettingsKeyPath:@"homeGestureMediumWidgetZoomDownPositionSettings"];
  v244 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Medium Widget (Scale)" childSettingsKeyPath:@"homeGestureMediumWidgetZoomDownScaleSettings"];
  v243 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Large Widget (Layout)" childSettingsKeyPath:@"homeGestureLargeWidgetZoomDownLayoutSettings"];
  v242 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Large Widget (Position)" childSettingsKeyPath:@"homeGestureLargeWidgetZoomDownPositionSettings"];
  v241 = [MEMORY[0x277D431D8] rowWithTitle:@"Zoom Down Large Widget (Scale)" childSettingsKeyPath:@"homeGestureLargeWidgetZoomDownScaleSettings"];
  v23 = [MEMORY[0x277D431E8] rowWithTitle:@"Widget Scale Velocity Minimum" valueKeyPath:@"zoomDownWidgetScaleVelocityYMinimum"];
  v240 = [v23 between:0.0 and:10000.0];

  v24 = [MEMORY[0x277D431E8] rowWithTitle:@"Widget Scale Velocity Maximum" valueKeyPath:@"zoomDownWidgetScaleVelocityYMaximum"];
  v239 = [v24 between:0.0 and:10000.0];

  v25 = [MEMORY[0x277D431E8] rowWithTitle:@"Widget Scale Overshoot Min Multiplier" valueKeyPath:@"zoomDownWidgetScaleOvershootMinimumMultiplier"];
  v238 = [v25 between:0.0 and:10.0];

  v26 = [MEMORY[0x277D431E8] rowWithTitle:@"Widget Scale Overshoot Max Multiplier" valueKeyPath:@"zoomDownWidgetScaleOvershootMaximumMultiplier"];
  v237 = [v26 between:0.0 and:10.0];

  v27 = [MEMORY[0x277D431E8] rowWithTitle:@"Widget Scale Overshoot Duration" valueKeyPath:@"zoomDownWidgetScaleOvershootDuration"];
  v236 = [v27 between:0.0 and:10.0];

  v235 = [MEMORY[0x277D431D8] rowWithTitle:@"Arc Swipe" childSettingsKeyPath:@"arcSwipeSettings"];
  v234 = [MEMORY[0x277D431D8] rowWithTitle:@"Arc Swipe Switcher Glancing" childSettingsKeyPath:@"arcSwipeSwitcherGlancingSettings"];
  v233 = [MEMORY[0x277D431D8] rowWithTitle:@"App to Switcher Swipe Up Corner Radius" childSettingsKeyPath:@"appToSwitcherCornerRadiusSettings"];
  v232 = [MEMORY[0x277D431D8] rowWithTitle:@"Card Fly In" childSettingsKeyPath:@"cardFlyInSettings"];
  v28 = [MEMORY[0x277D431E8] rowWithTitle:@"Acceleration Dip Threshold" valueKeyPath:@"cardFlyInAccelerationDipThreshold"];
  v231 = [v28 between:0.0 and:100000.0];

  v29 = [MEMORY[0x277D431E8] rowWithTitle:@"Min Touch Samples For Acceleration Dip" valueKeyPath:@"_minimumTouchSamplesForAccelerationDip"];
  v30 = [v29 between:0.0 and:100.0];
  v230 = [v30 precision:0];

  v229 = [MEMORY[0x277D431D8] rowWithTitle:@"Reduce Motion Arc Swipe" childSettingsKeyPath:@"reduceMotionArcSwipeSettings"];
  v228 = [MEMORY[0x277D431D8] rowWithTitle:@"Reduce Motion App To Switcher" childSettingsKeyPath:@"reduceMotionAppToSwitcherSettings"];
  v31 = [MEMORY[0x277D431E8] rowWithTitle:@"Reduce Motion Trigger Delay" valueKeyPath:@"reduceMotionTriggerDelay"];
  v193 = [v31 between:0.0 and:1.0];

  v32 = [MEMORY[0x277D431E8] rowWithTitle:@"Zoom Down Velocity Y Minimum" valueKeyPath:@"zoomDownVelocityYMinimum"];
  v192 = [v32 between:0.0 and:10000.0];

  v33 = [MEMORY[0x277D431E8] rowWithTitle:@"Zoom Down Velocity Y Maximum" valueKeyPath:@"zoomDownVelocityYMaximum"];
  v191 = [v33 between:0.0 and:10000.0];

  v34 = [MEMORY[0x277D431E8] rowWithTitle:@"Zoom Down Velocity Y Multiplier" valueKeyPath:@"zoomDownVelocityYLayoutResponseMultiplier"];
  v190 = [v34 between:0.0 and:2.0];

  v35 = [MEMORY[0x277D431E8] rowWithTitle:@"Zoom Down Velocity X Minimum" valueKeyPath:@"zoomDownVelocityXMinimum"];
  v189 = [v35 between:0.0 and:10000.0];

  v36 = [MEMORY[0x277D431E8] rowWithTitle:@"Zoom Down Velocity X Maximum" valueKeyPath:@"zoomDownVelocityXMaximum"];
  v188 = [v36 between:0.0 and:10000.0];

  v37 = [MEMORY[0x277D431E8] rowWithTitle:@"Zoom Down Velocity X Multiplier" valueKeyPath:@"zoomDownVelocityXPositionResponseMultiplier"];
  v187 = [v37 between:0.0 and:2.0];

  v38 = MEMORY[0x277D43210];
  v302[0] = v259;
  v302[1] = v258;
  v302[2] = v257;
  v302[3] = v256;
  v302[4] = v255;
  v302[5] = v254;
  v302[6] = v253;
  v302[7] = v252;
  v302[8] = v251;
  v302[9] = v250;
  v302[10] = v249;
  v302[11] = v248;
  v302[12] = v247;
  v302[13] = v246;
  v302[14] = v245;
  v302[15] = v244;
  v302[16] = v243;
  v302[17] = v242;
  v302[18] = v241;
  v302[19] = v240;
  v302[20] = v239;
  v302[21] = v238;
  v302[22] = v237;
  v302[23] = v236;
  v302[24] = v235;
  v302[25] = v234;
  v302[26] = v232;
  v302[27] = v231;
  v302[28] = v230;
  v302[29] = v233;
  v302[30] = v229;
  v302[31] = v228;
  v302[32] = v193;
  v302[33] = v192;
  v302[34] = v191;
  v302[35] = v190;
  v302[36] = v189;
  v302[37] = v188;
  v302[38] = v187;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v302 count:39];
  v227 = [v38 sectionWithRows:v39 title:@"Home Gesture Settings"];

  v186 = [MEMORY[0x277D432A8] rowWithTitle:@"Allow Icon Zoom From Medium Widgets" valueKeyPath:@"allowIconZoomFromMediumWidgets"];
  v185 = [MEMORY[0x277D432A8] rowWithTitle:@"Allow Icon Zoom From Large Widgets" valueKeyPath:@"allowIconZoomFromLargeWidgets"];
  v40 = MEMORY[0x277D43210];
  v301[0] = v186;
  v301[1] = v185;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v301 count:2];
  v226 = [v40 sectionWithRows:v41];

  v225 = [MEMORY[0x277D431D8] rowWithTitle:@"Dosido (X Movement)" childSettingsKeyPath:@"dosidoSettings"];
  v224 = [MEMORY[0x277D431D8] rowWithTitle:@"Dosido Scale Down" childSettingsKeyPath:@"dosidoScaleDownSettings"];
  v223 = [MEMORY[0x277D431D8] rowWithTitle:@"Dosido Scale Up" childSettingsKeyPath:@"dosidoScaleUpSettings"];
  v42 = [MEMORY[0x277D43290] rowWithTitle:@"Dosido Scale" valueKeyPath:@"dosidoScale"];
  v184 = [v42 minValue:0.0 maxValue:1.0];

  v43 = [MEMORY[0x277D431E8] rowWithTitle:@"Dosido Scale Up Delay" valueKeyPath:@"dosidoScaleUpDelay"];
  v183 = [v43 between:0.0 and:1.0];

  v182 = [MEMORY[0x277D431D8] rowWithTitle:@"Crossblur Dosido" childSettingsKeyPath:@"crossblurDosidoSettings"];
  v44 = [MEMORY[0x277D431E8] rowWithTitle:@"Crossblur Dosido Small Scale" valueKeyPath:@"crossblurDosidoSmallScale"];
  v181 = [v44 between:0.0 and:0.01];

  v45 = [MEMORY[0x277D431E8] rowWithTitle:@"Crossblur Dosido Center Zoom Up Small Scale" valueKeyPath:@"crossblurDosidoCenterZoomUpSmallScale"];
  v180 = [v45 between:0.0 and:1.0];

  v46 = [MEMORY[0x277D431E8] rowWithTitle:@"Crossblur Dosido Large Scale" valueKeyPath:@"crossblurDosidoLargeScale"];
  v179 = [v46 between:0.0 and:10.0];

  v47 = [MEMORY[0x277D431E8] rowWithTitle:@"Crossblur Dosido Blur Radius" valueKeyPath:@"crossblurDosidoBlurRadius"];
  v178 = [v47 between:0.0 and:100.0];

  v48 = [MEMORY[0x277D431E8] rowWithTitle:@"Crossblur Rasterization Scale" valueKeyPath:@"crossblurRasterizationScale"];
  v177 = [v48 between:0.0 and:5.0];

  v176 = [MEMORY[0x277D431D8] rowWithTitle:@"Crossfade Dosido" childSettingsKeyPath:@"crossfadeDosidoSettings"];
  v49 = MEMORY[0x277D43210];
  v300[0] = v225;
  v300[1] = v224;
  v300[2] = v223;
  v300[3] = v184;
  v300[4] = v183;
  v300[5] = v182;
  v300[6] = v180;
  v300[7] = v181;
  v300[8] = v179;
  v300[9] = v178;
  v300[10] = v177;
  v300[11] = v176;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v300 count:12];
  v222 = [v49 sectionWithRows:v50 title:@"Dosido"];

  v51 = MEMORY[0x277D43210];
  v52 = [MEMORY[0x277D43290] rowWithTitle:@"Disable Async Rendering (Transition %)" valueKeyPath:@"disableAsyncRenderingTransitionPercentage"];
  v53 = [v52 minValue:0.0 maxValue:1.0];
  v299 = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v299 count:1];
  v220 = [v51 sectionWithRows:v54];

  v55 = MEMORY[0x277D43210];
  v56 = [MEMORY[0x277D43290] rowWithTitle:@"Disallow Accelerated Home Button Press (Transition %)" valueKeyPath:@"disallowAcceleratedHomeButtonPressTransitionPercentage"];
  v57 = [v56 minValue:0.0 maxValue:1.0];
  v298 = v57;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v298 count:1];
  v221 = [v55 sectionWithRows:v58];

  v59 = MEMORY[0x277D43210];
  v60 = [MEMORY[0x277D43290] rowWithTitle:@"Disable Tap During Morph From InApp View Transition Delay" valueKeyPath:@"disableTapDuringMorphFromInAppViewTransitionDelay"];
  v61 = [v60 minValue:0.0 maxValue:1.0];
  v297 = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v297 count:1];
  v219 = [v59 sectionWithRows:v62];

  v175 = [MEMORY[0x277D431D8] rowWithTitle:@"Alert Cardified Dismissal" childSettingsKeyPath:@"alertCardifiedDismissalSettings"];
  v63 = MEMORY[0x277D43210];
  v296[0] = v175;
  v64 = [MEMORY[0x277D431E8] rowWithTitle:@"Alert Cardified Haptic Delay" valueKeyPath:@"alertCardifiedDismissHapticDelay"];
  v296[1] = v64;
  v65 = [MEMORY[0x277D431E8] rowWithTitle:@"Alert Cardified Zoom Out Delay" valueKeyPath:@"alertCardifiedDismissZoomOutDelay"];
  v296[2] = v65;
  v66 = [MEMORY[0x277D431E8] rowWithTitle:@"Alert Cardified Client Animations Delay" valueKeyPath:@"alertCardifiedDismissClientAnimationsDelay"];
  v296[3] = v66;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v296 count:4];
  v218 = [v63 sectionWithRows:v67];

  v174 = [MEMORY[0x277D431D8] rowWithTitle:@"Alert Bar Swipe Dismissal" childSettingsKeyPath:@"alertBarSwipeDismissalSettings"];
  v68 = MEMORY[0x277D43210];
  v295[0] = v174;
  v69 = [MEMORY[0x277D431E8] rowWithTitle:@"Alert Bar Swipe Haptic Delay" valueKeyPath:@"alertBarSwipeDismissHapticDelay"];
  v295[1] = v69;
  v70 = [MEMORY[0x277D431E8] rowWithTitle:@"Alert Bar Swipe Zoom Out Delay" valueKeyPath:@"alertBarSwipeDismissZoomOutDelay"];
  v295[2] = v70;
  v71 = [MEMORY[0x277D431E8] rowWithTitle:@"Alert Bar Swipe Client Animations Delay" valueKeyPath:@"alertBarSwipeDismissClientAnimationsDelay"];
  v295[3] = v71;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v295 count:4];
  v217 = [v68 sectionWithRows:v72];

  v173 = [MEMORY[0x277D431D8] rowWithTitle:@"Siri Swipe Dismissal" childSettingsKeyPath:@"siriSwipeDismissalSettings"];
  v73 = MEMORY[0x277D43210];
  v294[0] = v173;
  v74 = [MEMORY[0x277D431E8] rowWithTitle:@"Siri Swipe Haptic Delay" valueKeyPath:@"siriSwipeDismissHapticDelay"];
  v294[1] = v74;
  v75 = [MEMORY[0x277D431E8] rowWithTitle:@"Siri Swipe Zoom Out Delay" valueKeyPath:@"siriSwipeDismissZoomOutDelay"];
  v294[2] = v75;
  v76 = [MEMORY[0x277D431E8] rowWithTitle:@"Siri Swipe Client Animations Delay" valueKeyPath:@"siriSwipeDismissClientAnimationsDelay"];
  v294[3] = v76;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v294 count:4];
  v216 = [v73 sectionWithRows:v77];

  v78 = [MEMORY[0x277D431E8] rowWithTitle:@"Reopen Button Initial Scale" valueKeyPath:@"reopenButtonInitialScale"];
  v172 = [v78 between:0.0 and:1.0];

  v171 = [MEMORY[0x277D431E8] rowWithTitle:@"Reopen Button Fade In Delay" valueKeyPath:@"reopenButtonFadeInDelay"];
  v170 = [MEMORY[0x277D431D8] rowWithTitle:@"Card Fly In" childSettingsKeyPath:@"reopenButtonScaleSettings"];
  v79 = MEMORY[0x277D43210];
  v293[0] = v172;
  v293[1] = v171;
  v293[2] = v170;
  v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v293 count:3];
  v215 = [v79 sectionWithRows:v80];

  v169 = [MEMORY[0x277D431D8] rowWithTitle:@"Banner Unfurl" childSettingsKeyPath:@"bannerUnfurlSettings"];
  v168 = [MEMORY[0x277D431D8] rowWithTitle:@"Banner Unfurl Wallpaper Alpha" childSettingsKeyPath:@"bannerUnfurlWallpaperAlphaSettings"];
  v81 = MEMORY[0x277D43210];
  v292[0] = v169;
  v292[1] = v168;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v292 count:2];
  v214 = [v81 sectionWithRows:v82];

  v83 = [MEMORY[0x277D431D8] rowWithTitle:@"Scale Animation Settings" childSettingsKeyPath:@"coverSheetFlyInScaleSettings"];
  v291[0] = v83;
  v84 = [MEMORY[0x277D431D8] rowWithTitle:@"Blur Animation Settings" childSettingsKeyPath:@"coverSheetFlyInBlurSettings"];
  v291[1] = v84;
  v85 = [MEMORY[0x277D431D8] rowWithTitle:@"Opacity Animation Settings" childSettingsKeyPath:@"coverSheetFlyInOpacitySettings"];
  v291[2] = v85;
  v86 = [MEMORY[0x277D431E8] rowWithTitle:@"Scale" valueKeyPath:@"coverSheetFlyInScale"];
  v291[3] = v86;
  v87 = [MEMORY[0x277D431E8] rowWithTitle:@"Blur Radius" valueKeyPath:@"coverSheetFlyInBlurRadius"];
  v291[4] = v87;
  v88 = [MEMORY[0x277D431E8] rowWithTitle:@"Velocity Scale Factor" valueKeyPath:@"coverSheetFlyInVelocityScaleFactor"];
  v291[5] = v88;
  v89 = [MEMORY[0x277D431E8] rowWithTitle:@"Max Velocity" valueKeyPath:@"coverSheetFlyInMaximumVelocity"];
  v291[6] = v89;
  v167 = [MEMORY[0x277CBEA60] arrayWithObjects:v291 count:7];

  v213 = [MEMORY[0x277D43210] sectionWithRows:v167 title:@"Cover Sheet Fly In"];
  array = [MEMORY[0x277CBEB18] array];
  v91 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Screen Blur in Switcher" valueKeyPath:@"homeScreenBlurInSwitcher"];
  v92 = [v91 between:0.0 and:1.0];
  [array addObject:v92];

  v93 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Screen Blur in Switcher (Reduce Motion Enabled)" valueKeyPath:@"homeScreenBlurInSwitcherReduceMotionEnabled"];
  v94 = [v93 between:0.0 and:1.0];
  [array addObject:v94];

  v95 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Screen Blur in Application" valueKeyPath:@"homeScreenBlurInApplication"];
  v96 = [v95 between:0.0 and:1.0];
  [array addObject:v96];

  v97 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Screen Blur in Assistant" valueKeyPath:@"homeScreenBlurInAssistant"];
  v98 = [v97 between:0.0 and:1.0];
  v99 = [v98 precision:3];
  [array addObject:v99];

  v100 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Screen Opacity in Switcher" valueKeyPath:@"homeScreenOpacityInSwitcher"];
  v101 = [v100 between:0.0 and:1.0];
  [array addObject:v101];

  v102 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Screen Opacity in Application" valueKeyPath:@"homeScreenOpacityInApplication"];
  v103 = [v102 between:0.0 and:1.0];
  [array addObject:v103];

  v104 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Screen Scale in Switcher" valueKeyPath:@"homeScreenScaleInSwitcher"];
  v105 = [v104 between:0.0 and:2.0];
  [array addObject:v105];

  v106 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Screen Scale in Application" valueKeyPath:@"homeScreenScaleInApplication"];
  v107 = [v106 between:0.0 and:2.0];
  [array addObject:v107];

  v108 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Screen Scale in Assistant" valueKeyPath:@"homeScreenScaleInAssistant"];
  v109 = [v108 between:0.0 and:2.0];
  [array addObject:v109];

  v110 = [MEMORY[0x277D431E8] rowWithTitle:@"Wallpaper Scale in Switcher" valueKeyPath:@"wallpaperScaleInSwitcher"];
  v111 = [v110 between:0.0 and:2.0];
  [array addObject:v111];

  v112 = [MEMORY[0x277D431E8] rowWithTitle:@"Wallpaper Scale in Application" valueKeyPath:@"wallpaperScaleInApplication"];
  v113 = [v112 between:0.0 and:2.0];
  [array addObject:v113];

  v114 = [MEMORY[0x277D431E8] rowWithTitle:@"Dimming Alpha in Switcher" valueKeyPath:@"dimmingAlphaInSwitcher"];
  v115 = [v114 between:0.0 and:1.0];
  [array addObject:v115];

  v116 = [MEMORY[0x277D431E8] rowWithTitle:@"Dimming Alpha in Application" valueKeyPath:@"dimmingAlphaInApplication"];
  v117 = [v116 between:0.0 and:1.0];
  [array addObject:v117];

  v118 = [MEMORY[0x277D431E8] rowWithTitle:@"RM Crossfade Duration" valueKeyPath:@"reduceMotionCrossfadeDuration"];
  v119 = [v118 between:0.0 and:1.0];
  [array addObject:v119];

  v212 = [MEMORY[0x277D43210] sectionWithRows:array];
  v120 = MEMORY[0x277D431B0];
  v121 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v166 = [v120 rowWithTitle:@"Restore Defaults" action:v121];

  v122 = MEMORY[0x277D43210];
  v290 = v166;
  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v290 count:1];
  v211 = [v122 sectionWithRows:v123];

  v165 = [MEMORY[0x277D431E8] rowWithTitle:@"Icon Hide Delay" valueKeyPath:@"iconZoomFloatingDockFadeDelay"];
  v124 = MEMORY[0x277D43210];
  v289 = v165;
  v125 = [MEMORY[0x277CBEA60] arrayWithObjects:&v289 count:1];
  v162 = [v124 sectionWithRows:v125];

  v164 = [MEMORY[0x277D431E8] rowWithTitle:@"Empty Switcher Dismiss Delay" valueKeyPath:@"emptySwitcherDismissDelay"];
  v126 = MEMORY[0x277D43210];
  v288 = v164;
  v127 = [MEMORY[0x277CBEA60] arrayWithObjects:&v288 count:1];
  v160 = [v126 sectionWithRows:v127];

  v163 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Blur Delay" valueKeyPath:@"resizeBlurDelay"];
  v128 = MEMORY[0x277D43210];
  v287 = v163;
  v129 = [MEMORY[0x277CBEA60] arrayWithObjects:&v287 count:1];
  v159 = [v128 sectionWithRows:v129];

  v130 = [MEMORY[0x277D431E8] rowWithTitle:@"Title & Icon Fade In Slowness Factor" valueKeyPath:@"appSwitcherTitleAndIconFadeInSlowDownFactor"];
  v161 = [v130 between:1.0 and:10.0];

  v131 = MEMORY[0x277D43210];
  v286 = v161;
  v132 = [MEMORY[0x277CBEA60] arrayWithObjects:&v286 count:1];
  v155 = [v131 sectionWithRows:v132];

  v158 = [MEMORY[0x277D431D8] rowWithTitle:@"Pulse" childSettingsKeyPath:@"pulseScaleSettings"];
  v133 = [MEMORY[0x277D431E8] rowWithTitle:@"Pulse Scale" valueKeyPath:@"pulseScale"];
  v157 = [v133 between:0.0 and:1.0];

  v134 = [MEMORY[0x277D431E8] rowWithTitle:@"Pulse Second Stage Delay" valueKeyPath:@"pulseSecondStageDelay"];
  v156 = [v134 between:0.0 and:1.0];

  v135 = MEMORY[0x277D43210];
  v285[0] = v158;
  v285[1] = v157;
  v285[2] = v156;
  v136 = [MEMORY[0x277CBEA60] arrayWithObjects:v285 count:3];
  v154 = [v135 sectionWithRows:v136];

  v137 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Blur" valueKeyPath:@"homeScreenCenterZoomInitialBlur"];
  v153 = [v137 between:0.0 and:200.0];

  v138 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Scale" valueKeyPath:@"homeScreenCenterZoomInitialScale"];
  v152 = [v138 between:0.0 and:1.0];

  v139 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Opacity" valueKeyPath:@"homeScreenCenterZoomInitialOpacity"];
  v151 = [v139 between:0.0 and:1.0];

  v140 = [MEMORY[0x277D431E8] rowWithTitle:@"Target Scale Unblur Complete" valueKeyPath:@"homeScreenCenterZoomTargetScaleWhenUnblurringIsComplete"];
  v141 = [v140 between:0.0 and:1.0];

  v142 = [MEMORY[0x277D431E8] rowWithTitle:@"Y Off Percent ScreenHeight" valueKeyPath:@"homeScreenCenterZoomYOffsetPercentOfScreenHeight"];
  v143 = [v142 between:-1.0 and:1.0];

  v144 = MEMORY[0x277D43210];
  v284[0] = v153;
  v284[1] = v152;
  v284[2] = v151;
  v284[3] = v141;
  v284[4] = v143;
  v145 = [MEMORY[0x277CBEA60] arrayWithObjects:v284 count:5];
  v146 = [v144 sectionWithRows:v145 title:@"Home Screen Center Zoom"];

  v147 = MEMORY[0x277D43210];
  v283[0] = v211;
  v283[1] = v264;
  v283[2] = v263;
  v283[3] = v262;
  v283[4] = v261;
  v283[5] = v260;
  v283[6] = v227;
  v283[7] = v226;
  v283[8] = v222;
  v283[9] = v212;
  v283[10] = v162;
  v283[11] = v160;
  v283[12] = v159;
  v283[13] = v155;
  v283[14] = v220;
  v283[15] = v221;
  v283[16] = v219;
  v283[17] = v218;
  v283[18] = v217;
  v283[19] = v216;
  v283[20] = v215;
  v283[21] = v214;
  v283[22] = v213;
  v283[23] = v154;
  v283[24] = v146;
  v148 = [MEMORY[0x277CBEA60] arrayWithObjects:v283 count:25];
  v149 = [v147 moduleWithTitle:@"Deck Switcher Behaviors" contents:v148];

  return v149;
}

- (double)homeScreenBlurProgressForMode:(int64_t)mode
{
  if (mode == 3)
  {

    [(SBFluidSwitcherAnimationSettings *)self homeScreenBlurInApplication];
  }

  else if (mode == 2)
  {
    if (SBReduceMotion())
    {

      [(SBFluidSwitcherAnimationSettings *)self homeScreenBlurInSwitcherReduceMotionEnabled];
    }

    else
    {

      [(SBFluidSwitcherAnimationSettings *)self homeScreenBlurInSwitcher];
    }
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)homeScreenAlphaForMode:(int64_t)mode
{
  if (mode == 3)
  {

    [(SBFluidSwitcherAnimationSettings *)self homeScreenOpacityInApplication];
  }

  else
  {
    v4 = 1.0;
    if (mode == 2 && (v4 = 0.0, !UIAccessibilityIsReduceTransparencyEnabled()))
    {

      [(SBFluidSwitcherAnimationSettings *)self homeScreenOpacityInSwitcher];
    }

    else
    {
      return v4;
    }
  }

  return result;
}

- (double)homeScreenScaleForMode:(int64_t)mode
{
  if (mode == 3)
  {

    [(SBFluidSwitcherAnimationSettings *)self homeScreenScaleInApplication];
  }

  else if (mode == 2 && !UIAccessibilityIsReduceTransparencyEnabled())
  {

    [(SBFluidSwitcherAnimationSettings *)self homeScreenScaleInSwitcher];
  }

  else
  {
    return 1.0;
  }

  return result;
}

- (double)wallpaperScaleForMode:(int64_t)mode
{
  if (mode == 3)
  {

    [(SBFluidSwitcherAnimationSettings *)self wallpaperScaleInApplication];
  }

  else if (mode == 2 && !UIAccessibilityIsReduceTransparencyEnabled())
  {

    [(SBFluidSwitcherAnimationSettings *)self wallpaperScaleInSwitcher];
  }

  else
  {
    return 1.0;
  }

  return result;
}

- (double)homeScreenDimmingAlphaForMode:(int64_t)mode
{
  if (mode == 3)
  {
    [(SBFluidSwitcherAnimationSettings *)self dimmingAlphaInApplication];
  }

  else if (mode == 2)
  {
    [(SBFluidSwitcherAnimationSettings *)self dimmingAlphaInSwitcher];
  }

  else
  {
    return 0.0;
  }

  return result;
}

@end