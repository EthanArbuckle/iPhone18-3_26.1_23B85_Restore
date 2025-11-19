@interface SBSystemApertureSecureElementCoordinator
- (BOOL)doesElementNeedSuppressionForActiveSecureCaptureSession:(id)a3;
- (SBSystemApertureSecureElementCoordinator)initWithElementHostingViewController:(id)a3;
- (id)elementCoordinator:(id)a3 directoryForCapturingFlipBookElement:(id)a4;
- (int64_t)layoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (void)_accumulateBoundsForComponent:(id)a3 rect:(CGRect)a4 remainingStates:(id)a5 coordinateSpace:(id)a6 completion:(id)a7;
- (void)_captureBoundsForElement:(id)a3 configuration:(id)a4 component:(id)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 layoutMode:(int64_t)a8 containerDescription:(id)a9 coordinateSpace:(id)a10 completion:(id)a11;
- (void)_captureComponents:(id)a3 forElement:(id)a4 withConfiguration:(id)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 layoutMode:(int64_t)a8 express:(BOOL)a9 completion:(id)a10;
- (void)_captureConfigurationVariants:(id)a3 forElement:(id)a4 express:(BOOL)a5 completion:(id)a6;
- (void)_captureElement:(id)a3;
- (void)_captureLayoutDirectionVariants:(id)a3 forElement:(id)a4 withConfiguration:(id)a5 express:(BOOL)a6 completion:(id)a7;
- (void)_captureLayoutModeVariants:(id)a3 forElement:(id)a4 withConfiguration:(id)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 express:(BOOL)a8 completion:(id)a9;
- (void)_captureOrientationVariants:(id)a3 forElement:(id)a4 withConfiguration:(id)a5 layoutDirection:(int64_t)a6 express:(BOOL)a7 completion:(id)a8;
- (void)_changeOverrideToNewLayoutMode:(int64_t)a3 completion:(id)a4;
- (void)_continueRecordableElementRecordingWithRegistrationBlocksToRecord:(id)a3;
- (void)captureElementsWithRegistrationBlocks:(id)a3 elementCapturingDelegate:(id)a4;
- (void)element:(id)a3 registeredWithAssertion:(id)a4;
- (void)elementAssertionInvalidated:(id)a3;
- (void)initiatePrototypeFlipBookElementRecording;
- (void)preferredRecordedStateDidInvalidateForLayoutSpecifier:(id)a3;
- (void)renderingOverlay:(id)a3 updatedRenderedConfiguration:(id)a4;
- (void)setInRecordingMode:(BOOL)a3;
@end

@implementation SBSystemApertureSecureElementCoordinator

- (SBSystemApertureSecureElementCoordinator)initWithElementHostingViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBSystemApertureSecureElementCoordinator;
  v3 = a3;
  v4 = [(SBSystemApertureSecureElementCoordinator *)&v9 init];
  v5 = [MEMORY[0x277CBEB18] array];
  registeredElements = v4->_registeredElements;
  v4->_registeredElements = v5;

  objc_storeWeak(&v4->_systemApertureViewController, v3);
  v7 = [SBApp systemApertureControllerForMainDisplay];
  objc_storeWeak(&v4->_systemApertureController, v7);

  v4->_overrideLayoutMode = 0;
  return v4;
}

- (void)element:(id)a3 registeredWithAssertion:(id)a4
{
  v13 = a3;
  if ([(NSMutableArray *)self->_registeredElements containsObject:?])
  {
    [SBSystemApertureSecureElementCoordinator element:registeredWithAssertion:];
  }

  [(NSMutableArray *)self->_registeredElements addObject:v13];
  v5 = [v13 viewProvider];
  v6 = [v5 systemApertureLayoutSpecifyingOverrider];
  [v6 addBehaviorOverridingParticipant:self];

  v7 = objc_opt_respondsToSelector();
  v8 = v13;
  if (v7)
  {
    v9 = [v13 isSecureFlipBookElement];
    v8 = v13;
    if (v9)
    {
      v10 = v13;
      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 isRegisteredForCapture];
        inRecordingMode = self->_inRecordingMode;
        if (inRecordingMode && v11)
        {
          if (self->_activelyCapturingElement)
          {
            [SBSystemApertureSecureElementCoordinator element:registeredWithAssertion:];
          }

          [(SBSystemApertureSecureElementCoordinator *)self _captureElement:v10];
        }

        else if (!inRecordingMode && ((v11 ^ 1) & 1) == 0)
        {
          [SBSystemApertureSecureElementCoordinator element:registeredWithAssertion:];
        }
      }

      v8 = v13;
    }
  }
}

- (void)elementAssertionInvalidated:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = objc_opt_self();
    v5 = v9;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      [SBSystemApertureSecureElementCoordinator elementAssertionInvalidated:];
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 element];
  [(NSMutableArray *)self->_registeredElements removeObject:v8];
}

- (BOOL)doesElementNeedSuppressionForActiveSecureCaptureSession:(id)a3
{
  v4 = a3;
  v5 = self->_inRecordingMode && (!self->_activelyCapturingElement || !SAElementEqualToElement() || self->_overrideLayoutMode <= 0);

  return v5;
}

- (void)captureElementsWithRegistrationBlocks:(id)a3 elementCapturingDelegate:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_currentCaptureDelegate)
  {
    [SBSystemApertureSecureElementCoordinator captureElementsWithRegistrationBlocks:elementCapturingDelegate:];
  }

  currentCaptureDelegate = self->_currentCaptureDelegate;
  self->_currentCaptureDelegate = v6;

  [(SBSystemApertureSecureElementCoordinator *)self _continueRecordableElementRecordingWithRegistrationBlocksToRecord:v8];
}

- (void)initiatePrototypeFlipBookElementRecording
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__SBSystemApertureSecureElementCoordinator_initiatePrototypeFlipBookElementRecording__block_invoke;
  v6[3] = &unk_2783A8BC8;
  v6[4] = self;
  v6[5] = a2;
  v3 = MEMORY[0x223D6F7F0](v6);
  v4 = MEMORY[0x223D6F7F0]();
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(SBSystemApertureSecureElementCoordinator *)self captureElementsWithRegistrationBlocks:v5 elementCapturingDelegate:self];
}

uint64_t __85__SBSystemApertureSecureElementCoordinator_initiatePrototypeFlipBookElementRecording__block_invoke(uint64_t a1)
{
  v2 = NSClassFromString(&cfstr_Sblockelementv_0.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    __85__SBSystemApertureSecureElementCoordinator_initiatePrototypeFlipBookElementRecording__block_invoke_cold_1(a1);
  }

  return [(objc_class *)v2 registerElementForRecording];
}

- (id)elementCoordinator:(id)a3 directoryForCapturingFlipBookElement:(id)a4
{
  v4 = a4;
  v5 = NSTemporaryDirectory();
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 clientIdentifier];
  v8 = [v4 elementIdentifier];

  v9 = [v6 stringWithFormat:@"%@-%@", v7, v8];

  v10 = [v5 stringByAppendingPathComponent:v9];
  v11 = [v10 stringByStandardizingPath];

  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  [v13 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:0];

  return v12;
}

- (void)renderingOverlay:(id)a3 updatedRenderedConfiguration:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 activeSecureElementIdentity];
  v9 = [v7 activeConfigurationName];
  v10 = [v7 activeComponentsToStates];
  v11 = [v7 appliedComponentsToStates];
  v49 = [v7 transitionInProgress];
  v50 = v11;
  if ((SAElementIdentityEqualToIdentity() & 1) != 0 || !self->_lastNotifiedElementIdentity)
  {
    v20 = v6;
    v19 = 0;
  }

  else
  {
    v47 = v9;
    v43 = v7;
    v45 = v6;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v12 = self->_registeredElements;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v56;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v56 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v55 + 1) + 8 * i);
          if (SAElementIdentityEqualToIdentity())
          {
            if (objc_opt_respondsToSelector())
            {
              [v17 setActiveConfiguration:0];
            }

            if (objc_opt_respondsToSelector())
            {
              v18 = [MEMORY[0x277CBEAC0] dictionary];
              [v17 setActiveComponentStates:v18];
            }
          }
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v14);
    }

    v19 = 1;
    v7 = v43;
    v20 = v45;
    v9 = v47;
  }

  v21 = v19 | BSEqualObjects() ^ 1;
  v22 = v19 | BSEqualObjects() ^ 1;
  v23 = v19 | BSEqualObjects() ^ 1;
  lastNotifiedWasAnimating = self->_lastNotifiedWasAnimating;
  v25 = lastNotifiedWasAnimating == v49;
  v26 = lastNotifiedWasAnimating | v23;
  if (v25)
  {
    v27 = v23;
  }

  else
  {
    v27 = v26;
  }

  v42 = v21;
  if (((v21 | v22) & 1) == 0 && (v27 & 1) == 0)
  {
    v28 = 0;
    v29 = v20;
    goto LABEL_44;
  }

  v46 = v10;
  v48 = v9;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v30 = self->_registeredElements;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v51 objects:v59 count:16];
  v29 = v20;
  if (!v31)
  {

LABEL_43:
    lastNotifiedElementIdentity = self->_lastNotifiedElementIdentity;
    self->_lastNotifiedElementIdentity = 0;

    v28 = 0;
    v10 = v46;
    v9 = v48;
    goto LABEL_44;
  }

  v32 = v31;
  v40 = v22;
  v41 = v27;
  v44 = v7;
  v28 = 0;
  v33 = *v52;
  do
  {
    for (j = 0; j != v32; ++j)
    {
      if (*v52 != v33)
      {
        objc_enumerationMutation(v30);
      }

      v35 = *(*(&v51 + 1) + 8 * j);
      if (SAElementIdentityEqualToIdentity())
      {
        v36 = v35;

        v28 = v36;
      }
    }

    v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v51 objects:v59 count:16];
  }

  while (v32);

  v7 = v44;
  v29 = v20;
  if (!v28)
  {
    goto LABEL_43;
  }

  v37 = [[SBSAElementIdentification alloc] initWithElementIdentification:v8];
  v38 = self->_lastNotifiedElementIdentity;
  self->_lastNotifiedElementIdentity = v37;

  v10 = v46;
  v9 = v48;
  if (v42 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v28 setActiveConfiguration:v48];
    objc_storeStrong(&self->_lastNotifiedActiveConfiguration, v48);
  }

  if (v40 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v28 setAppliedComponentStates:v50];
    objc_storeStrong(&self->_lastNotifiedAppliedComponentStates, v50);
  }

  if (v41 & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v28 setActiveComponentStates:v46];
    objc_storeStrong(&self->_lastNotifiedActiveComponentStates, v46);
    self->_lastNotifiedWasAnimating = v49;
  }

LABEL_44:
}

- (void)_continueRecordableElementRecordingWithRegistrationBlocksToRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  if (v5)
  {
    [(SBSystemApertureSecureElementCoordinator *)self setInRecordingMode:1];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __110__SBSystemApertureSecureElementCoordinator__continueRecordableElementRecordingWithRegistrationBlocksToRecord___block_invoke;
    v10[3] = &unk_2783A9CE8;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    v6 = MEMORY[0x223D6F7F0](v10);
    nextElementCaptureContinuation = self->_nextElementCaptureContinuation;
    self->_nextElementCaptureContinuation = v6;

    v5[2](v5);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = self->_nextElementCaptureContinuation;
    self->_nextElementCaptureContinuation = 0;

    [(SBSystemApertureSecureElementCapturingDelegate *)self->_currentCaptureDelegate elementCoordinatorFinishedCapturing:self];
    currentCaptureDelegate = self->_currentCaptureDelegate;
    self->_currentCaptureDelegate = 0;
  }
}

void __110__SBSystemApertureSecureElementCoordinator__continueRecordableElementRecordingWithRegistrationBlocksToRecord___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setInRecordingMode:0];
  v3 = dispatch_time(0, 5000000000);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __110__SBSystemApertureSecureElementCoordinator__continueRecordableElementRecordingWithRegistrationBlocksToRecord___block_invoke_2;
  v4[3] = &unk_2783A92D8;
  v5 = *(a1 + 32);
  v6 = WeakRetained;
  dispatch_after(v3, MEMORY[0x277D85CD0], v4);
}

void __110__SBSystemApertureSecureElementCoordinator__continueRecordableElementRecordingWithRegistrationBlocksToRecord___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  [v2 removeObjectAtIndex:0];
  [*(a1 + 40) _continueRecordableElementRecordingWithRegistrationBlocksToRecord:v2];
}

- (void)_captureElement:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [SBSystemApertureSecureElementCoordinator _captureElement:];
  }

  v6 = v5;
  objc_storeStrong(&self->_activelyCapturingElement, a3);
  currentCaptureError = self->_currentCaptureError;
  self->_currentCaptureError = 0;

  v8 = [v6 recordableConfigurations];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__SBSystemApertureSecureElementCoordinator__captureElement___block_invoke;
  v15[3] = &unk_2783A8ED8;
  v15[4] = self;
  v9 = v6;
  v16 = v9;
  v17 = v9;
  v10 = MEMORY[0x223D6F7F0](v15);
  v11 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 clientIdentifier];
    v13 = [v9 elementIdentifier];
    *buf = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Coordinator Began capture of FlipBooks for element:'%@-%@' ", buf, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBSystemApertureSecureElementCapturingDelegate *)self->_currentCaptureDelegate elementCoordinator:self beganCaptureOfElement:v9];
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [(SBSystemApertureSecureElementCapturingDelegate *)self->_currentCaptureDelegate elementCoordinator:self shouldRecordLimitedVariationsOfElementOnlyForDebug:v9];
  }

  else
  {
    v14 = 0;
  }

  [(SBSystemApertureSecureElementCoordinator *)self _captureConfigurationVariants:v8 forElement:v9 express:v14 completion:v10];
}

void __60__SBSystemApertureSecureElementCoordinator__captureElement___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 104);
  v3 = SBLogSystemApertureSecureFlipBookElements();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 40) clientIdentifier];
      v6 = [*(a1 + 40) elementIdentifier];
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      v7 = "Coordinator Failed to completely capture of FlipBooks for element:'%@-%@' ";
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, v7, &v17, 0x16u);
    }
  }

  else if (v4)
  {
    v5 = [*(a1 + 40) clientIdentifier];
    v6 = [*(a1 + 40) elementIdentifier];
    v17 = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v7 = "Coordinator Successfully completed capture of FlipBooks for element:'%@-%@' ";
    goto LABEL_6;
  }

  [*(*(a1 + 32) + 72) elementCoordinator:*(a1 + 32) finishedCaptureOfElement:*(a1 + 48) error:*(*(a1 + 32) + 104)];
  v8 = *(a1 + 32);
  v9 = *(v8 + 104);
  *(v8 + 104) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 96);
  *(v10 + 96) = 0;

  (*(*(*(a1 + 32) + 88) + 16))(*(*(a1 + 32) + 88), v12, v13, v14);
  v15 = *(a1 + 32);
  v16 = *(v15 + 88);
  *(v15 + 88) = 0;
}

- (void)_captureConfigurationVariants:(id)a3 forElement:(id)a4 express:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 count] && !self->_currentCaptureError)
  {
    v13 = [v10 firstObject];
    v14 = [v10 mutableCopy];
    [v14 removeObjectAtIndex:0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __104__SBSystemApertureSecureElementCoordinator__captureConfigurationVariants_forElement_express_completion___block_invoke;
    v18[3] = &unk_2783AB550;
    v18[4] = self;
    v19 = v14;
    v15 = v11;
    v20 = v15;
    v22 = v7;
    v21 = v12;
    v16 = v14;
    v17 = MEMORY[0x223D6F7F0](v18);
    [(SBSystemApertureSecureElementCoordinator *)self _captureLayoutDirectionVariants:&unk_28336E7F0 forElement:v15 withConfiguration:v13 express:v7 completion:v17];
  }

  else
  {
    v12[2](v12);
  }
}

- (void)_captureLayoutDirectionVariants:(id)a3 forElement:(id)a4 withConfiguration:(id)a5 express:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([v12 count] && !self->_currentCaptureError)
  {
    v16 = [v12 firstObject];
    v17 = [v16 integerValue];

    v23 = v17;
    if (v17 >= 2)
    {
      [SBSystemApertureSecureElementCoordinator _captureLayoutDirectionVariants:forElement:withConfiguration:express:completion:];
    }

    v18 = [v12 mutableCopy];
    [v18 removeObjectAtIndex:0];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __124__SBSystemApertureSecureElementCoordinator__captureLayoutDirectionVariants_forElement_withConfiguration_express_completion___block_invoke;
    v24[3] = &unk_2783ADF00;
    v24[4] = self;
    v25 = v18;
    v19 = v13;
    v26 = v19;
    v20 = v14;
    v27 = v20;
    v29 = v8;
    v28 = v15;
    v21 = v18;
    v22 = MEMORY[0x223D6F7F0](v24);
    [(SBSystemApertureSecureElementCoordinator *)self _captureOrientationVariants:&unk_28336E808 forElement:v19 withConfiguration:v20 layoutDirection:v23 express:v8 completion:v22];
  }

  else
  {
    v15[2](v15);
  }
}

- (void)_captureOrientationVariants:(id)a3 forElement:(id)a4 withConfiguration:(id)a5 layoutDirection:(int64_t)a6 express:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if ([v14 count] && !self->_currentCaptureError)
  {
    v18 = [v14 firstObject];
    v19 = [v18 integerValue];

    v25 = v19;
    if ((v19 - 5) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      [SBSystemApertureSecureElementCoordinator _captureOrientationVariants:forElement:withConfiguration:layoutDirection:express:completion:];
    }

    v20 = [v14 mutableCopy];
    [v20 removeObjectAtIndex:0];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __136__SBSystemApertureSecureElementCoordinator__captureOrientationVariants_forElement_withConfiguration_layoutDirection_express_completion___block_invoke;
    v26[3] = &unk_2783BC3B8;
    v26[4] = self;
    v27 = v20;
    v21 = v15;
    v28 = v21;
    v22 = v16;
    v29 = v22;
    v31 = a6;
    v32 = v9;
    v30 = v17;
    v24 = v20;
    v23 = MEMORY[0x223D6F7F0](v26);
    [(SBSystemApertureSecureElementCoordinator *)self _captureLayoutModeVariants:&unk_28336E820 forElement:v21 withConfiguration:v22 layoutDirection:a6 orientation:v25 express:v9 completion:v23];
  }

  else
  {
    v17[2](v17);
  }
}

- (void)_captureLayoutModeVariants:(id)a3 forElement:(id)a4 withConfiguration:(id)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 express:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  if ([v15 count] && !self->_currentCaptureError)
  {
    v38 = v9;
    v19 = [v15 firstObject];
    v20 = [v19 integerValue];

    v36 = v20;
    if (v20 >= 4)
    {
      [SBSystemApertureSecureElementCoordinator _captureLayoutModeVariants:forElement:withConfiguration:layoutDirection:orientation:express:completion:];
    }

    v21 = [v15 mutableCopy];
    [v21 removeObjectAtIndex:0];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __147__SBSystemApertureSecureElementCoordinator__captureLayoutModeVariants_forElement_withConfiguration_layoutDirection_orientation_express_completion___block_invoke;
    v42[3] = &unk_2783BC3E0;
    v42[4] = self;
    v35 = v21;
    v43 = v35;
    v22 = v16;
    v44 = v22;
    v37 = v17;
    v45 = v37;
    v47 = a6;
    v48 = a7;
    v49 = v38;
    v46 = v18;
    v33 = MEMORY[0x223D6F7F0](v42);
    v34 = v22;
    v32 = v16;
    if (v38)
    {
      v23 = a6;
      v24 = a7 == 1;
    }

    else
    {
      v23 = a6;
      if (objc_opt_respondsToSelector())
      {
        v25 = [v22 isFixedInOrientation] ^ 1;
      }

      else
      {
        LOBYTE(v25) = 1;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v24 = (a7 == 1) | v25;
        goto LABEL_16;
      }

      v26 = [v37 configurationName];
      v27 = [v22 isSymmetricalForUILayoutDirectionInConfiguration:v26 orientation:a7];

      v24 = (a7 == 1) | v25;
      if (!v27)
      {
        goto LABEL_16;
      }
    }

    v24 &= v23 == 0;
LABEL_16:
    v28 = [v37 componentFlipBookDescriptionsForLayoutMode:v36];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __147__SBSystemApertureSecureElementCoordinator__captureLayoutModeVariants_forElement_withConfiguration_layoutDirection_orientation_express_completion___block_invoke_2;
    v39[3] = &unk_2783BC408;
    v41 = v24 & 1;
    v40 = v28;
    v29 = v28;
    v30 = [v29 bs_mapNoNulls:v39];
    LOBYTE(v31) = v38;
    [(SBSystemApertureSecureElementCoordinator *)self _captureComponents:v30 forElement:v34 withConfiguration:v37 layoutDirection:v23 orientation:a7 layoutMode:v36 express:v31 completion:v33];

    v16 = v32;
    goto LABEL_17;
  }

  v18[2](v18);
LABEL_17:
}

_SBSAComponentCaptureReference *__147__SBSystemApertureSecureElementCoordinator__captureLayoutModeVariants_forElement_withConfiguration_layoutDirection_orientation_express_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    v3 = a2;
    v4 = -[_SBSAComponentCaptureReference initWithComponent:index:ofCount:]([_SBSAComponentCaptureReference alloc], "initWithComponent:index:ofCount:", v3, [*(a1 + 32) indexOfObject:v3], objc_msgSend(*(a1 + 32), "count"));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_captureComponents:(id)a3 forElement:(id)a4 withConfiguration:(id)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 layoutMode:(int64_t)a8 express:(BOOL)a9 completion:(id)a10
{
  v78 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a10;
  if ([v16 count] && !self->_currentCaptureError)
  {
    v38 = a6;
    v39 = [v16 firstObject];
    v34 = [v39 component];
    v20 = [v16 mutableCopy];
    [v20 removeObjectAtIndex:0];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __150__SBSystemApertureSecureElementCoordinator__captureComponents_forElement_withConfiguration_layoutDirection_orientation_layoutMode_express_completion___block_invoke;
    v65[3] = &unk_2783BC430;
    v65[4] = self;
    v32 = v20;
    v66 = v32;
    v40 = v17;
    v67 = v40;
    v37 = v18;
    v68 = v37;
    v70 = a6;
    v71 = a7;
    v72 = a8;
    v73 = a9;
    v69 = v19;
    v33 = MEMORY[0x223D6F7F0](v65);
    v36 = [v39 index];
    v21 = [v37 configurationName];
    v22 = SBScreenMaximumFramesPerSecond();
    v35 = [SBSystemApertureSecureElementUtilities flipBookNameForElement:v40 configurationName:v21 componentIndex:v36 layoutDirection:a6 orientation:a7 layoutMode:a8 deviceMaxFPS:v22 artworkSubtype:SBFEffectiveArtworkSubtype()];

    v23 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v40 clientIdentifier];
      v25 = [v40 elementIdentifier];
      *buf = 138412802;
      *&buf[4] = v35;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      *&buf[22] = 2112;
      v75 = v25;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "Coordinator Began capture of FlipBook: '%@' for element:'%@-%@' ", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v75 = __Block_byref_object_copy__91;
    v76 = __Block_byref_object_dispose__91;
    v77 = 0;
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x3032000000;
    v63[3] = __Block_byref_object_copy__91;
    v63[4] = __Block_byref_object_dispose__91;
    v64 = 0;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x3032000000;
    v61[3] = __Block_byref_object_copy__91;
    v61[4] = __Block_byref_object_dispose__91;
    v62 = 0;
    v59[0] = 0;
    v59[1] = v59;
    v59[2] = 0x3032000000;
    v59[3] = __Block_byref_object_copy__91;
    v59[4] = __Block_byref_object_dispose__91;
    v60 = 0;
    v26 = v40;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v31 = [MEMORY[0x277CCA890] currentHandler];

      v26 = v40;
    }

    v27 = [v26 platformElementHost];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __150__SBSystemApertureSecureElementCoordinator__captureComponents_forElement_withConfiguration_layoutDirection_orientation_layoutMode_express_completion___block_invoke_100;
    v58[3] = &unk_2783BC458;
    v58[4] = self;
    v58[5] = buf;
    v58[6] = v63;
    v58[7] = v61;
    v58[9] = v38;
    v58[10] = a7;
    v58[8] = v59;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __150__SBSystemApertureSecureElementCoordinator__captureComponents_forElement_withConfiguration_layoutDirection_orientation_layoutMode_express_completion___block_invoke_2;
    v43[3] = &unk_2783BC4F8;
    v43[4] = self;
    v54 = a8;
    v44 = v26;
    v45 = v37;
    v42 = v34;
    v46 = v42;
    v55 = v38;
    v56 = a7;
    v28 = v35;
    v47 = v28;
    v57 = v36;
    v29 = v39;
    v48 = v29;
    v50 = buf;
    v51 = v63;
    v52 = v61;
    v53 = v59;
    v30 = v33;
    v49 = v30;
    [v27 performAction:v58 withCompletionUponAnimationSettling:v43];

    _Block_object_dispose(v59, 8);
    _Block_object_dispose(v61, 8);

    _Block_object_dispose(v63, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19[2](v19);
  }
}

void __150__SBSystemApertureSecureElementCoordinator__captureComponents_forElement_withConfiguration_layoutDirection_orientation_layoutMode_express_completion___block_invoke_100(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v2 = [WeakRetained requireUserInterfaceLayoutDirection:a1[9] reason:@"Secure Element Capture"];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_loadWeakRetained((a1[4] + 16));
  v6 = [v5 requireUserInterfaceOrientation:a1[10] reason:@"Secure Element Capture"];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [WeakRetained systemApertureRepresentationSuppressionAssertionForSecureCapture];
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [WeakRetained requireClearBackgroundRenderingForCapture:@"Secure Element Capture"];
  v13 = *(a1[8] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void __150__SBSystemApertureSecureElementCoordinator__captureComponents_forElement_withConfiguration_layoutDirection_orientation_layoutMode_express_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained fixedReferenceView];
  v4 = [[SBSystemApertureSecureElementContainerDescription alloc] initWithSupportedLayoutMode:*(a1 + 120) layoutOverriderDelegate:*(a1 + 32)];
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = *(a1 + 40);
  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  v9 = *(a1 + 120);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __150__SBSystemApertureSecureElementCoordinator__captureComponents_forElement_withConfiguration_layoutDirection_orientation_layoutMode_express_completion___block_invoke_3;
  v17[3] = &unk_2783BC4D0;
  v17[4] = v5;
  v18 = *(a1 + 64);
  v19 = *(a1 + 40);
  v20 = v4;
  v21 = *(a1 + 56);
  v22 = v3;
  v28 = *(a1 + 144);
  v23 = *(a1 + 72);
  v24 = WeakRetained;
  v14 = *(a1 + 80);
  v26 = *(a1 + 96);
  v27 = *(a1 + 112);
  v10 = v14;
  v25 = v14;
  v11 = WeakRetained;
  v12 = v3;
  v13 = v4;
  [v5 _captureBoundsForElement:v16 configuration:v15 component:v6 layoutDirection:v8 orientation:v7 layoutMode:v9 containerDescription:v13 coordinateSpace:v12 completion:v17];
}

void __150__SBSystemApertureSecureElementCoordinator__captureComponents_forElement_withConfiguration_layoutDirection_orientation_layoutMode_express_completion___block_invoke_3(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v80 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v11 = MEMORY[0x277CCACA8];
  v12 = *(a1 + 40);
  v13 = [*(a1 + 48) clientIdentifier];
  v14 = [*(a1 + 48) elementIdentifier];
  v15 = [v11 stringWithFormat:@"Capturing FlipBook: '%@' for element:'%@-%@'", v12, v13, v14];
  v16 = [WeakRetained requireCaptureBoundsDefiningViewWithBounds:v15 reason:{a2, a3, a4, a5}];

  v17 = [SBSystemApertureSecureElementCompositeDescription alloc];
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 40);
  v21 = *(a1 + 72);
  v55 = v16;
  v22 = [v16 boundsDefiningView];
  v23 = [(SBSystemApertureSecureElementCompositeDescription *)v17 initWithContainerDescription:v18 contentDescription:v19 name:v20 captureContainer:v21 captureBoundsDefiningView:v22];

  v76 = 0;
  v54 = [(SBSystemApertureSecureElementCompositeDescription *)v23 validateContainerAndContentDescriptionStateNames:&v76];
  obj = v76;
  v57 = v76;
  v58 = a1;
  [*(a1 + 72) convertRect:0 toView:{a2, a3, a4, a5}];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v81);
  v59 = [MEMORY[0x277CBEB38] dictionary];
  v60 = v23;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v24 = [(SBSystemApertureSecureElementCompositeDescription *)v23 states];
  v25 = [v24 countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v73;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v73 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v72 + 1) + 8 * i);
        v30 = [(SBSystemApertureSecureElementCompositeDescription *)v23 allowedNextStatesForState:v29];
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __150__SBSystemApertureSecureElementCoordinator__captureComponents_forElement_withConfiguration_layoutDirection_orientation_layoutMode_express_completion___block_invoke_4;
        v69[3] = &unk_2783BC480;
        v70 = v23;
        v71 = v29;
        v31 = [v30 bs_filter:v69];
        if ([v31 count])
        {
          [v59 setObject:v31 forKey:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v72 objects:v79 count:16];
    }

    while (v26);
  }

  v77[0] = @"Component_Name";
  v32 = [*(a1 + 64) flipBookName];
  v78[0] = v32;
  v77[1] = @"Component_Index";
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 136)];
  v78[1] = v33;
  v77[2] = @"Component_Count";
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 80), "count")}];
  v78[2] = v34;
  v78[3] = DictionaryRepresentation;
  v77[3] = @"Component_Frame";
  v77[4] = @"Initial_State";
  v35 = [(SBSystemApertureSecureElementCompositeDescription *)v23 initialState];
  v77[5] = @"Secure_States_Dict";
  v78[4] = v35;
  v78[5] = v59;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:6];

  v37 = [MEMORY[0x277CBEB38] dictionary];
  v38 = [*(a1 + 88) view];
  v39 = [v38 _screen];

  [SBRecordingIndicatorVisualRepresentation indicatorFrameForScreenType:SBHScreenTypeForCurrentDevice() screen:v39 style:3];
  v68[0] = v40;
  v68[1] = v41;
  v68[2] = v42;
  v68[3] = v43;
  v44 = [MEMORY[0x277CCAE60] valueWithBytes:v68 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v37 setObject:v44 forKeyedSubscript:*MEMORY[0x277D6C078]];

  v45 = +[SBSystemApertureDomain rootSettings];
  if ([v45 secureFlipBookCaptureVerbose])
  {
    v46 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v37 setObject:v46 forKeyedSubscript:*MEMORY[0x277D6C080]];
  }

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __150__SBSystemApertureSecureElementCoordinator__captureComponents_forElement_withConfiguration_layoutDirection_orientation_layoutMode_express_completion___block_invoke_5;
  v61[3] = &unk_2783BC4A8;
  v47 = *(a1 + 120);
  v66 = *(a1 + 104);
  v67 = v47;
  v61[4] = *(a1 + 32);
  v62 = *(a1 + 48);
  v63 = *(a1 + 40);
  v48 = v55;
  v64 = v48;
  v65 = *(v58 + 96);
  v49 = MEMORY[0x223D6F7F0](v61);
  if (v54)
  {
    v50 = objc_alloc_init(MEMORY[0x277D6C070]);
    [v50 generateFlipBookFromDescription:v60 userInfo:v36 options:v37 constraintBoundingBoxes:0 resultHandler:v49];

    v51 = v57;
  }

  else
  {
    objc_storeStrong((*(v58 + 32) + 104), obj);
    v52 = *(v58 + 96);
    v51 = v57;
    if (v52)
    {
      (*(v52 + 16))();
    }
  }
}

void __150__SBSystemApertureSecureElementCoordinator__captureComponents_forElement_withConfiguration_layoutDirection_orientation_layoutMode_express_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(*(*(a1 + 72) + 8) + 40) invalidate];
  [*(*(*(a1 + 80) + 8) + 40) invalidate];
  [*(*(*(a1 + 88) + 8) + 40) invalidate];
  [*(*(*(a1 + 96) + 8) + 40) invalidate];
  if (!v5 || v6)
  {
    v45 = *MEMORY[0x277CCA450];
    v18 = MEMORY[0x277CCACA8];
    v19 = *(a1 + 48);
    v20 = [*(a1 + 40) clientIdentifier];
    v21 = [*(a1 + 40) elementIdentifier];
    v22 = [v18 stringWithFormat:@"Coordinator Failed capture of FlipBook: '%@' with error '%@' for element:'%@-%@' ", v19, v6, v20, v21];
    v46 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v7 = [v23 mutableCopy];

    if (v6)
    {
      [v7 setObject:v6 forKey:*MEMORY[0x277CCA7E8]];
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBSecureFlipBookElementErrorDomain" code:2 userInfo:v7];
    v25 = *(a1 + 32);
    v26 = *(v25 + 104);
    *(v25 + 104) = v24;
  }

  else
  {
    v7 = [*(*(a1 + 32) + 72) elementCoordinator:*(a1 + 32) directoryForCapturingFlipBookElement:*(a1 + 40)];
    v44 = 0;
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v7 path];
    v10 = [v8 fileExistsAtPath:v9 isDirectory:&v44];

    if (v10 && v44 == 1)
    {
      v43 = 0;
      v11 = [v5 writeFlipBookToDirectory:v7 error:&v43];
      v12 = v43;
      v13 = SBLogSystemApertureSecureFlipBookElements();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v14)
        {
          v15 = *(a1 + 48);
          v16 = [*(a1 + 40) clientIdentifier];
          v17 = [*(a1 + 40) elementIdentifier];
          *buf = 138413058;
          v52 = v15;
          v53 = 2112;
          v54 = v7;
          v55 = 2112;
          v56 = v16;
          v57 = 2112;
          v58 = v17;
          _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Coordinator Finished capture of FlipBook: '%@' to '%@' for element:'%@-%@' ", buf, 0x2Au);
        }
      }

      else
      {
        if (v14)
        {
          v31 = *(a1 + 48);
          v32 = [*(a1 + 40) clientIdentifier];
          v33 = [*(a1 + 40) elementIdentifier];
          *buf = 138413058;
          v52 = v31;
          v53 = 2112;
          v54 = v12;
          v55 = 2112;
          v56 = v32;
          v57 = 2112;
          v58 = v33;
          _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Coordinator Failed capture of FlipBook: '%@' with error '%@' for element:'%@-%@' ", buf, 0x2Au);
        }

        v49 = *MEMORY[0x277CCA450];
        v34 = MEMORY[0x277CCACA8];
        v35 = *(a1 + 48);
        v36 = [*(a1 + 40) clientIdentifier];
        v37 = [*(a1 + 40) elementIdentifier];
        v38 = [v34 stringWithFormat:@"Coordinator Failed to write FlipBook: '%@' with error '%@' for element:'%@-%@' ", v35, v12, v36, v37];
        v50 = v38;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v13 = [v39 mutableCopy];

        if (v12)
        {
          [v13 setObject:v12 forKey:*MEMORY[0x277CCA7E8]];
        }

        v40 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBSecureFlipBookElementErrorDomain" code:3 userInfo:v13];
        v41 = *(a1 + 32);
        v42 = *(v41 + 104);
        *(v41 + 104) = v40;
      }
    }

    else
    {
      v47 = *MEMORY[0x277CCA450];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"File manager did not find a directory at output URL: %@", v7];
      v48 = v27;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBSecureFlipBookElementErrorDomain" code:1 userInfo:v12];
      v29 = *(a1 + 32);
      v13 = *(v29 + 104);
      *(v29 + 104) = v28;
    }
  }

  [*(a1 + 56) invalidate];
  v30 = *(a1 + 64);
  if (v30)
  {
    (*(v30 + 16))();
  }
}

- (void)_accumulateBoundsForComponent:(id)a3 rect:(CGRect)a4 remainingStates:(id)a5 coordinateSpace:(id)a6 completion:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if ([v16 count])
  {
    v19 = [v16 firstObject];
    v20 = [v16 mutableCopy];
    [v20 removeObjectAtIndex:0];
    objc_initWeak(&location, self);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __122__SBSystemApertureSecureElementCoordinator__accumulateBoundsForComponent_rect_remainingStates_coordinateSpace_completion___block_invoke;
    v27 = &unk_2783BC520;
    v21 = v15;
    v28 = v21;
    v29 = v17;
    v32[1] = *&x;
    v32[2] = *&y;
    v32[3] = *&width;
    v32[4] = *&height;
    objc_copyWeak(v32, &location);
    v22 = v20;
    v30 = v22;
    v31 = v18;
    v23 = MEMORY[0x223D6F7F0](&v24);
    [v21 resetToState:v19 completion:{v23, v24, v25, v26, v27}];

    objc_destroyWeak(v32);
    objc_destroyWeak(&location);
  }

  else
  {
    v18[2](v18, x, y, width, height);
  }
}

void __122__SBSystemApertureSecureElementCoordinator__accumulateBoundsForComponent_rect_remainingStates_coordinateSpace_completion___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) referenceView];
  [*(a1 + 32) captureBounds];
  [*(a1 + 40) convertRect:v11 fromCoordinateSpace:?];
  v14.origin.x = v2;
  v14.origin.y = v3;
  v14.size.width = v4;
  v14.size.height = v5;
  v13 = CGRectUnion(*(a1 + 72), v14);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _accumulateBoundsForComponent:*(a1 + 32) rect:*(a1 + 48) remainingStates:*(a1 + 40) coordinateSpace:*(a1 + 56) completion:{x, y, width, height}];
}

- (void)_captureBoundsForElement:(id)a3 configuration:(id)a4 component:(id)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 layoutMode:(int64_t)a8 containerDescription:(id)a9 coordinateSpace:(id)a10 completion:(id)a11
{
  v12 = a5;
  v13 = a10;
  v14 = a11;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __180__SBSystemApertureSecureElementCoordinator__captureBoundsForElement_configuration_component_layoutDirection_orientation_layoutMode_containerDescription_coordinateSpace_completion___block_invoke;
  v28[3] = &unk_2783BC548;
  v28[4] = self;
  v15 = v13;
  v29 = v15;
  v16 = v12;
  v30 = v16;
  v31 = v14;
  v17 = v14;
  v18 = a9;
  v19 = MEMORY[0x223D6F7F0](v28);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __180__SBSystemApertureSecureElementCoordinator__captureBoundsForElement_configuration_component_layoutDirection_orientation_layoutMode_containerDescription_coordinateSpace_completion___block_invoke_129;
  v23[3] = &unk_2783A8EB0;
  v24 = v16;
  v25 = self;
  v26 = v15;
  v27 = v19;
  v20 = v19;
  v21 = v15;
  v22 = v16;
  [v18 resetToState:@"presented" completion:v23];
}

void __180__SBSystemApertureSecureElementCoordinator__captureBoundsForElement_configuration_component_layoutDirection_orientation_layoutMode_containerDescription_coordinateSpace_completion___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v11 = *(a1 + 40);
  [WeakRetained minimumSensorRegionFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [WeakRetained view];
  [v11 convertRect:v20 fromCoordinateSpace:{v13, v15, v17, v19}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = [WeakRetained view];
  v30 = [v29 traitCollection];
  [v30 displayScale];
  v46 = v31;
  v32 = SBCaptureRectForContentRectAndSensorRect(a2, a3, a4, a5, v22, v24, v26, v28);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = [*(a1 + 48) referenceView];
  v40 = [v39 traitCollection];
  [v40 displayScale];
  v42 = v41;

  v43 = 256.0 / v42;
  if (v36 > v43 || v38 > v43)
  {
    v45 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __180__SBSystemApertureSecureElementCoordinator__captureBoundsForElement_configuration_component_layoutDirection_orientation_layoutMode_containerDescription_coordinateSpace_completion___block_invoke_cold_1(v45);
    }

    if (v36 >= v43)
    {
      v36 = v43;
    }

    if (v38 >= v43)
    {
      v38 = v43;
    }
  }

  (*(*(a1 + 56) + 16))(v32, v34, v36, v38);
}

void __180__SBSystemApertureSecureElementCoordinator__captureBoundsForElement_configuration_component_layoutDirection_orientation_layoutMode_containerDescription_coordinateSpace_completion___block_invoke_129(uint64_t a1)
{
  v2 = [*(a1 + 32) states];
  [*(a1 + 40) _accumulateBoundsForComponent:*(a1 + 32) rect:v2 remainingStates:*(a1 + 48) coordinateSpace:*(a1 + 56) completion:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];
}

- (void)_changeOverrideToNewLayoutMode:(int64_t)a3 completion:(id)a4
{
  overrideLayoutMode = self->_overrideLayoutMode;
  self->_overrideLayoutMode = a3;
  activelyCapturingElement = self->_activelyCapturingElement;
  v8 = a4;
  v9 = [(SBSecureFlipBookElement *)activelyCapturingElement layoutHost];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [SBSystemApertureSecureElementCoordinator _changeOverrideToNewLayoutMode:completion:];
  }

  v10 = (a3 == 0) ^ (overrideLayoutMode == 0);
  v11 = [(SBSecureFlipBookElement *)self->_activelyCapturingElement platformElementHost];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__SBSystemApertureSecureElementCoordinator__changeOverrideToNewLayoutMode_completion___block_invoke;
  v13[3] = &unk_2783A97D8;
  v16 = v10;
  v14 = v9;
  v15 = self;
  v12 = v9;
  [v11 performAction:v13 withCompletionUponAnimationSettling:v8];
}

uint64_t __86__SBSystemApertureSecureElementCoordinator__changeOverrideToNewLayoutMode_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 96);
  if (v2 == 1)
  {
    return [v3 preferredPromotionDidInvalidateForLayoutSpecifier:v4];
  }

  else
  {
    return [v3 preferredLayoutModeDidInvalidateForLayoutSpecifier:v4];
  }
}

- (int64_t)layoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  v5 = a3;
  v6 = [v5 layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_layoutModeForTargetWithOverrider_isDefaultValue_];
  v7 = [v6 layoutModeForTargetWithOverrider:v5 isDefaultValue:0];
  if (self->_inRecordingMode)
  {
    v8 = [v5 layoutSpecifyingOverridingTarget];
    v9 = [(SBSecureFlipBookElement *)self->_activelyCapturingElement viewProvider];

    if (v8 == v9)
    {
      overrideLayoutMode = self->_overrideLayoutMode;
    }

    else
    {
      overrideLayoutMode = 0;
    }
  }

  else
  {
    overrideLayoutMode = v7;
  }

  return overrideLayoutMode;
}

- (void)preferredRecordedStateDidInvalidateForLayoutSpecifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureViewController);
  [WeakRetained secureElementHostPreferredRecordedStateDidInvalidateForLayoutSpecifier:v4];
}

- (void)setInRecordingMode:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  self->_inRecordingMode = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableArray *)self->_registeredElements copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 recordingModeChanged];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)element:registeredWithAssertion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)element:registeredWithAssertion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)element:registeredWithAssertion:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)elementAssertionInvalidated:.cold.1()
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sauielementass.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)captureElementsWithRegistrationBlocks:elementCapturingDelegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __85__SBSystemApertureSecureElementCoordinator_initiatePrototypeFlipBookElementRecording__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SBSystemApertureSecureElementCoordinator.m" lineNumber:137 description:@"Invalid class registered for recording"];
}

- (void)_captureElement:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_captureLayoutDirectionVariants:forElement:withConfiguration:express:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_captureOrientationVariants:forElement:withConfiguration:layoutDirection:express:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_captureLayoutModeVariants:forElement:withConfiguration:layoutDirection:orientation:express:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_changeOverrideToNewLayoutMode:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end