@interface SBHWidgetSearchController
- (SBHWidgetSearchController)initWithAddWidgetSheetStyle:(unint64_t)a3 placeholderText:(id)a4;
- (double)grabberTopSpacing;
- (id)_textFieldFont;
- (unint64_t)supportedInterfaceOrientations;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_setupSearchBar;
- (void)_setupTextFieldMetrics;
- (void)_setupTextFieldWithPlaceholderText:(id)a3;
- (void)dealloc;
- (void)setAlwaysShowBarBackground:(BOOL)a3;
- (void)setApplicationCellIncludesGalleryListView:(BOOL)a3;
- (void)setShouldInsetContentForGrabber:(BOOL)a3;
- (void)setWidthDefiningGridSizeClass:(id)a3;
- (void)updateSearchBarBackgroundForScrollDistance:(double)a3 forClient:(id)a4;
- (void)updateSearchBarContentInsetsWithWidth:(double)a3;
@end

@implementation SBHWidgetSearchController

- (SBHWidgetSearchController)initWithAddWidgetSheetStyle:(unint64_t)a3 placeholderText:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = SBHWidgetSearchController;
  v7 = [(SBHWidgetSearchController *)&v13 initWithSearchResultsController:0];
  v8 = v7;
  if (v7)
  {
    v7->_addWidgetSheetStyle = a3;
    v9 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    scrollProgressByClient = v8->_scrollProgressByClient;
    v8->_scrollProgressByClient = v9;

    v8->_shouldInsetContentForGrabber = 1;
    [(SBHWidgetSearchController *)v8 _setupTextFieldMetrics];
    [(SBHWidgetSearchController *)v8 _setupSearchBar];
    [(SBHWidgetSearchController *)v8 _setupTextFieldWithPlaceholderText:v6];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v8 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHWidgetSearchController;
  [(SBHWidgetSearchController *)&v4 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(SBHWidgetSearchController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if ([(SBHWidgetSearchController *)self addWidgetSheetStyle]== 1 || v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setAlwaysShowBarBackground:(BOOL)a3
{
  if (self->_alwaysShowBarBackground != a3)
  {
    self->_alwaysShowBarBackground = a3;
    if (a3)
    {
      searchBarBackgroundView = self->_searchBarBackgroundView;
      v5 = objc_opt_class();
      v6 = searchBarBackgroundView;
      if (v5)
      {
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      v9 = [(UIView *)v8 topItem];

      [v9 _setManualScrollEdgeAppearanceProgress:1.0];
    }
  }
}

- (void)setShouldInsetContentForGrabber:(BOOL)a3
{
  if (self->_shouldInsetContentForGrabber != a3)
  {
    self->_shouldInsetContentForGrabber = a3;
    v6 = [(SBHWidgetSearchController *)self view];
    [v6 bounds];
    [(SBHWidgetSearchController *)self updateSearchBarContentInsetsWithWidth:v5];
  }
}

- (void)setApplicationCellIncludesGalleryListView:(BOOL)a3
{
  if (self->_applicationCellIncludesGalleryListView != a3)
  {
    self->_applicationCellIncludesGalleryListView = a3;
    [(SBHWidgetSearchController *)self _setupTextFieldMetrics];
    v6 = [(SBHWidgetSearchController *)self view];
    [v6 bounds];
    [(SBHWidgetSearchController *)self updateSearchBarContentInsetsWithWidth:v5];
  }
}

- (void)setWidthDefiningGridSizeClass:(id)a3
{
  v4 = a3;
  widthDefiningGridSizeClass = self->_widthDefiningGridSizeClass;
  if (widthDefiningGridSizeClass != v4)
  {
    v10 = v4;
    widthDefiningGridSizeClass = [(NSString *)widthDefiningGridSizeClass isEqualToString:v4];
    v4 = v10;
    if ((widthDefiningGridSizeClass & 1) == 0)
    {
      v6 = [(NSString *)v10 copy];
      v7 = self->_widthDefiningGridSizeClass;
      self->_widthDefiningGridSizeClass = v6;

      v8 = [(SBHWidgetSearchController *)self view];
      [v8 bounds];
      [(SBHWidgetSearchController *)self updateSearchBarContentInsetsWithWidth:v9];

      v4 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](widthDefiningGridSizeClass, v4);
}

- (void)_setupTextFieldMetrics
{
  v3 = [(SBHWidgetSearchController *)self addWidgetSheetStyle];
  v4 = 6.0;
  if (v3 == 1)
  {
    v4 = 0.0;
    v5 = 21.0;
  }

  else
  {
    v5 = 26.3333333;
  }

  v6 = 8.0;
  if (self->_applicationCellIncludesGalleryListView)
  {
    v6 = 16.0;
  }

  v7 = v4 + v6;
  [(SBHWidgetSearchController *)self setTextFieldExtraHeight:?];
  [(SBHWidgetSearchController *)self setTextFieldToWidgetsSpacing:v5];

  [(SBHWidgetSearchController *)self setTextFieldToBarBackgroundBottomSpacing:v7];
}

- (void)_setupSearchBar
{
  v8 = [(SBHWidgetSearchController *)self searchBar];
  [v8 setDrawsBackground:0];
  [v8 setCenterPlaceholder:1];
  [v8 _setDisableDictationButton:1];
  v2 = MEMORY[0x1E69DDA98];
  v3 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v4 = 10.0;
  if (v3 == 1)
  {
    v4 = 0.0;
  }

  [v8 setPositionAdjustment:0 forSearchBarIcon:{v4, 0.0}];
  v5 = [*v2 userInterfaceLayoutDirection];
  v6 = -10.0;
  if (v5 == 1)
  {
    v6 = 0.0;
  }

  [v8 setPositionAdjustment:1 forSearchBarIcon:{v6, 0.0}];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setTintColor:v7];

  [v8 setAutoresizingMask:34];
}

- (void)_setupTextFieldWithPlaceholderText:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHWidgetSearchController *)self searchBar];
  v6 = [v5 searchTextField];
  v7 = [(SBHWidgetSearchController *)self _textFieldFont];
  [v6 setFont:v7];

  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v6 _setBackgroundFillColor:v8];

  v9 = [MEMORY[0x1E69DC888] labelColor];
  [v6 setTextColor:v9];

  v10 = [v6 leftView];
  v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v10 setTintColor:v11];

  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = *MEMORY[0x1E69DB650];
  v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v17[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v15 = [v12 initWithString:v4 attributes:v14];

  [v6 setAttributedPlaceholder:v15];
}

- (void)updateSearchBarBackgroundForScrollDistance:(double)a3 forClient:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!self->_alwaysShowBarBackground)
  {
    scrollProgressByClient = self->_scrollProgressByClient;
    if (a3 == 2.22507386e-308)
    {
      [(NSMapTable *)self->_scrollProgressByClient removeObjectForKey:v6];
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      [(NSMapTable *)scrollProgressByClient setObject:v8 forKey:v6];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [(NSMapTable *)self->_scrollProgressByClient objectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v21 + 1) + 8 * i) doubleValue];
          if (a3 < v14)
          {
            a3 = v14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    searchBarBackgroundView = self->_searchBarBackgroundView;
    v16 = objc_opt_class();
    v17 = searchBarBackgroundView;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = [(UIView *)v19 topItem];

    [v20 _setManualScrollEdgeAppearanceProgress:{fmin(fmax(a3 * 0.0625, 0.0), 1.0)}];
  }
}

- (void)updateSearchBarContentInsetsWithWidth:(double)a3
{
  if ([(SBHWidgetSearchController *)self addWidgetSheetStyle]!= 1)
  {
    v22 = [(SBHWidgetSearchController *)self searchBar];
    v5 = objc_alloc_init(SBHDefaultIconListLayoutProvider);
    v6 = [(SBHDefaultIconListLayoutProvider *)v5 layoutForIconLocation:@"SBIconLocationRoot"];
    v7 = v6;
    widthDefiningGridSizeClass = self->_widthDefiningGridSizeClass;
    if (!widthDefiningGridSizeClass)
    {
      goto LABEL_8;
    }

    v9 = fmax(SBHIconListLayoutIconImageInfoForGridSizeClass(v6, widthDefiningGridSizeClass), 0.0);
    listLayoutProvider = self->_listLayoutProvider;
    if (listLayoutProvider)
    {
      v11 = [(SBIconListLayoutProvider *)listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
      v12 = SBHIconListLayoutIconImageInfoForGridSizeClass(v11, self->_widthDefiningGridSizeClass);
      if (v12 > 0.0)
      {
        v9 = v12;
      }
    }

    if (v9 <= 0.0)
    {
LABEL_8:
      v13 = SBHScreenTypeForCurrentDevice();
      if (self->_addWidgetSheetStyle == 1)
      {
        v9 = 450.0;
      }

      else if ((v13 - 100) >= 0x13)
      {
        v9 = SBHIconListLayoutIconImageInfoForGridSizeClass(v7, @"SBHIconGridSizeClassMedium");
      }

      else
      {
        v9 = dbl_1BEE89C90[v13 - 100];
      }
    }

    v14 = (a3 - v9) * 0.5;
    [(SBHWidgetSearchController *)self textFieldExtraHeight];
    v16 = v15;
    [(SBHWidgetSearchController *)self textFieldToWidgetsSpacing];
    v18 = v17;
    if (self->_addWidgetSheetStyle == 1)
    {
      v19 = 0.0;
      if (self->_shouldInsetContentForGrabber)
      {
        if (_SBHAddWidgetSheetGrabberHeight_onceToken != -1)
        {
          v21 = v18;
          [SBHWidgetSearchController updateSearchBarContentInsetsWithWidth:];
          v18 = v21;
        }

        v19 = *&_SBHAddWidgetSheetGrabberHeight_grabberHeight + 21.0;
      }
    }

    else
    {
      v20 = 27.0;
      if (self->_shouldInsetContentForGrabber)
      {
        v20 = v14;
      }

      v19 = v16 + v20;
      v18 = v16 + v18;
    }

    [v22 setContentInset:{v19, v14, v18, v14}];
  }
}

- (double)grabberTopSpacing
{
  v3 = [(SBHWidgetSearchController *)self searchBar];
  v4 = [v3 searchTextField];
  [v4 frame];
  MinY = CGRectGetMinY(v9);
  [(SBHWidgetSearchController *)self textFieldExtraHeight];
  v7 = v6;

  if (_SBHAddWidgetSheetGrabberHeight_onceToken != -1)
  {
    [SBHWidgetSearchController updateSearchBarContentInsetsWithWidth:];
  }

  return (MinY - v7 - *&_SBHAddWidgetSheetGrabberHeight_grabberHeight) * 0.5;
}

- (id)_textFieldFont
{
  v2 = [(SBHWidgetSearchController *)self addWidgetSheetStyle];
  v3 = MEMORY[0x1E69DDCF8];
  if (v2 != 1)
  {
    v3 = MEMORY[0x1E69DDDC8];
  }

  v4 = *v3;
  v5 = MEMORY[0x1E69DB878];

  return [v5 preferredFontForTextStyle:v4];
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v6 = [(SBHWidgetSearchController *)self searchBar];
  v4 = [v6 searchTextField];
  v5 = [(SBHWidgetSearchController *)self _textFieldFont];
  [v4 setFont:v5];
}

@end