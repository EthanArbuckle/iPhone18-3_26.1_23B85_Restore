@interface _SBHStackConfigurationIconView
+ (id)groupNameBaseForComponentBackgroundViewOfType:(int64_t)a3;
- (BOOL)_cannotRemoveLastWidgetInWidgetSheet;
- (BOOL)shouldShowCloseBox;
- (id)_iconListView;
- (id)_stackConfigurationViewController;
- (void)_updateCloseBoxForAllIconsInListView:(id)a3 animated:(BOOL)a4;
- (void)iconListView:(id)a3 didAddIconView:(id)a4;
- (void)iconListView:(id)a3 didRemoveIconView:(id)a4;
@end

@implementation _SBHStackConfigurationIconView

+ (id)groupNameBaseForComponentBackgroundViewOfType:(int64_t)a3
{
  v6 = 0;
  if (a3 <= 3)
  {
    if ((a3 - 2) >= 2 && a3)
    {
      if (a3 != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }

LABEL_19:
    v10 = v3;
    v11 = v4;
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____SBHStackConfigurationIconView;
    v6 = objc_msgSendSuper2(&v9, sel_groupNameBaseForComponentBackgroundViewOfType_);

    return v6;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
LABEL_22:
      v6 = @"SBHStackConfigurationCloseBox";

      return v6;
    }

    if (a3 != 7)
    {
LABEL_5:

      return v6;
    }

    goto LABEL_19;
  }

  v8 = @"SBHStackConfigurationWidget";
  if (a3 != 5)
  {
    v8 = 0;
  }

  if (a3 == 4)
  {
    v6 = @"SBHStackConfigurationWidget";
  }

  else
  {
    v6 = v8;
  }

  return v6;
}

- (void)iconListView:(id)a3 didAddIconView:(id)a4
{
  v5 = a3;
  if (-[_SBHStackConfigurationIconView _cannotRemoveLastWidgetInWidgetSheet](self, "_cannotRemoveLastWidgetInWidgetSheet") && [v5 numberOfDisplayedIconViews] == 2)
  {
    [(_SBHStackConfigurationIconView *)self _updateCloseBoxForAllIconsInListView:v5 animated:1];
  }
}

- (void)iconListView:(id)a3 didRemoveIconView:(id)a4
{
  v5 = a3;
  if (-[_SBHStackConfigurationIconView _cannotRemoveLastWidgetInWidgetSheet](self, "_cannotRemoveLastWidgetInWidgetSheet") && [v5 numberOfDisplayedIconViews] == 1)
  {
    [(_SBHStackConfigurationIconView *)self _updateCloseBoxForAllIconsInListView:v5 animated:1];
  }
}

- (BOOL)shouldShowCloseBox
{
  v14.receiver = self;
  v14.super_class = _SBHStackConfigurationIconView;
  v3 = [(SBIconView *)&v14 shouldShowCloseBox];
  v4 = [(_SBHStackConfigurationIconView *)self _iconListView];
  v5 = [v4 model];
  if ([v5 numberOfIcons] == 1)
  {
    v6 = [(_SBHStackConfigurationIconView *)self _iconListView];
    v7 = [v6 model];
    v8 = [v7 firstIcon];
    v9 = [(SBIconView *)self icon];
    v10 = [v8 isEqual:v9];

    v11 = (v10 ^ 1) & v3;
  }

  else
  {
    v11 = v3;
  }

  if ([(_SBHStackConfigurationIconView *)self _cannotRemoveLastWidgetInWidgetSheet])
  {
    v12 = v11;
  }

  else
  {
    v12 = v3;
  }

  return v12 & 1;
}

- (id)_stackConfigurationViewController
{
  v2 = [(SBIconView *)self delegate];
  v3 = objc_opt_self();
  v4 = v2;
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
  v2 = [(_SBHStackConfigurationIconView *)self _stackConfigurationViewController];
  v3 = [v2 iconListView];

  return v3;
}

- (BOOL)_cannotRemoveLastWidgetInWidgetSheet
{
  v2 = [(_SBHStackConfigurationIconView *)self _stackConfigurationViewController];
  v3 = [v2 presenter];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 cannotRemoveLastWidgetInWidgetSheet];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateCloseBoxForAllIconsInListView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 icons];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [v5 displayedIconViewForIcon:*(*(&v12 + 1) + 8 * v10)];
        [v11 _updateCloseBoxAnimated:v4];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end