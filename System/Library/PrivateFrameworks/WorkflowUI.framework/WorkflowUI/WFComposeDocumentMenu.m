@interface WFComposeDocumentMenu
- (NSString)placeholderName;
- (UINavigationBar)navigationBar;
- (WFComposeDocumentMenu)initWithWorkflow:(id)a3;
- (WFComposeDocumentMenuDelegate)delegate;
- (id)findViewInNavigationBarWithName:(id)a3;
- (id)findViewInView:(id)a3 withName:(id)a4;
- (id)navigationItem:(id)a3 willBeginRenamingWithSuggestedTitle:(id)a4 selectedRange:(_NSRange *)a5;
- (void)layoutIconView;
- (void)navigationItem:(id)a3 didEndRenamingWithTitle:(id)a4;
- (void)setDocumentMenuControlWithTitle:(id)a3 navigationItem:(id)a4;
- (void)setIconViewHidden:(BOOL)a3;
- (void)updateDocumentMenuWithNavigationItem:(id)a3;
- (void)updateTitleInNavigationItem:(id)a3;
@end

@implementation WFComposeDocumentMenu

- (UINavigationBar)navigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  return WeakRetained;
}

- (WFComposeDocumentMenuDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationItem:(id)a3 didEndRenamingWithTitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WFComposeDocumentMenu *)self setRenameSessionActive:0];
  v8 = [(WFComposeDocumentMenu *)self navigationBar];
  [v8 setAccessibilityIdentifier:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__WFComposeDocumentMenu_navigationItem_didEndRenamingWithTitle___block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v9 = [(WFComposeDocumentMenu *)self delegate];
  [v9 documentMenu:self renameShortcutToName:v6];

  [(WFComposeDocumentMenu *)self updateTitleInNavigationItem:v7];
}

uint64_t __64__WFComposeDocumentMenu_navigationItem_didEndRenamingWithTitle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldAnchorIconViewToRenameTextField:0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__WFComposeDocumentMenu_navigationItem_didEndRenamingWithTitle___block_invoke_2;
  v3[3] = &unk_279EE8A78;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:1 response:v3 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.25 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
}

uint64_t __64__WFComposeDocumentMenu_navigationItem_didEndRenamingWithTitle___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__WFComposeDocumentMenu_navigationItem_didEndRenamingWithTitle___block_invoke_3;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

- (id)navigationItem:(id)a3 willBeginRenamingWithSuggestedTitle:(id)a4 selectedRange:(_NSRange *)a5
{
  v7 = a4;
  [(WFComposeDocumentMenu *)self setRenameSessionActive:1];
  v8 = [(WFComposeDocumentMenu *)self navigationBar];
  [v8 setAccessibilityIdentifier:@"workflow.editor.navigationbar"];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__WFComposeDocumentMenu_navigationItem_willBeginRenamingWithSuggestedTitle_selectedRange___block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  v9 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], block);
  v10 = [v7 stringByReplacingOccurrencesOfString:@"‌        ‌" withString:&stru_2883A0E78];

  v11 = [v10 length];
  a5->location = 0;
  a5->length = v11;
  v12 = dispatch_time(0, 100000000);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__WFComposeDocumentMenu_navigationItem_willBeginRenamingWithSuggestedTitle_selectedRange___block_invoke_5;
  v14[3] = &unk_279EE8A78;
  v14[4] = self;
  dispatch_after(v12, v9, v14);

  return v10;
}

void __90__WFComposeDocumentMenu_navigationItem_willBeginRenamingWithSuggestedTitle_selectedRange___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) findViewInNavigationBarWithName:@"_UINavigationBarTitleRenameTextField"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 setAutocapitalizationType:WFAutocapitalizationTypeFromLocale()];
    [v9 reloadInputViews];
    v2 = [*(a1 + 32) iconView];
    v3 = [v2 traitCollection];
    v4 = [v3 horizontalSizeClass];

    v5 = objc_alloc(MEMORY[0x277D75D18]);
    if (v4 == 2)
    {
      v6 = 28.0;
    }

    else
    {
      v6 = 30.0;
    }

    v7 = [v5 initWithFrame:{0.0, 0.0, v6, 0.0, v9}];
    [v10 setLeftView:v7];
    [v10 setLeftViewMode:3];

    v8 = dispatch_time(0, 50000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__WFComposeDocumentMenu_navigationItem_willBeginRenamingWithSuggestedTitle_selectedRange___block_invoke_2;
    block[3] = &unk_279EE8A78;
    block[4] = *(a1 + 32);
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }

  else
  {
  }
}

void __90__WFComposeDocumentMenu_navigationItem_willBeginRenamingWithSuggestedTitle_selectedRange___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) findViewInNavigationBarWithName:@"UIFieldEditor"];
  [v1 setClipsToBounds:0];
}

void __90__WFComposeDocumentMenu_navigationItem_willBeginRenamingWithSuggestedTitle_selectedRange___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) findViewInNavigationBarWithName:@"_UITextFieldRoundedRectBackgroundViewNeue"];
  v3 = [v2 layer];
  [v3 setCornerRadius:10.0];

  [*(a1 + 32) setShouldAnchorIconViewToRenameTextField:1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__WFComposeDocumentMenu_navigationItem_willBeginRenamingWithSuggestedTitle_selectedRange___block_invoke_3;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:1 response:v4 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.25 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
}

uint64_t __90__WFComposeDocumentMenu_navigationItem_willBeginRenamingWithSuggestedTitle_selectedRange___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__WFComposeDocumentMenu_navigationItem_willBeginRenamingWithSuggestedTitle_selectedRange___block_invoke_4;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

- (id)findViewInView:(id)a3 withName:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
  v8 = v7;
  while ([v7 count])
  {
    v9 = [v8 lastObject];
    [v8 removeLastObject];
    NSClassFromString(v6);
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [v9 subviews];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v8 addObject:*(*(&v16 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    v7 = v8;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)findViewInNavigationBarWithName:(id)a3
{
  v4 = a3;
  v5 = [(WFComposeDocumentMenu *)self navigationBar];
  if (v5)
  {
    v6 = [(WFComposeDocumentMenu *)self findViewInView:v5 withName:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setIconViewHidden:(BOOL)a3
{
  v3 = a3;
  self->_iconViewHidden = a3;
  v4 = [(WFComposeDocumentMenu *)self iconView];
  [v4 setHidden:v3];
}

- (void)setDocumentMenuControlWithTitle:(id)a3 navigationItem:(id)a4
{
  v5 = [(WFComposeDocumentMenu *)self workflow:a3];
  v6 = [v5 resolvedAssociatedAppBundleIdentifier];

  if (v6 && (-[WFComposeDocumentMenu workflow](self, "workflow"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 shouldAutoUpdateAssociatedAppBundleIdentifier], v7, v8))
  {
    v9 = [objc_alloc(MEMORY[0x277D79DA8]) initWithBundleIdentifier:v6];
  }

  else
  {
    v10 = [(WFComposeDocumentMenu *)self workflow];
    v11 = [v10 icon];
    v9 = [v11 icon];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__WFComposeDocumentMenu_setDocumentMenuControlWithTitle_navigationItem___block_invoke;
  aBlock[3] = &unk_279EE80C0;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v9)
  {
    v14 = [MEMORY[0x277D75128] sharedApplication];
    v15 = [v14 applicationState];

    if (!v15)
    {
      v16 = v9;
      objc_opt_class();
      v17 = objc_opt_isKindOfClass() & 1;
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (v17)
      {
        v20 = MEMORY[0x277D79FC8];
        v21 = [v16 bundleIdentifier];

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __72__WFComposeDocumentMenu_setDocumentMenuControlWithTitle_navigationItem___block_invoke_3;
        v23[3] = &unk_279EE80E8;
        v24 = v13;
        [v20 applicationIconImageForBundleIdentifier:v21 length:v23 scale:52.0 completionHandler:3.0];

        v22 = v24;
      }

      else
      {
        v22 = [MEMORY[0x277D7D780] loadIcon:v16 size:4 style:{52.0, 52.0}];

        (v13)[2](v13, v22);
      }
    }
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }
}

void __72__WFComposeDocumentMenu_setDocumentMenuControlWithTitle_navigationItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__WFComposeDocumentMenu_setDocumentMenuControlWithTitle_navigationItem___block_invoke_2;
  v5[3] = &unk_279EE8C58;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __72__WFComposeDocumentMenu_setDocumentMenuControlWithTitle_navigationItem___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    v5 = v4 * 52.0;

    v6 = [v8 roundedWithContinuousCornerRadius:v5 * *MEMORY[0x277D7A390] size:{v5, v5}];
    v7 = [v6 UIImage];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __72__WFComposeDocumentMenu_setDocumentMenuControlWithTitle_navigationItem___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) iconView];
  [v2 setImage:*(a1 + 40) forState:0];
}

- (void)layoutIconView
{
  if (![(WFComposeDocumentMenu *)self shouldAnchorIconViewToRenameTextField])
  {
    v3 = [(WFComposeDocumentMenu *)self iconView];
    v4 = [v3 superview];
    v5 = [(WFComposeDocumentMenu *)self navigationBar];

    if (v4 != v5)
    {
      v6 = [(WFComposeDocumentMenu *)self navigationBar];
      v7 = [(WFComposeDocumentMenu *)self iconView];
      [v6 addSubview:v7];
    }
  }

  v8 = [(WFComposeDocumentMenu *)self navigationBar];
  [v8 layoutIfNeeded];

  v56 = [(WFComposeDocumentMenu *)self findViewInNavigationBarWithName:@"_UINavigationBarTitleControl"];
  [v56 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(WFComposeDocumentMenu *)self navigationBar];
  [v56 convertRect:v17 toView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(UIButton *)self->_iconView traitCollection];
  [v26 displayScale];

  if (![(WFComposeDocumentMenu *)self shouldAnchorIconViewToRenameTextField])
  {
    v49 = [MEMORY[0x277D759A0] mainScreen];
    v50 = [v49 traitCollection];
    v51 = [v50 layoutDirection];

    if (v51)
    {
      v59.origin.x = v19;
      v59.origin.y = v21;
      v59.size.width = v23;
      v59.size.height = v25;
      CGRectGetMaxX(v59);
    }

    BSFloatRoundForScale();
    v48 = v52;
    v60.origin.x = v19;
    v60.origin.y = v21;
    v60.size.width = v23;
    v60.size.height = v25;
    CGRectGetMidY(v60);
    BSFloatRoundForScale();
    v54 = v53;
    goto LABEL_14;
  }

  v27 = [(WFComposeDocumentMenu *)self findViewInNavigationBarWithName:@"_UINavigationBarTitleRenameTextField"];
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v27 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = [(WFComposeDocumentMenu *)self navigationBar];
      [v27 convertRect:v36 toView:{v29, v31, v33, v35}];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v45 = [MEMORY[0x277D759A0] mainScreen];
      v46 = [v45 traitCollection];
      v47 = [v46 layoutDirection];

      if (v47)
      {
        v58.origin.x = v38;
        v58.origin.y = v40;
        v58.size.width = v42;
        v58.size.height = v44;
        v48 = CGRectGetMaxX(v58) + -24.0 + -5.0;
      }

      else
      {
        v48 = v38 + 5.0;
      }

      v61.origin.x = v38;
      v61.origin.y = v40;
      v61.size.width = v42;
      v61.size.height = v44;
      CGRectGetMidY(v61);
      BSFloatRoundForScale();
      v54 = v55;

LABEL_14:
      v27 = [(WFComposeDocumentMenu *)self iconView];
      [v27 setFrame:{v48, v54, 24.0, 24.0}];
    }
  }
}

- (NSString)placeholderName
{
  v3 = [(WFComposeDocumentMenu *)self workflow];
  v4 = [v3 actions];
  v5 = [v4 lastObject];

  v6 = [(WFComposeDocumentMenu *)self workflow];
  v7 = [v6 actionsGroupedWithAction:v5];

  v8 = [v7 firstObject];
  v9 = v8;
  v10 = 0;
  if (v5 && v7 && v8)
  {
    v10 = [v8 localizedName];
  }

  return v10;
}

- (void)updateDocumentMenuWithNavigationItem:(id)a3
{
  v4 = a3;
  [(WFComposeDocumentMenu *)self updateTitleInNavigationItem:v4];
  objc_initWeak(&location, self);
  v5 = [(WFComposeDocumentMenu *)self workflow];
  v6 = [v5 name];
  [(WFComposeDocumentMenu *)self setDocumentMenuControlWithTitle:v6 navigationItem:v4];

  [v4 setRenameDelegate:self];
  v7 = [(WFComposeDocumentMenu *)self findViewInNavigationBarWithName:@"_UINavigationBarTitleRenameTextField"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setClearButtonMode:3];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke;
  v13 = &unk_279EE8098;
  objc_copyWeak(&v14, &location);
  [v4 setTitleMenuProvider:&v10];
  [(WFComposeDocumentMenu *)self layoutIconView:v10];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

id __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277D750C8];
  v4 = WFLocalizedString(@"Duplicate");
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.rectangle.on.rectangle"];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke_2;
  v64[3] = &unk_279EE8070;
  objc_copyWeak(&v65, (a1 + 32));
  v45 = [v3 actionWithTitle:v4 image:v5 identifier:0 handler:v64];

  v6 = MEMORY[0x277D750C8];
  v7 = WFLocalizedString(@"Choose Icon");
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"app.dashed"];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke_3;
  v62[3] = &unk_279EE8070;
  objc_copyWeak(&v63, (a1 + 32));
  v43 = [v6 actionWithTitle:v7 image:v8 identifier:0 handler:v62];

  v9 = MEMORY[0x277D750C8];
  v10 = WFLocalizedString(@"Move");
  v11 = [MEMORY[0x277D755B8] systemImageNamed:@"folder"];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke_4;
  v60[3] = &unk_279EE8070;
  objc_copyWeak(&v61, (a1 + 32));
  v44 = [v9 actionWithTitle:v10 image:v11 identifier:0 handler:v60];

  v12 = MEMORY[0x277D750C8];
  v13 = WFLocalizedString(@"Add to Home Screen");
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.app"];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke_5;
  v58[3] = &unk_279EE8070;
  objc_copyWeak(&v59, (a1 + 32));
  v42 = [v12 actionWithTitle:v13 image:v14 identifier:0 handler:v58];

  v15 = MEMORY[0x277D750C8];
  v16 = WFLocalizedString(@"Export File");
  v17 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up.on.square"];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke_6;
  v56[3] = &unk_279EE8070;
  objc_copyWeak(&v57, (a1 + 32));
  v41 = [v15 actionWithTitle:v16 image:v17 identifier:0 handler:v56];

  v18 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v2;
  v19 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v19)
  {
    v20 = *v53;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v53 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v52 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v24 = [v23 children];
          v25 = [v24 countByEnumeratingWithState:&v48 objects:v67 count:16];
          if (v25)
          {
            v26 = *v49;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v49 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                [v18 addObject:*(*(&v48 + 1) + 8 * j)];
              }

              v25 = [v24 countByEnumeratingWithState:&v48 objects:v67 count:16];
            }

            while (v25);
          }
        }

        else
        {
          [v18 addObject:v22];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v19);
  }

  [v18 addObject:v43];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v29 = [WeakRetained workflow];
  v30 = [v29 reference];
  v31 = v30 == 0;

  if (v31)
  {
    [v45 setAttributes:1];
    [v44 setAttributes:1];
    [v41 setAttributes:1];
    [v42 setAttributes:1];
  }

  [v18 addObject:v45];
  [v18 addObject:v44];
  v32 = objc_opt_new();
  v33 = [MEMORY[0x277D75710] menuWithTitle:&stru_2883A0E78 image:0 identifier:0 options:1 children:v18];
  [v32 addObject:v33];
  v34 = [WeakRetained delegate];
  v35 = [v34 shouldShowShareButtonForDocumentMenu:WeakRetained];

  if (v35)
  {
    v36 = MEMORY[0x277D75710];
    v66 = v42;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    v38 = [v36 menuWithTitle:&stru_2883A0E78 image:0 identifier:0 options:1 children:v37];

    [v32 addObject:v38];
  }

  v39 = [MEMORY[0x277D75710] menuWithChildren:v32];

  objc_destroyWeak(&v57);
  objc_destroyWeak(&v59);

  objc_destroyWeak(&v61);
  objc_destroyWeak(&v63);

  objc_destroyWeak(&v65);

  return v39;
}

void __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 duplicateShortcutForDocumentMenu:WeakRetained];
}

void __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 presentIconPickerForDocumentMenu:WeakRetained];
}

void __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 moveShortcutForDocumentMenu:WeakRetained];
}

void __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 presentAddToHomeScreenForDocumentMenu:WeakRetained];
}

void __62__WFComposeDocumentMenu_updateDocumentMenuWithNavigationItem___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained findViewInNavigationBarWithName:@"_UINavigationBarTitleControl"];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [WeakRetained delegate];
  [v10 exportFileForDocumentMenu:WeakRetained sourceView:v1 sourceRect:{v3, v5, v7, v9}];
}

- (void)updateTitleInNavigationItem:(id)a3
{
  v4 = a3;
  v5 = _os_feature_enabled_impl();
  v6 = [(WFComposeDocumentMenu *)self workflow];
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    if ([v6 isUntitled])
    {
      v9 = [(WFComposeDocumentMenu *)self placeholderName];

      if (v9)
      {
        v8 = [(WFComposeDocumentMenu *)self placeholderName];
        v10 = 1;
        v7 = v8;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v7 = [(WFComposeDocumentMenu *)self workflow];
    v8 = [v7 name];
    v10 = 0;
LABEL_8:
    v11 = [@"‌        ‌" stringByAppendingString:v8];
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = [v6 name];
  v11 = [@"‌        ‌" stringByAppendingString:v8];
LABEL_9:

LABEL_10:
  [v4 setTitle:v11];
}

- (WFComposeDocumentMenu)initWithWorkflow:(id)a3
{
  v5 = a3;
  v37.receiver = self;
  v37.super_class = WFComposeDocumentMenu;
  v6 = [(WFComposeDocumentMenu *)&v37 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workflow, a3);
    v7->_shouldAnchorIconViewToRenameTextField = 0;
    v8 = [MEMORY[0x277D75220] buttonWithType:0];
    iconView = v7->_iconView;
    v7->_iconView = v8;

    [(UIButton *)v7->_iconView setAdjustsImageWhenHighlighted:0];
    v10 = [(UIButton *)v7->_iconView layer];
    [v10 setShadowRadius:8.0];

    v11 = [(UIButton *)v7->_iconView layer];
    LODWORD(v12) = 1036831949;
    [v11 setShadowOpacity:v12];

    v13 = [(UIButton *)v7->_iconView layer];
    [v13 setShadowOffset:{0.0, 1.0}];

    objc_initWeak(&location, v7);
    v14 = v7->_iconView;
    v15 = MEMORY[0x277D750C8];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke;
    v34[3] = &unk_279EE8070;
    objc_copyWeak(&v35, &location);
    v16 = [v15 actionWithHandler:v34];
    [(UIButton *)v14 addAction:v16 forControlEvents:64];

    v17 = v7->_iconView;
    v18 = MEMORY[0x277D750C8];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_2;
    v32[3] = &unk_279EE8070;
    objc_copyWeak(&v33, &location);
    v19 = [v18 actionWithHandler:v32];
    [(UIButton *)v17 addAction:v19 forControlEvents:1];

    v20 = v7->_iconView;
    v21 = MEMORY[0x277D750C8];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_4;
    v30[3] = &unk_279EE8070;
    objc_copyWeak(&v31, &location);
    v22 = [v21 actionWithHandler:v30];
    [(UIButton *)v20 addAction:v22 forControlEvents:16];

    v23 = v7->_iconView;
    v24 = MEMORY[0x277D750C8];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_6;
    v28[3] = &unk_279EE8070;
    objc_copyWeak(&v29, &location);
    v25 = [v24 actionWithHandler:v28];
    [(UIButton *)v23 addAction:v25 forControlEvents:352];

    v26 = v7;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained findViewInNavigationBarWithName:@"_UINavigationBarTitleRenameTextField"];
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  [v3 resignFirstResponder];
  v4 = [WeakRetained delegate];
  [v4 presentIconPickerForDocumentMenu:WeakRetained];
}

void __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_3;
  v4[3] = &unk_279EE8A78;
  v5 = WeakRetained;
  v3 = WeakRetained;
  [v2 animateWithDuration:v4 animations:0 completion:0.07];
}

void __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_5;
  v4[3] = &unk_279EE8A78;
  v5 = WeakRetained;
  v3 = WeakRetained;
  [v2 animateWithDuration:v4 animations:0 completion:0.3];
}

void __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_7;
  v4[3] = &unk_279EE8A78;
  v5 = WeakRetained;
  v3 = WeakRetained;
  [v2 animateWithDuration:v4 animations:0 completion:0.3];
}

void __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) iconView];
  [v1 setAlpha:1.0];
}

void __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) iconView];
  [v1 setAlpha:0.5];
}

void __42__WFComposeDocumentMenu_initWithWorkflow___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) iconView];
  [v1 setAlpha:0.5];
}

@end