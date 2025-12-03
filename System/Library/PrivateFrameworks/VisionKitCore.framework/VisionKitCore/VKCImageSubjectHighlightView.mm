@interface VKCImageSubjectHighlightView
+ (BOOL)visualLookUpYear3InvocationEnabled;
- ($58EB755F713D70195D081A2438463C76)videoPreviewTimeRange;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGPoint)dragInteractionStartLocation;
- (CGRect)subjectBoundsClippedToVisibleRectWithShouldInsetForCallout:(BOOL)callout;
- (CGRect)videoPreviewNormalizedCropRect;
- (UIImageView)currentLiftImageView;
- (UIView)dragPreviewContainer;
- (VKCImageSubjectHighlightView)initWithFrame:(CGRect)frame;
- (VKCImageSubjectHighlightViewDelegate)delegate;
- (VKCSubjectLiftView)currentLiftView;
- (id)animationWithDuration:(double)duration fromValue:(id)value toValue:(id)toValue key:(id)key;
- (id)createItemProvider;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)springAnimationWithFromValue:(id)value toValue:(id)toValue key:(id)key;
- (id)stringForHighlightState:(unint64_t)state;
- (id)targetedPreviewForCurrentSubject;
- (id)videoPreviewSubjectMatteAtCompositionTime:(id *)time;
- (id)videoPreviewSubjectMatteForImage:(id)image atCompositionTime:(id *)time;
- (void)_addSticker;
- (void)_addSticker:(id)sticker;
- (void)_configureGlowWithShowBurst:(BOOL)burst burstPoint:(CGPoint)point;
- (void)_define:(id)_define;
- (void)_dismissCard;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging;
- (void)_presentStickerPickerViewController;
- (void)_selectAllSubjects:(id)subjects;
- (void)_share;
- (void)_share:(id)_share;
- (void)_shareHeics:(id)heics;
- (void)_tempGenerateStickerFromLivePhotoIfNecessaryWithProgress:(id)progress;
- (void)addSticker;
- (void)beginImageSubjectAnalysisWithDelayIfNecessary;
- (void)buildMenuWithBuilder:(id)builder;
- (void)copy:(id)copy;
- (void)createStickerRepresentationsAtIndexSet:(id)set type:(unint64_t)type stickerIDs:(id)ds progress:(id)progress completion:(id)completion;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didTap:(id)tap;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)handleCancelForUndraggedLiftForInteraction:(id)interaction;
- (void)hideCalloutMenuIfNecessary;
- (void)hideCalloutMenuIfNecessaryWithClearSelectAll:(BOOL)all;
- (void)highlightSubjectAtIndexSet:(id)set showCallout:(BOOL)callout showBurst:(BOOL)burst burstPoint:(CGPoint)point animated:(BOOL)animated;
- (void)livePhotoCoyotePan:(id)pan;
- (void)livePhotoLongPress:(id)press;
- (void)menuControllerWillHide:(id)hide;
- (void)selectAndShowCalloutForTapToSelectModeAtPoint:(CGPoint)point;
- (void)setColorMaskImage:(CGImage *)image;
- (void)setGlowLayerActive:(BOOL)active;
- (void)setHidden:(BOOL)hidden;
- (void)setIsLivePhoto:(BOOL)photo;
- (void)setNormalizedVisibleRect:(CGRect)rect;
- (void)setRecognitionResult:(id)result;
- (void)setSubjectContext:(id)context;
- (void)setSubjectHighlightState:(unint64_t)state animated:(BOOL)animated;
- (void)setSubjectInteractionInProgress:(BOOL)progress;
- (void)setSubjectViewUserInteractionDisabled:(BOOL)disabled;
- (void)setTapToSelectModeEnabled:(BOOL)enabled;
- (void)showCalloutMenuAtLocation:(CGPoint)location checkDelegate:(BOOL)delegate showPulse:(BOOL)pulse;
- (void)showSharingPaneForURL:(id)l sourceRect:(CGRect)rect;
- (void)stickerPickerViewControllerDidLoad;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)traitStyleDidChange;
- (void)updateSubjectInteractionInProgressIfNecessary;
@end

@implementation VKCImageSubjectHighlightView

+ (BOOL)visualLookUpYear3InvocationEnabled
{
  if (visualLookUpYear3InvocationEnabled_onceToken != -1)
  {
    +[VKCImageSubjectHighlightView visualLookUpYear3InvocationEnabled];
  }

  return visualLookUpYear3InvocationEnabled_visualLookUpYear3InvocationEnabled;
}

uint64_t __66__VKCImageSubjectHighlightView_visualLookUpYear3InvocationEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  visualLookUpYear3InvocationEnabled_visualLookUpYear3InvocationEnabled = result;
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  CGImageRelease(self->_colorMaskImage);
  if (self->_traitChangeRegistration)
  {
    [(VKCImageSubjectHighlightView *)self unregisterForTraitChanges:?];
  }

  v4.receiver = self;
  v4.super_class = VKCImageSubjectHighlightView;
  [(VKCImageSubjectHighlightView *)&v4 dealloc];
}

- (VKCImageSubjectHighlightView)initWithFrame:(CGRect)frame
{
  v25[1] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VKCImageSubjectHighlightView;
  v3 = [(VKCImageSubjectBaseView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel_livePhotoLongPress_];
    livePhotoPlayGR = v3->_livePhotoPlayGR;
    v3->_livePhotoPlayGR = v4;

    [(UILongPressGestureRecognizer *)v3->_livePhotoPlayGR setMinimumPressDuration:0.325];
    [(UILongPressGestureRecognizer *)v3->_livePhotoPlayGR setEnabled:0];
    [(VKCImageSubjectHighlightView *)v3 addGestureRecognizer:v3->_livePhotoPlayGR];
    v6 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v3 action:sel_livePhotoCoyotePan_];
    coyotePanGR = v3->_coyotePanGR;
    v3->_coyotePanGR = v6;

    [(UIPanGestureRecognizer *)v3->_coyotePanGR setDelegate:v3];
    [(UIPanGestureRecognizer *)v3->_coyotePanGR setEnabled:0];
    [(UIPanGestureRecognizer *)v3->_coyotePanGR setDelaysTouchesBegan:0];
    [(UIPanGestureRecognizer *)v3->_coyotePanGR setDelaysTouchesEnded:0];
    [(VKCImageSubjectHighlightView *)v3 addGestureRecognizer:v3->_coyotePanGR];
    v8 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:v3];
    dragInteraction = v3->_dragInteraction;
    v3->_dragInteraction = v8;

    [(VKCImageSubjectHighlightView *)v3 addInteraction:v3->_dragInteraction];
    +[VKCInternalSettings subjectDragLiftDelay];
    [(UIDragInteraction *)v3->_dragInteraction _setLiftDelay:?];
    +[VKCInternalSettings subjectDragCancellationDelay];
    [(UIDragInteraction *)v3->_dragInteraction _setCancellationDelay:?];
    v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_didTap_];
    tapGR = v3->_tapGR;
    v3->_tapGR = v10;

    [(UITapGestureRecognizer *)v3->_tapGR setEnabled:0];
    [(VKCImageSubjectHighlightView *)v3 addGestureRecognizer:v3->_tapGR];
    v25[0] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v13 = [(VKCImageSubjectHighlightView *)v3 registerForTraitChanges:v12 withAction:sel_traitStyleDidChange];
    traitChangeRegistration = v3->_traitChangeRegistration;
    v3->_traitChangeRegistration = v13;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_menuControllerWillHide_ name:*MEMORY[0x1E69DE0E8] object:0];

    v16 = objc_alloc_init(MEMORY[0x1E6979398]);
    colorMaskLayer = v3->_colorMaskLayer;
    v3->_colorMaskLayer = v16;

    colorLayer = [(VKCImageSubjectBaseView *)v3 colorLayer];
    [colorLayer setInvertsMask:1];

    v19 = v3->_colorMaskLayer;
    colorLayer2 = [(VKCImageSubjectBaseView *)v3 colorLayer];
    [colorLayer2 setMask:v19];

    [(VKCImageSubjectHighlightView *)v3 setSubjectHighlightState:0];
    [(VKCImageSubjectHighlightView *)v3 setUserInteractionEnabled:1];
    v21 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    feedbackGenerator = v3->_feedbackGenerator;
    v3->_feedbackGenerator = v21;
  }

  return v3;
}

- (void)traitStyleDidChange
{
  traitCollection = [(VKCImageSubjectHighlightView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  stickerPickerViewController = [(VKCImageSubjectHighlightView *)self stickerPickerViewController];
  [stickerPickerViewController setOverrideUserInterfaceStyle:userInterfaceStyle];
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = VKCImageSubjectHighlightView;
  [(VKCImageSubjectBaseView *)&v4 setHidden:hidden];
  if ([(VKCImageSubjectHighlightView *)self isHidden])
  {
    [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessary];
  }

  [(VKCImageSubjectHighlightView *)self beginImageSubjectAnalysisWithDelayIfNecessary];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = VKCImageSubjectHighlightView;
  [(VKCImageSubjectHighlightView *)&v3 didMoveToWindow];
  [(VKCImageSubjectHighlightView *)self beginImageSubjectAnalysisWithDelayIfNecessary];
}

- (void)setRecognitionResult:(id)result
{
  resultCopy = result;
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];

  if (recognitionResult != resultCopy)
  {
    v10.receiver = self;
    v10.super_class = VKCImageSubjectHighlightView;
    [(VKCImageSubjectBaseView *)&v10 setRecognitionResult:resultCopy];
    v9 = 0;
    delegate = [(VKCImageSubjectHighlightView *)self delegate];
    -[VKCImageSubjectHighlightView setIsLivePhoto:](self, "setIsLivePhoto:", [delegate isSubjectHighlightShowingLivePhoto:self delegateHasImplementation:&v9]);

    [(VKCImageSubjectHighlightView *)self setAnalysisDelayTimerActive:0];
    [(VKCImageSubjectHighlightView *)self setCalloutStartTime:0];
    [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:0];
    WeakRetained = objc_loadWeakRetained(&self->_dragPreviewContainer);
    [WeakRetained setHidden:1];

    v8 = objc_loadWeakRetained(&self->_dragPreviewContainer);
    [v8 removeFromSuperview];

    objc_storeWeak(&self->_dragPreviewContainer, 0);
    [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessary];
    [(VKCImageSubjectHighlightView *)self beginImageSubjectAnalysisWithDelayIfNecessary];
  }
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = VKCImageSubjectHighlightView;
  [(VKCImageSubjectHighlightView *)&v18 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  contextSystem = [MEMORY[0x1E69DCC88] contextSystem];

  if (system == contextSystem)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    if (vk_deviceSupportsAddingSystemStickers())
    {
      v8 = MEMORY[0x1E69DC8B0];
      v9 = VKBundle();
      v10 = [v9 localizedStringForKey:@"VK_SUBJECT_LIFT_ADDSTICKER_MENU_TITLE" value:@"VK_SUBJECT_LIFT_ADDSTICKER_MENU_TITLE" table:@"Localizable"];
      v11 = [v8 commandWithTitle:v10 image:0 action:sel__addSticker_ propertyList:0 alternates:MEMORY[0x1E695E0F0]];

      [v7 addObject:v11];
      if ([(VKCImageSubjectHighlightView *)self isLivePhoto]&& vk_isInternalBuild() && +[VKCInternalSettings shareHeicsCalloutEnabled]&& !vk_isDeviceLocked())
      {
        v12 = [MEMORY[0x1E69DC8B0] commandWithTitle:@"shareHeics(internal)" image:0 action:sel__shareHeics_ propertyList:0 alternates:MEMORY[0x1E695E0F0]];
        [v7 addObject:v12];
      }
    }

    v13 = MEMORY[0x1E69DC8B0];
    v14 = VKBundle();
    v15 = [v14 localizedStringForKey:@"VK_SUBJECT_LIFT_SELECT_ALL_MENU_TITLE" value:@"VK_SUBJECT_LIFT_SELECT_ALL_MENU_TITLE" table:@"Localizable"];
    v16 = [v13 commandWithTitle:v15 image:0 action:sel__selectAllSubjects_ propertyList:0 alternates:MEMORY[0x1E695E0F0]];

    [v7 addObject:v16];
    v17 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2C04538 image:0 identifier:0 options:1 children:v7];
    [builderCopy insertSiblingMenu:v17 beforeMenuForIdentifier:*MEMORY[0x1E69DE1A0]];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  selfCopy = self;
  v6 = [(VKCImageSubjectBaseView *)self subjectContext:action];
  v7 = v6;
  if (sel_copy_ == action || sel__shareHeics_ == action)
  {
LABEL_6:
    LOBYTE(selfCopy) = 1;
    goto LABEL_7;
  }

  if (sel__share_ == action || sel__addSticker_ == action)
  {
    if (vk_isDeviceLocked())
    {
      LOBYTE(selfCopy) = vk_processHasUnlockEntitlement();
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (sel__selectAllSubjects_ == action)
  {
    LODWORD(selfCopy) = [v6 allSubjectsSelected] ^ 1;
  }

  else if (sel__define_ == action && +[VKCImageSubjectHighlightView visualLookUpYear3InvocationEnabled])
  {
    delegate = [(VKCImageSubjectHighlightView *)selfCopy delegate];
    normalizedSubjectPath = [(VKCImageSubjectBaseView *)selfCopy normalizedSubjectPath];
    LOBYTE(selfCopy) = [delegate subjectHighlightView:selfCopy containsVSItemForNormalizedPath:normalizedSubjectPath];
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

LABEL_7:

  return selfCopy;
}

- (void)setColorMaskImage:(CGImage *)image
{
  colorMaskImage = self->_colorMaskImage;
  if (colorMaskImage != image)
  {
    CGImageRelease(self->_colorMaskImage);
    self->_colorMaskImage = image;
    CGImageRetain(image);
    colorMaskImage = self->_colorMaskImage;
  }

  colorMaskLayer = [(VKCImageSubjectHighlightView *)self colorMaskLayer];
  [colorMaskLayer setContents:colorMaskImage];
}

- (void)setIsLivePhoto:(BOOL)photo
{
  photoCopy = photo;
  self->_isLivePhoto = photo;
  subjectViewUserInteractionDisabled = [(VKCImageSubjectHighlightView *)self subjectViewUserInteractionDisabled];
  dragInteraction = [(VKCImageSubjectHighlightView *)self dragInteraction];
  [dragInteraction _setCancellationTimerEnabled:photoCopy];

  LODWORD(dragInteraction) = !subjectViewUserInteractionDisabled;
  livePhotoPlayGR = [(VKCImageSubjectHighlightView *)self livePhotoPlayGR];
  [livePhotoPlayGR setEnabled:photoCopy & dragInteraction];

  coyotePanGR = [(VKCImageSubjectHighlightView *)self coyotePanGR];
  [coyotePanGR setEnabled:photoCopy & dragInteraction];
}

- (void)setNormalizedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17.receiver = self;
  v17.super_class = VKCImageSubjectHighlightView;
  [(VKCImageBaseOverlayView *)&v17 setNormalizedVisibleRect:?];
  [(VKCImageSubjectHighlightView *)self beginImageSubjectAnalysisWithDelayIfNecessary];
  HasArea = VKMRectHasArea(x, y, width, height);
  calloutStartTime = [(VKCImageSubjectHighlightView *)self calloutStartTime];
  if (!calloutStartTime || (v10 = calloutStartTime, [MEMORY[0x1E695DF00] now], v11 = objc_claimAutoreleasedReturnValue(), -[VKCImageSubjectHighlightView calloutStartTime](self, "calloutStartTime"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", v12), v14 = v13, v12, v11, v10, v14 > 0.8))
  {
    [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessary];
  }

  if (HasArea)
  {
    v15 = 1;
  }

  else
  {
    v15 = [(VKCImageSubjectHighlightView *)self subjectViewUserInteractionDisabled]^ 1;
  }

  dragInteraction = [(VKCImageSubjectHighlightView *)self dragInteraction];
  [dragInteraction setEnabled:v15];
}

- (void)updateSubjectInteractionInProgressIfNecessary
{
  subjectHighlightActive = [(VKCImageSubjectHighlightView *)self subjectHighlightActive];
  dragInteraction = [(VKCImageSubjectHighlightView *)self dragInteraction];
  v5 = subjectHighlightActive | [dragInteraction _isActive];

  if ([(VKCImageSubjectHighlightView *)self subjectHighlightState])
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  [(VKCImageSubjectHighlightView *)self setSubjectInteractionInProgress:v6];
}

- (void)setSubjectInteractionInProgress:(BOOL)progress
{
  if (self->_subjectInteractionInProgress != progress)
  {
    self->_subjectInteractionInProgress = progress;
    delegate = [(VKCImageSubjectHighlightView *)self delegate];
    [delegate subjectHighlightViewSubjectInteractionInProgressDidChange:self];
  }
}

- (void)beginImageSubjectAnalysisWithDelayIfNecessary
{
  v27 = *MEMORY[0x1E69E9840];
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  v4 = recognitionResult == 0;

  window = [(VKCImageSubjectHighlightView *)self window];

  subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];

  loadMaskRequestStatus = [(VKCImageSubjectBaseView *)self loadMaskRequestStatus];
  analysisDelayTimerActive = [(VKCImageSubjectHighlightView *)self analysisDelayTimerActive];
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  HasArea = VKMRectHasArea(v9, v10, v11, v12);
  isHidden = [(VKCImageSubjectHighlightView *)self isHidden];
  if (window)
  {
    v15 = v4;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0 && (isHidden & 1) == 0 && !subjectContext && !loadMaskRequestStatus && !analysisDelayTimerActive && HasArea && (vk_isSeedBuild() & 1) == 0)
  {
    [(VKCImageSubjectHighlightView *)self setAnalysisDelayTimerActive:1];
    analysisResult = [(VKCImageSubjectBaseView *)self analysisResult];
    objc_initWeak(&location, self);
    v17 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1B4335000, v17, OS_LOG_TYPE_DEFAULT, "Beginning subject analyze delay: %@", buf, 0xCu);
    }

    +[VKCInternalSettings subjectAutomaticAnalysisDelay];
    v19 = v18;
    if ([(VKCImageBaseOverlayView *)self isVIHosted])
    {
      v19 = v19 + v19;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__VKCImageSubjectHighlightView_beginImageSubjectAnalysisWithDelayIfNecessary__block_invoke;
    v21[3] = &unk_1E7BE5218;
    v21[4] = self;
    objc_copyWeak(&v23, &location);
    v20 = analysisResult;
    v22 = v20;
    vk_dispatchMainAfterDelay(v21, v19);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void __77__VKCImageSubjectHighlightView_beginImageSubjectAnalysisWithDelayIfNecessary__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Subject analyze delay complete: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained analysisResult];
  v6 = *(a1 + 40);

  if (v5 == v6)
  {
    [WeakRetained setAnalysisDelayTimerActive:0];
    if (![WeakRetained loadMaskRequestStatus])
    {
      [WeakRetained loadSubjectMaskIfNecessary];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Subject analysis cancelled because the analysis was changed from: %@, %@", &v10, 0x16u);
    }
  }
}

- (void)setSubjectContext:(id)context
{
  v9.receiver = self;
  v9.super_class = VKCImageSubjectHighlightView;
  [(VKCImageSubjectBaseView *)&v9 setSubjectContext:?];
  +[VKCInternalSettings subjectDragLiftDelay];
  v6 = 0.55;
  if (context)
  {
    v6 = 0.0;
  }

  v7 = v6 + v5;
  dragInteraction = [(VKCImageSubjectHighlightView *)self dragInteraction];
  [dragInteraction _setLiftDelay:v7];

  [(VKCImageSubjectHighlightView *)self setLivePhotoStartTime:0];
  if ([(VKCImageSubjectHighlightView *)self tapToSelectModeEnabled])
  {
    [(VKCImageSubjectHighlightView *)self setTapToSelectModeEnabled:0];
    [(VKCImageSubjectHighlightView *)self setTapToSelectModeEnabled:1];
  }
}

- (id)stringForHighlightState:(unint64_t)state
{
  stateCopy = state;
  if (state)
  {
    v4 = [&stru_1F2C04538 stringByAppendingString:{@"container, "}];
    if ((stateCopy & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = &stru_1F2C04538;
  if ((state & 4) != 0)
  {
LABEL_5:
    v5 = [(__CFString *)v4 stringByAppendingString:@"image, "];

    v4 = v5;
  }

LABEL_6:
  if ((stateCopy & 2) == 0)
  {
    if ((stateCopy & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = [(__CFString *)v4 stringByAppendingString:@"color, "];

  v4 = v8;
  if ((stateCopy & 8) != 0)
  {
LABEL_8:
    v6 = [(__CFString *)v4 stringByAppendingString:@"colorMask, "];

    v4 = v6;
  }

LABEL_9:

  return v4;
}

- (void)setSubjectHighlightState:(unint64_t)state animated:(BOOL)animated
{
  if (self->_subjectHighlightState != state)
  {
    animatedCopy = animated;
    stateCopy = state;
    self->_subjectHighlightState = state;
    [(VKCImageSubjectHighlightView *)self updateSubjectInteractionInProgressIfNecessary];
    inhibitDimmingAndLiftView = [(VKCImageSubjectBaseView *)self inhibitDimmingAndLiftView];
    colorLayer = [(VKCImageSubjectBaseView *)self colorLayer];
    colorMaskLayer = [(VKCImageSubjectHighlightView *)self colorMaskLayer];
    imageHighlightLayer = [(VKCImageSubjectBaseView *)self imageHighlightLayer];
    imageHighlightLayerContainer = [(VKCImageSubjectBaseView *)self imageHighlightLayerContainer];
    [colorLayer opacity];
    v13 = v12;
    [imageHighlightLayer opacity];
    v15 = v14;
    [imageHighlightLayerContainer opacity];
    v17 = v16;
    if ((stateCopy & 2) == 0 || inhibitDimmingAndLiftView)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0;
    }

    if ((stateCopy & 4) == 0 || inhibitDimmingAndLiftView)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 1.0;
    }

    if ((stateCopy & 1) == 0 || inhibitDimmingAndLiftView)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 1.0;
    }

    [colorLayer removeAllAnimations];
    [imageHighlightLayer removeAllAnimations];
    [imageHighlightLayerContainer removeAllAnimations];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    *&v21 = v18;
    [colorLayer setOpacity:v21];
    *&v22 = v19;
    [imageHighlightLayer setOpacity:v22];
    *&v23 = v20;
    [imageHighlightLayerContainer setOpacity:v23];
    v24 = 0;
    if ((stateCopy & 8) == 0 || inhibitDimmingAndLiftView || ([colorLayer mask], v25 = objc_claimAutoreleasedReturnValue(), v25, v24 = colorMaskLayer, v25 != colorMaskLayer))
    {
      [colorLayer setMask:v24];
    }

    if (animatedCopy)
    {
      v26 = [MEMORY[0x1E696AD98] numberWithDouble:{v24, v13}];
      v27 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      v28 = [(VKCImageSubjectHighlightView *)self animationWithDuration:v26 fromValue:v27 toValue:@"opacity" key:0.25];
      [colorLayer addAnimation:v28 forKey:0];

      v29 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
      v31 = [(VKCImageSubjectHighlightView *)self animationWithDuration:v29 fromValue:v30 toValue:@"opacity" key:0.25];
      [imageHighlightLayer addAnimation:v31 forKey:0];

      v32 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
      v33 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
      v34 = [(VKCImageSubjectHighlightView *)self animationWithDuration:v32 fromValue:v33 toValue:@"opacity" key:0.25];
      [imageHighlightLayerContainer addAnimation:v34 forKey:0];
    }

    [MEMORY[0x1E6979518] commit];
  }
}

- (id)animationWithDuration:(double)duration fromValue:(id)value toValue:(id)toValue key:(id)key
{
  v9 = MEMORY[0x1E6979318];
  toValueCopy = toValue;
  valueCopy = value;
  v12 = [v9 animationWithKeyPath:key];
  [v12 setToValue:toValueCopy];

  [v12 setFromValue:valueCopy];
  [v12 setDuration:duration];
  [v12 setFillMode:*MEMORY[0x1E69797E8]];

  return v12;
}

- (id)springAnimationWithFromValue:(id)value toValue:(id)toValue key:(id)key
{
  v7 = MEMORY[0x1E69794A8];
  toValueCopy = toValue;
  valueCopy = value;
  v10 = [v7 animationWithKeyPath:key];
  [v10 setToValue:toValueCopy];

  [v10 setFromValue:valueCopy];
  [v10 setFillMode:*MEMORY[0x1E69797E8]];
  [v10 setStiffness:195.0];
  [v10 setDamping:19.75];
  [v10 settlingDuration];
  [v10 setDuration:?];

  return v10;
}

- (UIView)dragPreviewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_dragPreviewContainer);

  if (!WeakRetained)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(VKCImageSubjectHighlightView *)self bounds];
    v5 = [v4 initWithFrame:?];
    [(VKCImageSubjectHighlightView *)self addSubview:v5];
    [v5 setAutoresizingMask:18];
    objc_storeWeak(&self->_dragPreviewContainer, v5);
  }

  v6 = objc_loadWeakRetained(&self->_dragPreviewContainer);

  return v6;
}

- (id)targetedPreviewForCurrentSubject
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v3 setContentScaleFactor:0.0];
  customImageForRemoveBackground = [(VKCImageSubjectBaseView *)self customImageForRemoveBackground];

  if (customImageForRemoveBackground)
  {
    customImageForRemoveBackground2 = [(VKCImageSubjectBaseView *)self customImageForRemoveBackground];
    [v3 setImage:customImageForRemoveBackground2];
  }

  else
  {
    subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];

    if (!subjectContext)
    {
      goto LABEL_6;
    }

    v7 = MEMORY[0x1E69DCAB8];
    subjectContext2 = [(VKCImageSubjectBaseView *)self subjectContext];
    request = [subjectContext2 request];
    v10 = [v7 imageWithCGImage:{objc_msgSend(request, "CGImage")}];
    [v3 setImage:v10];

    customImageForRemoveBackground2 = [(VKCImageSubjectBaseView *)self subjectContext];
    vk_transformToImageOrientation([customImageForRemoveBackground2 imageOrientation], v63);
    v62[0] = v63[0];
    v62[1] = v63[1];
    v62[2] = v63[2];
    [v3 setTransform:v62];
  }

LABEL_6:
  [(VKCImageSubjectBaseView *)self imageBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v3 setFrame:?];
  v19 = [[VKCSubjectLiftView alloc] initWithFrame:v12, v14, v16, v18];
  v20 = objc_alloc(MEMORY[0x1E69DD250]);
  [(VKCSubjectLiftView *)v19 bounds];
  v21 = [v20 initWithFrame:?];
  [(VKCSubjectLiftView *)v19 bounds];
  [v3 setFrame:?];
  [(VKCSubjectLiftView *)v19 addSubview:v21];
  [v21 addSubview:v3];
  [(UIView *)self vk_viewPointRatioFromWindow];
  v23 = v22;
  v24 = v22 * 20.0;
  v25 = VKMMultiplyPointScalar(0.0, 0.0, v22);
  v27 = v26;
  v28 = v23 * 3.0;
  v29 = VKMMultiplyPointScalar(0.0, 1.0, v23);
  v31 = v30;
  layer = [(VKCSubjectLiftView *)v19 layer];
  layer2 = [v21 layer];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  [layer setShadowRadius:v28];
  [layer setShadowOpacity:0.0];
  [layer setShadowOffset:{v29, v31}];
  [layer setAllowsGroupBlending:1];
  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [layer2 setShadowColor:{objc_msgSend(blackColor2, "CGColor")}];

  [layer2 setShadowRadius:v24];
  [layer2 setShadowOpacity:0.0];
  [layer2 setShadowOffset:{v25, v27}];
  [layer2 setAllowsGroupBlending:1];
  [(VKCSubjectLiftView *)v19 setDiffuseShadowLayer:layer2];
  [(VKCSubjectLiftView *)v19 setRimShadowLayer:layer];
  if (v24 + v25 >= v28 + v29)
  {
    v36 = v24 + v25;
  }

  else
  {
    v36 = v28 + v29;
  }

  subjectPathInBoundsCoordinates = [(VKCImageSubjectBaseView *)self subjectPathInBoundsCoordinates];
  [subjectPathInBoundsCoordinates bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v65.origin.x = v39;
  v65.origin.y = v41;
  v65.size.width = v43;
  v65.size.height = v45;
  v66 = CGRectInset(v65, -v36, -v36);
  x = v66.origin.x;
  y = v66.origin.y;
  width = v66.size.width;
  height = v66.size.height;
  v50 = objc_alloc_init(MEMORY[0x1E6979398]);
  [(VKCImageSubjectBaseView *)self configureMaskForCurrentSubjectContextWithLayer:v50 animated:0];
  layer3 = [v3 layer];
  [layer3 setMask:v50];

  [(VKCImageSubjectHighlightView *)self setCurrentLiftView:v19];
  [(VKCImageSubjectHighlightView *)self setCurrentLiftImageView:v3];
  v52 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v53 = [MEMORY[0x1E69DC728] bezierPathWithRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v52 setShadowPath:v53];

  v54 = [MEMORY[0x1E69DC728] bezierPathWithRect:{VKMSubtractPoints(x, y, v12)}];
  [v52 setVisiblePath:v54];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v52 setBackgroundColor:clearColor];

  v56 = objc_alloc(MEMORY[0x1E69DD068]);
  v57 = objc_alloc(MEMORY[0x1E69DCE38]);
  dragPreviewContainer = [(VKCImageSubjectHighlightView *)self dragPreviewContainer];
  v59 = [v57 initWithContainer:dragPreviewContainer center:{VKMCenterOfRect(x, y, width, height)}];
  v60 = [v56 initWithView:v19 parameters:v52 target:v59];

  return v60;
}

- (void)setTapToSelectModeEnabled:(BOOL)enabled
{
  self->_tapToSelectModeEnabled = enabled;
  if (enabled)
  {
    subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];
    subjectCount = [subjectContext subjectCount];

    if (subjectCount)
    {
      tapGR = [(VKCImageSubjectHighlightView *)self tapGR];
      [tapGR setEnabled:1];

      indexSet = [MEMORY[0x1E696AC90] indexSet];
      [(VKCImageSubjectHighlightView *)self highlightSubjectAtIndexSet:indexSet showCallout:0 showBurst:0 burstPoint:1 animated:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }
  }

  else
  {
    [(VKCImageSubjectHighlightView *)self highlightSubjectAtIndexSet:0 showCallout:0 showBurst:0 burstPoint:1 animated:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessary];
  }
}

- (void)setSubjectViewUserInteractionDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  self->_subjectViewUserInteractionDisabled = disabled;
  if (disabled)
  {
    tapGR = [(VKCImageSubjectHighlightView *)self tapGR];
    [tapGR setEnabled:0];
  }

  dragInteraction = [(VKCImageSubjectHighlightView *)self dragInteraction];
  [dragInteraction setEnabled:!disabledCopy];
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  [session locationInView:{self, item}];
  v6 = [MEMORY[0x1E696B098] vk_valueWithPoint:?];
  [(VKCImageSubjectBaseView *)self setBurstPoint:v6];

  return [(VKCImageSubjectHighlightView *)self targetedPreviewForCurrentSubject];
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  defaultCopy = default;
  window = [(VKCImageSubjectHighlightView *)self window];
  if (!window || [(VKCImageSubjectHighlightView *)self isHidden])
  {

LABEL_4:
    [(VKCImageSubjectHighlightView *)self setShouldShowCalloutOnDragCancel:0];
    v8 = 0;
    goto LABEL_5;
  }

  analysisRequestIDAtSubjectLift = [(VKCImageSubjectHighlightView *)self analysisRequestIDAtSubjectLift];
  analysisResult = [(VKCImageSubjectBaseView *)self analysisResult];
  analysisRequestID = [analysisResult analysisRequestID];

  if (analysisRequestIDAtSubjectLift != analysisRequestID)
  {
    goto LABEL_4;
  }

  subjectPathInBoundsCoordinates = [(VKCImageSubjectBaseView *)self subjectPathInBoundsCoordinates];
  v14 = objc_alloc(MEMORY[0x1E69DC9A8]);
  dragPreviewContainer = [(VKCImageSubjectHighlightView *)self dragPreviewContainer];
  [subjectPathInBoundsCoordinates bounds];
  v20 = [v14 initWithContainer:dragPreviewContainer center:{VKMCenterOfRect(v16, v17, v18, v19)}];
  v8 = [defaultCopy retargetedPreviewWithTarget:v20];

LABEL_5:

  return v8;
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging
{
  draggingCopy = dragging;
  if (![(VKCImageSubjectHighlightView *)self isLiftingEmptyItemArray])
  {
    [(VKCImageSubjectHighlightView *)self handleCancelForUndraggedLiftForInteraction:draggingCopy];
  }
}

- (void)handleCancelForUndraggedLiftForInteraction:(id)interaction
{
  interactionCopy = interaction;
  currentLiftView = [(VKCImageSubjectHighlightView *)self currentLiftView];
  v6 = MEMORY[0x1E69DD250];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __75__VKCImageSubjectHighlightView_handleCancelForUndraggedLiftForInteraction___block_invoke;
  v56[3] = &unk_1E7BE4208;
  v7 = currentLiftView;
  v57 = v7;
  [v6 performWithoutAnimation:v56];
  v8 = CACurrentMediaTime();
  [(VKCImageSubjectHighlightView *)self dragInteractionStartTime];
  v10 = v9;
  [interactionCopy _cancellationDelay];
  v12 = v11;
  LODWORD(v6) = [interactionCopy _isCancellationTimerEnabled];

  if (v6 && (v13 = v12 + -0.01, v14 = v8 - v10, v8 - v10 >= v12 + -0.01) && ![(VKCImageSubjectHighlightView *)self glowLayerWasActiveOnLift:v13])
  {
    [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:0 animated:0];
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    [mEMORY[0x1E69DCC68] hideMenu];
  }

  else
  {
    [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:[(VKCImageSubjectHighlightView *)self subjectHighlightState:v13]| 5 animated:0];
    [(VKCImageSubjectHighlightView *)self dragInteractionStartLocation];
    [(VKCImageSubjectHighlightView *)self showCalloutMenuAtLocation:1 checkDelegate:[(VKCImageSubjectHighlightView *)self isLivePhoto] showPulse:v15, v16];
    mEMORY[0x1E69DCC68] = [(VKCImageSubjectBaseView *)self pulseLayer];
    imageHighlightLayerContainer = [(VKCImageSubjectBaseView *)self imageHighlightLayerContainer];
    imageHighlightLayerContainerShadow = [(VKCImageSubjectBaseView *)self imageHighlightLayerContainerShadow];
    rimShadowLayer = [v7 rimShadowLayer];
    v53 = v7;
    diffuseShadowLayer = [v7 diffuseShadowLayer];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [mEMORY[0x1E69DCC68] timeOffset];
    v23 = v22;
    [mEMORY[0x1E69DCC68] beginTime];
    v25 = v24;
    superlayer = [mEMORY[0x1E69DCC68] superlayer];
    imageHighlightLayer = [(VKCImageSubjectBaseView *)self imageHighlightLayer];

    if (superlayer != imageHighlightLayer)
    {
      superlayer2 = [mEMORY[0x1E69DCC68] superlayer];
      [mEMORY[0x1E69DCC68] position];
      v30 = v29;
      v32 = v31;
      imageHighlightLayer2 = [(VKCImageSubjectBaseView *)self imageHighlightLayer];
      [superlayer2 convertPoint:imageHighlightLayer2 toLayer:{v30, v32}];
      [mEMORY[0x1E69DCC68] setPosition:?];

      imageHighlightLayer3 = [(VKCImageSubjectBaseView *)self imageHighlightLayer];
      [imageHighlightLayer3 addSublayer:mEMORY[0x1E69DCC68]];
    }

    [mEMORY[0x1E69DCC68] setTimeOffset:v23];
    [mEMORY[0x1E69DCC68] setBeginTime:v25];
    [imageHighlightLayerContainer setShadowColor:{objc_msgSend(rimShadowLayer, "shadowColor")}];
    [imageHighlightLayerContainer setShadowRadius:0.0];
    [rimShadowLayer shadowOffset];
    [imageHighlightLayerContainer setShadowOffset:?];
    [rimShadowLayer shadowOpacity];
    [imageHighlightLayerContainer setShadowOpacity:?];
    [imageHighlightLayerContainerShadow setShadowColor:{objc_msgSend(diffuseShadowLayer, "shadowColor")}];
    [imageHighlightLayerContainerShadow setShadowRadius:0.0];
    [diffuseShadowLayer shadowOffset];
    [imageHighlightLayerContainerShadow setShadowOffset:?];
    [diffuseShadowLayer shadowOpacity];
    [imageHighlightLayerContainerShadow setShadowOpacity:?];
    memset(&v55, 0, sizeof(v55));
    CATransform3DMakeScale(&v55, 1.02, 1.02, 1.0);
    v51 = *(MEMORY[0x1E69792E8] + 80);
    *&v54.m31 = *(MEMORY[0x1E69792E8] + 64);
    v52 = *&v54.m31;
    *&v54.m33 = v51;
    v49 = *(MEMORY[0x1E69792E8] + 112);
    *&v54.m41 = *(MEMORY[0x1E69792E8] + 96);
    v50 = *&v54.m41;
    *&v54.m43 = v49;
    v47 = *(MEMORY[0x1E69792E8] + 16);
    *&v54.m11 = *MEMORY[0x1E69792E8];
    v48 = *&v54.m11;
    *&v54.m13 = v47;
    v45 = *(MEMORY[0x1E69792E8] + 48);
    *&v54.m21 = *(MEMORY[0x1E69792E8] + 32);
    v46 = *&v54.m21;
    *&v54.m23 = v45;
    [imageHighlightLayerContainer setTransform:&v54];
    v54 = v55;
    v35 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v54];
    *&v54.m31 = v52;
    *&v54.m33 = v51;
    *&v54.m41 = v50;
    *&v54.m43 = v49;
    *&v54.m11 = v48;
    *&v54.m13 = v47;
    *&v54.m21 = v46;
    *&v54.m23 = v45;
    v36 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v54];
    v37 = [(VKCImageSubjectHighlightView *)self springAnimationWithFromValue:v35 toValue:v36 key:@"transform"];

    v38 = MEMORY[0x1E696AD98];
    [rimShadowLayer shadowRadius];
    v39 = [v38 numberWithDouble:?];
    v40 = [(VKCImageSubjectHighlightView *)self springAnimationWithFromValue:v39 toValue:&unk_1F2C38E60 key:@"shadowRadius"];

    v41 = MEMORY[0x1E696AD98];
    v42 = diffuseShadowLayer;
    [diffuseShadowLayer shadowRadius];
    v43 = [v41 numberWithDouble:?];
    v44 = [(VKCImageSubjectHighlightView *)self springAnimationWithFromValue:v43 toValue:&unk_1F2C38E60 key:@"shadowRadius"];

    [imageHighlightLayerContainer addAnimation:v37 forKey:0];
    [imageHighlightLayerContainer addAnimation:v40 forKey:0];
    [imageHighlightLayerContainerShadow addAnimation:v44 forKey:0];
    [MEMORY[0x1E6979518] commit];

    v7 = v53;
  }
}

- (void)setGlowLayerActive:(BOOL)active
{
  activeCopy = active;
  v8.receiver = self;
  v8.super_class = VKCImageSubjectHighlightView;
  [(VKCImageSubjectBaseView *)&v8 setGlowLayerActive:?];
  isLivePhoto = [(VKCImageSubjectHighlightView *)self isLivePhoto];
  v6 = !activeCopy;
  dragInteraction = [(VKCImageSubjectHighlightView *)self dragInteraction];
  [dragInteraction _setCancellationTimerEnabled:isLivePhoto & v6];

  [(VKCImageSubjectHighlightView *)self updateSubjectInteractionInProgressIfNecessary];
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  animatorCopy = animator;
  feedbackGenerator = [(VKCImageSubjectHighlightView *)self feedbackGenerator];
  [feedbackGenerator selectionChanged];

  [(VKCImageSubjectHighlightView *)self setGlowLayerWasActiveOnLift:[(VKCImageSubjectBaseView *)self glowLayerActive]];
  [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessaryWithClearSelectAll:0];
  [(VKCImageSubjectHighlightView *)self setGlowLayerActive:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__VKCImageSubjectHighlightView_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v8[3] = &unk_1E7BE4208;
  v8[4] = self;
  [animatorCopy addAnimations:v8];
}

void __84__VKCImageSubjectHighlightView_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isLivePhoto] & 1) == 0)
  {
    [*(a1 + 32) vk_viewPointRatioFromWindow];
    v3 = v2;
    [*(a1 + 32) configurePulseAnimationWithViewScale:?];
    v4 = [*(a1 + 32) currentLiftImageView];
    v5 = [v4 layer];
    v6 = [*(a1 + 32) pulseLayer];
    [v5 addSublayer:v6];

    [*(a1 + 32) showPulseAnimationWithViewScale:v3];
  }

  v7 = [*(a1 + 32) currentLiftView];
  [v7 setShadowsVisible:1];
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  [session locationInView:self];
  v7 = v6;
  v9 = v8;
  [(VKCImageSubjectHighlightView *)self bounds];
  v12.x = v7;
  v12.y = v9;
  v10 = CGRectContainsPoint(v13, v12);

  [(VKCImageSubjectHighlightView *)self setShouldShowCalloutOnDragCancel:v10];
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__VKCImageSubjectHighlightView_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
  v5[3] = &unk_1E7BE5240;
  v5[4] = self;
  [animator addCompletion:{v5, item}];
}

uint64_t __83__VKCImageSubjectHighlightView_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSubjectHighlightState:objc_msgSend(*(a1 + 32) animated:{"subjectHighlightState") | 0xD, 0}];
  result = [*(a1 + 32) shouldShowCalloutOnDragCancel];
  if (result)
  {
    v3 = *(a1 + 32);
    [v3 dragInteractionStartLocation];

    return [v3 showCalloutMenuAtLocation:1 checkDelegate:0 showPulse:?];
  }

  return result;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v71 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];

  if (!subjectContext)
  {
    [(VKCImageSubjectBaseView *)self loadSubjectMaskIfNecessary];
LABEL_7:
    v14 = 0;
    v15 = 1;
    goto LABEL_23;
  }

  if ([(VKCImageSubjectHighlightView *)self isLivePhoto]&& ![(VKCImageSubjectHighlightView *)self subjectAnalysisCompleteWhenTouchesBegan])
  {
    goto LABEL_7;
  }

  analysisResult = [(VKCImageSubjectBaseView *)self analysisResult];
  -[VKCImageSubjectHighlightView setAnalysisRequestIDAtSubjectLift:](self, "setAnalysisRequestIDAtSubjectLift:", [analysisResult analysisRequestID]);

  [(VKCImageSubjectHighlightView *)self setDragInteractionStartTime:CACurrentMediaTime()];
  [sessionCopy locationInView:self];
  [(VKCImageSubjectHighlightView *)self setDragInteractionStartLocation:?];
  [sessionCopy locationInView:self];
  v9 = v8;
  v11 = v10;
  subjectContext2 = [(VKCImageSubjectBaseView *)self subjectContext];
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:v9, v11];
  v13 = [subjectContext2 indexOfSubjectAtNormalizedPoint:?];

  if (v13)
  {
    [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v13, "unsignedIntValue")}];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v16 = ;
  if (![(VKCImageSubjectHighlightView *)self isSelectAllActive])
  {
    [(VKCImageSubjectBaseView *)self setActiveSubjectIndexSet:v16];
  }

  v17 = [(VKCImageSubjectBaseView *)self subjectExistsAtPoint:v9, v11];
  [(VKCImageSubjectHighlightView *)self bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  VKMRectFromNormalizedSubrect(v19, v21, v23, v25, v26, v27, v28, v29);
  v31 = v30;
  v33 = v32;
  subjectPathInBoundsCoordinates = [(VKCImageSubjectBaseView *)self subjectPathInBoundsCoordinates];
  [subjectPathInBoundsCoordinates bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = VKMCenterOfRect(v36, v38, v40, v42);
  v45 = v44;
  v46 = VKMMultiplyPointScalar(v40, v42, 0.72);
  v47 = VKMRectWithCenterAndSize(v43, v45, v46);
  if (v31 < v49 || v33 < v48)
  {
    v54 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1B4335000, v54, OS_LOG_TYPE_DEFAULT, "Subject image is zoomed in and no longer fits the view properly to lift: %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  [(UIView *)self vk_windowPointRatioFromView];
  v52 = VKMMultiplyPointScalar(v40, v42, v50);
  if (v52 < 64.0)
  {
    v53 = v51;
    if (v51 < 64.0)
    {
      v54 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = VKMUIStringForSize(v52, v53);
        *buf = 138412802;
        selfCopy = v55;
        v67 = 2048;
        v68 = 0x4050000000000000;
        v69 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_1B4335000, v54, OS_LOG_TYPE_DEFAULT, "Subject image is too small. Image in window coordinates: %@,  Max edge length %f: %@", buf, 0x20u);
      }

LABEL_20:
      v14 = 0;
      goto LABEL_21;
    }
  }

  if (!v17 || (-[VKCImageSubjectHighlightView delegate](self, "delegate"), v59 = objc_claimAutoreleasedReturnValue(), v60 = [v59 subjectHighlightView:self shouldBeginInteractionAtPoint:0 withType:{v9, v11}], v59, !v60))
  {
    v14 = 0;
    goto LABEL_22;
  }

  delegate = [(VKCImageSubjectHighlightView *)self delegate];
  [delegate subjectHighlightView:self willBeginInteractionAtPoint:1 withType:{v9, v11}];

  v62 = objc_alloc(MEMORY[0x1E69DC990]);
  createItemProvider = [(VKCImageSubjectHighlightView *)self createItemProvider];
  v54 = [v62 initWithItemProvider:createItemProvider];

  v64 = v54;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
LABEL_21:

LABEL_22:
  v15 = [v14 count] == 0;

LABEL_23:
  [(VKCImageSubjectHighlightView *)self setIsLiftingEmptyItemArray:v15];
  if (v14)
  {
    v56 = v14;
  }

  else
  {
    v56 = MEMORY[0x1E695E0F0];
  }

  v57 = v56;

  return v56;
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  [(VKCImageSubjectHighlightView *)self setShouldShowCalloutOnDragCancel:0, begin];
  [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:3];
  mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
  isMenuVisible = [mEMORY[0x1E69DCC68] isMenuVisible];

  if (isMenuVisible)
  {
    mEMORY[0x1E69DCC68]2 = [MEMORY[0x1E69DCC68] sharedMenuController];
    [mEMORY[0x1E69DCC68]2 hideMenuFromView:self];
  }
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  if (![(VKCImageSubjectHighlightView *)self shouldShowCalloutOnDragCancel:interaction])
  {
    [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:0];
    [(VKCImageSubjectHighlightView *)self setIsSelectAllActive:0];
  }

  if (operation == 2)
  {

    [(VKCImageSubjectBaseView *)self sendSubjectAnalyticsEventWithEventType:2 interactionType:3 subjectFound:1 processingDuration:0.0];
  }
}

- (void)livePhotoCoyotePan:(id)pan
{
  panCopy = pan;
  if ([panCopy state] != 4 && !-[VKCImageSubjectHighlightView subjectViewUserInteractionDisabled](self, "subjectViewUserInteractionDisabled"))
  {
    [panCopy translationInView:self];
    v6 = VKMDistance(v4, v5, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
    [(UIView *)self vk_viewPointRatioFromWindow];
    v8 = v7;
    livePhotoStartTime = [(VKCImageSubjectHighlightView *)self livePhotoStartTime];

    if (livePhotoStartTime)
    {
      if (v6 * v8 > 20.0)
      {
        v10 = [panCopy _activeEventOfType:{0, v6 * v8}];
        allTouches = [v10 allTouches];
        anyObject = [allTouches anyObject];

        if (anyObject)
        {
          dragInteraction = [(VKCImageSubjectHighlightView *)self dragInteraction];
          _isActive = [dragInteraction _isActive];

          if ((_isActive & 1) == 0)
          {
            dragInteraction2 = [(VKCImageSubjectHighlightView *)self dragInteraction];
            [dragInteraction2 setEnabled:1];

            [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessary];
            [(VKCImageSubjectHighlightView *)self setGlowLayerActive:0];
            dragInteraction3 = [(VKCImageSubjectHighlightView *)self dragInteraction];
            [dragInteraction3 _immediatelyBeginDragWithTouch:anyObject completion:&__block_literal_global_286];
          }
        }
      }
    }
  }
}

- (void)livePhotoLongPress:(id)press
{
  pressCopy = press;
  state = [pressCopy state];
  [pressCopy locationInView:self];
  v7 = v6;
  v9 = v8;

  if (![(VKCImageSubjectBaseView *)self subjectExistsAtPoint:v7, v9]&& [(VKCImageSubjectHighlightView *)self subjectAnalysisCompleteWhenTouchesBegan]&& ([(VKCImageSubjectBaseView *)self subjectContext], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if (state == 1)
  {
    [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:0];
    delegate = [(VKCImageSubjectHighlightView *)self delegate];
    [delegate subjectHighlightView:self livePhotoShouldPlay:1];

    livePhotoStartTime = [MEMORY[0x1E695DF00] now];
    [(VKCImageSubjectHighlightView *)self setLivePhotoStartTime:livePhotoStartTime];
LABEL_7:
    v12 = livePhotoStartTime;
    goto LABEL_8;
  }

  if ((state - 3) > 1)
  {
    return;
  }

  delegate2 = [(VKCImageSubjectHighlightView *)self delegate];
  [delegate2 subjectHighlightView:self livePhotoShouldPlay:0];

  livePhotoStartTime = [(VKCImageSubjectHighlightView *)self livePhotoStartTime];
  [(VKCImageSubjectHighlightView *)self setLivePhotoStartTime:0];
  v12 = livePhotoStartTime;
  if (livePhotoStartTime)
  {
    subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];

    if (subjectContext)
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:livePhotoStartTime];
      v17 = v16;

      if (v17 < 0.8)
      {
        imageHighlightLayer = [(VKCImageSubjectBaseView *)self imageHighlightLayer];
        pulseLayer = [(VKCImageSubjectBaseView *)self pulseLayer];
        superlayer = [pulseLayer superlayer];

        if (superlayer != imageHighlightLayer)
        {
          superlayer2 = [pulseLayer superlayer];
          [pulseLayer position];
          v23 = v22;
          v25 = v24;
          superlayer3 = [imageHighlightLayer superlayer];
          [superlayer2 convertPoint:superlayer3 toLayer:{v23, v25}];
          [pulseLayer setPosition:?];

          [imageHighlightLayer addSublayer:pulseLayer];
        }

        v27 = [(VKCImageSubjectBaseView *)self indexOfSubjectAtPoint:v7, v9];
        v28 = v27;
        if (v27)
        {
          [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v27, "integerValue")}];
        }

        else
        {
          [MEMORY[0x1E696AC90] indexSet];
        }
        v29 = ;
        subjectContext2 = [(VKCImageSubjectBaseView *)self subjectContext];
        [subjectContext2 setActiveSubjectIndexes:v29];

        [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:7 animated:1];
        [(VKCImageSubjectHighlightView *)self showCalloutMenuAtLocation:1 checkDelegate:1 showPulse:v7, v9];
      }
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = VKCImageSubjectHighlightView;
  [(VKCImageSubjectHighlightView *)&v6 touchesBegan:began withEvent:event];
  if ([(VKCImageSubjectBaseView *)self glowLayerActive])
  {
    [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessary];
  }

  subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];
  [(VKCImageSubjectHighlightView *)self setSubjectAnalysisCompleteWhenTouchesBegan:subjectContext != 0];
}

- (void)hideCalloutMenuIfNecessary
{
  if (![(VKCImageSubjectHighlightView *)self subjectViewUserInteractionDisabled])
  {

    [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessaryWithClearSelectAll:1];
  }
}

- (void)hideCalloutMenuIfNecessaryWithClearSelectAll:(BOOL)all
{
  mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
  _targetView = [mEMORY[0x1E69DCC68] _targetView];
  [(VKCImageSubjectHighlightView *)self setCalloutStartTime:0];
  isSelectAllActive = [(VKCImageSubjectHighlightView *)self isSelectAllActive];
  if ([mEMORY[0x1E69DCC68] isMenuVisible])
  {
    v7 = _targetView == self;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    mEMORY[0x1E69DCC68]2 = [MEMORY[0x1E69DCC68] sharedMenuController];
    [mEMORY[0x1E69DCC68]2 hideMenuFromView:self];
  }

  if (!all)
  {
    [(VKCImageSubjectHighlightView *)self setIsSelectAllActive:isSelectAllActive];
  }
}

- (void)highlightSubjectAtIndexSet:(id)set showCallout:(BOOL)callout showBurst:(BOOL)burst burstPoint:(CGPoint)point animated:(BOOL)animated
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  burstCopy = burst;
  calloutCopy = callout;
  setCopy = set;
  if (setCopy)
  {
    subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];
    activeSubjectIndexSet = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
    v15 = [subjectContext subjectIndexes:setCopy equivalentToIndexes:activeSubjectIndexSet];

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if ((v15 & 1) == 0)
    {
      [(VKCImageSubjectBaseView *)self setActiveSubjectIndexSet:setCopy animated:animatedCopy];
    }

    [MEMORY[0x1E6979518] commit];
    if (calloutCopy)
    {
      if (burstCopy || !-[VKCImageSubjectBaseView glowLayerActive](self, "glowLayerActive") || ([MEMORY[0x1E69DCC68] sharedMenuController], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isMenuVisible"), v16, (v15 & v17 & 1) == 0))
      {
        [(VKCImageSubjectHighlightView *)self showCalloutMenuAtLocation:1 checkDelegate:burstCopy showPulse:x, y];
      }
    }

    else
    {
      [(VKCImageSubjectHighlightView *)self _configureGlowWithShowBurst:burstCopy burstPoint:x, y];
    }
  }

  else
  {
    [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessary];
    [(VKCImageSubjectHighlightView *)self setGlowLayerActive:0];
    [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:0 animated:animatedCopy];
  }
}

- (void)showCalloutMenuAtLocation:(CGPoint)location checkDelegate:(BOOL)delegate showPulse:(BOOL)pulse
{
  pulseCopy = pulse;
  y = location.y;
  x = location.x;
  if (!delegate)
  {
    goto LABEL_4;
  }

  delegate = [(VKCImageSubjectHighlightView *)self delegate];
  v10 = [delegate subjectHighlightView:self shouldBeginInteractionAtPoint:1 withType:{x, y}];

  if (v10)
  {
    delegate2 = [(VKCImageSubjectHighlightView *)self delegate];
    [delegate2 subjectHighlightView:self willBeginInteractionAtPoint:1 withType:{x, y}];

LABEL_4:
    [(VKCImageSubjectHighlightView *)self becomeFirstResponder];
    [(VKCImageSubjectHighlightView *)self subjectBoundsClippedToVisibleRectWithShouldInsetForCallout:1];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    [(VKCImageSubjectHighlightView *)self _configureGlowWithShowBurst:pulseCopy burstPoint:x, y];
    [mEMORY[0x1E69DCC68] showMenuFromView:self rect:{v13, v15, v17, v19}];
    v20 = [MEMORY[0x1E695DF00] now];
    [(VKCImageSubjectHighlightView *)self setCalloutStartTime:v20];

    goto LABEL_6;
  }

  mEMORY[0x1E69DCC68] = objc_alloc_init(MEMORY[0x1E69DCCF0]);
  [mEMORY[0x1E69DCC68] notificationOccurred:1];
  [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:0];
  [(VKCImageSubjectHighlightView *)self setGlowLayerActive:0];
  [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessary];
LABEL_6:
}

- (void)_configureGlowWithShowBurst:(BOOL)burst burstPoint:(CGPoint)point
{
  burstCopy = burst;
  if (burst)
  {
    v6 = [MEMORY[0x1E696B098] vk_valueWithPoint:{point.x, point.y}];
    [(VKCImageSubjectBaseView *)self setBurstPoint:v6];
  }

  else
  {
    [(VKCImageSubjectBaseView *)self setBurstPoint:0, point.x, point.y];
  }

  subjectViewUserInteractionDisabled = [(VKCImageSubjectHighlightView *)self subjectViewUserInteractionDisabled];
  tapGR = [(VKCImageSubjectHighlightView *)self tapGR];
  [tapGR setEnabled:!subjectViewUserInteractionDisabled];

  dragInteraction = [(VKCImageSubjectHighlightView *)self dragInteraction];
  [dragInteraction _cancelLift];

  livePhotoPlayGR = [(VKCImageSubjectHighlightView *)self livePhotoPlayGR];
  [livePhotoPlayGR setEnabled:0];

  subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];
  activeSubjectIndexSet = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
  activeGlowLayerIndexSet = [(VKCImageSubjectBaseView *)self activeGlowLayerIndexSet];
  v14 = [subjectContext subjectIndexes:activeSubjectIndexSet equivalentToIndexes:activeGlowLayerIndexSet];

  if ((v14 & 1) == 0)
  {
    if ([(VKCImageSubjectBaseView *)self glowLayerActive])
    {
      activeSubjectIndexSet2 = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
      if (activeSubjectIndexSet2)
      {

LABEL_11:
        [(VKCImageSubjectBaseView *)self updateGlowLayerForActiveSubjectIndexSet];
        goto LABEL_12;
      }

      if ([(VKCImageSubjectHighlightView *)self isSelectAllActive])
      {
        goto LABEL_11;
      }

      selfCopy2 = self;
      v17 = 0;
    }

    else
    {
      selfCopy2 = self;
      v17 = 1;
    }

    [(VKCImageSubjectHighlightView *)selfCopy2 setGlowLayerActive:v17];
  }

LABEL_12:
  if (![(VKCImageSubjectHighlightView *)self subjectHighlightState])
  {
    [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:4 animated:0];
  }

  [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:15 animated:1];
  if (burstCopy)
  {
    [(UIView *)self vk_viewPointRatioFromWindow];

    [(VKCImageSubjectBaseView *)self showPulseAnimationWithViewScale:?];
  }
}

- (void)_shareHeics:(id)heics
{
  heicsCopy = heics;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__VKCImageSubjectHighlightView__shareHeics___block_invoke;
  v5[3] = &unk_1E7BE5288;
  objc_copyWeak(&v6, &location);
  [(VKCImageSubjectBaseView *)self loadImageSubjectIfNecessaryWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__VKCImageSubjectHighlightView__shareHeics___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tempGenerateStickerFromLivePhotoIfNecessaryWithProgress:0];
}

- (void)_addSticker:(id)sticker
{
  stickerCopy = sticker;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__VKCImageSubjectHighlightView__addSticker___block_invoke;
  v5[3] = &unk_1E7BE41E0;
  objc_copyWeak(&v6, &location);
  vk_requestDeviceUnlockIfNecessaryWithCompletion(v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__VKCImageSubjectHighlightView__addSticker___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __44__VKCImageSubjectHighlightView__addSticker___block_invoke_2;
    v2[3] = &unk_1E7BE4280;
    objc_copyWeak(&v3, (a1 + 32));
    vk_dispatchMainAfterDelay(v2, 0.0);
    objc_destroyWeak(&v3);
  }
}

void __44__VKCImageSubjectHighlightView__addSticker___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained delegate];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__VKCImageSubjectHighlightView__addSticker___block_invoke_3;
    v5[3] = &unk_1E7BE4280;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 subjectHighlightView:v3 prepareForCalloutAction:sel__addSticker_ completion:v5];

    objc_destroyWeak(&v6);
  }
}

void __44__VKCImageSubjectHighlightView__addSticker___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addSticker];
}

- (void)_addSticker
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__VKCImageSubjectHighlightView__addSticker__block_invoke;
  v3[3] = &unk_1E7BE5288;
  objc_copyWeak(&v4, &location);
  [(VKCImageSubjectBaseView *)self loadImageSubjectIfNecessaryWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __43__VKCImageSubjectHighlightView__addSticker__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__VKCImageSubjectHighlightView__addSticker__block_invoke_2;
  v4[3] = &unk_1E7BE4280;
  objc_copyWeak(&v5, (a1 + 32));
  vk_dispatchMainAfterDelay(v4, 0.0);
  objc_destroyWeak(&v5);
}

void __43__VKCImageSubjectHighlightView__addSticker__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentStickerPickerViewController];
    [v2 sendSubjectAnalyticsEventWithEventType:2 interactionType:4 subjectFound:1 processingDuration:0.0];
    WeakRetained = v2;
  }
}

- (void)_selectAllSubjects:(id)subjects
{
  subjectsCopy = subjects;
  indexSet = [MEMORY[0x1E696AC90] indexSet];
  [(VKCImageSubjectBaseView *)self setActiveSubjectIndexSet:indexSet];

  [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessary];
  [(VKCImageSubjectHighlightView *)self setIsSelectAllActive:1];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VKCImageSubjectHighlightView__selectAllSubjects___block_invoke;
  v6[3] = &unk_1E7BE4280;
  objc_copyWeak(&v7, &location);
  vk_dispatchMainAfterDelay(v6, 0.0);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __51__VKCImageSubjectHighlightView__selectAllSubjects___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showCalloutMenuAtLocation:0 checkDelegate:0 showPulse:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

- (void)_presentStickerPickerViewController
{
  [(VKCImageSubjectHighlightView *)self subjectBoundsClippedToVisibleRectWithShouldInsetForCallout:1];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v7 = CGRectGetMidX(v31) + -20.0;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v8 = CGRectGetMidY(v32) + -20.0;
  v9 = objc_alloc_init(MEMORY[0x1E69DD758]);
  [(VKCImageSubjectHighlightView *)self setStickerPickerViewController:v9];

  stickerPickerViewController = [(VKCImageSubjectHighlightView *)self stickerPickerViewController];
  [stickerPickerViewController setSourceView:self];

  v12 = VKMRectWithOriginAndSize(v11, v7, v8, 40.0, 40.0);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  stickerPickerViewController2 = [(VKCImageSubjectHighlightView *)self stickerPickerViewController];
  [stickerPickerViewController2 setSourceRect:{v12, v14, v16, v18}];

  stickerPickerViewController3 = [(VKCImageSubjectHighlightView *)self stickerPickerViewController];
  [stickerPickerViewController3 setDelegate:self];

  traitCollection = [(VKCImageSubjectHighlightView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  stickerPickerViewController4 = [(VKCImageSubjectHighlightView *)self stickerPickerViewController];
  [stickerPickerViewController4 setOverrideUserInterfaceStyle:userInterfaceStyle];

  delegate = [(VKCImageSubjectHighlightView *)self delegate];
  v25 = [delegate presentingViewControllerForSubjectHighlightView:self];
  v26 = v25;
  if (v25)
  {
    rootViewController = v25;
  }

  else
  {
    window = [(VKCImageSubjectHighlightView *)self window];
    rootViewController = [window rootViewController];
  }

  stickerPickerViewController5 = [(VKCImageSubjectHighlightView *)self stickerPickerViewController];
  [rootViewController presentViewController:stickerPickerViewController5 animated:0 completion:0];
}

- (void)_dismissCard
{
  stickerPickerViewController = [(VKCImageSubjectHighlightView *)self stickerPickerViewController];
  [stickerPickerViewController dismissCard];
}

- (void)didTap:(id)tap
{
  tapCopy = tap;
  if ([(VKCImageSubjectHighlightView *)self tapToSelectModeEnabled])
  {
    [tapCopy locationInView:self];
    v6 = v5;
    v8 = v7;

    [(VKCImageSubjectHighlightView *)self selectAndShowCalloutForTapToSelectModeAtPoint:v6, v8];
  }

  else
  {
    state = [tapCopy state];

    if (state == 3)
    {

      [(VKCImageSubjectHighlightView *)self hideCalloutMenuIfNecessary];
    }
  }
}

- (void)selectAndShowCalloutForTapToSelectModeAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(VKCImageSubjectBaseView *)self indexOfSubjectAtPoint:?];
  v14 = v6;
  if (v6)
  {
    [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v6, "integerValue")}];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v7 = ;
  subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];
  activeSubjectIndexSet = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
  v10 = [subjectContext subjectIndexes:v7 equivalentToIndexes:activeSubjectIndexSet];

  [(VKCImageSubjectHighlightView *)self highlightSubjectAtIndexSet:v7 showCallout:v14 != 0 showBurst:0 burstPoint:1 animated:x, y];
  if (v14)
  {
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    [mEMORY[0x1E69DCC68] update];
LABEL_6:

    goto LABEL_10;
  }

  if ((v10 & 1) == 0)
  {
    mEMORY[0x1E69DCC68]2 = [MEMORY[0x1E69DCC68] sharedMenuController];
    isMenuVisible = [mEMORY[0x1E69DCC68]2 isMenuVisible];

    if (isMenuVisible)
    {
      mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
      [mEMORY[0x1E69DCC68] hideMenu];
      goto LABEL_6;
    }
  }

LABEL_10:
}

- (void)menuControllerWillHide:(id)hide
{
  hideCopy = hide;
  v5 = objc_opt_class();
  object = [hideCopy object];

  v18 = VKDynamicCast(v5, object);

  subjectViewUserInteractionDisabled = [(VKCImageSubjectHighlightView *)self subjectViewUserInteractionDisabled];
  _targetView = [v18 _targetView];
  v9 = _targetView;
  if (_targetView == self)
  {
    tapToSelectModeEnabled = [(VKCImageSubjectHighlightView *)self tapToSelectModeEnabled];

    if (!tapToSelectModeEnabled)
    {
      dragInteraction = [(VKCImageSubjectHighlightView *)self dragInteraction];
      _isActive = [dragInteraction _isActive];

      if (_isActive)
      {
        dragInteraction2 = [(VKCImageSubjectHighlightView *)self dragInteraction];
        [dragInteraction2 _cancelLift];
      }

      else if (![(VKCImageSubjectHighlightView *)self isHidingMenuController])
      {
        [(VKCImageSubjectHighlightView *)self setIsHidingMenuController:1];
        [(VKCImageSubjectHighlightView *)self setSubjectHighlightState:0 animated:1];
        [(VKCImageSubjectHighlightView *)self setGlowLayerActive:0];
        [(VKCImageSubjectHighlightView *)self setIsHidingMenuController:0];
      }

      tapGR = [(VKCImageSubjectHighlightView *)self tapGR];
      [tapGR setEnabled:0];

      v15 = !subjectViewUserInteractionDisabled;
      dragInteraction3 = [(VKCImageSubjectHighlightView *)self dragInteraction];
      [dragInteraction3 setEnabled:v15];

      LODWORD(dragInteraction3) = [(VKCImageSubjectHighlightView *)self isLivePhoto];
      livePhotoPlayGR = [(VKCImageSubjectHighlightView *)self livePhotoPlayGR];
      [livePhotoPlayGR setEnabled:dragInteraction3 & v15];

      [(VKCImageSubjectHighlightView *)self setGlowLayerActive:0];
      [(VKCImageSubjectHighlightView *)self setIsSelectAllActive:0];
    }
  }

  else
  {
  }
}

- (void)_tempGenerateStickerFromLivePhotoIfNecessaryWithProgress:(id)progress
{
  progressCopy = progress;
  if ([(VKCImageSubjectHighlightView *)self isLivePhoto])
  {
    v5 = [VKCRemoveBackgroundVideoRequest alloc];
    analysisResult = [(VKCImageSubjectBaseView *)self analysisResult];
    request = [analysisResult request];
    v8 = [(VKCRemoveBackgroundVideoRequest *)v5 initWithPhotosAnalyzerRequest:request];

    v9 = +[VKImageDataRequirements stickerRequirements];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "maxLength")}];
    [(VKCRemoveBackgroundVideoRequest *)v8 setMaxDimension:v10];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "minLength")}];
    [(VKCRemoveBackgroundVideoRequest *)v8 setMinDimension:v11];

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "maxDataLength")}];
    [(VKCRemoveBackgroundVideoRequest *)v8 setMaxFileSize:v12];

    burstPoint = [(VKCImageSubjectBaseView *)self burstPoint];
    v14 = burstPoint;
    if (burstPoint)
    {
      [burstPoint pointValue];
      [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:?];
      VKMFlipPoint();
      v22[0] = v15;
      v22[1] = v16;
      v17 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{CGPoint=dd}"];
      [(VKCRemoveBackgroundVideoRequest *)v8 setInstancePoint:v17];
    }

    v18 = objc_alloc_init(VKCRemoveBackgroundVideoRequestHandler);
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __89__VKCImageSubjectHighlightView__tempGenerateStickerFromLivePhotoIfNecessaryWithProgress___block_invoke;
    v19[3] = &unk_1E7BE5300;
    objc_copyWeak(&v20, &location);
    v19[4] = self;
    [(VKCRemoveBackgroundVideoRequestHandler *)v18 performRequest:v8 previewResultAvailable:0 progress:progressCopy completion:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __89__VKCImageSubjectHighlightView__tempGenerateStickerFromLivePhotoIfNecessaryWithProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__VKCImageSubjectHighlightView__tempGenerateStickerFromLivePhotoIfNecessaryWithProgress___block_invoke_2;
  v10[3] = &unk_1E7BE52D8;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = v5;
  v11 = v7;
  v8 = v6;
  v9 = *(a1 + 32);
  v12 = v8;
  v13 = v9;
  vk_dispatchMainAfterDelay(v10, 0.0);

  objc_destroyWeak(&v14);
}

void __89__VKCImageSubjectHighlightView__tempGenerateStickerFromLivePhotoIfNecessaryWithProgress___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = [a1[4] data];
    v4 = [a1[4] utType];
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = MEMORY[0x1E69DC650];
      v8 = VKBundle();
      v9 = [v8 localizedStringForKey:@"Error Extracting Heics" value:@"Error Extracting Heics" table:@"Localizable"];
      v10 = [a1[5] localizedDescription];
      v11 = [v7 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

      v12 = MEMORY[0x1E69DC648];
      v13 = VKBundle();
      v14 = [v13 localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __89__VKCImageSubjectHighlightView__tempGenerateStickerFromLivePhotoIfNecessaryWithProgress___block_invoke_3;
      v32[3] = &unk_1E7BE52B0;
      v15 = v11;
      v33 = v15;
      v16 = [v12 actionWithTitle:v14 style:0 handler:v32];

      [v15 addAction:v16];
      v17 = [a1[6] delegate];
      v18 = [v17 presentingViewControllerForSubjectHighlightView:WeakRetained];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v31 = [WeakRetained window];
        v20 = [v31 rootViewController];
      }

      [v20 presentViewController:v15 animated:1 completion:&__block_literal_global_306];
    }

    else
    {
      v21 = [WeakRetained delegate];
      v22 = [v21 tempPNGURLForSubjectHighlightView:WeakRetained];

      v23 = [v22 URLByDeletingPathExtension];
      v24 = [v23 URLByAppendingPathExtensionForType:v5];

      [v3 writeToURL:v24 atomically:1];
      [WeakRetained bounds];
      v29 = VKMCenterOfRect(v25, v26, v27, v28);
      [WeakRetained showSharingPaneForURL:v24 sourceRect:{VKMRectWithCenterAndSize(v29, v30, 1.0)}];
    }
  }
}

- (void)showSharingPaneForURL:(id)l sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  lCopy = l;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__VKCImageSubjectHighlightView_showSharingPaneForURL_sourceRect___block_invoke;
  v11[3] = &unk_1E7BE5328;
  objc_copyWeak(v13, &location);
  v11[4] = self;
  v10 = lCopy;
  v12 = v10;
  v13[1] = *&x;
  v13[2] = *&y;
  v13[3] = *&width;
  v13[4] = *&height;
  vk_performBlockOnMainThread(v11);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __65__VKCImageSubjectHighlightView_showSharingPaneForURL_sourceRect___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = [v3 presentingViewControllerForSubjectHighlightView:WeakRetained];
    if (v4)
    {
      v5 = v4;

LABEL_5:
      v7 = objc_alloc(MEMORY[0x1E69CD9F8]);
      v18[0] = *(a1 + 40);
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v9 = [v7 initWithActivityItems:v8 applicationActivities:MEMORY[0x1E695E0F0]];

      v17 = *MEMORY[0x1E69CDB18];
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      [v9 setExcludedActivityTypes:v10];

      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 72);
      v14 = *(a1 + 80);
      v15 = [v9 popoverPresentationController];
      [v15 setSourceRect:{v11, v12, v13, v14}];

      v16 = [v9 popoverPresentationController];
      [v16 setSourceView:WeakRetained];

      [v5 presentViewController:v9 animated:1 completion:0];
      goto LABEL_6;
    }

    v6 = [WeakRetained window];
    v5 = [v6 rootViewController];

    if (v5)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
}

- (void)_share
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Activating Subject share from callout menu: %@", buf, 0xCu);
  }

  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__VKCImageSubjectHighlightView__share__block_invoke;
  v6[3] = &unk_1E7BE5350;
  objc_copyWeak(&v9, buf);
  v5 = recognitionResult;
  v7 = v5;
  selfCopy2 = self;
  [(VKCImageSubjectBaseView *)self loadImageSubjectIfNecessaryWithCompletion:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __38__VKCImageSubjectHighlightView__share__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [v3 vk_PNGData];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__VKCImageSubjectHighlightView__share__block_invoke_2;
    v10[3] = &unk_1E7BE52D8;
    objc_copyWeak(&v14, (a1 + 48));
    v7 = v6;
    v11 = v7;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12 = v8;
    v13 = v9;
    vk_performBlockOnMainThread(v10);

    objc_destroyWeak(&v14);
  }
}

void __38__VKCImageSubjectHighlightView__share__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v21 = WeakRetained;
    v3 = [WeakRetained recognitionResult];
    v4 = *(a1 + 40);

    WeakRetained = v21;
    if (v3 == v4)
    {
      v5 = [v21 delegate];
      v6 = [v5 tempPNGURLForSubjectHighlightView:v21];

      [*(a1 + 32) writeToURL:v6 atomically:1];
      v7 = [*(a1 + 48) subjectPathInBoundsCoordinates];
      [v7 bounds];
      v12 = VKMCenterOfRect(v8, v9, v10, v11);
      v14 = VKMRectWithCenterAndSize(v12, v13, 1.0);
      v16 = v15;
      v18 = v17;
      v20 = v19;

      [*(a1 + 48) showSharingPaneForURL:v6 sourceRect:{v14, v16, v18, v20}];
      [v21 sendSubjectAnalyticsEventWithEventType:2 interactionType:2 subjectFound:1 processingDuration:0.0];

      WeakRetained = v21;
    }
  }
}

- (void)_define:(id)_define
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "Activating Subject LookUp from callout menu: %@", &v9, 0xCu);
  }

  subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];
  activeSubjectIndexSet = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
  [(VKCImageBaseOverlayView *)self contentsRect];
  v7 = [subjectContext normalizedPathForSubjectWithIndexSet:activeSubjectIndexSet contentsRect:1 topLevelOnly:?];

  delegate = [(VKCImageSubjectHighlightView *)self delegate];
  [delegate subjectHighlightView:self activateVSItemForNormalizedPath:v7];
}

- (void)_share:(id)_share
{
  _shareCopy = _share;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__VKCImageSubjectHighlightView__share___block_invoke;
  v5[3] = &unk_1E7BE41E0;
  objc_copyWeak(&v6, &location);
  vk_requestDeviceUnlockIfNecessaryWithCompletion(v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __39__VKCImageSubjectHighlightView__share___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __39__VKCImageSubjectHighlightView__share___block_invoke_2;
    v2[3] = &unk_1E7BE4280;
    objc_copyWeak(&v3, (a1 + 32));
    vk_dispatchMainAfterDelay(v2, 0.0);
    objc_destroyWeak(&v3);
  }
}

void __39__VKCImageSubjectHighlightView__share___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained delegate];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__VKCImageSubjectHighlightView__share___block_invoke_3;
    v5[3] = &unk_1E7BE4280;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 subjectHighlightView:v3 prepareForCalloutAction:sel__share_ completion:v5];

    objc_destroyWeak(&v6);
  }
}

void __39__VKCImageSubjectHighlightView__share___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _share];
}

- (void)copy:(id)copy
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "Subject copy: %@", buf, 0xCu);
  }

  createItemProvider = [(VKCImageSubjectHighlightView *)self createItemProvider];
  if (createItemProvider)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    v8 = createItemProvider;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    [generalPasteboard setItemProviders:v7];

    [(VKCImageSubjectBaseView *)self sendSubjectAnalyticsEventWithEventType:2 interactionType:1 subjectFound:1 processingDuration:0.0];
  }
}

- (id)createItemProvider
{
  objc_initWeak(&location, self);
  analysisResult = [(VKCImageSubjectBaseView *)self analysisResult];
  v4 = +[VKCInternalSettings addSubjectCropRectToPasteboard];
  v5 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  subjectContext = [(VKCImageSubjectBaseView *)self subjectContext];
  v7 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __50__VKCImageSubjectHighlightView_createItemProvider__block_invoke;
  v24[3] = &unk_1E7BE53C8;
  objc_copyWeak(&v27, &location);
  v8 = analysisResult;
  v25 = v8;
  v9 = subjectContext;
  v26 = v9;
  [v5 registerObjectOfClass:v7 visibility:0 loadHandler:v24];
  if (v4)
  {
    subjectContext2 = [(VKCImageSubjectBaseView *)self subjectContext];
    [(VKCImageBaseOverlayView *)self contentsRect];
    v11 = [subjectContext2 normalizedPathForActiveSubjectsWithContentsRect:0 topLevelOnly:?];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = objc_opt_class();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__VKCImageSubjectHighlightView_createItemProvider__block_invoke_4;
    v22[3] = &unk_1E7BE5418;
    objc_copyWeak(v23, &location);
    v23[1] = v13;
    v23[2] = v15;
    v23[3] = v17;
    v23[4] = v19;
    [v5 registerObjectOfClass:v20 visibility:0 loadHandler:v22];
    objc_destroyWeak(v23);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v5;
}

uint64_t __50__VKCImageSubjectHighlightView_createItemProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained analysisResult], v6 = objc_claimAutoreleasedReturnValue(), v7 = *(a1 + 32), v6, v6 == v7))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__VKCImageSubjectHighlightView_createItemProvider__block_invoke_2;
    v16[3] = &unk_1E7BE5378;
    v17 = v3;
    v8 = v3;
    [v5 loadImageSubjectIfNecessaryWithCompletion:v16];
    v11 = v17;
  }

  else
  {
    v8 = objc_alloc_init(VKCRemoveBackgroundRequestHandler);
    v9 = [*(a1 + 40) request];
    [v9 setMaskOnly:0];
    [v9 setCropToFit:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__VKCImageSubjectHighlightView_createItemProvider__block_invoke_3;
    v13[3] = &unk_1E7BE53A0;
    v14 = v9;
    v15 = v3;
    v10 = v3;
    v11 = v9;
    [(VKCRemoveBackgroundRequestHandler *)v8 performRequest:v11 completion:v13];
  }

  return 0;
}

void __50__VKCImageSubjectHighlightView_createItemProvider__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = vk_cgImageFromPixelBuffer([a2 pixelBuffer]);
  v8 = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:v6];
  CGImageRelease(v6);
  v7 = [MEMORY[0x1E69DCAB8] vk_orientedImageFromImage:v8 toOrientation:{objc_msgSend(*(a1 + 32), "imageOrientation")}];
  (*(*(a1 + 40) + 16))();
}

uint64_t __50__VKCImageSubjectHighlightView_createItemProvider__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__VKCImageSubjectHighlightView_createItemProvider__block_invoke_5;
    v7[3] = &unk_1E7BE53F0;
    v8 = v3;
    v5 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = v5;
    [WeakRetained loadImageSubjectIfNecessaryWithCompletion:v7];
  }

  else
  {
    (*(v3 + 2))(v3, 0, 0);
  }

  return 0;
}

void __50__VKCImageSubjectHighlightView_createItemProvider__block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSStringFromCGRect(*(a1 + 40));
  (*(v1 + 16))(v1, v2, 0);
}

- (CGRect)subjectBoundsClippedToVisibleRectWithShouldInsetForCallout:(BOOL)callout
{
  calloutCopy = callout;
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  [(VKCImageBaseOverlayView *)self viewRectFromNormalizedRect:?];
  v9 = v8;
  v10 = v7 > 88.0;
  if (v10 && calloutCopy)
  {
    v11 = v7 + -44.0;
  }

  else
  {
    v11 = v7;
  }

  if (v10 && calloutCopy)
  {
    v12 = v6 + 0.0;
  }

  else
  {
    v12 = v6;
  }

  if (v10 && calloutCopy)
  {
    v13 = v5 + 0.0;
  }

  else
  {
    v13 = v5;
  }

  subjectPathInBoundsCoordinates = [(VKCImageSubjectBaseView *)self subjectPathInBoundsCoordinates];
  [subjectPathInBoundsCoordinates bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v31.origin.x = v13;
  v31.origin.y = v12;
  v31.size.width = v9;
  v31.size.height = v11;
  v35.origin.x = v16;
  v35.origin.y = v18;
  v35.size.width = v20;
  v35.size.height = v22;
  v32 = CGRectIntersection(v31, v35);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  if (VKMRectHasArea(v32.origin.x, v32.origin.y, v32.size.width, v32.size.height))
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    if (!CGRectIsNull(v33))
    {
      v22 = height;
      v20 = width;
      v18 = y;
      v16 = x;
    }
  }

  v27 = v16;
  v28 = v18;
  v29 = v20;
  v30 = v22;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)createStickerRepresentationsAtIndexSet:(id)set type:(unint64_t)type stickerIDs:(id)ds progress:(id)progress completion:(id)completion
{
  dsCopy = ds;
  progressCopy = progress;
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke;
  v18[3] = &unk_1E7BE54E0;
  v21 = completionCopy;
  typeCopy = type;
  v18[4] = self;
  v19 = dsCopy;
  v20 = progressCopy;
  v15 = completionCopy;
  v16 = progressCopy;
  v17 = dsCopy;
  [(VKCImageSubjectBaseView *)self loadImageSubjectWithIndexes:set completion:v18];
}

void __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__6;
  v52[4] = __Block_byref_object_dispose__6;
  v53 = [MEMORY[0x1E695DF70] array];
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2810000000;
  v50[3] = &unk_1B44420A2;
  v51 = 0;
  v4 = *(a1 + 64);
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.Stickers");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = VKMUIStringForStickerRepresentationType(*(a1 + 64));
    v7 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Beginning sticker rep creation with types: %@, %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v55 = __Block_byref_object_copy__6;
  v56 = __Block_byref_object_dispose__6;
  v57 = 0;
  v8 = dispatch_group_create();
  v9 = +[VKImageDataRequirements stickerRequirements];
  if (v4)
  {
    dispatch_group_enter(v8);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_318;
    v45[3] = &unk_1E7BE42D0;
    v46 = v9;
    v48 = v50;
    v49 = v52;
    v47 = v8;
    [v3 vk_imageDataWithRequirements:v46 completion:v45];
  }

  if ((v4 & 4) != 0)
  {
    dispatch_group_enter(v8);
    v10 = +[VKImageDataRequirements stickerThumbnailRequirements];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_2;
    v41[3] = &unk_1E7BE42F8;
    v43 = v50;
    v44 = v52;
    v42 = v8;
    [v3 vk_imageDataWithRequirements:v10 completion:v41];
  }

  if (([*(a1 + 32) isLivePhoto] & (v4 >> 1) & 1) == 1)
  {
    v11 = [VKCRemoveBackgroundVideoRequest alloc];
    v12 = [*(a1 + 32) analysisResult];
    v13 = [v12 request];
    v14 = [(VKCRemoveBackgroundVideoRequest *)v11 initWithPhotosAnalyzerRequest:v13];

    [(VKCRemoveBackgroundVideoRequest *)v14 setStickerIDs:*(a1 + 40)];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "maxLength")}];
    [(VKCRemoveBackgroundVideoRequest *)v14 setMaxDimension:v15];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "minLength")}];
    [(VKCRemoveBackgroundVideoRequest *)v14 setMinDimension:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "maxDataLength")}];
    [(VKCRemoveBackgroundVideoRequest *)v14 setMaxFileSize:v17];

    v18 = [*(a1 + 32) burstPoint];
    v19 = v18;
    if (v18)
    {
      v20 = *(a1 + 32);
      [v18 pointValue];
      [v20 normalizedPointFromViewPoint:?];
      VKMFlipPoint();
      v40[0] = v21;
      v40[1] = v22;
      v23 = [MEMORY[0x1E696B098] valueWithBytes:v40 objCType:"{CGPoint=dd}"];
      [(VKCRemoveBackgroundVideoRequest *)v14 setInstancePoint:v23];
    }

    v24 = objc_alloc_init(VKCRemoveBackgroundVideoRequestHandler);
    dispatch_group_enter(v8);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_3;
    v39[3] = &unk_1E7BE5440;
    v39[4] = *(a1 + 32);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_5;
    v36[3] = &unk_1E7BE5468;
    v38 = *(a1 + 48);
    v37 = *(a1 + 40);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_6;
    v33[3] = &unk_1E7BE5490;
    v35 = buf;
    v34 = v8;
    [(VKCRemoveBackgroundVideoRequestHandler *)v24 performRequest:v14 previewResultAvailable:v39 progress:v36 completion:v33];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_7;
  v27[3] = &unk_1E7BE54B8;
  v25 = *(a1 + 32);
  v28 = v3;
  v29 = v25;
  v30 = *(a1 + 56);
  v31 = v52;
  v32 = buf;
  v26 = v3;
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], v27);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v52, 8);
}

void __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_318(uint64_t a1, void *a2, double a3, double a4)
{
  if (a2)
  {
    v7 = MEMORY[0x1E69DD760];
    v8 = a2;
    v9 = objc_alloc_init(v7);
    [v9 setData:v8];

    [v9 setRole:@"com.apple.stickers.role.still"];
    v10 = [*(a1 + 32) uti];
    [v9 setType:v10];

    [v9 setSize:{a3, a4}];
    os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
    [*(*(*(a1 + 56) + 8) + 40) insertObject:v9 atIndex:0];
    os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  }

  v11 = *(a1 + 40);

  dispatch_group_leave(v11);
}

void __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_2(void *a1, void *a2, double a3, double a4)
{
  if (a2)
  {
    v7 = MEMORY[0x1E69DD760];
    v8 = a2;
    v9 = objc_alloc_init(v7);
    [v9 setData:v8];

    [v9 setRole:@"com.apple.stickers.role.keyboard"];
    v10 = +[VKImageDataRequirements stickerThumbnailRequirements];
    v11 = [v10 uti];
    [v9 setType:v11];

    [v9 setSize:{a3, a4}];
    os_unfair_lock_lock((*(a1[5] + 8) + 32));
    [*(*(a1[6] + 8) + 40) addObject:v9];
    os_unfair_lock_unlock((*(a1[5] + 8) + 32));
  }

  v12 = a1[4];

  dispatch_group_leave(v12);
}

void __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_4;
  v5[3] = &unk_1E7BE4768;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  vk_performBlockOnMainThread(v5);
}

void __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setVideoPreview:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 videoPreviewAvailableForSubjectHighlightView:*(a1 + 32)];
}

uint64_t __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_6(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __107__VKCImageSubjectHighlightView_createStickerRepresentationsAtIndexSet_type_stickerIDs_progress_completion___block_invoke_7(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:*(a1 + 32)];
  v2 = [*(a1 + 40) subjectPathInBoundsCoordinates];
  [v2 bounds];
  [v3 setFrame:?];

  (*(*(a1 + 48) + 16))();
}

- (id)videoPreviewSubjectMatteAtCompositionTime:(id *)time
{
  videoPreview = [(VKCImageSubjectHighlightView *)self videoPreview];
  v7 = *time;
  v5 = [videoPreview subjectMatteAtCompositionTime:&v7];

  return v5;
}

- (id)videoPreviewSubjectMatteForImage:(id)image atCompositionTime:(id *)time
{
  imageCopy = image;
  videoPreview = [(VKCImageSubjectHighlightView *)self videoPreview];
  v10 = *time;
  v8 = [videoPreview subjectMatteForImage:imageCopy atCompositionTime:&v10];

  return v8;
}

- ($58EB755F713D70195D081A2438463C76)videoPreviewTimeRange
{
  videoPreview = [(VKCImageSubjectHighlightView *)self videoPreview];
  if (videoPreview)
  {
    v6 = videoPreview;
    [videoPreview timeRange];
    videoPreview = v6;
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (CGRect)videoPreviewNormalizedCropRect
{
  videoPreview = [(VKCImageSubjectHighlightView *)self videoPreview];
  [videoPreview normalizedCropRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)stickerPickerViewControllerDidLoad
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __66__VKCImageSubjectHighlightView_stickerPickerViewControllerDidLoad__block_invoke;
  v2[3] = &unk_1E7BE4208;
  v2[4] = self;
  vk_dispatchMainAfterDelay(v2, 0.5);
}

- (void)addSticker
{
  v20 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  isLivePhoto = [(VKCImageSubjectHighlightView *)self isLivePhoto];
  activeSubjectIndexSet = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
  v5 = [activeSubjectIndexSet copy];

  stickerPickerViewController = [(VKCImageSubjectHighlightView *)self stickerPickerViewController];
  v7 = objc_opt_respondsToSelector();

  v8 = v7 & 1;
  if (v7)
  {
    v9 = 5;
  }

  else
  {
    v9 = 7;
  }

  v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.Stickers");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v10, OS_LOG_TYPE_DEFAULT, "StickerPickerDidLoad: %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__VKCImageSubjectHighlightView_addSticker__block_invoke;
  v12[3] = &unk_1E7BE55A0;
  objc_copyWeak(&v14, &location);
  v12[4] = self;
  v15 = v8;
  v16 = isLivePhoto;
  v11 = v5;
  v13 = v11;
  [(VKCImageSubjectHighlightView *)self createStickerRepresentationsAtIndexSet:v11 type:v9 stickerIDs:MEMORY[0x1E695E0F0] progress:0 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __42__VKCImageSubjectHighlightView_addSticker__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (v9)
  {
    v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.Stickers");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __42__VKCImageSubjectHighlightView_addSticker__block_invoke_cold_1();
    }
  }

  else
  {
    if (!WeakRetained)
    {
      goto LABEL_5;
    }

    if (*(a1 + 56) == 1)
    {
      v13 = [WeakRetained stickerPickerViewController];
      v14 = *(a1 + 32);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __42__VKCImageSubjectHighlightView_addSticker__block_invoke_331;
      v16[3] = &unk_1E7BE5578;
      objc_copyWeak(&v18, (a1 + 48));
      v15 = *(a1 + 40);
      v16[4] = *(a1 + 32);
      v19 = *(a1 + 57);
      v17 = v15;
      [v13 addStickerWithRepresentations:v7 previewView:v8 originatingView:v14 completion:v16];

      objc_destroyWeak(&v18);
      goto LABEL_5;
    }

    v12 = [*(a1 + 32) stickerPickerViewController];
    [v12 addStickerWithRepresentations:v7 previewView:v8 originatingView:*(a1 + 32)];
  }

LABEL_5:
}

void __42__VKCImageSubjectHighlightView_addSticker__block_invoke_331(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.Stickers");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __42__VKCImageSubjectHighlightView_addSticker__block_invoke_331_cold_1();
    }

LABEL_4:

    goto LABEL_5;
  }

  if (WeakRetained && *(a1 + 56) == 1)
  {
    v10 = [*(a1 + 32) subjectContext];
    v11 = [v10 request];
    v12 = [v11 animatedStickerScore];
    v13 = v12;
    v14 = &unk_1F2C38E78;
    if (v12)
    {
      v14 = v12;
    }

    v9 = v14;

    v15 = [v8 stickerPickerViewController];
    v16 = __42__VKCImageSubjectHighlightView_addSticker__block_invoke_332(0.0, v15, @"begin", v5, v9);
    [v15 animatedStickerCreationProgressChanged:v16 progress:0.0];

    v17 = *(a1 + 40);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __42__VKCImageSubjectHighlightView_addSticker__block_invoke_342;
    v25[3] = &unk_1E7BE5528;
    objc_copyWeak(&v27, (a1 + 48));
    v26 = &__block_literal_global_335;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __42__VKCImageSubjectHighlightView_addSticker__block_invoke_2;
    v19[3] = &unk_1E7BE5550;
    v18 = *(a1 + 32);
    v20 = 0;
    v21 = v18;
    objc_copyWeak(&v24, (a1 + 48));
    v23 = &__block_literal_global_335;
    v22 = v5;
    [v8 createStickerRepresentationsAtIndexSet:v17 type:2 stickerIDs:v22 progress:v25 completion:v19];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v27);
    goto LABEL_4;
  }

LABEL_5:
}

id __42__VKCImageSubjectHighlightView_addSticker__block_invoke_332(double a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v18[0] = a3;
  v17[0] = @"type";
  v17[1] = @"progress";
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 numberWithDouble:a1];
  v13 = v12;
  v14 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v14 = v10;
  }

  v18[1] = v12;
  v18[2] = v14;
  v17[2] = @"stickerIDs";
  v17[3] = @"stickerScore";
  v18[3] = v9;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

void __42__VKCImageSubjectHighlightView_addSticker__block_invoke_342(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained subjectContext];
  v7 = [v6 request];
  v8 = [v7 animatedStickerScore];
  v9 = v8;
  v10 = &unk_1F2C38E78;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [WeakRetained stickerPickerViewController];
  v13 = (*(*(a1 + 32) + 16))(a3);

  [v12 animatedStickerCreationProgressChanged:v13 progress:a3];
}

void __42__VKCImageSubjectHighlightView_addSticker__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.Stickers");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__VKCImageSubjectHighlightView_addSticker__block_invoke_2_cold_1(v2, a1, v3);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      v14 = WeakRetained;
      v5 = [WeakRetained subjectContext];
      v6 = [v5 request];
      v7 = [v6 animatedStickerScore];
      v8 = v7;
      v9 = &unk_1F2C38E78;
      if (v7)
      {
        v9 = v7;
      }

      v10 = v9;

      v11 = objc_loadWeakRetained((a1 + 64));
      v12 = [v11 stickerPickerViewController];
      v13 = (*(*(a1 + 56) + 16))(100.0);

      [v12 animatedStickerCreationProgressChanged:v13 progress:100.0];
      WeakRetained = v14;
    }
  }
}

- (VKCImageSubjectHighlightViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VKCSubjectLiftView)currentLiftView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentLiftView);

  return WeakRetained;
}

- (UIImageView)currentLiftImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentLiftImageView);

  return WeakRetained;
}

- (CGPoint)dragInteractionStartLocation
{
  x = self->_dragInteractionStartLocation.x;
  y = self->_dragInteractionStartLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

void __42__VKCImageSubjectHighlightView_addSticker__block_invoke_2_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = *(a2 + 40);
  OUTLINED_FUNCTION_1_2(&dword_1B4335000, a2, a3, "Error creating StickerRepresentationsAtIndexSet for animated sticker: %@, %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end