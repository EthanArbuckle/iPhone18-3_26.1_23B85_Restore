@interface UIControl
+ (unint64_t)_primaryStateForState:(unint64_t)state;
- (BOOL)_allowsSymbolAnimations;
- (BOOL)_hasActionForEventMask:(unint64_t)mask;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canBecomeFocused;
- (BOOL)cancelMouseTracking;
- (BOOL)cancelTouchTracking;
- (BOOL)isContextMenuInteractionEnabled;
- (BOOL)isPointerInteractionEnabled;
- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)shouldTrack;
- (BOOL)showsMenuAsPrimaryAction;
- (CGPoint)menuAttachmentPointForConfiguration:(UIContextMenuConfiguration *)configuration;
- (NSArray)actionsForTarget:(id)target forControlEvent:(UIControlEvents)controlEvent;
- (NSSet)allTargets;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UIControl)initWithCoder:(NSCoder *)coder;
- (UIControl)initWithFrame:(CGRect)frame;
- (UIControl)initWithFrame:(CGRect)frame primaryAction:(UIAction *)primaryAction;
- (UIControlContentHorizontalAlignment)effectiveContentHorizontalAlignment;
- (UIControlEvents)allControlEvents;
- (UIControlState)state;
- (UIPointerInteraction)_pointerInteraction;
- (UIPointerInteraction)_proxyPointerInteraction;
- (UIPointerInteraction)pointerInteraction;
- (double)_highlightCornerRadius;
- (id)_contextMenuInteraction;
- (id)_contextMenuInteraction:(id)interaction configuration:(id)configuration interactionEffectForTargetedPreview:(id)preview;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_createPointerInteraction;
- (id)_distributionStatisticsForUserInteractionDuration;
- (id)_firstTouchForEvent:(void *)event;
- (id)_proxySender;
- (id)_safeHoverStyle;
- (id)_scalarStatisticsForUserTouchUpInsideEvent;
- (id)_scalarStatisticsForUserValueChangedEvent;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (int64_t)effectiveContentVerticalAlignment;
- (unint64_t)_stateForFocusUpdateContext:(id)context;
- (void)_activateForAccessibilityHUDLiftAtPoint:(CGPoint)point;
- (void)_addControlTargetAction:(id)action;
- (void)_beginInteractionDurationStatisticMeasurements;
- (void)_commitInteractionDurationStatisticMeasurements;
- (void)_connectInterfaceBuilderEventConnection:(id)connection;
- (void)_contextMenuInteraction:(id)interaction willBeginWithConfiguration:(id)configuration;
- (void)_diagnoseFocusabilityForReport:(id)report;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_incrementStatisticsForUserActionForEvents:(unint64_t)events;
- (void)_invalidatePointerInteraction;
- (void)_registerCustomHoverStylePointerDriverIfNeeded;
- (void)_sendActionsForEvents:(unint64_t)events withEvent:(id)event;
- (void)_setHasActiveMenuPresentation:(BOOL)presentation;
- (void)_setHighlightOnMouseDown:(BOOL)down;
- (void)_setHoverStyle:(void *)style implicit:(void *)implicit;
- (void)_setLastHighlightSuccessful:(BOOL)successful;
- (void)_setProxyPointerInteraction:(id)interaction;
- (void)_setProxySender:(id)sender;
- (void)_setTouchHasHighlighted:(BOOL)highlighted;
- (void)_willMoveToWindow:(id)window;
- (void)addAction:(UIAction *)action forControlEvents:(UIControlEvents)controlEvents;
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
- (void)cancelTrackingWithEvent:(UIEvent *)event;
- (void)contextMenuInteraction:(UIContextMenuInteraction *)interaction willEndForConfiguration:(UIContextMenuConfiguration *)configuration animator:(id)animator;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateEventHandlers:(void *)iterator;
- (void)performPrimaryAction;
- (void)removeAction:(UIAction *)action forControlEvents:(UIControlEvents)controlEvents;
- (void)removeActionForIdentifier:(UIActionIdentifier)actionIdentifier forControlEvents:(UIControlEvents)controlEvents;
- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event;
- (void)setContextMenuInteractionEnabled:(BOOL)contextMenuInteractionEnabled;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPointerInteractionEnabled:(BOOL)enabled;
- (void)setRequiresDisplayOnTracking:(BOOL)tracking;
- (void)setSelected:(BOOL)selected;
- (void)setShowsMenuAsPrimaryAction:(BOOL)showsMenuAsPrimaryAction;
- (void)setShowsMenuFromSource:(BOOL)source;
- (void)setSymbolAnimationEnabled:(BOOL)symbolAnimationEnabled;
- (void)setTracking:(BOOL)tracking;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UIControl

- (UIControlState)state
{
  if ([(UIControl *)self isEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = v3 | [(UIControl *)self isHighlighted];
  if ([(UIControl *)self isSelected])
  {
    v4 |= 4uLL;
  }

  if ([(UIView *)self isFocused])
  {
    return v4 | 8;
  }

  else
  {
    return v4;
  }
}

- (void)_invalidatePointerInteraction
{
  _proxyPointerInteraction = [(UIControl *)self _proxyPointerInteraction];
  v5 = _proxyPointerInteraction;
  if (_proxyPointerInteraction)
  {
    [_proxyPointerInteraction invalidate];
  }

  else
  {
    _pointerInteraction = [(UIControl *)self _pointerInteraction];
    [_pointerInteraction invalidate];
  }
}

- (UIPointerInteraction)_proxyPointerInteraction
{
  if ((*(&self->_controlFlags + 2) & 0x10) != 0)
  {
    v3 = objc_getAssociatedObject(self, &_UIControlProxyPointerInteractionKey);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIPointerInteraction)_pointerInteraction
{
  if ((*(&self->_controlFlags + 2) & 8) != 0)
  {
    v3 = objc_getAssociatedObject(self, &_UIControlPointerInteractionKey);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)showsMenuAsPrimaryAction
{
  if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    v2 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
  }

  else
  {
    v2 = 0;
  }

  _presentOnTouchDown = [v2 _presentOnTouchDown];

  return _presentOnTouchDown;
}

- (BOOL)_allowsSymbolAnimations
{
  if ((*(&self->_controlFlags + 2) & 4) != 0)
  {
    v3 = _UIKitUserDefaults();
    v2 = [v3 BOOLForKey:@"DisableControlSymbolAnimations"] ^ 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (UIPointerInteraction)pointerInteraction
{
  if ([(UIControl *)self _providesCustomPointerInteraction])
  {
    if ((*(&self->_controlFlags + 2) & 8) != 0)
    {
      objc_getAssociatedObject(self, &_UIControlPointerInteractionKey);
    }

    else
    {
      [(UIControl *)self _createPointerInteraction];
    }
    v3 = ;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_createPointerInteraction
{
  v3 = [[UIPointerInteraction alloc] initWithDelegate:self];
  [(UIPointerInteraction *)v3 setEnabled:0];
  if ((*(&self->_controlFlags + 2) & 0x10) == 0)
  {
    [(UIView *)self addInteraction:v3];
  }

  objc_setAssociatedObject(self, &_UIControlPointerInteractionKey, v3, 1);
  *&self->_controlFlags |= 0x80000u;

  return v3;
}

- (UIControlContentHorizontalAlignment)effectiveContentHorizontalAlignment
{
  result = (*&self->_controlFlags >> 13);
  if (result == UIControlContentHorizontalAlignmentTrailing)
  {
    if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (result == UIControlContentHorizontalAlignmentLeading)
  {
    if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)_safeHoverStyle
{
  if (self)
  {
    selfCopy = self;
    if (dyld_program_sdk_at_least())
    {
      [selfCopy hoverStyle];
    }

    else
    {
      [(UIView *)selfCopy _hoverStyleStorage];
    }
    self = ;
    v1 = vars8;
  }

  return self;
}

- (int64_t)effectiveContentVerticalAlignment
{
  controlFlags = self->_controlFlags;
  if ((*&controlFlags & 0x1800) != 0x1000)
  {
    return (*&controlFlags >> 10) & 7;
  }

  if (dyld_program_sdk_at_least())
  {
    controlFlags = self->_controlFlags;
    return (*&controlFlags >> 10) & 7;
  }

  return 0;
}

- (BOOL)isContextMenuInteractionEnabled
{
  if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    v2 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
  }

  else
  {
    v2 = 0;
  }

  view = [v2 view];
  v4 = view != 0;

  return v4;
}

- (UIContextMenuInteraction)contextMenuInteraction
{
  if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    v5 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
  }

  else
  {
    v3 = objc_opt_class();
    if (v3 == objc_opt_class() || (v4 = [(UIControl *)self methodForSelector:sel_contextMenuInteraction_configurationForMenuAtLocation_], v4 == [UIControl instanceMethodForSelector:sel_contextMenuInteraction_configurationForMenuAtLocation_]))
    {
      v5 = 0;
    }

    else
    {
      v5 = [[_UIVariableGestureContextMenuInteraction alloc] initWithDelegate:self];
      [(UIContextMenuInteraction *)v5 _setProxySender:self];
      objc_setAssociatedObject(self, &_UIControlContextMenuInteractionKey, v5, 1);
      *&self->_controlFlags |= 0x200000u;
      v6 = [(UIControl *)self methodForSelector:sel_contextMenuInteraction_previewForDismissingMenuWithConfiguration_];
      if (v6 == [UIControl instanceMethodForSelector:sel_contextMenuInteraction_previewForDismissingMenuWithConfiguration_])
      {
        [(UIContextMenuInteraction *)v5 set_ignorePreviewForDismissingDelegate:1];
      }
    }
  }

  return v5;
}

- (BOOL)cancelTouchTracking
{
  if ([(UIControl *)self isTracking])
  {
    [(UIControl *)self cancelTrackingWithEvent:0];
  }

  return 1;
}

- (BOOL)isPointerInteractionEnabled
{
  pointerInteraction = [(UIControl *)self pointerInteraction];
  isEnabled = [pointerInteraction isEnabled];

  return isEnabled;
}

- (void)_registerCustomHoverStylePointerDriverIfNeeded
{
  selfCopy = self;
  sub_188CB148C();
}

- (NSSet)allTargets
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_targetActions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        WeakRetained = objc_loadWeakRetained((v9 + 16));

        if (WeakRetained)
        {
          null = objc_loadWeakRetained((v9 + 16));
LABEL_8:
          v12 = null;
          [v3 addObject:{null, v15}];

          goto LABEL_10;
        }

        if (!*(v9 + 8))
        {
          null = [MEMORY[0x1E695DFB0] null];
          goto LABEL_8;
        }

LABEL_10:
        ++v8;
      }

      while (v6 != v8);
      v13 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v6 = v13;
    }

    while (v13);
  }

  return v3;
}

- (void)_beginInteractionDurationStatisticMeasurements
{
  if (_configureDefaultStatisticHandling_onceToken[0] != -1)
  {
    dispatch_once(_configureDefaultStatisticHandling_onceToken, &__block_literal_global_13_5);
  }

  _distributionStatisticsForUserInteractionDuration = [(UIControl *)self _distributionStatisticsForUserInteractionDuration];
  if (_distributionStatisticsForUserInteractionDuration)
  {
    v4 = _distributionStatisticsForUserInteractionDuration;
    [_distributionStatisticsForUserInteractionDuration startTimingForObject:self];
    _distributionStatisticsForUserInteractionDuration = v4;
  }
}

- (id)_distributionStatisticsForUserInteractionDuration
{
  if (_configureDefaultStatisticHandling_onceToken[0] != -1)
  {
    dispatch_once(_configureDefaultStatisticHandling_onceToken, &__block_literal_global_13_5);
  }

  return [(UIControl *)self __distributionStatisticsForUserInteractionDuration];
}

- (BOOL)shouldTrack
{
  isEnabled = [(UIControl *)self isEnabled];
  if (isEnabled)
  {

    LOBYTE(isEnabled) = [(UIView *)self isUserInteractionEnabled];
  }

  return isEnabled;
}

- (void)_commitInteractionDurationStatisticMeasurements
{
  if (_configureDefaultStatisticHandling_onceToken[0] != -1)
  {
    dispatch_once(_configureDefaultStatisticHandling_onceToken, &__block_literal_global_13_5);
  }

  _distributionStatisticsForUserInteractionDuration = [(UIControl *)self _distributionStatisticsForUserInteractionDuration];
  if (_distributionStatisticsForUserInteractionDuration)
  {
    v4 = _distributionStatisticsForUserInteractionDuration;
    [_distributionStatisticsForUserInteractionDuration recordTimingForObject:self];
    _distributionStatisticsForUserInteractionDuration = v4;
  }
}

- (id)_scalarStatisticsForUserTouchUpInsideEvent
{
  if (_configureDefaultStatisticHandling_onceToken[0] != -1)
  {
    dispatch_once(_configureDefaultStatisticHandling_onceToken, &__block_literal_global_13_5);
  }

  return [(UIControl *)self __scalarStatisticsForUserTouchUpInsideEvent];
}

- (BOOL)canBecomeFocused
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  v4 = [_focusBehavior controlCanBecomeFocused:self];

  return v4 & [(UIControl *)self isEnabled];
}

- (BOOL)canBecomeFirstResponder
{
  if (_UIDeviceHasExternalTouchInput())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UIControl;
  return [(UIResponder *)&v4 canBecomeFirstResponder];
}

- (void)_activateForAccessibilityHUDLiftAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (dyld_program_sdk_at_least() && [(UIControl *)self isContextMenuInteractionEnabled]&& [(UIControl *)self showsMenuAsPrimaryAction]&& ([(UIControl *)self contextMenuInteraction], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    contextMenuInteraction = [(UIControl *)self contextMenuInteraction];
    [contextMenuInteraction _presentMenuAtLocation:{x, y}];
  }

  else
  {
    [(UIControl *)self sendActionsForControlEvents:64];
  }

  [(UIControl *)self setHighlighted:1];
  v8 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__UIControl_UIAccessibilityHUDGestureManager___activateForAccessibilityHUDLiftAtPoint___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);
}

- (UIControl)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UIControl;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    *&v3->_controlFlags &= 0xFFFF03FF;
    if ([objc_opt_class() _allowActionsToQueue])
    {
      v5 = 128;
    }

    else
    {
      v5 = 0;
    }

    v4->_controlFlags = (*&v4->_controlFlags & 0xFFFFFF7F | v5);
    v4->_requiredButtonMask = 1;
  }

  return v4;
}

- (UIControl)initWithFrame:(CGRect)frame primaryAction:(UIAction *)primaryAction
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = primaryAction;
  height = [(UIControl *)self initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(UIControl *)height _commonInitForPrimaryAction:v9];
  }

  return v11;
}

- (UIControl)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v18.receiver = self;
  v18.super_class = UIControl;
  v5 = [(UIView *)&v18 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_33;
  }

  if ([(NSCoder *)v4 decodeBoolForKey:@"UIHighlighted"])
  {
    v6 = 32;
  }

  else
  {
    v6 = 0;
  }

  v5->_controlFlags = (*&v5->_controlFlags & 0xFFFFFFDF | v6);
  if ([(NSCoder *)v4 decodeBoolForKey:@"UISelected"])
  {
    v7 = 512;
  }

  else
  {
    v7 = 0;
  }

  v5->_controlFlags = (*&v5->_controlFlags & 0xFFFFFDFF | v7);
  v5->_controlFlags = (*&v5->_controlFlags & 0xFFFFE3FE | [(NSCoder *)v4 decodeBoolForKey:@"UIDisabled"]);
  if ([(NSCoder *)v4 containsValueForKey:@"UIContentVerticalAlignment2"])
  {
    v8 = @"UIContentVerticalAlignment2";
  }

  else
  {
    if (![(NSCoder *)v4 containsValueForKey:@"UIContentVerticalAlignment"])
    {
      controlFlags = v5->_controlFlags;
      goto LABEL_14;
    }

    v8 = @"UIContentVerticalAlignment";
  }

  controlFlags = *&v5->_controlFlags & 0xFFFFE3FF | (([(NSCoder *)v4 decodeIntegerForKey:v8]& 7) << 10);
LABEL_14:
  v5->_controlFlags = (controlFlags & 0xFFFF1FFF);
  if ([(NSCoder *)v4 containsValueForKey:@"UIContentHorizontalAlignment"])
  {
    v5->_controlFlags = (*&v5->_controlFlags & 0xFFFF1FFF | (([(NSCoder *)v4 decodeIntegerForKey:@"UIContentHorizontalAlignment"]& 7) << 13));
  }

  if ([objc_opt_class() _allowActionsToQueue])
  {
    v10 = 128;
  }

  else
  {
    v10 = 0;
  }

  v5->_controlFlags = (*&v5->_controlFlags & 0xFFFFFF7F | v10);
  if ([(NSCoder *)v4 containsValueForKey:@"UIToolTip"])
  {
    v11 = [(NSCoder *)v4 decodeObjectForKey:@"UIToolTip"];
    if (v11)
    {
      [(UIControl *)v5 setToolTip:v11];
    }
  }

  v5->_requiredButtonMask = 1;
  if ([(NSCoder *)v4 containsValueForKey:@"UIPointerInteractionEnabled"])
  {
    [(UIControl *)v5 setPointerInteractionEnabled:[(NSCoder *)v4 decodeBoolForKey:@"UIPointerInteractionEnabled"]];
  }

  if (dyld_program_sdk_at_least())
  {
    v12 = [(NSCoder *)v4 decodeBoolForKey:@"UIContextMenuIsEnabled"];
    v13 = [(NSCoder *)v4 decodeBoolForKey:@"UIContextMenuIsPrimary"];
    v14 = v13;
    if (v12 || v13)
    {
      [(UIControl *)v5 contextMenuInteraction];

      if ((*(&v5->_controlFlags + 2) & 0x20) != 0)
      {
        v15 = objc_getAssociatedObject(v5, &_UIControlContextMenuInteractionKey);
        if (v15)
        {
          v16 = v15;
          if (v12)
          {
            [(UIView *)v5 addInteraction:v15];
          }

          [v16 _setPresentOnTouchDown:v14];
        }
      }
    }
  }

LABEL_33:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UIControl;
  [(UIView *)&v12 encodeWithCoder:coderCopy];
  controlFlags = self->_controlFlags;
  if ((*&controlFlags & 0x20) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIHighlighted"];
    controlFlags = self->_controlFlags;
    if ((*&controlFlags & 0x200) == 0)
    {
LABEL_3:
      if ((*&controlFlags & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&controlFlags & 0x200) == 0)
  {
    goto LABEL_3;
  }

  [coderCopy encodeBool:1 forKey:@"UISelected"];
  controlFlags = self->_controlFlags;
  if (*&controlFlags)
  {
LABEL_4:
    [coderCopy encodeBool:1 forKey:@"UIDisabled"];
    controlFlags = self->_controlFlags;
  }

LABEL_5:
  v6 = (*&controlFlags >> 10) & 7;
  if (v6)
  {
    if (((*&controlFlags >> 10) & 6) != 4)
    {
      [coderCopy encodeInteger:? forKey:?];
      v6 = (self->_controlFlags >> 10) & 7;
    }

    [coderCopy encodeInteger:v6 forKey:@"UIContentVerticalAlignment2"];
    controlFlags = self->_controlFlags;
  }

  if (*&controlFlags >> 13)
  {
    [coderCopy encodeInteger:? forKey:?];
  }

  if ([(UIControl *)self isPointerInteractionEnabled])
  {
    [coderCopy encodeBool:1 forKey:@"UIPointerInteractionEnabled"];
  }

  if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    v8 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
    v7 = v8;
    if (v8)
    {
      view = [v8 view];

      if (view)
      {
        [coderCopy encodeBool:1 forKey:@"UIContextMenuIsEnabled"];
      }

      if ([v7 _presentOnTouchDown])
      {
        [coderCopy encodeBool:1 forKey:@"UIContextMenuIsPrimary"];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  toolTip = [(UIControl *)self toolTip];

  if (toolTip)
  {
    toolTip2 = [(UIControl *)self toolTip];
    [coderCopy encodeObject:toolTip2 forKey:@"UIToolTip"];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  controlFlags = self->_controlFlags;
  if (((*&controlFlags ^ enabled) & 1) == 0)
  {
    v5 = enabled;
    self->_controlFlags = (*&controlFlags & 0xFFFFFFFE | !enabled);
    _safeHoverStyle = [(UIControl *)self _safeHoverStyle];
    [_safeHoverStyle setEnabled:v5];
    [(UIView *)self setNeedsDisplay];
  }
}

- (BOOL)cancelMouseTracking
{
  if ([(UIControl *)self isTracking])
  {
    [(UIControl *)self setTracking:0];
    if ([(UIControl *)self isHighlighted])
    {
      [(UIControl *)self setHighlighted:0];
    }

    [(UIControl *)self _sendActionsForEvents:256 withEvent:0];
  }

  return 1;
}

- (void)cancelTrackingWithEvent:(UIEvent *)event
{
  v4 = event;
  [(UIControl *)self setTracking:0];
  if ([(UIControl *)self isHighlighted])
  {
    [(UIControl *)self setHighlighted:0];
  }

  [(UIControl *)self _sendActionsForEvents:256 withEvent:v4];
}

- (void)setHighlighted:(BOOL)highlighted
{
  controlFlags = self->_controlFlags;
  v5 = highlighted | ((*&controlFlags & 0x400000) >> 22);
  if ((*&controlFlags & 0x100) != 0)
  {
    self->_controlFlags = (*&controlFlags & 0xFFFFFEFF);
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__unhighlight object:0];
    controlFlags = self->_controlFlags;
  }

  if (((v5 ^ ((*&controlFlags & 0x20) == 0)) & 1) == 0 && (v5 & *&controlFlags & 1) == 0)
  {
    if (v5)
    {
      [(UIControl *)self _setLastHighlightSuccessful:0];
      controlFlags = self->_controlFlags;
      v6 = 32;
    }

    else
    {
      v6 = 0;
    }

    self->_controlFlags = (*&controlFlags & 0xFFFFFFDF | v6);
    if ([(UIControl *)self requiresDisplayOnTracking])
    {

      [(UIView *)self setNeedsDisplay];
    }
  }
}

- (void)_setHasActiveMenuPresentation:(BOOL)presentation
{
  controlFlags = self->_controlFlags;
  if (((((*&controlFlags & 0x400000) == 0) ^ presentation) & 1) == 0)
  {
    if (presentation)
    {
      v4 = 0x400000;
    }

    else
    {
      v4 = 0;
    }

    self->_controlFlags = (*&controlFlags & 0xFFBFFFFF | v4);
    [(UIControl *)self setHighlighted:?];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (((((*&self->_controlFlags & 0x200) == 0) ^ selected) & 1) == 0)
  {
    v9 = v3;
    if (selected)
    {
      v8 = 512;
    }

    else
    {
      v8 = 0;
    }

    self->_controlFlags = (*&self->_controlFlags & 0xFFFFFDFF | v8);
    [(UIControl *)self _invalidatePointerInteraction:v4];

    [(UIView *)self setNeedsDisplay];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(UIControl *)self isEnabled])
  {
    v10.receiver = self;
    v10.super_class = UIControl;
    v8 = [(UIView *)&v10 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event
{
  y = test.y;
  x = test.x;
  if ([(UIControl *)self isEnabled])
  {
    v10.receiver = self;
    v10.super_class = UIControl;
    v8 = [(UIView *)&v10 hitTest:event forEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_firstTouchForEvent:(void *)event
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (event)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    _additionalTrackingViews = [event _additionalTrackingViews];
    v5 = [_additionalTrackingViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(_additionalTrackingViews);
          }

          v9 = [v3 _firstTouchForView:*(*(&v12 + 1) + 8 * i)];
          if (v9)
          {
            v10 = v9;

            goto LABEL_12;
          }
        }

        v6 = [_additionalTrackingViews countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = [v3 _firstTouchForView:event];
  }

  else
  {
    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (_UITouchesContainsTouchFromCarTouchpad(beganCopy))
  {
    goto LABEL_2;
  }

  _requiredButtonMask = [(UIControl *)self _requiredButtonMask];
  v9 = eventCopy;
  if ([v9 _buttonMask])
  {
    v10 = [v9 _buttonMask] & _requiredButtonMask;

    if (!v10)
    {
LABEL_2:
      [(UIResponder *)&v15 touchesBegan:beganCopy withEvent:eventCopy, v14.receiver, v14.super_class, self, UIControl];
      goto LABEL_19;
    }
  }

  else
  {
  }

  if ([(UIControl *)self shouldTrack])
  {
    v11 = [(UIControl *)self _firstTouchForEvent:v9];
    if (v11)
    {
      v12 = v11;
      [(UIControl *)self setTracking:[(UIControl *)self beginTrackingWithTouch:v11 withEvent:v9]];
      if ([(UIControl *)self isTracking])
      {
        controlFlags = self->_controlFlags;
        self->_controlFlags = (*&controlFlags & 0xFFFFFFF3 | 4);
        if ((*&controlFlags & 0x40) == 0)
        {
          self->_downTime = CFAbsoluteTimeGetCurrent();
          [(UIControl *)self setHighlighted:1];
        }

        if (![(UIControl *)self _deferFinalActions]|| (*(&self->_controlFlags + 3) & 1) == 0)
        {
          [(UIControl *)self _sendActionsForEvents:1 withEvent:v9];
        }

        if ([v12 tapCount] >= 2)
        {
          [(UIControl *)self _sendActionsForEvents:2 withEvent:v9];
        }
      }

      [(UIResponder *)self _controlTouchBegan:v12 withEvent:v9];
    }
  }

  else
  {
    [(UIResponder *)&v14 touchesBegan:beganCopy withEvent:v9, self, UIControl, v15.receiver, v15.super_class];
  }

LABEL_19:
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if ([(UIControl *)self isTracking])
  {
    v8 = [(UIControl *)self _firstTouchForEvent:eventCopy];
    if (v8)
    {
      v9 = v8;
      [(UIControl *)self setTracking:[(UIControl *)self continueTrackingWithTouch:v8 withEvent:eventCopy]];
      if ([(UIControl *)self isTracking])
      {
        [v9 locationInView:self];
        v10 = [(UIControl *)self pointMostlyInside:eventCopy withEvent:?];
        isTouchInside = [(UIControl *)self isTouchInside];
        controlFlags = self->_controlFlags;
        if (v10)
        {
          v13 = 4;
        }

        else
        {
          v13 = 0;
        }

        self->_controlFlags = (*&controlFlags & 0xFFFFFFFB | v13);
        if ((*&controlFlags & 0x40) == 0 || !v10)
        {
          [(UIControl *)self setHighlighted:v10];
        }

        if (isTouchInside != [(UIControl *)self isTouchInside])
        {
          if ([(UIControl *)self isTouchInside])
          {
            v14 = 16;
          }

          else
          {
            v14 = 32;
          }

          [(UIControl *)self _sendActionsForEvents:v14 withEvent:eventCopy];
        }

        *&self->_controlFlags |= 8u;
        if ([(UIControl *)self isTouchInside])
        {
          v15 = 4;
        }

        else
        {
          v15 = 8;
        }

        [(UIControl *)self _sendActionsForEvents:v15 withEvent:eventCopy];
      }

      [(UIResponder *)self _controlTouchMoved:v9 withEvent:eventCopy];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = UIControl;
    [(UIResponder *)&v16 touchesMoved:movedCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (![(UIControl *)self isTracking])
  {
    v25.receiver = self;
    v25.super_class = UIControl;
    [(UIResponder *)&v25 touchesEnded:endedCopy withEvent:eventCopy];
LABEL_30:
    [(UIControl *)self _setTouchHasHighlighted:0];
    goto LABEL_31;
  }

  v8 = [(UIControl *)self _firstTouchForEvent:eventCopy];
  if (v8)
  {
    v9 = v8;
    [v8 locationInView:self];
    v10 = [(UIControl *)self pointMostlyInside:eventCopy withEvent:?];
    Current = 0.0;
    if ([(UIControl *)self isHighlighted])
    {
      v12 = 0;
    }

    else
    {
      v12 = (*&self->_controlFlags & 0x40) == 0;
      if (v10 && v12)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v12 = 1;
        [(UIControl *)self setHighlighted:1];
      }
    }

    if (v10 != [(UIControl *)self isTouchInside])
    {
      if (v10)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      self->_controlFlags = (*&self->_controlFlags & 0xFFFFFFFB | v13);
      if ([(UIControl *)self isTouchInside])
      {
        v14 = 16;
      }

      else
      {
        v14 = 32;
      }

      [(UIControl *)self _sendActionsForEvents:v14 withEvent:eventCopy];
    }

    if ([(UIControl *)self _deferFinalActions])
    {
      *&self->_controlFlags |= 0x1000000u;
    }

    else
    {
      [(UIControl *)self endTrackingWithTouch:v9 withEvent:eventCopy];
      [(UIControl *)self setTracking:0];
      *&self->_controlFlags &= ~8u;
      if (v10)
      {
        v15 = 64;
      }

      else
      {
        v15 = 128;
      }

      [(UIControl *)self _sendActionsForEvents:v15 withEvent:eventCopy];
    }

    v16 = +[UIEventSessionActionAnalytics sharedInstance];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = eventCopy;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v17 _firstTouchForView:self];
    [v16 didTap:self withSource:{+[_UIEventSessionAction getUIEventSourceForUITouchType:](_UIEventSessionAction, "getUIEventSourceForUITouchType:", objc_msgSend(v18, "type"))}];

    if (v12 && (v19 = CFAbsoluteTimeGetCurrent() - Current, v19 < 0.12))
    {
      *&self->_controlFlags |= 0x100u;
      v20 = MEMORY[0x1E695DFA8];
      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      currentMode = [currentRunLoop currentMode];
      v23 = [v20 setWithObjects:{currentMode, *MEMORY[0x1E695D918], 0}];

      allObjects = [v23 allObjects];
      [(UIControl *)self performSelector:sel__unhighlight withObject:0 afterDelay:allObjects inModes:0.12 - v19];
    }

    else
    {
      [(UIControl *)self _setLastHighlightSuccessful:v10];
      [(UIControl *)self setHighlighted:0];
    }

    self->_controlFlags = (*&self->_controlFlags & 0xFDFFFFFB | (((*&self->_controlFlags >> 2) & 1) << 25));
    [(UIResponder *)self _controlTouchEnded:v9 withEvent:eventCopy];

    goto LABEL_30;
  }

LABEL_31:
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  if ([(UIControl *)self isTracking])
  {
    [(UIControl *)self cancelTrackingWithEvent:eventCopy];
  }

  [(UIControl *)self _setTouchHasHighlighted:0];
}

- (void)_willMoveToWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy)
  {
    if ((*(&self->_controlFlags + 2) & 0x20) != 0)
    {
      v5 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
    }

    else
    {
      v5 = 0;
    }

    [v5 dismissMenu];
  }

  v6.receiver = self;
  v6.super_class = UIControl;
  [(UIView *)&v6 _willMoveToWindow:windowCopy];
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  v6.receiver = self;
  v6.super_class = UIControl;
  [(UIView *)&v6 _didMoveFromWindow:window toWindow:?];
  if (!toWindow)
  {
    if ([(UIControl *)self isTracking])
    {
      [(UIControl *)self cancelTouchTracking];
    }
  }
}

- (void)_addControlTargetAction:(id)action
{
  actionCopy = action;
  targetActions = self->_targetActions;
  if (!targetActions)
  {
    v5 = objc_opt_new();
    v6 = self->_targetActions;
    self->_targetActions = v5;

    targetActions = self->_targetActions;
  }

  v7 = [(NSMutableArray *)targetActions count];
  if (v7 >= 1)
  {
    v8 = (v7 & 0x7FFFFFFF) + 1;
    while (1)
    {
      v9 = [(NSMutableArray *)self->_targetActions objectAtIndexedSubscript:v8 - 2];
      v10 = actionCopy;
      v11 = v9;
      v12 = actionCopy[1];
      v13 = *(v11 + 1);
      if (!v12)
      {
        break;
      }

      v14 = [v12 isEqual:v13];

      if (v14)
      {
        goto LABEL_7;
      }

LABEL_12:

      if (--v8 <= 1)
      {
        goto LABEL_22;
      }
    }

    if (v13)
    {
      goto LABEL_11;
    }

    WeakRetained = objc_loadWeakRetained(actionCopy + 2);
    v16 = objc_loadWeakRetained(v11 + 2);
    if (WeakRetained != v16)
    {

LABEL_11:
      goto LABEL_12;
    }

    if (actionCopy[3])
    {
      v17 = actionCopy[3];
    }

    else
    {
      v17 = 0;
    }

    if (*(v11 + 3))
    {
      v18 = *(v11 + 3);
    }

    else
    {
      v18 = 0;
    }

    if (v17 != v18)
    {
      goto LABEL_12;
    }

LABEL_7:
    actionCopy[4] = (actionCopy[4] | *(v11 + 4));
    [(NSMutableArray *)self->_targetActions removeObjectAtIndex:v8 - 2];
    goto LABEL_12;
  }

LABEL_22:
  [(NSMutableArray *)self->_targetActions addObject:actionCopy];
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
  v8 = target;
  if (!v8)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v9 = dyld_program_sdk_at_least();
  v10 = v8;
  if ((v9 & 1) == 0)
  {
    allowsWeakReference = [v8 allowsWeakReference];
    v10 = v8;
    if ((allowsWeakReference & 1) == 0)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __47__UIControl_addTarget_action_forControlEvents___block_invoke;
      v14[3] = &unk_1E70F35B8;
      v15 = v8;
      selfCopy = self;
      if (addTarget_action_forControlEvents__once != -1)
      {
        dispatch_once(&addTarget_action_forControlEvents__once, v14);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v12 = v10;

  if (action && controlEvents)
  {
    v13 = objc_alloc_init(UIControlTargetAction);
    objc_storeWeak(&v13->_target, v12);
    v13->_action = action;
    v13->_eventMask = controlEvents;
    [(UIControl *)self _addControlTargetAction:v13];
  }
}

void __47__UIControl_addTarget_action_forControlEvents___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ContextMenuScrollTruncationDetentsEnabled_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "You are trying to set a deallocating object as a target. This will be a hard crash in the future. Offending object: %@ hostObject: %@", &v5, 0x16u);
  }
}

- (void)addAction:(UIAction *)action forControlEvents:(UIControlEvents)controlEvents
{
  v12 = action;
  if (v12)
  {
    if (controlEvents)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIControl.m" lineNumber:848 description:{@"Attempt to set nil action with event mask:%08lx", controlEvents}];

    if (controlEvents)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIControl.m" lineNumber:849 description:{@"Attempt to set action '%@' with no event mask set", v12}];

LABEL_3:
  v7 = objc_alloc_init(UIControlTargetAction);
  v8 = [(UIAction *)v12 copy];
  actionHandler = v7->_actionHandler;
  v7->_actionHandler = v8;

  v7->_eventMask = controlEvents;
  [(UIControl *)self _addControlTargetAction:v7];
}

- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
  v15 = target;
  v8 = [(NSMutableArray *)self->_targetActions count];
  if (v8 >= 1)
  {
    v9 = ~controlEvents;
    v10 = (v8 & 0x7FFFFFFF) + 1;
    do
    {
      v11 = [(NSMutableArray *)self->_targetActions objectAtIndex:v10 - 2];
      if (!v15 || (WeakRetained = objc_loadWeakRetained((v11 + 16)), WeakRetained, WeakRetained == v15))
      {
        v13 = (*(v11 + 32) & v9) == 0;
        *(v11 + 32) &= v9;
        if (v13)
        {
          if (!action || (!*(v11 + 24) ? (v14 = 0) : (v14 = *(v11 + 24)), sel_isEqual(v14, action)))
          {
            [(NSMutableArray *)self->_targetActions removeObjectAtIndex:v10 - 2];
          }
        }
      }

      --v10;
    }

    while (v10 > 1);
  }
}

- (void)removeAction:(UIAction *)action forControlEvents:(UIControlEvents)controlEvents
{
  v13 = action;
  v6 = [(NSMutableArray *)self->_targetActions count];
  if (v6 >= 1)
  {
    v7 = ~controlEvents;
    v8 = (v6 & 0x7FFFFFFF) + 1;
    do
    {
      v9 = [(NSMutableArray *)self->_targetActions objectAtIndexedSubscript:v8 - 2];
      v10 = *(v9 + 8);
      v11 = v10;
      if (v10)
      {
        if ([v10 isEqual:v13])
        {
          v12 = (*(v9 + 32) & v7) == 0;
          *(v9 + 32) &= v7;
          if (v12)
          {
            [(NSMutableArray *)self->_targetActions removeObjectAtIndex:v8 - 2];
          }
        }
      }

      --v8;
    }

    while (v8 > 1);
  }
}

- (void)removeActionForIdentifier:(UIActionIdentifier)actionIdentifier forControlEvents:(UIControlEvents)controlEvents
{
  v17 = actionIdentifier;
  if (!v17)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIControl.m" lineNumber:889 description:{@"Attempt to remove action handlers for a nil identifier with event mask:%08lx", controlEvents}];
  }

  v7 = [(NSMutableArray *)self->_targetActions count];
  if (v7 >= 1)
  {
    v8 = ~controlEvents;
    v9 = (v7 & 0x7FFFFFFF) + 1;
    do
    {
      v10 = [(NSMutableArray *)self->_targetActions objectAtIndexedSubscript:v9 - 2];
      v11 = *(v10 + 8);
      v12 = v11;
      if (v11)
      {
        identifier = [v11 identifier];
        v14 = [identifier isEqualToString:v17];

        if (v14)
        {
          v15 = (*(v10 + 32) & v8) == 0;
          *(v10 + 32) &= v8;
          if (v15)
          {
            [(NSMutableArray *)self->_targetActions removeObjectAtIndex:v9 - 2];
          }
        }
      }

      --v9;
    }

    while (v9 > 1);
  }
}

- (void)performPrimaryAction
{
  if ([(UIControl *)self showsMenuAsPrimaryAction])
  {
    if ((*(&self->_controlFlags + 2) & 0x20) != 0)
    {
      v7 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
    }

    else
    {
      v7 = 0;
    }

    [(UIView *)self bounds];
    [v7 _presentMenuAtLocation:{v4 + v3 * 0.5, v6 + v5 * 0.5}];
  }

  else
  {

    [(UIControl *)self _sendActionsForEvents:0x2000 withEvent:0];
  }
}

- (UIControlEvents)allControlEvents
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_targetActions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= *(*(*(&v9 + 1) + 8 * i) + 32);
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)actionsForTarget:(id)target forControlEvent:(UIControlEvents)controlEvent
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = target;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_targetActions;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {
    array = 0;
    goto LABEL_21;
  }

  v9 = v8;
  array = 0;
  v11 = *v21;
  do
  {
    v12 = 0;
    do
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      WeakRetained = objc_loadWeakRetained((v13 + 16));
      v15 = WeakRetained;
      if (WeakRetained != v6)
      {
        goto LABEL_7;
      }

      v16 = controlEvent & ~*(v13 + 32);

      if (!v16)
      {
        if (*(v13 + 24))
        {
          v17 = *(v13 + 24);
        }

        else
        {
          v17 = 0;
        }

        v15 = NSStringFromSelector(v17);
        if (v15)
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:{v15, v20}];
        }

LABEL_7:
      }

      ++v12;
    }

    while (v9 != v12);
    v18 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v9 = v18;
  }

  while (v18);
LABEL_21:

  return array;
}

- (void)enumerateEventHandlers:(void *)iterator
{
  v4 = iterator;
  targetActions = self->_targetActions;
  if (targetActions)
  {
    v6 = [(NSMutableArray *)targetActions copy];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__UIControl_enumerateEventHandlers___block_invoke;
    v7[3] = &unk_1E7104E10;
    v8 = v4;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

void __36__UIControl_enumerateEventHandlers___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 8);
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a2 + 16));
  (*(v3 + 16))(v3, v4);
}

- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
  v8 = target;
  v9 = event;
  if (os_variant_has_internal_diagnostics())
  {
    if (!UIApp)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "UIApp is nil which means we cannot dispatch control actions to their targets. If this assert is hit, we probably got here without UIApplicationMain() being executed, which likely means this code is not running in an app (perhaps a unit test being run without a host app) and will not work as expected.", buf, 2u);
      }
    }
  }

  else if (!UIApp)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &sendAction_to_forEvent____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "UIApp is nil which means we cannot dispatch control actions to their targets. If this assert is hit, we probably got here without UIApplicationMain() being executed, which likely means this code is not running in an app (perhaps a unit test being run without a host app) and will not work as expected.", v12, 2u);
    }
  }

  [UIApp sendAction:action toTarget:v8 fromSender:self forEvent:v9];
}

- (double)_highlightCornerRadius
{
  [(UIControl *)self _clippedHighlightBounds];
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return v4 * 0.5;
}

- (BOOL)_hasActionForEventMask:(unint64_t)mask
{
  v5 = [(NSMutableArray *)self->_targetActions count];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->_targetActions objectAtIndex:0];
  v7 = v6[4] & mask;

  if (v7)
  {
    return 1;
  }

  v9 = v5 & 0x7FFFFFFF;
  v10 = 1;
  do
  {
    v11 = v10;
    if (v9 == v10)
    {
      break;
    }

    v12 = [(NSMutableArray *)self->_targetActions objectAtIndex:v10];
    v13 = v12[4] & mask;

    v10 = v11 + 1;
  }

  while (!v13);
  return v11 < v9;
}

- (void)_sendActionsForEvents:(unint64_t)events withEvent:(id)event
{
  eventCopy = event;
  v7 = _os_activity_create(&dword_188A29000, "send control actions", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v7, &v16);
  if (([(UIControl *)self _controlEventsForActionTriggered]& events) != 0)
  {
    [UIViewController _sendPrepareForTapGesture:?];
  }

  [(UIControl *)self _incrementStatisticsForUserActionForEvents:events];
  if ((events & 0xC0) != 0 && (*&self->_controlFlags & 0x1000000) != 0)
  {
    [(UIControl *)self setTracking:0];
    *&self->_controlFlags &= 0xFEFFFFF7;
  }

  v8 = [(NSMutableArray *)self->_targetActions copy];
  v9 = [v8 count];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v9 & 0x7FFFFFFF;
    do
    {
      v12 = [v8 objectAtIndex:v10];
      v13 = v12;
      if ((*(v12 + 32) & events) != 0)
      {
        if (*(v12 + 8))
        {
          [(UIControl *)self sendAction:?];
        }

        else
        {
          if (*(v12 + 24))
          {
            v14 = *(v12 + 24);
          }

          else
          {
            v14 = 0;
          }

          WeakRetained = objc_loadWeakRetained((v12 + 16));
          [(UIControl *)self sendAction:v14 to:WeakRetained forEvent:eventCopy];
        }
      }

      ++v10;
    }

    while (v11 != v10);
  }

  os_activity_scope_leave(&v16);
  if (([(UIControl *)self _controlEventsForActionTriggered]& events) != 0)
  {
    [(UIControl *)self _sendActionsForEvents:0x2000 withEvent:eventCopy];
  }
}

- (void)_setHighlightOnMouseDown:(BOOL)down
{
  if (down)
  {
    v3 = 0;
  }

  else
  {
    v3 = 64;
  }

  self->_controlFlags = (*&self->_controlFlags & 0xFFFFFFBF | v3);
}

- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIView *)self _touchInsets];
  v17 = v9 + v16;
  v19 = v11 + v18;
  v21 = v13 - (v16 + v20);
  v23 = v15 - (v18 + v22);
  v24 = _UIControlMostlyInsideEdgeInsets();
  v25 = v19 + v24;
  v28 = v21 - (v26 + v27);
  v33.size.height = v23 - (v24 + v29);
  v33.origin.x = v17 + v26;
  v33.origin.y = v25;
  v33.size.width = v28;
  v32.x = x;
  v32.y = y;
  v30 = CGRectContainsPoint(v33, v32) || [(UIView *)self pointInside:eventCopy withEvent:x, y];

  return v30;
}

- (void)_setLastHighlightSuccessful:(BOOL)successful
{
  if (successful)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_controlFlags = (*&self->_controlFlags & 0xFFFEFFFF | v3);
}

- (void)_setTouchHasHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_controlFlags = (*&self->_controlFlags & 0xFFFDFFFF | v3);
}

- (void)setRequiresDisplayOnTracking:(BOOL)tracking
{
  if (tracking)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_controlFlags = (*&self->_controlFlags & 0xFFFFFFEF | v3);
}

- (void)setTracking:(BOOL)tracking
{
  if (((((*&self->_controlFlags & 2) == 0) ^ tracking) & 1) == 0)
  {
    if (tracking)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    self->_controlFlags = (*&self->_controlFlags & 0xFFFFFFFD | v3);
    if (tracking)
    {
      [(UIControl *)self _beginInteractionDurationStatisticMeasurements];
    }

    else
    {
      [(UIControl *)self _commitInteractionDurationStatisticMeasurements];
    }
  }
}

+ (unint64_t)_primaryStateForState:(unint64_t)state
{
  v3 = 8;
  v4 = state & 2;
  if ((state & 4) != 0)
  {
    v4 = 4;
  }

  if ((state & 8) == 0)
  {
    v3 = v4;
  }

  if (state)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (id)_systemDefaultFocusGroupIdentifier
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  focusGroupContainmentBehavior = [_focusBehavior focusGroupContainmentBehavior];

  if ((focusGroupContainmentBehavior & 0x10) != 0)
  {
    _systemDefaultFocusGroupIdentifier = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIControl;
    _systemDefaultFocusGroupIdentifier = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
}

- (void)_diagnoseFocusabilityForReport:(id)report
{
  reportCopy = report;
  if (([(UIControl *)self state]& 2) != 0)
  {
    v4 = [_UIDebugIssue issueWithDescription:@"This control is disabled."];
    [reportCopy addIssue:v4];
  }
}

- (unint64_t)_stateForFocusUpdateContext:(id)context
{
  contextCopy = context;
  state = [(UIControl *)self state];
  if (contextCopy)
  {
    nextFocusedView = [contextCopy nextFocusedView];
    isFocused = nextFocusedView == self;
  }

  else
  {
    isFocused = [(UIView *)self isFocused];
  }

  v8 = state & 0xFFFFFFFFFFFFFFF7;
  if (isFocused)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  return v9 | v8;
}

- (void)setSymbolAnimationEnabled:(BOOL)symbolAnimationEnabled
{
  if (symbolAnimationEnabled)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_controlFlags = (*&self->_controlFlags & 0xFFFBFFFF | v3);
}

- (void)setPointerInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  pointerInteraction = [(UIControl *)self pointerInteraction];
  [pointerInteraction setEnabled:enabledCopy];
}

- (void)_setProxyPointerInteraction:(id)interaction
{
  value = interaction;
  _proxyPointerInteraction = [(UIControl *)self _proxyPointerInteraction];
  if (_proxyPointerInteraction != value)
  {
    objc_setAssociatedObject(self, &_UIControlProxyPointerInteractionKey, value, 1);
    self->_controlFlags = (*&self->_controlFlags & 0xFFEFFFFF | ((value != 0) << 20));
    pointerInteraction = [(UIControl *)self pointerInteraction];
    if (pointerInteraction)
    {
      if ((*(&self->_controlFlags + 2) & 0x10) != 0)
      {
        [(UIView *)self removeInteraction:pointerInteraction];
      }

      else
      {
        [(UIView *)self addInteraction:pointerInteraction];
      }
    }
  }
}

- (void)_setHoverStyle:(void *)style implicit:(void *)implicit
{
  if (style)
  {
    implicitCopy = implicit;
    hoverStyle = [style hoverStyle];
    v5.receiver = style;
    v5.super_class = UIControl;
    objc_msgSendSuper2(&v5, sel_setHoverStyle_, implicitCopy);

    if (implicitCopy)
    {
      if (hoverStyle != implicitCopy)
      {
        [style _registerCustomHoverStylePointerDriverIfNeeded];
      }
    }
  }
}

- (id)_contextMenuInteraction
{
  if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    v3 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGPoint)menuAttachmentPointForConfiguration:(UIContextMenuConfiguration *)configuration
{
  v4 = configuration;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  window = [(UIView *)self window];
  [(UIView *)self convertRect:window toView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  LODWORD(window) = [(UIContextMenuConfiguration *)v4 prefersHorizontalAttachment];
  window2 = [(UIView *)self window];
  v23 = window2;
  if (window)
  {
    v24 = _UIControlMenuAttachmentPointForRectInContainerForHorizontalAttachment(window2, v15, v17, v19, v21);
  }

  else
  {
    v24 = _UIControlMenuAttachmentPointForRectInContainer(window2, v15, v17, v19, v21);
  }

  v26 = v24;
  v27 = v25;

  v28 = v26;
  v29 = v27;
  result.y = v29;
  result.x = v28;
  return result;
}

- (id)_proxySender
{
  if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    v2 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
  }

  else
  {
    v2 = 0;
  }

  _proxySender = [v2 _proxySender];

  return _proxySender;
}

- (void)_setProxySender:(id)sender
{
  senderCopy = sender;
  if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    v4 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
  }

  else
  {
    v4 = 0;
  }

  [v4 _setProxySender:senderCopy];
}

- (void)setContextMenuInteractionEnabled:(BOOL)contextMenuInteractionEnabled
{
  if (contextMenuInteractionEnabled)
  {
    contextMenuInteraction = [(UIControl *)self contextMenuInteraction];
    view = [contextMenuInteraction view];

    if (!view)
    {
      [(UIView *)self addInteraction:contextMenuInteraction];
    }
  }

  else
  {
    if ((*(&self->_controlFlags + 2) & 0x20) != 0)
    {
      v5 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
    }

    else
    {
      v5 = 0;
    }

    contextMenuInteraction = v5;
    view2 = [v5 view];

    if (view2 == self)
    {
      [(UIView *)self removeInteraction:contextMenuInteraction];
      [(UIControl *)self _setHasActiveMenuPresentation:0];
    }
  }
}

- (void)setShowsMenuAsPrimaryAction:(BOOL)showsMenuAsPrimaryAction
{
  v3 = showsMenuAsPrimaryAction;
  if (showsMenuAsPrimaryAction)
  {
    contextMenuInteraction = [(UIControl *)self contextMenuInteraction];
  }

  else if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    contextMenuInteraction = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
  }

  else
  {
    contextMenuInteraction = 0;
  }

  v5 = contextMenuInteraction;
  [contextMenuInteraction _setPresentOnTouchDown:v3];
}

- (void)setShowsMenuFromSource:(BOOL)source
{
  if (source)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_controlFlags = (*&self->_controlFlags & 0xFF7FFFFF | v3);
}

- (void)contextMenuInteraction:(UIContextMenuInteraction *)interaction willEndForConfiguration:(UIContextMenuConfiguration *)configuration animator:(id)animator
{
  v11 = interaction;
  v8 = configuration;
  v9 = animator;
  if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    v10 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
  }

  else
  {
    v10 = 0;
  }

  if (v8 && v10 == v11)
  {
    [(UIControl *)self _setHasActiveMenuPresentation:0];
  }
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    v8 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
  }

  else
  {
    v8 = 0;
  }

  if (v8 == interactionCopy)
  {
    if (dyld_program_sdk_at_least())
    {
      _containingScrollView = [(UIView *)self _containingScrollView];
      v11 = _containingScrollView != 0;
    }

    else
    {
      v11 = 0;
    }

    v9 = _UIControlMenuSupportDefaultMenuStyle(v11, (*&self->_controlFlags >> 23) & 1);
    contextMenuInteraction = [(UIControl *)self contextMenuInteraction];
    v13 = [(UIControl *)self contextMenuInteraction:contextMenuInteraction previewForHighlightingMenuWithConfiguration:configurationCopy];

    [(UIControl *)self menuAttachmentPointForConfiguration:configurationCopy];
    v15 = v14;
    v17 = v16;
    if ([configurationCopy prefersHorizontalAttachment])
    {
      _UIControlMenuSupportUpdateStyleWithHorizontalPreference(v9, self, v13, v15, v17);
    }

    else
    {
      _UIControlMenuSupportUpdateStyle(v9, self, v13, v15, v17);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contextMenuInteraction:(id)interaction configuration:(id)configuration interactionEffectForTargetedPreview:(id)preview
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  previewCopy = preview;
  if ((*(&self->_controlFlags + 2) & 0x20) != 0)
  {
    v11 = objc_getAssociatedObject(self, &_UIControlContextMenuInteractionKey);
  }

  else
  {
    v11 = 0;
  }

  if (v11 == interactionCopy)
  {
    v12 = [_UINullClickHighlightEffect effectWithPreview:previewCopy continuingFromPreview:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_contextMenuInteraction:(id)interaction willBeginWithConfiguration:(id)configuration
{
  if (configuration)
  {
    [(UIControl *)self _setHasActiveMenuPresentation:1];

    [(UIControl *)self sendActionsForControlEvents:0x4000];
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  _safeHoverStyle = [(UIControl *)self _safeHoverStyle];
  if (_safeHoverStyle)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self hoverStyle];
    }

    else
    {
      [UIPointerStyle _makeStyleWithHoverStyle:_safeHoverStyle view:self convertAutomatic:0];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_connectInterfaceBuilderEventConnection:(id)connection
{
  connectionCopy = connection;
  target = [connectionCopy target];
  action = [connectionCopy action];
  eventMask = [connectionCopy eventMask];

  [(UIControl *)self addTarget:target action:action forControlEvents:eventMask];
}

- (id)_scalarStatisticsForUserValueChangedEvent
{
  if (_configureDefaultStatisticHandling_onceToken[0] != -1)
  {
    dispatch_once(_configureDefaultStatisticHandling_onceToken, &__block_literal_global_13_5);
  }

  return [(UIControl *)self __scalarStatisticsForUserValueChangedEvent];
}

- (void)_incrementStatisticsForUserActionForEvents:(unint64_t)events
{
  eventsCopy = events;
  if (_configureDefaultStatisticHandling_onceToken[0] == -1)
  {
    if ((events & 0x40) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(_configureDefaultStatisticHandling_onceToken, &__block_literal_global_13_5);
    if ((eventsCopy & 0x40) == 0)
    {
      goto LABEL_6;
    }
  }

  _scalarStatisticsForUserTouchUpInsideEvent = [(UIControl *)self _scalarStatisticsForUserTouchUpInsideEvent];
  v6 = _scalarStatisticsForUserTouchUpInsideEvent;
  if (_scalarStatisticsForUserTouchUpInsideEvent)
  {
    [_scalarStatisticsForUserTouchUpInsideEvent incrementValueBy:1];
  }

LABEL_6:
  if ((eventsCopy & 0x1000) != 0)
  {
    _scalarStatisticsForUserValueChangedEvent = [(UIControl *)self _scalarStatisticsForUserValueChangedEvent];
    if (_scalarStatisticsForUserValueChangedEvent)
    {
      v8 = _scalarStatisticsForUserValueChangedEvent;
      [_scalarStatisticsForUserValueChangedEvent incrementValueBy:1];
      _scalarStatisticsForUserValueChangedEvent = v8;
    }
  }
}

@end