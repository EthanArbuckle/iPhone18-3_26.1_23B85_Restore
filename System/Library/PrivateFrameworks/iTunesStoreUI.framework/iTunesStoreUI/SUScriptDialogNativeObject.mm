@interface SUScriptDialogNativeObject
- (id)_makeAlertControllerForDialog:(id)dialog style:(int64_t)style;
- (void)_showSheetInView:(id)view fromViewController:(id)controller;
- (void)_tearDownForDismissWithButtonIndex:(int64_t)index;
- (void)dismiss;
- (void)show;
- (void)showFromRect:(CGRect)rect inView:(id)view;
- (void)showSheet;
- (void)showSheetInViewController:(id)controller;
@end

@implementation SUScriptDialogNativeObject

- (void)dismiss
{
  object = [(SUScriptNativeObject *)self object];

  [object dismissViewControllerAnimated:1 completion:0];
}

- (void)show
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];
  if (![(SUScriptNativeObject *)self object]&& scriptObject)
  {
    v4 = [(SUScriptDialogNativeObject *)self _makeAlertControllerForDialog:scriptObject style:1];
    [(SUScriptNativeObject *)self setObject:v4];
    for (i = -[SUScriptObject parentViewController](scriptObject, "parentViewController"); ; i = [v6 presentedViewController])
    {
      v6 = i;
      if (![i presentedViewController])
      {
        break;
      }
    }

    [v6 presentViewController:v4 animated:1 completion:0];
  }
}

- (void)showFromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scriptObject = [(SUScriptNativeObject *)self scriptObject];
  if (![(SUScriptNativeObject *)self object])
  {
    if (scriptObject)
    {
      v11 = [(SUScriptDialogNativeObject *)self _makeAlertControllerForDialog:scriptObject style:0];
      [(SUScriptNativeObject *)self setObject:v11];
      [-[SUScriptObject parentViewController](scriptObject "parentViewController")];
      popoverPresentationController = [v11 popoverPresentationController];
      if (popoverPresentationController)
      {
        v13 = popoverPresentationController;
        [popoverPresentationController setSourceRect:{x, y, width, height}];
        [v13 setSourceView:view];

        [v13 setPermittedArrowDirections:15];
      }
    }
  }
}

- (void)showSheet
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];
  object = [(SUScriptNativeObject *)self object];
  parentViewController = [(SUScriptObject *)scriptObject parentViewController];
  v6 = [objc_msgSend(parentViewController "view")];
  if (!object)
  {
    if (scriptObject)
    {
      v7 = v6;
      if (v6)
      {
        do
        {
          v8 = parentViewController;
          parentViewController = [parentViewController parentViewController];
        }

        while (parentViewController);

        [(SUScriptDialogNativeObject *)self _showSheetInView:v7 fromViewController:v8];
      }
    }
  }
}

- (void)showSheetInViewController:(id)controller
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];
  if (![(SUScriptNativeObject *)self object]&& scriptObject)
  {
    view = [controller view];

    [(SUScriptDialogNativeObject *)self _showSheetInView:view fromViewController:controller];
  }
}

- (id)_makeAlertControllerForDialog:(id)dialog style:(int64_t)style
{
  v44 = *MEMORY[0x1E69E9840];
  title = [dialog title];
  if (style)
  {
    body = [dialog body];
  }

  else
  {
    body = 0;
  }

  v9 = [SUScriptDialogAlertController alertControllerWithTitle:title message:body preferredStyle:style];
  buttons = [dialog buttons];
  cancelButtonIndex = [dialog cancelButtonIndex];
  dialogCopy = dialog;
  destructiveButtonIndex = [dialog destructiveButtonIndex];
  v31 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [buttons countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v39;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(buttons);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        [v18 title];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          title2 = 0;
          if (cancelButtonIndex)
          {
            goto LABEL_11;
          }
        }

        else
        {
          title2 = [v18 title];
          if (cancelButtonIndex)
          {
LABEL_11:
            integerValue = [cancelButtonIndex integerValue];
            v21 = v15 == integerValue;
            if (v15 == integerValue || !destructiveButtonIndex)
            {
              goto LABEL_18;
            }

LABEL_16:
            v21 = 2 * (v15 == [destructiveButtonIndex integerValue]);
            goto LABEL_18;
          }
        }

        if (destructiveButtonIndex)
        {
          goto LABEL_16;
        }

        v21 = 0;
LABEL_18:
        if (title2)
        {
          v22 = title2;
        }

        else
        {
          v22 = &stru_1F41B3660;
        }

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __66__SUScriptDialogNativeObject__makeAlertControllerForDialog_style___block_invoke;
        v37[3] = &unk_1E8165760;
        v37[4] = v31;
        v37[5] = v15;
        -[SUScriptDialogAlertController addAction:](v9, "addAction:", [MEMORY[0x1E69DC648] actionWithTitle:v22 style:v21 handler:v37]);
        [v18 setShouldPerformDefaultAction:0];
        ++v15;
      }

      v14 = [buttons countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v14);
  }

  textFields = [dialogCopy textFields];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = [textFields countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(textFields);
        }

        v28 = *(*(&v33 + 1) + 8 * j);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __66__SUScriptDialogNativeObject__makeAlertControllerForDialog_style___block_invoke_2;
        v32[3] = &unk_1E8165788;
        v32[4] = v28;
        [(SUScriptDialogAlertController *)v9 addTextFieldWithConfigurationHandler:v32];
      }

      v25 = [textFields countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v25);
  }

  return v9;
}

uint64_t __66__SUScriptDialogNativeObject__makeAlertControllerForDialog_style___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(a1 + 40);

  return [v2 _tearDownForDismissWithButtonIndex:v3];
}

uint64_t __66__SUScriptDialogNativeObject__makeAlertControllerForDialog_style___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 configureFromScriptTextField:*(a1 + 32)];
  v4 = *(a1 + 32);

  return [v4 setNativeObjectWithTextField:a2];
}

- (void)_showSheetInView:(id)view fromViewController:(id)controller
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];
  if (![(SUScriptNativeObject *)self object])
  {
    if (scriptObject)
    {
      v8 = [(SUScriptDialogNativeObject *)self _makeAlertControllerForDialog:scriptObject style:0];
      [(SUScriptNativeObject *)self setObject:v8];
      [controller presentViewController:v8 animated:1 completion:0];
      popoverPresentationController = [v8 popoverPresentationController];
      if (popoverPresentationController)
      {
        v10 = popoverPresentationController;
        [view bounds];
        x = v19.origin.x;
        y = v19.origin.y;
        width = v19.size.width;
        height = v19.size.height;
        MinX = CGRectGetMinX(v19);
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        v16 = MinX + floor(CGRectGetWidth(v20) * 0.5);
        v21.origin.x = x;
        v21.origin.y = y;
        v21.size.width = width;
        v21.size.height = height;
        MinY = CGRectGetMinY(v21);
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        [v10 setSourceRect:{v16, MinY + floor(CGRectGetHeight(v22) * 0.5), 1.0, 1.0}];
        [v10 setSourceView:view];

        [v10 setPermittedArrowDirections:0];
      }
    }
  }
}

- (void)_tearDownForDismissWithButtonIndex:(int64_t)index
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];
  buttons = [(SUScriptObject *)scriptObject buttons];
  if ((index & 0x8000000000000000) == 0)
  {
    v7 = buttons;
    if ([buttons count] > index)
    {
      v8 = [v7 objectAtIndex:index];
      v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v8, scriptObject, 0}];
      [v8 performActionWithArguments:v9];
    }
  }

  [(SUScriptNativeObject *)self destroyNativeObject];
}

@end