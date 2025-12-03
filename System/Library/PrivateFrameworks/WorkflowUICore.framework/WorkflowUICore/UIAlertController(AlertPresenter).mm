@interface UIAlertController(AlertPresenter)
- (id)actionForButton:()AlertPresenter inAlert:;
- (void)replaceButtonAtIndex:()AlertPresenter withButton:forAlert:;
- (void)setButtons:()AlertPresenter forAlert:;
@end

@implementation UIAlertController(AlertPresenter)

- (id)actionForButton:()AlertPresenter inAlert:
{
  v6 = a3;
  v7 = a4;
  style = [v6 style];
  if (style == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (style == 2);
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__UIAlertController_AlertPresenter__actionForButton_inAlert___block_invoke;
  aBlock[3] = &unk_279EF52B0;
  objc_copyWeak(&v36, &location);
  v10 = v7;
  v34 = v10;
  v11 = v6;
  v35 = v11;
  v12 = _Block_copy(aBlock);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = MEMORY[0x277D750F8];
    title = [v11 title];
    v19 = [v21 actionWithTitle:title style:v9 handler:v12];
    goto LABEL_18;
  }

  v13 = v11;
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __61__UIAlertController_AlertPresenter__actionForButton_inAlert___block_invoke_3;
  v31 = &unk_279EF52D8;
  title = v13;
  v32 = title;
  v15 = _Block_copy(&v28);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14Title = objc_alloc_init(WFRichContentItemCellView);
    [(WFRichContentItemCellView *)v14Title setSelectableAlertButton:title];
    if ([title isSelected])
    {
      v17 = 25.0;
    }

    else
    {
      v17 = 0.0;
    }

    subtitle2 = [WFUIAlertControllerAlertPresenter contentViewControllerForContentView:v14Title padding:0.0, 0.0, 0.0, v17];
    v19 = [MEMORY[0x277D750F8] _actionWithContentViewController:subtitle2 style:v9 handler:v12];
    image2 = _Block_copy(v15);
    [v19 setValue:image2 forKey:@"shouldDismissHandler"];
  }

  else
  {
    subtitle = [title subtitle];
    if (subtitle)
    {
    }

    else
    {
      image = [title image];

      if (!image)
      {
        v26 = MEMORY[0x277D750F8];
        v14Title = [title title];
        v19 = [v26 _actionWithTitle:v14Title descriptiveText:0 image:0 style:v9 handler:v12 shouldDismissHandler:v15];
        goto LABEL_17;
      }
    }

    v14Title = [title title];
    subtitle2 = [title subtitle];
    image2 = [title image];
    uIImage = [image2 UIImage];
    v19 = [v27 _actionWithTitle:v14Title descriptiveText:subtitle2 image:uIImage style:v9 handler:v12 shouldDismissHandler:v15];
  }

LABEL_17:
  [v19 _setChecked:{objc_msgSend(title, "isSelected")}];

LABEL_18:
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  return v19;
}

- (void)replaceButtonAtIndex:()AlertPresenter withButton:forAlert:
{
  v9 = a4;
  v6 = [self actionForButton:? inAlert:?];
  actions = [self actions];
  v8 = [actions mutableCopy];

  if ([v8 count] > a3)
  {
    [v8 replaceObjectAtIndex:a3 withObject:v6];
    [self _setActions:v8];
  }

  if ([v9 isPreferred])
  {
    [self setPreferredAction:v6];
  }
}

- (void)setButtons:()AlertPresenter forAlert:
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CFC2C8] processContentAlertButtonSubtitles:v6];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        if ([v13 isPreferred])
        {
          v14 = v13;

          v9 = v14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__UIAlertController_AlertPresenter__setButtons_forAlert___block_invoke;
  v17[3] = &unk_279EF5268;
  v17[4] = self;
  v15 = v7;
  v18 = v15;
  v19 = &v20;
  v16 = [v8 if_map:v17];
  [self _setActions:v16];
  [self setPreferredAction:v21[5]];

  _Block_object_dispose(&v20, 8);
}

@end