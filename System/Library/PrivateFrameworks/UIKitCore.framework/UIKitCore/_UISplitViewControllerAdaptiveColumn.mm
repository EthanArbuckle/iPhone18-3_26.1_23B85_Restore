@interface _UISplitViewControllerAdaptiveColumn
- (UIBarButtonItemGroup)primaryEdgeBarButtonItemGroup;
- (UIBarButtonItemGroup)secondaryEdgeBarButtonItemGroup;
- (double)absoluteInsets;
- (double)maximumWidth;
- (double)minimumWidth;
- (double)preferredWidth;
- (double)preferredWidthFraction;
- (double)specifiedWidth;
- (id)description;
- (id)navigationController;
- (id)topViewController;
- (int64x2_t)initWithSplitViewControllerColumn:(void *)a1;
- (uint64_t)hasContentViewController;
- (void)setTogglePrimaryEdgeBarButtonItem:(uint64_t)a1;
- (void)setTogglePrimaryEdgeButtonView:(uint64_t)a1;
- (void)setToggleSecondaryEdgeBarButtonItem:(uint64_t)a1;
- (void)setToggleSecondaryOnlyBarButtonItem:(uint64_t)a1;
- (void)viewController;
@end

@implementation _UISplitViewControllerAdaptiveColumn

- (void)viewController
{
  if (a1)
  {
    v2 = a1[11];
    if (!v2)
    {
      v2 = a1[3];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

- (id)navigationController
{
  if (a1)
  {
    v1 = [(_UISplitViewControllerAdaptiveColumn *)a1 viewController];
    if ([v1 _isTabBarController] & 1) != 0 || (objc_msgSend(v1, "_isSplitViewController"))
    {
      v2 = 0;
    }

    else
    {
      v4 = 0;
      [v1 _wrapsNavigationController:&v4];
      v2 = v4;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)topViewController
{
  if (a1)
  {
    v1 = [(_UISplitViewControllerAdaptiveColumn *)a1 viewController];
    if ([v1 _isTabBarController])
    {
      v2 = [v1 selectedViewController];

      v1 = v2;
    }

    v8 = 0;
    [v1 _wrapsNavigationController:&v8];
    v3 = v8;
    v4 = v3;
    if (v3)
    {
      v5 = [v3 topViewController];
    }

    else
    {
      v5 = v1;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIBarButtonItemGroup)primaryEdgeBarButtonItemGroup
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (!v2)
    {
      v3 = [UIBarButtonItemGroup alloc];
      v2 = [(UIBarButtonItemGroup *)v3 initWithBarButtonItems:MEMORY[0x1E695E0F0] representativeItem:0];
      v4 = *(a1 + 8);
      *(a1 + 8) = v2;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (UIBarButtonItemGroup)secondaryEdgeBarButtonItemGroup
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (!v2)
    {
      v3 = [UIBarButtonItemGroup alloc];
      v2 = [(UIBarButtonItemGroup *)v3 initWithBarButtonItems:MEMORY[0x1E695E0F0] representativeItem:0];
      v4 = *(a1 + 16);
      *(a1 + 16) = v2;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int64x2_t)initWithSplitViewControllerColumn:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v11.receiver = a1;
  v11.super_class = _UISplitViewControllerAdaptiveColumn;
  v3 = objc_msgSendSuper2(&v11, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[9].i64[0] = a2;
    v5 = [[_UISplitViewControllerAdaptiveColumnView alloc] initWithSplitViewControllerColumn:a2];
    v6 = v4[10].i64[0];
    v4[10].i64[0] = v5;

    v7 = [[_UISplitViewControllerAdaptiveColumnSeparatorView alloc] initWithSplitViewControllerColumn:a2];
    v8 = v4[9].i64[1];
    v4[9].i64[1] = v7;

    v9 = vdupq_n_s64(0xC7EFFFFFE0000000);
    v4[2] = v9;
    v4[3] = v9;
    v4[4] = v9;
  }

  return v4;
}

- (double)absoluteInsets
{
  result = NAN;
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

- (uint64_t)hasContentViewController
{
  v1 = a1;
  if (a1)
  {
    v2 = [(_UISplitViewControllerAdaptiveColumn *)a1 viewController];
    if (([v2 _isTabBarController] & 1) != 0 || (objc_msgSend(v2, "_isSplitViewController") & 1) != 0 || *(v1 + 88))
    {
      v1 = 1;
    }

    else
    {
      v4 = [(_UISplitViewControllerAdaptiveColumn *)v1 navigationController];
      v5 = v4;
      v6 = v2;
      if (v4)
      {
        v6 = [v4 topViewController];
      }

      v1 = v6 != 0;
    }
  }

  return v1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p column = %ld viewController = %@; modelNavigationController = %@>", v5, self, self->_splitViewControllerColumn, self->_modelViewController, self->_modelNavigationController];;

  return v6;
}

- (double)preferredWidth
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0.0;
  }
}

- (double)preferredWidthFraction
{
  if (a1)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0.0;
  }
}

- (double)minimumWidth
{
  if (a1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0.0;
  }
}

- (double)maximumWidth
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0.0;
  }
}

- (double)specifiedWidth
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0.0;
  }
}

- (void)setTogglePrimaryEdgeBarButtonItem:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

- (void)setToggleSecondaryEdgeBarButtonItem:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

- (void)setToggleSecondaryOnlyBarButtonItem:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

- (void)setTogglePrimaryEdgeButtonView:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 136), a2);
  }
}

@end