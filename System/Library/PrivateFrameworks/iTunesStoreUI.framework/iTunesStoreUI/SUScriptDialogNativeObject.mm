@interface SUScriptDialogNativeObject
- (id)_makeAlertControllerForDialog:(id)a3 style:(int64_t)a4;
- (void)_showSheetInView:(id)a3 fromViewController:(id)a4;
- (void)_tearDownForDismissWithButtonIndex:(int64_t)a3;
- (void)dismiss;
- (void)show;
- (void)showFromRect:(CGRect)a3 inView:(id)a4;
- (void)showSheet;
- (void)showSheetInViewController:(id)a3;
@end

@implementation SUScriptDialogNativeObject

- (void)dismiss
{
  v2 = [(SUScriptNativeObject *)self object];

  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)show
{
  v3 = [(SUScriptNativeObject *)self scriptObject];
  if (![(SUScriptNativeObject *)self object]&& v3)
  {
    v4 = [(SUScriptDialogNativeObject *)self _makeAlertControllerForDialog:v3 style:1];
    [(SUScriptNativeObject *)self setObject:v4];
    for (i = -[SUScriptObject parentViewController](v3, "parentViewController"); ; i = [v6 presentedViewController])
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

- (void)showFromRect:(CGRect)a3 inView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(SUScriptNativeObject *)self scriptObject];
  if (![(SUScriptNativeObject *)self object])
  {
    if (v10)
    {
      v11 = [(SUScriptDialogNativeObject *)self _makeAlertControllerForDialog:v10 style:0];
      [(SUScriptNativeObject *)self setObject:v11];
      [-[SUScriptObject parentViewController](v10 "parentViewController")];
      v12 = [v11 popoverPresentationController];
      if (v12)
      {
        v13 = v12;
        [v12 setSourceRect:{x, y, width, height}];
        [v13 setSourceView:a4];

        [v13 setPermittedArrowDirections:15];
      }
    }
  }
}

- (void)showSheet
{
  v3 = [(SUScriptNativeObject *)self scriptObject];
  v4 = [(SUScriptNativeObject *)self object];
  v5 = [(SUScriptObject *)v3 parentViewController];
  v6 = [objc_msgSend(v5 "view")];
  if (!v4)
  {
    if (v3)
    {
      v7 = v6;
      if (v6)
      {
        do
        {
          v8 = v5;
          v5 = [v5 parentViewController];
        }

        while (v5);

        [(SUScriptDialogNativeObject *)self _showSheetInView:v7 fromViewController:v8];
      }
    }
  }
}

- (void)showSheetInViewController:(id)a3
{
  v5 = [(SUScriptNativeObject *)self scriptObject];
  if (![(SUScriptNativeObject *)self object]&& v5)
  {
    v6 = [a3 view];

    [(SUScriptDialogNativeObject *)self _showSheetInView:v6 fromViewController:a3];
  }
}

- (id)_makeAlertControllerForDialog:(id)a3 style:(int64_t)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = [a3 title];
  if (a4)
  {
    v8 = [a3 body];
  }

  else
  {
    v8 = 0;
  }

  v9 = [SUScriptDialogAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:a4];
  v10 = [a3 buttons];
  v11 = [a3 cancelButtonIndex];
  v30 = a3;
  v12 = [a3 destructiveButtonIndex];
  v31 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        [v18 title];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = 0;
          if (v11)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v19 = [v18 title];
          if (v11)
          {
LABEL_11:
            v20 = [v11 integerValue];
            v21 = v15 == v20;
            if (v15 == v20 || !v12)
            {
              goto LABEL_18;
            }

LABEL_16:
            v21 = 2 * (v15 == [v12 integerValue]);
            goto LABEL_18;
          }
        }

        if (v12)
        {
          goto LABEL_16;
        }

        v21 = 0;
LABEL_18:
        if (v19)
        {
          v22 = v19;
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

      v14 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v14);
  }

  v23 = [v30 textFields];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v42 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v33 + 1) + 8 * j);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __66__SUScriptDialogNativeObject__makeAlertControllerForDialog_style___block_invoke_2;
        v32[3] = &unk_1E8165788;
        v32[4] = v28;
        [(SUScriptDialogAlertController *)v9 addTextFieldWithConfigurationHandler:v32];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v42 count:16];
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

- (void)_showSheetInView:(id)a3 fromViewController:(id)a4
{
  v7 = [(SUScriptNativeObject *)self scriptObject];
  if (![(SUScriptNativeObject *)self object])
  {
    if (v7)
    {
      v8 = [(SUScriptDialogNativeObject *)self _makeAlertControllerForDialog:v7 style:0];
      [(SUScriptNativeObject *)self setObject:v8];
      [a4 presentViewController:v8 animated:1 completion:0];
      v9 = [v8 popoverPresentationController];
      if (v9)
      {
        v10 = v9;
        [a3 bounds];
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
        [v10 setSourceView:a3];

        [v10 setPermittedArrowDirections:0];
      }
    }
  }
}

- (void)_tearDownForDismissWithButtonIndex:(int64_t)a3
{
  v5 = [(SUScriptNativeObject *)self scriptObject];
  v6 = [(SUScriptObject *)v5 buttons];
  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = v6;
    if ([v6 count] > a3)
    {
      v8 = [v7 objectAtIndex:a3];
      v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v8, v5, 0}];
      [v8 performActionWithArguments:v9];
    }
  }

  [(SUScriptNativeObject *)self destroyNativeObject];
}

@end