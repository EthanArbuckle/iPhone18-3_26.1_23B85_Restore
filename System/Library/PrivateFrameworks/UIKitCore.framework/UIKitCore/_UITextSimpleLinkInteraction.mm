@interface _UITextSimpleLinkInteraction
- (BOOL)_allowItemInteractions;
- (BOOL)_beginInteractionSessionForLinkAtPoint:(CGPoint)point asTap:(BOOL)tap precision:(unint64_t)precision;
- (BOOL)_canBeginInteractionSessionForLinkAtPoint:(CGPoint)point asTap:(BOOL)tap precision:(unint64_t)precision;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)interaction_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)interaction_gestureRecognizerShouldBegin:(id)begin;
- (_UITextSimpleLinkInteraction)initWithShouldProxyContextMenuDelegate:(BOOL)delegate;
- (id)gesturesForFailureRequirements;
- (id)itemInteractableView;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_removeInteractableItemFromCache:(id)cache;
- (void)didMoveToView:(id)view;
- (void)highlight:(id)highlight;
- (void)linkTapped:(id)tapped;
@end

@implementation _UITextSimpleLinkInteraction

- (_UITextSimpleLinkInteraction)initWithShouldProxyContextMenuDelegate:(BOOL)delegate
{
  v8.receiver = self;
  v8.super_class = _UITextSimpleLinkInteraction;
  v4 = [(UITextInteraction *)&v8 init];
  if (v4)
  {
    v5 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:sel_linkTapped_];
    linkTap = v4->_linkTap;
    v4->_linkTap = v5;

    [(UITapGestureRecognizer *)v4->_linkTap setNumberOfTouchesRequired:1];
    [(UITapGestureRecognizer *)v4->_linkTap setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)v4->_linkTap setAllowableMovement:10.0];
    [(UIGestureRecognizer *)v4->_linkTap setDelaysTouchesEnded:0];
    [(UITextInteraction *)v4 addGestureRecognizer:v4->_linkTap withName:0x1EFBA76F0];
    v4->_shouldProxyContextMenuDelegate = delegate;
  }

  return v4;
}

- (id)gesturesForFailureRequirements
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_linkTap;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)didMoveToView:(id)view
{
  v4.receiver = self;
  v4.super_class = _UITextSimpleLinkInteraction;
  [(UITextInteraction *)&v4 didMoveToView:view];
  self->_didCheckViewProtocolConformance = 0;
  self->_viewConformsToTextItemInteracting = 0;
}

- (id)itemInteractableView
{
  if (!self->_didCheckViewProtocolConformance)
  {
    view = [(UITextInteraction *)self view];
    if (objc_opt_respondsToSelector())
    {
      v4 = [view conformsToProtocol:&unk_1EFE8B5E0];
    }

    else
    {
      v4 = 0;
    }

    self->_viewConformsToTextItemInteracting = v4;
    self->_didCheckViewProtocolConformance = 1;
  }

  if (self->_viewConformsToTextItemInteracting)
  {
    view2 = [(UITextInteraction *)self view];
  }

  else
  {
    view2 = 0;
  }

  return view2;
}

- (void)_removeInteractableItemFromCache:(id)cache
{
  cacheCopy = cache;
  itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  _textInteractableItemCache = [itemInteractableView _textInteractableItemCache];
  [_textInteractableItemCache removeItem:cacheCopy];
}

- (void)linkTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(_UITextSimpleLinkInteraction *)self _allowItemInteractions])
  {
    itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
    if (!itemInteractableView)
    {
      linkInteractionSession = [(UITextInteraction *)self linkInteractionSession];
      [linkInteractionSession tapOnLinkWithGesture:tappedCopy];
LABEL_15:

      goto LABEL_16;
    }

    [tappedCopy locationInView:itemInteractableView];
    if (tappedCopy)
    {
      v5 = tappedCopy[24];
    }

    else
    {
      v5 = 0;
    }

    linkInteractionSession = [itemInteractableView _textInteractableItemAtPoint:v5 precision:?];
    contextMenuInteraction = [(UITextLinkInteraction *)self contextMenuInteraction];
    if (contextMenuInteraction)
    {
      contextMenuInteraction2 = contextMenuInteraction;
    }

    else
    {
      assistantDelegate = [(UITextInteraction *)self assistantDelegate];
      contextMenuInteraction2 = [assistantDelegate contextMenuInteraction];

      if (!contextMenuInteraction2)
      {
LABEL_10:
        editMenuInteraction = [(_UITextSimpleLinkInteraction *)self editMenuInteraction];
        if (editMenuInteraction)
        {
          [linkInteractionSession setEditMenuInteraction:editMenuInteraction];
        }

        self->_presentingFromSimpleTap = 1;
        [linkInteractionSession invokeDefaultAction];
        self->_presentingFromSimpleTap = 0;
        if (([linkInteractionSession defaultActionPresentsMenu] & 1) == 0)
        {
          [(_UITextSimpleLinkInteraction *)self _removeInteractableItemFromCache:linkInteractionSession];
        }

        goto LABEL_15;
      }
    }

    [linkInteractionSession setContextMenuInteraction:contextMenuInteraction2];

    goto LABEL_10;
  }

LABEL_16:
}

- (void)highlight:(id)highlight
{
  highlightCopy = highlight;
  if ([(_UITextSimpleLinkInteraction *)self _allowItemInteractions])
  {
    itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
    [highlightCopy locationInView:itemInteractableView];
    if (itemInteractableView)
    {
      if (highlightCopy)
      {
        v6 = highlightCopy[24];
      }

      else
      {
        v6 = 0;
      }

      v7 = [itemInteractableView _textInteractableItemAtPoint:v6 precision:?];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __42___UITextSimpleLinkInteraction_highlight___block_invoke;
      aBlock[3] = &unk_1E70F35B8;
      v8 = v7;
      v27 = v8;
      selfCopy = self;
      v9 = _Block_copy(aBlock);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __42___UITextSimpleLinkInteraction_highlight___block_invoke_2;
      v24[3] = &unk_1E70F35B8;
      v24[4] = self;
      v10 = v8;
      v25 = v10;
      v11 = _Block_copy(v24);
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __42___UITextSimpleLinkInteraction_highlight___block_invoke_3;
      v21 = &unk_1E70F35B8;
      v22 = v10;
      selfCopy2 = self;
      v12 = v10;
      v13 = _Block_copy(&v18);
      v14 = _Block_copy(v13);
    }

    else
    {
      linkInteractionSession = [(UITextInteraction *)self linkInteractionSession];
      if (linkInteractionSession)
      {
        v13 = &__block_literal_global_355_3;
      }

      else
      {
        v13 = 0;
      }

      if (linkInteractionSession)
      {
        v14 = &__block_literal_global_357_1;
      }

      else
      {
        v14 = 0;
      }

      if (linkInteractionSession)
      {
        v11 = &__block_literal_global_353_2;
      }

      else
      {
        v11 = 0;
      }

      if (linkInteractionSession)
      {
        v9 = &__block_literal_global_600;
      }

      else
      {
        v9 = 0;
      }
    }

    state = [highlightCopy state];
    if (state <= 2)
    {
      if (state == 1)
      {
        v17 = v9;
        if (!v9)
        {
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        if (state != 2)
        {
          goto LABEL_32;
        }

        v17 = v11;
        if (!v11)
        {
          goto LABEL_32;
        }
      }
    }

    else if ((state - 3) >= 2)
    {
      if (state != 5)
      {
        goto LABEL_32;
      }

      v17 = v13;
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v17 = v14;
      if (!v14)
      {
        goto LABEL_32;
      }
    }

    v17[2]();
    goto LABEL_32;
  }

LABEL_33:
}

- (BOOL)interaction_gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v13.receiver = self;
  v13.super_class = _UITextSimpleLinkInteraction;
  if ([(UITextInteraction *)&v13 interaction_gestureRecognizerShouldBegin:beginCopy]&& [(_UITextSimpleLinkInteraction *)self _allowItemInteractions])
  {
    view = [(UIGestureRecognizer *)beginCopy view];
    [(UITapGestureRecognizer *)beginCopy locationInView:view];
    v7 = v6;
    v9 = v8;

    if (beginCopy)
    {
      inputPrecision = beginCopy->super._inputPrecision;
    }

    else
    {
      inputPrecision = 0;
    }

    v11 = [(_UITextSimpleLinkInteraction *)self _beginInteractionSessionForLinkAtPoint:self->_linkTap == beginCopy asTap:inputPrecision precision:v7, v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)interaction_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v16.receiver = self;
  v16.super_class = _UITextSimpleLinkInteraction;
  if ([(UITextInteraction *)&v16 interaction_gestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy]&& [(_UITextSimpleLinkInteraction *)self _allowItemInteractions])
  {
    view = [(UIGestureRecognizer *)recognizerCopy view];
    [touchCopy locationInView:view];
    v10 = v9;
    v12 = v11;

    if (touchCopy)
    {
      v13 = touchCopy[6];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(_UITextSimpleLinkInteraction *)self _canBeginInteractionSessionForLinkAtPoint:self->_linkTap == recognizerCopy asTap:v13 precision:v10, v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  v7 = gestureRecognizerCopy;
  if (self->_linkTap == recognizer)
  {
    name = [gestureRecognizerCopy name];
    if ([name isEqualToString:0x1EFBA76B0])
    {
      v8 = 1;
    }

    else
    {
      name2 = [v7 name];
      v8 = [name2 isEqualToString:0x1EFBA76D0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  failedCopy = failed;
  itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  if (self->_linkTap == failedCopy && itemInteractableView != 0)
  {
    [(UITapGestureRecognizer *)failedCopy locationInView:itemInteractableView];
    if (failedCopy)
    {
      inputPrecision = failedCopy->super._inputPrecision;
    }

    else
    {
      inputPrecision = 0;
    }

    v7 = [itemInteractableView _textInteractableItemAtPoint:inputPrecision precision:?];
    [(_UITextSimpleLinkInteraction *)self _removeInteractableItemFromCache:v7];
  }
}

- (BOOL)_canBeginInteractionSessionForLinkAtPoint:(CGPoint)point asTap:(BOOL)tap precision:(unint64_t)precision
{
  tapCopy = tap;
  y = point.y;
  x = point.x;
  itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  v11 = itemInteractableView;
  if (itemInteractableView)
  {
    v12 = [itemInteractableView _textInteractableItemAtPoint:precision precision:{x, y}];
    v13 = v12;
    canInvokeDefaultAction = v12 != 0;
    if (v12 && tapCopy)
    {
      canInvokeDefaultAction = [v12 canInvokeDefaultAction];
    }

    if (v13 && (canInvokeDefaultAction & 1) == 0)
    {
      [(_UITextSimpleLinkInteraction *)self _removeInteractableItemFromCache:v13];
    }
  }

  else
  {
    canInvokeDefaultAction = 0;
  }

  view = [(UITextInteraction *)self view];
  if (objc_opt_respondsToSelector())
  {
    canInvokeDefaultAction |= [view willInteractWithLinkAtPoint:{x, y}];
  }

  return canInvokeDefaultAction;
}

- (BOOL)_beginInteractionSessionForLinkAtPoint:(CGPoint)point asTap:(BOOL)tap precision:(unint64_t)precision
{
  tapCopy = tap;
  y = point.y;
  x = point.x;
  v10 = [[_UITextLinkInteractionSession alloc] initWithTextItemInteraction:self];
  itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  v12 = itemInteractableView;
  if (itemInteractableView)
  {
    v13 = [itemInteractableView _textInteractableItemAtPoint:precision precision:{x, y}];
    root = v13;
    canInvokeDefaultAction = v13 != 0;
    if (v13 && tapCopy)
    {
      canInvokeDefaultAction = [v13 canInvokeDefaultAction];
    }
  }

  else
  {
    if (!v10 || ![(_UITextLinkInteractionSession *)v10 canInteractWithLinkAtPoint:x, y])
    {
      canInvokeDefaultAction = 0;
      goto LABEL_10;
    }

    [(UITextInteraction *)self cancelLinkInteractionSession];
    root = [(UITextInteraction *)self root];
    [root _setLinkInteractionSession:v10];
    canInvokeDefaultAction = 1;
  }

LABEL_10:
  return canInvokeDefaultAction;
}

- (BOOL)_allowItemInteractions
{
  view = [(UITextInteraction *)self view];
  v4 = [UITextItemInteractionInteraction mightResponderHaveTextItemInteractions:view];

  if (!v4)
  {
    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    activeSelection = [assistantDelegate activeSelection];

    selectedRange = [activeSelection selectedRange];
    if (selectedRange)
    {
      v9 = selectedRange;
      selectedRange2 = [activeSelection selectedRange];
      if ([selectedRange2 _isCaret])
      {
        assistantDelegate2 = [(UITextInteraction *)self assistantDelegate];
        _editMenuAssistant = [assistantDelegate2 _editMenuAssistant];
        _editMenuIsVisible = [_editMenuAssistant _editMenuIsVisible];

        if (!_editMenuIsVisible)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v15.receiver = self;
      v15.super_class = _UITextSimpleLinkInteraction;
      _allowItemInteractions = [(UITextItemInteractionInteraction *)&v15 _allowItemInteractions];
      goto LABEL_9;
    }

LABEL_6:
    _allowItemInteractions = 1;
LABEL_9:

    return _allowItemInteractions;
  }

  return 1;
}

@end