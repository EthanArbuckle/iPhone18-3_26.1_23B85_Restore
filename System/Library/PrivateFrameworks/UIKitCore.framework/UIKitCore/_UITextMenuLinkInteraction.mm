@interface _UITextMenuLinkInteraction
- (BOOL)_contextMenuInteraction:(id)interaction shouldAttemptToPresentConfiguration:(id)configuration;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (_UITextMenuLinkInteraction)initWithShouldProxyContextMenuDelegate:(BOOL)delegate;
- (id)_contextMenuInteraction:(id)interaction configuration:(id)configuration interactionEffectForTargetedPreview:(id)preview;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_targetedPreviewForItem:(id)item dismissing:(BOOL)dismissing;
- (id)contextMenuDelegateProxy;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)editMenuInteraction;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)_willDisplayMenuForItem:(id)item animator:(id)animator;
- (void)_willEndMenuDisplayForItem:(id)item animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToView:(id)view;
- (void)dismissEditMenuOnSelectionChangeIfNecessary;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)willMoveToView:(id)view;
@end

@implementation _UITextMenuLinkInteraction

- (id)contextMenuDelegateProxy
{
  if ([(_UITextSimpleLinkInteraction *)self shouldProxyContextMenuDelegate])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dismissEditMenuOnSelectionChangeIfNecessary
{
  if (!self->_isModifyingSelectionForLinkPresentation)
  {
    [(UIEditMenuInteraction *)self->_editMenuInteraction dismissMenu];
  }
}

- (_UITextMenuLinkInteraction)initWithShouldProxyContextMenuDelegate:(BOOL)delegate
{
  v10.receiver = self;
  v10.super_class = _UITextMenuLinkInteraction;
  v4 = [(_UITextSimpleLinkInteraction *)&v10 initWithShouldProxyContextMenuDelegate:?];
  if (v4)
  {
    if (!delegate)
    {
      v5 = [[UIContextMenuInteraction alloc] initWithDelegate:v4];
      contextMenuInteraction = v4->super.super._contextMenuInteraction;
      v4->super.super._contextMenuInteraction = v5;
    }

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    configurationItems = v4->_configurationItems;
    v4->_configurationItems = weakToStrongObjectsMapTable;
  }

  return v4;
}

- (id)editMenuInteraction
{
  editMenuInteraction = self->_editMenuInteraction;
  if (!editMenuInteraction)
  {
    v4 = [[UIEditMenuInteraction alloc] initWithDelegate:self];
    v5 = self->_editMenuInteraction;
    self->_editMenuInteraction = v4;

    [(UIEditMenuInteraction *)self->_editMenuInteraction setPresentsContextMenuAsSecondaryAction:0];
    view = [(UITextInteraction *)self view];
    [view addInteraction:self->_editMenuInteraction];

    editMenuInteraction = self->_editMenuInteraction;
  }

  return editMenuInteraction;
}

- (void)willMoveToView:(id)view
{
  v10.receiver = self;
  v10.super_class = _UITextMenuLinkInteraction;
  [(UITextInteraction *)&v10 willMoveToView:view];
  if (![(_UITextSimpleLinkInteraction *)self shouldProxyContextMenuDelegate])
  {
    contextMenuInteraction = [(UITextLinkInteraction *)self contextMenuInteraction];

    if (contextMenuInteraction)
    {
      contextMenuInteraction2 = [(UITextLinkInteraction *)self contextMenuInteraction];
      view = [contextMenuInteraction2 view];
      contextMenuInteraction3 = [(UITextLinkInteraction *)self contextMenuInteraction];
      [view removeInteraction:contextMenuInteraction3];
    }
  }

  editMenuInteraction = self->_editMenuInteraction;
  if (editMenuInteraction)
  {
    view2 = [(UIEditMenuInteraction *)editMenuInteraction view];
    [view2 removeInteraction:self->_editMenuInteraction];
  }
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  v7.receiver = self;
  v7.super_class = _UITextMenuLinkInteraction;
  [(_UITextSimpleLinkInteraction *)&v7 didMoveToView:viewCopy];
  if (![(_UITextSimpleLinkInteraction *)self shouldProxyContextMenuDelegate])
  {
    contextMenuInteraction = [(UITextLinkInteraction *)self contextMenuInteraction];

    if (contextMenuInteraction)
    {
      contextMenuInteraction2 = [(UITextLinkInteraction *)self contextMenuInteraction];
      [viewCopy addInteraction:contextMenuInteraction2];
    }
  }

  if (self->_editMenuInteraction)
  {
    [viewCopy addInteraction:?];
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  if (![(_UITextSimpleLinkInteraction *)self _allowItemInteractions])
  {
    contextMenuConfiguration = 0;
    goto LABEL_11;
  }

  itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  v9 = [itemInteractableView _textInteractableItemAtPoint:objc_msgSend(interactionCopy precision:{"_inputPrecision"), x, y}];

  if ([interactionCopy _inputPrecision] == 2 && (objc_msgSend(v9, "hasPrimaryAction") & 1) == 0)
  {
    [(_UITextSimpleLinkInteraction *)self _removeInteractableItemFromCache:v9];

    v9 = 0;
  }

  else if (v9)
  {
    contextMenuConfiguration = [v9 contextMenuConfiguration];
    if (contextMenuConfiguration)
    {
      [(NSMapTable *)self->_configurationItems setObject:v9 forKey:contextMenuConfiguration];
    }

    goto LABEL_10;
  }

  contextMenuConfiguration = 0;
LABEL_10:

LABEL_11:

  return contextMenuConfiguration;
}

- (BOOL)_contextMenuInteraction:(id)interaction shouldAttemptToPresentConfiguration:(id)configuration
{
  v5 = [(NSMapTable *)self->_configurationItems objectForKey:configuration];
  if (v5)
  {
    itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
    v7 = [itemInteractableView _allowInteraction:1 forTextInteractableItem:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  getDDContextMenuConfigurationClass();
  if (objc_opt_isKindOfClass())
  {
    prefersActionMenuStyle = [configurationCopy prefersActionMenuStyle];
  }

  else
  {
    prefersActionMenuStyle = 0;
  }

  v9 = [(NSMapTable *)self->_configurationItems objectForKey:configurationCopy];
  v10 = +[_UIContextMenuStyle defaultStyle];
  v11 = v10;
  if (prefersActionMenuStyle)
  {
    [v10 setPreferredLayout:1];
  }

  else if (self->super._presentingFromSimpleTap || ([v9 showsMenuPreview] & 1) == 0)
  {
    [v11 setPreferredLayout:3];
    v12 = [(_UITextMenuLinkInteraction *)self _targetedPreviewForItem:v9 dismissing:0];
    view = [interactionCopy view];
    _window = [view _window];

    target = [v12 target];
    container = [target container];
    target2 = [v12 target];
    [target2 center];
    [container convertPoint:_window toView:?];
    v19 = v18;

    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    if (v11)
    {
      [v11 _preferredAnchor];
    }

    [_window bounds];
    MidY = CGRectGetMidY(v51);
    v21 = v19 <= MidY;
    v22 = 4;
    if (v19 > MidY)
    {
      v22 = 1;
    }

    v23 = -8.0;
    if (!v21)
    {
      v23 = 5.0;
    }

    *&v47 = v22;
    *&v48 = v23;
    view2 = [interactionCopy view];
    traitCollection = [view2 traitCollection];
    v26 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    [v26 menuItemInternalPadding];
    v28 = v27;

    parameters = [v12 parameters];
    visiblePath = [parameters visiblePath];
    [visiblePath bounds];
    v32 = v31;

    view3 = [v12 view];
    [view3 bounds];
    v35 = v34 - v32 - v28;

    view4 = [v12 view];
    [view4 frame];
    MidX = CGRectGetMidX(v52);
    target3 = [v12 target];
    container2 = [target3 container];
    [container2 center];
    v41 = v40;

    v42 = -v35;
    v43 = 8;
    if (MidX < v41)
    {
      v43 = 2;
      v42 = v35;
    }

    *(&v47 + 1) = v43;
    *(&v48 + 1) = v42;
    v45[0] = v47;
    v45[1] = v48;
    v46 = v49;
    [v11 set_preferredAnchor:v45];
  }

  return v11;
}

- (id)_targetedPreviewForItem:(id)item dismissing:(BOOL)dismissing
{
  dismissingCopy = dismissing;
  itemCopy = item;
  itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  v8 = [itemInteractableView _targetedPreviewForTextInteractableItem:itemCopy dismissing:dismissingCopy];

  return v8;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  v5 = [(NSMapTable *)self->_configurationItems objectForKey:configuration];
  if (v5)
  {
    v6 = [(_UITextMenuLinkInteraction *)self _targetedPreviewForItem:v5 dismissing:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration
{
  v5 = [(NSMapTable *)self->_configurationItems objectForKey:configuration];
  itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  v7 = itemInteractableView;
  if (v5 && ([itemInteractableView window], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(_UITextMenuLinkInteraction *)self _targetedPreviewForItem:v5 dismissing:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contextMenuInteraction:(id)interaction configuration:(id)configuration interactionEffectForTargetedPreview:(id)preview
{
  previewCopy = preview;
  v8 = [(NSMapTable *)self->_configurationItems objectForKey:configuration];
  if ([v8 showsMenuPreview])
  {
    v9 = 0;
  }

  else
  {
    v9 = [_UINullClickHighlightEffect effectWithPreview:previewCopy continuingFromPreview:0];
  }

  return v9;
}

- (void)_willDisplayMenuForItem:(id)item animator:(id)animator
{
  itemCopy = item;
  animatorCopy = animator;
  if (itemCopy)
  {
    itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_isModifyingSelectionForLinkPresentation = 1;
      range = [itemCopy range];
      [itemInteractableView setSelectedTextRange:range];

      self->_isModifyingSelectionForLinkPresentation = 0;
    }

    [itemCopy highlight];
    if (animatorCopy)
    {
      itemInteractableView2 = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
      [itemInteractableView2 _textInteractableItem:itemCopy willDisplayMenuWithAnimator:animatorCopy];
    }
  }
}

- (void)_willEndMenuDisplayForItem:(id)item animator:(id)animator
{
  itemCopy = item;
  animatorCopy = animator;
  if (itemCopy)
  {
    [itemCopy unhighlight];
    if (animatorCopy)
    {
      itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
      [itemInteractableView _textInteractableItem:itemCopy willDismissMenuWithAnimator:animatorCopy];
    }

    itemInteractableView2 = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
    _textInteractableItemCache = [itemInteractableView2 _textInteractableItemCache];
    [_textInteractableItemCache removeItem:itemCopy];
  }
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  configurationItems = self->_configurationItems;
  animatorCopy = animator;
  v9 = [(NSMapTable *)configurationItems objectForKey:configuration];
  [(_UITextMenuLinkInteraction *)self _willDisplayMenuForItem:v9 animator:animatorCopy];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  configurationItems = self->_configurationItems;
  animatorCopy = animator;
  v9 = [(NSMapTable *)configurationItems objectForKey:configuration];
  [(_UITextMenuLinkInteraction *)self _willEndMenuDisplayForItem:v9 animator:animatorCopy];
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  configurationCopy = configuration;
  [configurationCopy sourcePoint];
  v8 = v7;
  v10 = v9;
  itemInteractableView = [(_UITextSimpleLinkInteraction *)self itemInteractableView];
  v12 = [itemInteractableView _textInteractableItemAtPoint:0 precision:{v8, v10}];

  if (v12)
  {
    [(NSMapTable *)self->_configurationItems setObject:v12 forKey:configurationCopy];
    preparedMenuConfiguration = [v12 preparedMenuConfiguration];
    menu = [preparedMenuConfiguration menu];
  }

  else
  {
    menu = 0;
  }

  return menu;
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = [(NSMapTable *)self->_configurationItems objectForKey:configuration];
  if (v5)
  {
    v6 = [(_UITextMenuLinkInteraction *)self _targetedPreviewForItem:v5 dismissing:0];
    v7 = MEMORY[0x1E695F050];
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    parameters = [v6 parameters];
    _textLineRects = [parameters _textLineRects];

    v12 = [_textLineRects countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      x = *v7;
      y = v7[1];
      v16 = *v34;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(_textLineRects);
          }

          [*(*(&v33 + 1) + 8 * i) CGRectValue];
          v42.origin.x = v18;
          v42.origin.y = v19;
          v42.size.width = v20;
          v42.size.height = v21;
          v39.origin.x = x;
          v39.origin.y = y;
          v39.size.width = width;
          v39.size.height = height;
          v40 = CGRectUnion(v39, v42);
          x = v40.origin.x;
          y = v40.origin.y;
          width = v40.size.width;
          height = v40.size.height;
        }

        v13 = [_textLineRects countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v13);
    }

    target = [v6 target];
    [target center];
    v24 = v23;
    v26 = v25;

    v27 = round(v26 - height * 0.5);
    v28 = round(v24 - width * 0.5);
  }

  else
  {
    v28 = *MEMORY[0x1E695F050];
    v27 = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v29 = v28;
  v30 = v27;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  configurationItems = self->_configurationItems;
  animatorCopy = animator;
  v9 = [(NSMapTable *)configurationItems objectForKey:configuration];
  [(_UITextMenuLinkInteraction *)self _willDisplayMenuForItem:v9 animator:animatorCopy];
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  configurationItems = self->_configurationItems;
  animatorCopy = animator;
  v9 = [(NSMapTable *)configurationItems objectForKey:configuration];
  [(_UITextMenuLinkInteraction *)self _willEndMenuDisplayForItem:v9 animator:animatorCopy];
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  configurationCopy = configuration;
  animatorCopy = animator;
  getDDContextMenuConfigurationClass();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = configurationCopy;
  interactionURL = [v8 interactionURL];

  if (interactionURL)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __111___UITextMenuLinkInteraction_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    v21 = v8;
    v10 = _Block_copy(aBlock);
    v11 = v21;
  }

  else
  {
    interactionViewControllerProvider = [v8 interactionViewControllerProvider];
    if (!interactionViewControllerProvider)
    {

LABEL_12:
      [animatorCopy setPreferredCommitStyle:0];
      goto LABEL_13;
    }

    v11 = interactionViewControllerProvider;
    v13 = (*(interactionViewControllerProvider + 16))();
    if (v13)
    {
      previewViewController = [animatorCopy previewViewController];
      presentingViewController = [previewViewController presentingViewController];

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __111___UITextMenuLinkInteraction_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke_2;
      v17[3] = &unk_1E70F35B8;
      v18 = presentingViewController;
      v19 = v13;
      v16 = presentingViewController;
      v10 = _Block_copy(v17);
    }

    else
    {
      v10 = 0;
    }
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  [animatorCopy addAnimations:v10];
  [animatorCopy setPreferredCommitStyle:1];

LABEL_13:
}

@end