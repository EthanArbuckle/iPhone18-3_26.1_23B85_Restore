@interface PXPhotosDetailsNavigationSettings
+ (BOOL)canEnableZoomBounce;
+ (PXPhotosDetailsNavigationSettings)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXPhotosDetailsNavigationSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsNavigationSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXPhotosDetailsNavigationSettings *)self setUseZoomTransition:1];
  [(PXPhotosDetailsNavigationSettings *)self setCustomZoomTransitionDimming:1];
  [(PXPhotosDetailsNavigationSettings *)self setZoomTransitionDimmingWhite:0.0];
  [(PXPhotosDetailsNavigationSettings *)self setZoomTransitionDimmingOpacity:0.5];
  [(PXPhotosDetailsNavigationSettings *)self setCustomZoomTransitionDimmingBlurEffect:1];
  [(PXPhotosDetailsNavigationSettings *)self setZoomTransitionDimmingBlurEffectStyle:3];
  [(PXPhotosDetailsNavigationSettings *)self setAllowZoomBounce:+[PXPhotosDetailsNavigationSettings canEnableZoomBounce]];
  [(PXPhotosDetailsNavigationSettings *)self setZoomBounceScale:0.9];
  [(PXPhotosDetailsNavigationSettings *)self setZoomBounceDelay:0.1];
  [(PXPhotosDetailsNavigationSettings *)self setZoomBounceRefractoryPeriod:0.5];
  [(PXPhotosDetailsNavigationSettings *)self setUseSystemSwipeToDismiss:1];
  [(PXPhotosDetailsNavigationSettings *)self setEnsureOpaqueDestination:1];
  [(PXPhotosDetailsNavigationSettings *)self setUseDebugColors:0];
  [(PXPhotosDetailsNavigationSettings *)self setShowDebugOverlays:0];
  [(PXPhotosDetailsNavigationSettings *)self setAllowScreenEdgeSwipeToDismiss:1];
  [(PXPhotosDetailsNavigationSettings *)self setScreenEdgeSwipeForegroundInset:35.0];
  [(PXPhotosDetailsNavigationSettings *)self setScreenEdgeSwipeSlideDownDuration:0.3];
  [(PXPhotosDetailsNavigationSettings *)self setScreenEdgeSwipeInteractionRelativeDistance:1.0];
  [(PXPhotosDetailsNavigationSettings *)self setScreenEdgeSwipeInteractiveFraction:0.5];
  [(PXPhotosDetailsNavigationSettings *)self setWorkAround123679412:0];
  [(PXPhotosDetailsNavigationSettings *)self setAllowZoomFromSheets:1];
  [(PXPhotosDetailsNavigationSettings *)self setWorkAround125263280:0];
}

+ (BOOL)canEnableZoomBounce
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 != 1;
}

+ (PXPhotosDetailsNavigationSettings)sharedInstance
{
  if (sharedInstance_onceToken_141769 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_141769, &__block_literal_global_141770);
  }

  v3 = sharedInstance_sharedInstance_141771;

  return v3;
}

void __51__PXPhotosDetailsNavigationSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 detailsNavigationSettings];
  v1 = sharedInstance_sharedInstance_141771;
  sharedInstance_sharedInstance_141771 = v0;
}

@end