@interface _UINavigationControllerPalette
- (BOOL)paletteShadowIsHidden;
- (CGSize)_size;
- (UIEdgeInsets)preferredContentInsets;
- (UIView)_backgroundView;
- (id)_attachedPinningTopBar;
- (id)_initWithNavigationController:(id)controller forEdge:(unint64_t)edge;
- (void)_configureConstraintsForBackground:(id)background;
- (void)_configurePaletteConstraintsForBoundary;
- (void)_disableConstraints;
- (void)_enableConstraints;
- (void)_resetConstraintConstants:(double)constants;
- (void)_resetHeightConstraintConstant;
- (void)_setAttached:(BOOL)attached didComplete:(BOOL)complete;
- (void)_setAttachmentIsChanging:(BOOL)changing;
- (void)_setBackgroundView:(id)view;
- (void)_setLeftConstraintConstant:(double)constant;
- (void)_setRestartPaletteTransitionIfNecessary:(BOOL)necessary;
- (void)_setSize:(CGSize)size;
- (void)_setTopConstraintConstant:(double)constant;
- (void)_setVisualAltitude:(double)altitude;
- (void)_setVisualAltitudeBias:(CGSize)bias;
- (void)_setupBackgroundViewIfNecessary;
- (void)_updateBackgroundConstraintsIfNecessary;
- (void)_updateBackgroundView;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)setFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame isAnimating:(BOOL)animating;
- (void)setPaletteShadowIsHidden:(BOOL)hidden;
- (void)setPinned:(BOOL)pinned;
- (void)setPinningBarShadowIsHidden:(BOOL)hidden;
- (void)setPinningBarShadowWasHidden:(BOOL)hidden;
@end

@implementation _UINavigationControllerPalette

- (id)_initWithNavigationController:(id)controller forEdge:(unint64_t)edge
{
  v7.receiver = self;
  v7.super_class = _UINavigationControllerPalette;
  result = [(UIView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    *(result + 56) = controller;
    *(result + 55) = edge;
    *(result + 432) |= 0x18u;
    *(result + 504) = 0u;
    *(result + 520) = 0u;
  }

  return result;
}

- (void)dealloc
{
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
  }

  constraints = self->__constraints;
  if (constraints)
  {
  }

  backgroundConstraints = self->__backgroundConstraints;
  if (backgroundConstraints)
  {
  }

  v6.receiver = self;
  v6.super_class = _UINavigationControllerPalette;
  [(UIView *)&v6 dealloc];
}

- (void)_setAttachmentIsChanging:(BOOL)changing
{
  if (changing)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_paletteFlags = *&self->_paletteFlags & 0xFD | v3;
}

- (void)_setRestartPaletteTransitionIfNecessary:(BOOL)necessary
{
  if (necessary)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_paletteFlags = *&self->_paletteFlags & 0xFB | v3;
}

- (void)setPinningBarShadowIsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(_UINavigationControllerPalette *)self pinningBarShadowIsHidden]!= hidden)
  {
    v5 = hiddenCopy ? 16 : 0;
    *&self->_paletteFlags = *&self->_paletteFlags & 0xEF | v5;
    if ([(UIView *)self superview])
    {
      if (self->__pinningBar && (objc_opt_respondsToSelector() & 1) != 0)
      {
        pinningBar = self->__pinningBar;
        v7 = ([(_UINavigationControllerPalette *)self pinningBarShadowIsHidden]^ 1);

        [pinningBar _setShadowAlpha:v7];
      }
    }
  }
}

- (void)setPinningBarShadowWasHidden:(BOOL)hidden
{
  if (hidden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_paletteFlags = *&self->_paletteFlags & 0xBF | v3;
}

- (BOOL)paletteShadowIsHidden
{
  if ((*&self->_paletteFlags & 0x20) != 0)
  {
    return 1;
  }

  _attachedPinningTopBar = [(_UINavigationControllerPalette *)self _attachedPinningTopBar];

  return [_attachedPinningTopBar _hidesShadow];
}

- (id)_attachedPinningTopBar
{
  if ([(_UINavigationControllerPalette *)self isAttached]&& [(_UINavigationControllerPalette *)self boundaryEdge]== 2)
  {
    return self->__pinningBar;
  }

  else
  {
    return 0;
  }
}

- (void)_updateBackgroundView
{
  navigationBar = [(UINavigationController *)self->_navController navigationBar];

  [(UINavigationBar *)navigationBar _updatePaletteBackgroundIfNecessary];
}

- (void)setPaletteShadowIsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(_UINavigationControllerPalette *)self paletteShadowIsHidden]!= hidden)
  {
    if (hiddenCopy)
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    *&self->_paletteFlags = *&self->_paletteFlags & 0xDF | v5;

    [(_UINavigationControllerPalette *)self _updateBackgroundView];
  }
}

- (void)_setAttached:(BOOL)attached didComplete:(BOOL)complete
{
  completeCopy = complete;
  attachedCopy = attached;
  paletteFlags = self->_paletteFlags;
  if (complete)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  *&self->_paletteFlags = v8 | attached | paletteFlags & 0xFC;
  if (!attached)
  {
    if (!complete && (paletteFlags & 1) == 0)
    {
      return;
    }

    self->__unpinnedController = 0;
    p_pinningBar = &self->__pinningBar;
    goto LABEL_17;
  }

  p_pinningBar = &self->__pinningBar;
  if (objc_opt_respondsToSelector())
  {
    if ([*p_pinningBar _hidesShadow])
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_paletteFlags = *&self->_paletteFlags & 0xBF | v10;
  }

  if (completeCopy || (paletteFlags & 1) == 0)
  {
LABEL_17:
    v11 = *p_pinningBar;

    [v11 _palette:self isAttaching:attachedCopy didComplete:completeCopy];
  }
}

- (void)setPinned:(BOOL)pinned
{
  if (pinned)
  {
    self->__unpinnedController = 0;
    v4 = *&self->_paletteFlags | 8;
  }

  else
  {
    self->__unpinnedController = [(UINavigationController *)self->_navController topViewController];
    v4 = *&self->_paletteFlags & 0xF7;
  }

  *&self->_paletteFlags = v4;
}

- (void)_configureConstraintsForBackground:(id)background
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (self->_boundaryEdge != 5 && background && !self->_backgroundView)
  {
    [(UIView *)self bounds];
    v6 = v5;
    v8 = v7;
    [(UIView *)self _visualAltitudeSensitiveBoundsWithInfiniteEdges:10];
    v10 = v9;
    v12 = [MEMORY[0x1E69977A0] constraintWithItem:background attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:v11 - v6];
    v13 = [MEMORY[0x1E69977A0] constraintWithItem:background attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:v10 - v8];
    v14 = [MEMORY[0x1E69977A0] constraintWithItem:background attribute:8 relatedBy:0 toItem:self attribute:8 multiplier:1.0 constant:0.0];
    v15[0] = v12;
    v15[1] = [MEMORY[0x1E69977A0] constraintWithItem:background attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
    v15[2] = v13;
    v15[3] = v14;
    -[_UINavigationControllerPalette _setBackgroundConstraints:](self, "_setBackgroundConstraints:", [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4]);
    [background setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self addConstraints:self->__backgroundConstraints];
  }
}

- (void)_updateBackgroundConstraintsIfNecessary
{
  backgroundConstraints = self->__backgroundConstraints;
  if (backgroundConstraints)
  {
    v4 = [(NSArray *)backgroundConstraints objectAtIndex:1];
    v5 = [(NSArray *)self->__backgroundConstraints objectAtIndex:3];
    if (self->__palettePinningBarHidden && [(_UINavigationControllerPalette *)self isAttached])
    {
      v6 = 0.0;
      if ([(UINavigationController *)self->_navController _viewControllerUnderlapsStatusBar])
      {
        [(UINavigationController *)self->_navController _statusBarHeightForCurrentInterfaceOrientation];
        v6 = v7;
      }

      backgroundUnderlapHeight = self->_backgroundUnderlapHeight;
      if (v6 != backgroundUnderlapHeight)
      {
        v9 = v6 - backgroundUnderlapHeight;
        [v4 constant];
        [v4 setConstant:v10 - v9];
        [v5 constant];
        [v5 setConstant:v9 + v11];
        self->_backgroundUnderlapHeight = v6;
      }
    }

    else if (self->_backgroundUnderlapHeight != 0.0)
    {
      [v4 constant];
      [v4 setConstant:v12 + self->_backgroundUnderlapHeight];
      [v5 constant];
      [v5 setConstant:v13 - self->_backgroundUnderlapHeight];
      self->_backgroundUnderlapHeight = 0.0;
    }
  }
}

- (void)_configurePaletteConstraintsForBoundary
{
  v27[3] = *MEMORY[0x1E69E9840];
  boundaryEdge = self->_boundaryEdge;
  if (boundaryEdge == 5)
  {
    navigationBar = [(UINavigationController *)self->_navController navigationBar];
    if ([(UIView *)navigationBar superview]&& [(UIView *)self superview])
    {
      constraints = self->__constraints;
      if (!constraints)
      {
        height = self->__size.height;
        v12 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:1 relatedBy:0 toItem:navigationBar attribute:1 multiplier:1.0 constant:0.0];
        v13 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:7 relatedBy:0 toItem:navigationBar attribute:7 multiplier:1.0 constant:0.0];
        v14 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:height];
        v23[0] = v12;
        v23[1] = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:4 relatedBy:0 toItem:navigationBar attribute:3 multiplier:1.0 constant:0.0];
        v23[2] = v13;
        v23[3] = v14;
        -[_UINavigationControllerPalette _setConstraints:](self, "_setConstraints:", [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4]);
        [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
        constraints = self->__constraints;
      }

      v15 = MEMORY[0x1E69977A0];
      goto LABEL_30;
    }
  }

  else if (boundaryEdge == 2)
  {
    v4 = [-[UINavigationController _outermostNavigationController](self->_navController "_outermostNavigationController")];
    if ([v4 superview] && -[UIView superview](self, "superview"))
    {
      v5 = self->__constraints;
      if (!v5)
      {
        v8 = 0;
        goto LABEL_26;
      }

      v6 = [(NSArray *)v5 count];
      if (v6)
      {
        if (v6 == 4)
        {
          if (v4 != [-[NSArray firstObject](self->__constraints "firstObject")])
          {
            v7 = MEMORY[0x1E69977A0];
            v27[0] = [(NSArray *)self->__constraints objectAtIndexedSubscript:0];
            v27[1] = [(NSArray *)self->__constraints objectAtIndexedSubscript:1];
            v27[2] = [(NSArray *)self->__constraints objectAtIndexedSubscript:2];
            [v7 deactivateConstraints:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v27, 3)}];
            v8 = [(NSArray *)self->__constraints objectAtIndexedSubscript:3];
            [(_UINavigationControllerPalette *)self _setConstraints:0];
            goto LABEL_25;
          }

LABEL_24:
          v8 = 0;
LABEL_25:
          constraints = self->__constraints;
          if (constraints)
          {
LABEL_29:
            v15 = MEMORY[0x1E69977A0];
LABEL_30:
            [v15 activateConstraints:constraints];
            return;
          }

LABEL_26:
          v18 = self->__size.height;
          v19 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:1 relatedBy:0 toItem:v4 attribute:1 multiplier:1.0 constant:0.0];
          v20 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:7 relatedBy:0 toItem:v4 attribute:7 multiplier:1.0 constant:0.0];
          if (!v8)
          {
            v8 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v18];
          }

          v24[0] = v19;
          v24[1] = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:3 relatedBy:0 toItem:v4 attribute:4 multiplier:1.0 constant:0.0];
          v24[2] = v20;
          v24[3] = v8;
          -[_UINavigationControllerPalette _setConstraints:](self, "_setConstraints:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4]);
          [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
          constraints = self->__constraints;
          goto LABEL_29;
        }

        if (os_variant_has_internal_diagnostics())
        {
          v21 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            v22 = self->__constraints;
            *buf = 138412290;
            v26 = v22;
            _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "If we have a constraints array, we should have exactly 4 constraints, but we have: %@", buf, 0xCu);
          }
        }

        else
        {
          v16 = *(__UILogGetCategoryCachedImpl("Assert", &_configurePaletteConstraintsForBoundary___s_category) + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = self->__constraints;
            *buf = 138412290;
            v26 = v17;
            _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "If we have a constraints array, we should have exactly 4 constraints, but we have: %@", buf, 0xCu);
          }
        }

        [MEMORY[0x1E69977A0] deactivateConstraints:self->__constraints];
      }

      [(_UINavigationControllerPalette *)self _setConstraints:0];
      goto LABEL_24;
    }
  }

  else
  {

    [(UIView *)self setAutoresizingMask:0];
  }
}

- (void)_disableConstraints
{
  if (self->__constraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];

    [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:1];
  }
}

- (void)_enableConstraints
{
  if (self->__constraints)
  {
    [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = MEMORY[0x1E69977A0];
    constraints = self->__constraints;

    [v3 activateConstraints:constraints];
  }
}

- (void)_resetConstraintConstants:(double)constants
{
  v46 = *MEMORY[0x1E69E9840];
  constraints = self->__constraints;
  if (!constraints)
  {
    goto LABEL_38;
  }

  boundaryEdge = self->_boundaryEdge;
  if (boundaryEdge <= 2)
  {
    if (boundaryEdge != 1)
    {
      if (boundaryEdge != 2)
      {
        goto LABEL_38;
      }

LABEL_9:
      v7 = [(NSArray *)constraints objectAtIndex:3];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v8 = self->__constraints;
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v40;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v40 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v39 + 1) + 8 * i);
            height = 0.0;
            if (v13 == v7)
            {
              height = self->__size.height;
            }

            [v13 setConstant:height];
          }

          v10 = [(NSArray *)v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v10);
      }

      goto LABEL_38;
    }

    goto LABEL_19;
  }

  if (boundaryEdge == 3)
  {
LABEL_19:
    v15 = [(NSArray *)constraints objectAtIndex:2];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = self->__constraints;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v35 + 1) + 8 * j);
          width = 0.0;
          if (v21 == v15)
          {
            width = self->__size.width;
          }

          [v21 setConstant:width];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v18);
    }

    goto LABEL_38;
  }

  if (boundaryEdge != 5)
  {
    if (boundaryEdge != 4)
    {
      goto LABEL_38;
    }

    goto LABEL_9;
  }

  v23 = [(NSArray *)constraints objectAtIndex:3];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = self->__constraints;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v31 + 1) + 8 * k);
        v30 = 0.0;
        if (v29 == v23)
        {
          v30 = self->__size.height;
        }

        [v29 setConstant:v30];
      }

      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v26);
  }

LABEL_38:
  if (constants != 0.0)
  {
    [(_UINavigationControllerPalette *)self _setTopConstraintConstant:constants];
  }
}

- (void)setFrame:(CGRect)frame isAnimating:(BOOL)animating
{
  animatingCopy = animating;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v11 = +[UIView _isInAnimationBlockWithAnimationsEnabled]^ animatingCopy;
  if (has_internal_diagnostics)
  {
    if (v11)
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "The isAnimating parameter in the call to setFrame:isInAnimationBlock: is lying", buf, 2u);
      }
    }
  }

  else if (v11)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &setFrame_isAnimating____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "The isAnimating parameter in the call to setFrame:isInAnimationBlock: is lying", buf, 2u);
    }
  }

  [(_UINavigationControllerPalette *)self _setSize:width, height];
  if (!+[UIView _isInAnimationBlockWithAnimationsEnabled]&& [(UIView *)self window]&& [(UIView *)[[(_UINavigationControllerPalette *)self navController] navigationBar] window])
  {
    [(_UINavigationControllerPalette *)self _disableConstraints];
    v16.receiver = self;
    v16.super_class = _UINavigationControllerPalette;
    [(UIView *)&v16 setFrame:x, y, width, height];
    [(UIView *)self layoutBelowIfNeeded];
    [(_UINavigationControllerPalette *)self _enableConstraints];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _UINavigationControllerPalette;
    [(UIView *)&v15 setFrame:x, y, width, height];
    [(UIView *)self layoutBelowIfNeeded];
  }

  [(_UINavigationControllerPalette *)self _resetConstraintConstants:0.0];
  if (self->_boundaryEdge == 5)
  {
    navController = self->_navController;
    if (navController)
    {
      [(UINavigationController *)navController _updateLayoutForStatusBarAndInterfaceOrientation];
    }
  }
}

- (void)_setSize:(CGSize)size
{
  height = self->__size.height;
  self->__size = size;
  if (height != size.height)
  {
    [(_UINavigationControllerPalette *)self _resetHeightConstraintConstant];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(_UINavigationControllerPalette *)self _setSize:frame.size.width, frame.size.height];
  v8.receiver = self;
  v8.super_class = _UINavigationControllerPalette;
  [(UIView *)&v8 setFrame:x, y, width, height];
  if ([(UIView *)self window])
  {
    [(UIView *)self layoutBelowIfNeeded];
  }
}

- (void)_setTopConstraintConstant:(double)constant
{
  constraints = self->__constraints;
  if (constraints)
  {
    boundaryEdge = self->_boundaryEdge;
    if (boundaryEdge == 5 || boundaryEdge == 2)
    {
      v8 = [(NSArray *)constraints objectAtIndex:1];
      [v8 constant];
      if (v9 != constant)
      {

        [v8 setConstant:constant];
      }
    }
  }
}

- (void)_setLeftConstraintConstant:(double)constant
{
  constraints = self->__constraints;
  if (constraints)
  {
    boundaryEdge = self->_boundaryEdge;
    if (boundaryEdge == 5 || boundaryEdge == 2)
    {
      v8 = [(NSArray *)constraints objectAtIndex:0];
      [v8 constant];
      if (v9 != constant)
      {

        [v8 setConstant:constant];
      }
    }
  }
}

- (void)_resetHeightConstraintConstant
{
  constraints = self->__constraints;
  if (constraints)
  {
    boundaryEdge = self->_boundaryEdge;
    if (boundaryEdge == 5 || boundaryEdge == 2)
    {
      v6 = [(NSArray *)constraints objectAtIndex:3];
      p_size = &self->__size;
      height = p_size->height;
      [v6 constant];
      if (height != v9)
      {
        v10 = p_size->height;

        [v6 setConstant:v10];
      }
    }
  }
}

- (void)_setupBackgroundViewIfNecessary
{
  if (self->_boundaryEdge != 5 && !self->_backgroundView)
  {
    v3 = [self->__pinningBar _backgroundViewForPalette:self];
    self->_backgroundViewLayout = [v3 layout];
    [(UIView *)self bounds];
    [v3 setFrame:?];
    [(UIView *)self insertSubview:v3 atIndex:0];
    [(_UINavigationControllerPalette *)self _configureConstraintsForBackground:v3];
    self->_backgroundView = v3;
  }
}

- (UIView)_backgroundView
{
  [(_UINavigationControllerPalette *)self _setupBackgroundViewIfNecessary];
  result = [(_UIBarBackground *)self->_backgroundView customBackgroundView];
  if (!result)
  {
    return &self->_backgroundView->super;
  }

  return result;
}

- (void)_setBackgroundView:(id)view
{
  [(_UINavigationControllerPalette *)self _setupBackgroundViewIfNecessary];
  backgroundView = self->_backgroundView;

  [(_UIBarBackground *)backgroundView setCustomBackgroundView:view];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = _UINavigationControllerPalette;
  [(UIView *)&v3 didMoveToSuperview];
  [(_UINavigationControllerPalette *)self _setupBackgroundViewIfNecessary];
  if ([(UIView *)self superview])
  {
    if (self->__pinningBar)
    {
      if (objc_opt_respondsToSelector())
      {
        [self->__pinningBar _setShadowAlpha:{(-[_UINavigationControllerPalette pinningBarShadowIsHidden](self, "pinningBarShadowIsHidden") ^ 1)}];
      }
    }

    [(_UINavigationControllerPalette *)self _configurePaletteConstraintsForBoundary];
  }
}

- (void)_setVisualAltitude:(double)altitude
{
  v4.receiver = self;
  v4.super_class = _UINavigationControllerPalette;
  [(UIView *)&v4 _setVisualAltitude:altitude];
  if (self->_backgroundView)
  {
    [(_UINavigationControllerPalette *)self _configureConstraintsForBackground:?];
  }
}

- (void)_setVisualAltitudeBias:(CGSize)bias
{
  v4.receiver = self;
  v4.super_class = _UINavigationControllerPalette;
  [(UIView *)&v4 _setVisualAltitudeBias:bias.width, bias.height];
  if (self->_backgroundView)
  {
    [(_UINavigationControllerPalette *)self _configureConstraintsForBackground:?];
  }
}

- (UIEdgeInsets)preferredContentInsets
{
  top = self->_preferredContentInsets.top;
  left = self->_preferredContentInsets.left;
  bottom = self->_preferredContentInsets.bottom;
  right = self->_preferredContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)_size
{
  width = self->__size.width;
  height = self->__size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end