@interface PXImageModulationManager
+ ($5A0616AB7869379E861635CACF312FD6)optionsForAsset:(id)a3;
+ (double)HDRValueForAsset:(id)a3;
+ (double)_hdrGainForAsset:(id)a3;
+ (int64_t)_contentFormatForAsset:(id)a3;
- (PXImageModulationManager)init;
- (PXImageModulationManager)initWithRootViewController:(id)a3 mainScreen:(BOOL)a4;
- (UIViewController)rootViewController;
- (id)_checkoutImageLayerModulatorWithOptions:(id)a3 contentType:(int64_t)a4;
- (id)checkoutLivePhotoViewModulatorWithOptions:(id)a3;
- (void)_didEndRequestingEDRHeadroomFactor:(double)a3;
- (void)_didStartRequestingEDRHeadroomFactor:(double)a3;
- (void)_updateActiveIfNeeded;
- (void)_updateCoreAnimationContext;
- (void)_updateCurrentScreenSupportsHDRIfNeeded;
- (void)_updateDesiredDynamicRangeIfNeeded;
- (void)_updateEnabledIfNeeded;
- (void)_updateFinalRequestedEDRHeadroomFactorIfNeeded;
- (void)_updateHDRFocusIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateImageLayerModulator:(id)a3;
- (void)_updateImageLayerModulatorsIfNeeded;
- (void)_updateImageModulationIntensityIfNeeded;
- (void)_updateLowPowerModeEnabledIfNeeded;
- (void)_updateRequestedEDRHeadroomFactorIfNeeded;
- (void)checkInImageLayerModulator:(id)a3;
- (void)checkInLivePhotoViewModulator:(id)a3;
- (void)dealloc;
- (void)didPerformChanges;
- (void)enableForTesting;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)preferencesDidChange;
- (void)setActive:(BOOL)a3;
- (void)setApplicationActive:(BOOL)a3;
- (void)setCoreAnimationContext:(id)a3;
- (void)setCurrentScreenSupportsHDR:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setEnabledForTesting:(BOOL)a3;
- (void)setHDRFocus:(double)a3;
- (void)setImageModulationIntensity:(double)a3;
- (void)setLowPowerModeEnabled:(BOOL)a3;
- (void)setNeedsEnabledUpdate;
- (void)setNeedsHDRFocusUpdate;
- (void)setNeedsImageModulationIntensityUpdate;
- (void)setRequestedEDRHeadroomFactor:(double)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
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

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PXImageModulationManager_settings_changedValueForKey___block_invoke;
  v7[3] = &unk_1E77498F8;
  v8 = v5;
  v9 = self;
  v6 = v5;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXRequestedEDRHeadroomFactorFilterObservationContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXImageModulationManager.m" lineNumber:834 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if ((v6 & 2) != 0)
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
    v3 = [(PXImageModulationManager *)self imageLayerModulators];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(v3);
          }

          [(PXImageModulationManager *)self _updateImageLayerModulator:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    v3 = [(PXImageModulationManager *)self enabledForTesting];
    if (v3)
    {
      v8 = +[PXImageModulationSettings sharedInstance];
      [v8 deviceMaximumEDRHeadroomStops];
    }

    else
    {
      [(PXImageModulationManager *)self requestedEDRHeadroomFactor];
    }

    v5 = v4;
    v6 = [(PXImageModulationManager *)self coreAnimationContext];
    *&v7 = v5;
    [v6 setDesiredDynamicRange:v7];

    if (v3)
    {
    }
  }
}

- (void)_updateFinalRequestedEDRHeadroomFactorIfNeeded
{
  if (self->_needsUpdateFlags.finalRequestedEDRHeadroomFactor)
  {
    self->_needsUpdateFlags.finalRequestedEDRHeadroomFactor = 0;
    v4 = [(PXImageModulationManager *)self requestedEDRHeadroomFactorFilter];
    [v4 output];
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
    v4 = [(PXImageModulationManager *)self settings];
    v5 = [v4 EDRHeadroomRequestScheme];
    if (v5 == 2)
    {
      [(PXImageModulationManager *)self imageModulationIntensity];
      if (v10 <= 0.0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v5 != 1)
      {
        if (v5)
        {
LABEL_13:
          [v4 deviceMaximumEDRHeadroomStops];
          v3 = fmin(v3, v11);

          goto LABEL_14;
        }

        [v4 manualEDRHeadroomRequestStops];
LABEL_12:
        v3 = v6;
        goto LABEL_13;
      }

      [(PXImageModulationManager *)self HDRFocus];
      v8 = v7;
      [v4 EDRHeadroomRequestHDRThreshold];
      if (v8 < v9)
      {
LABEL_9:
        [v4 lowEDRRequestedHeadroomStops];
        goto LABEL_12;
      }
    }

    [v4 highEDRRequestedHeadroomStops];
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

  v14 = [(PXImageModulationManager *)self requestedEDRHeadroomFactorFilter];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PXImageModulationManager__updateRequestedEDRHeadroomFactorIfNeeded__block_invoke;
  v15[3] = &__block_descriptor_40_e33_v16__0___PXMutableNumberFilter__8l;
  *&v15[4] = v12;
  [v14 performChanges:v15];
}

- (void)_updateImageModulationIntensityIfNeeded
{
  if (self->_needsUpdateFlags.imageModulationIntensity)
  {
    self->_needsUpdateFlags.imageModulationIntensity = 0;
    v3 = [(PXImageModulationManager *)self rootViewController];
    [v3 px_effectiveImageModulationIntensity];
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
      v5 = [(PXImageModulationManager *)self rootViewController];
      [v5 px_effectiveHDRFocus];
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
    v4 = [MEMORY[0x1E696AE30] processInfo];
    -[PXImageModulationManager setLowPowerModeEnabled:](self, "setLowPowerModeEnabled:", [v4 isLowPowerModeEnabled]);
  }
}

- (void)_updateEnabledIfNeeded
{
  if (self->_needsUpdateFlags.enabled)
  {
    self->_needsUpdateFlags.enabled = 0;
    if ([(PXImageModulationManager *)self isMainScreen])
    {
      v3 = [(PXImageModulationManager *)self settings];
      -[PXImageModulationManager setEnabled:](self, "setEnabled:", [v3 isEnabled]);
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

- (void)setCurrentScreenSupportsHDR:(BOOL)a3
{
  if (self->_currentScreenSupportsHDR != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_currentScreenSupportsHDR = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PXImageModulationManager_setCurrentScreenSupportsHDR___block_invoke;
    v5[3] = &unk_1E774C5F8;
    v5[4] = self;
    [(PXImageModulationManager *)self performChanges:v5];
  }
}

- (void)setApplicationActive:(BOOL)a3
{
  if (self->_applicationActive != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_applicationActive = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__PXImageModulationManager_setApplicationActive___block_invoke;
    v5[3] = &unk_1E774C670;
    v6 = a3;
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

- (void)setCoreAnimationContext:(id)a3
{
  v4 = a3;
  coreAnimationContext = self->_coreAnimationContext;
  if (coreAnimationContext != v4)
  {
    v10 = v4;
    v6 = v4;
    v7 = self->_coreAnimationContext;
    self->_coreAnimationContext = v6;
    v8 = coreAnimationContext;

    LODWORD(v9) = 1.0;
    [(CAContext *)v8 setDesiredDynamicRange:v9];

    [(PXImageModulationManager *)self _invalidateDesiredDynamicRange];
    v4 = v10;
  }
}

- (void)_updateCoreAnimationContext
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PXImageModulationManager *)self rootViewController];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      v5 = [v4 viewIfLoaded];
      v6 = [v5 layer];
      v7 = [v6 context];

      if (v7)
      {
        break;
      }

      v8 = [v4 presentedViewController];

      v4 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v9 = [(PXImageModulationManager *)self coreAnimationContext];
    if (v9)
    {
      v7 = v9;
      v4 = 0;
    }

    else
    {
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [(PXImageModulationManager *)self rootViewController];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "[ImageModulation] context missing for %@", &v12, 0xCu);
      }

      v4 = 0;
      v7 = 0;
    }
  }

  [(PXImageModulationManager *)self setCoreAnimationContext:v7];
}

- (void)_didEndRequestingEDRHeadroomFactor:(double)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = log2(a3);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [MEMORY[0x1E6991F28] bucketNameForDouble:&unk_1F1910C78 bucketLimits:0 numberFormatter:v4];
  v7 = [v5 initWithFormat:@"com.apple.photos.CPAnalytics.EDRHeadroomRequested%@", v6];

  v8 = MEMORY[0x1E6991F28];
  v9 = [(PXImageModulationManager *)self requestedEDRHeadroomSignpost];
  v10 = *MEMORY[0x1E6991C98];
  v12 = *MEMORY[0x1E6991E40];
  v13[0] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v8 endSignpost:v9 forEventName:v10 withPayload:v11];

  [(PXImageModulationManager *)self setRequestedEDRHeadroomSignpost:0];
}

- (void)_didStartRequestingEDRHeadroomFactor:(double)a3
{
  if ([(PXImageModulationManager *)self requestedEDRHeadroomSignpost])
  {
    PXAssertGetLog();
  }

  -[PXImageModulationManager setRequestedEDRHeadroomSignpost:](self, "setRequestedEDRHeadroomSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
}

- (void)setRequestedEDRHeadroomFactor:(double)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_requestedEDRHeadroomFactor != a3)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = v5;
    if (self->_requestedEDRHeadroomFactor > 1.0)
    {
      [(PXImageModulationManager *)self _didEndRequestingEDRHeadroomFactor:?];
    }

    self->_requestedEDRHeadroomFactor = a3;
    if (a3 > 1.0)
    {
      [(PXImageModulationManager *)self _didStartRequestingEDRHeadroomFactor:a3];
    }

    self->_lastRequestedEDRHeadroomChangeTime = v6;
    [(PXImageModulationManager *)self signalChange:4];
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134217984;
      v9 = log2(a3);
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "[ImageModulation] requestedEDRHeadroom: %f", &v8, 0xCu);
    }

    [(PXImageModulationManager *)self _updateCoreAnimationContext];
    [(PXImageModulationManager *)self _invalidateDesiredDynamicRange];
  }
}

- (void)setImageModulationIntensity:(double)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_imageModulationIntensity != a3)
  {
    self->_imageModulationIntensity = a3;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[ImageModulation] Intensity: %0.6f", &v6, 0xCu);
    }

    [(PXImageModulationManager *)self signalChange:2];
    [(PXImageModulationManager *)self _invalidateRequestedEDRHeadroomFactor];
    [(PXImageModulationManager *)self _invalidateImageLayerModulators];
  }
}

- (void)setHDRFocus:(double)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_HDRFocus != a3)
  {
    self->_HDRFocus = a3;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      v7 = a3;
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

- (void)_updateImageLayerModulator:(id)a3
{
  v4 = a3;
  v5 = [(PXImageModulationManager *)self isActive];
  [(PXImageModulationManager *)self imageModulationIntensity];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PXImageModulationManager__updateImageLayerModulator___block_invoke;
  v7[3] = &__block_descriptor_41_e48_v16__0___PXMutableImageLayerModulator_Private__8l;
  v8 = v5;
  v7[4] = v6;
  [v4 performChanges_Private:v7];
}

void __55__PXImageModulationManager__updateImageLayerModulator___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setEnabled:v3];
  [v4 setIntensity:*(a1 + 32)];
}

- (void)checkInLivePhotoViewModulator:(id)a3
{
  v4 = a3;
  [v4 performChanges_Private:&__block_literal_global_24_122448];
  v5 = [v4 imageModulator];
  [(PXImageModulationManager *)self checkInImageLayerModulator:v5];

  v6 = [v4 videoModulator];

  [(PXImageModulationManager *)self checkInImageLayerModulator:v6];
}

- (id)checkoutLivePhotoViewModulatorWithOptions:(id)a3
{
  v3 = *&a3.var1;
  var0 = a3.var0;
  v6 = [(PXImageModulationManager *)self _checkoutImageLayerModulatorWithOptions:a3.var0 contentType:*&a3.var1, 0];
  v7 = [(PXImageModulationManager *)self _checkoutImageLayerModulatorWithOptions:var0 contentType:v3, 1];
  v8 = [[PXLivePhotoViewModulator alloc] initWithImageModulator:v6 videoModulator:v7];

  return v8;
}

- (void)checkInImageLayerModulator:(id)a3
{
  v4 = a3;
  [v4 performChanges_Private:&__block_literal_global_122452];
  v5 = [(PXImageModulationManager *)self imageLayerModulators];
  [v5 removeObject:v4];
}

- (id)_checkoutImageLayerModulatorWithOptions:(id)a3 contentType:(int64_t)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v22 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (![(PXImageModulationManager *)self isEnabled])
  {
    var0 = 0;
  }

  if (var0 > 1)
  {
    if (var0 == 2)
    {
      if (a4)
      {
        v8 = 1;
      }

      else
      {
        v8 = 3;
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
      v8 = 3;
    }

LABEL_17:
    *&v17 = var0;
    *(&v17 + 1) = v8;
    v18 = var1;
    v19 = 0;
    v20 = v9;
    v21 = 0;
    v8 = [[PXImageLayerModulator alloc] initWithOptions:&v17];
    [(PXImageModulationManager *)self _updateImageLayerModulator:v8];
    v14 = [(PXImageModulationManager *)self imageLayerModulators];
    [v14 addObject:v8];

    goto LABEL_18;
  }

  if (!var0)
  {
    v10 = [(PXImageModulationManager *)self settings];
    [v10 SDRModulationIntensity];
    v12 = v11;

    if (v12 <= 0.0)
    {
      v8 = 0;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (var0 == 1)
  {
LABEL_11:
    v13 = [(PXImageModulationManager *)self settings];
    v8 = [v13 filterType];

    if (!v8)
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
    *(&v17 + 4) = v8;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEBUG, "[ImageModulation] created image layer modulator %@", &v17, 0xCu);
  }

  return v8;
}

- (void)setEnabledForTesting:(BOOL)a3
{
  if (self->_enabledForTesting != a3)
  {
    self->_enabledForTesting = a3;
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

- (void)setActive:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[ImageModulation] Active: %i", v6, 8u);
    }

    [(PXImageModulationManager *)self _invalidateHDRFocus];
    [(PXImageModulationManager *)self _invalidateImageLayerModulators];
  }
}

- (void)setLowPowerModeEnabled:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_lowPowerModeEnabled != a3)
  {
    v3 = a3;
    self->_lowPowerModeEnabled = a3;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[ImageModulation] Low power mode: %i", v6, 8u);
    }

    [(PXImageModulationManager *)self _invalidateActive];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_enabled = a3;
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
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  PXUnregisterPreferencesObserver(self);
  v5.receiver = self;
  v5.super_class = PXImageModulationManager;
  [(PXImageModulationManager *)&v5 dealloc];
}

- (PXImageModulationManager)initWithRootViewController:(id)a3 mainScreen:(BOOL)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = PXImageModulationManager;
  v7 = [(PXImageModulationManager *)&v17 init];
  v8 = v7;
  if (v7)
  {
    v7[105] = 1;
    *(v7 + 24) = 16843009;
    *(v7 + 99) = 16843009;
    objc_storeWeak(v7 + 21, v6);
    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v10 = *(v8 + 17);
    *(v8 + 17) = v9;

    v8[123] = a4;
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
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v8 selector:sel__processInfoPowerStateDidChange_ name:*MEMORY[0x1E696A7D8] object:0];
    [v15 addObserver:v8 selector:sel__applicationDidResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
    [v15 addObserver:v8 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
    PXRegisterPreferencesObserver(v8);
  }

  return v8;
}

- (PXImageModulationManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXImageModulationManager.m" lineNumber:184 description:{@"%s is not available as initializer", "-[PXImageModulationManager init]"}];

  abort();
}

+ (int64_t)_contentFormatForAsset:(id)a3
{
  v3 = a3;
  v4 = +[PXImageModulationSettings sharedInstance];
  v5 = [v4 HDRConsideration];
  if (v5 == 2)
  {
    v11 = [v3 isFavorite];
    goto LABEL_10;
  }

  if (v5 != 1)
  {
    if (v5 || ([v3 playbackStyle] & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v6 = [v3 mediaSubtypes];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v3 hdrGain];
      [v7 floatValue];
      v9 = v8 <= 0.0;

      if ((v6 & 2) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = 1;
      if ((v6 & 2) != 0)
      {
        goto LABEL_7;
      }
    }

    if ((v6 & 0x200) != 0)
    {
      v10 = 4;
      goto LABEL_11;
    }

    if ((v6 >> 23) & 1 | v9)
    {
      v10 = (v6 & 0x800000) >> 21;
      goto LABEL_11;
    }

    v11 = [v4 gainBoostEnabled];
LABEL_10:
    v10 = v11;
    goto LABEL_11;
  }

LABEL_7:
  v10 = 1;
LABEL_11:

  return v10;
}

+ (double)_hdrGainForAsset:(id)a3
{
  v3 = a3;
  v4 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 hdrGain];
    if (v5)
    {
      v6 = v5;
      [v5 floatValue];
      v4 = v7;
    }
  }

  return v4;
}

+ ($5A0616AB7869379E861635CACF312FD6)optionsForAsset:(id)a3
{
  v4 = a3;
  v5 = [a1 _contentFormatForAsset:v4];
  if ((v5 - 1) > 2)
  {
    v7 = 0;
  }

  else
  {
    [a1 _hdrGainForAsset:v4];
    *&v6 = v6;
    v7 = LODWORD(v6);
  }

  v8 = v5;
  v9 = v7;
  result.var1 = *&v9;
  result.var0 = v8;
  return result;
}

+ (double)HDRValueForAsset:(id)a3
{
  v4 = a3;
  v5 = [a1 _contentFormatForAsset:v4];
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
    v11 = [v4 mediaSubtypes];

    if ((*&v11 & 0x100000) != 0)
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