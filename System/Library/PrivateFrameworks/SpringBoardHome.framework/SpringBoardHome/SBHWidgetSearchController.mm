@interface SBHWidgetSearchController
- (SBHWidgetSearchController)initWithAddWidgetSheetStyle:(unint64_t)style placeholderText:(id)text;
- (double)grabberTopSpacing;
- (id)_textFieldFont;
- (unint64_t)supportedInterfaceOrientations;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_setupSearchBar;
- (void)_setupTextFieldMetrics;
- (void)_setupTextFieldWithPlaceholderText:(id)text;
- (void)dealloc;
- (void)setAlwaysShowBarBackground:(BOOL)background;
- (void)setApplicationCellIncludesGalleryListView:(BOOL)view;
- (void)setShouldInsetContentForGrabber:(BOOL)grabber;
- (void)setWidthDefiningGridSizeClass:(id)class;
- (void)updateSearchBarBackgroundForScrollDistance:(double)distance forClient:(id)client;
- (void)updateSearchBarContentInsetsWithWidth:(double)width;
@end

@implementation SBHWidgetSearchController

- (SBHWidgetSearchController)initWithAddWidgetSheetStyle:(unint64_t)style placeholderText:(id)text
{
  textCopy = text;
  v13.receiver = self;
  v13.super_class = SBHWidgetSearchController;
  v7 = [(SBHWidgetSearchController *)&v13 initWithSearchResultsController:0];
  v8 = v7;
  if (v7)
  {
    v7->_addWidgetSheetStyle = style;
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    scrollProgressByClient = v8->_scrollProgressByClient;
    v8->_scrollProgressByClient = weakToStrongObjectsMapTable;

    v8->_shouldInsetContentForGrabber = 1;
    [(SBHWidgetSearchController *)v8 _setupTextFieldMetrics];
    [(SBHWidgetSearchController *)v8 _setupSearchBar];
    [(SBHWidgetSearchController *)v8 _setupTextFieldWithPlaceholderText:textCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHWidgetSearchController;
  [(SBHWidgetSearchController *)&v4 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(SBHWidgetSearchController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if ([(SBHWidgetSearchController *)self addWidgetSheetStyle]== 1 || userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setAlwaysShowBarBackground:(BOOL)background
{
  if (self->_alwaysShowBarBackground != background)
  {
    self->_alwaysShowBarBackground = background;
    if (background)
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

      topItem = [(UIView *)v8 topItem];

      [topItem _setManualScrollEdgeAppearanceProgress:1.0];
    }
  }
}

- (void)setShouldInsetContentForGrabber:(BOOL)grabber
{
  if (self->_shouldInsetContentForGrabber != grabber)
  {
    self->_shouldInsetContentForGrabber = grabber;
    view = [(SBHWidgetSearchController *)self view];
    [view bounds];
    [(SBHWidgetSearchController *)self updateSearchBarContentInsetsWithWidth:v5];
  }
}

- (void)setApplicationCellIncludesGalleryListView:(BOOL)view
{
  if (self->_applicationCellIncludesGalleryListView != view)
  {
    self->_applicationCellIncludesGalleryListView = view;
    [(SBHWidgetSearchController *)self _setupTextFieldMetrics];
    view = [(SBHWidgetSearchController *)self view];
    [view bounds];
    [(SBHWidgetSearchController *)self updateSearchBarContentInsetsWithWidth:v5];
  }
}

- (void)setWidthDefiningGridSizeClass:(id)class
{
  classCopy = class;
  widthDefiningGridSizeClass = self->_widthDefiningGridSizeClass;
  if (widthDefiningGridSizeClass != classCopy)
  {
    v10 = classCopy;
    widthDefiningGridSizeClass = [(NSString *)widthDefiningGridSizeClass isEqualToString:classCopy];
    classCopy = v10;
    if ((widthDefiningGridSizeClass & 1) == 0)
    {
      v6 = [(NSString *)v10 copy];
      v7 = self->_widthDefiningGridSizeClass;
      self->_widthDefiningGridSizeClass = v6;

      view = [(SBHWidgetSearchController *)self view];
      [view bounds];
      [(SBHWidgetSearchController *)self updateSearchBarContentInsetsWithWidth:v9];

      classCopy = v10;
    }
  }

  MEMORY[0x1EEE66BB8](widthDefiningGridSizeClass, classCopy);
}

- (void)_setupTextFieldMetrics
{
  addWidgetSheetStyle = [(SBHWidgetSearchController *)self addWidgetSheetStyle];
  v4 = 6.0;
  if (addWidgetSheetStyle == 1)
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
  searchBar = [(SBHWidgetSearchController *)self searchBar];
  [searchBar setDrawsBackground:0];
  [searchBar setCenterPlaceholder:1];
  [searchBar _setDisableDictationButton:1];
  v2 = MEMORY[0x1E69DDA98];
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v4 = 10.0;
  if (userInterfaceLayoutDirection == 1)
  {
    v4 = 0.0;
  }

  [searchBar setPositionAdjustment:0 forSearchBarIcon:{v4, 0.0}];
  userInterfaceLayoutDirection2 = [*v2 userInterfaceLayoutDirection];
  v6 = -10.0;
  if (userInterfaceLayoutDirection2 == 1)
  {
    v6 = 0.0;
  }

  [searchBar setPositionAdjustment:1 forSearchBarIcon:{v6, 0.0}];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [searchBar setTintColor:secondaryLabelColor];

  [searchBar setAutoresizingMask:34];
}

- (void)_setupTextFieldWithPlaceholderText:(id)text
{
  v17[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  searchBar = [(SBHWidgetSearchController *)self searchBar];
  searchTextField = [searchBar searchTextField];
  _textFieldFont = [(SBHWidgetSearchController *)self _textFieldFont];
  [searchTextField setFont:_textFieldFont];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [searchTextField _setBackgroundFillColor:clearColor];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [searchTextField setTextColor:labelColor];

  leftView = [searchTextField leftView];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [leftView setTintColor:secondaryLabelColor];

  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = *MEMORY[0x1E69DB650];
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v17[0] = secondaryLabelColor2;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v15 = [v12 initWithString:textCopy attributes:v14];

  [searchTextField setAttributedPlaceholder:v15];
}

- (void)updateSearchBarBackgroundForScrollDistance:(double)distance forClient:(id)client
{
  v26 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  if (!self->_alwaysShowBarBackground)
  {
    scrollProgressByClient = self->_scrollProgressByClient;
    if (distance == 2.22507386e-308)
    {
      [(NSMapTable *)self->_scrollProgressByClient removeObjectForKey:clientCopy];
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:distance];
      [(NSMapTable *)scrollProgressByClient setObject:v8 forKey:clientCopy];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    objectEnumerator = [(NSMapTable *)self->_scrollProgressByClient objectEnumerator];
    v10 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v21 + 1) + 8 * i) doubleValue];
          if (distance < v14)
          {
            distance = v14;
          }
        }

        v11 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
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

    topItem = [(UIView *)v19 topItem];

    [topItem _setManualScrollEdgeAppearanceProgress:{fmin(fmax(distance * 0.0625, 0.0), 1.0)}];
  }
}

- (void)updateSearchBarContentInsetsWithWidth:(double)width
{
  if ([(SBHWidgetSearchController *)self addWidgetSheetStyle]!= 1)
  {
    searchBar = [(SBHWidgetSearchController *)self searchBar];
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

    v14 = (width - v9) * 0.5;
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

    [searchBar setContentInset:{v19, v14, v18, v14}];
  }
}

- (double)grabberTopSpacing
{
  searchBar = [(SBHWidgetSearchController *)self searchBar];
  searchTextField = [searchBar searchTextField];
  [searchTextField frame];
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
  addWidgetSheetStyle = [(SBHWidgetSearchController *)self addWidgetSheetStyle];
  v3 = MEMORY[0x1E69DDCF8];
  if (addWidgetSheetStyle != 1)
  {
    v3 = MEMORY[0x1E69DDDC8];
  }

  v4 = *v3;
  v5 = MEMORY[0x1E69DB878];

  return [v5 preferredFontForTextStyle:v4];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  searchBar = [(SBHWidgetSearchController *)self searchBar];
  searchTextField = [searchBar searchTextField];
  _textFieldFont = [(SBHWidgetSearchController *)self _textFieldFont];
  [searchTextField setFont:_textFieldFont];
}

@end