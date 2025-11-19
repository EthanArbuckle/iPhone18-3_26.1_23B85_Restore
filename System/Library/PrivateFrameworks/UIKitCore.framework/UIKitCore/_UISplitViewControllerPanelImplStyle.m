@interface _UISplitViewControllerPanelImplStyle
- (BOOL)alwaysHideSidebarToggleButton;
- (_UISplitViewControllerPanelImplStyle)initWithSplitViewController:(id)a3;
- (double)defaultMaximumWidthForColumn:(int64_t)a3 withSize:(CGSize)a4 splitBehavior:(int64_t)a5;
- (id)primaryBackgroundColor;
- (id)splitViewController;
- (int64_t)splitBehaviorForSize:(CGSize)a3;
@end

@implementation _UISplitViewControllerPanelImplStyle

- (_UISplitViewControllerPanelImplStyle)initWithSplitViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UISplitViewControllerPanelImplStyle;
  v5 = [(_UISplitViewControllerPanelImplStyle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_splitViewController, v4);
  }

  return v6;
}

- (double)defaultMaximumWidthForColumn:(int64_t)a3 withSize:(CGSize)a4 splitBehavior:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v41 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  if (!WeakRetained)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:10192 description:@"Style for a dealloced UISplitViewController not expected"];
  }

  v12 = objc_loadWeakRetained(&self->_splitViewController);
  v13 = [v12 _panelImpl];

  v14 = [v13 style];
  if (a3 == 1)
  {
    v18 = 0.0;
    if (v14 == 2)
    {
      [v13 _screenSize];
      if (width < v19 && a5 == 2)
      {
        v18 = 320.0;
      }

      else
      {
        v18 = 375.0;
      }
    }

    goto LABEL_40;
  }

  if (a3)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v22 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_18;
      }

      v23 = _UISplitViewControllerColumnDescription(a3);
      v39 = 138412290;
      v40 = v23;
      _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Unexpected request for default max width for %@ column. Using CGFLOAT_MAX", &v39, 0xCu);
    }

    else
    {
      v21 = *(__UILogGetCategoryCachedImpl("Assert", &defaultMaximumWidthForColumn_withSize_splitBehavior____s_category) + 8);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        *&v17 = 1.79769313e308;
        goto LABEL_39;
      }

      v22 = v21;
      v23 = _UISplitViewControllerColumnDescription(a3);
      v39 = 138412290;
      v40 = v23;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Unexpected request for default max width for %@ column. Using CGFLOAT_MAX", &v39, 0xCu);
    }

LABEL_18:
    goto LABEL_19;
  }

  v15 = objc_loadWeakRetained(&self->_splitViewController);
  v16 = _UISplitViewControllerWantsPickerBehaviors(v15);

  if (v16)
  {
    *&v17 = 240.0;
LABEL_39:
    v18 = *&v17;
    goto LABEL_40;
  }

  v24 = [(_UISplitViewControllerPanelImplStyle *)self splitViewController];
  v25 = [v24 _usesExtraWidePrimaryColumn];

  if (!v25)
  {
    goto LABEL_38;
  }

  [v13 _screenSize];
  v18 = 320.0;
  if (width != v27 || height != v26)
  {
    goto LABEL_40;
  }

  if (height >= width)
  {
    v28 = height;
  }

  else
  {
    v28 = width;
  }

  if (v28 > 1210.0)
  {
    v18 = dbl_18A679500[height < width];
    goto LABEL_40;
  }

  if (height >= width)
  {
    goto LABEL_38;
  }

  if (width > 1112.0)
  {
    v18 = 414.0;
    goto LABEL_40;
  }

  if (width > 926.0)
  {
    v18 = 375.0;
    goto LABEL_40;
  }

  if (width <= 844.0)
  {
LABEL_38:
    *&v17 = 320.0;
    goto LABEL_39;
  }

  v29 = [v13 _layoutPrimaryOnRight];
  v30 = objc_loadWeakRetained(&self->_splitViewController);
  v31 = [v30 view];
  [v31 safeAreaInsets];
  v33 = v32;
  v35 = v34;

  if (v29)
  {
    v36 = v35;
  }

  else
  {
    v36 = v33;
  }

  v18 = v36 + 320.0;
LABEL_40:

  return v18;
}

- (int64_t)splitBehaviorForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v7 = [WeakRetained _panelImpl];

  v8 = [(_UISplitViewControllerPanelImplStyle *)self splitViewController];
  LODWORD(WeakRetained) = _UISplitViewControllerAutoHidesColumns(v8);

  if (WeakRetained)
  {
    if (!v7)
    {
      v16 = 0;
      goto LABEL_36;
    }

    v9 = [v7 style];
    if (v9 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = _UISplitViewControllerStyleDescription(v9);
      [v21 handleFailureInMethod:sel__defaultAutoHidingSplitBehaviorUpdatingOverrideFlagsIfNecessaryForSize_ object:v7 file:@"UISplitViewControllerPanelImpl.m" lineNumber:1662 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v22}];
    }

    v10 = objc_loadWeakRetained((v7 + 16));
    v11 = _UISplitViewControllerAutoHidesColumns(v10);

    if ((v11 & 1) == 0)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:sel__defaultAutoHidingSplitBehaviorUpdatingOverrideFlagsIfNecessaryForSize_ object:v7 file:@"UISplitViewControllerPanelImpl.m" lineNumber:1662 description:@"Method restricted to autohiding context for UISplitViewController"];
    }

    v12 = [v7 currentState];
    if (v12)
    {
    }

    else if (([v7 _isSecondaryColumnCompactInTotalWidth:width withPrimaryColumnWidth:0.0 supplementaryColumnWidth:0.0] & 1) == 0)
    {
      v24 = 0.0;
      v25 = 0.0;
      if (v9 == 2)
      {
        v17 = [*(v7 + 8) objectForKeyedSubscript:&unk_1EFE30220];
        v18 = v17 ? 4 : 2;
        [v7 getPrimaryColumnWidth:&v25 supplementaryColumnWidth:&v24 forSize:v18 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:{width, height}];
      }

      else
      {
        [v7 getPrimaryColumnWidth:&v25 supplementaryColumnWidth:&v24 forSize:2 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:{width, height}];
      }

      if ([v7 _isSecondaryColumnCompactInTotalWidth:width withPrimaryColumnWidth:v25 supplementaryColumnWidth:v24])
      {
        if (v24 <= 0.0)
        {
          v16 = 2;
        }

        else if ([v7 _isSecondaryColumnCompactInTotalWidth:width withPrimaryColumnWidth:0.0 supplementaryColumnWidth:v24])
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }

        v19 = v16 << 18;
        goto LABEL_35;
      }
    }

    v19 = 0;
    v16 = 1;
LABEL_35:
    *(v7 + 288) = *(v7 + 288) & 0xFFFFFFFFFFF3FFFFLL | v19;
    goto LABEL_36;
  }

  v29 = 802516499;
  v28 = xmmword_18A679530;
  v27 = -1919324456;
  v26 = xmmword_18A679544;
  v13 = MGIsDeviceOneOfType();
  v14 = 1194.0;
  if (v13)
  {
    v14 = 1210.0;
  }

  v15 = 1536.0;
  if (width > height)
  {
    v15 = v14;
  }

  if (width <= v15)
  {
    if (width > height)
    {
      v14 = 1024.0;
    }

    if (width >= v14)
    {
      if ([v7 _hasDoubleSideBar])
      {
        v16 = 3;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_36:

  return v16;
}

- (id)primaryBackgroundColor
{
  if (dyld_program_sdk_at_least())
  {
    +[UIColor systemBackgroundColor];
  }

  else
  {
    +[UIColor _splitViewBorderColor];
  }
  v2 = ;

  return v2;
}

- (BOOL)alwaysHideSidebarToggleButton
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _panelImpl];

  v4 = ([v3 _forceDisplayModeBarButtonHidden] & 1) != 0 || (objc_msgSend(v3, "_isCollapsedOrCollapsing") & 1) != 0 || (objc_msgSend(v3, "presentsWithGesture") & 1) == 0 && (objc_msgSend(v3, "_visibleToggleButtonRequiresPresentsWithGesture") & 1) != 0 || UIApp == 0;
  return v4;
}

- (id)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  return WeakRetained;
}

@end