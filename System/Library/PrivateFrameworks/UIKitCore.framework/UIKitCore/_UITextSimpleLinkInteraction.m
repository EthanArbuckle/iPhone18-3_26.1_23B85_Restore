@interface _UITextSimpleLinkInteraction
- (BOOL)_allowItemInteractions;
- (BOOL)_beginInteractionSessionForLinkAtPoint:(CGPoint)a3 asTap:(BOOL)a4 precision:(unint64_t)a5;
- (BOOL)_canBeginInteractionSessionForLinkAtPoint:(CGPoint)a3 asTap:(BOOL)a4 precision:(unint64_t)a5;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)interaction_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)interaction_gestureRecognizerShouldBegin:(id)a3;
- (_UITextSimpleLinkInteraction)initWithShouldProxyContextMenuDelegate:(BOOL)a3;
- (id)gesturesForFailureRequirements;
- (id)itemInteractableView;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_removeInteractableItemFromCache:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)highlight:(id)a3;
- (void)linkTapped:(id)a3;
@end

@implementation _UITextSimpleLinkInteraction

- (_UITextSimpleLinkInteraction)initWithShouldProxyContextMenuDelegate:(BOOL)a3
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
    v4->_shouldProxyContextMenuDelegate = a3;
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

- (void)didMoveToView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UITextSimpleLinkInteraction;
  [(UITextInteraction *)&v4 didMoveToView:a3];
  self->_didCheckViewProtocolConformance = 0;
  self->_viewConformsToTextItemInteracting = 0;
}

- (id)itemInteractableView
{
  if (!self->_didCheckViewProtocolConformance)
  {
    v3 = [(UITextInteraction *)self view];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 conformsToProtocol:&unk_1EFE8B5E0];
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
    v5 = [(UITextInteraction *)self view];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_removeInteractableItemFromCache:(id)a3
{
  v4 = a3;
  v6 = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  v5 = [v6 _textInteractableItemCache];
  [v5 removeItem:v4];
}

- (void)linkTapped:(id)a3
{
  v11 = a3;
  if ([(_UITextSimpleLinkInteraction *)self _allowItemInteractions])
  {
    v4 = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
    if (!v4)
    {
      v6 = [(UITextInteraction *)self linkInteractionSession];
      [v6 tapOnLinkWithGesture:v11];
LABEL_15:

      goto LABEL_16;
    }

    [v11 locationInView:v4];
    if (v11)
    {
      v5 = v11[24];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v4 _textInteractableItemAtPoint:v5 precision:?];
    v7 = [(UITextLinkInteraction *)self contextMenuInteraction];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = [(UITextInteraction *)self assistantDelegate];
      v8 = [v9 contextMenuInteraction];

      if (!v8)
      {
LABEL_10:
        v10 = [(_UITextSimpleLinkInteraction *)self editMenuInteraction];
        if (v10)
        {
          [v6 setEditMenuInteraction:v10];
        }

        self->_presentingFromSimpleTap = 1;
        [v6 invokeDefaultAction];
        self->_presentingFromSimpleTap = 0;
        if (([v6 defaultActionPresentsMenu] & 1) == 0)
        {
          [(_UITextSimpleLinkInteraction *)self _removeInteractableItemFromCache:v6];
        }

        goto LABEL_15;
      }
    }

    [v6 setContextMenuInteraction:v8];

    goto LABEL_10;
  }

LABEL_16:
}

- (void)highlight:(id)a3
{
  v4 = a3;
  if ([(_UITextSimpleLinkInteraction *)self _allowItemInteractions])
  {
    v5 = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
    [v4 locationInView:v5];
    if (v5)
    {
      if (v4)
      {
        v6 = v4[24];
      }

      else
      {
        v6 = 0;
      }

      v7 = [v5 _textInteractableItemAtPoint:v6 precision:?];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __42___UITextSimpleLinkInteraction_highlight___block_invoke;
      aBlock[3] = &unk_1E70F35B8;
      v8 = v7;
      v27 = v8;
      v28 = self;
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
      v23 = self;
      v12 = v10;
      v13 = _Block_copy(&v18);
      v14 = _Block_copy(v13);
    }

    else
    {
      v15 = [(UITextInteraction *)self linkInteractionSession];
      if (v15)
      {
        v13 = &__block_literal_global_355_3;
      }

      else
      {
        v13 = 0;
      }

      if (v15)
      {
        v14 = &__block_literal_global_357_1;
      }

      else
      {
        v14 = 0;
      }

      if (v15)
      {
        v11 = &__block_literal_global_353_2;
      }

      else
      {
        v11 = 0;
      }

      if (v15)
      {
        v9 = &__block_literal_global_600;
      }

      else
      {
        v9 = 0;
      }
    }

    v16 = [v4 state];
    if (v16 <= 2)
    {
      if (v16 == 1)
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
        if (v16 != 2)
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

    else if ((v16 - 3) >= 2)
    {
      if (v16 != 5)
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

- (BOOL)interaction_gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UITextSimpleLinkInteraction;
  if ([(UITextInteraction *)&v13 interaction_gestureRecognizerShouldBegin:v4]&& [(_UITextSimpleLinkInteraction *)self _allowItemInteractions])
  {
    v5 = [(UIGestureRecognizer *)v4 view];
    [(UITapGestureRecognizer *)v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    if (v4)
    {
      inputPrecision = v4->super._inputPrecision;
    }

    else
    {
      inputPrecision = 0;
    }

    v11 = [(_UITextSimpleLinkInteraction *)self _beginInteractionSessionForLinkAtPoint:self->_linkTap == v4 asTap:inputPrecision precision:v7, v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)interaction_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = _UITextSimpleLinkInteraction;
  if ([(UITextInteraction *)&v16 interaction_gestureRecognizer:v6 shouldReceiveTouch:v7]&& [(_UITextSimpleLinkInteraction *)self _allowItemInteractions])
  {
    v8 = [(UIGestureRecognizer *)v6 view];
    [v7 locationInView:v8];
    v10 = v9;
    v12 = v11;

    if (v7)
    {
      v13 = v7[6];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(_UITextSimpleLinkInteraction *)self _canBeginInteractionSessionForLinkAtPoint:self->_linkTap == v6 asTap:v13 precision:v10, v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_linkTap == a3)
  {
    v9 = [v6 name];
    if ([v9 isEqualToString:0x1EFBA76B0])
    {
      v8 = 1;
    }

    else
    {
      v10 = [v7 name];
      v8 = [v10 isEqualToString:0x1EFBA76D0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  v8 = a3;
  v4 = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  if (self->_linkTap == v8 && v4 != 0)
  {
    [(UITapGestureRecognizer *)v8 locationInView:v4];
    if (v8)
    {
      inputPrecision = v8->super._inputPrecision;
    }

    else
    {
      inputPrecision = 0;
    }

    v7 = [v4 _textInteractableItemAtPoint:inputPrecision precision:?];
    [(_UITextSimpleLinkInteraction *)self _removeInteractableItemFromCache:v7];
  }
}

- (BOOL)_canBeginInteractionSessionForLinkAtPoint:(CGPoint)a3 asTap:(BOOL)a4 precision:(unint64_t)a5
{
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v10 = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 _textInteractableItemAtPoint:a5 precision:{x, y}];
    v13 = v12;
    v14 = v12 != 0;
    if (v12 && v6)
    {
      v14 = [v12 canInvokeDefaultAction];
    }

    if (v13 && (v14 & 1) == 0)
    {
      [(_UITextSimpleLinkInteraction *)self _removeInteractableItemFromCache:v13];
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [(UITextInteraction *)self view];
  if (objc_opt_respondsToSelector())
  {
    v14 |= [v15 willInteractWithLinkAtPoint:{x, y}];
  }

  return v14;
}

- (BOOL)_beginInteractionSessionForLinkAtPoint:(CGPoint)a3 asTap:(BOOL)a4 precision:(unint64_t)a5
{
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v10 = [[_UITextLinkInteractionSession alloc] initWithTextItemInteraction:self];
  v11 = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 _textInteractableItemAtPoint:a5 precision:{x, y}];
    v14 = v13;
    v15 = v13 != 0;
    if (v13 && v6)
    {
      v15 = [v13 canInvokeDefaultAction];
    }
  }

  else
  {
    if (!v10 || ![(_UITextLinkInteractionSession *)v10 canInteractWithLinkAtPoint:x, y])
    {
      v15 = 0;
      goto LABEL_10;
    }

    [(UITextInteraction *)self cancelLinkInteractionSession];
    v14 = [(UITextInteraction *)self root];
    [v14 _setLinkInteractionSession:v10];
    v15 = 1;
  }

LABEL_10:
  return v15;
}

- (BOOL)_allowItemInteractions
{
  v3 = [(UITextInteraction *)self view];
  v4 = [UITextItemInteractionInteraction mightResponderHaveTextItemInteractions:v3];

  if (!v4)
  {
    v6 = [(UITextInteraction *)self assistantDelegate];
    v7 = [v6 activeSelection];

    v8 = [v7 selectedRange];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 selectedRange];
      if ([v10 _isCaret])
      {
        v11 = [(UITextInteraction *)self assistantDelegate];
        v12 = [v11 _editMenuAssistant];
        v13 = [v12 _editMenuIsVisible];

        if (!v13)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v15.receiver = self;
      v15.super_class = _UITextSimpleLinkInteraction;
      v5 = [(UITextItemInteractionInteraction *)&v15 _allowItemInteractions];
      goto LABEL_9;
    }

LABEL_6:
    v5 = 1;
LABEL_9:

    return v5;
  }

  return 1;
}

@end