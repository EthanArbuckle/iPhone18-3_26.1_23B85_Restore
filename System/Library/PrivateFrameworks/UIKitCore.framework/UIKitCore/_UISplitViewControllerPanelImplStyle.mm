@interface _UISplitViewControllerPanelImplStyle
- (BOOL)alwaysHideSidebarToggleButton;
- (_UISplitViewControllerPanelImplStyle)initWithSplitViewController:(id)controller;
- (double)defaultMaximumWidthForColumn:(int64_t)column withSize:(CGSize)size splitBehavior:(int64_t)behavior;
- (id)primaryBackgroundColor;
- (id)splitViewController;
- (int64_t)splitBehaviorForSize:(CGSize)size;
@end

@implementation _UISplitViewControllerPanelImplStyle

- (_UISplitViewControllerPanelImplStyle)initWithSplitViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _UISplitViewControllerPanelImplStyle;
  v5 = [(_UISplitViewControllerPanelImplStyle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_splitViewController, controllerCopy);
  }

  return v6;
}

- (double)defaultMaximumWidthForColumn:(int64_t)column withSize:(CGSize)size splitBehavior:(int64_t)behavior
{
  height = size.height;
  width = size.width;
  v41 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  if (!WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:10192 description:@"Style for a dealloced UISplitViewController not expected"];
  }

  v12 = objc_loadWeakRetained(&self->_splitViewController);
  _panelImpl = [v12 _panelImpl];

  style = [_panelImpl style];
  if (column == 1)
  {
    v18 = 0.0;
    if (style == 2)
    {
      [_panelImpl _screenSize];
      if (width < v19 && behavior == 2)
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

  if (column)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v22 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_18;
      }

      v23 = _UISplitViewControllerColumnDescription(column);
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
      v23 = _UISplitViewControllerColumnDescription(column);
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

  splitViewController = [(_UISplitViewControllerPanelImplStyle *)self splitViewController];
  _usesExtraWidePrimaryColumn = [splitViewController _usesExtraWidePrimaryColumn];

  if (!_usesExtraWidePrimaryColumn)
  {
    goto LABEL_38;
  }

  [_panelImpl _screenSize];
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

  _layoutPrimaryOnRight = [_panelImpl _layoutPrimaryOnRight];
  v30 = objc_loadWeakRetained(&self->_splitViewController);
  view = [v30 view];
  [view safeAreaInsets];
  v33 = v32;
  v35 = v34;

  if (_layoutPrimaryOnRight)
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

- (int64_t)splitBehaviorForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _panelImpl = [WeakRetained _panelImpl];

  splitViewController = [(_UISplitViewControllerPanelImplStyle *)self splitViewController];
  LODWORD(WeakRetained) = _UISplitViewControllerAutoHidesColumns(splitViewController);

  if (WeakRetained)
  {
    if (!_panelImpl)
    {
      v16 = 0;
      goto LABEL_36;
    }

    style = [_panelImpl style];
    if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = _UISplitViewControllerStyleDescription(style);
      [currentHandler handleFailureInMethod:sel__defaultAutoHidingSplitBehaviorUpdatingOverrideFlagsIfNecessaryForSize_ object:_panelImpl file:@"UISplitViewControllerPanelImpl.m" lineNumber:1662 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v22}];
    }

    v10 = objc_loadWeakRetained((_panelImpl + 16));
    v11 = _UISplitViewControllerAutoHidesColumns(v10);

    if ((v11 & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__defaultAutoHidingSplitBehaviorUpdatingOverrideFlagsIfNecessaryForSize_ object:_panelImpl file:@"UISplitViewControllerPanelImpl.m" lineNumber:1662 description:@"Method restricted to autohiding context for UISplitViewController"];
    }

    currentState = [_panelImpl currentState];
    if (currentState)
    {
    }

    else if (([_panelImpl _isSecondaryColumnCompactInTotalWidth:width withPrimaryColumnWidth:0.0 supplementaryColumnWidth:0.0] & 1) == 0)
    {
      v24 = 0.0;
      v25 = 0.0;
      if (style == 2)
      {
        v17 = [*(_panelImpl + 8) objectForKeyedSubscript:&unk_1EFE30220];
        v18 = v17 ? 4 : 2;
        [_panelImpl getPrimaryColumnWidth:&v25 supplementaryColumnWidth:&v24 forSize:v18 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:{width, height}];
      }

      else
      {
        [_panelImpl getPrimaryColumnWidth:&v25 supplementaryColumnWidth:&v24 forSize:2 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:{width, height}];
      }

      if ([_panelImpl _isSecondaryColumnCompactInTotalWidth:width withPrimaryColumnWidth:v25 supplementaryColumnWidth:v24])
      {
        if (v24 <= 0.0)
        {
          v16 = 2;
        }

        else if ([_panelImpl _isSecondaryColumnCompactInTotalWidth:width withPrimaryColumnWidth:0.0 supplementaryColumnWidth:v24])
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
    *(_panelImpl + 288) = *(_panelImpl + 288) & 0xFFFFFFFFFFF3FFFFLL | v19;
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
      if ([_panelImpl _hasDoubleSideBar])
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
  _panelImpl = [WeakRetained _panelImpl];

  v4 = ([_panelImpl _forceDisplayModeBarButtonHidden] & 1) != 0 || (objc_msgSend(_panelImpl, "_isCollapsedOrCollapsing") & 1) != 0 || (objc_msgSend(_panelImpl, "presentsWithGesture") & 1) == 0 && (objc_msgSend(_panelImpl, "_visibleToggleButtonRequiresPresentsWithGesture") & 1) != 0 || UIApp == 0;
  return v4;
}

- (id)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  return WeakRetained;
}

@end