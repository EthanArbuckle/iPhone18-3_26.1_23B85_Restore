@interface UITransitionView
+ (double)defaultDurationForTransition:(int)transition;
- (BOOL)_isTransitioningFromFromView:(id)view;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)transition:(int)transition fromView:(id)view toView:(id)toView removeFromView:(BOOL)fromView;
- (BOOL)transition:(int)transition toView:(id)view;
- (UITransitionView)initWithCoder:(id)coder;
- (UITransitionView)initWithFrame:(CGRect)frame;
- (double)durationForTransition:(int)transition;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_didCompleteTransition:(BOOL)transition;
- (void)_didStartTransition;
- (void)_startTransition:(int)transition withDuration:(double)duration;
- (void)_transitionDidStopFinished:(BOOL)finished;
- (void)_viewDidMoveFromScreen:(id)screen toScreen:(id)toScreen;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)notifyDidCompleteTransition:(id)transition;
- (void)safeAreaInsetsDidChange;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setIgnoresInteractionEvents:(BOOL)events;
- (void)setRasterizesOnTransition:(BOOL)transition;
- (void)setShouldNotifyDidCompleteImmediately:(BOOL)immediately;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation UITransitionView

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)safeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = UITransitionView;
  [(UIView *)&v4 safeAreaInsetsDidChange];
  _presentationControllerToNotifyOnLayoutSubviews = [(UIView *)self _presentationControllerToNotifyOnLayoutSubviews];
  [_presentationControllerToNotifyOnLayoutSubviews _containerViewSafeAreaInsetsDidChange];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = UITransitionView;
  [(UIView *)&v4 layoutSubviews];
  _presentationControllerToNotifyOnLayoutSubviews = [(UIView *)self _presentationControllerToNotifyOnLayoutSubviews];
  [_presentationControllerToNotifyOnLayoutSubviews _containerViewLayoutSubviews];
}

- (void)_didStartTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = objc_opt_respondsToSelector();
    v4 = v6;
    if (v5)
    {
      [v6 transitionViewDidStart:self];
      v4 = v6;
    }
  }
}

- (UITransitionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UITransitionView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setClipsToBounds:1];
    [(UIView *)v4 setAutoresizingMask:16];
    *&v4->_transitionViewFlags = *&v4->_transitionViewFlags & 0xFEFD | 2;
    v4->_textEffectsVisibilityLevel = 300;
    [(UITransitionView *)v4 setAnimationTimingCurve:7];
  }

  return v4;
}

- (UITransitionView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = UITransitionView;
  v5 = [(UIView *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIFromView"];
    fromView = v5->_fromView;
    v5->_fromView = v6;

    v8 = [coderCopy decodeObjectForKey:@"UIToView"];
    toView = v5->_toView;
    v5->_toView = v8;

    v10 = [coderCopy decodeObjectForKey:@"UIFirstResponderToRemember"];
    firstResponderToRemember = v5->_firstResponderToRemember;
    v5->_firstResponderToRemember = v10;

    v12 = [coderCopy decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v5->_delegate, v12);

    if ([coderCopy decodeBoolForKey:@"UIIgnoresInteractionEvents"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&v5->_transitionViewFlags = *&v5->_transitionViewFlags & 0xFEFD | v13;
    v5->_textEffectsVisibilityLevel = [coderCopy decodeIntForKey:@"UITextEffectsVisibilityLevel"];
    [(UITransitionView *)v5 setAnimationTimingCurve:7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UITransitionView;
  [(UIView *)&v9 encodeWithCoder:coderCopy];
  fromView = self->_fromView;
  if (fromView)
  {
    [coderCopy encodeObject:fromView forKey:@"UIFromView"];
  }

  toView = self->_toView;
  if (toView)
  {
    [coderCopy encodeObject:toView forKey:@"UIToView"];
  }

  firstResponderToRemember = self->_firstResponderToRemember;
  if (firstResponderToRemember)
  {
    [coderCopy encodeConditionalObject:firstResponderToRemember forKey:@"UIFirstResponderToRemember"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [coderCopy encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  if ((*&self->_transitionViewFlags & 2) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIIgnoresInteractionEvents"];
  }

  [coderCopy encodeInt:self->_textEffectsVisibilityLevel forKey:@"UITextEffectsVisibilityLevel"];
}

- (double)durationForTransition:(int)transition
{
  v3 = *&transition;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained == self;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    [objc_opt_class() defaultDurationForTransition:v3];
  }

  else
  {
    [(UITransitionView *)v6 durationForTransition:v3];
  }

  v9 = v8;

  return v9;
}

+ (double)defaultDurationForTransition:(int)transition
{
  if (transition > 0xF)
  {
    return 0.4;
  }

  else
  {
    return dbl_18A683988[transition];
  }
}

- (void)setShouldNotifyDidCompleteImmediately:(BOOL)immediately
{
  if (immediately)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_transitionViewFlags = *&self->_transitionViewFlags & 0xFFFB | v3;
}

- (void)_didCompleteTransition:(BOOL)transition
{
  transitionCopy = transition;
  v46 = *MEMORY[0x1E69E9840];
  layer = [(UIView *)self->_toView layer];
  [layer setShouldRasterize:0];

  layer2 = [(UIView *)self->_toView layer];
  [layer2 setPreloadsCache:0];

  layer3 = [(UIView *)self->_fromView layer];
  [layer3 setShouldRasterize:0];

  layer4 = [(UIView *)self->_fromView layer];
  [layer4 setPreloadsCache:0];

  transitionViewFlags = self->_transitionViewFlags;
  if ((*&transitionViewFlags & 0x20) != 0)
  {
    v9 = (*&transitionViewFlags >> 7) & 1;
    layer5 = [(UIView *)self->_toView layer];
    [layer5 setAllowsGroupOpacity:v9];

    v11 = (*&self->_transitionViewFlags >> 6) & 1;
    layer6 = [(UIView *)self->_fromView layer];
    [layer6 setAllowsGroupOpacity:v11];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = self->_frozenSubviews;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v13);
        }

        layer7 = [*(*(&v41 + 1) + 8 * i) layer];
        [layer7 setFrozen:0];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v15);
  }

  frozenSubviews = self->_frozenSubviews;
  self->_frozenSubviews = 0;

  fromView = self->_fromView;
  if (fromView)
  {
    if (fromView != self->_toView)
    {
      superview = [(UIView *)fromView superview];

      if (superview == self)
      {
        v39 = self->_transitionViewFlags;
        if ((v39 & 0x400) != 0)
        {
          [(UIView *)self->_fromView removeFromSuperview];
          v39 = self->_transitionViewFlags;
        }

        if ((v39 & 0x10) != 0)
        {
          [(UIView *)self->_fromView setAlpha:1.0];
        }

        if (self->_firstResponderToRemember && [(UIResponder *)self->_fromView _containsResponder:?])
        {
          [(UIResponder *)self->_firstResponderToRemember _becomeFirstResponderWhenPossible];
        }
      }
    }
  }

  firstResponderToRemember = self->_firstResponderToRemember;
  self->_firstResponderToRemember = 0;

  v23 = self->_transitionViewFlags;
  if ((v23 & 2) != 0)
  {
    [UIApp setIgnoresInteractionEvents:0];
    v23 = self->_transitionViewFlags;
  }

  *&self->_transitionViewFlags = v23 & 0xFFFE;
  ++self->_transitionID;
  [(UIWindow *)self->_originalWindow endDisablingInterfaceAutorotation];
  originalWindow = self->_originalWindow;
  self->_originalWindow = 0;

  v25 = MEMORY[0x1E695DF90];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:transitionCopy];
  v27 = self->_fromView;
  v28 = [MEMORY[0x1E696AD98] numberWithBool:(*&self->_transitionViewFlags >> 10) & 1];
  v29 = [v25 dictionaryWithObjectsAndKeys:{v26, @"finished", v27, @"fromView", v28, @"removeFromView", 0}];

  toView = self->_toView;
  if (toView)
  {
    [v29 setObject:toView forKey:@"toView"];
  }

  v31 = self->_fromView;
  v32 = self->_toView;
  v33 = self->_fromView;
  self->_fromView = 0;

  v34 = self->_toView;
  self->_toView = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    goto LABEL_24;
  }

  v36 = self->_transitionViewFlags;
  if ([(UITransitionView *)self shouldNotifyDidCompleteImmediately])
  {
    [(UITransitionView *)self notifyDidCompleteTransition:v29];
    if ((v36 & 8) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    [(UITransitionView *)self performSelector:sel_notifyDidCompleteTransition_ withObject:v29 afterDelay:0.0];
    if ((v36 & 8) == 0)
    {
      goto LABEL_25;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained transitionViewShouldUseViewControllerCallbacks])
  {
LABEL_24:
    v37 = [UIViewController viewControllerForView:v31];
    v38 = [UIViewController viewControllerForView:v32];
    [v37 endAppearanceTransition];
    [v38 endAppearanceTransition];
  }

LABEL_25:
}

- (BOOL)transition:(int)transition toView:(id)view
{
  v4 = *&transition;
  viewCopy = view;
  subviews = [(UIView *)self subviews];
  v8 = [subviews count];
  if (v8 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [subviews objectAtIndex:(v8 - 1)];
  }

  v10 = [(UITransitionView *)self transition:v4 fromView:v9 toView:viewCopy];

  return v10;
}

- (void)notifyDidCompleteTransition:(id)transition
{
  transitionCopy = transition;
  delegate = [(UITransitionView *)self delegate];
  if (delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [transitionCopy objectForKey:@"fromView"];
      v6 = [transitionCopy objectForKey:@"toView"];
      v7 = [transitionCopy objectForKey:@"removeFromView"];
      [delegate transitionViewDidComplete:self fromView:v5 toView:v6 removeFromView:{objc_msgSend(v7, "BOOLValue")}];

LABEL_6:
LABEL_7:

      goto LABEL_8;
    }

    if (objc_opt_respondsToSelector())
    {
      v5 = [transitionCopy objectForKey:@"fromView"];
      v6 = [transitionCopy objectForKey:@"toView"];
      [delegate transitionViewDidComplete:self fromView:v5 toView:v6];
      goto LABEL_6;
    }

    if (objc_opt_respondsToSelector())
    {
      v5 = [transitionCopy objectForKey:@"finished"];
      [delegate transitionViewDidComplete:self finished:{objc_msgSend(v5, "BOOLValue")}];
      goto LABEL_7;
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate transitionViewDidComplete:self];
    }
  }

LABEL_8:
}

- (BOOL)transition:(int)transition fromView:(id)view toView:(id)toView removeFromView:(BOOL)fromView
{
  fromViewCopy = fromView;
  v8 = *&transition;
  viewCopy = view;
  toViewCopy = toView;
  transitionViewFlags = self->_transitionViewFlags;
  if (transitionViewFlags)
  {
    goto LABEL_83;
  }

  if ((transitionViewFlags & 2) != 0)
  {
    [UIApp setIgnoresInteractionEvents:1];
  }

  subviews = [(UIView *)self subviews];
  v13 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v13 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    goto LABEL_14;
  }

  if (viewCopy)
  {
    goto LABEL_8;
  }

  if ([subviews count])
  {
    viewCopy = [subviews objectAtIndex:0];
LABEL_8:
    if (!toViewCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  viewCopy = 0;
  if (!toViewCopy)
  {
LABEL_9:
    if ([subviews count] < 2)
    {
      toViewCopy = 0;
    }

    else
    {
      v15 = dyld_program_sdk_at_least();
      v16 = [subviews objectAtIndex:1];
      toViewCopy = v16;
      if (v15)
      {
        viewCopy = [subviews objectAtIndex:v16 != viewCopy];

        toViewCopy = viewCopy;
      }
    }
  }

LABEL_14:
  [(UITransitionView *)self durationForTransition:v8];
  v19 = v18;
  firstResponder = [viewCopy firstResponder];
  _responderForBecomeFirstResponder = [firstResponder _responderForBecomeFirstResponder];

  if ([viewCopy _containsResponder:_responderForBecomeFirstResponder])
  {
    v22 = _responderForBecomeFirstResponder;
  }

  else
  {
    v22 = 0;
  }

  v77 = v22;
  objc_storeStrong(&self->_fromView, viewCopy);
  v78 = toViewCopy;
  objc_storeStrong(&self->_toView, toViewCopy);
  objc_storeStrong(&self->_firstResponderToRemember, v22);
  if (fromViewCopy)
  {
    v23 = 1024;
  }

  else
  {
    v23 = 0;
  }

  *&self->_transitionViewFlags = *&self->_transitionViewFlags & 0xFBFF | v23;
  if (v8 && v19 != 0.0 && ((+[UIDevice currentDevice](UIDevice, "currentDevice"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 userInterfaceIdiom], v24, (v25 & 0xFFFFFFFFFFFFFFFBLL) == 1) || ((fromView = self->_fromView) != 0 || !fromViewCopy) && (toView = self->_toView, fromView != toView) && (toView || v8 > 0x13 || ((1 << v8) & 0xC0100) == 0)))
  {
    window = [(UIView *)self window];
    originalWindow = self->_originalWindow;
    self->_originalWindow = window;

    [(UIWindow *)self->_originalWindow beginDisablingInterfaceAutorotation];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    window2 = [(UIView *)self window];
    *&self->_transitionViewFlags = *&self->_transitionViewFlags & 0xFFF7 | (8 * (window2 != 0));

    if ((*&self->_transitionViewFlags & 8) != 0 && (!WeakRetained || (objc_opt_respondsToSelector() & 1) != 0 && [(UITransitionView *)WeakRetained transitionViewShouldUseViewControllerCallbacks]))
    {
      v30 = [UIViewController viewControllerForView:self->_fromView];
      v31 = [UIViewController viewControllerForView:self->_toView];
      v32 = 1;
      [v31 beginAppearanceTransition:1 animated:1];
      [v30 beginAppearanceTransition:0 animated:1];
    }

    else
    {
      v32 = 1;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v32 = 0;
    *&self->_transitionViewFlags &= ~8u;
  }

  if ((v8 - 12) <= 0xFFFFFFFD)
  {
    v35 = self->_toView;
    if (v35)
    {
      superview = [(UIView *)v35 superview];

      if (superview != self)
      {
        [(UIView *)self addSubview:self->_toView];
      }
    }
  }

  [(UITransitionView *)self _didStartTransition];
  if (v32)
  {
    toViewCopy = v78;
    v38 = *MEMORY[0x1E695EFF8];
    v37 = *(MEMORY[0x1E695EFF8] + 8);
    switch(v8)
    {
      case 1:
        [(UIView *)self bounds];
        v38 = v64;
        goto LABEL_73;
      case 2:
        [(UIView *)self->_toView bounds];
        v38 = floor(-v65);
LABEL_73:
        v37 = 0.0;
        goto LABEL_74;
      case 3:
      case 8:
      case 19:
        [(UIView *)self bounds];
        v37 = v39;
        v38 = 0.0;
        if (v8 == 19)
        {
          [(UIView *)self->_fromView setAlpha:1.0];
        }

        goto LABEL_74;
      case 6:
        [(UIView *)self->_toView setAlpha:0.0];
        [(UIView *)self->_fromView setAlpha:1.0];
        break;
      case 7:
      case 18:
        [(UIView *)self bounds];
        v37 = -v63;
        v38 = 0.0;
        goto LABEL_74;
      case 9:
      case 12:
      case 20:
        subviews2 = [(UIView *)self subviews];
        v57 = subviews2;
        if (self->_toView)
        {
          if (self->_fromView)
          {
            v58 = [subviews2 indexOfObject:?];
            v59 = v58 >= [v57 indexOfObject:self->_toView];
            toViewCopy = v78;
            if (!v59)
            {
              v60 = [v57 indexOfObject:self->_fromView];
              v61 = [v57 indexOfObject:self->_toView];
              v62 = v60;
              toViewCopy = v78;
              [(UIView *)self exchangeSubviewAtIndex:v62 withSubviewAtIndex:v61];
            }
          }
        }

        if (v8 == 20)
        {
          [(UIView *)self->_toView setAlpha:0.0];
        }

        goto LABEL_74;
      case 10:
      case 11:
LABEL_74:
        if (WeakRetained && WeakRetained != self && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(UITransitionView *)WeakRetained transitionView:self beginOriginForToView:self->_toView forTransition:v8 defaultOrigin:v38, v37];
          v38 = v66;
          v37 = v67;
        }

        if ([(UITransitionView *)self rasterizesOnTransition])
        {
          layer = [(UIView *)self->_toView layer];
          [layer setShouldRasterize:1];

          window3 = [(UIView *)self window];
          screen = [window3 screen];
          [screen scale];
          v72 = v71;
          [(UIView *)self->_toView layer];
          v74 = v73 = WeakRetained;
          [v74 setRasterizationScale:v72];

          toViewCopy = v78;
          layer2 = [(UIView *)self->_toView layer];
          [layer2 setPreloadsCache:1];

          WeakRetained = v73;
        }

        [(UIView *)self->_toView frame];
        [(UIView *)self->_toView setFrame:v38, v37];
        break;
      case 13:
        [(UIWindow *)self->_originalWindow beginDisablingInterfaceAutorotation];
        break;
      case 14:
        *&self->_transitionViewFlags |= 0x200u;
        break;
      default:
        break;
    }

    [(UITransitionView *)self _startTransition:v8 withDuration:v19];
  }

  else
  {
    v40 = self->_toView;
    if (v40)
    {
      [(UIView *)v40 frame];
      v42 = v41;
      v44 = v43;
      v45 = +[UIDevice currentDevice];
      userInterfaceIdiom2 = [v45 userInterfaceIdiom];

      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1 || (v47 = self->_fromView) == 0)
      {
        v47 = self->_toView;
      }

      [(UIView *)v47 frame];
      v49 = v48;
      v51 = v50;
      v52 = self->_toView;
      if ((v8 - 12) <= 0xFFFFFFFD && (v8 - 18) <= 0xFFFFFFFD && (v8 - 15) <= 0xFFFFFFFD && v8 != 6 && v8 != 20 && v8 != 9)
      {
        if (v52)
        {
          if (WeakRetained)
          {
            if (WeakRetained != self)
            {
              v53 = objc_opt_respondsToSelector();
              v52 = self->_toView;
              if (v53)
              {
                [(UITransitionView *)WeakRetained transitionView:self endOriginForToView:v52 forTransition:v8 defaultOrigin:v49, v51];
                v49 = v54;
                v51 = v55;
                v52 = self->_toView;
              }
            }
          }
        }
      }

      [(UIView *)v52 setFrame:v49, v51, v42, v44];
    }

    [(UITransitionView *)self _didCompleteTransition:1];
    toViewCopy = v78;
  }

LABEL_83:
  return (transitionViewFlags & 1) == 0;
}

- (BOOL)_isTransitioningFromFromView:(id)view
{
  viewCopy = view;
  if ([(UITransitionView *)self isTransitioning]&& self->_fromView == viewCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITransitionView;
    v5 = [(UIResponder *)&v7 _isTransitioningFromView:self];
  }

  return v5;
}

- (void)setRasterizesOnTransition:(BOOL)transition
{
  if (transition)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_transitionViewFlags = *&self->_transitionViewFlags & 0xFEFF | v3;
}

- (void)setIgnoresInteractionEvents:(BOOL)events
{
  if (events)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_transitionViewFlags = *&self->_transitionViewFlags & 0xFFFD | v3;
}

- (void)_startTransition:(int)transition withDuration:(double)duration
{
  v70 = *MEMORY[0x1E69E9840];
  *&self->_transitionViewFlags |= 1u;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3010000000;
  v67[3] = "";
  v68 = *MEMORY[0x1E695EFF8];
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3010000000;
  v65[3] = "";
  v66 = v68;
  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  fromView = self->_fromView;
  toView = self->_toView;
  animationTimingCurve = self->_animationTimingCurve;
  transitionID = self->_transitionID;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__UITransitionView__startTransition_withDuration___block_invoke;
  aBlock[3] = &unk_1E70F9B38;
  aBlock[4] = self;
  aBlock[5] = transitionID;
  v18 = _Block_copy(aBlock);
  v19 = transition & 0xFFFFFFFE;
  v20 = animationTimingCurve << 16;
  if (transition <= 0xE && ((1 << transition) & 0x6C00) != 0)
  {
    if (v19 == 10)
    {
      v21 = 0x200000;
      if (transition == 10)
      {
        v21 = 0x100000;
      }

      [UIView transitionFromView:self->_fromView toView:self->_toView duration:v20 | v21 options:v18 completion:duration];
    }

    else if (transition == 14)
    {
      [(UIView *)self insertSubview:self->_fromView atIndex:0];
      [UIView _animateWithFilter:200 filterView:self->_toView filterValue:v20 | 0x10000 duration:v18 delay:0.0 options:duration completion:0.0];
    }

    else if (transition == 13)
    {
      [(UIView *)self insertSubview:self->_toView atIndex:0];
      [(UIView *)self->_toView layoutBelowIfNeeded];
      [(UIView *)self->_toView bounds];
      recta[0] = v22;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [(UIView *)self->_toView subviews];
      v56 = 0u;
      v57 = 0u;
      v29 = memset(&recta[1], 0, 32);
      v30 = [v29 countByEnumeratingWithState:&recta[1] objects:v69 count:16];
      if (v30)
      {
        v31 = *recta[3];
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*recta[3] != v31)
            {
              objc_enumerationMutation(v29);
            }

            [*(recta[2] + 8 * i) frame];
            x = v71.origin.x;
            y = v71.origin.y;
            width = v71.size.width;
            height = v71.size.height;
            MinY = CGRectGetMinY(v71);
            *&v72.origin.x = recta[0];
            v72.origin.y = v24;
            v72.size.width = v26;
            v72.size.height = v28;
            if (MinY < CGRectGetMaxY(v72))
            {
              v73.origin.x = x;
              v73.origin.y = y;
              v73.size.width = width;
              v73.size.height = height;
              v38 = CGRectGetMinY(v73);
              *&v74.origin.x = recta[0];
              v74.origin.y = v24;
              v74.size.width = v26;
              v74.size.height = v28;
              v28 = v38 - CGRectGetMinY(v74);
            }
          }

          v30 = [v29 countByEnumeratingWithState:&recta[1] objects:v69 count:16];
        }

        while (v30);
      }

      [(UIView *)self->_toView bounds];
      v39 = CGRectGetHeight(v75);
      *&v76.origin.x = recta[0];
      v76.origin.y = v24;
      v76.size.width = v26;
      v76.size.height = v28;
      MaxY = CGRectGetMaxY(v76);
      if (MaxY < 40.0)
      {
        MaxY = 40.0;
      }

      self->_curlUpRevealedHeight = v39 - MaxY;
      [(UIView *)self->_toView bounds];
      _UIViewCurlUpTransitionToTime(&self->_curlUpRevealedHeight, v41, v42);
      [UIView _animateWithFilter:200 filterView:self->_fromView filterValue:v20 | 0x20000 duration:v18 delay:self->_curlUpRevealedHeight options:duration completion:0.0];
    }
  }

  else
  {
    v43 = v19 == 16;
    v44 = transition - 12;
    v45 = transition != 6;
    v46 = transition == 9 || toView == 0;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v47 = v46 || transition == 20;
    v63[2] = __50__UITransitionView__startTransition_withDuration___block_invoke_2;
    v63[3] = &__block_descriptor_48_e24_v24__0___v___8___v__B_16l;
    v49 = !v47 && (transition - 18) < 0xFFFFFFFE && transition != 6;
    *&v63[4] = duration;
    v63[5] = v20;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v50 = transition == 8 || fromView == 0;
    v58[2] = __50__UITransitionView__startTransition_withDuration___block_invoke_6;
    v58[3] = &unk_1E712ADF8;
    if (v50 || (transition - 20) >= 0xFFFFFFFC)
    {
      v45 = 0;
    }

    transitionCopy = transition;
    v52 = __CFADD__(v44, 2);
    v53 = v44 < 0xFFFFFFFE && v49;
    if (v52)
    {
      v45 = 0;
    }

    v58[4] = self;
    v58[5] = v67;
    v58[7] = v7;
    v58[8] = v9;
    v58[9] = v11;
    v58[10] = v13;
    *&v58[11] = duration;
    v60 = v45;
    v61 = v53;
    v58[6] = v65;
    v62 = v43;
    [UIView conditionallyAnimate:duration > 0.0 withAnimation:v63 layout:v58 completion:v18];
  }

  _Block_object_dispose(v65, 8);
  _Block_object_dispose(v67, 8);
}

void *__50__UITransitionView__startTransition_withDuration___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  result = *(a1 + 32);
  if (*(v3 + 8) == result[60])
  {
    return [result _transitionDidStopFinished:a2];
  }

  return result;
}

void __50__UITransitionView__startTransition_withDuration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_self();
  if (fluidPresentationTransitionsEnabled == 1)
  {
    v7 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:*(a1 + 32)];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__UITransitionView__startTransition_withDuration___block_invoke_3;
    v17[3] = &unk_1E70F0F78;
    v8 = &v18;
    v18 = v5;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__UITransitionView__startTransition_withDuration___block_invoke_4;
    v15[3] = &unk_1E7103030;
    v16 = v6;
    v9 = v5;
    [UIView _animateUsingSpringBehavior:v7 tracking:0 animations:v17 completion:v15];
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__UITransitionView__startTransition_withDuration___block_invoke_5;
    v13[3] = &unk_1E70F0F78;
    v8 = &v14;
    v14 = v5;
    v12 = v5;
    [UIView animateWithDuration:v11 delay:v13 options:v6 animations:v10 completion:0.0];
  }
}

uint64_t __50__UITransitionView__startTransition_withDuration___block_invoke_3(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048611 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __50__UITransitionView__startTransition_withDuration___block_invoke_5(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048611 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

void __50__UITransitionView__startTransition_withDuration___block_invoke_6(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  if (v2 <= 0x14)
  {
    if (((1 << v2) & 0x100280) != 0)
    {
      v3 = *(a1 + 80);
      goto LABEL_6;
    }

    if (((1 << v2) & 0x1008) != 0)
    {
      v3 = -*(a1 + 80);
LABEL_6:
      v4 = *(*(a1 + 40) + 8);
      *(v4 + 32) = 0;
      *(v4 + 40) = floor(v3);
      goto LABEL_14;
    }

    if (v2 == 17)
    {
      [*(a1 + 32) insertSubview:*(*(a1 + 32) + 416) belowSubview:*(*(a1 + 32) + 408)];
      goto LABEL_14;
    }
  }

  if (v2 == 2)
  {
    v6 = *(a1 + 72);
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_15;
    }

    [*(*(a1 + 32) + 408) bounds];
    v6 = -v5;
  }

  v7 = *(*(a1 + 40) + 8);
  *(v7 + 32) = floor(v6);
  *(v7 + 40) = 0;
LABEL_14:
  v2 = *(a1 + 96);
LABEL_15:
  switch(v2)
  {
    case 0x14u:
      [*(*(a1 + 32) + 416) setAlpha:1.0];
      break;
    case 0x13u:
      v14 = *(a1 + 88);
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __50__UITransitionView__startTransition_withDuration___block_invoke_7;
      v79[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
      *&v79[4] = v14;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __50__UITransitionView__startTransition_withDuration___block_invoke_9;
      v78[3] = &unk_1E70F3590;
      v78[4] = *(a1 + 32);
      [UIView conditionallyAnimate:v14 > 0.0 withAnimation:v79 layout:v78 completion:0];
      *(*(a1 + 32) + 456) |= 0x10u;
      if ([*(a1 + 32) _shouldDisableGroupOpacityOnAlphaTransitions])
      {
        v15 = [*(*(a1 + 32) + 416) layer];
        if ([v15 allowsGroupOpacity])
        {
          v16 = 128;
        }

        else
        {
          v16 = 0;
        }

        *(*(a1 + 32) + 456) = *(*(a1 + 32) + 456) & 0xFF7F | v16;

        v17 = [*(*(a1 + 32) + 408) layer];
        if ([v17 allowsGroupOpacity])
        {
          v18 = 64;
        }

        else
        {
          v18 = 0;
        }

        *(*(a1 + 32) + 456) = *(*(a1 + 32) + 456) & 0xFFBF | v18;

        v19 = [*(*(a1 + 32) + 416) layer];
        [v19 setAllowsGroupOpacity:0];

        v13 = *(*(a1 + 32) + 408);
        goto LABEL_34;
      }

      break;
    case 6u:
      [*(*(a1 + 32) + 416) setAlpha:1.0];
      [*(*(a1 + 32) + 408) setAlpha:0.0];
      *(*(a1 + 32) + 456) |= 0x10u;
      if ([*(a1 + 32) _shouldDisableGroupOpacityOnAlphaTransitions])
      {
        v8 = [*(*(a1 + 32) + 416) layer];
        if ([v8 allowsGroupOpacity])
        {
          v9 = 128;
        }

        else
        {
          v9 = 0;
        }

        *(*(a1 + 32) + 456) = *(*(a1 + 32) + 456) & 0xFF7F | v9;

        v10 = [*(*(a1 + 32) + 408) layer];
        if ([v10 allowsGroupOpacity])
        {
          v11 = 64;
        }

        else
        {
          v11 = 0;
        }

        *(*(a1 + 32) + 456) = *(*(a1 + 32) + 456) & 0xFFBF | v11;

        v12 = [*(*(a1 + 32) + 416) layer];
        [v12 setAllowsGroupOpacity:0];

        v13 = *(*(a1 + 32) + 408);
LABEL_34:
        v20 = [v13 layer];
        [v20 setAllowsGroupOpacity:0];

        *(*(a1 + 32) + 456) |= 0x20u;
      }

      break;
  }

  v21 = [*(a1 + 32) delegate];
  v22 = v21;
  if (*(a1 + 100) == 1 && v21 && v21 != *(a1 + 32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v22 transitionView:*(a1 + 32) endOriginForFromView:*(*(a1 + 32) + 408) forTransition:*(a1 + 96) defaultOrigin:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
    v23 = *(*(a1 + 40) + 8);
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
  }

  if (*(a1 + 101) == 1 && v22 && v22 != *(a1 + 32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v22 transitionView:*(a1 + 32) endOriginForToView:*(*(a1 + 32) + 416) forTransition:*(a1 + 96) defaultOrigin:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40)}];
    v26 = *(*(a1 + 48) + 8);
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
  }

  v29 = [MEMORY[0x1E695DF70] array];
  v30 = *(a1 + 32);
  v31 = *(v30 + 424);
  *(v30 + 424) = v29;

  if (*(a1 + 100) == 1)
  {
    if ([*(a1 + 32) rasterizesOnTransition])
    {
      v32 = [*(*(a1 + 32) + 408) layer];
      [v32 setShouldRasterize:1];

      v33 = [*(a1 + 32) window];
      v34 = [v33 screen];
      [v34 scale];
      v36 = v35;
      v37 = [*(*(a1 + 32) + 408) layer];
      [v37 setRasterizationScale:v36];

      v38 = [*(*(a1 + 32) + 408) layer];
      [v38 setPreloadsCache:1];

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v39 = [*(*(a1 + 32) + 408) subviews];
      v40 = [v39 countByEnumeratingWithState:&v74 objects:v81 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v75;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v75 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v74 + 1) + 8 * i);
            v45 = [v44 layer];
            v46 = [v45 isFrozen];

            if ((v46 & 1) == 0)
            {
              v47 = [v44 layer];
              [v47 setFrozen:1];

              [*(*(a1 + 32) + 424) addObject:v44];
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v74 objects:v81 count:16];
        }

        while (v41);
      }
    }

    v48 = *(*(a1 + 40) + 8);
    v49 = *(v48 + 32);
    v50 = *(v48 + 40);
    [*(*(a1 + 32) + 408) frame];
    [*(*(a1 + 32) + 408) setFrame:{v49, v50}];
  }

  if (*(a1 + 101) == 1)
  {
    if ([*(a1 + 32) rasterizesOnTransition])
    {
      v51 = [*(*(a1 + 32) + 416) layer];
      [v51 setShouldRasterize:1];

      v52 = [*(a1 + 32) window];
      v53 = [v52 screen];
      [v53 scale];
      v55 = v54;
      v56 = [*(*(a1 + 32) + 416) layer];
      [v56 setRasterizationScale:v55];

      v57 = [*(*(a1 + 32) + 416) layer];
      [v57 setPreloadsCache:1];

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v58 = [*(*(a1 + 32) + 416) subviews];
      v59 = [v58 countByEnumeratingWithState:&v70 objects:v80 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v71;
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v71 != v61)
            {
              objc_enumerationMutation(v58);
            }

            v63 = *(*(&v70 + 1) + 8 * j);
            v64 = [v63 layer];
            v65 = [v64 isFrozen];

            if ((v65 & 1) == 0)
            {
              v66 = [v63 layer];
              [v66 setFrozen:1];

              [*(*(a1 + 32) + 424) addObject:v63];
            }
          }

          v60 = [v58 countByEnumeratingWithState:&v70 objects:v80 count:16];
        }

        while (v60);
      }
    }

    v67 = *(*(a1 + 48) + 8);
    v68 = *(v67 + 32);
    v69 = *(v67 + 40);
    [*(*(a1 + 32) + 416) frame];
    [*(*(a1 + 32) + 416) setFrame:{v68, v69}];
  }

  if (*(a1 + 102) == 1 && v22 && v22 != *(a1 + 32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v22 transitionView:*(a1 + 32) startCustomTransitionWithDuration:*(a1 + 88)];
  }
}

void __50__UITransitionView__startTransition_withDuration___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_self();
  if (fluidPresentationTransitionsEnabled == 1)
  {
    v7 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:*(a1 + 32) * 0.375];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__UITransitionView__startTransition_withDuration___block_invoke_8;
    v8[3] = &unk_1E7103030;
    v9 = v6;
    [UIView _animateUsingSpringBehavior:v7 tracking:0 animations:v5 completion:v8];
  }

  else
  {
    [UIView animateWithDuration:512 delay:v5 options:v6 animations:*(a1 + 32) * 0.375 completion:0.0];
  }
}

- (void)_transitionDidStopFinished:(BOOL)finished
{
  if (*&self->_transitionViewFlags)
  {
    finishedCopy = finished;
    if ((*&self->_transitionViewFlags & 0x200) != 0)
    {
      [(UIWindow *)self->_originalWindow endDisablingInterfaceAutorotation];
      *&self->_transitionViewFlags &= ~0x200u;
    }

    [(UITransitionView *)self _didCompleteTransition:finishedCopy];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = UITransitionView;
  v5 = [(UIView *)&v12 hitTest:event withEvent:test.x, test.y];
  if (self->_ignoreDirectTouchEvents)
  {
    v6 = 0;
  }

  else
  {
    _presentationControllerToNotifyOnLayoutSubviews = [(UIView *)self _presentationControllerToNotifyOnLayoutSubviews];
    _containerViewShouldIgnoreDirectTouchEvents = [_presentationControllerToNotifyOnLayoutSubviews _containerViewShouldIgnoreDirectTouchEvents];

    v6 = _containerViewShouldIgnoreDirectTouchEvents ^ 1;
  }

  if (v5 == self && v6 == 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"sublayerTransform"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITransitionView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)setBounds:(CGRect)bounds
{
  v5.receiver = self;
  v5.super_class = UITransitionView;
  [(UIView *)&v5 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  _presentationControllerToNotifyOnLayoutSubviews = [(UIView *)self _presentationControllerToNotifyOnLayoutSubviews];
  [_presentationControllerToNotifyOnLayoutSubviews _containerViewBoundsDidChange];
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = UITransitionView;
  [(UIView *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  _presentationControllerToNotifyOnLayoutSubviews = [(UIView *)self _presentationControllerToNotifyOnLayoutSubviews];
  [_presentationControllerToNotifyOnLayoutSubviews _containerViewBoundsDidChange];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = UITransitionView;
  [(UIView *)&v5 traitCollectionDidChange:change];
  _presentationControllerToNotifyOnLayoutSubviews = [(UIView *)self _presentationControllerToNotifyOnLayoutSubviews];
  [_presentationControllerToNotifyOnLayoutSubviews _containerViewTraitCollectionDidChange];
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  v7.receiver = self;
  v7.super_class = UITransitionView;
  [(UIView *)&v7 willMoveToSuperview:superviewCopy];
  delegate = [(UITransitionView *)self delegate];
  if (delegate && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [delegate overrideTextEffectsVisibilityLevelForTransitionView:self];
  }

  else
  {
    v6 = 300;
  }

  self->_textEffectsVisibilityLevel = v6;
}

- (void)_viewDidMoveFromScreen:(id)screen toScreen:(id)toScreen
{
  v8.receiver = self;
  v8.super_class = UITransitionView;
  toScreenCopy = toScreen;
  [(UIView *)&v8 _viewDidMoveFromScreen:screen toScreen:toScreenCopy];
  v7 = [(UIView *)self _presentationControllerToNotifyOnLayoutSubviews:v8.receiver];
  [v7 _containerViewScreenDidChangeToScreen:toScreenCopy];
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  _presentationControllerToNotifyOnLayoutSubviews = [(UIView *)self _presentationControllerToNotifyOnLayoutSubviews];
  v6 = _presentationControllerToNotifyOnLayoutSubviews;
  if (!_presentationControllerToNotifyOnLayoutSubviews || ([_presentationControllerToNotifyOnLayoutSubviews _presentedViewForOverrideTraits], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != environmentCopy))
  {

LABEL_5:
    v10.receiver = self;
    v10.super_class = UITransitionView;
    v8 = [(UIView *)&v10 _traitCollectionForChildEnvironment:environmentCopy];
    goto LABEL_6;
  }

  v8 = [v6 _traitCollectionForChildEnvironment:environmentCopy];

LABEL_6:

  return v8;
}

@end