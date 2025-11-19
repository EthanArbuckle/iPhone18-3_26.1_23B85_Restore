@interface _UITextInteractableItem
+ (id)customItemWithTag:(id)a3 range:(id)a4 textItemInteractingView:(id)a5 location:(CGPoint)a6;
+ (id)itemForAttachment:(id)a3 range:(id)a4 textItemInteractingView:(id)a5 location:(CGPoint)a6;
+ (id)itemForLink:(id)a3 range:(id)a4 textItemInteractingView:(id)a5 location:(CGPoint)a6;
- (BOOL)_actionPresentsMenu:(id)a3;
- (BOOL)_allowHighlight;
- (BOOL)_allowInteraction:(int64_t)a3;
- (BOOL)canInvokeDefaultAction;
- (BOOL)defaultActionPresentsMenu;
- (BOOL)hasPrimaryAction;
- (BOOL)isEqual:(id)a3;
- (BOOL)showsMenuPreview;
- (CGPoint)location;
- (CGRect)bounds;
- (NSArray)rects;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UIEditMenuInteraction)editMenuInteraction;
- (_UITextContent)textContent;
- (_UITextInteractableItem)initWithRange:(id)a3 view:(id)a4 location:(CGPoint)a5;
- (_UITextItemInteracting)textItemInteractingView;
- (id)_itemRepresentationWithRange:(_NSRange)a3;
- (id)_solverWithUnifyRects:(BOOL)a3;
- (id)contextMenuConfiguration;
- (id)itemRepresentationWithRange:(_NSRange)a3;
- (id)preparedPrimaryActionWithDefaultAction:(id)a3;
- (void)_defaultAction;
- (void)_warnForInvalidAction;
- (void)dealloc;
- (void)highlight;
- (void)invokeDefaultAction;
- (void)prepareMenuConfigurationWithDefaultMenu:(id)a3;
- (void)unhighlight;
@end

@implementation _UITextInteractableItem

- (CGRect)bounds
{
  v2 = [(_UITextInteractableItem *)self _solverWithUnifyRects:1];
  [v2 boundingRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (NSArray)rects
{
  v2 = [(_UITextInteractableItem *)self _solverWithUnifyRects:0];
  v3 = [v2 rects];

  return v3;
}

- (_UITextInteractableItem)initWithRange:(id)a3 view:(id)a4 location:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v10 = a3;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = _UITextInteractableItem;
  v12 = [(_UITextInteractableItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_range, a3);
    objc_storeWeak(&v13->_textItemInteractingView, v11);
    v13->_location.x = x;
    v13->_location.y = y;
  }

  return v13;
}

+ (id)itemForLink:(id)a3 range:(id)a4 textItemInteractingView:(id)a5 location:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 _textInteractableItemCache];
  v14 = [v13 itemForLink:v10 range:v11];

  if (!v14)
  {
    v14 = [(_UITextInteractableItem *)[_UITextInteractableLinkItem alloc] initWithRange:v11 view:v12 location:x, y];
    [(_UITextInteractableLinkItem *)v14 setLink:v10];
    v15 = [_UITextLinkInteractionHandler handlerForItem:v14 textContentView:v12];
    [(_UITextInteractableItem *)v14 setItemHandler:v15];
  }

  return v14;
}

+ (id)itemForAttachment:(id)a3 range:(id)a4 textItemInteractingView:(id)a5 location:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 _textInteractableItemCache];
  v14 = [v13 itemForAttachment:v10 range:v11];

  if (!v14)
  {
    v14 = [(_UITextInteractableItem *)[_UITextInteractableAttachmentItem alloc] initWithRange:v11 view:v12 location:x, y];
    [(_UITextInteractableAttachmentItem *)v14 setAttachment:v10];
    v15 = [[_UITextAttachmentInteractionHandler alloc] initWithAttachmentItem:v14 textContentView:v12];
    [(_UITextInteractableItem *)v14 setItemHandler:v15];
  }

  return v14;
}

+ (id)customItemWithTag:(id)a3 range:(id)a4 textItemInteractingView:(id)a5 location:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 _textInteractableItemCache];
  v14 = [v13 itemForTag:v10 range:v11];

  if (!v14)
  {
    v14 = [(_UITextInteractableItem *)[_UITextInteractableTagItem alloc] initWithRange:v11 view:v12 location:x, y];
    [(_UITextInteractableTagItem *)v14 setTag:v10];
    v15 = [[_UITextItemInteractionHandler alloc] initWithItem:v14 textContentView:v12];
    [(_UITextInteractableItem *)v14 setItemHandler:v15];
  }

  return v14;
}

- (id)itemRepresentationWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  representedTextItem = self->_representedTextItem;
  if (!representedTextItem || ([(UITextItem *)representedTextItem range]== a3.location ? (v8 = v7 == length) : (v8 = 0), !v8))
  {
    v9 = [(_UITextInteractableItem *)self _itemRepresentationWithRange:location, length];
    v10 = self->_representedTextItem;
    self->_representedTextItem = v9;
  }

  v11 = self->_representedTextItem;

  return v11;
}

- (id)_itemRepresentationWithRange:(_NSRange)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UITextInteractableItem.m" lineNumber:183 description:@"itemRepresentation needs to be implemented by the subclass"];

  return 0;
}

- (id)preparedPrimaryActionWithDefaultAction:(id)a3
{
  v4 = a3;
  v5 = +[UIAction textInteractableItemDefaultAction];
  if ((*&self->_requested & 1) == 0)
  {
    *&self->_requested |= 1u;
    v6 = [(_UITextInteractableItem *)self textItemInteractingView];
    v7 = [v6 _textInteractableItemCache];
    [v7 addItem:self];

    WeakRetained = objc_loadWeakRetained(&self->_textItemInteractingView);
    v9 = [WeakRetained _primaryActionForTextInteractableItem:self defaultAction:v5];

    v10 = [v9 isEqual:v5];
    v11 = v5;
    if ((v10 & 1) != 0 || (v11 = v9) != 0)
    {
      v12 = v11;
      primaryAction = self->_primaryAction;
      self->_primaryAction = v12;
    }
  }

  v14 = v4;
  if (![(UIAction *)self->_primaryAction isEqual:v5])
  {
    v14 = self->_primaryAction;
  }

  v15 = v14;

  return v14;
}

- (void)prepareMenuConfigurationWithDefaultMenu:(id)a3
{
  v4 = a3;
  if ((*&self->_requested & 2) == 0)
  {
    *&self->_requested |= 2u;
    if (!v4)
    {
      v4 = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
    }

    v8 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_textItemInteractingView);
    v6 = [WeakRetained _menuConfigurationForTextInteractableItem:self defaultMenu:v8];

    preparedMenuConfiguration = self->_preparedMenuConfiguration;
    self->_preparedMenuConfiguration = v6;

    v4 = v8;
  }
}

- (BOOL)showsMenuPreview
{
  v3 = [(_UITextInteractableItem *)self preparedMenuConfiguration];
  v4 = [v3 preview];

  if (v4)
  {
    v5 = [v4 _previewView];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(_UITextInteractableItem *)self _showsPreviewByDefault];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    if ([(_UITextInteractableItem *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = [(_UITextInteractableItem *)v4 textItemInteractingView];
      v6 = [(_UITextInteractableItem *)self textItemInteractingView];
      v7 = v5;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        v11 = v8;
        v12 = v7;
        if (!v7 || !v8)
        {
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v10 = [v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_18;
        }
      }

      v13 = [(_UITextInteractableItem *)v4 range];
      v14 = [(_UITextInteractableItem *)self range];
      v12 = v13;
      v15 = v14;
      v11 = v15;
      if (v12 == v15)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v12 && v15)
        {
          LOBYTE(v10) = [v12 isEqual:v15];
        }
      }

      goto LABEL_17;
    }

    LOBYTE(v10) = 0;
  }

LABEL_19:

  return v10;
}

- (id)contextMenuConfiguration
{
  v3 = [(_UITextInteractableItem *)self itemHandler];
  v4 = [v3 contextMenuConfiguration];

  if (!v4)
  {
    [(_UITextInteractableItem *)self _warnForInvalidAction];
  }

  return v4;
}

- (void)_warnForInvalidAction
{
  feedbackGenerator = self->_feedbackGenerator;
  if (!feedbackGenerator)
  {
    v4 = objc_alloc_init(UINotificationFeedbackGenerator);
    v5 = self->_feedbackGenerator;
    self->_feedbackGenerator = v4;

    feedbackGenerator = self->_feedbackGenerator;
  }

  [(UINotificationFeedbackGenerator *)feedbackGenerator notificationOccurred:1];
}

- (void)_defaultAction
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[13];
    if (!v3)
    {
      v4 = [a1 itemHandler];
      v5 = [v4 primaryAction];
      v6 = v2[13];
      v2[13] = v5;

      v3 = v2[13];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (BOOL)canInvokeDefaultAction
{
  v3 = [(_UITextInteractableItem *)self textItemInteractingView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UITextInteractableItem *)self textItemInteractingView];
    v6 = [v5 _delegatesAllowingTextItemInteractions];

    if (v6)
    {
      return 1;
    }
  }

  v8 = [(_UITextInteractableItem *)self _defaultAction];
  v7 = v8 != 0;

  return v7;
}

- (void)invokeDefaultAction
{
  v3 = [(_UITextInteractableItem *)self _defaultAction];
  if ([(_UITextInteractableItem *)self _allowInteraction:0]&& v3)
  {
    if ([(_UITextInteractableItem *)self _allowHighlight]&& ![(_UITextInteractableItem *)self _actionPresentsMenu:v3])
    {
      [(_UITextInteractableItem *)self highlight];
      [v3 performWithSender:0 target:0];
      v4 = dispatch_time(0, 100000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46___UITextInteractableItem_invokeDefaultAction__block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [v3 performWithSender:0 target:0];
    }
  }
}

- (BOOL)hasPrimaryAction
{
  v3 = [(_UITextInteractableItem *)self _defaultAction];
  if (v3)
  {
    v4 = ![(_UITextInteractableItem *)self _actionPresentsMenu:v3];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)defaultActionPresentsMenu
{
  v3 = [(_UITextInteractableItem *)self _defaultAction];
  if (v3)
  {
    v4 = [(_UITextInteractableItem *)self _actionPresentsMenu:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_actionPresentsMenu:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 isEqualToString:0x1EFB17D30];

  return v4;
}

- (BOOL)_allowInteraction:(int64_t)a3
{
  if (a3)
  {
    v5 = [(_UITextInteractableItem *)self textItemInteractingView];
    v6 = [v5 _allowsLinkPreviewInteractionInViewServices];

    if (!v6)
    {
      return 0;
    }
  }

  v7 = [(_UITextInteractableItem *)self textItemInteractingView];
  v8 = [v7 _allowInteraction:a3 forTextInteractableItem:self];

  return v8;
}

- (void)dealloc
{
  [(_UITextInteractableItem *)self unhighlight];
  v3.receiver = self;
  v3.super_class = _UITextInteractableItem;
  [(_UITextInteractableItem *)&v3 dealloc];
}

- (BOOL)_allowHighlight
{
  v3 = [(_UITextInteractableItem *)self textItemInteractingView];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _allowHighlightForTextInteractableItem:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)highlight
{
  v3 = [(_UITextInteractableItem *)self textItemInteractingView];
  if (v3)
  {
    v12 = v3;
    v4 = self->_highlightView;
    if (!self->_highlightView)
    {
      v5 = [_UITextItemHighlightView alloc];
      v6 = [(_UITextItemHighlightView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

      [(_UITextItemHighlightView *)v6 setCornerRadius:5.0];
      [(_UITextItemHighlightView *)v6 setHorizontalPadding:4.0];
      v7 = [v12 textInputView];
      [v7 addSubview:v6];

      objc_storeStrong(&self->_highlightView, v6);
      v4 = v6;
    }

    v8 = [(_UITextInteractableItem *)self rects];
    [(_UITextItemHighlightView *)v4 setTextLineRects:v8];

    [(UIView *)v4 setNeedsDisplay];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v12 _selectionDisplayInteraction];
      [(_UIInvalidatable *)self->_selectionHiddenAssertion _invalidate];
      v10 = [v9 _obtainSelectionUIHiddenAssertionForReason:@"Link Interaction" animated:0];
      selectionHiddenAssertion = self->_selectionHiddenAssertion;
      self->_selectionHiddenAssertion = v10;
    }

    v3 = v12;
  }
}

- (void)unhighlight
{
  highlightView = self->_highlightView;
  if (highlightView)
  {
    [(UIView *)highlightView removeFromSuperview];
    v4 = self->_highlightView;
    self->_highlightView = 0;

    [(_UIInvalidatable *)self->_selectionHiddenAssertion _invalidate];
    selectionHiddenAssertion = self->_selectionHiddenAssertion;
    self->_selectionHiddenAssertion = 0;
  }
}

- (id)_solverWithUnifyRects:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UITextInteractableItem *)self textItemInteractingView];
  v6 = [v5 textContainer];

  v7 = [_UIBoundingTextRectsSolver alloc];
  v8 = [(_UITextInteractableItem *)self range];
  v9 = [(_UIBoundingTextRectsSolver *)v7 initWithTextContainer:v6 range:v8 unifyRects:v3];

  return v9;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_UITextItemInteracting)textItemInteractingView
{
  WeakRetained = objc_loadWeakRetained(&self->_textItemInteractingView);

  return WeakRetained;
}

- (UIContextMenuInteraction)contextMenuInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_contextMenuInteraction);

  return WeakRetained;
}

- (UIEditMenuInteraction)editMenuInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_editMenuInteraction);

  return WeakRetained;
}

- (_UITextContent)textContent
{
  WeakRetained = objc_loadWeakRetained(&self->_textContent);

  return WeakRetained;
}

@end