@interface SBHomeAffordanceInteraction
- (BOOL)allowsUserInteraction;
- (CGRect)homeAffordanceFrame;
- (CGRect)homeAffordanceHitTestRect;
- (SBFHomeAffordanceInteractionDelegate)delegate;
- (SBHomeAffordanceInteraction)initWithHomeAffordanceInteractionManager:(id)a3;
- (SBHomeAffordanceInteractionManager)homeAffordanceInteractionManager;
- (UIEdgeInsets)expandedHomeAffordanceHitTestRectOutsets;
- (UIEdgeInsets)standardHomeAffordanceHitTestRectOutsets;
- (UIView)view;
- (id)_assistantController;
- (void)dealloc;
- (void)notifyDidFailToRecognizeDoubleTap;
- (void)notifyDidRecognizeDoubleTap;
- (void)notifyDidRecognizeSingleClick;
- (void)notifyDidRecognizeSingleTap;
- (void)notifyDidRecognizeTouchThatShouldUnhideViewImmediately:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHomeAffordanceHitTestRect:(CGRect)a3;
- (void)setNeedsUpdate;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBHomeAffordanceInteraction

- (void)setNeedsUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceInteractionManager);
  [WeakRetained updateHomeAffordanceHitTestRectForHomeAffordanceInteraction:self];
}

- (id)_assistantController
{
  v2 = [(SBHomeAffordanceInteraction *)self view];
  v3 = [v2 _sbWindowScene];
  v4 = [v3 assistantController];

  return v4;
}

- (CGRect)homeAffordanceFrame
{
  v3 = [(SBHomeAffordanceInteraction *)self view];
  v4 = v3;
  if (*&self->_delegateRespondsTo)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained homeAffordanceFrameForHomeAffordanceInteraction:self];
    v6 = v14;
    v8 = v15;
    v10 = v16;
    v12 = v17;
  }

  else if (v3)
  {
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x277CBF398];
    v8 = *(MEMORY[0x277CBF398] + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    v12 = *(MEMORY[0x277CBF398] + 24);
  }

  v18 = v6;
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIEdgeInsets)standardHomeAffordanceHitTestRectOutsets
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained standardHomeAffordanceHitTestRectOutsetsForHomeAffordanceInteraction:self];
    v24 = v29;
    v25 = v30;
    v27 = v31;
    v28 = v32;
  }

  else
  {
    WeakRetained = [(SBHomeAffordanceInteraction *)self view];
    v4 = [WeakRetained window];
    [(SBHomeAffordanceInteraction *)self homeAffordanceFrame];
    [WeakRetained convertRect:v4 toView:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 safeAreaInsets];
    v14 = v13;
    [v4 bounds];
    v15 = CGRectGetMaxY(v37) - v14;
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = v10;
    v38.size.height = v12;
    v16 = 0.0;
    v17 = fmax(CGRectGetMaxY(v38) - v15, 0.0);
    v18 = [(SBHomeAffordanceInteraction *)self _assistantController];
    v19 = [v18 isHomeAffordanceDoubleTapGestureEnabled];

    if (v19)
    {
      v16 = v17;
    }

    [(SBFHomeGrabberSettings *)self->_homeGrabberSettings hitTestOutsetTop];
    v21 = v16 + v20;
    if (([(SBFHomeGrabberSettings *)self->_homeGrabberSettings constrainHitTestRectToSafeAreaInset]& (v21 > v17)) != 0)
    {
      v21 = v17;
    }

    [(SBFHomeGrabberSettings *)self->_homeGrabberSettings hitTestOutsetSides];
    v23 = v22;
    [(MTLumaDodgePillSettings *)self->_lumaDodgePillSettings edgeSpacing];
    v24 = -v21;
    v25 = -v23;
    v27 = -v26;

    v28 = v25;
  }

  v33 = v24;
  v34 = v25;
  v35 = v27;
  v36 = v28;
  result.right = v36;
  result.bottom = v35;
  result.left = v34;
  result.top = v33;
  return result;
}

- (CGRect)homeAffordanceHitTestRect
{
  x = self->_homeAffordanceHitTestRect.origin.x;
  y = self->_homeAffordanceHitTestRect.origin.y;
  width = self->_homeAffordanceHitTestRect.size.width;
  height = self->_homeAffordanceHitTestRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SBHomeAffordanceInteraction)initWithHomeAffordanceInteractionManager:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBHomeAffordanceInteraction;
  v5 = [(SBHomeAffordanceInteraction *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homeAffordanceInteractionManager, v4);
    v7 = [MEMORY[0x277D65E80] rootSettings];
    homeGrabberSettings = v6->_homeGrabberSettings;
    v6->_homeGrabberSettings = v7;

    [(SBFHomeGrabberSettings *)v6->_homeGrabberSettings addKeyObserver:v6];
    v9 = [MEMORY[0x277D26708] sharedInstance];
    lumaDodgePillSettings = v6->_lumaDodgePillSettings;
    v6->_lumaDodgePillSettings = v9;

    [(MTLumaDodgePillSettings *)v6->_lumaDodgePillSettings addKeyObserver:v6];
    v11 = *(MEMORY[0x277CBF398] + 16);
    v6->_homeAffordanceHitTestRect.origin = *MEMORY[0x277CBF398];
    v6->_homeAffordanceHitTestRect.size = v11;
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceInteractionManager);
  [WeakRetained unregisterHomeAffordanceInteraction:self];

  v4.receiver = self;
  v4.super_class = SBHomeAffordanceInteraction;
  [(SBHomeAffordanceInteraction *)&v4 dealloc];
}

- (UIEdgeInsets)expandedHomeAffordanceHitTestRectOutsets
{
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained expandedHomeAffordanceHitTestRectOutsetsForHomeAffordanceInteraction:self];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v3 = v9;
    v4 = v11;
    v5 = v13;
    v6 = v15;
  }

  else
  {
    [(SBFHomeGrabberSettings *)self->_homeGrabberSettings hitTestOutsetDoubleTap];
    [(SBHomeAffordanceInteraction *)self standardHomeAffordanceHitTestRectOutsets];

    UIEdgeInsetsAdd();
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setHomeAffordanceHitTestRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_homeAffordanceHitTestRect))
  {
    self->_homeAffordanceHitTestRect.origin.x = x;
    self->_homeAffordanceHitTestRect.origin.y = y;
    self->_homeAffordanceHitTestRect.size.width = width;
    self->_homeAffordanceHitTestRect.size.height = height;
    if ((*&self->_delegateRespondsTo & 8) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained homeAffordanceInteractionHomeAffordanceHitTestRectDidChange:self];
    }
  }
}

- (BOOL)allowsUserInteraction
{
  if ((*&self->_delegateRespondsTo & 0x10) == 0)
  {
    return 1;
  }

  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained homeAffordanceInteractionAllowsUserInteraction:v3];

  return v3;
}

- (void)notifyDidRecognizeSingleTap
{
  if ((*&self->_delegateRespondsTo & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained homeAffordanceInteractionDidRecognizeSingleTap:self];
  }
}

- (void)notifyDidRecognizeDoubleTap
{
  if ((*&self->_delegateRespondsTo & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained homeAffordanceInteractionDidRecognizeDoubleTap:self];
  }
}

- (void)notifyDidFailToRecognizeDoubleTap
{
  if ((*&self->_delegateRespondsTo & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained homeAffordanceInteractionDidFailToRecognizeDoubleTap:self];
  }
}

- (void)notifyDidRecognizeSingleClick
{
  if ((*&self->_delegateRespondsTo & 0x100) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained homeAffordanceInteractionDidRecognizeSingleClick:self];
  }
}

- (void)notifyDidRecognizeTouchThatShouldUnhideViewImmediately:(BOOL)a3
{
  if ((*&self->_delegateRespondsTo & 0x200) != 0)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained homeAffordanceInteraction:self didRecognizeTouchThatShouldUnhideViewImmediately:v4];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFBF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFF7F | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFEFF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 512;
    }

    else
    {
      v13 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFDFF | v13;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceInteractionManager);
    v7 = WeakRetained;
    if (v4)
    {
      [WeakRetained registerHomeAffordanceInteraction:self];
    }

    else
    {
      [WeakRetained unregisterHomeAffordanceInteraction:self];
    }
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_homeGrabberSettings == a3 || self->_lumaDodgePillSettings == a3)
  {
    [(SBHomeAffordanceInteraction *)self setNeedsUpdate];
  }
}

- (SBFHomeAffordanceInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHomeAffordanceInteractionManager)homeAffordanceInteractionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceInteractionManager);

  return WeakRetained;
}

@end