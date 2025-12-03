@interface _SBHStackConfigurationIconView
+ (id)groupNameBaseForComponentBackgroundViewOfType:(int64_t)type;
- (BOOL)_cannotRemoveLastWidgetInWidgetSheet;
- (BOOL)shouldShowCloseBox;
- (id)_iconListView;
- (id)_stackConfigurationViewController;
- (void)_updateCloseBoxForAllIconsInListView:(id)view animated:(BOOL)animated;
- (void)iconListView:(id)view didAddIconView:(id)iconView;
- (void)iconListView:(id)view didRemoveIconView:(id)iconView;
@end

@implementation _SBHStackConfigurationIconView

+ (id)groupNameBaseForComponentBackgroundViewOfType:(int64_t)type
{
  v6 = 0;
  if (type <= 3)
  {
    if ((type - 2) >= 2 && type)
    {
      if (type != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }

LABEL_19:
    v10 = v3;
    v11 = v4;
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____SBHStackConfigurationIconView;
    v6 = objc_msgSendSuper2(&v9, sel_groupNameBaseForComponentBackgroundViewOfType_);

    return v6;
  }

  if (type > 5)
  {
    if (type == 6)
    {
LABEL_22:
      v6 = @"SBHStackConfigurationCloseBox";

      return v6;
    }

    if (type != 7)
    {
LABEL_5:

      return v6;
    }

    goto LABEL_19;
  }

  v8 = @"SBHStackConfigurationWidget";
  if (type != 5)
  {
    v8 = 0;
  }

  if (type == 4)
  {
    v6 = @"SBHStackConfigurationWidget";
  }

  else
  {
    v6 = v8;
  }

  return v6;
}

- (void)iconListView:(id)view didAddIconView:(id)iconView
{
  viewCopy = view;
  if (-[_SBHStackConfigurationIconView _cannotRemoveLastWidgetInWidgetSheet](self, "_cannotRemoveLastWidgetInWidgetSheet") && [viewCopy numberOfDisplayedIconViews] == 2)
  {
    [(_SBHStackConfigurationIconView *)self _updateCloseBoxForAllIconsInListView:viewCopy animated:1];
  }
}

- (void)iconListView:(id)view didRemoveIconView:(id)iconView
{
  viewCopy = view;
  if (-[_SBHStackConfigurationIconView _cannotRemoveLastWidgetInWidgetSheet](self, "_cannotRemoveLastWidgetInWidgetSheet") && [viewCopy numberOfDisplayedIconViews] == 1)
  {
    [(_SBHStackConfigurationIconView *)self _updateCloseBoxForAllIconsInListView:viewCopy animated:1];
  }
}

- (BOOL)shouldShowCloseBox
{
  v14.receiver = self;
  v14.super_class = _SBHStackConfigurationIconView;
  shouldShowCloseBox = [(SBIconView *)&v14 shouldShowCloseBox];
  _iconListView = [(_SBHStackConfigurationIconView *)self _iconListView];
  model = [_iconListView model];
  if ([model numberOfIcons] == 1)
  {
    _iconListView2 = [(_SBHStackConfigurationIconView *)self _iconListView];
    model2 = [_iconListView2 model];
    firstIcon = [model2 firstIcon];
    icon = [(SBIconView *)self icon];
    v10 = [firstIcon isEqual:icon];

    v11 = (v10 ^ 1) & shouldShowCloseBox;
  }

  else
  {
    v11 = shouldShowCloseBox;
  }

  if ([(_SBHStackConfigurationIconView *)self _cannotRemoveLastWidgetInWidgetSheet])
  {
    v12 = v11;
  }

  else
  {
    v12 = shouldShowCloseBox;
  }

  return v12 & 1;
}

- (id)_stackConfigurationViewController
{
  delegate = [(SBIconView *)self delegate];
  v3 = objc_opt_self();
  v4 = delegate;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_iconListView
{
  _stackConfigurationViewController = [(_SBHStackConfigurationIconView *)self _stackConfigurationViewController];
  iconListView = [_stackConfigurationViewController iconListView];

  return iconListView;
}

- (BOOL)_cannotRemoveLastWidgetInWidgetSheet
{
  _stackConfigurationViewController = [(_SBHStackConfigurationIconView *)self _stackConfigurationViewController];
  presenter = [_stackConfigurationViewController presenter];
  if (objc_opt_respondsToSelector())
  {
    cannotRemoveLastWidgetInWidgetSheet = [presenter cannotRemoveLastWidgetInWidgetSheet];
  }

  else
  {
    cannotRemoveLastWidgetInWidgetSheet = 0;
  }

  return cannotRemoveLastWidgetInWidgetSheet;
}

- (void)_updateCloseBoxForAllIconsInListView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  icons = [viewCopy icons];
  v7 = [icons countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(icons);
        }

        v11 = [viewCopy displayedIconViewForIcon:*(*(&v12 + 1) + 8 * v10)];
        [v11 _updateCloseBoxAnimated:animatedCopy];

        ++v10;
      }

      while (v8 != v10);
      v8 = [icons countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end