@interface SiriPresentationSpringBoardMainScreenViewController
- (BOOL)showAppsBehindSiri;
- (SiriPresentationSpringBoardMainScreenViewController)init;
- (SiriPresentationSpringBoardMainScreenViewController)initWithIdentifier:(int64_t)identifier hostedPresentationFrame:(CGRect)frame;
- (void)cancelPreheat;
- (void)loadView;
- (void)preheatWithOptions:(id)options;
- (void)presentationRequestedWithPresentationOptions:(id)options requestOptions:(id)requestOptions;
- (void)requestPasscodeUnlockWithCompletion:(id)completion;
- (void)resetGestureBehaviors;
- (void)setDockFrame:(CGRect)frame;
- (void)setFluidDismissalState:(id)state;
- (void)setInputType:(int64_t)type;
- (void)setShareHomeGesture:(BOOL)gesture;
- (void)setShouldDismissForSwipesOutsideContent:(BOOL)content;
- (void)setShouldDismissForTapOutsideContent:(BOOL)content;
- (void)setShouldDismissForTapsOutsideContent:(BOOL)content;
- (void)setShouldPassTouchesThroughToSpringBoard:(BOOL)board;
- (void)setSystemApertureFrames:(id)frames;
@end

@implementation SiriPresentationSpringBoardMainScreenViewController

- (SiriPresentationSpringBoardMainScreenViewController)initWithIdentifier:(int64_t)identifier hostedPresentationFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SiriPresentationSpringBoardMainScreenViewController;
  v4 = [(SiriPresentationViewController *)&v7 initWithIdentifier:identifier hostedPresentationFrame:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  v5 = v4;
  if (v4)
  {
    [(SiriPresentationSpringBoardMainScreenViewController *)v4 resetGestureBehaviors];
    [(SiriPresentationViewController *)v5 prewarmMetalLayers];
  }

  return v5;
}

- (SiriPresentationSpringBoardMainScreenViewController)init
{
  v7.receiver = self;
  v7.super_class = SiriPresentationSpringBoardMainScreenViewController;
  v2 = [(SiriPresentationViewController *)&v7 initWithIdentifier:1 hostedPresentationFrame:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  v3 = v2;
  if (v2)
  {
    [(SiriPresentationSpringBoardMainScreenViewController *)v2 resetGestureBehaviors];
    [(SiriPresentationViewController *)v3 prewarmMetalLayers];
    v4 = objc_alloc_init(_TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager);
    quickTypeGestureActivationManager = v3->_quickTypeGestureActivationManager;
    v3->_quickTypeGestureActivationManager = v4;
  }

  return v3;
}

- (void)resetGestureBehaviors
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_21FEE5000, self, a3, "%s #dismissal Resetting gesture behaviors", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277CEF6A0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setOpaque:0];
  [(SiriPresentationSpringBoardMainScreenViewController *)self setView:v4];
}

- (void)requestPasscodeUnlockWithCompletion:(id)completion
{
  completionCopy = completion;
  siriViewController = [(SiriPresentationViewController *)self siriViewController];
  if (siriViewController)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __91__SiriPresentationSpringBoardMainScreenViewController_requestPasscodeUnlockWithCompletion___block_invoke;
    v6[3] = &unk_278430148;
    v7 = completionCopy;
    [siriViewController handlePasscodeUnlockWithClient:0 withCompletion:v6];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 2);
  }
}

uint64_t __91__SiriPresentationSpringBoardMainScreenViewController_requestPasscodeUnlockWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (a2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    return (*(result + 16))(result, v4);
  }

  return result;
}

- (void)setFluidDismissalState:(id)state
{
  stateCopy = state;
  v3 = stateCopy;
  SiriUIInvokeOnMainQueue();
}

void __78__SiriPresentationSpringBoardMainScreenViewController_setFluidDismissalState___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 992) = *(a1 + 40) != 0;
  v2 = [*(a1 + 32) siriViewController];
  [v2 setFluidDismissalState:*(a1 + 40)];
}

void __94__SiriPresentationSpringBoardMainScreenViewController_noteFluidDismissalCompletedWithSuccess___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) siriViewController];
  [v2 noteFluidDismissalCompletedWithSuccess:*(a1 + 40)];
}

- (void)setShouldDismissForTapOutsideContent:(BOOL)content
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  contentCopy = content;
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __92__SiriPresentationSpringBoardMainScreenViewController_setShouldDismissForTapOutsideContent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      __92__SiriPresentationSpringBoardMainScreenViewController_setShouldDismissForTapOutsideContent___block_invoke_cold_1(WeakRetained, a1);
    }

    WeakRetained[1480] = *(a1 + 40);
    v3 = [WeakRetained siriPresentationControllerDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [WeakRetained siriPresentationControllerDelegate];
      [v5 siriPresentation:WeakRetained didUpdateShouldDismissForTapOutsideContentTo:WeakRetained[1480]];
    }
  }
}

- (void)setShouldDismissForTapsOutsideContent:(BOOL)content
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  contentCopy = content;
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __93__SiriPresentationSpringBoardMainScreenViewController_setShouldDismissForTapsOutsideContent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      __93__SiriPresentationSpringBoardMainScreenViewController_setShouldDismissForTapsOutsideContent___block_invoke_cold_1(WeakRetained, a1);
    }

    WeakRetained[1481] = *(a1 + 40);
    v3 = [WeakRetained siriPresentationControllerDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [WeakRetained siriPresentationControllerDelegate];
      [v5 siriPresentation:WeakRetained didUpdateShouldDismissForTapsOutsideContent:WeakRetained[1481]];
    }
  }
}

- (void)setShouldDismissForSwipesOutsideContent:(BOOL)content
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  contentCopy = content;
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __95__SiriPresentationSpringBoardMainScreenViewController_setShouldDismissForSwipesOutsideContent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      __95__SiriPresentationSpringBoardMainScreenViewController_setShouldDismissForSwipesOutsideContent___block_invoke_cold_1(WeakRetained, a1);
    }

    WeakRetained[1499] = *(a1 + 40);
    v3 = [WeakRetained siriPresentationControllerDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [WeakRetained siriPresentationControllerDelegate];
      [v5 siriPresentation:WeakRetained didUpdateShouldDismissForSwipesOutsideContent:WeakRetained[1499]];
    }
  }
}

- (void)setShouldPassTouchesThroughToSpringBoard:(BOOL)board
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  boardCopy = board;
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __96__SiriPresentationSpringBoardMainScreenViewController_setShouldPassTouchesThroughToSpringBoard___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      __96__SiriPresentationSpringBoardMainScreenViewController_setShouldPassTouchesThroughToSpringBoard___block_invoke_cold_1(WeakRetained, a1);
    }

    WeakRetained[1498] = *(a1 + 40);
    v3 = [WeakRetained siriPresentationControllerDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [WeakRetained siriPresentationControllerDelegate];
      [v5 siriPresentation:WeakRetained didUpdateShouldPassTouchesThroughToSpringBoard:WeakRetained[1498]];
    }
  }
}

- (void)setShareHomeGesture:(BOOL)gesture
{
  if ((SiriUIDeviceIsPad() & 1) != 0 || [MEMORY[0x277CEF4D0] saeAvailable])
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v5, &location);
    gestureCopy = gesture;
    SiriUIInvokeOnMainQueue();
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __75__SiriPresentationSpringBoardMainScreenViewController_setShareHomeGesture___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      __75__SiriPresentationSpringBoardMainScreenViewController_setShareHomeGesture___block_invoke_cold_1(WeakRetained, a1);
    }

    WeakRetained[1500] = *(a1 + 40);
    v4 = [WeakRetained siriPresentationControllerDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [WeakRetained siriPresentationControllerDelegate];
      [v6 siriPresentation:WeakRetained didUpdateHomeGestureSharing:WeakRetained[1500]];

      v7 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"not shared";
        if (*(a1 + 40))
        {
          v8 = @"shared";
        }

        v10 = 136315394;
        v11 = "[SiriPresentationSpringBoardMainScreenViewController setShareHomeGesture:]_block_invoke";
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEFAULT, "%s #compact: Telling SpringBoard that the Home Gesture is %@ with Siri", &v10, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setInputType:(int64_t)type
{
  objc_initWeak(&location, self);
  objc_copyWeak(v4, &location);
  v4[1] = type;
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(v4);
  objc_destroyWeak(&location);
}

uint64_t __68__SiriPresentationSpringBoardMainScreenViewController_setInputType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[188] = *(a1 + 40);
    v10 = WeakRetained;
    v3 = [WeakRetained siriPresentationControllerDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [v10 siriPresentationControllerDelegate];
      [v5 siriPresentation:v10 didUpdateInputType:*(a1 + 40)];
    }

    if ([MEMORY[0x277CEF4D0] saeAvailable])
    {
      v6 = [v10 siriPresentationControllerDelegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [v10 siriPresentationControllerDelegate];
        [v8 siriPresentation:v10 requestsDeemphasizedBackdrop:*(a1 + 40) == 1];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setDockFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  siriViewController = [(SiriPresentationViewController *)self siriViewController];
  if ([(SiriPresentationSpringBoardMainScreenViewController *)self showAppsBehindSiri])
  {
    view = [(SiriPresentationSpringBoardMainScreenViewController *)self view];
    view2 = [siriViewController view];
    [view convertRect:view2 toView:{x, y, width, height}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);
  }

  [siriViewController setDockFrame:{v11, v13, v15, v17}];
}

- (void)setSystemApertureFrames:(id)frames
{
  v19 = *MEMORY[0x277D85DE8];
  framesCopy = frames;
  if ([(SiriPresentationViewController *)self presentationState]== 2 || [(SiriPresentationViewController *)self presentationState]== 1 || [(SiriPresentationViewController *)self presentationState]== 4)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[SiriPresentationSpringBoardMainScreenViewController setSystemApertureFrames:]";
      _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #compact: received system aperture frames", &v17, 0xCu);
    }

    if ([framesCopy count])
    {
      firstObject = [framesCopy firstObject];
      [firstObject CGRectValue];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      siriViewController = [(SiriPresentationViewController *)self siriViewController];
      [siriViewController setSystemApertureFrame:{v8, v10, v12, v14}];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)showAppsBehindSiri
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  alwaysObscureBackgroundContentWhenActive = [mEMORY[0x277CEF368] alwaysObscureBackgroundContentWhenActive];

  return alwaysObscureBackgroundContentWhenActive ^ 1;
}

- (void)preheatWithOptions:(id)options
{
  optionsCopy = options;
  preheatRequest = [optionsCopy preheatRequest];
  requestSource = [preheatRequest requestSource];

  if (requestSource == 48)
  {
    if (SiriUIDeviceIsPad() & 1) == 0 && ([optionsCopy lockState])
    {
      v15 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
      {
        [(SiriPresentationSpringBoardMainScreenViewController *)v15 preheatWithOptions:v16, v17, v18, v19, v20, v21, v22];
      }

      [(SiriQuickTypeGestureActivationManager *)self->_quickTypeGestureActivationManager prewarmForFirstTapOfQuickTypeToSiriGestureWithCompletionHandler:&__block_literal_global_1];
    }

    else
    {
      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
      {
        [(SiriPresentationSpringBoardMainScreenViewController *)v7 preheatWithOptions:v8, v9, v10, v11, v12, v13, v14];
      }
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = SiriPresentationSpringBoardMainScreenViewController;
    [(SiriPresentationViewController *)&v23 preheatWithOptions:optionsCopy];
  }
}

void __74__SiriPresentationSpringBoardMainScreenViewController_preheatWithOptions___block_invoke()
{
  v0 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    __74__SiriPresentationSpringBoardMainScreenViewController_preheatWithOptions___block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

- (void)cancelPreheat
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_21FEE5000, self, a3, "%s #activation #quickTypeGate cancelPrewarmForFirstTapOfQuickTypeToSiriGesture began", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __68__SiriPresentationSpringBoardMainScreenViewController_cancelPreheat__block_invoke()
{
  v0 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    __68__SiriPresentationSpringBoardMainScreenViewController_cancelPreheat__block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

- (void)presentationRequestedWithPresentationOptions:(id)options requestOptions:(id)requestOptions
{
  v29 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  requestOptionsCopy = requestOptions;
  if ((SiriUIDeviceIsPad() & 1) != 0 || [requestOptionsCopy requestSource] != 48)
  {
LABEL_6:
    v21.receiver = self;
    v21.super_class = SiriPresentationSpringBoardMainScreenViewController;
    [(SiriPresentationViewController *)&v21 presentationRequestedWithPresentationOptions:optionsCopy requestOptions:requestOptionsCopy];
    goto LABEL_7;
  }

  currentLockState = [requestOptionsCopy currentLockState];
  v9 = *MEMORY[0x277CEF098];
  if ((currentLockState & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      [(SiriPresentationSpringBoardMainScreenViewController *)v9 presentationRequestedWithPresentationOptions:v10 requestOptions:v11, v12, v13, v14, v15, v16];
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[SiriPresentationSpringBoardMainScreenViewController presentationRequestedWithPresentationOptions:requestOptions:]";
    _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #quickTypeGate presentation requested for quick type gesture while on lock screen -> gating on presence of face", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  started = SRUIFInstrumentQuickTypeFaceDetectionGateStartSignpost();
  objc_initWeak(buf, self);
  quickTypeGestureActivationManager = self->_quickTypeGestureActivationManager;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __115__SiriPresentationSpringBoardMainScreenViewController_presentationRequestedWithPresentationOptions_requestOptions___block_invoke;
  v22[3] = &unk_278430208;
  v26[1] = started;
  v26[2] = *&Current;
  objc_copyWeak(v26, buf);
  v23 = optionsCopy;
  v24 = requestOptionsCopy;
  selfCopy = self;
  [(SiriQuickTypeGestureActivationManager *)quickTypeGestureActivationManager canActivateWithCompletionHandler:v22];

  objc_destroyWeak(v26);
  objc_destroyWeak(buf);
LABEL_7:

  v17 = *MEMORY[0x277D85DE8];
}

void __115__SiriPresentationSpringBoardMainScreenViewController_presentationRequestedWithPresentationOptions_requestOptions___block_invoke(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 64);
  SRUIFInstrumentQuickTypeFaceDetectionGateEndSignpost();
  Current = CFAbsoluteTimeGetCurrent();
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v13 = (Current - *(a1 + 72)) * 1000.0;
    v14 = @"NO";
    v17 = "[SiriPresentationSpringBoardMainScreenViewController presentationRequestedWithPresentationOptions:requestOptions:]_block_invoke";
    *buf = 136315650;
    if (a2)
    {
      v14 = @"YES";
    }

    v18 = 2048;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_debug_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEBUG, "%s #activation #quickTypeGate canActivate (face detection) completed in %.2fms with result %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (a2)
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 32);
      v15.receiver = *(a1 + 48);
      v15.super_class = SiriPresentationSpringBoardMainScreenViewController;
      objc_msgSendSuper2(&v15, sel_presentationRequestedWithPresentationOptions_requestOptions_, v10, v9);
    }

    else
    {
      v11 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "[SiriPresentationSpringBoardMainScreenViewController presentationRequestedWithPresentationOptions:requestOptions:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #quickTypeGate SiriQuickTypeGestureActivationManager determined Siri should not activate -> rejecting presentation", buf, 0xCu);
      }

      [WeakRetained _failedToPresentSiriWithError:0];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __92__SiriPresentationSpringBoardMainScreenViewController_setShouldDismissForTapOutsideContent___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(a1, a2, 1480);
  LODWORD(v5) = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_21FEE5000, v2, v3, "%s #dismissal Updating shouldDismissForTapOutsideContent from %d to %d", v5, v6, v7);
  v4 = *MEMORY[0x277D85DE8];
}

void __93__SiriPresentationSpringBoardMainScreenViewController_setShouldDismissForTapsOutsideContent___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(a1, a2, 1481);
  LODWORD(v5) = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_21FEE5000, v2, v3, "%s #dismissal Updating shouldDismissForTapsOutsideContent from %d to %d", v5, v6, v7);
  v4 = *MEMORY[0x277D85DE8];
}

void __95__SiriPresentationSpringBoardMainScreenViewController_setShouldDismissForSwipesOutsideContent___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(a1, a2, 1499);
  LODWORD(v5) = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_21FEE5000, v2, v3, "%s #dismissal Updating shouldDismissForSwipesOutsideContent from %d to %d", v5, v6, v7);
  v4 = *MEMORY[0x277D85DE8];
}

void __96__SiriPresentationSpringBoardMainScreenViewController_setShouldPassTouchesThroughToSpringBoard___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(a1, a2, 1498);
  LODWORD(v5) = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_21FEE5000, v2, v3, "%s #dismissal Updating shouldPassTouchesThroughToSpringBoard from %d to %d", v5, v6, v7);
  v4 = *MEMORY[0x277D85DE8];
}

void __75__SiriPresentationSpringBoardMainScreenViewController_setShareHomeGesture___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(a1, a2, 1500);
  LODWORD(v5) = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_21FEE5000, v2, v3, "%s #dismissal Updating shareHomeGesture from %d to %d", v5, v6, v7);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)preheatWithOptions:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_21FEE5000, a1, a3, "%s #activation #quickTypeGate prewarmForFirstTapOfQuickTypeToSiriGesture began", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)preheatWithOptions:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_21FEE5000, a1, a3, "%s #activation #quickTypeGate skipping preheating for quick type-to-Siri gesture since device is iPad or not on lock screen", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __74__SiriPresentationSpringBoardMainScreenViewController_preheatWithOptions___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_21FEE5000, a1, a3, "%s #activation #quickTypeGate prewarmForFirstTapOfQuickTypeToSiriGesture completed", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __68__SiriPresentationSpringBoardMainScreenViewController_cancelPreheat__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_21FEE5000, a1, a3, "%s #activation #quickTypeGate cancelPrewarmForFirstTapOfQuickTypeToSiriGesture completed", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)presentationRequestedWithPresentationOptions:(uint64_t)a3 requestOptions:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_21FEE5000, a1, a3, "%s #activation #quickTypeGate presentation requested for quick type gesture while NOT on lock screen -> skipping face detection and proceeding straight to activation", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end