@interface SBBarSwipeAffordanceView
- (BOOL)ignoresLuminance;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBBarSwipeAffordanceDelegate)delegate;
- (SBBarSwipeAffordanceView)initWithFrame:(CGRect)frame systemGestureManager:(id)manager enableGestures:(BOOL)gestures;
- (id)_hideHomeAffordanceAnimationSettings;
- (id)_unhideHomeAffordanceAnimationSettings;
- (id)customScreenEdgePanGestureRecognizerForHomeGestureInteraction:(id)interaction;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)_effectiveOrientationAccountingForTransforms;
- (int64_t)colorBias;
- (unint64_t)homeGestureInteraction:(id)interaction systemGestureTypeForType:(int64_t)type;
- (void)_activate;
- (void)_deactivate;
- (void)_runBlockOnObservers:(id)observers;
- (void)_updateHomeAffordanceVisibility;
- (void)addObserver:(id)observer;
- (void)barSwipeBehaviorActionPerformed:(id)performed;
- (void)didAddSubview:(id)subview;
- (void)layoutSubviews;
- (void)setActive:(BOOL)active;
- (void)setColorBias:(int64_t)bias;
- (void)setDelegate:(id)delegate;
- (void)setHomeAffordanceHidden:(BOOL)hidden;
- (void)setIgnoresLuminance:(BOOL)luminance;
- (void)setKeyboardHomeAffordanceAssertion:(id)assertion;
@end

@implementation SBBarSwipeAffordanceView

- (SBBarSwipeAffordanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_activate
{
  [(SBHomeGestureInteraction *)self->_homeGestureInteraction setEnabled:1];
  grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
  _unhideHomeAffordanceAnimationSettings = [(SBBarSwipeAffordanceView *)self _unhideHomeAffordanceAnimationSettings];
  [grabberView setHidden:0 forReason:@"SBBarSwipeAffordanceView" withAnimationSettings:_unhideHomeAffordanceAnimationSettings];

  grabberView2 = [(SBBarSwipeAffordanceView *)self grabberView];
  [grabberView2 setHomeAffordanceInteractionEnabled:1];
}

- (id)_unhideHomeAffordanceAnimationSettings
{
  delegate = [(SBBarSwipeAffordanceView *)self delegate];
  if (!delegate || (objc_opt_respondsToSelector() & 1) == 0 || ([delegate unhideAnimationSettingsForBarSwipeAffordanceView:self], (bSAnimationSettings = objc_claimAutoreleasedReturnValue()) == 0))
  {
    rootSettings = [MEMORY[0x277D65E80] rootSettings];
    unhideForHomeGestureOwnershipAnimationSettings = [rootSettings unhideForHomeGestureOwnershipAnimationSettings];
    bSAnimationSettings = [unhideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];
  }

  return bSAnimationSettings;
}

- (void)_deactivate
{
  [(SBHomeGestureInteraction *)self->_homeGestureInteraction setEnabled:0];
  grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
  _hideHomeAffordanceAnimationSettings = [(SBBarSwipeAffordanceView *)self _hideHomeAffordanceAnimationSettings];
  [grabberView setHidden:1 forReason:@"SBBarSwipeAffordanceView" withAnimationSettings:_hideHomeAffordanceAnimationSettings];

  grabberView2 = [(SBBarSwipeAffordanceView *)self grabberView];
  [grabberView2 setHomeAffordanceInteractionEnabled:0];
}

- (id)_hideHomeAffordanceAnimationSettings
{
  delegate = [(SBBarSwipeAffordanceView *)self delegate];
  if (!delegate || (objc_opt_respondsToSelector() & 1) == 0 || ([delegate hideAnimationSettingsForBarSwipeAffordanceView:self], (bSAnimationSettings = objc_claimAutoreleasedReturnValue()) == 0))
  {
    rootSettings = [MEMORY[0x277D65E80] rootSettings];
    hideForHomeGestureOwnershipAnimationSettings = [rootSettings hideForHomeGestureOwnershipAnimationSettings];
    bSAnimationSettings = [hideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];
  }

  return bSAnimationSettings;
}

- (void)layoutSubviews
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = SBBarSwipeAffordanceView;
  [(SBBarSwipeAffordanceView *)&v20 layoutSubviews];
  [(SBBarSwipeAffordanceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [(SBBarSwipeAffordanceView *)self subviews];
  v12 = [subviews countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v16 + 1) + 8 * v15++) setFrame:{v4, v6, v8, v10}];
      }

      while (v13 != v15);
      v13 = [subviews countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v13);
  }
}

- (SBBarSwipeAffordanceView)initWithFrame:(CGRect)frame systemGestureManager:(id)manager enableGestures:(BOOL)gestures
{
  gesturesCopy = gestures;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  managerCopy = manager;
  v34.receiver = self;
  v34.super_class = SBBarSwipeAffordanceView;
  height = [(SBBarSwipeAffordanceView *)&v34 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_gestureManager, manager);
    v15 = SBFEffectiveHomeButtonType();
    objc_opt_class();
    v16 = objc_opt_isKindOfClass() & 1;
    v17 = v15 != 2;
    if (v15 == 2 || SBFEffectiveDeviceClass() == 2)
    {
      v18 = [SBHomeGrabberView alloc];
      v19 = [(SBHomeGrabberView *)v18 initWithFrame:gesturesCopy shouldEnableGestures:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      grabberView = v14->_grabberView;
      v14->_grabberView = v19;

      [(SBHomeGrabberView *)v14->_grabberView setDelegate:v14];
      [(SBHomeGrabberView *)v14->_grabberView setHomeAffordanceInteractionEnabled:v14->_active];
      [(SBBarSwipeAffordanceView *)v14 addSubview:v14->_grabberView];
      v21 = objc_alloc(MEMORY[0x277D65E10]);
      v22 = v14->_grabberView;
      v23 = +[SBAppSwitcherDomain rootSettings];
      animationSettings = [v23 animationSettings];
      alertBarSwipeDismissalSettings = [animationSettings alertBarSwipeDismissalSettings];
      v26 = [v21 initWithGrabberView:v22 settleAffordanceAnimationBehaviorDescription:alertBarSwipeDismissalSettings];
      barSwipeBehavior = v14->_barSwipeBehavior;
      v14->_barSwipeBehavior = v26;

      [(SBFBarSwipeBehavior *)v14->_barSwipeBehavior setDelegate:v14];
    }

    v28 = MEMORY[0x277D75D18];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __78__SBBarSwipeAffordanceView_initWithFrame_systemGestureManager_enableGestures___block_invoke;
    v30[3] = &unk_2783AC158;
    v32 = v17;
    v33 = v16;
    v31 = v14;
    [v28 performWithoutAnimation:v30];
  }

  return v14;
}

uint64_t __78__SBBarSwipeAffordanceView_initWithFrame_systemGestureManager_enableGestures___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    [*(a1 + 32) setHomeAffordanceHidden:1];
  }

  v2 = *(a1 + 32);

  return [v2 _deactivate];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    homeGestureInteraction = self->_homeGestureInteraction;
    if (obj)
    {
      if (homeGestureInteraction)
      {
        goto LABEL_8;
      }

      v7 = [[SBHomeGestureInteraction alloc] initWithSystemGestureManager:self->_gestureManager delegate:self];
      v8 = self->_homeGestureInteraction;
      self->_homeGestureInteraction = v7;

      [(SBHomeGestureInteraction *)self->_homeGestureInteraction setEnabled:self->_active];
    }

    else
    {
      if (!homeGestureInteraction)
      {
        goto LABEL_8;
      }

      [(SBHomeGestureInteraction *)homeGestureInteraction invalidate];
      v9 = self->_homeGestureInteraction;
      self->_homeGestureInteraction = 0;
    }

    v5 = obj;
  }

LABEL_8:
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      [(SBBarSwipeAffordanceView *)self _activate];
    }

    else
    {
      [(SBBarSwipeAffordanceView *)self _deactivate];
    }
  }
}

- (int64_t)colorBias
{
  grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
  colorBias = [grabberView colorBias];

  return colorBias;
}

- (void)setColorBias:(int64_t)bias
{
  grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
  [grabberView setColorBias:bias];
}

- (BOOL)ignoresLuminance
{
  grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
  ignoresLuminance = [grabberView ignoresLuminance];

  return ignoresLuminance;
}

- (void)setIgnoresLuminance:(BOOL)luminance
{
  luminanceCopy = luminance;
  grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
  [grabberView setIgnoresLuminance:luminanceCopy];
}

- (void)setHomeAffordanceHidden:(BOOL)hidden
{
  if (self->_homeAffordanceHidden != hidden)
  {
    self->_homeAffordanceHidden = hidden;
    [(SBBarSwipeAffordanceView *)self _updateHomeAffordanceVisibility];
  }
}

- (void)setKeyboardHomeAffordanceAssertion:(id)assertion
{
  assertionCopy = assertion;
  keyboardHomeAffordanceAssertion = self->_keyboardHomeAffordanceAssertion;
  if (keyboardHomeAffordanceAssertion != assertionCopy)
  {
    v12 = assertionCopy;
    if (assertionCopy)
    {
      objc_storeStrong(&self->_keyboardHomeAffordanceAssertion, assertion);
      grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
      _hideHomeAffordanceAnimationSettings = [(SBBarSwipeAffordanceView *)self _hideHomeAffordanceAnimationSettings];
      v9 = grabberView;
      v10 = 1;
    }

    else
    {
      [(SBKeyboardHomeAffordanceAssertion *)keyboardHomeAffordanceAssertion invalidate];
      v11 = self->_keyboardHomeAffordanceAssertion;
      self->_keyboardHomeAffordanceAssertion = 0;

      grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
      _hideHomeAffordanceAnimationSettings = [(SBBarSwipeAffordanceView *)self _unhideHomeAffordanceAnimationSettings];
      v9 = grabberView;
      v10 = 0;
    }

    [v9 setHidden:v10 forReason:@"SBBarSwipeAffordanceViewKeyboardVisible" withAnimationSettings:_hideHomeAffordanceAnimationSettings];

    assertionCopy = v12;
  }
}

- (void)_updateHomeAffordanceVisibility
{
  grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
  [grabberView setHidden:self->_homeAffordanceHidden forReason:@"SBBarSwipeAffordanceViewAlways" withAnimationSettings:0];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)_runBlockOnObservers:(id)observers
{
  observers = self->_observers;
  observersCopy = observers;
  allObjects = [(NSHashTable *)observers allObjects];
  [allObjects bs_each:observersCopy];
}

- (void)didAddSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = SBBarSwipeAffordanceView;
  [(SBBarSwipeAffordanceView *)&v5 didAddSubview:subview];
  grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
  [(SBBarSwipeAffordanceView *)self bringSubviewToFront:grabberView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  grabberView = [(SBBarSwipeAffordanceView *)self grabberView];
  BSRectWithSize();
  [grabberView grabberFrameForBounds:?];
  v5 = v4;
  v7 = v6;

  v8 = v7 + *MEMORY[0x277D66098];
  v9 = v5;
  result.height = v8;
  result.width = v9;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBBarSwipeAffordanceView;
  v5 = [(SBBarSwipeAffordanceView *)&v8 hitTest:event withEvent:test.x, test.y];
  if ([(SBBarSwipeAffordanceView *)self allowsTouchesToPassThrough]&& v5 == self)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (unint64_t)homeGestureInteraction:(id)interaction systemGestureTypeForType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained barSwipeAffordanceView:self systemGestureTypeForType:type];

  return v7;
}

- (id)customScreenEdgePanGestureRecognizerForHomeGestureInteraction:(id)interaction
{
  v4 = [SBHomeGesturePanGestureRecognizer homeGesturePanGestureRecognizerWithTarget:0 action:0];
  [v4 setInterfaceDelegate:self];
  [v4 setEdges:4];

  return v4;
}

- (void)barSwipeBehaviorActionPerformed:(id)performed
{
  if ([(SBHomeGestureInteraction *)self->_homeGestureInteraction isEnabled])
  {
    [(SBHomeGestureInteraction *)self->_homeGestureInteraction setEnabled:0];
    [(SBHomeGestureInteraction *)self->_homeGestureInteraction setEnabled:1];
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SBBarSwipeAffordanceView_barSwipeBehaviorActionPerformed___block_invoke;
  v4[3] = &unk_2783B05A8;
  v4[4] = self;
  [(SBBarSwipeAffordanceView *)self _runBlockOnObservers:v4];
}

- (int64_t)_effectiveOrientationAccountingForTransforms
{
  window = [(SBBarSwipeAffordanceView *)self window];
  window2 = [(SBBarSwipeAffordanceView *)self window];
  [(SBBarSwipeAffordanceView *)self convertPoint:window2 toView:1.0, 1.0];
  [window _convertPointToSceneReferenceSpace:?];
  v6 = v5;
  v8 = v7;
  window3 = [(SBBarSwipeAffordanceView *)self window];
  window4 = [(SBBarSwipeAffordanceView *)self window];
  [(SBBarSwipeAffordanceView *)self convertPoint:window4 toView:0.0, 0.0];
  [window3 _convertPointToSceneReferenceSpace:?];
  v12 = v11;
  v14 = v13;

  v15 = v6 <= v12;
  if (v6 > v12 && v8 > v14)
  {
    return 1;
  }

  if (v6 <= v12 && v8 <= v14)
  {
    return 2;
  }

  if (v8 > v14)
  {
    v15 = 1;
  }

  if (v15)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

@end