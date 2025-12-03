@interface _UIContextMenuContainerView
- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (UIView)contentWrapperView;
- (_UIContextMenuContainerView)initWithFrame:(CGRect)frame allowsBackgroundInteractionAcrossProccesses:(BOOL)proccesses;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_attemptDismiss:(BOOL)dismiss;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_initSwift;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler;
- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)internal;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setPassesBackgroundViewTouchesThrough:(BOOL)through;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIContextMenuContainerView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIContextMenuContainerView;
  [(UIView *)&v4 didMoveToWindow];
  if (self->_passthroughInteraction)
  {
    window = [(UIView *)self window];

    if (window)
    {
      [(UIView *)self addInteraction:self->_passthroughInteraction];
    }
  }
}

- (void)_initSwift
{
  selfCopy = self;
  v3 = sub_18A4A7258();
  v5[4] = sub_188E269B0;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188A8528C;
  v5[3] = &block_descriptor_66;
  v4 = _Block_copy(v5);

  [(UIView *)selfCopy _addTraitCollectionTransformWithIdentifier:v3 transform:v4];

  _Block_release(v4);
}

- (_UIContextMenuContainerView)initWithFrame:(CGRect)frame allowsBackgroundInteractionAcrossProccesses:(BOOL)proccesses
{
  v14.receiver = self;
  v14.super_class = _UIContextMenuContainerView;
  v5 = [(UIView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    if (!proccesses)
    {
      traitCollection = [(UIView *)v5 traitCollection];
      v8 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

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

      containerViewsHitTestAsOpaque = [v8 containerViewsHitTestAsOpaque];
      layer = [(UIView *)v6 layer];
      [layer setHitTestsAsOpaque:containerViewsHitTestAsOpaque];
    }

    [(UIView *)v6 _setOverrideUserInterfaceRenderingMode:1];
    [(_UIContextMenuContainerView *)v6 _initSwift];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIWindowSceneWillUpdateEffectiveGeometryNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIContextMenuContainerView;
  [(UIView *)&v4 dealloc];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v26.receiver = self;
  v26.super_class = _UIContextMenuContainerView;
  [(UIView *)&v26 setBounds:x, y, width, height];
  sizeChangeHandler = [(_UIContextMenuContainerView *)self sizeChangeHandler];
  if (sizeChangeHandler)
  {
    v17 = sizeChangeHandler;
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
      sizeChangeHandler2 = [(_UIContextMenuContainerView *)self sizeChangeHandler];
      [(UIView *)self bounds];
      sizeChangeHandler2[2](sizeChangeHandler2, v24, v25);
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v26.receiver = self;
  v26.super_class = _UIContextMenuContainerView;
  [(UIView *)&v26 setFrame:x, y, width, height];
  sizeChangeHandler = [(_UIContextMenuContainerView *)self sizeChangeHandler];
  if (sizeChangeHandler)
  {
    v17 = sizeChangeHandler;
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
      sizeChangeHandler2 = [(_UIContextMenuContainerView *)self sizeChangeHandler];
      [(UIView *)self frame];
      sizeChangeHandler2[2](sizeChangeHandler2, v24, v25);
    }
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = _UIContextMenuContainerView;
  [(UIView *)&v5 setUserInteractionEnabled:?];
  [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction _setOverrideAllowsHitTestingOnTouchFallbackView:enabledCopy];
}

- (void)willMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = _UIContextMenuContainerView;
  [(UIView *)&v4 willMoveToWindow:window];
  if (self->_passthroughInteraction)
  {
    [(UIView *)self removeInteraction:?];
  }
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  v14.receiver = self;
  v14.super_class = _UIContextMenuContainerView;
  [(UIView *)&v14 _didMoveFromWindow:windowCopy toWindow:toWindowCopy];
  [windowCopy _unregisterScrollToTopView:self];
  [toWindowCopy _registerScrollToTopView:self];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    windowScene = [windowCopy windowScene];
    if (windowScene)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"UIWindowSceneWillUpdateEffectiveGeometryNotification" object:windowScene];
    }

    windowScene2 = [toWindowCopy windowScene];
    if (windowScene2)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__sceneGeometryWillUpdate_ name:@"UIWindowSceneWillUpdateEffectiveGeometryNotification" object:windowScene2];
    }
  }
}

- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  eventCopy = event;
  dismissalHandler = [(_UIContextMenuContainerView *)self dismissalHandler];

  if (!dismissalHandler || eventCopy && (([eventCopy _modifierFlags] & 0x40000) != 0 || (objc_msgSend(eventCopy, "_buttonMask") & 2) != 0))
  {
    lastHitTestWasPassedThroughToInteraction = 0;
  }

  else
  {
    self->_lastHitTestWasPassedThroughToInteraction = 0;
    view = [interactionCopy view];
    window = [(UIView *)self window];
    [view convertPoint:window toView:{x, y}];
    v15 = v14;
    v17 = v16;

    window2 = [(UIView *)self window];
    v19 = [window2 hitTest:eventCopy withEvent:{v15, v17}];

    lastHitTestWasPassedThroughToInteraction = self->_lastHitTestWasPassedThroughToInteraction;
  }

  return lastHitTestWasPassedThroughToInteraction;
}

- (void)setPassesBackgroundViewTouchesThrough:(BOOL)through
{
  if (self->_passesBackgroundViewTouchesThrough != through)
  {
    [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction setEatsTouches:!through];
    self->_passesBackgroundViewTouchesThrough = through;
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (self->_inPassthroughViewHitTest)
  {
LABEL_2:
    v8 = 0;
    goto LABEL_19;
  }

  self->_lastHitTestWasPassedThroughToInteraction = 0;
  v15.receiver = self;
  v15.super_class = _UIContextMenuContainerView;
  v8 = [(UIView *)&v15 hitTest:eventCopy withEvent:x, y];
  dismissalHandler = [(_UIContextMenuContainerView *)self dismissalHandler];

  if (dismissalHandler)
  {
    if (v8 == self || ([(_UIContextMenuContainerView *)self contentWrapperView], v10 = objc_claimAutoreleasedReturnValue(), v10, v8 == v10))
    {
      v11 = [_UIPassthroughScrollInteraction _shouldEventBePassedThrough:eventCopy];
      type = [eventCopy type];
      v13 = type;
      if (!v11 && type != 11)
      {
        if (!-[_UIContextMenuContainerView allowsDragEventsToPassthrough](self, "allowsDragEventsToPassthrough") || [eventCopy type] != 9)
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
    if (eventCopy && (([eventCopy _modifierFlags] & 0x40000) != 0 || (objc_msgSend(eventCopy, "_buttonMask") & 2) != 0))
    {
      [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction __forciblyEndWithReason:5];
    }

    goto LABEL_2;
  }

LABEL_19:

  return v8;
}

- (void)_attemptDismiss:(BOOL)dismiss
{
  if (!self->_didDismiss)
  {
    dismissCopy = dismiss;
    dismissalHandler = [(_UIContextMenuContainerView *)self dismissalHandler];

    if (dismissalHandler)
    {
      self->_didDismiss = 1;
      dismissalHandler2 = [(_UIContextMenuContainerView *)self dismissalHandler];
      v7 = dismissalHandler2;
      if (dismissCopy)
      {
        dispatch_async(MEMORY[0x1E69E96A0], dismissalHandler2);
      }

      else
      {
        dismissalHandler2[2](dismissalHandler2);
      }
    }
  }
}

- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)internal
{
  v7.receiver = self;
  v7.super_class = _UIContextMenuContainerView;
  [(UIView *)&v7 _traitCollectionDidChangeOnSubtreeInternal:?];
  subtreeTraitPropagationHandler = [(_UIContextMenuContainerView *)self subtreeTraitPropagationHandler];

  if (subtreeTraitPropagationHandler)
  {
    subtreeTraitPropagationHandler2 = [(_UIContextMenuContainerView *)self subtreeTraitPropagationHandler];
    (subtreeTraitPropagationHandler2)[2](subtreeTraitPropagationHandler2, internal);
  }
}

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 1, location, *&location.y);
  }
}

- (UIView)contentWrapperView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentWrapperView);

  return WeakRetained;
}

@end