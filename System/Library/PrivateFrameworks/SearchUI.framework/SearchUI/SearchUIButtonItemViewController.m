@interface SearchUIButtonItemViewController
+ (id)buttonItemViewControllerForButtonItem:(id)a3;
- (BOOL)supportsContextMenuConfiguration;
- (SearchUIButtonItemView)buttonItemView;
- (SearchUIButtonItemViewController)init;
- (SearchUIButtonItemViewControllerDelegate)buttonDelegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (SearchUIRowModel)rowModel;
- (id)customPreviewMenu;
- (id)previewCommandHandler;
- (void)buttonPressed;
- (void)setIsCompact:(BOOL)a3;
- (void)setbuttonItemViewStyle:(unint64_t)a3;
- (void)stateDidChangeForButtonItem:(id)a3;
- (void)updateImageForStatusUpdate:(BOOL)a3;
- (void)updateWithButtonItem:(id)a3 buttonItemViewType:(unint64_t)a4 isStatusUpdate:(BOOL)a5;
@end

@implementation SearchUIButtonItemViewController

+ (id)buttonItemViewControllerForButtonItem:(id)a3
{
  [a3 searchUI_viewControllerClass];
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
  v4 = [(SearchUIButtonItemViewController *)self view];
  v5 = [v4 arrangedSubviews];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {

    v8 = 0;
LABEL_17:
    v15 = objc_opt_new();

    [v15 setDelegate:self];
    [v15 addTarget:self action:sel_buttonPressed];
    v16 = [(SearchUIButtonItemViewController *)self view];
    [v16 addArrangedSubview:v15];

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
        objc_enumerationMutation(v5);
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

    v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)updateWithButtonItem:(id)a3 buttonItemViewType:(unint64_t)a4 isStatusUpdate:(BOOL)a5
{
  v9 = a3;
  v10 = [(SearchUIButtonItemViewController *)self buttonItem];
  if ([v9 isEqual:v10] && -[SearchUIButtonItemViewController buttonItemViewStyle](self, "buttonItemViewStyle") == a4)
  {

    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_buttonItem, a3);
  self->_buttonItemViewStyle = a4;
  [v9 setDelegate:self];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__SearchUIButtonItemViewController_updateWithButtonItem_buttonItemViewType_isStatusUpdate___block_invoke;
  v11[3] = &unk_1E85B31E0;
  v11[4] = self;
  v12 = v9;
  v13 = a4;
  v14 = a5;
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

- (void)updateImageForStatusUpdate:(BOOL)a3
{
  v3 = a3;
  v18 = [(SearchUIButtonItemViewController *)self buttonItem];
  v5 = [(SearchUIButtonItemViewController *)self buttonItemView];
  if (-[SearchUIButtonItemViewController buttonItemViewStyle](self, "buttonItemViewStyle") == 3 && -[SearchUIButtonItemViewController isCompact](self, "isCompact") && ![v18 isMemberOfClass:objc_opt_class()])
  {
    v7 = 1;
  }

  else
  {
    v6 = [v18 buttonAppearance];
    v7 = [v6 preferNoFallbackImage];
  }

  v8 = [v18 image];
  if (!v8)
  {
    if ([v5 drawsBackgroundPlatter])
    {
      if ((v7 & 1) == 0)
      {
LABEL_8:
        v8 = [v18 fallbackImage];
        goto LABEL_11;
      }
    }

    else if (!(v7 & 1 | (([v5 drawsIconBackgroundPlatter] & 1) == 0)))
    {
      goto LABEL_8;
    }

    v8 = 0;
  }

LABEL_11:
  v9 = [SearchUIImage imageWithSFImage:v8];
  v10 = [v5 sfImage];
  v11 = [v10 isEqual:v8];

  if (v11)
  {
    v12 = v9;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [SearchUIImage imageWithSFImage:v8];
    v13 = [(SearchUIButtonItemViewController *)self buttonItem];
    v14 = [v13 useDefaultSymbolFillStyle];

    if (v14)
    {
      [v12 setPreferredFill:1];
    }

    if (!v3)
    {
      goto LABEL_17;
    }

LABEL_19:
    v16 = [v5 buttonTitle];
    if ([v16 length])
    {
      v15 = [v5 drawsTitle] ^ 1;
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_24;
  }

  v12 = v9;
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_17:
  v15 = 0;
LABEL_24:
  v17 = [v18 stateSymbolTransition];
  [v5 setSfImage:v12 animateTransition:v15 symbolTransition:v17];

LABEL_25:
}

- (void)setbuttonItemViewStyle:(unint64_t)a3
{
  v5 = [(SearchUIButtonItemViewController *)self buttonItem];
  [(SearchUIButtonItemViewController *)self updateWithButtonItem:v5 buttonItemViewType:a3];
}

- (void)setIsCompact:(BOOL)a3
{
  if (self->_isCompact != a3)
  {
    v4 = a3;
    self->_isCompact = a3;
    v6 = [(SearchUIButtonItemViewController *)self buttonItemView];
    [v6 setIsCompact:v4];

    [(SearchUIButtonItemViewController *)self updateImageForStatusUpdate:0];
  }
}

- (void)buttonPressed
{
  v3 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v13 = [SearchUIUtilities environmentForDelegate:v3];

  v4 = [(SearchUIButtonItemViewController *)self view];
  [v13 setSourceView:v4];

  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(SearchUIButtonItemViewController *)self buttonItem];
  v7 = [(SearchUIButtonItemViewController *)self rowModel];
  v8 = [SearchUICommandHandler handlerForButton:v6 rowModel:v7 environment:v13];

  [v8 executeWithTriggerEvent:v5];
  v9 = [(SearchUIButtonItemViewController *)self buttonDelegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v10 = [(SearchUIButtonItemViewController *)self buttonDelegate];
    v11 = [(SearchUIButtonItemViewController *)self buttonItem];
    [v10 buttonItemPressed:v11];
  }

  v12 = [(SearchUIButtonItemViewController *)self buttonItem];
  [v12 buttonPressed];
}

- (id)previewCommandHandler
{
  v3 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v4 = [SearchUIUtilities environmentForDelegate:v3];

  v5 = [(SearchUIButtonItemViewController *)self buttonItem];
  v6 = [(SearchUIButtonItemViewController *)self rowModel];
  v7 = [SearchUICommandHandler handlerForButton:v5 rowModel:v6 environment:v4];

  return v7;
}

- (id)customPreviewMenu
{
  v2 = [(SearchUIButtonItemViewController *)self buttonItem];
  v3 = [v2 previewMenu];

  return v3;
}

- (void)stateDidChangeForButtonItem:(id)a3
{
  v9 = a3;
  v4 = [(SearchUIButtonItemViewController *)self buttonItem];
  v5 = [v9 isEqual:v4];

  if (v5)
  {
    v6 = [(SearchUIButtonItemViewController *)self buttonDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(SearchUIButtonItemViewController *)self buttonDelegate];
      [v8 stateDidChangeForButtonItem:v9];
    }

    [(SearchUIButtonItemViewController *)self updateWithButtonItem:v9 buttonItemViewType:[(SearchUIButtonItemViewController *)self buttonItemViewStyle] isStatusUpdate:1];
  }
}

- (BOOL)supportsContextMenuConfiguration
{
  v3 = [(SearchUIButtonItemViewController *)self buttonItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SearchUIButtonItemViewController *)self buttonItemView];
    v5 = [v4 drawsTitle];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SearchUIButtonItemViewController *)self buttonItem];
  if ([v6 allowsContextMenu])
  {
    v7 = [(SearchUIButtonItemViewController *)self view];
    v8 = [SearchUIUtilities deviceIsAuthenticatedForView:v7];
    if ((v8 & v5) == 1)
    {
      v9 = [(SearchUIButtonItemViewController *)self buttonItemView];
      LOBYTE(v8) = [v9 showsMenuAsPrimaryAction];
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