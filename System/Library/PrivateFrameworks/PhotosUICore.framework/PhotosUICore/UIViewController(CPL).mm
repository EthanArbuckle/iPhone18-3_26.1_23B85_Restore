@interface UIViewController(CPL)
- (id)_px_offersTableView;
- (void)px_insertFooterToolbarWithItems:()CPL;
- (void)px_removeFooterToolbar;
@end

@implementation UIViewController(CPL)

- (id)_px_offersTableView
{
  v13 = *MEMORY[0x1E69E9840];
  view = [self view];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  subviews = [view subviews];
  v3 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(subviews);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)px_removeFooterToolbar
{
  _px_footerToolbar = [self _px_footerToolbar];
  [_px_footerToolbar removeFromSuperview];
  objc_setAssociatedObject(self, &pxFooterToolbarKey, 0, 1);
  _px_offersTableView = [self _px_offersTableView];
  [_px_offersTableView contentInset];
  [_px_offersTableView setContentInset:?];
}

- (void)px_insertFooterToolbarWithItems:()CPL
{
  v4 = a3;
  _px_footerToolbar = [self _px_footerToolbar];

  if (!_px_footerToolbar)
  {
    v6 = objc_opt_new();
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [self view];
    [view addSubview:v6];
    v8 = MEMORY[0x1E696ACD8];
    v9 = _NSDictionaryOfVariableBindings(&cfstr_Tooolbar.isa, v6, 0);
    v10 = [v8 constraintsWithVisualFormat:@"H:|[tooolbar]|" options:0 metrics:0 views:v9];
    [view addConstraints:v10];

    v11 = MEMORY[0x1E696ACD8];
    v12 = _NSDictionaryOfVariableBindings(&cfstr_Tooolbar.isa, v6, 0);
    v13 = [v11 constraintsWithVisualFormat:@"V:[tooolbar]|" options:0 metrics:0 views:v12];
    [view addConstraints:v13];

    _px_offersTableView = [self _px_offersTableView];
    [_px_offersTableView contentInset];
    [_px_offersTableView setContentInset:?];
    objc_setAssociatedObject(self, &pxFooterToolbarKey, v6, 1);
  }

  _px_footerToolbar2 = [self _px_footerToolbar];
  [_px_footerToolbar2 setItems:v4];
}

@end