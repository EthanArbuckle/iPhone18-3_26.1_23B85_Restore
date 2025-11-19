@interface UIDragInteraction
+ (void)_cancelAllDrags;
- (BOOL)_accessibilityAddItemsToDragSessionAtPoint:(CAPoint3D)a3;
- (BOOL)_accessibilityCanAddItemsToDragSession;
- (BOOL)_beginLiftForItems:(id)a3 session:(id)a4 animated:(BOOL)a5;
- (BOOL)_isActive;
- (BOOL)_isPointerDriver:(id)a3;
- (BOOL)_itemsForAddingToSession:(id)a3 atPoint:(CAPoint3D)a4 completion:(id)a5;
- (BOOL)_sessionDynamicallyUpdatesPrefersFullSizePreviews:(id)a3;
- (BOOL)_sessionPrefersFullSizePreviews:(id)a3;
- (BOOL)_viewRestrictsDragToSourceApp:(id)a3;
- (BOOL)dragDriver:(id)a3 canExcludeCompetingGestureRecognizer:(id)a4;
- (BOOL)dragDriver:(id)a3 competingGestureRecognizerShouldDelayLift:(id)a4;
- (BOOL)dragDriver:(id)a3 shouldBeginAtLocation3D:(CAPoint3D)a4;
- (BOOL)dragDriver:(id)a3 shouldDelayCompetingGestureRecognizer:(id)a4;
- (BOOL)dragDriver:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)dragDriverBeginLift:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isEnabled;
- (CGPoint)_locationInView:(id)a3;
- (UIDragInteraction)initWithDelegate:(id)delegate;
- (UIDragInteractionEffect)interactionEffect;
- (UIView)view;
- (_UIDragInteractionPresentationDelegate)_presentationDelegate;
- (double)liftDelay;
- (id)_createDefaultInitiationDrivers;
- (id)_initiationDriver;
- (id)_itemsToDragFromView:(id)a3;
- (id)_queryDelegate:(id)a3 forItemsForBeginningSession:(id)a4;
- (id)_requiredContextIDsForDragSessionInView:(id)a3;
- (id)_session:(id)a3 customSpringAnimationBehaviorForCancellingItem:(id)a4;
- (id)_session:(id)a3 targetedPreviewForCancellingItem:(id)a4 duiPreview:(id)a5 snapshotView:(id)a6 container:(id)a7;
- (id)_viewDragSessionProperties:(id)a3;
- (id)delegate;
- (int64_t)_dataOwnerOfDragFromView:(id)a3;
- (uint64_t)_addItemsWithPoint:(double)a3;
- (unint64_t)_session:(id)a3 sourceOperationMaskForDraggingWithinApp:(BOOL)a4;
- (void)_accessibilityPrepareForDragAtPoint:(CAPoint3D)a3 completion:(id)a4;
- (void)_beginDragWithTouches:(id)a3 itemUpdater:(id)a4;
- (void)_cancelDrag;
- (void)_cancelLift;
- (void)_endLiftWithoutDragging;
- (void)_finalizeLiftCancellation;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_handoffSession:(id)a3;
- (void)_immediatelyBeginDragWithTouch:(id)a3 completion:(id)a4;
- (void)_prepareForLiftAtPoint:(void *)a3 invocationType:(double)a4 completion:(double)a5;
- (void)_prepareForSession:(id)a3 completion:(id)a4;
- (void)_queryDelegate:(id)a3 forLiftPreviewsUsingItems:(id)a4 session:(id)a5;
- (void)_session:(id)a3 item:(id)a4 willCancelWithAnimator:(id)a5;
- (void)_session:(id)a3 willAddItems:(id)a4 forInteraction:(id)a5;
- (void)_sessionDidEnd:(id)a3 withOperation:(unint64_t)a4;
- (void)_sessionDidMove:(id)a3;
- (void)_sessionDidTransferItems:(id)a3;
- (void)_sessionHandedOffDragImage:(id)a3;
- (void)_sessionWillEnd:(id)a3 withOperation:(unint64_t)a4;
- (void)_setAddItemsGestureConfiguration:(int64_t)a3;
- (void)_setAllowedTouchTypes:(id)a3;
- (void)_setAllowsPointerDragBeforeLiftDelay:(BOOL)a3;
- (void)_setInitiationDrivers:(id)a3;
- (void)_setPresentationDelegate:(id)a3;
- (void)_updateDriverParameters;
- (void)_updateInteractionEffectWithContext:(id)a3 notifyDelegate:(BOOL)a4;
- (void)_viewFailedToDrag:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)dragDriver:(id)a3 beginDragWithTouches:(id)a4 itemUpdater:(id)a5 beginningSessionHandler:(id)a6;
- (void)dragDriver:(id)a3 prepareToLiftWithCompletion:(id)a4;
- (void)dragDriverCancelAddItemsGesture:(id)a3;
- (void)dragDriverCancelLift:(id)a3;
- (void)setDragCancellationDelay:(double)a3;
- (void)setEnabled:(BOOL)enabled;
- (void)setLiftDelay:(double)a3;
- (void)willMoveToView:(id)a3;
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
        v11 = [(UIDragInteraction *)self _additionalTouchesCancelLift];
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
          v16 = v11;
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
        v17 = [(UIDragInteraction *)self view];
        [v8 setView:v17];

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
      v4 = [(UIDragInteraction *)self delegate];
      v3 = [v4 _dragInteractionAllowsDragOverridingMasterSwitch:self];
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

    v26 = [(UIDragInteraction *)v5 _createDefaultInitiationDrivers];
    [(UIDragInteraction *)v5 _setInitiationDrivers:v26];

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

- (void)_setPresentationDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_presentationDelegate, v4);
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

- (void)_setInitiationDrivers:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  if (!v4 || ![v4 count])
  {
    v11 = [(UIDragInteraction *)self _createDefaultInitiationDrivers];

    v4 = v11;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v4;
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

- (BOOL)_isPointerDriver:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 behavior];

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
        v9 = [v8 trackedInteractions];
        v10 = [v9 containsObject:self];

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
        v9 = [v8 trackedInteractions];
        if ([v9 containsObject:self])
        {
          v10 = [v8 _isActive];

          if (v10)
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

- (void)setDragCancellationDelay:(double)a3
{
  if (setDragCancellationDelay__once != -1)
  {
    dispatch_once(&setDragCancellationDelay__once, &__block_literal_global_282);
  }

  [(UIDragInteraction *)self _setCancellationDelay:a3];
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

- (void)setLiftDelay:(double)a3
{
  if (setLiftDelay__once != -1)
  {
    dispatch_once(&setLiftDelay__once, &__block_literal_global_285_0);
  }

  [(UIDragInteraction *)self _setLiftDelay:a3];
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

- (void)_setAllowedTouchTypes:(id)a3
{
  objc_storeStrong(&self->_allowedTouchTypes, a3);
  v5 = a3;
  [(UIGestureRecognizer *)self->_gestureRecognizerForAddingItems setAllowedTouchTypes:v5];

  [(UIDragInteraction *)self _updateDriverParameters];
}

- (void)_setAllowsPointerDragBeforeLiftDelay:(BOOL)a3
{
  if (self->_allowsPointerDragBeforeLiftDelay != a3)
  {
    self->_allowsPointerDragBeforeLiftDelay = a3;
    v5 = [(UIDragInteraction *)self _createDefaultInitiationDrivers];
    [(UIDragInteraction *)self _setInitiationDrivers:v5];
  }
}

- (void)_setAddItemsGestureConfiguration:(int64_t)a3
{
  self->_addItemsGestureConfiguration = a3;
  if (a3 <= 3)
  {
    v5 = qword_18A679CC8[a3];
    [(UITapGestureRecognizer *)self->_gestureRecognizerForAddingItems setNumberOfTapsRequired:qword_18A679CA8[a3]];
    gestureRecognizerForAddingItems = self->_gestureRecognizerForAddingItems;

    [(UITapGestureRecognizer *)gestureRecognizerForAddingItems setNumberOfTouchesRequired:v5];
  }
}

- (CGPoint)_locationInView:(id)a3
{
  v6 = a3;
  v7 = [(UIDragInteractionContextImpl *)self->_interactionContext invocationType];
  if (v7 == 1)
  {
    [(UIDragInteractionContextImpl *)self->_interactionContext initialLocation];
    v12 = v11;
    v14 = v13;
    v8 = [(UIDragInteraction *)self view];
    v15 = [v8 window];
    [v15 convertPoint:v6 toView:{v12, v14}];
    v3 = v16;
    v4 = v17;

    goto LABEL_5;
  }

  if (!v7)
  {
    v8 = [(UIDragInteractionContextImpl *)self->_interactionContext initiationTouch];
    [v8 locationInView:v6];
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

- (void)_immediatelyBeginDragWithTouch:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"UIDragInteraction.m" lineNumber:680 description:{@"Invalid parameter not satisfying: %@", @"touch"}];
  }

  if (self->_interactionContext)
  {
    if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    v9 = [(UIDragInteraction *)self view];
    [v7 locationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = [(UIDragInteraction *)self view];
    [v14 convertPoint:0 toView:{v11, v13}];
    v16 = v15;
    v18 = v17;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__UIDragInteraction__immediatelyBeginDragWithTouch_completion___block_invoke;
    v20[3] = &unk_1E7105F20;
    v20[4] = self;
    v21 = v7;
    v22 = v8;
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

- (void)_prepareForLiftAtPoint:(void *)a3 invocationType:(double)a4 completion:(double)a5
{
  v11 = a3;
  if (a1)
  {
    v12 = [a1 delegate];
    v13 = [[_UIDragSessionImpl alloc] initWithInteraction:a1];
    v14 = objc_opt_new();
    v15 = a1[4];
    a1[4] = v14;

    [a1[4] setInvocationType:a2];
    [a1[4] setInitialLocation:{a4, a5, a6}];
    objc_initWeak(&location, a1[4]);
    objc_initWeak(&from, a1);
    v16 = a1[4];
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
    v18[4] = a1;
    v20 = v11;
    v17 = v13;
    v19 = v17;
    [a1 _prepareForSession:v17 completion:v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (void)_beginDragWithTouches:(id)a3 itemUpdater:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(UIDragInteractionContextImpl *)self->_interactionContext hasBegunDrag])
  {
    [(UIDragInteractionContextImpl *)self->_interactionContext setHasBegunDrag:1];
    v20 = [(UIDragInteraction *)self delegate];
    v8 = [(UIDragInteraction *)self view];
    v9 = [v8 window];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [(UIDragInteractionContextImpl *)self->_interactionContext items];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          if (v7)
          {
            v7[2](v7, *(*(&v21 + 1) + 8 * i));
          }

          v16 = [v15 _targetedLiftPreview];
          [(UIDragInteractionContextImpl *)self->_interactionContext initialLocation];
          [v16 takeLiftAnchorPoint:v9 fromView:?];

          if (*(&self->_delegateImplements + 2))
          {
            v17 = [v20 _dragInteraction:self viewToSnapshotItem:v15];
            if (v17)
            {
              v18 = [v15 _targetedLiftPreview];
              [v18 _setViewToSnapshot:v17];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v19 = [(UIDragInteraction *)self view];
    [v19 _beginDragWithInteractionTouches:v6];
  }
}

- (void)_handoffSession:(id)a3
{
  [(_UIDragSessionImpl *)self->_preliminarySession _setInternalDragSession:a3];
  preliminarySession = self->_preliminarySession;
  self->_preliminarySession = 0;
}

- (id)_queryDelegate:(id)a3 forItemsForBeginningSession:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (*&self->_delegateImplements)
  {
    v9 = [v6 dragInteraction:self itemsForBeginningSession:v7];
    v8 = [v9 copy];

    if (!v8)
    {
      v10 = [(UIDragInteraction *)self view];
      v11 = [v10 _effectiveActivityItemsConfigurationForSender:self];

      if (v11)
      {
        v12 = MEMORY[0x1E695DF70];
        v13 = [v11 itemProvidersForActivityItemsConfiguration];
        v8 = [v12 arrayWithCapacity:{objc_msgSend(v13, "count")}];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = [v11 itemProvidersForActivityItemsConfiguration];
        v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
                objc_enumerationMutation(v14);
              }

              v19 = [[UIDragItem alloc] initWithItemProvider:*(*(&v30 + 1) + 8 * i)];
              [v8 addObject:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
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

        [*(*(&v26 + 1) + 8 * j) _setDragDropSession:{v7, v26}];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }

  return v20;
}

- (BOOL)_itemsForAddingToSession:(id)a3 atPoint:(CAPoint3D)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = a3;
  v11 = [(UIDragInteraction *)self delegate];
  v12 = v10;
  v13 = v9;
  v14 = v13;
  if (self)
  {
    delegateImplements = self->_delegateImplements;
    if ((*&delegateImplements & 0x800) != 0)
    {
      v16 = [v11 dragInteraction:self itemsForAddingToSession:v12 withTouchAtPoint:{x, y}];
      (v14)[2](v14, v16);
      LOBYTE(self) = [v16 count] != 0;
    }

    else if ((*&delegateImplements & 0x20000000) != 0)
    {
      [v11 _dragInteraction:self itemsForAddingToSession:v12 withTouchAtPoint:v13 completion:{x, y}];
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

- (void)_queryDelegate:(id)a3 forLiftPreviewsUsingItems:(id)a4 session:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        if ((*&self->_delegateImplements & 2) != 0)
        {
          v18 = [v8 dragInteraction:self previewForLiftingItem:*(*(&v19 + 1) + 8 * v14) session:v10];
        }

        else
        {
          v16 = [UITargetedDragPreview alloc];
          v17 = [(UIDragInteraction *)self view];
          v18 = [(UITargetedDragPreview *)v16 initWithView:v17];
        }

        [v15 setTargetedLiftPreview:v18];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

- (uint64_t)_addItemsWithPoint:(double)a3
{
  if (!a1)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = [v6 items];
    v8 = [v7 count];
    v9 = v8 != 0;
    if (v8)
    {
      [*(a1 + 24) addItems:v7 forDragSourceInteraction:a1];
    }

    v10 = *(a1 + 16);
    *(a1 + 16) = 0;

    v11 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  else
  {
    v15 = v5;
    v16 = *(a1 + 24);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__UIDragInteraction__addItemsWithPoint___block_invoke;
    v18[3] = &unk_1E7105F48;
    v18[4] = a1;
    v19 = v15;
    v7 = v15;
    v9 = [a1 _itemsForAddingToSession:v16 atPoint:v18 completion:{a2, a3, a4}];
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

- (void)_updateInteractionEffectWithContext:(id)a3 notifyDelegate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    if (!v6)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Attempting to update a nil context", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_updateInteractionEffectWithContext_notifyDelegate____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Attempting to update a nil context", v11, 2u);
    }
  }

  v7 = [(UIDragInteraction *)self interactionEffect];
  [v7 interaction:self didChangeWithContext:v6];

  if (v4)
  {
    v8 = [(UIDragInteraction *)self delegate];
    if ((*(&self->_delegateImplements + 2) & 8) != 0)
    {
      [v8 _dragInteraction:self liftAnimationDidChangeDirection:{objc_msgSend(v6, "state") == 0}];
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
          v9 = [v8 interactionEffect];

          if (v9)
          {
            v10 = [v8 interactionEffect];

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

  v10 = self->_interactionEffect;
LABEL_12:

  return v10;
}

- (void)_accessibilityPrepareForDragAtPoint:(CAPoint3D)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIDragInteraction *)self view];
  [v8 convertPoint:0 toView:{x, y}];
  v10 = v9;
  v12 = v11;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__UIDragInteraction__accessibilityPrepareForDragAtPoint_completion___block_invoke;
  v14[3] = &unk_1E7105F70;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
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

- (BOOL)_accessibilityAddItemsToDragSessionAtPoint:(CAPoint3D)a3
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v7 = [(UIDragInteraction *)self _accessibilityCanAddItemsToDragSession];
  if (v7)
  {
    v8 = _sessionsAvailableForAddingItems();
    v9 = [v8 anyObject];
    sessionForAddingItems = self->_sessionForAddingItems;
    self->_sessionForAddingItems = v9;

    LOBYTE(v7) = [(UIDragInteraction *)self _addItemsWithPoint:y, z];
  }

  return v7;
}

- (BOOL)_accessibilityCanAddItemsToDragSession
{
  v3 = [(UIDragInteraction *)self delegate];
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
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [(UIDragInteraction *)self _delegateRespondsToAddingItems]|| [(UIDragInteraction *)self _supportsAddingItemsAsynchronously];
LABEL_8:

  return v6;
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

- (void)_prepareForSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIDragInteraction *)self delegate];
  if ((*(&self->_delegateImplements + 2) & 4) != 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__UIDragInteraction__prepareForSession_completion___block_invoke;
    v9[3] = &unk_1E70F0F78;
    v10 = v7;
    [v8 _dragInteraction:self prepareForSession:v6 completion:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 1);
  }
}

- (BOOL)_beginLiftForItems:(id)a3 session:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 count];
  if (v10)
  {
    objc_storeStrong(&self->_preliminarySession, a4);
    [(_UIDragSessionImpl *)self->_preliminarySession addItems:v8 forDragSourceInteraction:self];
    [(UIDragInteractionContextImpl *)self->_interactionContext setItems:v8];
    [(UIDragInteractionContextImpl *)self->_interactionContext setShouldAnimateLift:v5];
    v11 = [(UIDragInteraction *)self delegate];
    [(UIDragInteraction *)self _queryDelegate:v11 forLiftPreviewsUsingItems:v8 session:v9];
    if ((*&self->_delegateImplements & 4) != 0)
    {
      [v11 dragInteraction:self willAnimateLiftWithAnimator:self->_interactionContext session:v9];
    }

    v20 = v11;
    v21 = v9;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v8;
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

          v17 = [*(*(&v22 + 1) + 8 * v16) _targetedLiftPreview];
          v18 = [v17 _previewContainer];
          [v18 _animateLiftAlongsideAnimator:self->_interactionContext completion:&__block_literal_global_305];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [(UIDragInteractionContextImpl *)self->_interactionContext setState:1];
    [(UIDragInteraction *)self _updateInteractionEffectWithContext:self->_interactionContext notifyDelegate:0];

    v9 = v21;
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
    v4 = [(UIDragInteraction *)self delegate];
    if ((*(&self->_delegateImplements + 2) & 0x10) != 0)
    {
      v5 = v4;
      [v4 _dragInteractionDidCancelLiftWithoutDragging:self];
      v4 = v5;
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![(UIDragInteraction *)self isEnabled])
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (self->_gestureRecognizerForAddingItems == v7 && !self->_sessionForAddingItems)
  {
    v11 = [(UIDragInteraction *)self delegate];
    if (![(UIDragInteraction *)self _delegateRespondsToAddingItems]&& ![(UIDragInteraction *)self _supportsAddingItemsAsynchronously])
    {
      v9 = 0;
LABEL_31:

      goto LABEL_6;
    }

    v12 = _sessionsAvailableForAddingItems();
    if ([v12 count])
    {
      v13 = [(UIDragInteraction *)self view];
      [v8 locationInView:v13];
      v15 = v14;
      v17 = v16;

      if ([v12 count] == 1)
      {
        v18 = [v12 anyObject];
      }

      else if ((*(&self->_delegateImplements + 1) & 0x10) != 0)
      {
        v19 = [v12 allObjects];
        v18 = [v11 dragInteraction:self sessionForAddingItems:v19 withTouchAtPoint:{v15, v17}];

        if (v18)
        {
          v20 = dyld_program_sdk_at_least();
          v21 = [v12 containsObject:v18];
          if (v20)
          {
            if ((v21 & 1) == 0)
            {
              v22 = [MEMORY[0x1E696AAA8] currentHandler];
              v23 = NSStringFromSelector(sel_dragInteraction_sessionForAddingItems_withTouchAtPoint_);
              [v22 handleFailureInMethod:a2 object:self file:@"UIDragInteraction.m" lineNumber:1135 description:{@"delegate (%@) returned a object (%@) from %@ that is not a local drag session.", v11, v18, v23}];
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
              v32 = v11;
              v33 = 2112;
              v34 = v18;
              v35 = 2112;
              v36 = v30;
              _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "delegate (%@) returned a object (%@) from %@ that is not a local drag session.", buf, 0x20u);
            }
          }
        }
      }

      else
      {
        v18 = 0;
      }

      if (_UIShouldEnforceOpenInRulesInAccountBasedApp())
      {
        v24 = [(_UIDragSessionImpl *)v18 _internalDragSession];
        v25 = [v24 dataOwner];

        v26 = (*(&self->_delegateImplements + 3) & 2) != 0 ? [v11 _dragInteraction:self dataOwnerForAddingToSession:v18 withTouchAtPoint:{v15, v17}] : 0;
        if (v25 != v26)
        {
          v9 = 0;
          goto LABEL_29;
        }
      }

      if (v18)
      {
        sessionForAddingItems = self->_sessionForAddingItems;
        self->_sessionForAddingItems = v18;
        v9 = 1;
        v18 = sessionForAddingItems;
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  gestureRecognizerForAddingItems = self->_gestureRecognizerForAddingItems;
  if (gestureRecognizerForAddingItems != a3)
  {
    return 0;
  }

  v6 = [(UIDragInteraction *)self view];
  [(UITapGestureRecognizer *)gestureRecognizerForAddingItems locationInView:v6];
  v8 = v7;
  v10 = v9;

  return [(UIDragInteraction *)self _addItemsWithPoint:v8, v10, 0.0];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (self->_gestureRecognizerForAddingItems == a3)
  {
    v5 = a4;
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

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = self->_gestureRecognizerForAddingItems == v6 && ([v7 _isGestureType:0] & 1) != 0;

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_gestureRecognizerForAddingItems == a3)
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

          if ([*(*(&v12 + 1) + 8 * i) isGestureRecognizerForDragInitiation:{v6, v12}])
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

- (void)_gestureRecognizerFailed:(id)a3
{
  if (self->_gestureRecognizerForAddingItems == a3)
  {
    sessionForAddingItems = self->_sessionForAddingItems;
    self->_sessionForAddingItems = 0;
  }
}

- (id)_itemsToDragFromView:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(_UIDragSessionImpl *)self->_preliminarySession items:a3];
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

  v9 = [(_UIDragSessionImpl *)self->_preliminarySession items];
  v10 = [v9 copy];

  return v10;
}

- (BOOL)_viewRestrictsDragToSourceApp:(id)a3
{
  if ((*&self->_delegateImplements & 0x20) == 0)
  {
    return 0;
  }

  v4 = self;
  v5 = [(UIDragInteraction *)self delegate];
  LOBYTE(v4) = [v5 dragInteraction:v4 sessionIsRestrictedToDraggingApplication:v4->_preliminarySession];

  return v4;
}

- (void)_viewFailedToDrag:(id)a3
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

- (id)_viewDragSessionProperties:(id)a3
{
  v4 = [(UIDragInteraction *)self delegate];
  v5 = v4;
  if ((*(&self->_delegateImplements + 3) & 0x10) == 0 || ([v4 _dragInteraction:self sessionPropertiesForSession:self->_preliminarySession], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_opt_new();
    if ((*(&self->_delegateImplements + 3) & 4) != 0)
    {
      [v6 set_supportsSystemDrag:{objc_msgSend(v5, "_dragInteraction:sessionSupportsSystemDrag:", self, self->_preliminarySession)}];
    }
  }

  return v6;
}

- (id)_requiredContextIDsForDragSessionInView:(id)a3
{
  v4 = a3;
  v5 = [(UIDragInteraction *)self delegate];
  if (v5 == self || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [(UIDragInteraction *)v5 _requiredContextIDsForDragSessionInView:v4];
  }

  return v6;
}

- (int64_t)_dataOwnerOfDragFromView:(id)a3
{
  v4 = [(UIDragInteraction *)self delegate];
  v5 = v4;
  if (*(&self->_delegateImplements + 3))
  {
    v6 = [v4 _dragInteraction:self dataOwnerForSession:self->_preliminarySession];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_session:(id)a3 sourceOperationMaskForDraggingWithinApp:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIDragInteraction *)self delegate];
  v8 = v7;
  if (v4)
  {
    if ((*&self->_delegateImplements & 0x10) != 0 && ![v7 dragInteraction:self sessionAllowsMoveOperation:v6])
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
    v10 = [v6 _internalDragSession];
    v11 = [v10 shouldCancelOnAppDeactivation];

    if (v11)
    {
      v9 = 0;
    }

    else
    {
      v12 = [v6 _internalDragSession];
      v13 = [v12 restrictedToSourceApp];

      v9 = v13 ^ 1u;
    }
  }

  return v9;
}

- (BOOL)_sessionPrefersFullSizePreviews:(id)a3
{
  v4 = a3;
  v5 = [(UIDragInteraction *)self delegate];
  v6 = v5;
  if ((*&self->_delegateImplements & 0x40) != 0)
  {
    v7 = [v5 dragInteraction:self prefersFullSizePreviewsForSession:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_sessionDynamicallyUpdatesPrefersFullSizePreviews:(id)a3
{
  v4 = [(UIDragInteraction *)self delegate];
  v5 = v4;
  if (*(&self->_delegateImplements + 4))
  {
    v6 = [v4 _dragInteractionDynamicallyUpdatesPrefersFullSizePreviews:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_sessionHandedOffDragImage:(id)a3
{
  v4 = a3;
  if (self->_interactionContext)
  {
    v10 = v4;
    v5 = [(UIDragInteraction *)self delegate];
    v6 = v5;
    if ((*&self->_delegateImplements & 8) != 0)
    {
      [v5 dragInteraction:self sessionWillBegin:v10];
    }

    [v10 _setSentSessionDidBegin:1];
    [(UIDragInteractionContextImpl *)self->_interactionContext setState:2];
    [(UIDragInteraction *)self _updateInteractionEffectWithContext:self->_interactionContext notifyDelegate:0];
    v7 = [(UIDragInteractionContextImpl *)self->_interactionContext _sessionDidBegin];

    if (v7)
    {
      v8 = [(UIDragInteractionContextImpl *)self->_interactionContext _sessionDidBegin];
      (v8)[2](v8, v10);
    }

    interactionContext = self->_interactionContext;
    self->_interactionContext = 0;

    v4 = v10;
  }
}

- (void)_sessionDidMove:(id)a3
{
  v6 = a3;
  v4 = [(UIDragInteraction *)self delegate];
  v5 = v4;
  if ((*&self->_delegateImplements & 0x80) != 0)
  {
    [v4 dragInteraction:self sessionDidMove:v6];
  }
}

- (void)_session:(id)a3 willAddItems:(id)a4 forInteraction:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(UIDragInteraction *)self delegate];
  v11 = v10;
  if ((*(&self->_delegateImplements + 1) & 0x20) != 0)
  {
    [v10 dragInteraction:self session:v12 willAddItems:v8 forInteraction:v9];
  }
}

- (void)_sessionWillEnd:(id)a3 withOperation:(unint64_t)a4
{
  v13 = a3;
  interactionContext = self->_interactionContext;
  if (interactionContext && [(UIDragInteractionContextImpl *)interactionContext state]!= 2)
  {
    [(UIDragInteraction *)self _endLiftWithoutDragging];
    [(UIDragInteraction *)self _finalizeLiftCancellation];
    v7 = [(UIDragInteraction *)self _presentationDelegate];
    v8 = v7;
    if ((*&self->_presentationDelegateImplements & 4) != 0)
    {
      [v7 _dragInteractionPresentation:self sessionDidEnd:v13 withoutBeginning:1];
    }
  }

  if ([v13 _sentSessionDidBegin])
  {
    v9 = [(UIDragInteraction *)self delegate];
    v10 = v9;
    if (*(&self->_delegateImplements + 1))
    {
      v11 = 2;
      if (a4 == 16)
      {
        v11 = 3;
      }

      if (a4)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      [v9 dragInteraction:self session:v13 willEndWithOperation:v12];
    }
  }
}

- (void)_sessionDidEnd:(id)a3 withOperation:(unint64_t)a4
{
  v12 = a3;
  if ([v12 _sentSessionDidBegin])
  {
    v6 = [(UIDragInteraction *)self delegate];
    v7 = v6;
    if ((*(&self->_delegateImplements + 1) & 2) != 0)
    {
      v8 = 2;
      if (a4 == 16)
      {
        v8 = 3;
      }

      if (a4)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      [v6 dragInteraction:self session:v12 didEndWithOperation:v9];
    }

    v10 = [(UIDragInteraction *)self _presentationDelegate];
    v11 = v10;
    if ((*&self->_presentationDelegateImplements & 4) != 0)
    {
      [v10 _dragInteractionPresentation:self sessionDidEnd:v12 withoutBeginning:0];
    }
  }
}

- (id)_session:(id)a3 targetedPreviewForCancellingItem:(id)a4 duiPreview:(id)a5 snapshotView:(id)a6 container:(id)a7
{
  v11 = a4;
  v45 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [(UIDragInteraction *)self delegate];
  if ((*(&self->_delegateImplements + 1) & 0x40) != 0 || ([(UIDragInteraction *)self _presentationDelegate], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v16 = [(UIDragInteraction *)self view];
    v17 = [v16 window];
    if (v17 && (v18 = v17, v19 = [v16 isHiddenOrHasHiddenAncestor], v18, !v19))
    {
      v21 = v13;
      [v16 frame];
      v26 = v25 + v24 * 0.5;
      v29 = v28 + v27 * 0.5;
      v30 = [UIDragPreviewTarget alloc];
      v31 = [v16 superview];
      v22 = [(UIPreviewTarget *)v30 initWithContainer:v31 center:v26, v29];

      v23 = 1;
    }

    else
    {
      v20 = [UIDragPreviewTarget alloc];
      [v12 center];
      v21 = v13;
      v22 = [(UIPreviewTarget *)v20 initWithContainer:v13 center:?];
      v23 = 0;
    }

    v32 = [UITargetedDragPreview alloc];
    v33 = [v45 parameters];
    v15 = [(UITargetedDragPreview *)v32 initWithView:v12 parameters:v33 target:v22];

    [(UITargetedPreview *)v15 _setDefaultPreview:1];
  }

  else
  {
    v21 = v13;
    v23 = 1;
  }

  if ((*(&self->_delegateImplements + 1) & 0x40) == 0)
  {
    v34 = 0;
    goto LABEL_18;
  }

  v35 = [v14 dragInteraction:self previewForCancellingItem:v11 withDefault:v15];
  v34 = v35;
  if (((v35 == v15) & ~v23) != 0)
  {
    v37 = v35;
    goto LABEL_16;
  }

  if (!v35)
  {
    goto LABEL_18;
  }

  v36 = [(UITargetedPreview *)v35 target];
  v37 = [v36 container];

  v38 = [v37 _window];
  if (!v38 || (v39 = v38, v40 = [v37 isHiddenOrHasHiddenAncestor], v39, v40))
  {

LABEL_16:
    v34 = 0;
  }

LABEL_18:
  v41 = [(UIDragInteraction *)self _presentationDelegate];
  v42 = v41;
  if (*&self->_presentationDelegateImplements)
  {
    v43 = [v41 _dragInteractionPresentation:self previewForCancellingItem:v11 defaultPreview:v15 proposedPreview:v34];

    v34 = v43;
  }

  return v34;
}

- (void)_session:(id)a3 item:(id)a4 willCancelWithAnimator:(id)a5
{
  v15 = a4;
  v7 = a5;
  if (v15)
  {
    v8 = [(UIDragInteraction *)self delegate];
    if ((*(&self->_delegateImplements + 1) & 0x80) != 0)
    {
      v9 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:v7];
      [v8 dragInteraction:self item:v15 willAnimateCancelWithAnimator:v9];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(UIDragInteraction *)self _presentationDelegate];
    if ((*&self->_presentationDelegateImplements & 2) != 0)
    {
      if (!v9)
      {
        v9 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:v7];
      }

      [v10 _dragInteractionPresentation:self item:v15 willAnimateCancelWithAnimator:v9];
    }

    v11 = [v15 _targetedLiftPreview];
    v12 = [v11 _previewContainer];

    if (v12)
    {
      if (!v9)
      {
        v9 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:v7];
      }

      v13 = [v15 _targetedLiftPreview];
      v14 = [v13 _previewContainer];
      [v14 _animateLiftCancellationAlongsideAnimator:v9 completion:&__block_literal_global_315];
    }
  }
}

- (id)_session:(id)a3 customSpringAnimationBehaviorForCancellingItem:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [(UIDragInteraction *)self delegate];
    v7 = v6;
    if ((*(&self->_delegateImplements + 3) & 8) != 0)
    {
      v8 = [v6 _dragInteraction:self customSpringAnimationBehaviorForCancellingItem:v5];
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

- (void)_sessionDidTransferItems:(id)a3
{
  v6 = a3;
  v4 = [(UIDragInteraction *)self delegate];
  v5 = v4;
  if ((*(&self->_delegateImplements + 1) & 4) != 0)
  {
    [v4 dragInteraction:self sessionDidTransferItems:v6];
  }
}

- (void)willMoveToView:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_view);

    if (v7 != v4)
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
      v15 = [v14 _draggingSourceDelegate];

      if (v15 == self)
      {
        v16 = objc_loadWeakRetained(&self->_view);
        [v16 _setDraggingSourceDelegate:0];
      }
    }
  }
}

- (void)didMoveToView:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_storeWeak(&self->_view, v4);
  if (v4)
  {
    [v4 addGestureRecognizer:self->_gestureRecognizerForAddingItems];
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

          [*(*(&v12 + 1) + 8 * v9++) setView:{v4, v12}];
        }

        while (v7 != v9);
        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v10 = [(UIDragInteraction *)self delegate];
    v11 = v10;
    if ((*(&self->_delegateImplements + 4) & 2) == 0 || [v10 _dragInteractionShouldBecomeDraggingSourceDelegate:self])
    {
      [v4 _setDraggingSourceDelegate:{self, v12}];
    }
  }
}

- (BOOL)dragDriver:(id)a3 shouldReceiveTouch:(id)a4
{
  if ((*(&self->_delegateImplements + 4) & 4) != 0)
  {
    v6 = a4;
    v7 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [v7 view];

    [v6 locationInView:v9];
    v11 = v10;
    v13 = v12;

    [WeakRetained _dragInteraction:self delayForLiftBeginningAtLocation:{v11, v13}];
    [(UIDragInteraction *)self _setLiftDelay:?];
  }

  return 1;
}

- (BOOL)dragDriver:(id)a3 shouldBeginAtLocation3D:(CAPoint3D)a4
{
  y = a4.y;
  x = a4.x;
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
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
    v8 = self->_initiationDrivers;
    v9 = [(NSSet *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          if (v13 != v7 && ([v13 isActive] & 1) != 0)
          {
            LOBYTE(v18) = 0;
            goto LABEL_28;
          }
        }

        v10 = [(NSSet *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
      v8 = [(UIDragInteraction *)self view];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = [(UIDragInteractionContextImpl *)self->_interactionContext items];
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v18)
      {
        v19 = *v25;
        while (2)
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = [*(*(&v24 + 1) + 8 * j) _targetedLiftPreview];
            v22 = [v21 containsPoint:v8 fromView:{x, y}];

            if (v22)
            {
              LOBYTE(v18) = 1;
              goto LABEL_27;
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (void)dragDriver:(id)a3 prepareToLiftWithCompletion:(id)a4
{
  v6 = a4;
  if (self)
  {
    [a3 initialLocationInWindow];
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
  v13 = v6;
  v11 = v6;
  [(UIDragInteraction *)&self->super.isa _prepareForLiftAtPoint:v12 invocationType:v8 completion:v10, 0.0];
}

void __60__UIDragInteraction_dragDriver_prepareToLiftWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 16), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v4 != 0);
}

- (BOOL)dragDriverBeginLift:(id)a3
{
  preliminarySession = self->_preliminarySession;
  self->_preliminarySession = 0;
  v6 = preliminarySession;
  v7 = a3;

  v8 = [(UIDragInteraction *)self delegate];
  v9 = [(UIDragInteraction *)self _queryDelegate:v8 forItemsForBeginningSession:v6];

  v10 = [v7 shouldAnimateLift];
  LOBYTE(v7) = [(UIDragInteraction *)self _beginLiftForItems:v9 session:v6 animated:v10];

  return v7;
}

- (void)dragDriverCancelLift:(id)a3
{
  v4 = a3;
  interactionContext = self->_interactionContext;
  if (interactionContext)
  {
    v7 = v4;
    v6 = [(UIDragInteractionContextImpl *)interactionContext hasBegunDrag];
    v4 = v7;
    if (!v6)
    {
      [(UIDragInteraction *)self _endLiftWithoutDragging];
      [(UIDragInteraction *)self _finalizeLiftCancellation];
      v4 = v7;
    }
  }
}

- (void)dragDriver:(id)a3 beginDragWithTouches:(id)a4 itemUpdater:(id)a5 beginningSessionHandler:(id)a6
{
  v9 = a6;
  [(UIDragInteraction *)self _beginDragWithTouches:a4 itemUpdater:a5];
  [(UIDragInteractionContextImpl *)self->_interactionContext set_sessionDidBegin:v9];
}

- (void)dragDriverCancelAddItemsGesture:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [(UIGestureRecognizer *)self->_gestureRecognizerForAddingItems _allActiveTouches];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = UIApp;
    v8[0] = self->_gestureRecognizerForAddingItems;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v6 _cancelGestureRecognizers:v7];
  }
}

- (BOOL)dragDriver:(id)a3 shouldDelayCompetingGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(UIDragInteraction *)self delegate];
  v7 = v6;
  if ((*(&self->_delegateImplements + 2) & 0x20) != 0)
  {
    v8 = [v6 _dragInteraction:self shouldDelayCompetingGestureRecognizer:v5];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)dragDriver:(id)a3 canExcludeCompetingGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(UIDragInteraction *)self delegate];
  LOBYTE(self) = [v6 _dragInteraction:self canExcludeCompetingGestureRecognizer:v5];

  return self;
}

- (BOOL)dragDriver:(id)a3 competingGestureRecognizerShouldDelayLift:(id)a4
{
  v5 = a4;
  v6 = [(UIDragInteraction *)self delegate];
  v7 = v6;
  if ((*(&self->_delegateImplements + 2) & 0x80) != 0)
  {
    v8 = [v6 _dragInteraction:self competingGestureRecognizerShouldDelayLift:v5];
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