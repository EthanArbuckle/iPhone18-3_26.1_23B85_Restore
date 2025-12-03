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
- (int64x2_t)initWithSplitViewControllerColumn:(void *)column;
- (uint64_t)hasContentViewController;
- (void)setTogglePrimaryEdgeBarButtonItem:(uint64_t)item;
- (void)setTogglePrimaryEdgeButtonView:(uint64_t)view;
- (void)setToggleSecondaryEdgeBarButtonItem:(uint64_t)item;
- (void)setToggleSecondaryOnlyBarButtonItem:(uint64_t)item;
- (void)viewController;
@end

@implementation _UISplitViewControllerAdaptiveColumn

- (void)viewController
{
  if (self)
  {
    v2 = self[11];
    if (!v2)
    {
      v2 = self[3];
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

- (id)navigationController
{
  if (self)
  {
    viewController = [(_UISplitViewControllerAdaptiveColumn *)self viewController];
    if ([viewController _isTabBarController] & 1) != 0 || (objc_msgSend(viewController, "_isSplitViewController"))
    {
      v2 = 0;
    }

    else
    {
      v4 = 0;
      [viewController _wrapsNavigationController:&v4];
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
  if (self)
  {
    viewController = [(_UISplitViewControllerAdaptiveColumn *)self viewController];
    if ([viewController _isTabBarController])
    {
      selectedViewController = [viewController selectedViewController];

      viewController = selectedViewController;
    }

    v8 = 0;
    [viewController _wrapsNavigationController:&v8];
    v3 = v8;
    v4 = v3;
    if (v3)
    {
      topViewController = [v3 topViewController];
    }

    else
    {
      topViewController = viewController;
    }

    v6 = topViewController;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIBarButtonItemGroup)primaryEdgeBarButtonItemGroup
{
  if (self)
  {
    v2 = *(self + 8);
    if (!v2)
    {
      v3 = [UIBarButtonItemGroup alloc];
      v2 = [(UIBarButtonItemGroup *)v3 initWithBarButtonItems:MEMORY[0x1E695E0F0] representativeItem:0];
      v4 = *(self + 8);
      *(self + 8) = v2;
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
  if (self)
  {
    v2 = *(self + 16);
    if (!v2)
    {
      v3 = [UIBarButtonItemGroup alloc];
      v2 = [(UIBarButtonItemGroup *)v3 initWithBarButtonItems:MEMORY[0x1E695E0F0] representativeItem:0];
      v4 = *(self + 16);
      *(self + 16) = v2;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int64x2_t)initWithSplitViewControllerColumn:(void *)column
{
  if (!column)
  {
    return 0;
  }

  v11.receiver = column;
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
  if (!self)
  {
    return 0.0;
  }

  return result;
}

- (uint64_t)hasContentViewController
{
  selfCopy = self;
  if (self)
  {
    viewController = [(_UISplitViewControllerAdaptiveColumn *)self viewController];
    if (([viewController _isTabBarController] & 1) != 0 || (objc_msgSend(viewController, "_isSplitViewController") & 1) != 0 || *(selfCopy + 88))
    {
      selfCopy = 1;
    }

    else
    {
      navigationController = [(_UISplitViewControllerAdaptiveColumn *)selfCopy navigationController];
      v5 = navigationController;
      topViewController = viewController;
      if (navigationController)
      {
        topViewController = [navigationController topViewController];
      }

      selfCopy = topViewController != 0;
    }
  }

  return selfCopy;
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
  if (self)
  {
    return *(self + 32);
  }

  else
  {
    return 0.0;
  }
}

- (double)preferredWidthFraction
{
  if (self)
  {
    return *(self + 40);
  }

  else
  {
    return 0.0;
  }
}

- (double)minimumWidth
{
  if (self)
  {
    return *(self + 48);
  }

  else
  {
    return 0.0;
  }
}

- (double)maximumWidth
{
  if (self)
  {
    return *(self + 56);
  }

  else
  {
    return 0.0;
  }
}

- (double)specifiedWidth
{
  if (self)
  {
    return *(self + 64);
  }

  else
  {
    return 0.0;
  }
}

- (void)setTogglePrimaryEdgeBarButtonItem:(uint64_t)item
{
  if (item)
  {
    objc_storeStrong((item + 112), a2);
  }
}

- (void)setToggleSecondaryEdgeBarButtonItem:(uint64_t)item
{
  if (item)
  {
    objc_storeStrong((item + 120), a2);
  }
}

- (void)setToggleSecondaryOnlyBarButtonItem:(uint64_t)item
{
  if (item)
  {
    objc_storeStrong((item + 128), a2);
  }
}

- (void)setTogglePrimaryEdgeButtonView:(uint64_t)view
{
  if (view)
  {
    objc_storeStrong((view + 136), a2);
  }
}

@end