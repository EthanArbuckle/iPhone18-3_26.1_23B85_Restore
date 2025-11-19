@interface PUBrowsingViewModelChange
- (BOOL)hasChanges;
- (NSMapTable)_mutableSharedViewModelChangesByAssetUUID;
- (NSMutableDictionary)_mutableViewModelChangesByAssetReference;
- (id)description;
@end

@implementation PUBrowsingViewModelChange

- (id)description
{
  if ([(PUBrowsingViewModelChange *)self hasChanges])
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:30];
    if ([(PUBrowsingViewModelChange *)self assetsDataSourceDidChange])
    {
      [v3 addObject:@"assetsDataSource"];
    }

    if ([(PUBrowsingViewModelChange *)self currentAssetDidChange])
    {
      [v3 addObject:@"currentAsset"];
    }

    if ([(PUBrowsingViewModelChange *)self currentAssetTransitionProgressDidChange])
    {
      [v3 addObject:@"currentAssetTransitionProgress"];
    }

    if ([(PUBrowsingViewModelChange *)self browsingSpeedRegimeDidChange])
    {
      [v3 addObject:@"browsingSpeedRegime"];
    }

    if ([(PUBrowsingViewModelChange *)self transitionDriverIdentifierDidChange])
    {
      [v3 addObject:@"transitionDriverIdentifier"];
    }

    if ([(PUBrowsingViewModelChange *)self isScrubbingDidChange])
    {
      [v3 addObject:@"isScrubbing"];
    }

    if ([(PUBrowsingViewModelChange *)self isScrollingDidChange])
    {
      [v3 addObject:@"isScrolling"];
    }

    if ([(PUBrowsingViewModelChange *)self livePhotoShouldPlayDidChange])
    {
      [v3 addObject:@"livePhotoShouldPlay"];
    }

    if ([(PUBrowsingViewModelChange *)self chromeVisibilityDidChange])
    {
      [v3 addObject:@"chromeVisibility"];
    }

    if ([(PUBrowsingViewModelChange *)self presentingOverOneUpDidChange])
    {
      [v3 addObject:@"presentingOverOneUp"];
    }

    v4 = [(PUBrowsingViewModelChange *)self assetViewModelChangesByAssetReference];
    v5 = [v4 count];

    if (v5)
    {
      [v3 addObject:@"assetViewModelChangesByAssetReference"];
    }

    if ([(PUBrowsingViewModelChange *)self videoOverlayPlayStateDidChange])
    {
      [v3 addObject:@"videoOverlayPlayState"];
    }

    if ([(PUBrowsingViewModelChange *)self isAttemptingToPlayVideoOverlayDidChange])
    {
      [v3 addObject:@"isAttemptingToPlayVideoOverlay"];
    }

    if ([(PUBrowsingViewModelChange *)self isScrubbingActivationDidChange])
    {
      [v3 addObject:@"isScrubbingActivation"];
    }

    if ([(PUBrowsingViewModelChange *)self isVideoContentAllowedDidChange])
    {
      [v3 addObject:@"isVideoContentAllowed"];
    }

    if ([(PUBrowsingViewModelChange *)self reviewScreenSelectionDidChange])
    {
      [v3 addObject:@"reviewScreenSelection"];
    }

    if ([(PUBrowsingViewModelChange *)self navigationBarTitleDidChange])
    {
      [v3 addObject:@"navigationBarTitle"];
    }

    if ([(PUBrowsingViewModelChange *)self resizeTaskDescriptorViewModelDidChange])
    {
      [v3 addObject:@"resizeTaskDescriptorViewModel"];
    }

    if ([(PUBrowsingViewModelChange *)self contentPrivacyStateDidChange])
    {
      [v3 addObject:@"contentPrivacyState"];
    }

    if ([(PUBrowsingViewModelChange *)self systemAuthenticationTypeDidChange])
    {
      [v3 addObject:@"systemAuthenticationType"];
    }

    if ([(PUBrowsingViewModelChange *)self wantsContentUnavailableUnlockButtonVisibleDidChange])
    {
      [v3 addObject:@"wantsContentUnavailableUnlockButtonVisible"];
    }

    if ([(PUBrowsingViewModelChange *)self isInSelectionModeDidChange])
    {
      [v3 addObject:@"isInSelectionMode"];
    }

    if ([(PUBrowsingViewModelChange *)self isPresentedForPreviewDidChange])
    {
      [v3 addObject:@"isPresentedForPreview"];
    }

    if ([(PUBrowsingViewModelChange *)self isFillScreenModeEnabledDidChange])
    {
      [v3 addObject:@"isFillScreenModeEnabled"];
    }

    if ([(PUBrowsingViewModelChange *)self videoPlayerDidChange])
    {
      [v3 addObject:@"videoPlayer"];
    }

    if ([(PUBrowsingViewModelChange *)self imageAnalysisInteractionDidChange])
    {
      [v3 addObject:@"imageAnalysisInteraction"];
    }

    if ([(PUBrowsingViewModelChange *)self isInteractingWithVideoScrubberDidChange])
    {
      [v3 addObject:@"isInteractingWithVideoScrubber"];
    }

    if ([(PUBrowsingViewModelChange *)self isAnimatingPresentationSizeDidChange])
    {
      [v3 addObject:@"isAnimatingPresentationSize"];
    }

    v11.receiver = self;
    v11.super_class = PUBrowsingViewModelChange;
    v6 = [(PUBrowsingViewModelChange *)&v11 description];
    v7 = [v3 componentsJoinedByString:{@", "}];
    v8 = [v6 stringByAppendingFormat:@"Changes: [%@]", v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PUBrowsingViewModelChange;
    v3 = [(PUBrowsingViewModelChange *)&v10 description];
    v8 = [v3 stringByAppendingString:@"(No changes)"];
  }

  return v8;
}

- (BOOL)hasChanges
{
  v8.receiver = self;
  v8.super_class = PUBrowsingViewModelChange;
  if ([(PUViewModelChange *)&v8 hasChanges])
  {
    return 1;
  }

  if ([(PUBrowsingViewModelChange *)self assetsDataSourceDidChange])
  {
    return 1;
  }

  if ([(PUBrowsingViewModelChange *)self currentAssetDidChange])
  {
    return 1;
  }

  if ([(PUBrowsingViewModelChange *)self currentAssetTransitionProgressDidChange])
  {
    return 1;
  }

  if ([(PUBrowsingViewModelChange *)self browsingSpeedRegimeDidChange])
  {
    return 1;
  }

  if ([(PUBrowsingViewModelChange *)self transitionDriverIdentifierDidChange])
  {
    return 1;
  }

  if ([(PUBrowsingViewModelChange *)self isScrubbingDidChange])
  {
    return 1;
  }

  if ([(PUBrowsingViewModelChange *)self isScrollingDidChange])
  {
    return 1;
  }

  if ([(PUBrowsingViewModelChange *)self livePhotoShouldPlayDidChange])
  {
    return 1;
  }

  if ([(PUBrowsingViewModelChange *)self chromeVisibilityDidChange])
  {
    return 1;
  }

  if ([(PUBrowsingViewModelChange *)self presentingOverOneUpDidChange])
  {
    return 1;
  }

  v3 = [(PUBrowsingViewModelChange *)self assetViewModelChangesByAssetReference];
  v4 = [v3 count];

  if (v4)
  {
    return 1;
  }

  v5 = [(PUBrowsingViewModelChange *)self assetSharedViewModelChangesByAssetUUID];
  v6 = [v5 count];

  return v6 || [(PUBrowsingViewModelChange *)self videoOverlayPlayStateDidChange]|| [(PUBrowsingViewModelChange *)self isAttemptingToPlayVideoOverlayDidChange]|| [(PUBrowsingViewModelChange *)self isScrubbingActivationDidChange]|| [(PUBrowsingViewModelChange *)self isVideoContentAllowedDidChange]|| [(PUBrowsingViewModelChange *)self reviewScreenSelectionDidChange]|| [(PUBrowsingViewModelChange *)self navigationBarTitleDidChange]|| [(PUBrowsingViewModelChange *)self resizeTaskDescriptorViewModelDidChange]|| [(PUBrowsingViewModelChange *)self contentPrivacyStateDidChange]|| [(PUBrowsingViewModelChange *)self systemAuthenticationTypeDidChange]|| [(PUBrowsingViewModelChange *)self wantsContentUnavailableUnlockButtonVisibleDidChange]|| [(PUBrowsingViewModelChange *)self isInSelectionModeDidChange]|| [(PUBrowsingViewModelChange *)self isPresentedForPreviewDidChange]|| [(PUBrowsingViewModelChange *)self isFillScreenModeEnabledDidChange]|| [(PUBrowsingViewModelChange *)self videoPlayerDidChange]|| [(PUBrowsingViewModelChange *)self imageAnalysisInteractionDidChange]|| [(PUBrowsingViewModelChange *)self isInteractingWithVideoScrubberDidChange]|| [(PUBrowsingViewModelChange *)self isAnimatingPresentationSizeDidChange];
}

- (NSMapTable)_mutableSharedViewModelChangesByAssetUUID
{
  mutableSharedViewModelChangesByAssetUUID = self->_mutableSharedViewModelChangesByAssetUUID;
  if (!mutableSharedViewModelChangesByAssetUUID)
  {
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = self->_mutableSharedViewModelChangesByAssetUUID;
    self->_mutableSharedViewModelChangesByAssetUUID = v4;

    mutableSharedViewModelChangesByAssetUUID = self->_mutableSharedViewModelChangesByAssetUUID;
  }

  return mutableSharedViewModelChangesByAssetUUID;
}

- (NSMutableDictionary)_mutableViewModelChangesByAssetReference
{
  mutableViewModelChangesByAssetReference = self->_mutableViewModelChangesByAssetReference;
  if (!mutableViewModelChangesByAssetReference)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_mutableViewModelChangesByAssetReference;
    self->_mutableViewModelChangesByAssetReference = v4;

    mutableViewModelChangesByAssetReference = self->_mutableViewModelChangesByAssetReference;
  }

  return mutableViewModelChangesByAssetReference;
}

@end