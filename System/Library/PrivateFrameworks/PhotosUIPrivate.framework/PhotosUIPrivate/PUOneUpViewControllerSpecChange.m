@interface PUOneUpViewControllerSpecChange
- (BOOL)changed;
@end

@implementation PUOneUpViewControllerSpecChange

- (BOOL)changed
{
  v4.receiver = self;
  v4.super_class = PUOneUpViewControllerSpecChange;
  return [(PUViewControllerSpecChange *)&v4 changed]|| [(PUOneUpViewControllerSpecChange *)self chromeVisibilityChanged]|| [(PUOneUpViewControllerSpecChange *)self contentLockingChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldPlaceButtonsInNavigationBarChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldUseCompactTitleViewChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldUseContentGuideInsetsChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldUseUserTransformTilesChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldDisplayBadgesChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldDisplayAssetExplorerReviewScreenBadgesChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldDisplayPlayButtonsChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldDisplayProgressIndicatorsChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldDisplayBufferingIndicatorsChanged]|| [(PUOneUpViewControllerSpecChange *)self canDisplayLoadingIndicatorsChanged]|| [(PUOneUpViewControllerSpecChange *)self backgroundColorOverrideChanged]|| [(PUOneUpViewControllerSpecChange *)self progressIndicatorSizeChanged]|| [(PUOneUpViewControllerSpecChange *)self peopleRowSizeChanged]|| [(PUOneUpViewControllerSpecChange *)self progressIndicatorContentInsetsChanged]|| [(PUOneUpViewControllerSpecChange *)self bufferingIndicatorSizeChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldUseCompactCommentsTitleChanged]|| [(PUOneUpViewControllerSpecChange *)self maximumToolbarHeightChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldCounterrotateReviewScreenBarsChanged]|| [(PUOneUpViewControllerSpecChange *)self maximumAccessoryToolbarHeightChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldLayoutReviewScreenControlBarVerticallyChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldPlaceScrubberInScrubberBarChanged]|| [(PUOneUpViewControllerSpecChange *)self shouldDisplaySyndicationAttribution];
}

@end