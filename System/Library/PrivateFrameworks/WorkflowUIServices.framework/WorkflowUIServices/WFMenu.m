@interface WFMenu
- (UIMenu)platformMenu;
- (WFMenu)initWithTitle:(id)a3 elements:(id)a4;
- (id)uiMenuElementForWFMenuElement:(id)a3 shouldShowState:(BOOL)a4;
@end

@implementation WFMenu

- (UIMenu)platformMenu
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(WFMenu *)self elements];
  v5 = [v4 if_firstObjectPassingTest:&__block_literal_global_1309];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(WFMenu *)self elements];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(WFMenu *)self uiMenuElementForWFMenuElement:*(*(&v18 + 1) + 8 * i) shouldShowState:v5 != 0];
        [v3 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x1E69DCC60];
  v13 = [(WFMenu *)self title];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1F480C910;
  }

  v16 = [v12 menuWithTitle:v15 children:v3];

  return v16;
}

- (id)uiMenuElementForWFMenuElement:(id)a3 shouldShowState:(BOOL)a4
{
  v4 = a4;
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 menuElementRepresentationShowingStatus:v4];

      goto LABEL_24;
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__WFMenu_UIKit__uiMenuElementForWFMenuElement_shouldShowState___block_invoke;
  aBlock[3] = &unk_1E8307BC0;
  v44 = v4;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = v6;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 shouldCollapse];
      v11 = [v9 menuElements];
      v12 = v8[2](v8, v11, v10);

      if (v10)
      {
        v13 = MEMORY[0x1E69DCC60];
        v14 = [v9 title];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = &stru_1F480C910;
        }

        v17 = [v13 menuWithTitle:v16 children:v12];

        v18 = [v9 menuElements];
        v19 = WFMenuCollapsedSubtitleForMenuElements(v18);
        [(__CFString *)v17 setSubtitle:v19];

        v20 = MEMORY[0x1E69DCC60];
        v21 = [(WFMenu *)self inlineMenuOptions];
        v46[0] = v17;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
        v7 = [v20 menuWithTitle:&stru_1F480C910 image:0 identifier:0 options:v21 children:v22];
      }

      else
      {
        if (([v9 onlyDisplayTitleWhenCollapsed] & 1) != 0 || (objc_msgSend(v9, "title"), v34 = objc_claimAutoreleasedReturnValue(), v34, !v34))
        {
          v17 = &stru_1F480C910;
        }

        else
        {
          v17 = [v9 title];
        }

        v7 = [MEMORY[0x1E69DCC60] menuWithTitle:v17 image:0 identifier:0 options:-[WFMenu inlineMenuOptions](self children:{"inlineMenuOptions"), v12}];
      }

      goto LABEL_22;
    }

    v23 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [MEMORY[0x1E695DF00] date];
      v25 = MEMORY[0x1E69DC928];
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __63__WFMenu_UIKit__uiMenuElementForWFMenuElement_shouldShowState___block_invoke_2;
      v39 = &unk_1E8307C10;
      v40 = v23;
      v41 = v24;
      v42 = v8;
      v26 = v23;
      v12 = v24;
      v27 = [v25 elementWithProvider:&v36];
      v28 = MEMORY[0x1E69DCC60];
      v29 = [(__CFString *)v26 title:v36];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = &stru_1F480C910;
      }

      v32 = [(WFMenu *)self inlineMenuOptions];
      v45 = v27;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      v7 = [v28 menuWithTitle:v31 image:0 identifier:0 options:v32 children:v33];

      v17 = v40;
LABEL_22:

      goto LABEL_23;
    }
  }

  v7 = 0;
LABEL_23:

LABEL_24:

  return v7;
}

id __63__WFMenu_UIKit__uiMenuElementForWFMenuElement_shouldShowState___block_invoke(uint64_t a1, void *a2, char a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_opt_new();
  if ((a3 & 1) != 0 || (*(a1 + 40) & 1) == 0)
  {
    v8 = [v5 if_firstObjectPassingTest:&__block_literal_global_1309];
    v7 = v8 != 0;
  }

  else
  {
    v7 = 1;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(a1 + 32) uiMenuElementForWFMenuElement:*(*(&v16 + 1) + 8 * i) shouldShowState:{v7, v16}];
        [v6 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v6;
}

void __63__WFMenu_UIKit__uiMenuElementForWFMenuElement_shouldShowState___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] itemProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__WFMenu_UIKit__uiMenuElementForWFMenuElement_shouldShowState___block_invoke_3;
  v7[3] = &unk_1E8307BE8;
  v8 = a1[4];
  v10 = a1[6];
  v9 = a1[5];
  v11 = v3;
  v5 = v4[2];
  v6 = v3;
  v5(v4, v7);
}

void __63__WFMenu_UIKit__uiMenuElementForWFMenuElement_shouldShowState___block_invoke_3(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = [*(a1 + 32) shouldCollapse];
  v5 = (*(*(a1 + 48) + 16))();
  if (v4)
  {
    v6 = MEMORY[0x1E69DCC60];
    v7 = [*(a1 + 32) title];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1F480C910;
    }

    v10 = [v6 menuWithTitle:v9 children:v5];

    v11 = WFMenuCollapsedSubtitleForMenuElements(v3);
    [v10 setSubtitle:v11];

    v22[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

    v5 = v12;
  }

  v13 = [MEMORY[0x1E695DF00] date];
  [v13 timeIntervalSinceDate:*(a1 + 40)];
  v15 = 0.25 - v14;

  v16 = fmax(v15, 0.0);
  if (v16 == 0.0)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v17 = dispatch_time(0, (v16 * 1000000000.0));
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__WFMenu_UIKit__uiMenuElementForWFMenuElement_shouldShowState___block_invoke_4;
    v19[3] = &unk_1E8307D98;
    v21 = *(a1 + 56);
    v20 = v5;
    v18 = MEMORY[0x1E69E96A0];
    dispatch_after(v17, MEMORY[0x1E69E96A0], v19);
  }
}

- (WFMenu)initWithTitle:(id)a3 elements:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFMenu;
  v8 = [(WFMenu *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    elements = v8->_elements;
    v8->_elements = v11;

    v13 = v8;
  }

  return v8;
}

@end