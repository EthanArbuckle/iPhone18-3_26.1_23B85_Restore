@interface SearchUIButtonItemViewController
+ (id)buttonItemViewControllerForButtonItem:(id)item;
- (BOOL)supportsContextMenuConfiguration;
- (SearchUIButtonItemView)buttonItemView;
- (SearchUIButtonItemViewController)init;
- (SearchUIButtonItemViewControllerDelegate)buttonDelegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (SearchUIRowModel)rowModel;
- (id)customPreviewMenu;
- (id)previewCommandHandler;
- (void)buttonPressed;
- (void)setIsCompact:(BOOL)compact;
- (void)setbuttonItemViewStyle:(unint64_t)style;
- (void)stateDidChangeForButtonItem:(id)item;
- (void)updateImageForStatusUpdate:(BOOL)update;
- (void)updateWithButtonItem:(id)item buttonItemViewType:(unint64_t)type isStatusUpdate:(BOOL)update;
@end

@implementation SearchUIButtonItemViewController

+ (id)buttonItemViewControllerForButtonItem:(id)item
{
  [item searchUI_viewControllerClass];
  v3 = objc_opt_new();

  return v3;
}

- (SearchUIButtonItemViewController)init
{
  v5.receiver = self;
  v5.super_class = SearchUIButtonItemViewController;
  v2 = [(SearchUIButtonItemViewController *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SearchUIButtonItemViewController *)v2 setView:v3];
  }

  return v2;
}

- (SearchUIButtonItemView)buttonItemView
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(SearchUIButtonItemViewController *)self buttonItemViewStyle]> 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  view = [(SearchUIButtonItemViewController *)self view];
  arrangedSubviews = [view arrangedSubviews];

  v6 = [arrangedSubviews countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {

    v8 = 0;
LABEL_17:
    v15 = objc_opt_new();

    [v15 setDelegate:self];
    [v15 addTarget:self action:sel_buttonPressed];
    view2 = [(SearchUIButtonItemViewController *)self view];
    [view2 addArrangedSubview:v15];

    v8 = v15;
    goto LABEL_18;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v19;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(arrangedSubviews);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      isKindOfClass = objc_opt_isKindOfClass();
      v13 = ~isKindOfClass;
      [v11 setHidden:(isKindOfClass & 1) == 0];
      if ((v13 & 1) == 0)
      {
        v14 = v11;

        v8 = v14;
      }
    }

    v7 = [arrangedSubviews countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);

  if (!v8 || ([v8 isMemberOfClass:v3] & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  [(SearchUIButtonItemViewController *)self setButtonItemView:v8];

  return v8;
}

- (void)updateWithButtonItem:(id)item buttonItemViewType:(unint64_t)type isStatusUpdate:(BOOL)update
{
  itemCopy = item;
  buttonItem = [(SearchUIButtonItemViewController *)self buttonItem];
  if ([itemCopy isEqual:buttonItem] && -[SearchUIButtonItemViewController buttonItemViewStyle](self, "buttonItemViewStyle") == type)
  {

    if (!update)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_buttonItem, item);
  self->_buttonItemViewStyle = type;
  [itemCopy setDelegate:self];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__SearchUIButtonItemViewController_updateWithButtonItem_buttonItemViewType_isStatusUpdate___block_invoke;
  v11[3] = &unk_1E85B31E0;
  v11[4] = self;
  v12 = itemCopy;
  typeCopy = type;
  updateCopy = update;
  [SearchUIUtilities dispatchMainIfNecessary:v11];

LABEL_7:
}

void __91__SearchUIButtonItemViewController_updateWithButtonItem_buttonItemViewType_isStatusUpdate___block_invoke(uint64_t a1)
{
  v28 = [*(a1 + 32) buttonItem];
  if ([v28 isEqual:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) buttonItemViewStyle];
    v3 = *(a1 + 48);

    if (v2 != v3)
    {
      return;
    }

    v28 = [*(a1 + 32) buttonItemView];
    [v28 setDelegate:*(a1 + 32)];
    v4 = [*(a1 + 32) buttonItem];
    v5 = [v4 previewButtonItems];
    v6 = [v5 count];

    v7 = [*(a1 + 40) showsMenuAsPrimaryAction];
    if ((v7 & 1) != 0 || !v6)
    {
      [v28 setShowsMenuAsPrimaryAction:v7];
    }

    else
    {
      v8 = [*(a1 + 32) buttonItem];
      v9 = [v8 command];
      [v28 setShowsMenuAsPrimaryAction:v9 == 0];
    }

    [v28 setContextMenuInteractionEnabled:{objc_msgSend(v28, "showsMenuAsPrimaryAction")}];
    v10 = [*(a1 + 40) title];
    v11 = [v28 buttonTitle];
    v12 = [v11 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      [v28 setButtonTitle:v10];
    }

    [*(a1 + 32) updateImageForStatusUpdate:*(a1 + 56)];
    v13 = [*(a1 + 40) buttonAppearance];
    [v28 setButtonAppearance:v13];

    [v28 setIsCompact:{objc_msgSend(*(a1 + 32), "isCompact")}];
    v14 = [*(a1 + 32) buttonFont];
    [v28 setButtonFont:v14];

    [v28 setButtonProminence:{objc_msgSend(*(a1 + 32), "buttonProminence")}];
    v15 = [*(a1 + 40) command];
    v16 = [*(a1 + 32) rowModel];
    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) feedbackDelegate];
    v19 = [SearchUIUtilities environmentForDelegate:v18];
    v20 = [SearchUICommandHandler handlerForCommand:v15 rowModel:v16 button:v17 sectionModel:0 environment:v19];

    if (v10)
    {
      [v28 setAccessibilityLabel:v10];
    }

    else
    {
      v21 = [v20 defaultTitle];
      [v28 setAccessibilityLabel:v21];
    }

    v22 = [*(a1 + 40) command];
    v23 = [*(a1 + 32) rowModel];
    v24 = [*(a1 + 32) feedbackDelegate];
    v25 = [SearchUIUtilities environmentForDelegate:v24];
    if ([SearchUICommandHandler hasValidHandlerForCommand:v22 rowModel:v23 environment:v25])
    {
    }

    else
    {
      v26 = [*(a1 + 40) isMemberOfClass:objc_opt_class()];

      if (v26)
      {
        v27 = [*(a1 + 40) previewButtonItems];
        [v28 setEnabled:{objc_msgSend(v27, "count") != 0}];

LABEL_18:
        [v28 invalidateIntrinsicContentSize];

        goto LABEL_19;
      }
    }

    [v28 setEnabled:1];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)updateImageForStatusUpdate:(BOOL)update
{
  updateCopy = update;
  buttonItem = [(SearchUIButtonItemViewController *)self buttonItem];
  buttonItemView = [(SearchUIButtonItemViewController *)self buttonItemView];
  if (-[SearchUIButtonItemViewController buttonItemViewStyle](self, "buttonItemViewStyle") == 3 && -[SearchUIButtonItemViewController isCompact](self, "isCompact") && ![buttonItem isMemberOfClass:objc_opt_class()])
  {
    preferNoFallbackImage = 1;
  }

  else
  {
    buttonAppearance = [buttonItem buttonAppearance];
    preferNoFallbackImage = [buttonAppearance preferNoFallbackImage];
  }

  image = [buttonItem image];
  if (!image)
  {
    if ([buttonItemView drawsBackgroundPlatter])
    {
      if ((preferNoFallbackImage & 1) == 0)
      {
LABEL_8:
        image = [buttonItem fallbackImage];
        goto LABEL_11;
      }
    }

    else if (!(preferNoFallbackImage & 1 | (([buttonItemView drawsIconBackgroundPlatter] & 1) == 0)))
    {
      goto LABEL_8;
    }

    image = 0;
  }

LABEL_11:
  v9 = [SearchUIImage imageWithSFImage:image];
  sfImage = [buttonItemView sfImage];
  v11 = [sfImage isEqual:image];

  if (v11)
  {
    v12 = v9;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [SearchUIImage imageWithSFImage:image];
    buttonItem2 = [(SearchUIButtonItemViewController *)self buttonItem];
    useDefaultSymbolFillStyle = [buttonItem2 useDefaultSymbolFillStyle];

    if (useDefaultSymbolFillStyle)
    {
      [v12 setPreferredFill:1];
    }

    if (!updateCopy)
    {
      goto LABEL_17;
    }

LABEL_19:
    buttonTitle = [buttonItemView buttonTitle];
    if ([buttonTitle length])
    {
      v15 = [buttonItemView drawsTitle] ^ 1;
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_24;
  }

  v12 = v9;
  if (updateCopy)
  {
    goto LABEL_19;
  }

LABEL_17:
  v15 = 0;
LABEL_24:
  stateSymbolTransition = [buttonItem stateSymbolTransition];
  [buttonItemView setSfImage:v12 animateTransition:v15 symbolTransition:stateSymbolTransition];

LABEL_25:
}

- (void)setbuttonItemViewStyle:(unint64_t)style
{
  buttonItem = [(SearchUIButtonItemViewController *)self buttonItem];
  [(SearchUIButtonItemViewController *)self updateWithButtonItem:buttonItem buttonItemViewType:style];
}

- (void)setIsCompact:(BOOL)compact
{
  if (self->_isCompact != compact)
  {
    compactCopy = compact;
    self->_isCompact = compact;
    buttonItemView = [(SearchUIButtonItemViewController *)self buttonItemView];
    [buttonItemView setIsCompact:compactCopy];

    [(SearchUIButtonItemViewController *)self updateImageForStatusUpdate:0];
  }
}

- (void)buttonPressed
{
  feedbackDelegate = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v13 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

  view = [(SearchUIButtonItemViewController *)self view];
  [v13 setSourceView:view];

  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  buttonItem = [(SearchUIButtonItemViewController *)self buttonItem];
  rowModel = [(SearchUIButtonItemViewController *)self rowModel];
  v8 = [SearchUICommandHandler handlerForButton:buttonItem rowModel:rowModel environment:v13];

  [v8 executeWithTriggerEvent:v5];
  buttonDelegate = [(SearchUIButtonItemViewController *)self buttonDelegate];
  LOBYTE(buttonItem) = objc_opt_respondsToSelector();

  if (buttonItem)
  {
    buttonDelegate2 = [(SearchUIButtonItemViewController *)self buttonDelegate];
    buttonItem2 = [(SearchUIButtonItemViewController *)self buttonItem];
    [buttonDelegate2 buttonItemPressed:buttonItem2];
  }

  buttonItem3 = [(SearchUIButtonItemViewController *)self buttonItem];
  [buttonItem3 buttonPressed];
}

- (id)previewCommandHandler
{
  feedbackDelegate = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v4 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

  buttonItem = [(SearchUIButtonItemViewController *)self buttonItem];
  rowModel = [(SearchUIButtonItemViewController *)self rowModel];
  v7 = [SearchUICommandHandler handlerForButton:buttonItem rowModel:rowModel environment:v4];

  return v7;
}

- (id)customPreviewMenu
{
  buttonItem = [(SearchUIButtonItemViewController *)self buttonItem];
  previewMenu = [buttonItem previewMenu];

  return previewMenu;
}

- (void)stateDidChangeForButtonItem:(id)item
{
  itemCopy = item;
  buttonItem = [(SearchUIButtonItemViewController *)self buttonItem];
  v5 = [itemCopy isEqual:buttonItem];

  if (v5)
  {
    buttonDelegate = [(SearchUIButtonItemViewController *)self buttonDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonDelegate2 = [(SearchUIButtonItemViewController *)self buttonDelegate];
      [buttonDelegate2 stateDidChangeForButtonItem:itemCopy];
    }

    [(SearchUIButtonItemViewController *)self updateWithButtonItem:itemCopy buttonItemViewType:[(SearchUIButtonItemViewController *)self buttonItemViewStyle] isStatusUpdate:1];
  }
}

- (BOOL)supportsContextMenuConfiguration
{
  buttonItem = [(SearchUIButtonItemViewController *)self buttonItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    buttonItemView = [(SearchUIButtonItemViewController *)self buttonItemView];
    drawsTitle = [buttonItemView drawsTitle];
  }

  else
  {
    drawsTitle = 0;
  }

  buttonItem2 = [(SearchUIButtonItemViewController *)self buttonItem];
  if ([buttonItem2 allowsContextMenu])
  {
    view = [(SearchUIButtonItemViewController *)self view];
    v8 = [SearchUIUtilities deviceIsAuthenticatedForView:view];
    if ((v8 & drawsTitle) == 1)
    {
      buttonItemView2 = [(SearchUIButtonItemViewController *)self buttonItemView];
      LOBYTE(v8) = [buttonItemView2 showsMenuAsPrimaryAction];
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

- (SearchUIRowModel)rowModel
{
  WeakRetained = objc_loadWeakRetained(&self->_rowModel);

  return WeakRetained;
}

- (SearchUIButtonItemViewControllerDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

@end