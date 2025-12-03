@interface UIDragInteraction
+ (void)_cancelAllDrags;
- (BOOL)_accessibilityAddItemsToDragSessionAtPoint:(CAPoint3D)point;
- (BOOL)_accessibilityCanAddItemsToDragSession;
- (BOOL)_beginLiftForItems:(id)items session:(id)session animated:(BOOL)animated;
- (BOOL)_isActive;
- (BOOL)_isPointerDriver:(id)driver;
- (BOOL)_itemsForAddingToSession:(id)session atPoint:(CAPoint3D)point completion:(id)completion;
- (BOOL)_sessionDynamicallyUpdatesPrefersFullSizePreviews:(id)previews;
- (BOOL)_sessionPrefersFullSizePreviews:(id)previews;
- (BOOL)_viewRestrictsDragToSourceApp:(id)app;
- (BOOL)dragDriver:(id)driver canExcludeCompetingGestureRecognizer:(id)recognizer;
- (BOOL)dragDriver:(id)driver competingGestureRecognizerShouldDelayLift:(id)lift;
- (BOOL)dragDriver:(id)driver shouldBeginAtLocation3D:(CAPoint3D)d;
- (BOOL)dragDriver:(id)driver shouldDelayCompetingGestureRecognizer:(id)recognizer;
- (BOOL)dragDriver:(id)driver shouldReceiveTouch:(id)touch;
- (BOOL)dragDriverBeginLift:(id)lift;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isEnabled;
- (CGPoint)_locationInView:(id)view;
- (UIDragInteraction)initWithDelegate:(id)delegate;
- (UIDragInteractionEffect)interactionEffect;
- (UIView)view;
- (_UIDragInteractionPresentationDelegate)_presentationDelegate;
- (double)liftDelay;
- (id)_createDefaultInitiationDrivers;
- (id)_initiationDriver;
- (id)_itemsToDragFromView:(id)view;
- (id)_queryDelegate:(id)delegate forItemsForBeginningSession:(id)session;
- (id)_requiredContextIDsForDragSessionInView:(id)view;
- (id)_session:(id)_session customSpringAnimationBehaviorForCancellingItem:(id)item;
- (id)_session:(id)_session targetedPreviewForCancellingItem:(id)item duiPreview:(id)preview snapshotView:(id)view container:(id)container;
- (id)_viewDragSessionProperties:(id)properties;
- (id)delegate;
- (int64_t)_dataOwnerOfDragFromView:(id)view;
- (uint64_t)_addItemsWithPoint:(double)point;
- (unint64_t)_session:(id)_session sourceOperationMaskForDraggingWithinApp:(BOOL)app;
- (void)_accessibilityPrepareForDragAtPoint:(CAPoint3D)point completion:(id)completion;
- (void)_beginDragWithTouches:(id)touches itemUpdater:(id)updater;
- (void)_cancelDrag;
- (void)_cancelLift;
- (void)_endLiftWithoutDragging;
- (void)_finalizeLiftCancellation;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_handoffSession:(id)session;
- (void)_immediatelyBeginDragWithTouch:(id)touch completion:(id)completion;
- (void)_prepareForLiftAtPoint:(void *)point invocationType:(double)type completion:(double)completion;
- (void)_prepareForSession:(id)session completion:(id)completion;
- (void)_queryDelegate:(id)delegate forLiftPreviewsUsingItems:(id)items session:(id)session;
- (void)_session:(id)_session item:(id)item willCancelWithAnimator:(id)animator;
- (void)_session:(id)_session willAddItems:(id)items forInteraction:(id)interaction;
- (void)_sessionDidEnd:(id)end withOperation:(unint64_t)operation;
- (void)_sessionDidMove:(id)move;
- (void)_sessionDidTransferItems:(id)items;
- (void)_sessionHandedOffDragImage:(id)image;
- (void)_sessionWillEnd:(id)end withOperation:(unint64_t)operation;
- (void)_setAddItemsGestureConfiguration:(int64_t)configuration;
- (void)_setAllowedTouchTypes:(id)types;
- (void)_setAllowsPointerDragBeforeLiftDelay:(BOOL)delay;
- (void)_setInitiationDrivers:(id)drivers;
- (void)_setPresentationDelegate:(id)delegate;
- (void)_updateDriverParameters;
- (void)_updateInteractionEffectWithContext:(id)context notifyDelegate:(BOOL)delegate;
- (void)_viewFailedToDrag:(id)drag;
- (void)didMoveToView:(id)view;
- (void)dragDriver:(id)driver beginDragWithTouches:(id)touches itemUpdater:(id)updater beginningSessionHandler:(id)handler;
- (void)dragDriver:(id)driver prepareToLiftWithCompletion:(id)completion;
- (void)dragDriverCancelAddItemsGesture:(id)gesture;
- (void)dragDriverCancelLift:(id)lift;
- (void)setDragCancellationDelay:(double)delay;
- (void)setEnabled:(BOOL)enabled;
- (void)setLiftDelay:(double)delay;
- (void)willMoveToView:(id)view;
@end

@implementation UIDragInteraction

- (id)_createDefaultInitiationDrivers
{
  if (_createDefaultInitiationDrivers_onceToken != -1)
  {
    dispatch_once(&_createDefaultInitiationDrivers_onceToken, &__block_literal_global_179);
  }

  defaultDriverProvider = self->_defaultDriverProvider;
  if (!defaultDriverProvider)
  {
    v4 = +[UIDevice currentDevice];
    v5 = +[_UIVisualStyleRegistry registryForIdiom:](_UIVisualStyleRegistry, "registryForIdiom:", [v4 userInterfaceIdiom]);
    [v5 visualStyleClassForStylableClass:objc_opt_class()];

    v6 = objc_opt_new();
    v7 = self->_defaultDriverProvider;
    self->_defaultDriverProvider = v6;

    defaultDriverProvider = self->_defaultDriverProvider;
  }

  return [(_UIDragInteractionDefaultDriverProvider *)defaultDriverProvider createDefaultDriversForDragInteraction:self];
}

void __52__UIDragInteraction__createDefaultInitiationDrivers__block_invoke()
{
  v0 = +[_UIVisualStyleRegistry defaultRegistry];
  v1 = objc_opt_class();
  [v0 registerVisualStyleClass:v1 forStylableClass:objc_opt_class()];

  v2 = [_UIVisualStyleRegistry registryForIdiom:1];
  v3 = objc_opt_class();
  [v2 registerVisualStyleClass:v3 forStylableClass:objc_opt_class()];

  v4 = [_UIVisualStyleRegistry registryForIdiom:0];
  v5 = objc_opt_class();
  [v4 registerVisualStyleClass:v5 forStylableClass:objc_opt_class()];

  v7 = [_UIVisualStyleRegistry registryForIdiom:5];
  v6 = objc_opt_class();
  [v7 registerVisualStyleClass:v6 forStylableClass:objc_opt_class()];
}

- (void)_updateDriverParameters
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_initiationDrivers;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        [(UIDragInteraction *)self _liftDelay];
        v10 = v9;
        _additionalTouchesCancelLift = [(UIDragInteraction *)self _additionalTouchesCancelLift];
        [(UIDragInteraction *)self _liftMoveHysteresis];
        v13 = v12;
        if ([(UIDragInteraction *)self _isPointerDriver:v8])
        {
          [(UIDragInteraction *)self _pointerLiftDelay];
          v10 = v14;
          [(UIDragInteraction *)self _pointerLiftMoveHysteresis];
          v13 = v15;
          v16 = 0.0;
        }

        else
        {
          v16 = _additionalTouchesCancelLift;
        }

        [v8 setAutomaticallyAddsFailureRelationships:{-[UIDragInteraction _automaticallyAddsFailureRelationships](self, "_automaticallyAddsFailureRelationships")}];
        [v8 setAllowsSimultaneousRecognitionDuringLift:{-[UIDragInteraction allowsSimultaneousRecognitionDuringLift](self, "allowsSimultaneousRecognitionDuringLift")}];
        [v8 setAdditionalTouchesCancelLift:v16 != 0.0];
        [v8 setLiftDelay:v10];
        [(UIDragInteraction *)self _competingLongPressDelay];
        [v8 setCompetingLongPressDelay:?];
        [v8 setCancellationTimerEnabled:{-[UIDragInteraction _isCancellationTimerEnabled](self, "_isCancellationTimerEnabled")}];
        [(UIDragInteraction *)self _cancellationDelay];
        [v8 setCancellationDelay:?];
        [v8 setLiftMoveHysteresis:v13];
        [v8 setEnabled:{-[UIDragInteraction isEnabled](self, "isEnabled")}];
        view = [(UIDragInteraction *)self view];
        [v8 setView:view];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (BOOL)isEnabled
{
  if (self->_didSetEnabled)
  {
    LOBYTE(v3) = self->_enabled;
  }

  else
  {
    if ([objc_opt_class() isEnabledByDefault])
    {
      v3 = 1;
    }

    else if ((*(&self->_delegateImplements + 2) & 2) != 0)
    {
      delegate = [(UIDragInteraction *)self delegate];
      v3 = [delegate _dragInteractionAllowsDragOverridingMasterSwitch:self];
    }

    else
    {
      v3 = 0;
    }

    if (self->_enabled != v3)
    {
      self->_enabled = v3;
      [(UIDragInteraction *)self _updateDriverParameters];
    }
  }

  return v3 & 1;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIDragInteraction)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v92.receiver = self;
  v92.super_class = UIDragInteraction;
  v5 = [(UIDragInteraction *)&v92 init];
  if (v5)
  {
    v6 = objc_opt_new();
    interactionEffect = v5->_interactionEffect;
    v5->_interactionEffect = v6;

    v5->_automaticallyAddsFailureRelationships = 1;
    v5->_additionalTouchesCancelLift = 0;
    v8 = _UIInternalPreferenceUsesDefault(&unk_1ED48ACD8, @"DragInteractionDefaultLiftDelay", _UIInternalPreferenceUpdateDouble);
    v9 = *&qword_1ED48ACE0;
    if (v8)
    {
      v9 = 0.325;
    }

    v5->_liftDelay = v9;
    v5->_pointerLiftDelay = _UIDragInteractionDefaultPointerLiftDelay();
    v5->_allowsPointerDragBeforeLiftDelay = 1;
    v10 = _UIInternalPreferenceUsesDefault(&unk_1ED48ACF8, @"DragInteractionDefaultCompetingLongPressDelay", _UIInternalPreferenceUpdateDouble);
    v11 = *&qword_1ED48AD00;
    if (v10)
    {
      v11 = 1.0;
    }

    v5->_competingLongPressDelay = v11;
    v12 = _UIInternalPreferenceUsesDefault(&_MergedGlobals_930, @"DragInteractionCancellationTimerEnabled", _UIInternalPreferenceUpdateBool);
    if (byte_1ED48ACC4)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v5->_cancellationTimerEnabled = v13;
    v14 = _UIInternalPreferenceUsesDefault(&unk_1ED48ACE8, @"DragInteractionDefaultCancellationDelay", _UIInternalPreferenceUpdateDouble);
    v15 = *&qword_1ED48ACF0;
    if (v14)
    {
      v15 = 3.0;
    }

    v5->_cancellationDelay = v15;
    v16 = _UIInternalPreferenceUsesDefault(&unk_1ED48AD08, @"DragInteractionDefaultLiftMoveHysteresis", _UIInternalPreferenceUpdateDouble);
    v17 = *&qword_1ED48AD10;
    if (v16)
    {
      v17 = 10.0;
    }

    v5->_liftMoveHysteresis = v17;
    v18 = _UIInternalPreferenceUsesDefault(&unk_1ED48AD38, @"DragInteractionDefaultPointerLiftMoveHysteresis", _UIInternalPreferenceUpdateDouble);
    v19 = *&qword_1ED48AD40;
    if (v18)
    {
      v19 = 3.0;
    }

    v5->_pointerLiftMoveHysteresis = v19;
    v20 = objc_alloc_init(_UIDragAddItemsGesture);
    [(UIGestureRecognizer *)v20 setName:@"com.apple.UIKit.dragAddingItems"];
    [(UIGestureRecognizer *)v20 setDelegate:v5];
    [(UIGestureRecognizer *)v20 setDelaysTouchesBegan:1];
    gestureRecognizerForAddingItems = v5->_gestureRecognizerForAddingItems;
    v5->_gestureRecognizerForAddingItems = v20;

    v22 = _UIInternalPreferenceUsesDefault(&algn_1ED48ACC5[3], @"DragInteractionAddItemsGestureConfiguration", _UIInternalPreferenceUpdateInteger);
    v23 = qword_1ED48ACD0;
    if (v22)
    {
      v23 = 0;
    }

    if (v23 >= 4)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    [(UIDragInteraction *)v5 _setAddItemsGestureConfiguration:v24];
    objc_storeWeak(&v5->_delegate, v4);
    v25 = v4;
    _UIValidateAccountBasedDelegateRespondsToSelector(v25, sel__dragInteraction_dataOwnerForSession_);
    if (objc_opt_respondsToSelector())
    {
      _UIValidateAccountBasedDelegateRespondsToSelector(v25, sel__dragInteraction_dataOwnerForAddingToSession_withTouchAtPoint_);
    }

    _createDefaultInitiationDrivers = [(UIDragInteraction *)v5 _createDefaultInitiationDrivers];
    [(UIDragInteraction *)v5 _setInitiationDrivers:_createDefaultInitiationDrivers];

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFFFELL | objc_opt_respondsToSelector() & 1);
    v27 = objc_opt_respondsToSelector();
    v28 = 2;
    if ((v27 & 1) == 0)
    {
      v28 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFFFDLL | v28);
    v29 = objc_opt_respondsToSelector();
    v30 = 4;
    if ((v29 & 1) == 0)
    {
      v30 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFFFBLL | v30);
    v31 = objc_opt_respondsToSelector();
    v32 = 8;
    if ((v31 & 1) == 0)
    {
      v32 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFFF7 | v32);
    v33 = objc_opt_respondsToSelector();
    v34 = 16;
    if ((v33 & 1) == 0)
    {
      v34 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFFEFLL | v34);
    v35 = objc_opt_respondsToSelector();
    v36 = 32;
    if ((v35 & 1) == 0)
    {
      v36 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFFDFLL | v36);
    v37 = objc_opt_respondsToSelector();
    v38 = 64;
    if ((v37 & 1) == 0)
    {
      v38 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFFBFLL | v38);
    v39 = objc_opt_respondsToSelector();
    v40 = 128;
    if ((v39 & 1) == 0)
    {
      v40 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFF7FLL | v40);
    v41 = objc_opt_respondsToSelector();
    v42 = 256;
    if ((v41 & 1) == 0)
    {
      v42 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFEFFLL | v42);
    v43 = objc_opt_respondsToSelector();
    v44 = 512;
    if ((v43 & 1) == 0)
    {
      v44 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFDFFLL | v44);
    v45 = objc_opt_respondsToSelector();
    v46 = 1024;
    if ((v45 & 1) == 0)
    {
      v46 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFFBFFLL | v46);
    v47 = objc_opt_respondsToSelector();
    v48 = 2048;
    if ((v47 & 1) == 0)
    {
      v48 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFF7FFLL | v48);
    v49 = objc_opt_respondsToSelector();
    v50 = 4096;
    if ((v49 & 1) == 0)
    {
      v50 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFEFFFLL | v50);
    v51 = objc_opt_respondsToSelector();
    v52 = 0x2000;
    if ((v51 & 1) == 0)
    {
      v52 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFDFFFLL | v52);
    v53 = objc_opt_respondsToSelector();
    v54 = 0x4000;
    if ((v53 & 1) == 0)
    {
      v54 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFFBFFFLL | v54);
    v55 = objc_opt_respondsToSelector();
    v56 = 0x8000;
    if ((v55 & 1) == 0)
    {
      v56 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFF7FFFLL | v56);
    v57 = objc_opt_respondsToSelector();
    v58 = 0x10000;
    if ((v57 & 1) == 0)
    {
      v58 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFEFFFFLL | v58);
    v59 = objc_opt_respondsToSelector();
    v60 = 0x20000;
    if ((v59 & 1) == 0)
    {
      v60 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFDFFFFLL | v60);
    v61 = objc_opt_respondsToSelector();
    v62 = 0x40000;
    if ((v61 & 1) == 0)
    {
      v62 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFFBFFFFLL | v62);
    v63 = objc_opt_respondsToSelector();
    v64 = 0x80000;
    if ((v63 & 1) == 0)
    {
      v64 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFF7FFFFLL | v64);
    v65 = objc_opt_respondsToSelector();
    v66 = 0x100000;
    if ((v65 & 1) == 0)
    {
      v66 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFEFFFFFLL | v66);
    v67 = objc_opt_respondsToSelector();
    v68 = 0x200000;
    if ((v67 & 1) == 0)
    {
      v68 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFDFFFFFLL | v68);
    v69 = objc_opt_respondsToSelector();
    v70 = 0x400000;
    if ((v69 & 1) == 0)
    {
      v70 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFFBFFFFFLL | v70);
    v71 = objc_opt_respondsToSelector();
    v72 = 0x800000;
    if ((v71 & 1) == 0)
    {
      v72 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFF7FFFFFLL | v72);
    v73 = objc_opt_respondsToSelector();
    v74 = 0x1000000;
    if ((v73 & 1) == 0)
    {
      v74 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFEFFFFFFLL | v74);
    v75 = objc_opt_respondsToSelector();
    v76 = 0x2000000;
    if ((v75 & 1) == 0)
    {
      v76 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFDFFFFFFLL | v76);
    v77 = objc_opt_respondsToSelector();
    v78 = 0x4000000;
    if ((v77 & 1) == 0)
    {
      v78 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFFBFFFFFFLL | v78);
    v79 = objc_opt_respondsToSelector();
    v80 = 0x8000000;
    if ((v79 & 1) == 0)
    {
      v80 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFF7FFFFFFLL | v80);
    v81 = objc_opt_respondsToSelector();
    v82 = 0x10000000;
    if ((v81 & 1) == 0)
    {
      v82 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFEFFFFFFFLL | v82);
    v83 = objc_opt_respondsToSelector();
    v84 = 0x20000000;
    if ((v83 & 1) == 0)
    {
      v84 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFFDFFFFFFFLL | v84);
    v85 = objc_opt_respondsToSelector();
    v86 = 0x100000000;
    if ((v85 & 1) == 0)
    {
      v86 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFEFFFFFFFFLL | v86);
    v87 = objc_opt_respondsToSelector();
    v88 = 0x200000000;
    if ((v87 & 1) == 0)
    {
      v88 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFDFFFFFFFFLL | v88);
    v89 = objc_opt_respondsToSelector();
    v90 = 0x400000000;
    if ((v89 & 1) == 0)
    {
      v90 = 0;
    }

    v5->_delegateImplements = (*&v5->_delegateImplements & 0xFFFFFFFBFFFFFFFFLL | v90);
  }

  return v5;
}

- (void)_setPresentationDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_presentationDelegate, delegateCopy);
  *&self->_presentationDelegateImplements = *&self->_presentationDelegateImplements & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_presentationDelegateImplements = *&self->_presentationDelegateImplements & 0xFD | v5;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_presentationDelegateImplements = *&self->_presentationDelegateImplements & 0xFB | v7;
}

- (void)_setInitiationDrivers:(id)drivers
{
  v28 = *MEMORY[0x1E69E9840];
  driversCopy = drivers;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_initiationDrivers;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        [v10 cancel];
        [v10 setView:0];
        [v10 setDelegate:0];
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if (!driversCopy || ![driversCopy count])
  {
    _createDefaultInitiationDrivers = [(UIDragInteraction *)self _createDefaultInitiationDrivers];

    driversCopy = _createDefaultInitiationDrivers;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = driversCopy;
  v13 = [(NSSet *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * j) setDelegate:{self, v18}];
      }

      v14 = [(NSSet *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  initiationDrivers = self->_initiationDrivers;
  self->_initiationDrivers = v12;

  [(UIDragInteraction *)self _updateDriverParameters];
}

- (id)_initiationDriver
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_initiationDrivers;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (![(UIDragInteraction *)self _isPointerDriver:v9, v12])
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isPointerDriver:(id)driver
{
  driverCopy = driver;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [driverCopy behavior];

  return v4;
}

+ (void)_cancelAllDrags
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = +[_UIDragSessionImpl activeSessions];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _cancelDrag];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_cancelDrag
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = +[_UIDragSessionImpl activeSessions];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        trackedInteractions = [v8 trackedInteractions];
        v10 = [trackedInteractions containsObject:self];

        if (v10)
        {
          [v8 _cancelDrag];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (BOOL)_isActive
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = +[_UIDragSessionImpl activeSessions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        trackedInteractions = [v8 trackedInteractions];
        if ([trackedInteractions containsObject:self])
        {
          _isActive = [v8 _isActive];

          if (_isActive)
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)setDragCancellationDelay:(double)delay
{
  if (setDragCancellationDelay__once != -1)
  {
    dispatch_once(&setDragCancellationDelay__once, &__block_literal_global_282);
  }

  [(UIDragInteraction *)self _setCancellationDelay:delay];
}

void __46__UIDragInteraction_setDragCancellationDelay___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_DragInteractionDefaultPointerLiftMoveHysteresis_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Please use [UIDragInteraction_Private _setCancellationDelay:] instead.", v1, 2u);
  }
}

- (void)setLiftDelay:(double)delay
{
  if (setLiftDelay__once != -1)
  {
    dispatch_once(&setLiftDelay__once, &__block_literal_global_285_0);
  }

  [(UIDragInteraction *)self _setLiftDelay:delay];
}

void __34__UIDragInteraction_setLiftDelay___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_DragInteractionDefaultPointerLiftMoveHysteresis_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Please use [UIDragInteraction_Private _setLiftDelay:] instead.", v1, 2u);
  }
}

- (double)liftDelay
{
  if (liftDelay_once != -1)
  {
    dispatch_once(&liftDelay_once, &__block_literal_global_287);
  }

  [(UIDragInteraction *)self _liftDelay];
  return result;
}

void __30__UIDragInteraction_liftDelay__block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_DragInteractionDefaultPointerLiftMoveHysteresis_block_invoke_3___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Please use [UIDragInteraction_Private _liftDelay] instead.", v1, 2u);
  }
}

- (void)_setAllowedTouchTypes:(id)types
{
  objc_storeStrong(&self->_allowedTouchTypes, types);
  typesCopy = types;
  [(UIGestureRecognizer *)self->_gestureRecognizerForAddingItems setAllowedTouchTypes:typesCopy];

  [(UIDragInteraction *)self _updateDriverParameters];
}

- (void)_setAllowsPointerDragBeforeLiftDelay:(BOOL)delay
{
  if (self->_allowsPointerDragBeforeLiftDelay != delay)
  {
    self->_allowsPointerDragBeforeLiftDelay = delay;
    _createDefaultInitiationDrivers = [(UIDragInteraction *)self _createDefaultInitiationDrivers];
    [(UIDragInteraction *)self _setInitiationDrivers:_createDefaultInitiationDrivers];
  }
}

- (void)_setAddItemsGestureConfiguration:(int64_t)configuration
{
  self->_addItemsGestureConfiguration = configuration;
  if (configuration <= 3)
  {
    v5 = qword_18A679CC8[configuration];
    [(UITapGestureRecognizer *)self->_gestureRecognizerForAddingItems setNumberOfTapsRequired:qword_18A679CA8[configuration]];
    gestureRecognizerForAddingItems = self->_gestureRecognizerForAddingItems;

    [(UITapGestureRecognizer *)gestureRecognizerForAddingItems setNumberOfTouchesRequired:v5];
  }
}

- (CGPoint)_locationInView:(id)view
{
  viewCopy = view;
  invocationType = [(UIDragInteractionContextImpl *)self->_interactionContext invocationType];
  if (invocationType == 1)
  {
    [(UIDragInteractionContextImpl *)self->_interactionContext initialLocation];
    v12 = v11;
    v14 = v13;
    view = [(UIDragInteraction *)self view];
    window = [view window];
    [window convertPoint:viewCopy toView:{v12, v14}];
    v3 = v16;
    v4 = v17;

    goto LABEL_5;
  }

  if (!invocationType)
  {
    view = [(UIDragInteractionContextImpl *)self->_interactionContext initiationTouch];
    [view locationInView:viewCopy];
    v3 = v9;
    v4 = v10;
LABEL_5:
  }

  v18 = v3;
  v19 = v4;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)_immediatelyBeginDragWithTouch:(id)touch completion:(id)completion
{
  touchCopy = touch;
  completionCopy = completion;
  if (!touchCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDragInteraction.m" lineNumber:680 description:{@"Invalid parameter not satisfying: %@", @"touch"}];
  }

  if (self->_interactionContext)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    view = [(UIDragInteraction *)self view];
    [touchCopy locationInView:view];
    v11 = v10;
    v13 = v12;

    view2 = [(UIDragInteraction *)self view];
    [view2 convertPoint:0 toView:{v11, v13}];
    v16 = v15;
    v18 = v17;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__UIDragInteraction__immediatelyBeginDragWithTouch_completion___block_invoke;
    v20[3] = &unk_1E7105F20;
    v20[4] = self;
    v21 = touchCopy;
    v22 = completionCopy;
    [(UIDragInteraction *)&self->super.isa _prepareForLiftAtPoint:v20 invocationType:v16 completion:v18, 0.0];
  }
}

void __63__UIDragInteraction__immediatelyBeginDragWithTouch_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10 && ([*(*(a1 + 32) + 32) setInitiationTouch:*(a1 + 40)], v3 = *(a1 + 32), objc_msgSend(v3, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_queryDelegate:forItemsForBeginningSession:", v4, v10), v5 = objc_claimAutoreleasedReturnValue(), v4, LODWORD(v4) = objc_msgSend(*(a1 + 32), "_beginLiftForItems:session:animated:", v5, v10, 0), v5, v4))
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
    [v6 _beginDragWithTouches:v7 itemUpdater:0];

    v8 = 1;
  }

  else
  {
    [*(a1 + 32) _finalizeLiftCancellation];
    v8 = 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }
}

- (void)_prepareForLiftAtPoint:(void *)point invocationType:(double)type completion:(double)completion
{
  pointCopy = point;
  if (self)
  {
    delegate = [self delegate];
    v13 = [[_UIDragSessionImpl alloc] initWithInteraction:self];
    v14 = objc_opt_new();
    v15 = self[4];
    self[4] = v14;

    [self[4] setInvocationType:a2];
    [self[4] setInitialLocation:{type, completion, a6}];
    objc_initWeak(&location, self[4]);
    objc_initWeak(&from, self);
    v16 = self[4];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__UIDragInteraction__prepareForLiftAtPoint_invocationType_completion___block_invoke;
    v21[3] = &unk_1E70F5A00;
    objc_copyWeak(&v22, &from);
    objc_copyWeak(&v23, &location);
    [v16 addCompletion:v21];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__UIDragInteraction__prepareForLiftAtPoint_invocationType_completion___block_invoke_2;
    v18[3] = &unk_1E7105F98;
    v18[4] = self;
    v20 = pointCopy;
    v17 = v13;
    v19 = v17;
    [self _prepareForSession:v17 completion:v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (void)_beginDragWithTouches:(id)touches itemUpdater:(id)updater
{
  v26 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  updaterCopy = updater;
  if (![(UIDragInteractionContextImpl *)self->_interactionContext hasBegunDrag])
  {
    [(UIDragInteractionContextImpl *)self->_interactionContext setHasBegunDrag:1];
    delegate = [(UIDragInteraction *)self delegate];
    view = [(UIDragInteraction *)self view];
    window = [view window];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    items = [(UIDragInteractionContextImpl *)self->_interactionContext items];
    v11 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(items);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          if (updaterCopy)
          {
            updaterCopy[2](updaterCopy, *(*(&v21 + 1) + 8 * i));
          }

          _targetedLiftPreview = [v15 _targetedLiftPreview];
          [(UIDragInteractionContextImpl *)self->_interactionContext initialLocation];
          [_targetedLiftPreview takeLiftAnchorPoint:window fromView:?];

          if (*(&self->_delegateImplements + 2))
          {
            v17 = [delegate _dragInteraction:self viewToSnapshotItem:v15];
            if (v17)
            {
              _targetedLiftPreview2 = [v15 _targetedLiftPreview];
              [_targetedLiftPreview2 _setViewToSnapshot:v17];
            }
          }
        }

        v12 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    view2 = [(UIDragInteraction *)self view];
    [view2 _beginDragWithInteractionTouches:touchesCopy];
  }
}

- (void)_handoffSession:(id)session
{
  [(_UIDragSessionImpl *)self->_preliminarySession _setInternalDragSession:session];
  preliminarySession = self->_preliminarySession;
  self->_preliminarySession = 0;
}

- (id)_queryDelegate:(id)delegate forItemsForBeginningSession:(id)session
{
  v36 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  sessionCopy = session;
  if (*&self->_delegateImplements)
  {
    v9 = [delegateCopy dragInteraction:self itemsForBeginningSession:sessionCopy];
    v8 = [v9 copy];

    if (!v8)
    {
      view = [(UIDragInteraction *)self view];
      v11 = [view _effectiveActivityItemsConfigurationForSender:self];

      if (v11)
      {
        v12 = MEMORY[0x1E695DF70];
        itemProvidersForActivityItemsConfiguration = [v11 itemProvidersForActivityItemsConfiguration];
        v8 = [v12 arrayWithCapacity:{objc_msgSend(itemProvidersForActivityItemsConfiguration, "count")}];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        itemProvidersForActivityItemsConfiguration2 = [v11 itemProvidersForActivityItemsConfiguration];
        v15 = [itemProvidersForActivityItemsConfiguration2 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v31;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(itemProvidersForActivityItemsConfiguration2);
              }

              v19 = [[UIDragItem alloc] initWithItemProvider:*(*(&v30 + 1) + 8 * i)];
              [v8 addObject:v19];
            }

            v16 = [itemProvidersForActivityItemsConfiguration2 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v16);
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v8;
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v26 + 1) + 8 * j) _setDragDropSession:{sessionCopy, v26}];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }

  return v20;
}

- (BOOL)_itemsForAddingToSession:(id)session atPoint:(CAPoint3D)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  sessionCopy = session;
  delegate = [(UIDragInteraction *)self delegate];
  v12 = sessionCopy;
  v13 = completionCopy;
  v14 = v13;
  if (self)
  {
    delegateImplements = self->_delegateImplements;
    if ((*&delegateImplements & 0x800) != 0)
    {
      v16 = [delegate dragInteraction:self itemsForAddingToSession:v12 withTouchAtPoint:{x, y}];
      (v14)[2](v14, v16);
      LOBYTE(self) = [v16 count] != 0;
    }

    else if ((*&delegateImplements & 0x20000000) != 0)
    {
      [delegate _dragInteraction:self itemsForAddingToSession:v12 withTouchAtPoint:v13 completion:{x, y}];
      LOBYTE(self) = 1;
    }

    else
    {
      (*(v13 + 2))(v13, MEMORY[0x1E695E0F0]);
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (void)_queryDelegate:(id)delegate forLiftPreviewsUsingItems:(id)items session:(id)session
{
  v24 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  itemsCopy = items;
  sessionCopy = session;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [itemsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        if ((*&self->_delegateImplements & 2) != 0)
        {
          v18 = [delegateCopy dragInteraction:self previewForLiftingItem:*(*(&v19 + 1) + 8 * v14) session:sessionCopy];
        }

        else
        {
          v16 = [UITargetedDragPreview alloc];
          view = [(UIDragInteraction *)self view];
          v18 = [(UITargetedDragPreview *)v16 initWithView:view];
        }

        [v15 setTargetedLiftPreview:v18];

        ++v14;
      }

      while (v12 != v14);
      v12 = [itemsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

- (uint64_t)_addItemsWithPoint:(double)point
{
  if (!self)
  {
    return 0;
  }

  v5 = *(self + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(self + 16);
  if (v6)
  {
    items = [v6 items];
    v8 = [items count];
    v9 = v8 != 0;
    if (v8)
    {
      [*(self + 24) addItems:items forDragSourceInteraction:self];
    }

    v10 = *(self + 16);
    *(self + 16) = 0;

    v11 = *(self + 24);
    *(self + 24) = 0;
  }

  else
  {
    v15 = v5;
    v16 = *(self + 24);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__UIDragInteraction__addItemsWithPoint___block_invoke;
    v18[3] = &unk_1E7105F48;
    v18[4] = self;
    v19 = v15;
    items = v15;
    v9 = [self _itemsForAddingToSession:v16 atPoint:v18 completion:{a2, point, a4}];
    v11 = v19;
  }

  return v9;
}

void __40__UIDragInteraction__addItemsWithPoint___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count] && *(*(a1 + 32) + 24) == *(a1 + 40))
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [v3 copy];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v17 + 1) + 8 * i) _setDragDropSession:{*(*(a1 + 32) + 24), v17}];
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v9 = *(a1 + 32);
    v10 = [v9 delegate];
    [v9 _queryDelegate:v10 forLiftPreviewsUsingItems:v4 session:*(*(a1 + 32) + 24)];

    v11 = [*(a1 + 32) delegate];
    v12 = *(a1 + 32);
    if ((*(v12 + 56) & 4) != 0)
    {
      v13 = objc_opt_new();
      [v13 pauseAnimation];
      v14 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:v13];
      [v11 dragInteraction:*(a1 + 32) willAnimateLiftWithAnimator:v14 session:*(*(a1 + 32) + 24)];
      [v13 startAnimation];
      [*(*(a1 + 32) + 24) addItems:v4 forDragSourceInteraction:?];
      [v13 stopAnimation:0];
      [v13 finishAnimationAtPosition:0];
    }

    else
    {
      [*(v12 + 24) addItems:v4 forDragSourceInteraction:?];
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 24);
    *(v15 + 24) = 0;
  }
}

- (void)_updateInteractionEffectWithContext:(id)context notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  contextCopy = context;
  if (os_variant_has_internal_diagnostics())
  {
    if (!contextCopy)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Attempting to update a nil context", buf, 2u);
      }
    }
  }

  else if (!contextCopy)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_updateInteractionEffectWithContext_notifyDelegate____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Attempting to update a nil context", v11, 2u);
    }
  }

  interactionEffect = [(UIDragInteraction *)self interactionEffect];
  [interactionEffect interaction:self didChangeWithContext:contextCopy];

  if (delegateCopy)
  {
    delegate = [(UIDragInteraction *)self delegate];
    if ((*(&self->_delegateImplements + 2) & 8) != 0)
    {
      [delegate _dragInteraction:self liftAnimationDidChangeDirection:{objc_msgSend(contextCopy, "state") == 0}];
    }
  }
}

- (UIDragInteractionEffect)interactionEffect
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_initiationDrivers;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          interactionEffect = [v8 interactionEffect];

          if (interactionEffect)
          {
            interactionEffect2 = [v8 interactionEffect];

            goto LABEL_12;
          }
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  interactionEffect2 = self->_interactionEffect;
LABEL_12:

  return interactionEffect2;
}

- (void)_accessibilityPrepareForDragAtPoint:(CAPoint3D)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  view = [(UIDragInteraction *)self view];
  [view convertPoint:0 toView:{x, y}];
  v10 = v9;
  v12 = v11;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__UIDragInteraction__accessibilityPrepareForDragAtPoint_completion___block_invoke;
  v14[3] = &unk_1E7105F70;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [(UIDragInteraction *)&self->super.isa _prepareForLiftAtPoint:v14 invocationType:v10 completion:v12, 0.0];
}

void __68__UIDragInteraction__accessibilityPrepareForDragAtPoint_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = *(a1 + 32);
    v4 = [v3 delegate];
    v5 = [v3 _queryDelegate:v4 forItemsForBeginningSession:v8];

    v6 = [*(a1 + 32) _beginLiftForItems:v5 session:v8 animated:0];
    [*(*(a1 + 32) + 32) setHasBegunDrag:v6];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (BOOL)_accessibilityAddItemsToDragSessionAtPoint:(CAPoint3D)point
{
  z = point.z;
  y = point.y;
  x = point.x;
  _accessibilityCanAddItemsToDragSession = [(UIDragInteraction *)self _accessibilityCanAddItemsToDragSession];
  if (_accessibilityCanAddItemsToDragSession)
  {
    v8 = _sessionsAvailableForAddingItems();
    anyObject = [v8 anyObject];
    sessionForAddingItems = self->_sessionForAddingItems;
    self->_sessionForAddingItems = anyObject;

    LOBYTE(_accessibilityCanAddItemsToDragSession) = [(UIDragInteraction *)self _addItemsWithPoint:y, z];
  }

  return _accessibilityCanAddItemsToDragSession;
}

- (BOOL)_accessibilityCanAddItemsToDragSession
{
  delegate = [(UIDragInteraction *)self delegate];
  if (![(UIDragInteraction *)self isEnabled])
  {
    goto LABEL_7;
  }

  v4 = _sessionsAvailableForAddingItems();
  if ([v4 count] != 1)
  {

    goto LABEL_7;
  }

  sessionForAddingItems = self->_sessionForAddingItems;

  if (sessionForAddingItems)
  {
LABEL_7:
    _supportsAddingItemsAsynchronously = 0;
    goto LABEL_8;
  }

  _supportsAddingItemsAsynchronously = [(UIDragInteraction *)self _delegateRespondsToAddingItems]|| [(UIDragInteraction *)self _supportsAddingItemsAsynchronously];
LABEL_8:

  return _supportsAddingItemsAsynchronously;
}

void __70__UIDragInteraction__prepareForLiftAtPoint_invocationType_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained[4])
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = WeakRetained[4];

      if (v4 == v5)
      {
        [WeakRetained _finalizeLiftCancellation];
      }
    }
  }
}

uint64_t __70__UIDragInteraction__prepareForLiftAtPoint_invocationType_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 32) setPreparedForLift:1];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)_prepareForSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  delegate = [(UIDragInteraction *)self delegate];
  if ((*(&self->_delegateImplements + 2) & 4) != 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__UIDragInteraction__prepareForSession_completion___block_invoke;
    v9[3] = &unk_1E70F0F78;
    v10 = completionCopy;
    [delegate _dragInteraction:self prepareForSession:sessionCopy completion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (BOOL)_beginLiftForItems:(id)items session:(id)session animated:(BOOL)animated
{
  animatedCopy = animated;
  v27 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  sessionCopy = session;
  v10 = [itemsCopy count];
  if (v10)
  {
    objc_storeStrong(&self->_preliminarySession, session);
    [(_UIDragSessionImpl *)self->_preliminarySession addItems:itemsCopy forDragSourceInteraction:self];
    [(UIDragInteractionContextImpl *)self->_interactionContext setItems:itemsCopy];
    [(UIDragInteractionContextImpl *)self->_interactionContext setShouldAnimateLift:animatedCopy];
    delegate = [(UIDragInteraction *)self delegate];
    [(UIDragInteraction *)self _queryDelegate:delegate forLiftPreviewsUsingItems:itemsCopy session:sessionCopy];
    if ((*&self->_delegateImplements & 4) != 0)
    {
      [delegate dragInteraction:self willAnimateLiftWithAnimator:self->_interactionContext session:sessionCopy];
    }

    v20 = delegate;
    v21 = sessionCopy;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = itemsCopy;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          _targetedLiftPreview = [*(*(&v22 + 1) + 8 * v16) _targetedLiftPreview];
          _previewContainer = [_targetedLiftPreview _previewContainer];
          [_previewContainer _animateLiftAlongsideAnimator:self->_interactionContext completion:&__block_literal_global_305];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [(UIDragInteractionContextImpl *)self->_interactionContext setState:1];
    [(UIDragInteraction *)self _updateInteractionEffectWithContext:self->_interactionContext notifyDelegate:0];

    sessionCopy = v21;
  }

  return v10 != 0;
}

- (void)_endLiftWithoutDragging
{
  interactionContext = self->_interactionContext;
  if (interactionContext)
  {
    [(UIDragInteractionContextImpl *)interactionContext setState:0];
    [(UIDragInteraction *)self _updateInteractionEffectWithContext:self->_interactionContext notifyDelegate:1];
    delegate = [(UIDragInteraction *)self delegate];
    if ((*(&self->_delegateImplements + 2) & 0x10) != 0)
    {
      v5 = delegate;
      [delegate _dragInteractionDidCancelLiftWithoutDragging:self];
      delegate = v5;
    }
  }
}

- (void)_cancelLift
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_initiationDrivers;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_finalizeLiftCancellation
{
  preliminarySession = self->_preliminarySession;
  self->_preliminarySession = 0;

  interactionContext = self->_interactionContext;
  self->_interactionContext = 0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v37 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (![(UIDragInteraction *)self isEnabled])
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (self->_gestureRecognizerForAddingItems == recognizerCopy && !self->_sessionForAddingItems)
  {
    delegate = [(UIDragInteraction *)self delegate];
    if (![(UIDragInteraction *)self _delegateRespondsToAddingItems]&& ![(UIDragInteraction *)self _supportsAddingItemsAsynchronously])
    {
      v9 = 0;
LABEL_31:

      goto LABEL_6;
    }

    v12 = _sessionsAvailableForAddingItems();
    if ([v12 count])
    {
      view = [(UIDragInteraction *)self view];
      [touchCopy locationInView:view];
      v15 = v14;
      v17 = v16;

      if ([v12 count] == 1)
      {
        anyObject = [v12 anyObject];
      }

      else if ((*(&self->_delegateImplements + 1) & 0x10) != 0)
      {
        allObjects = [v12 allObjects];
        anyObject = [delegate dragInteraction:self sessionForAddingItems:allObjects withTouchAtPoint:{v15, v17}];

        if (anyObject)
        {
          v20 = dyld_program_sdk_at_least();
          v21 = [v12 containsObject:anyObject];
          if (v20)
          {
            if ((v21 & 1) == 0)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v23 = NSStringFromSelector(sel_dragInteraction_sessionForAddingItems_withTouchAtPoint_);
              [currentHandler handleFailureInMethod:a2 object:self file:@"UIDragInteraction.m" lineNumber:1135 description:{@"delegate (%@) returned a object (%@) from %@ that is not a local drag session.", delegate, anyObject, v23}];
            }
          }

          else if ((v21 & 1) == 0)
          {
            v28 = *(__UILogGetCategoryCachedImpl("Assert", &gestureRecognizer_shouldReceiveTouch____s_category) + 8);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v29 = v28;
              v30 = NSStringFromSelector(sel_dragInteraction_sessionForAddingItems_withTouchAtPoint_);
              *buf = 138412802;
              v32 = delegate;
              v33 = 2112;
              v34 = anyObject;
              v35 = 2112;
              v36 = v30;
              _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "delegate (%@) returned a object (%@) from %@ that is not a local drag session.", buf, 0x20u);
            }
          }
        }
      }

      else
      {
        anyObject = 0;
      }

      if (_UIShouldEnforceOpenInRulesInAccountBasedApp())
      {
        _internalDragSession = [(_UIDragSessionImpl *)anyObject _internalDragSession];
        dataOwner = [_internalDragSession dataOwner];

        v26 = (*(&self->_delegateImplements + 3) & 2) != 0 ? [delegate _dragInteraction:self dataOwnerForAddingToSession:anyObject withTouchAtPoint:{v15, v17}] : 0;
        if (dataOwner != v26)
        {
          v9 = 0;
          goto LABEL_29;
        }
      }

      if (anyObject)
      {
        sessionForAddingItems = self->_sessionForAddingItems;
        self->_sessionForAddingItems = anyObject;
        v9 = 1;
        anyObject = sessionForAddingItems;
LABEL_29:

        goto LABEL_30;
      }
    }

    v9 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  gestureRecognizerForAddingItems = self->_gestureRecognizerForAddingItems;
  if (gestureRecognizerForAddingItems != begin)
  {
    return 0;
  }

  view = [(UIDragInteraction *)self view];
  [(UITapGestureRecognizer *)gestureRecognizerForAddingItems locationInView:view];
  v8 = v7;
  v10 = v9;

  return [(UIDragInteraction *)self _addItemsWithPoint:v8, v10, 0.0];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if (self->_gestureRecognizerForAddingItems == recognizer)
  {
    gestureRecognizerCopy = gestureRecognizer;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v4 = isKindOfClass ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  v9 = self->_gestureRecognizerForAddingItems == recognizerCopy && ([gestureRecognizerCopy _isGestureType:0] & 1) != 0;

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  v17 = *MEMORY[0x1E69E9840];
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_gestureRecognizerForAddingItems == recognizer)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = self->_initiationDrivers;
    v7 = [(NSSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v12 + 1) + 8 * i) isGestureRecognizerForDragInitiation:{gestureRecognizerCopy, v12}])
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [(NSSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  if (self->_gestureRecognizerForAddingItems == failed)
  {
    sessionForAddingItems = self->_sessionForAddingItems;
    self->_sessionForAddingItems = 0;
  }
}

- (id)_itemsToDragFromView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(_UIDragSessionImpl *)self->_preliminarySession items:view];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * i) _setSourceVisualTarget:self->_preliminarySession];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  items = [(_UIDragSessionImpl *)self->_preliminarySession items];
  v10 = [items copy];

  return v10;
}

- (BOOL)_viewRestrictsDragToSourceApp:(id)app
{
  if ((*&self->_delegateImplements & 0x20) == 0)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(UIDragInteraction *)self delegate];
  LOBYTE(selfCopy) = [delegate dragInteraction:selfCopy sessionIsRestrictedToDraggingApplication:selfCopy->_preliminarySession];

  return selfCopy;
}

- (void)_viewFailedToDrag:(id)drag
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_initiationDrivers;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_viewDragSessionProperties:(id)properties
{
  delegate = [(UIDragInteraction *)self delegate];
  v5 = delegate;
  if ((*(&self->_delegateImplements + 3) & 0x10) == 0 || ([delegate _dragInteraction:self sessionPropertiesForSession:self->_preliminarySession], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_opt_new();
    if ((*(&self->_delegateImplements + 3) & 4) != 0)
    {
      [v6 set_supportsSystemDrag:{objc_msgSend(v5, "_dragInteraction:sessionSupportsSystemDrag:", self, self->_preliminarySession)}];
    }
  }

  return v6;
}

- (id)_requiredContextIDsForDragSessionInView:(id)view
{
  viewCopy = view;
  delegate = [(UIDragInteraction *)self delegate];
  if (delegate == self || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [(UIDragInteraction *)delegate _requiredContextIDsForDragSessionInView:viewCopy];
  }

  return v6;
}

- (int64_t)_dataOwnerOfDragFromView:(id)view
{
  delegate = [(UIDragInteraction *)self delegate];
  v5 = delegate;
  if (*(&self->_delegateImplements + 3))
  {
    v6 = [delegate _dragInteraction:self dataOwnerForSession:self->_preliminarySession];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_session:(id)_session sourceOperationMaskForDraggingWithinApp:(BOOL)app
{
  appCopy = app;
  _sessionCopy = _session;
  delegate = [(UIDragInteraction *)self delegate];
  v8 = delegate;
  if (appCopy)
  {
    if ((*&self->_delegateImplements & 0x10) != 0 && ![delegate dragInteraction:self sessionAllowsMoveOperation:_sessionCopy])
    {
      v9 = 1;
    }

    else
    {
      v9 = 17;
    }
  }

  else
  {
    _internalDragSession = [_sessionCopy _internalDragSession];
    shouldCancelOnAppDeactivation = [_internalDragSession shouldCancelOnAppDeactivation];

    if (shouldCancelOnAppDeactivation)
    {
      v9 = 0;
    }

    else
    {
      _internalDragSession2 = [_sessionCopy _internalDragSession];
      restrictedToSourceApp = [_internalDragSession2 restrictedToSourceApp];

      v9 = restrictedToSourceApp ^ 1u;
    }
  }

  return v9;
}

- (BOOL)_sessionPrefersFullSizePreviews:(id)previews
{
  previewsCopy = previews;
  delegate = [(UIDragInteraction *)self delegate];
  v6 = delegate;
  if ((*&self->_delegateImplements & 0x40) != 0)
  {
    v7 = [delegate dragInteraction:self prefersFullSizePreviewsForSession:previewsCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_sessionDynamicallyUpdatesPrefersFullSizePreviews:(id)previews
{
  delegate = [(UIDragInteraction *)self delegate];
  v5 = delegate;
  if (*(&self->_delegateImplements + 4))
  {
    v6 = [delegate _dragInteractionDynamicallyUpdatesPrefersFullSizePreviews:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_sessionHandedOffDragImage:(id)image
{
  imageCopy = image;
  if (self->_interactionContext)
  {
    v10 = imageCopy;
    delegate = [(UIDragInteraction *)self delegate];
    v6 = delegate;
    if ((*&self->_delegateImplements & 8) != 0)
    {
      [delegate dragInteraction:self sessionWillBegin:v10];
    }

    [v10 _setSentSessionDidBegin:1];
    [(UIDragInteractionContextImpl *)self->_interactionContext setState:2];
    [(UIDragInteraction *)self _updateInteractionEffectWithContext:self->_interactionContext notifyDelegate:0];
    _sessionDidBegin = [(UIDragInteractionContextImpl *)self->_interactionContext _sessionDidBegin];

    if (_sessionDidBegin)
    {
      _sessionDidBegin2 = [(UIDragInteractionContextImpl *)self->_interactionContext _sessionDidBegin];
      (_sessionDidBegin2)[2](_sessionDidBegin2, v10);
    }

    interactionContext = self->_interactionContext;
    self->_interactionContext = 0;

    imageCopy = v10;
  }
}

- (void)_sessionDidMove:(id)move
{
  moveCopy = move;
  delegate = [(UIDragInteraction *)self delegate];
  v5 = delegate;
  if ((*&self->_delegateImplements & 0x80) != 0)
  {
    [delegate dragInteraction:self sessionDidMove:moveCopy];
  }
}

- (void)_session:(id)_session willAddItems:(id)items forInteraction:(id)interaction
{
  _sessionCopy = _session;
  itemsCopy = items;
  interactionCopy = interaction;
  delegate = [(UIDragInteraction *)self delegate];
  v11 = delegate;
  if ((*(&self->_delegateImplements + 1) & 0x20) != 0)
  {
    [delegate dragInteraction:self session:_sessionCopy willAddItems:itemsCopy forInteraction:interactionCopy];
  }
}

- (void)_sessionWillEnd:(id)end withOperation:(unint64_t)operation
{
  endCopy = end;
  interactionContext = self->_interactionContext;
  if (interactionContext && [(UIDragInteractionContextImpl *)interactionContext state]!= 2)
  {
    [(UIDragInteraction *)self _endLiftWithoutDragging];
    [(UIDragInteraction *)self _finalizeLiftCancellation];
    _presentationDelegate = [(UIDragInteraction *)self _presentationDelegate];
    v8 = _presentationDelegate;
    if ((*&self->_presentationDelegateImplements & 4) != 0)
    {
      [_presentationDelegate _dragInteractionPresentation:self sessionDidEnd:endCopy withoutBeginning:1];
    }
  }

  if ([endCopy _sentSessionDidBegin])
  {
    delegate = [(UIDragInteraction *)self delegate];
    v10 = delegate;
    if (*(&self->_delegateImplements + 1))
    {
      v11 = 2;
      if (operation == 16)
      {
        v11 = 3;
      }

      if (operation)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      [delegate dragInteraction:self session:endCopy willEndWithOperation:v12];
    }
  }
}

- (void)_sessionDidEnd:(id)end withOperation:(unint64_t)operation
{
  endCopy = end;
  if ([endCopy _sentSessionDidBegin])
  {
    delegate = [(UIDragInteraction *)self delegate];
    v7 = delegate;
    if ((*(&self->_delegateImplements + 1) & 2) != 0)
    {
      v8 = 2;
      if (operation == 16)
      {
        v8 = 3;
      }

      if (operation)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      [delegate dragInteraction:self session:endCopy didEndWithOperation:v9];
    }

    _presentationDelegate = [(UIDragInteraction *)self _presentationDelegate];
    v11 = _presentationDelegate;
    if ((*&self->_presentationDelegateImplements & 4) != 0)
    {
      [_presentationDelegate _dragInteractionPresentation:self sessionDidEnd:endCopy withoutBeginning:0];
    }
  }
}

- (id)_session:(id)_session targetedPreviewForCancellingItem:(id)item duiPreview:(id)preview snapshotView:(id)view container:(id)container
{
  itemCopy = item;
  previewCopy = preview;
  viewCopy = view;
  containerCopy = container;
  delegate = [(UIDragInteraction *)self delegate];
  if ((*(&self->_delegateImplements + 1) & 0x40) != 0 || ([(UIDragInteraction *)self _presentationDelegate], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    view = [(UIDragInteraction *)self view];
    window = [view window];
    if (window && (v18 = window, v19 = [view isHiddenOrHasHiddenAncestor], v18, !v19))
    {
      v21 = containerCopy;
      [view frame];
      v26 = v25 + v24 * 0.5;
      v29 = v28 + v27 * 0.5;
      v30 = [UIDragPreviewTarget alloc];
      superview = [view superview];
      v22 = [(UIPreviewTarget *)v30 initWithContainer:superview center:v26, v29];

      v23 = 1;
    }

    else
    {
      v20 = [UIDragPreviewTarget alloc];
      [viewCopy center];
      v21 = containerCopy;
      v22 = [(UIPreviewTarget *)v20 initWithContainer:containerCopy center:?];
      v23 = 0;
    }

    v32 = [UITargetedDragPreview alloc];
    parameters = [previewCopy parameters];
    v15 = [(UITargetedDragPreview *)v32 initWithView:viewCopy parameters:parameters target:v22];

    [(UITargetedPreview *)v15 _setDefaultPreview:1];
  }

  else
  {
    v21 = containerCopy;
    v23 = 1;
  }

  if ((*(&self->_delegateImplements + 1) & 0x40) == 0)
  {
    v34 = 0;
    goto LABEL_18;
  }

  v35 = [delegate dragInteraction:self previewForCancellingItem:itemCopy withDefault:v15];
  v34 = v35;
  if (((v35 == v15) & ~v23) != 0)
  {
    container = v35;
    goto LABEL_16;
  }

  if (!v35)
  {
    goto LABEL_18;
  }

  target = [(UITargetedPreview *)v35 target];
  container = [target container];

  _window = [container _window];
  if (!_window || (v39 = _window, v40 = [container isHiddenOrHasHiddenAncestor], v39, v40))
  {

LABEL_16:
    v34 = 0;
  }

LABEL_18:
  _presentationDelegate = [(UIDragInteraction *)self _presentationDelegate];
  v42 = _presentationDelegate;
  if (*&self->_presentationDelegateImplements)
  {
    v43 = [_presentationDelegate _dragInteractionPresentation:self previewForCancellingItem:itemCopy defaultPreview:v15 proposedPreview:v34];

    v34 = v43;
  }

  return v34;
}

- (void)_session:(id)_session item:(id)item willCancelWithAnimator:(id)animator
{
  itemCopy = item;
  animatorCopy = animator;
  if (itemCopy)
  {
    delegate = [(UIDragInteraction *)self delegate];
    if ((*(&self->_delegateImplements + 1) & 0x80) != 0)
    {
      v9 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:animatorCopy];
      [delegate dragInteraction:self item:itemCopy willAnimateCancelWithAnimator:v9];
    }

    else
    {
      v9 = 0;
    }

    _presentationDelegate = [(UIDragInteraction *)self _presentationDelegate];
    if ((*&self->_presentationDelegateImplements & 2) != 0)
    {
      if (!v9)
      {
        v9 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:animatorCopy];
      }

      [_presentationDelegate _dragInteractionPresentation:self item:itemCopy willAnimateCancelWithAnimator:v9];
    }

    _targetedLiftPreview = [itemCopy _targetedLiftPreview];
    _previewContainer = [_targetedLiftPreview _previewContainer];

    if (_previewContainer)
    {
      if (!v9)
      {
        v9 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:animatorCopy];
      }

      _targetedLiftPreview2 = [itemCopy _targetedLiftPreview];
      _previewContainer2 = [_targetedLiftPreview2 _previewContainer];
      [_previewContainer2 _animateLiftCancellationAlongsideAnimator:v9 completion:&__block_literal_global_315];
    }
  }
}

- (id)_session:(id)_session customSpringAnimationBehaviorForCancellingItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    delegate = [(UIDragInteraction *)self delegate];
    v7 = delegate;
    if ((*(&self->_delegateImplements + 3) & 8) != 0)
    {
      v8 = [delegate _dragInteraction:self customSpringAnimationBehaviorForCancellingItem:itemCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_sessionDidTransferItems:(id)items
{
  itemsCopy = items;
  delegate = [(UIDragInteraction *)self delegate];
  v5 = delegate;
  if ((*(&self->_delegateImplements + 1) & 4) != 0)
  {
    [delegate dragInteraction:self sessionDidTransferItems:itemsCopy];
  }
}

- (void)willMoveToView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_view);

    if (v7 != viewCopy)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = self->_initiationDrivers;
      v9 = [(NSSet *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v17 + 1) + 8 * v12++) setView:{0, v17}];
          }

          while (v10 != v12);
          v10 = [(NSSet *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      v13 = objc_loadWeakRetained(&self->_view);
      [v13 removeGestureRecognizer:self->_gestureRecognizerForAddingItems];

      v14 = objc_loadWeakRetained(&self->_view);
      _draggingSourceDelegate = [v14 _draggingSourceDelegate];

      if (_draggingSourceDelegate == self)
      {
        v16 = objc_loadWeakRetained(&self->_view);
        [v16 _setDraggingSourceDelegate:0];
      }
    }
  }
}

- (void)didMoveToView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  if (viewCopy)
  {
    [viewCopy addGestureRecognizer:self->_gestureRecognizerForAddingItems];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_initiationDrivers;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9++) setView:{viewCopy, v12}];
        }

        while (v7 != v9);
        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    delegate = [(UIDragInteraction *)self delegate];
    v11 = delegate;
    if ((*(&self->_delegateImplements + 4) & 2) == 0 || [delegate _dragInteractionShouldBecomeDraggingSourceDelegate:self])
    {
      [viewCopy _setDraggingSourceDelegate:{self, v12}];
    }
  }
}

- (BOOL)dragDriver:(id)driver shouldReceiveTouch:(id)touch
{
  if ((*(&self->_delegateImplements + 4) & 4) != 0)
  {
    touchCopy = touch;
    driverCopy = driver;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    view = [driverCopy view];

    [touchCopy locationInView:view];
    v11 = v10;
    v13 = v12;

    [WeakRetained _dragInteraction:self delayForLiftBeginningAtLocation:{v11, v13}];
    [(UIDragInteraction *)self _setLiftDelay:?];
  }

  return 1;
}

- (BOOL)dragDriver:(id)driver shouldBeginAtLocation3D:(CAPoint3D)d
{
  y = d.y;
  x = d.x;
  v34 = *MEMORY[0x1E69E9840];
  driverCopy = driver;
  if ([(UIDragInteraction *)self _isActive]&& !self->_allowsMultipleSessions)
  {
    LOBYTE(v18) = 0;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    view = self->_initiationDrivers;
    v9 = [(NSSet *)view countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(view);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          if (v13 != driverCopy && ([v13 isActive] & 1) != 0)
          {
            LOBYTE(v18) = 0;
            goto LABEL_28;
          }
        }

        v10 = [(NSSet *)view countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    interactionContext = self->_interactionContext;
    if (interactionContext && (-[UIDragInteractionContextImpl items](interactionContext, "items"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 count], v15, v16))
    {
      view = [(UIDragInteraction *)self view];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      items = [(UIDragInteractionContextImpl *)self->_interactionContext items];
      v18 = [items countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v18)
      {
        v19 = *v25;
        while (2)
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(items);
            }

            _targetedLiftPreview = [*(*(&v24 + 1) + 8 * j) _targetedLiftPreview];
            v22 = [_targetedLiftPreview containsPoint:view fromView:{x, y}];

            if (v22)
            {
              LOBYTE(v18) = 1;
              goto LABEL_27;
            }
          }

          v18 = [items countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:

LABEL_28:
    }

    else
    {
      LOBYTE(v18) = 1;
    }
  }

  return v18;
}

- (void)dragDriver:(id)driver prepareToLiftWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    [driver initialLocationInWindow];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
    v8 = 0.0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__UIDragInteraction_dragDriver_prepareToLiftWithCompletion___block_invoke;
  v12[3] = &unk_1E7105F70;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(UIDragInteraction *)&self->super.isa _prepareForLiftAtPoint:v12 invocationType:v8 completion:v10, 0.0];
}

void __60__UIDragInteraction_dragDriver_prepareToLiftWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 16), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v4 != 0);
}

- (BOOL)dragDriverBeginLift:(id)lift
{
  preliminarySession = self->_preliminarySession;
  self->_preliminarySession = 0;
  v6 = preliminarySession;
  liftCopy = lift;

  delegate = [(UIDragInteraction *)self delegate];
  v9 = [(UIDragInteraction *)self _queryDelegate:delegate forItemsForBeginningSession:v6];

  shouldAnimateLift = [liftCopy shouldAnimateLift];
  LOBYTE(liftCopy) = [(UIDragInteraction *)self _beginLiftForItems:v9 session:v6 animated:shouldAnimateLift];

  return liftCopy;
}

- (void)dragDriverCancelLift:(id)lift
{
  liftCopy = lift;
  interactionContext = self->_interactionContext;
  if (interactionContext)
  {
    v7 = liftCopy;
    hasBegunDrag = [(UIDragInteractionContextImpl *)interactionContext hasBegunDrag];
    liftCopy = v7;
    if (!hasBegunDrag)
    {
      [(UIDragInteraction *)self _endLiftWithoutDragging];
      [(UIDragInteraction *)self _finalizeLiftCancellation];
      liftCopy = v7;
    }
  }
}

- (void)dragDriver:(id)driver beginDragWithTouches:(id)touches itemUpdater:(id)updater beginningSessionHandler:(id)handler
{
  handlerCopy = handler;
  [(UIDragInteraction *)self _beginDragWithTouches:touches itemUpdater:updater];
  [(UIDragInteractionContextImpl *)self->_interactionContext set_sessionDidBegin:handlerCopy];
}

- (void)dragDriverCancelAddItemsGesture:(id)gesture
{
  v8[1] = *MEMORY[0x1E69E9840];
  _allActiveTouches = [(UIGestureRecognizer *)self->_gestureRecognizerForAddingItems _allActiveTouches];
  v5 = [_allActiveTouches count];

  if (!v5)
  {
    v6 = UIApp;
    v8[0] = self->_gestureRecognizerForAddingItems;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v6 _cancelGestureRecognizers:v7];
  }
}

- (BOOL)dragDriver:(id)driver shouldDelayCompetingGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  delegate = [(UIDragInteraction *)self delegate];
  v7 = delegate;
  if ((*(&self->_delegateImplements + 2) & 0x20) != 0)
  {
    v8 = [delegate _dragInteraction:self shouldDelayCompetingGestureRecognizer:recognizerCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)dragDriver:(id)driver canExcludeCompetingGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  delegate = [(UIDragInteraction *)self delegate];
  LOBYTE(self) = [delegate _dragInteraction:self canExcludeCompetingGestureRecognizer:recognizerCopy];

  return self;
}

- (BOOL)dragDriver:(id)driver competingGestureRecognizerShouldDelayLift:(id)lift
{
  liftCopy = lift;
  delegate = [(UIDragInteraction *)self delegate];
  v7 = delegate;
  if ((*(&self->_delegateImplements + 2) & 0x80) != 0)
  {
    v8 = [delegate _dragInteraction:self competingGestureRecognizerShouldDelayLift:liftCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setEnabled:(BOOL)enabled
{
  self->_didSetEnabled = 1;
  self->_enabled = enabled;
  [(UIDragInteraction *)self _updateDriverParameters];
}

- (_UIDragInteractionPresentationDelegate)_presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end