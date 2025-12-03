@interface PXImageModulationManager
+ ($5A0616AB7869379E861635CACF312FD6)optionsForAsset:(id)asset;
+ (double)HDRValueForAsset:(id)asset;
+ (double)_hdrGainForAsset:(id)asset;
+ (int64_t)_contentFormatForAsset:(id)asset;
- (PXImageModulationManager)init;
- (PXImageModulationManager)initWithRootViewController:(id)controller mainScreen:(BOOL)screen;
- (UIViewController)rootViewController;
- (id)_checkoutImageLayerModulatorWithOptions:(id)options contentType:(int64_t)type;
- (id)checkoutLivePhotoViewModulatorWithOptions:(id)options;
- (void)_didEndRequestingEDRHeadroomFactor:(double)factor;
- (void)_didStartRequestingEDRHeadroomFactor:(double)factor;
- (void)_updateActiveIfNeeded;
- (void)_updateCoreAnimationContext;
- (void)_updateCurrentScreenSupportsHDRIfNeeded;
- (void)_updateDesiredDynamicRangeIfNeeded;
- (void)_updateEnabledIfNeeded;
- (void)_updateFinalRequestedEDRHeadroomFactorIfNeeded;
- (void)_updateHDRFocusIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateImageLayerModulator:(id)modulator;
- (void)_updateImageLayerModulatorsIfNeeded;
- (void)_updateImageModulationIntensityIfNeeded;
- (void)_updateLowPowerModeEnabledIfNeeded;
- (void)_updateRequestedEDRHeadroomFactorIfNeeded;
- (void)checkInImageLayerModulator:(id)modulator;
- (void)checkInLivePhotoViewModulator:(id)modulator;
- (void)dealloc;
- (void)didPerformChanges;
- (void)enableForTesting;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)preferencesDidChange;
- (void)setActive:(BOOL)active;
- (void)setApplicationActive:(BOOL)active;
- (void)setCoreAnimationContext:(id)context;
- (void)setCurrentScreenSupportsHDR:(BOOL)r;
- (void)setEnabled:(BOOL)enabled;
- (void)setEnabledForTesting:(BOOL)testing;
- (void)setHDRFocus:(double)focus;
- (void)setImageModulationIntensity:(double)intensity;
- (void)setLowPowerModeEnabled:(BOOL)enabled;
- (void)setNeedsEnabledUpdate;
- (void)setNeedsHDRFocusUpdate;
- (void)setNeedsImageModulationIntensityUpdate;
- (void)setRequestedEDRHeadroomFactor:(double)factor;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation PXImageModulationManager

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

- (void)preferencesDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__PXImageModulationManager_preferencesDidChange__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXImageModulationManager *)self performChanges:v2];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PXImageModulationManager_settings_changedValueForKey___block_invoke;
  v7[3] = &unk_1E77498F8;
  v8 = keyCopy;
  selfCopy = self;
  v6 = keyCopy;
  [(PXImageModulationManager *)self performChanges:v7];
}

uint64_t __56__PXImageModulationManager_settings_changedValueForKey___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"enabled"])
  {
    [*(a1 + 40) _invalidateEnabled];
  }

  if (([*(a1 + 32) isEqualToString:@"EDRHeadroomRequestScheme"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", @"manualEDRHeadroomRequestStops") & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "isEqualToString:", @"EDRHeadroomRequestHDRThreshold"), result))
  {
    v3 = *(a1 + 40);

    return [v3 _invalidateRequestedEDRHeadroomFactor];
  }

  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXRequestedEDRHeadroomFactorFilterObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImageModulationManager.m" lineNumber:834 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if ((changeCopy & 2) != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__PXImageModulationManager_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E774C5F8;
    v12[4] = self;
    [(PXImageModulationManager *)self performChanges:v12];
  }
}

- (void)_updateCurrentScreenSupportsHDRIfNeeded
{
  if (self->_needsUpdateFlags.currentScreenSupportsHDR)
  {
    self->_needsUpdateFlags.currentScreenSupportsHDR = 0;
  }
}

- (void)_updateImageLayerModulatorsIfNeeded
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.imageLayerModulators)
  {
    self->_needsUpdateFlags.imageLayerModulators = 0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    imageLayerModulators = [(PXImageModulationManager *)self imageLayerModulators];
    v4 = [imageLayerModulators countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(imageLayerModulators);
          }

          [(PXImageModulationManager *)self _updateImageLayerModulator:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [imageLayerModulators countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_updateDesiredDynamicRangeIfNeeded
{
  if (self->_needsUpdateFlags.desiredDynamicRange)
  {
    self->_needsUpdateFlags.desiredDynamicRange = 0;
    enabledForTesting = [(PXImageModulationManager *)self enabledForTesting];
    if (enabledForTesting)
    {
      v8 = +[PXImageModulationSettings sharedInstance];
      [v8 deviceMaximumEDRHeadroomStops];
    }

    else
    {
      [(PXImageModulationManager *)self requestedEDRHeadroomFactor];
    }

    v5 = v4;
    coreAnimationContext = [(PXImageModulationManager *)self coreAnimationContext];
    *&v7 = v5;
    [coreAnimationContext setDesiredDynamicRange:v7];

    if (enabledForTesting)
    {
    }
  }
}

- (void)_updateFinalRequestedEDRHeadroomFactorIfNeeded
{
  if (self->_needsUpdateFlags.finalRequestedEDRHeadroomFactor)
  {
    self->_needsUpdateFlags.finalRequestedEDRHeadroomFactor = 0;
    requestedEDRHeadroomFactorFilter = [(PXImageModulationManager *)self requestedEDRHeadroomFactorFilter];
    [requestedEDRHeadroomFactorFilter output];
    [(PXImageModulationManager *)self setRequestedEDRHeadroomFactor:?];
  }
}

- (void)_updateRequestedEDRHeadroomFactorIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_needsUpdateFlags.requestedEDRHeadroomFactor)
  {
    return;
  }

  self->_needsUpdateFlags.requestedEDRHeadroomFactor = 0;
  v3 = 0.0;
  if ([(PXImageModulationManager *)self isEnabled]&& [(PXImageModulationManager *)self isApplicationActive])
  {
    settings = [(PXImageModulationManager *)self settings];
    eDRHeadroomRequestScheme = [settings EDRHeadroomRequestScheme];
    if (eDRHeadroomRequestScheme == 2)
    {
      [(PXImageModulationManager *)self imageModulationIntensity];
      if (v10 <= 0.0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (eDRHeadroomRequestScheme != 1)
      {
        if (eDRHeadroomRequestScheme)
        {
LABEL_13:
          [settings deviceMaximumEDRHeadroomStops];
          v3 = fmin(v3, v11);

          goto LABEL_14;
        }

        [settings manualEDRHeadroomRequestStops];
LABEL_12:
        v3 = v6;
        goto LABEL_13;
      }

      [(PXImageModulationManager *)self HDRFocus];
      v8 = v7;
      [settings EDRHeadroomRequestHDRThreshold];
      if (v8 < v9)
      {
LABEL_9:
        [settings lowEDRRequestedHeadroomStops];
        goto LABEL_12;
      }
    }

    [settings highEDRRequestedHeadroomStops];
    goto LABEL_12;
  }

LABEL_14:
  v12 = pow(2.0, v3);
  v13 = PLUIGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v17 = log2(v12);
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEBUG, "[ImageModulation] unfiltered requestedEDRHeadroomFactor: %f", buf, 0xCu);
  }

  requestedEDRHeadroomFactorFilter = [(PXImageModulationManager *)self requestedEDRHeadroomFactorFilter];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PXImageModulationManager__updateRequestedEDRHeadroomFactorIfNeeded__block_invoke;
  v15[3] = &__block_descriptor_40_e33_v16__0___PXMutableNumberFilter__8l;
  *&v15[4] = v12;
  [requestedEDRHeadroomFactorFilter performChanges:v15];
}

- (void)_updateImageModulationIntensityIfNeeded
{
  if (self->_needsUpdateFlags.imageModulationIntensity)
  {
    self->_needsUpdateFlags.imageModulationIntensity = 0;
    rootViewController = [(PXImageModulationManager *)self rootViewController];
    [rootViewController px_effectiveImageModulationIntensity];
    v5 = v4;

    if (v5 != -1.79769313e308)
    {

      [(PXImageModulationManager *)self setImageModulationIntensity:v5];
    }
  }
}

- (void)_updateHDRFocusIfNeeded
{
  if (self->_needsUpdateFlags.HDRFocus)
  {
    self->_needsUpdateFlags.HDRFocus = 0;
    v4 = 0.0;
    if ([(PXImageModulationManager *)self isActive])
    {
      rootViewController = [(PXImageModulationManager *)self rootViewController];
      [rootViewController px_effectiveHDRFocus];
      v4 = v6;
    }

    [(PXImageModulationManager *)self setHDRFocus:v4];
  }
}

- (void)_updateActiveIfNeeded
{
  if (self->_needsUpdateFlags.active)
  {
    v8 = v2;
    v9 = v3;
    self->_needsUpdateFlags.active = 0;
    if ([(PXImageModulationManager *)self isEnabled]&& ![(PXImageModulationManager *)self isLowPowerModeEnabled])
    {
      keyExistsAndHasValidFormat = 0;
      if (CFPreferencesGetAppBooleanValue(@"shouldModulateImages", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
      {
        v6 = 1;
      }

      else
      {
        v6 = keyExistsAndHasValidFormat == 0;
      }

      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    [(PXImageModulationManager *)self setActive:v5];
  }
}

- (void)_updateLowPowerModeEnabledIfNeeded
{
  if (self->_needsUpdateFlags.lowPowerModeEnabled)
  {
    self->_needsUpdateFlags.lowPowerModeEnabled = 0;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    -[PXImageModulationManager setLowPowerModeEnabled:](self, "setLowPowerModeEnabled:", [processInfo isLowPowerModeEnabled]);
  }
}

- (void)_updateEnabledIfNeeded
{
  if (self->_needsUpdateFlags.enabled)
  {
    self->_needsUpdateFlags.enabled = 0;
    if ([(PXImageModulationManager *)self isMainScreen])
    {
      settings = [(PXImageModulationManager *)self settings];
      -[PXImageModulationManager setEnabled:](self, "setEnabled:", [settings isEnabled]);
    }

    else
    {

      [(PXImageModulationManager *)self setEnabled:0];
    }
  }
}

- (void)_updateIfNeeded
{
  if ([(PXImageModulationManager *)self _needsUpdate])
  {
    [(PXImageModulationManager *)self _updateEnabledIfNeeded];
    [(PXImageModulationManager *)self _updateLowPowerModeEnabledIfNeeded];
    [(PXImageModulationManager *)self _updateCurrentScreenSupportsHDRIfNeeded];
    [(PXImageModulationManager *)self _updateActiveIfNeeded];
    [(PXImageModulationManager *)self _updateHDRFocusIfNeeded];
    [(PXImageModulationManager *)self _updateImageModulationIntensityIfNeeded];
    [(PXImageModulationManager *)self _updateRequestedEDRHeadroomFactorIfNeeded];
    [(PXImageModulationManager *)self _updateFinalRequestedEDRHeadroomFactorIfNeeded];
    [(PXImageModulationManager *)self _updateDesiredDynamicRangeIfNeeded];

    [(PXImageModulationManager *)self _updateImageLayerModulatorsIfNeeded];
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXImageModulationManager;
  [(PXImageModulationManager *)&v3 didPerformChanges];
  [(PXImageModulationManager *)self _updateIfNeeded];
}

uint64_t __60__PXImageModulationManager__processInfoPowerStateDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PXImageModulationManager__processInfoPowerStateDidChange___block_invoke_2;
  v3[3] = &unk_1E774C5F8;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

- (void)setCurrentScreenSupportsHDR:(BOOL)r
{
  if (self->_currentScreenSupportsHDR != r)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_currentScreenSupportsHDR = r;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PXImageModulationManager_setCurrentScreenSupportsHDR___block_invoke;
    v5[3] = &unk_1E774C5F8;
    v5[4] = self;
    [(PXImageModulationManager *)self performChanges:v5];
  }
}

- (void)setApplicationActive:(BOOL)active
{
  if (self->_applicationActive != active)
  {
    v7 = v3;
    v8 = v4;
    self->_applicationActive = active;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__PXImageModulationManager_setApplicationActive___block_invoke;
    v5[3] = &unk_1E774C670;
    activeCopy = active;
    v5[4] = self;
    [(PXImageModulationManager *)self performChanges:v5];
  }
}

uint64_t __49__PXImageModulationManager_setApplicationActive___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _updateCoreAnimationContext];
  }

  v2 = *(a1 + 32);

  return [v2 _invalidateRequestedEDRHeadroomFactor];
}

- (void)setCoreAnimationContext:(id)context
{
  contextCopy = context;
  coreAnimationContext = self->_coreAnimationContext;
  if (coreAnimationContext != contextCopy)
  {
    v10 = contextCopy;
    v6 = contextCopy;
    v7 = self->_coreAnimationContext;
    self->_coreAnimationContext = v6;
    v8 = coreAnimationContext;

    LODWORD(v9) = 1.0;
    [(CAContext *)v8 setDesiredDynamicRange:v9];

    [(PXImageModulationManager *)self _invalidateDesiredDynamicRange];
    contextCopy = v10;
  }
}

- (void)_updateCoreAnimationContext
{
  v14 = *MEMORY[0x1E69E9840];
  rootViewController = [(PXImageModulationManager *)self rootViewController];
  if (rootViewController)
  {
    v4 = rootViewController;
    while (1)
    {
      viewIfLoaded = [v4 viewIfLoaded];
      layer = [viewIfLoaded layer];
      context = [layer context];

      if (context)
      {
        break;
      }

      presentedViewController = [v4 presentedViewController];

      v4 = presentedViewController;
      if (!presentedViewController)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    coreAnimationContext = [(PXImageModulationManager *)self coreAnimationContext];
    if (coreAnimationContext)
    {
      context = coreAnimationContext;
      v4 = 0;
    }

    else
    {
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        rootViewController2 = [(PXImageModulationManager *)self rootViewController];
        v12 = 138412290;
        v13 = rootViewController2;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "[ImageModulation] context missing for %@", &v12, 0xCu);
      }

      v4 = 0;
      context = 0;
    }
  }

  [(PXImageModulationManager *)self setCoreAnimationContext:context];
}

- (void)_didEndRequestingEDRHeadroomFactor:(double)factor
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = log2(factor);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [MEMORY[0x1E6991F28] bucketNameForDouble:&unk_1F1910C78 bucketLimits:0 numberFormatter:v4];
  v7 = [v5 initWithFormat:@"com.apple.photos.CPAnalytics.EDRHeadroomRequested%@", v6];

  v8 = MEMORY[0x1E6991F28];
  requestedEDRHeadroomSignpost = [(PXImageModulationManager *)self requestedEDRHeadroomSignpost];
  v10 = *MEMORY[0x1E6991C98];
  v12 = *MEMORY[0x1E6991E40];
  v13[0] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v8 endSignpost:requestedEDRHeadroomSignpost forEventName:v10 withPayload:v11];

  [(PXImageModulationManager *)self setRequestedEDRHeadroomSignpost:0];
}

- (void)_didStartRequestingEDRHeadroomFactor:(double)factor
{
  if ([(PXImageModulationManager *)self requestedEDRHeadroomSignpost])
  {
    PXAssertGetLog();
  }

  -[PXImageModulationManager setRequestedEDRHeadroomSignpost:](self, "setRequestedEDRHeadroomSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
}

- (void)setRequestedEDRHeadroomFactor:(double)factor
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_requestedEDRHeadroomFactor != factor)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = v5;
    if (self->_requestedEDRHeadroomFactor > 1.0)
    {
      [(PXImageModulationManager *)self _didEndRequestingEDRHeadroomFactor:?];
    }

    self->_requestedEDRHeadroomFactor = factor;
    if (factor > 1.0)
    {
      [(PXImageModulationManager *)self _didStartRequestingEDRHeadroomFactor:factor];
    }

    self->_lastRequestedEDRHeadroomChangeTime = v6;
    [(PXImageModulationManager *)self signalChange:4];
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134217984;
      v9 = log2(factor);
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "[ImageModulation] requestedEDRHeadroom: %f", &v8, 0xCu);
    }

    [(PXImageModulationManager *)self _updateCoreAnimationContext];
    [(PXImageModulationManager *)self _invalidateDesiredDynamicRange];
  }
}

- (void)setImageModulationIntensity:(double)intensity
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_imageModulationIntensity != intensity)
  {
    self->_imageModulationIntensity = intensity;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      intensityCopy = intensity;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[ImageModulation] Intensity: %0.6f", &v6, 0xCu);
    }

    [(PXImageModulationManager *)self signalChange:2];
    [(PXImageModulationManager *)self _invalidateRequestedEDRHeadroomFactor];
    [(PXImageModulationManager *)self _invalidateImageLayerModulators];
  }
}

- (void)setHDRFocus:(double)focus
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_HDRFocus != focus)
  {
    self->_HDRFocus = focus;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      focusCopy = focus;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[ImageModulation] HDR Focus: %0.6f", &v6, 0xCu);
    }

    [(PXImageModulationManager *)self signalChange:1];
    [(PXImageModulationManager *)self _invalidateRequestedEDRHeadroomFactor];
  }
}

- (void)setNeedsEnabledUpdate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__PXImageModulationManager_setNeedsEnabledUpdate__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXImageModulationManager *)self performChanges:v2];
}

- (void)setNeedsImageModulationIntensityUpdate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __66__PXImageModulationManager_setNeedsImageModulationIntensityUpdate__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXImageModulationManager *)self performChanges:v2];
}

- (void)setNeedsHDRFocusUpdate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__PXImageModulationManager_setNeedsHDRFocusUpdate__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXImageModulationManager *)self performChanges:v2];
}

- (void)_updateImageLayerModulator:(id)modulator
{
  modulatorCopy = modulator;
  isActive = [(PXImageModulationManager *)self isActive];
  [(PXImageModulationManager *)self imageModulationIntensity];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PXImageModulationManager__updateImageLayerModulator___block_invoke;
  v7[3] = &__block_descriptor_41_e48_v16__0___PXMutableImageLayerModulator_Private__8l;
  v8 = isActive;
  v7[4] = v6;
  [modulatorCopy performChanges_Private:v7];
}

void __55__PXImageModulationManager__updateImageLayerModulator___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setEnabled:v3];
  [v4 setIntensity:*(a1 + 32)];
}

- (void)checkInLivePhotoViewModulator:(id)modulator
{
  modulatorCopy = modulator;
  [modulatorCopy performChanges_Private:&__block_literal_global_24_122448];
  imageModulator = [modulatorCopy imageModulator];
  [(PXImageModulationManager *)self checkInImageLayerModulator:imageModulator];

  videoModulator = [modulatorCopy videoModulator];

  [(PXImageModulationManager *)self checkInImageLayerModulator:videoModulator];
}

- (id)checkoutLivePhotoViewModulatorWithOptions:(id)options
{
  v3 = *&options.var1;
  var0 = options.var0;
  v6 = [(PXImageModulationManager *)self _checkoutImageLayerModulatorWithOptions:options.var0 contentType:*&options.var1, 0];
  v7 = [(PXImageModulationManager *)self _checkoutImageLayerModulatorWithOptions:var0 contentType:v3, 1];
  v8 = [[PXLivePhotoViewModulator alloc] initWithImageModulator:v6 videoModulator:v7];

  return v8;
}

- (void)checkInImageLayerModulator:(id)modulator
{
  modulatorCopy = modulator;
  [modulatorCopy performChanges_Private:&__block_literal_global_122452];
  imageLayerModulators = [(PXImageModulationManager *)self imageLayerModulators];
  [imageLayerModulators removeObject:modulatorCopy];
}

- (id)_checkoutImageLayerModulatorWithOptions:(id)options contentType:(int64_t)type
{
  var1 = options.var1;
  var0 = options.var0;
  v22 = *MEMORY[0x1E69E9840];
  filterType = 0;
  if (![(PXImageModulationManager *)self isEnabled])
  {
    var0 = 0;
  }

  if (var0 > 1)
  {
    if (var0 == 2)
    {
      if (type)
      {
        filterType = 1;
      }

      else
      {
        filterType = 3;
      }

      v9 = 1;
    }

    else
    {
      if (var0 != 3)
      {
        goto LABEL_18;
      }

      v9 = 0;
      filterType = 3;
    }

LABEL_17:
    *&v17 = var0;
    *(&v17 + 1) = filterType;
    v18 = var1;
    v19 = 0;
    v20 = v9;
    v21 = 0;
    filterType = [[PXImageLayerModulator alloc] initWithOptions:&v17];
    [(PXImageModulationManager *)self _updateImageLayerModulator:filterType];
    imageLayerModulators = [(PXImageModulationManager *)self imageLayerModulators];
    [imageLayerModulators addObject:filterType];

    goto LABEL_18;
  }

  if (!var0)
  {
    settings = [(PXImageModulationManager *)self settings];
    [settings SDRModulationIntensity];
    v12 = v11;

    if (v12 <= 0.0)
    {
      filterType = 0;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (var0 == 1)
  {
LABEL_11:
    settings2 = [(PXImageModulationManager *)self settings];
    filterType = [settings2 filterType];

    if (!filterType)
    {
      goto LABEL_18;
    }

    v9 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v15 = PLUIGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v17) = 138412290;
    *(&v17 + 4) = filterType;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEBUG, "[ImageModulation] created image layer modulator %@", &v17, 0xCu);
  }

  return filterType;
}

- (void)setEnabledForTesting:(BOOL)testing
{
  if (self->_enabledForTesting != testing)
  {
    self->_enabledForTesting = testing;
    [(PXImageModulationManager *)self _invalidateDesiredDynamicRange];
  }
}

- (void)enableForTesting
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__PXImageModulationManager_enableForTesting__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXImageModulationManager *)self performChanges:v2];
}

- (void)setActive:(BOOL)active
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109120;
      v6[1] = activeCopy;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[ImageModulation] Active: %i", v6, 8u);
    }

    [(PXImageModulationManager *)self _invalidateHDRFocus];
    [(PXImageModulationManager *)self _invalidateImageLayerModulators];
  }
}

- (void)setLowPowerModeEnabled:(BOOL)enabled
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_lowPowerModeEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_lowPowerModeEnabled = enabled;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109120;
      v6[1] = enabledCopy;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[ImageModulation] Low power mode: %i", v6, 8u);
    }

    [(PXImageModulationManager *)self _invalidateActive];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_enabled = enabled;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__PXImageModulationManager_setEnabled___block_invoke;
    v5[3] = &unk_1E774C5F8;
    v5[4] = self;
    [(PXImageModulationManager *)self performChanges:v5];
  }
}

uint64_t __39__PXImageModulationManager_setEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateRequestedEDRHeadroomFactor];
  v2 = *(a1 + 32);

  return [v2 _invalidateImageLayerModulators];
}

- (void)dealloc
{
  LODWORD(v2) = 1.0;
  [(CAContext *)self->_coreAnimationContext setDesiredDynamicRange:v2];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  PXUnregisterPreferencesObserver(self);
  v5.receiver = self;
  v5.super_class = PXImageModulationManager;
  [(PXImageModulationManager *)&v5 dealloc];
}

- (PXImageModulationManager)initWithRootViewController:(id)controller mainScreen:(BOOL)screen
{
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = PXImageModulationManager;
  v7 = [(PXImageModulationManager *)&v17 init];
  v8 = v7;
  if (v7)
  {
    v7[105] = 1;
    *(v7 + 24) = 16843009;
    *(v7 + 99) = 16843009;
    objc_storeWeak(v7 + 21, controllerCopy);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v10 = *(v8 + 17);
    *(v8 + 17) = weakObjectsHashTable;

    v8[123] = screen;
    v8[121] = 1;
    *(v8 + 24) = 0x3FF0000000000000;
    v11 = [[PXRequestedEDRHeadroomFactorFilter alloc] initWithInput:*(v8 + 24)];
    v12 = *(v8 + 18);
    *(v8 + 18) = v11;

    [*(v8 + 18) registerChangeObserver:v8 context:PXRequestedEDRHeadroomFactorFilterObservationContext];
    v13 = +[PXImageModulationSettings sharedInstance];
    v14 = *(v8 + 16);
    *(v8 + 16) = v13;

    [*(v8 + 16) addKeyObserver:v8];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__processInfoPowerStateDidChange_ name:*MEMORY[0x1E696A7D8] object:0];
    [defaultCenter addObserver:v8 selector:sel__applicationDidResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
    [defaultCenter addObserver:v8 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
    PXRegisterPreferencesObserver(v8);
  }

  return v8;
}

- (PXImageModulationManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXImageModulationManager.m" lineNumber:184 description:{@"%s is not available as initializer", "-[PXImageModulationManager init]"}];

  abort();
}

+ (int64_t)_contentFormatForAsset:(id)asset
{
  assetCopy = asset;
  v4 = +[PXImageModulationSettings sharedInstance];
  hDRConsideration = [v4 HDRConsideration];
  if (hDRConsideration == 2)
  {
    isFavorite = [assetCopy isFavorite];
    goto LABEL_10;
  }

  if (hDRConsideration != 1)
  {
    if (hDRConsideration || ([assetCopy playbackStyle] & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      v10 = 0;
      goto LABEL_11;
    }

    mediaSubtypes = [assetCopy mediaSubtypes];
    if (objc_opt_respondsToSelector())
    {
      hdrGain = [assetCopy hdrGain];
      [hdrGain floatValue];
      v9 = v8 <= 0.0;

      if ((mediaSubtypes & 2) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = 1;
      if ((mediaSubtypes & 2) != 0)
      {
        goto LABEL_7;
      }
    }

    if ((mediaSubtypes & 0x200) != 0)
    {
      v10 = 4;
      goto LABEL_11;
    }

    if ((mediaSubtypes >> 23) & 1 | v9)
    {
      v10 = (mediaSubtypes & 0x800000) >> 21;
      goto LABEL_11;
    }

    isFavorite = [v4 gainBoostEnabled];
LABEL_10:
    v10 = isFavorite;
    goto LABEL_11;
  }

LABEL_7:
  v10 = 1;
LABEL_11:

  return v10;
}

+ (double)_hdrGainForAsset:(id)asset
{
  assetCopy = asset;
  v4 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    hdrGain = [assetCopy hdrGain];
    if (hdrGain)
    {
      v6 = hdrGain;
      [hdrGain floatValue];
      v4 = v7;
    }
  }

  return v4;
}

+ ($5A0616AB7869379E861635CACF312FD6)optionsForAsset:(id)asset
{
  assetCopy = asset;
  v5 = [self _contentFormatForAsset:assetCopy];
  if ((v5 - 1) > 2)
  {
    v7 = 0;
  }

  else
  {
    [self _hdrGainForAsset:assetCopy];
    *&v6 = v6;
    v7 = LODWORD(v6);
  }

  v8 = v5;
  v9 = v7;
  result.var1 = *&v9;
  result.var0 = v8;
  return result;
}

+ (double)HDRValueForAsset:(id)asset
{
  assetCopy = asset;
  v5 = [self _contentFormatForAsset:assetCopy];
  if ((v5 - 1) >= 4)
  {
    v6 = 0.0;
    if (!v5)
    {
      v7 = +[PXImageModulationSettings sharedInstance];
      [v7 SDRModulationIntensity];
      v9 = v8;

      if (v9 > 0.0)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }
    }
  }

  else
  {
    v6 = 1.0;
  }

  v10 = +[PXImageModulationSettings sharedInstance];
  if ([v10 useThresholdForVideos])
  {
    mediaSubtypes = [assetCopy mediaSubtypes];

    if ((*&mediaSubtypes & 0x100000) != 0)
    {
      v6 = 1.0;
    }
  }

  else
  {
  }

  return v6;
}

@end