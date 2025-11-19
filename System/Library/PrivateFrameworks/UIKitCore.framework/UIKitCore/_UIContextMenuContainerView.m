@interface _UIContextMenuContainerView
- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (UIView)contentWrapperView;
- (_UIContextMenuContainerView)initWithFrame:(CGRect)a3 allowsBackgroundInteractionAcrossProccesses:(BOOL)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_attemptDismiss:(BOOL)a3;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_initSwift;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4;
- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPassesBackgroundViewTouchesThrough:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIContextMenuContainerView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIContextMenuContainerView;
  [(UIView *)&v4 didMoveToWindow];
  if (self->_passthroughInteraction)
  {
    v3 = [(UIView *)self window];

    if (v3)
    {
      [(UIView *)self addInteraction:self->_passthroughInteraction];
    }
  }
}

- (void)_initSwift
{
  v2 = self;
  v3 = sub_18A4A7258();
  v5[4] = sub_188E269B0;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188A8528C;
  v5[3] = &block_descriptor_66;
  v4 = _Block_copy(v5);

  [(UIView *)v2 _addTraitCollectionTransformWithIdentifier:v3 transform:v4];

  _Block_release(v4);
}

- (_UIContextMenuContainerView)initWithFrame:(CGRect)a3 allowsBackgroundInteractionAcrossProccesses:(BOOL)a4
{
  v14.receiver = self;
  v14.super_class = _UIContextMenuContainerView;
  v5 = [(UIView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    if (!a4)
    {
      v7 = [(UIView *)v5 traitCollection];
      v8 = _UIContextMenuGetPlatformMetrics([v7 userInterfaceIdiom]);

      if ([v8 supportsPassthroughInteraction])
      {
        v9 = objc_alloc_init(_UIPassthroughScrollInteraction);
        passthroughInteraction = v6->_passthroughInteraction;
        v6->_passthroughInteraction = v9;

        [(_UIPassthroughScrollInteraction *)v6->_passthroughInteraction setDelegate:v6];
        [(_UIPassthroughScrollInteraction *)v6->_passthroughInteraction setRecognizeOnPrimaryButtonDown:1];
        [(_UIPassthroughScrollInteraction *)v6->_passthroughInteraction setRecognizeOnSecondaryButtonDown:1];
        -[_UIPassthroughScrollInteraction setHitTestsAsOpaque:](v6->_passthroughInteraction, "setHitTestsAsOpaque:", [v8 containerViewsHitTestAsOpaque]);
      }

      v11 = [v8 containerViewsHitTestAsOpaque];
      v12 = [(UIView *)v6 layer];
      [v12 setHitTestsAsOpaque:v11];
    }

    [(UIView *)v6 _setOverrideUserInterfaceRenderingMode:1];
    [(_UIContextMenuContainerView *)v6 _initSwift];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIWindowSceneWillUpdateEffectiveGeometryNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIContextMenuContainerView;
  [(UIView *)&v4 dealloc];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v26.receiver = self;
  v26.super_class = _UIContextMenuContainerView;
  [(UIView *)&v26 setBounds:x, y, width, height];
  v16 = [(_UIContextMenuContainerView *)self sizeChangeHandler];
  if (v16)
  {
    v17 = v16;
    [(UIView *)self bounds];
    v28.origin.x = v18;
    v28.origin.y = v19;
    v28.size.width = v20;
    v28.size.height = v21;
    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    v22 = CGRectEqualToRect(v27, v28);

    if (!v22)
    {
      v23 = [(_UIContextMenuContainerView *)self sizeChangeHandler];
      [(UIView *)self bounds];
      v23[2](v23, v24, v25);
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v26.receiver = self;
  v26.super_class = _UIContextMenuContainerView;
  [(UIView *)&v26 setFrame:x, y, width, height];
  v16 = [(_UIContextMenuContainerView *)self sizeChangeHandler];
  if (v16)
  {
    v17 = v16;
    [(UIView *)self frame];
    v28.origin.x = v18;
    v28.origin.y = v19;
    v28.size.width = v20;
    v28.size.height = v21;
    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    v22 = CGRectEqualToRect(v27, v28);

    if (!v22)
    {
      v23 = [(_UIContextMenuContainerView *)self sizeChangeHandler];
      [(UIView *)self frame];
      v23[2](v23, v24, v25);
    }
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UIContextMenuContainerView;
  [(UIView *)&v5 setUserInteractionEnabled:?];
  [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction _setOverrideAllowsHitTestingOnTouchFallbackView:v3];
}

- (void)willMoveToWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIContextMenuContainerView;
  [(UIView *)&v4 willMoveToWindow:a3];
  if (self->_passthroughInteraction)
  {
    [(UIView *)self removeInteraction:?];
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _UIContextMenuContainerView;
  [(UIView *)&v14 _didMoveFromWindow:v6 toWindow:v7];
  [v6 _unregisterScrollToTopView:self];
  [v7 _registerScrollToTopView:self];
  v8 = [(UIView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = [v6 windowScene];
    if (v10)
    {
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 removeObserver:self name:@"UIWindowSceneWillUpdateEffectiveGeometryNotification" object:v10];
    }

    v12 = [v7 windowScene];
    if (v12)
    {
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 addObserver:self selector:sel__sceneGeometryWillUpdate_ name:@"UIWindowSceneWillUpdateEffectiveGeometryNotification" object:v12];
    }
  }
}

- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = [(_UIContextMenuContainerView *)self dismissalHandler];

  if (!v11 || v10 && (([v10 _modifierFlags] & 0x40000) != 0 || (objc_msgSend(v10, "_buttonMask") & 2) != 0))
  {
    lastHitTestWasPassedThroughToInteraction = 0;
  }

  else
  {
    self->_lastHitTestWasPassedThroughToInteraction = 0;
    v12 = [v9 view];
    v13 = [(UIView *)self window];
    [v12 convertPoint:v13 toView:{x, y}];
    v15 = v14;
    v17 = v16;

    v18 = [(UIView *)self window];
    v19 = [v18 hitTest:v10 withEvent:{v15, v17}];

    lastHitTestWasPassedThroughToInteraction = self->_lastHitTestWasPassedThroughToInteraction;
  }

  return lastHitTestWasPassedThroughToInteraction;
}

- (void)setPassesBackgroundViewTouchesThrough:(BOOL)a3
{
  if (self->_passesBackgroundViewTouchesThrough != a3)
  {
    [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction setEatsTouches:!a3];
    self->_passesBackgroundViewTouchesThrough = a3;
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (self->_inPassthroughViewHitTest)
  {
LABEL_2:
    v8 = 0;
    goto LABEL_19;
  }

  self->_lastHitTestWasPassedThroughToInteraction = 0;
  v15.receiver = self;
  v15.super_class = _UIContextMenuContainerView;
  v8 = [(UIView *)&v15 hitTest:v7 withEvent:x, y];
  v9 = [(_UIContextMenuContainerView *)self dismissalHandler];

  if (v9)
  {
    if (v8 == self || ([(_UIContextMenuContainerView *)self contentWrapperView], v10 = objc_claimAutoreleasedReturnValue(), v10, v8 == v10))
    {
      v11 = [_UIPassthroughScrollInteraction _shouldEventBePassedThrough:v7];
      v12 = [v7 type];
      v13 = v12;
      if (!v11 && v12 != 11)
      {
        if (!-[_UIContextMenuContainerView allowsDragEventsToPassthrough](self, "allowsDragEventsToPassthrough") || [v7 type] != 9)
        {
          goto LABEL_18;
        }

LABEL_17:

        goto LABEL_22;
      }

      if (self->_passesBackgroundViewTouchesThrough)
      {

        if (v13 != 11)
        {
          [(_UIContextMenuContainerView *)self _attemptDismiss:1];
        }

        v8 = 0;
      }

      if (v11)
      {
        self->_lastHitTestWasPassedThroughToInteraction = 1;
        goto LABEL_17;
      }
    }

LABEL_18:
    if (v8)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (v7 && (([v7 _modifierFlags] & 0x40000) != 0 || (objc_msgSend(v7, "_buttonMask") & 2) != 0))
    {
      [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction __forciblyEndWithReason:5];
    }

    goto LABEL_2;
  }

LABEL_19:

  return v8;
}

- (void)_attemptDismiss:(BOOL)a3
{
  if (!self->_didDismiss)
  {
    v3 = a3;
    v5 = [(_UIContextMenuContainerView *)self dismissalHandler];

    if (v5)
    {
      self->_didDismiss = 1;
      v6 = [(_UIContextMenuContainerView *)self dismissalHandler];
      v7 = v6;
      if (v3)
      {
        dispatch_async(MEMORY[0x1E69E96A0], v6);
      }

      else
      {
        v6[2](v6);
      }
    }
  }
}

- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)a3
{
  v7.receiver = self;
  v7.super_class = _UIContextMenuContainerView;
  [(UIView *)&v7 _traitCollectionDidChangeOnSubtreeInternal:?];
  v5 = [(_UIContextMenuContainerView *)self subtreeTraitPropagationHandler];

  if (v5)
  {
    v6 = [(_UIContextMenuContainerView *)self subtreeTraitPropagationHandler];
    (v6)[2](v6, a3);
  }
}

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 1, a3, *&a3.y);
  }
}

- (UIView)contentWrapperView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentWrapperView);

  return WeakRetained;
}

@end