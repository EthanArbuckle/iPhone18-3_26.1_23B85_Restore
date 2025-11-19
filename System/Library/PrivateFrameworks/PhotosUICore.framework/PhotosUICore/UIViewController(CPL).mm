@interface UIViewController(CPL)
- (id)_px_offersTableView;
- (void)px_insertFooterToolbarWithItems:()CPL;
- (void)px_removeFooterToolbar;
@end

@implementation UIViewController(CPL)

- (id)_px_offersTableView
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [a1 view];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 subviews];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v3 = [a1 _px_footerToolbar];
  [v3 removeFromSuperview];
  objc_setAssociatedObject(a1, &pxFooterToolbarKey, 0, 1);
  v2 = [a1 _px_offersTableView];
  [v2 contentInset];
  [v2 setContentInset:?];
}

- (void)px_insertFooterToolbarWithItems:()CPL
{
  v4 = a3;
  v5 = [a1 _px_footerToolbar];

  if (!v5)
  {
    v6 = objc_opt_new();
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [a1 view];
    [v7 addSubview:v6];
    v8 = MEMORY[0x1E696ACD8];
    v9 = _NSDictionaryOfVariableBindings(&cfstr_Tooolbar.isa, v6, 0);
    v10 = [v8 constraintsWithVisualFormat:@"H:|[tooolbar]|" options:0 metrics:0 views:v9];
    [v7 addConstraints:v10];

    v11 = MEMORY[0x1E696ACD8];
    v12 = _NSDictionaryOfVariableBindings(&cfstr_Tooolbar.isa, v6, 0);
    v13 = [v11 constraintsWithVisualFormat:@"V:[tooolbar]|" options:0 metrics:0 views:v12];
    [v7 addConstraints:v13];

    v14 = [a1 _px_offersTableView];
    [v14 contentInset];
    [v14 setContentInset:?];
    objc_setAssociatedObject(a1, &pxFooterToolbarKey, v6, 1);
  }

  v15 = [a1 _px_footerToolbar];
  [v15 setItems:v4];
}

@end