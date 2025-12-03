@interface _UISplitViewControllerPanelImplView
- (UISplitViewControllerPanelImpl)impl;
- (id)focusItemsInRect:(CGRect)rect;
- (void)_didChangeWidthFrom:(double)from to:;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation _UISplitViewControllerPanelImplView

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19.receiver = self;
  v19.super_class = _UISplitViewControllerPanelImplView;
  v8 = [(UIView *)&v19 focusItemsInRect:?];
  impl = [(_UISplitViewControllerPanelImplView *)self impl];
  _primaryViewControllerFocusPromiseItem = [impl _primaryViewControllerFocusPromiseItem];
  if (_primaryViewControllerFocusPromiseItem && ([(UIView *)self coordinateSpace], v11 = objc_claimAutoreleasedReturnValue(), v22.origin.x = _UIFocusItemFrameInCoordinateSpace(_primaryViewControllerFocusPromiseItem, v11), v22.origin.y = v12, v22.size.width = v13, v22.size.height = v14, v21.origin.x = x, v21.origin.y = y, v21.size.width = width, v21.size.height = height, v15 = CGRectIntersectsRect(v21, v22), v11, v15))
  {
    v16 = [v8 arrayByAddingObject:_primaryViewControllerFocusPromiseItem];
  }

  else
  {
    v16 = v8;
  }

  v17 = v16;

  return v17;
}

- (void)_didChangeWidthFrom:(double)from to:
{
  v52 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  impl = [self impl];
  if ([impl style])
  {
    window = [self window];

    if (impl)
    {
      if (window)
      {
        style = [impl style];
        if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v42 = style;
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v44 = _UISplitViewControllerStyleDescription(v42);
          [currentHandler handleFailureInMethod:sel__updateDisplayModeIfNecessaryForChangeFromOldWidth_toNewWidth_ object:impl file:@"UISplitViewControllerPanelImpl.m" lineNumber:3611 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v44}];
        }

        WeakRetained = objc_loadWeakRetained(impl + 2);
        if (!_UISplitViewControllerAutoHidesColumns(WeakRetained))
        {
          goto LABEL_52;
        }

        _isCollapsedOrCollapsing = [impl _isCollapsedOrCollapsing];

        if ((_isCollapsedOrCollapsing & 1) == 0)
        {
          if (_UIGetUISplitViewControllerChamoisResizeLogging())
          {
            v10 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D908) + 8);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v11 = v10;
              v12 = objc_loadWeakRetained(impl + 2);
              *buf = 138412802;
              *&buf[4] = v12;
              v48 = 2048;
              v49 = a2;
              v50 = 2048;
              fromCopy = from;
              _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%@: Updating display mode if necessary for change in width from %g to %g", buf, 0x20u);
            }
          }

          WeakRetained = [impl currentState];
          displayMode = [impl displayMode];
          preferredDisplayMode = [impl preferredDisplayMode];
          if (displayMode == preferredDisplayMode && preferredDisplayMode)
          {
            if (_UIGetUISplitViewControllerChamoisResizeLogging())
            {
              v15 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D910) + 8);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                v16 = v15;
                v17 = objc_loadWeakRetained(impl + 2);
                v18 = _UISplitViewControllerDisplayModeDescription(displayMode);
                v19 = (impl[36] & 0xC0000) != 0 && displayMode == 1;
                v20 = &stru_1EFB14550;
                *buf = 138412802;
                *&buf[4] = v17;
                if (v19)
                {
                  v20 = @" Clearing behavior override flags.";
                }

                v48 = 2112;
                v49 = *&v18;
                v50 = 2112;
                fromCopy = *&v20;
                _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "%@: Will not change preferred display mode, %@, for change in width.%@", buf, 0x20u);
              }
            }

            if (displayMode != 1)
            {
              goto LABEL_52;
            }

            impl[36] = (impl[36] & 0xFFFFFFFFFFF3FFFFLL);
            goto LABEL_24;
          }

          if (displayMode > 6 || ((1 << displayMode) & 0x56) == 0)
          {
            if (_UIGetUISplitViewControllerChamoisResizeLogging())
            {
              v33 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D918) + 8);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = v33;
                v35 = objc_loadWeakRetained(impl + 2);
                v36 = _UISplitViewControllerDisplayModeDescription(displayMode);
                *buf = 138412546;
                *&buf[4] = v35;
                v48 = 2112;
                v49 = *&v36;
                _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "%@: Will not change non-tile display mode, %@, for change in width", buf, 0x16u);
              }
            }

            goto LABEL_52;
          }

          if (from < a2)
          {
            if (![WeakRetained _collapsedState] && displayMode != 1)
            {
              v46 = 0.0;
              *buf = 0;
              [impl getPrimaryColumnWidth:buf supplementaryColumnWidth:&v46 forSize:displayMode displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:{a2, 800.0}];
              v21 = 0;
              if (![impl _isSecondaryColumnCompactInTotalWidth:from withPrimaryColumnWidth:*buf supplementaryColumnWidth:v46] || (v21 = 1, *buf <= 0.0) || v46 <= 0.0)
              {
LABEL_25:
                if (v21 && v21 != displayMode)
                {
                  if (_UIGetUISplitViewControllerChamoisResizeLogging())
                  {
                    v22 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D920) + 8);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      v23 = v22;
                      v24 = objc_loadWeakRetained(impl + 2);
                      v25 = _UISplitViewControllerDisplayModeDescription(displayMode);
                      v26 = _UISplitViewControllerDisplayModeDescription(v21);
                      *buf = 138412802;
                      *&buf[4] = v24;
                      v48 = 2112;
                      v49 = *&v25;
                      v50 = 2112;
                      fromCopy = *&v26;
                      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "%@: Automatically changing displayMode from %@ to %@ for change in width", buf, 0x20u);
                    }
                  }

                  [impl setUserGeneratedDisplayMode:0];
                  panelController = [impl panelController];
                  [panelController setNeedsUpdate];
                }

                goto LABEL_52;
              }

              if (([impl _isSecondaryColumnCompactInTotalWidth:from withPrimaryColumnWidth:0.0 supplementaryColumnWidth:v46] & 1) == 0)
              {
                v21 = [impl allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:2];
                goto LABEL_25;
              }

LABEL_24:
              v21 = 1;
              goto LABEL_25;
            }

LABEL_52:

            goto LABEL_53;
          }

          if (from <= a2)
          {
            goto LABEL_52;
          }

          [WeakRetained leadingWidth];
          if (v28 != 0.0)
          {
            goto LABEL_52;
          }

          [WeakRetained trailingWidth];
          if (v29 != 0.0)
          {
            goto LABEL_52;
          }

          [WeakRetained supplementaryWidth];
          if (v30 != 0.0 && (impl[36] & 0xC0000) == 0x80000)
          {
            goto LABEL_52;
          }

          v46 = 0.0;
          *buf = 0;
          [WeakRetained supplementaryWidth];
          if (v31 == 0.0)
          {
            v32 = objc_loadWeakRetained(impl + 2);
            if (_UISplitViewControllerAutoRevealsProximateSidebar(v32))
            {

              goto LABEL_57;
            }

            v37 = objc_loadWeakRetained(impl + 2);
            v38 = _UISplitViewControllerAutoRevealsFullSidebar(v37);

            if (v38)
            {
LABEL_57:
              v21 = 2;
              [impl getPrimaryColumnWidth:buf supplementaryColumnWidth:&v46 forSize:2 displayMode:0 isCompact:0 shouldUseOverlay:{from, 800.0}];
              if (([impl _isSecondaryColumnCompactInTotalWidth:from withPrimaryColumnWidth:*buf supplementaryColumnWidth:v46] & 1) == 0)
              {
                goto LABEL_64;
              }

              goto LABEL_62;
            }
          }

          [WeakRetained supplementaryWidth];
          if (v39 > 0.0)
          {
            v40 = objc_loadWeakRetained(impl + 2);
            v41 = _UISplitViewControllerAutoRevealsFullSidebar(v40);

            if (v41)
            {
              if (([impl _isSecondaryColumnCompactInTotalWidth:from withPrimaryColumnWidth:0.0 supplementaryColumnWidth:0.0] & 1) == 0)
              {
                v21 = [impl _greatestAllowedAutohidingDisplayModeInSize:{from, 800.0}];
LABEL_64:
                impl[36] = (impl[36] & 0xFFFFFFFFFFF3FFFFLL);
                goto LABEL_25;
              }
            }
          }

LABEL_62:
          v21 = 0;
          goto LABEL_25;
        }
      }
    }
  }

LABEL_53:
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v8 = CGRectGetWidth(v11);
  v10.receiver = self;
  v10.super_class = _UISplitViewControllerPanelImplView;
  [(UILayoutContainerView *)&v10 setFrame:x, y, width, height];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (v8 != CGRectGetWidth(v12))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v9 = CGRectGetWidth(v13);
    [(_UISplitViewControllerPanelImplView *)self _didChangeWidthFrom:v8 to:v9];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v8 = CGRectGetWidth(v11);
  v10.receiver = self;
  v10.super_class = _UISplitViewControllerPanelImplView;
  [(UILayoutContainerView *)&v10 setBounds:x, y, width, height];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (v8 != CGRectGetWidth(v12))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v9 = CGRectGetWidth(v13);
    [(_UISplitViewControllerPanelImplView *)self _didChangeWidthFrom:v8 to:v9];
  }
}

- (UISplitViewControllerPanelImpl)impl
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);

  return WeakRetained;
}

@end