@interface _UITextInteractableItem
+ (id)customItemWithTag:(id)tag range:(id)range textItemInteractingView:(id)view location:(CGPoint)location;
+ (id)itemForAttachment:(id)attachment range:(id)range textItemInteractingView:(id)view location:(CGPoint)location;
+ (id)itemForLink:(id)link range:(id)range textItemInteractingView:(id)view location:(CGPoint)location;
- (BOOL)_actionPresentsMenu:(id)menu;
- (BOOL)_allowHighlight;
- (BOOL)_allowInteraction:(int64_t)interaction;
- (BOOL)canInvokeDefaultAction;
- (BOOL)defaultActionPresentsMenu;
- (BOOL)hasPrimaryAction;
- (BOOL)isEqual:(id)equal;
- (BOOL)showsMenuPreview;
- (CGPoint)location;
- (CGRect)bounds;
- (NSArray)rects;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UIEditMenuInteraction)editMenuInteraction;
- (_UITextContent)textContent;
- (_UITextInteractableItem)initWithRange:(id)range view:(id)view location:(CGPoint)location;
- (_UITextItemInteracting)textItemInteractingView;
- (id)_itemRepresentationWithRange:(_NSRange)range;
- (id)_solverWithUnifyRects:(BOOL)rects;
- (id)contextMenuConfiguration;
- (id)itemRepresentationWithRange:(_NSRange)range;
- (id)preparedPrimaryActionWithDefaultAction:(id)action;
- (void)_defaultAction;
- (void)_warnForInvalidAction;
- (void)dealloc;
- (void)highlight;
- (void)invokeDefaultAction;
- (void)prepareMenuConfigurationWithDefaultMenu:(id)menu;
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
  rects = [v2 rects];

  return rects;
}

- (_UITextInteractableItem)initWithRange:(id)range view:(id)view location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  rangeCopy = range;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = _UITextInteractableItem;
  v12 = [(_UITextInteractableItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_range, range);
    objc_storeWeak(&v13->_textItemInteractingView, viewCopy);
    v13->_location.x = x;
    v13->_location.y = y;
  }

  return v13;
}

+ (id)itemForLink:(id)link range:(id)range textItemInteractingView:(id)view location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  linkCopy = link;
  rangeCopy = range;
  viewCopy = view;
  _textInteractableItemCache = [viewCopy _textInteractableItemCache];
  v14 = [_textInteractableItemCache itemForLink:linkCopy range:rangeCopy];

  if (!v14)
  {
    v14 = [(_UITextInteractableItem *)[_UITextInteractableLinkItem alloc] initWithRange:rangeCopy view:viewCopy location:x, y];
    [(_UITextInteractableLinkItem *)v14 setLink:linkCopy];
    v15 = [_UITextLinkInteractionHandler handlerForItem:v14 textContentView:viewCopy];
    [(_UITextInteractableItem *)v14 setItemHandler:v15];
  }

  return v14;
}

+ (id)itemForAttachment:(id)attachment range:(id)range textItemInteractingView:(id)view location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  attachmentCopy = attachment;
  rangeCopy = range;
  viewCopy = view;
  _textInteractableItemCache = [viewCopy _textInteractableItemCache];
  v14 = [_textInteractableItemCache itemForAttachment:attachmentCopy range:rangeCopy];

  if (!v14)
  {
    v14 = [(_UITextInteractableItem *)[_UITextInteractableAttachmentItem alloc] initWithRange:rangeCopy view:viewCopy location:x, y];
    [(_UITextInteractableAttachmentItem *)v14 setAttachment:attachmentCopy];
    v15 = [[_UITextAttachmentInteractionHandler alloc] initWithAttachmentItem:v14 textContentView:viewCopy];
    [(_UITextInteractableItem *)v14 setItemHandler:v15];
  }

  return v14;
}

+ (id)customItemWithTag:(id)tag range:(id)range textItemInteractingView:(id)view location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  tagCopy = tag;
  rangeCopy = range;
  viewCopy = view;
  _textInteractableItemCache = [viewCopy _textInteractableItemCache];
  v14 = [_textInteractableItemCache itemForTag:tagCopy range:rangeCopy];

  if (!v14)
  {
    v14 = [(_UITextInteractableItem *)[_UITextInteractableTagItem alloc] initWithRange:rangeCopy view:viewCopy location:x, y];
    [(_UITextInteractableTagItem *)v14 setTag:tagCopy];
    v15 = [[_UITextItemInteractionHandler alloc] initWithItem:v14 textContentView:viewCopy];
    [(_UITextInteractableItem *)v14 setItemHandler:v15];
  }

  return v14;
}

- (id)itemRepresentationWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  representedTextItem = self->_representedTextItem;
  if (!representedTextItem || ([(UITextItem *)representedTextItem range]== range.location ? (v8 = v7 == length) : (v8 = 0), !v8))
  {
    v9 = [(_UITextInteractableItem *)self _itemRepresentationWithRange:location, length];
    v10 = self->_representedTextItem;
    self->_representedTextItem = v9;
  }

  v11 = self->_representedTextItem;

  return v11;
}

- (id)_itemRepresentationWithRange:(_NSRange)range
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextInteractableItem.m" lineNumber:183 description:@"itemRepresentation needs to be implemented by the subclass"];

  return 0;
}

- (id)preparedPrimaryActionWithDefaultAction:(id)action
{
  actionCopy = action;
  v5 = +[UIAction textInteractableItemDefaultAction];
  if ((*&self->_requested & 1) == 0)
  {
    *&self->_requested |= 1u;
    textItemInteractingView = [(_UITextInteractableItem *)self textItemInteractingView];
    _textInteractableItemCache = [textItemInteractingView _textInteractableItemCache];
    [_textInteractableItemCache addItem:self];

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

  v14 = actionCopy;
  if (![(UIAction *)self->_primaryAction isEqual:v5])
  {
    v14 = self->_primaryAction;
  }

  v15 = v14;

  return v14;
}

- (void)prepareMenuConfigurationWithDefaultMenu:(id)menu
{
  menuCopy = menu;
  if ((*&self->_requested & 2) == 0)
  {
    *&self->_requested |= 2u;
    if (!menuCopy)
    {
      menuCopy = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
    }

    v8 = menuCopy;
    WeakRetained = objc_loadWeakRetained(&self->_textItemInteractingView);
    v6 = [WeakRetained _menuConfigurationForTextInteractableItem:self defaultMenu:v8];

    preparedMenuConfiguration = self->_preparedMenuConfiguration;
    self->_preparedMenuConfiguration = v6;

    menuCopy = v8;
  }
}

- (BOOL)showsMenuPreview
{
  preparedMenuConfiguration = [(_UITextInteractableItem *)self preparedMenuConfiguration];
  preview = [preparedMenuConfiguration preview];

  if (preview)
  {
    _previewView = [preview _previewView];
    if (_previewView)
    {
      _showsPreviewByDefault = 1;
    }

    else
    {
      _showsPreviewByDefault = [(_UITextInteractableItem *)self _showsPreviewByDefault];
    }
  }

  else
  {
    _showsPreviewByDefault = 0;
  }

  return _showsPreviewByDefault;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    if ([(_UITextInteractableItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      textItemInteractingView = [(_UITextInteractableItem *)equalCopy textItemInteractingView];
      textItemInteractingView2 = [(_UITextInteractableItem *)self textItemInteractingView];
      v7 = textItemInteractingView;
      v8 = textItemInteractingView2;
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

      range = [(_UITextInteractableItem *)equalCopy range];
      range2 = [(_UITextInteractableItem *)self range];
      v12 = range;
      v15 = range2;
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
  itemHandler = [(_UITextInteractableItem *)self itemHandler];
  contextMenuConfiguration = [itemHandler contextMenuConfiguration];

  if (!contextMenuConfiguration)
  {
    [(_UITextInteractableItem *)self _warnForInvalidAction];
  }

  return contextMenuConfiguration;
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
  if (self)
  {
    selfCopy = self;
    v3 = self[13];
    if (!v3)
    {
      itemHandler = [self itemHandler];
      primaryAction = [itemHandler primaryAction];
      v6 = selfCopy[13];
      selfCopy[13] = primaryAction;

      v3 = selfCopy[13];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (BOOL)canInvokeDefaultAction
{
  textItemInteractingView = [(_UITextInteractableItem *)self textItemInteractingView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    textItemInteractingView2 = [(_UITextInteractableItem *)self textItemInteractingView];
    _delegatesAllowingTextItemInteractions = [textItemInteractingView2 _delegatesAllowingTextItemInteractions];

    if (_delegatesAllowingTextItemInteractions)
    {
      return 1;
    }
  }

  _defaultAction = [(_UITextInteractableItem *)self _defaultAction];
  v7 = _defaultAction != 0;

  return v7;
}

- (void)invokeDefaultAction
{
  _defaultAction = [(_UITextInteractableItem *)self _defaultAction];
  if ([(_UITextInteractableItem *)self _allowInteraction:0]&& _defaultAction)
  {
    if ([(_UITextInteractableItem *)self _allowHighlight]&& ![(_UITextInteractableItem *)self _actionPresentsMenu:_defaultAction])
    {
      [(_UITextInteractableItem *)self highlight];
      [_defaultAction performWithSender:0 target:0];
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
      [_defaultAction performWithSender:0 target:0];
    }
  }
}

- (BOOL)hasPrimaryAction
{
  _defaultAction = [(_UITextInteractableItem *)self _defaultAction];
  if (_defaultAction)
  {
    v4 = ![(_UITextInteractableItem *)self _actionPresentsMenu:_defaultAction];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)defaultActionPresentsMenu
{
  _defaultAction = [(_UITextInteractableItem *)self _defaultAction];
  if (_defaultAction)
  {
    v4 = [(_UITextInteractableItem *)self _actionPresentsMenu:_defaultAction];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_actionPresentsMenu:(id)menu
{
  identifier = [menu identifier];
  v4 = [identifier isEqualToString:0x1EFB17D30];

  return v4;
}

- (BOOL)_allowInteraction:(int64_t)interaction
{
  if (interaction)
  {
    textItemInteractingView = [(_UITextInteractableItem *)self textItemInteractingView];
    _allowsLinkPreviewInteractionInViewServices = [textItemInteractingView _allowsLinkPreviewInteractionInViewServices];

    if (!_allowsLinkPreviewInteractionInViewServices)
    {
      return 0;
    }
  }

  textItemInteractingView2 = [(_UITextInteractableItem *)self textItemInteractingView];
  v8 = [textItemInteractingView2 _allowInteraction:interaction forTextInteractableItem:self];

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
  textItemInteractingView = [(_UITextInteractableItem *)self textItemInteractingView];
  if (objc_opt_respondsToSelector())
  {
    v4 = [textItemInteractingView _allowHighlightForTextInteractableItem:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)highlight
{
  textItemInteractingView = [(_UITextInteractableItem *)self textItemInteractingView];
  if (textItemInteractingView)
  {
    v12 = textItemInteractingView;
    v4 = self->_highlightView;
    if (!self->_highlightView)
    {
      v5 = [_UITextItemHighlightView alloc];
      v6 = [(_UITextItemHighlightView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

      [(_UITextItemHighlightView *)v6 setCornerRadius:5.0];
      [(_UITextItemHighlightView *)v6 setHorizontalPadding:4.0];
      textInputView = [v12 textInputView];
      [textInputView addSubview:v6];

      objc_storeStrong(&self->_highlightView, v6);
      v4 = v6;
    }

    rects = [(_UITextInteractableItem *)self rects];
    [(_UITextItemHighlightView *)v4 setTextLineRects:rects];

    [(UIView *)v4 setNeedsDisplay];
    if (objc_opt_respondsToSelector())
    {
      _selectionDisplayInteraction = [v12 _selectionDisplayInteraction];
      [(_UIInvalidatable *)self->_selectionHiddenAssertion _invalidate];
      v10 = [_selectionDisplayInteraction _obtainSelectionUIHiddenAssertionForReason:@"Link Interaction" animated:0];
      selectionHiddenAssertion = self->_selectionHiddenAssertion;
      self->_selectionHiddenAssertion = v10;
    }

    textItemInteractingView = v12;
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

- (id)_solverWithUnifyRects:(BOOL)rects
{
  rectsCopy = rects;
  textItemInteractingView = [(_UITextInteractableItem *)self textItemInteractingView];
  textContainer = [textItemInteractingView textContainer];

  v7 = [_UIBoundingTextRectsSolver alloc];
  range = [(_UITextInteractableItem *)self range];
  v9 = [(_UIBoundingTextRectsSolver *)v7 initWithTextContainer:textContainer range:range unifyRects:rectsCopy];

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