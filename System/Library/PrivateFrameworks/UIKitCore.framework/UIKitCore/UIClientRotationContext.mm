@interface UIClientRotationContext
- (BOOL)_isFooterTranslucent;
- (BOOL)_isHeaderTranslucent;
- (UIClientRotationContext)initWithClient:(id)client toOrientation:(int64_t)orientation duration:(double)duration andWindow:(id)window;
- (void)_positionHeaderView:(id)view andFooterView:(id)footerView outsideContentViewForInterfaceOrientation:(int64_t)orientation;
- (void)_slideHeaderView:(id)view andFooterView:(id)footerView offScreen:(BOOL)screen forInterfaceOrientation:(int64_t)orientation;
- (void)dealloc;
- (void)finishFirstHalfRotation;
- (void)finishFullRotateUsingOnePartAnimation:(BOOL)animation;
- (void)rotateSnapshots;
- (void)setupRotationOrderingKeyboardInAfterRotation:(BOOL)rotation;
@end

@implementation UIClientRotationContext

- (UIClientRotationContext)initWithClient:(id)client toOrientation:(int64_t)orientation duration:(double)duration andWindow:(id)window
{
  v15.receiver = self;
  v15.super_class = UIClientRotationContext;
  v10 = [(UIClientRotationContext *)&v15 init];
  if (!v10 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return v10;
  }

  v10->_rotatingClient = client;
  v10->_window = window;
  v10->_fromOrientation = 0;
  if (objc_opt_respondsToSelector())
  {
    _lastKnownInterfaceOrientation = [client _lastKnownInterfaceOrientation];
    v10->_fromOrientation = _lastKnownInterfaceOrientation;
    if (!_lastKnownInterfaceOrientation)
    {
      goto LABEL_7;
    }
  }

  else if (!v10->_fromOrientation)
  {
LABEL_7:
    v10->_fromOrientation = [(UIWindow *)v10->_window interfaceOrientation];
  }

  v10->_toOrientation = orientation;
  v10->_duration = duration;
  v10->_contentView = [v10->_rotatingClient rotatingContentViewForWindow:window];
  if (objc_opt_respondsToSelector())
  {
    v10->_snapshotTargetView = [v10->_rotatingClient rotatingSnapshotViewForWindow:window];
  }

  if (objc_opt_respondsToSelector())
  {
    v10->_headerView = [v10->_rotatingClient rotatingHeaderViewForWindow:window];
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v10->_rotatingClient rotatingFooterViewForWindow:window];
    v10->_footerView = v12;
    v10->_footerWasHidden = [(UIView *)v12 isHidden];
  }

  v13 = 15;
  if ([objc_opt_class() _transformLayerRotationsAreEnabled])
  {
    if ([(UIWindow *)v10->_window _isTextEffectsWindow])
    {
      v13 = 0;
    }

    else
    {
      v13 = 15;
    }
  }

  v10->_rotationSettings.edgeClip = v13;
  if (objc_opt_respondsToSelector())
  {
    [v10->_rotatingClient getRotationContentSettings:&v10->_rotationSettings forWindow:window];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIClientRotationContext;
  [(UIClientRotationContext *)&v3 dealloc];
}

- (void)_slideHeaderView:(id)view andFooterView:(id)footerView offScreen:(BOOL)screen forInterfaceOrientation:(int64_t)orientation
{
  screenCopy = screen;
  [view center];
  v11 = v10;
  v13 = v12;
  [footerView center];
  v33 = v14;
  v34 = v15;
  [view bounds];
  v17 = v16;
  [footerView bounds];
  v19 = v18;
  [UIApp statusBarFrame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (view)
  {
    [view transform];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  v36.origin.x = v21;
  v36.origin.y = v23;
  v36.size.width = v25;
  v36.size.height = v27;
  v37 = CGRectApplyAffineTransform(v36, &v35);
  v28 = v17 + v37.size.height;
  if (orientation > 2)
  {
    if (orientation == 3)
    {
      if (!screenCopy)
      {
        v28 = -v28;
      }

      v11 = v11 + v28;
      v30 = -v19;
      if (!screenCopy)
      {
        v30 = v19;
      }
    }

    else
    {
      if (orientation != 4)
      {
        goto LABEL_18;
      }

      if (screenCopy)
      {
        v28 = -v28;
      }

      v11 = v11 + v28;
      v30 = -v19;
      if (screenCopy)
      {
        v30 = v19;
      }
    }

    v31 = v34;
    v32 = v33 + v30;
    goto LABEL_29;
  }

  if (orientation == 1)
  {
    if (screenCopy)
    {
      v28 = -v28;
    }

    v13 = v13 + v28;
    v29 = -v19;
    if (screenCopy)
    {
      v29 = v19;
    }

    goto LABEL_23;
  }

  if (orientation == 2)
  {
    if (!screenCopy)
    {
      v28 = -v28;
    }

    v13 = v13 + v28;
    v29 = -v19;
    if (!screenCopy)
    {
      v29 = v19;
    }

LABEL_23:
    v32 = v33;
    v31 = v34 + v29;
    goto LABEL_29;
  }

LABEL_18:
  v32 = v33;
  v31 = v34;
LABEL_29:
  [view setCenter:{v11, v13, v37.size.width}];
  [footerView setCenter:{v32, v31}];
}

- (void)_positionHeaderView:(id)view andFooterView:(id)footerView outsideContentViewForInterfaceOrientation:(int64_t)orientation
{
  [objc_msgSend(view "superview")];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v46 = v14;
  [objc_msgSend(footerView "superview")];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [view bounds];
  v24 = v23;
  [footerView bounds];
  v25 = v24 * 0.5;
  v27 = v26 * 0.5;
  v28 = *MEMORY[0x1E695EFF8];
  v29 = v9 + v13 + v24 * 0.5;
  v30 = v11 + v46 * 0.5;
  v31 = v16 - v27;
  v32 = v18 + v22 * 0.5;
  v33 = v9 - v24 * 0.5;
  v34 = v16 + v20 + v27;
  if (orientation == 4)
  {
    v35 = v11 + v46 * 0.5;
  }

  else
  {
    v33 = *MEMORY[0x1E695EFF8];
    v35 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (orientation == 4)
  {
    v36 = v18 + v22 * 0.5;
  }

  else
  {
    v34 = *MEMORY[0x1E695EFF8];
    v36 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (orientation != 3)
  {
    v29 = v33;
    v30 = v35;
    v31 = v34;
    v32 = v36;
  }

  v37 = v11 - v25;
  v38 = v18 + v22 + v27;
  v39 = v11 + v46 + v25;
  v40 = v18 - v27;
  if (orientation == 2)
  {
    v41 = v9 + v13 * 0.5;
  }

  else
  {
    v41 = *MEMORY[0x1E695EFF8];
  }

  if (orientation == 2)
  {
    v28 = v16 + v20 * 0.5;
  }

  else
  {
    v39 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (orientation != 2)
  {
    v40 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (orientation == 1)
  {
    v42 = v9 + v13 * 0.5;
  }

  else
  {
    v42 = v41;
  }

  if (orientation == 1)
  {
    v39 = v37;
    v28 = v16 + v20 * 0.5;
    v40 = v38;
  }

  if (orientation <= 2)
  {
    v43 = v42;
  }

  else
  {
    v43 = v29;
  }

  if (orientation <= 2)
  {
    v44 = v28;
  }

  else
  {
    v39 = v30;
    v44 = v31;
  }

  if (orientation <= 2)
  {
    v45 = v40;
  }

  else
  {
    v45 = v32;
  }

  [view setCenter:{v43, v39, v40, v28, v42}];

  [footerView setCenter:{v44, v45}];
}

- (BOOL)_isHeaderTranslucent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(UIView *)self->_headerView isTranslucent]& 1) != 0)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  headerView = self->_headerView;

  return [(UIView *)headerView isTranslucent];
}

- (BOOL)_isFooterTranslucent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  footerView = self->_footerView;

  return [(UIView *)footerView isTranslucent];
}

- (void)setupRotationOrderingKeyboardInAfterRotation:(BOOL)rotation
{
  self->_orderKeyboardInAfterRotating = rotation;
  fromOrientation = self->_fromOrientation;
  switch(fromOrientation)
  {
    case 1:
      v5 = 0.0;
      break;
    case 3:
      v5 = 1.57079633;
      break;
    case 4:
      v5 = -1.57079633;
      break;
    default:
      v5 = 3.14159265;
      if (fromOrientation != 2)
      {
        v5 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&v24, v5);
  *&v24.a = vrndaq_f64(*&v24.a);
  *&v24.c = vrndaq_f64(*&v24.c);
  *&v24.tx = vrndaq_f64(*&v24.tx);
  v25 = v24;
  _transformLayerRotationsAreEnabled = [objc_opt_class() _transformLayerRotationsAreEnabled];
  [(UIView *)self->_window bounds];
  width = v9;
  height = v10;
  if ((_transformLayerRotationsAreEnabled & 1) == 0)
  {
    v24 = v25;
    v26 = CGRectApplyAffineTransform(*&v7, &v24);
    width = v26.size.width;
    height = v26.size.height;
  }

  v13 = [UIView alloc];
  [(UIView *)self->_window bounds];
  v14 = [(UIView *)v13 initWithFrame:?];
  self->_rotatingSnapshotView = v14;
  [(UIView *)v14 setBounds:0.0, 0.0, width, height];
  _transformLayerRotationsAreEnabled2 = [objc_opt_class() _transformLayerRotationsAreEnabled];
  rotatingSnapshotView = self->_rotatingSnapshotView;
  if (_transformLayerRotationsAreEnabled2)
  {
    [(UIView *)rotatingSnapshotView setAutoresizingMask:18];
  }

  else
  {
    v24 = v25;
    [(UIView *)rotatingSnapshotView setTransform:&v24];
  }

  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if ([(UIView *)self->_contentView window]== self->_window)
  {
    [v17 addObject:self->_contentView];
  }

  if ([(UIView *)self->_headerView window]== self->_window)
  {
    [v17 addObject:self->_headerView];
  }

  if ([(UIView *)self->_footerView window]== self->_window)
  {
    [v17 addObject:self->_footerView];
  }

  v18 = [UIView _topMostView:v17 reverse:0];
  [objc_msgSend(v18 "superview")];
  if (!self->_rotationSettings.animateContentRotation)
  {
    edgeClip = self->_rotationSettings.edgeClip;
    if (edgeClip)
    {
      height = [[UIView alloc] initWithFrame:-width, 0.0, width, height];
      [(UIView *)height setBackgroundColor:+[UIColor blackColor]];
      [(UIView *)height setAutoresizingMask:20];
      [(UIView *)self->_rotatingSnapshotView addSubview:height];

      edgeClip = self->_rotationSettings.edgeClip;
      if ((edgeClip & 2) == 0)
      {
LABEL_25:
        if ((edgeClip & 8) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }
    }

    else if ((edgeClip & 2) == 0)
    {
      goto LABEL_25;
    }

    height2 = [[UIView alloc] initWithFrame:width, 0.0, width, height];
    [(UIView *)height2 setBackgroundColor:+[UIColor blackColor]];
    [(UIView *)height2 setAutoresizingMask:17];
    [(UIView *)self->_rotatingSnapshotView addSubview:height2];

    edgeClip = self->_rotationSettings.edgeClip;
    if ((edgeClip & 8) == 0)
    {
LABEL_26:
      if ((edgeClip & 4) == 0)
      {
        return;
      }

      goto LABEL_27;
    }

LABEL_31:
    height3 = [[UIView alloc] initWithFrame:0.0, -height, width, height];
    [(UIView *)height3 setBackgroundColor:+[UIColor blackColor]];
    [(UIView *)height3 setAutoresizingMask:34];
    [(UIView *)self->_rotatingSnapshotView addSubview:height3];

    if ((self->_rotationSettings.edgeClip & 4) == 0)
    {
      return;
    }

LABEL_27:
    height4 = [[UIView alloc] initWithFrame:0.0, height, width, height];
    [(UIView *)height4 setBackgroundColor:+[UIColor blackColor]];
    [(UIView *)height4 setAutoresizingMask:10];
    [(UIView *)self->_rotatingSnapshotView addSubview:height4];

    return;
  }

  if ([(UIView *)self->_contentView superview])
  {
    _CreateRotationSnapshot(self->_snapshotTargetView, self->_rotatingSnapshotView, &self->_contentSnapshotViewStart, 0, &self->_rotationSettings, 1, 0.0, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  }
}

- (void)rotateSnapshots
{
  toOrientation = self->_toOrientation;
  switch(toOrientation)
  {
    case 1:
      v4 = 0.0;
      break;
    case 3:
      v4 = 1.57079633;
      break;
    case 4:
      v4 = -1.57079633;
      break;
    default:
      v4 = 3.14159265;
      if (toOrientation != 2)
      {
        v4 = 0.0;
      }

      break;
  }

  duration = self->_duration;
  CGAffineTransformMakeRotation(&v40, v4);
  *&v40.a = vrndaq_f64(*&v40.a);
  *&v40.c = vrndaq_f64(*&v40.c);
  *&v40.tx = vrndaq_f64(*&v40.tx);
  v41 = v40;
  v6 = _UIAppUseModernRotationAndPresentationBehaviors();
  [(UIView *)self->_window bounds];
  width = v9;
  height = v10;
  if (!v6)
  {
    v40 = v41;
    v42 = CGRectApplyAffineTransform(*&v7, &v40);
    width = v42.size.width;
    height = v42.size.height;
  }

  self->_headerWasHidden = [(UIView *)self->_headerView isHidden];
  self->_footerWasHidden = [(UIView *)self->_footerView isHidden];
  self->_contentWasHidden = [(UIView *)self->_contentView isHidden];
  self->_snapshotTargetWasHidden = [(UIView *)self->_snapshotTargetView isHidden];
  if (duration > 0.0)
  {
    if (!_UIAppUseModernRotationAndPresentationBehaviors())
    {
      rotatingSnapshotView = self->_rotatingSnapshotView;
      v40 = v41;
      [(UIView *)rotatingSnapshotView setTransform:&v40];
      [(UIView *)self->_rotatingSnapshotView setBounds:0.0, 0.0, width, height];
    }

    if (self->_orderKeyboardInAfterRotating)
    {
      [(UIView *)self->_footerView setHidden:1];
    }

    if (self->_rotationSettings.animateContentRotation)
    {
      v40.a = 0.0;
      snapshotTargetView = self->_snapshotTargetView;
      if (snapshotTargetView)
      {
        v15 = self->_rotatingSnapshotView;
        contentSnapshotViewStart = self->_contentSnapshotViewStart;
        contentBottomInset = self->contentBottomInset;
        skipSnapshotOfEndState = self->_rotationSettings.skipSnapshotOfEndState;
        [(UIView *)self->_snapshotTargetView alpha];
        v20 = v19;
        v21 = +[UIView areAnimationsEnabled];
        [UIView setAnimationsEnabled:0];
        if (!skipSnapshotOfEndState)
        {
          [(UIView *)contentSnapshotViewStart frame];
          _CreateRotationSnapshot(snapshotTargetView, v15, &v40, contentSnapshotViewStart, &self->_rotationSettings, 0, contentBottomInset, v22, v23, v24, v25);
          [(UIView *)snapshotTargetView setHidden:1];
          if (self->_rotationSettings.avoidFadingBottomOfContent && self->_rotationSettings.preserveHeight)
          {
            a = v40.a;
            [*&v40.a _contentSize];
            v28 = v27;
            [(UISnapshotView *)contentSnapshotViewStart _contentSize];
            if (v28 <= v29)
            {
              [(UIView *)v15 insertSubview:contentSnapshotViewStart belowSubview:*&a];
              [*&a setBackgroundColor:{+[UIColor clearColor](UIColor, "clearColor")}];
              [*&a setAlpha:0.0];
              v30 = 1.0;
              goto LABEL_24;
            }

            [(UIView *)contentSnapshotViewStart setBackgroundColor:+[UIColor clearColor]];
          }
        }

        [(UISnapshotView *)contentSnapshotViewStart setShadowView:0, *&v40.a];
        v30 = 0.0;
        a = *&contentSnapshotViewStart;
LABEL_24:
        [UIView setAnimationsEnabled:v21, *&v40.a];
        if (self->_rotationSettings.preserveHeight)
        {
          [UIView setAnimationsEnabled:0];
          v31 = v40.a;
          [*&v40.a _setContentOffset:{0.0, 0.0}];
          [*&v31 layoutBelowIfNeeded];
          [UIView setAnimationsEnabled:v21];
          [(UISnapshotView *)contentSnapshotViewStart _setContentOffset:0.0, -0.0];
          [*&v31 _setContentOffset:{0.0, 0.0}];
        }

        else
        {
          v31 = v40.a;
        }

        [*&a setAlpha:v30];
        [0 setAlpha:v20];
        [(UIView *)snapshotTargetView bounds];
        [(UIView *)v15 convertRect:snapshotTargetView fromView:?];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        [(UISnapshotView *)contentSnapshotViewStart setFrame:?];
        [*&v31 setFrame:{v33, v35, v37, v39}];
      }
    }
  }
}

- (void)finishFirstHalfRotation
{
  toOrientation = self->_toOrientation;
  switch(toOrientation)
  {
    case 1:
      v4 = 0.0;
      break;
    case 3:
      v4 = 1.57079633;
      break;
    case 4:
      v4 = -1.57079633;
      break;
    default:
      v4 = 3.14159265;
      if (toOrientation != 2)
      {
        v4 = 0.0;
      }

      break;
  }

  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeRotation(&v15, v4);
  *&v15.a = vrndaq_f64(*&v15.a);
  *&v15.c = vrndaq_f64(*&v15.c);
  *&v15.tx = vrndaq_f64(*&v15.tx);
  headerView = self->_headerView;
  if (headerView)
  {
    [[(UIView *)headerView superview] bounds];
    [(UIView *)self->_headerView bounds];
    [(UIView *)self->_headerView setBounds:?];
    [(UIView *)self->_headerView layoutIfNeeded];
  }

  if (self->_footerView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_footerView bounds];
      v7 = v6;
      v9 = v8;
      [UIKeyboard sizeForInterfaceOrientation:self->_toOrientation];
      [(UIView *)self->_footerView setBounds:v7, v9, v10, v11];
      [(UIView *)self->_footerView activate];
    }

    else
    {
      [[(UIView *)self->_footerView superview] bounds];
      [(UIView *)self->_footerView bounds];
      [(UIView *)self->_footerView setBounds:?];
    }

    [(UIView *)self->_footerView layoutIfNeeded];
  }

  v12 = self->_headerView;
  v14 = v15;
  [(UIView *)v12 setTransform:&v14];
  footerView = self->_footerView;
  v14 = v15;
  [(UIView *)footerView setTransform:&v14];
  [(UIView *)self->_headerView layoutIfNeeded];
  [(UIView *)self->_footerView layoutIfNeeded];
  [(UIClientRotationContext *)self _positionHeaderView:self->_headerView andFooterView:self->_footerView outsideContentViewForInterfaceOrientation:self->_toOrientation];
}

- (void)finishFullRotateUsingOnePartAnimation:(BOOL)animation
{
  if (self->_headerSnapshotViewStart)
  {
    [(UIView *)self->_headerView setHidden:self->_headerWasHidden];
  }

  if (self->_footerSnapshotViewStart || self->_orderKeyboardInAfterRotating)
  {
    [(UIView *)self->_footerView setHidden:self->_footerWasHidden];
  }

  if (self->_contentSnapshotViewStart)
  {
    [(UIView *)self->_contentView setHidden:self->_contentWasHidden];
  }

  snapshotTargetView = self->_snapshotTargetView;
  if (snapshotTargetView)
  {
    [(UIView *)snapshotTargetView setHidden:self->_snapshotTargetWasHidden];
  }

  [(UIView *)self->_rotatingSnapshotView removeFromSuperview];

  [(UIView *)self->_footerEndSnapshotView removeFromSuperview];
  footerStartSnapshotView = self->_footerStartSnapshotView;

  [(UIView *)footerStartSnapshotView removeFromSuperview];
}

@end