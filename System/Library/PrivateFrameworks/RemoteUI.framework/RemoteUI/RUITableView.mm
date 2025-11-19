@interface RUITableView
- (BOOL)_becomeFirstResponderAtIndexPath:(id)a3;
- (BOOL)isSearchEnabled;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canFocusRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canPerformAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4;
- (BOOL)webViewOM:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5;
- (CGRect)_selectPickerFrame;
- (CGRect)searchBarRectInPage:(id)a3;
- (CGSize)_tableHeaderSizeForHeader:(id)a3;
- (CGSize)scrollView:(id)a3 contentSizeForZoomScale:(double)a4 withProposedSize:(CGSize)a5;
- (Class)tableCellClassForTableViewRow:(id)a3;
- (NSMutableArray)sections;
- (RUIHeader)headerView;
- (RUIObjectModel)objectModel;
- (RUIPage)page;
- (RUITableView)initWithAttributes:(id)a3 parent:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_objectModelIndexPathForIndexPath:(id)a3;
- (id)filteredResultsWithSearchTerm:(id)a3;
- (id)indexPathForPreferredFocusedViewInTableView:(id)a3;
- (id)indexPathForRow:(id)a3;
- (id)objectModelRowForIndexPath:(id)a3;
- (id)rowWithIdentifier:(id)a3;
- (id)sourceURL;
- (id)staticValues;
- (id)subElementWithID:(id)a3;
- (id)subElementsWithName:(id)a3;
- (id)tableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)textFieldRow:(id)a3 changeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (id)viewForElementIdentifier:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 titleAlignmentForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 titleAlignmentForHeaderInSection:(int64_t)a4;
- (int64_t)tableViewStyle;
- (void)_clearPickers;
- (void)_datePickerRevert;
- (void)_enumerateRowsUsingBlock:(id)a3;
- (void)_hideDatePickerNavBarButtonsIfNeeded;
- (void)_hideLeftBarButtonItemForLabel;
- (void)_hideRightBarButtonItemForLabel;
- (void)_loadHeaderView;
- (void)_registerForNotifications:(BOOL)a3;
- (void)_setBottomInset:(float)a3;
- (void)_setPickerInset:(double)a3;
- (void)_showDatePickerNavBarButtonsIfNeededForRow:(id)a3;
- (void)_showLeftBarButtonItemForLabel;
- (void)_showRightBarButtonItemForLabel;
- (void)_textChanged:(id)a3;
- (void)_updateSectionContentInsetForSettingsWithAnimation:(BOOL)a3;
- (void)activateRowAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)addSearchBarToPage:(id)a3;
- (void)datePickerCancel:(id)a3;
- (void)datePickerDone:(id)a3;
- (void)dealloc;
- (void)hidePickerViewAnimated:(BOOL)a3;
- (void)insertRow:(id)a3 atIndexPath:(id)a4;
- (void)leftLabelDone:(id)a3;
- (void)performAction:(int)a3 forElement:(id)a4 completion:(id)a5;
- (void)populatePostbackDictionary:(id)a3;
- (void)populateSelectionDictionary:(id)a3;
- (void)reloadHeadersAndFootersForSection:(id)a3;
- (void)reloadRow:(id)a3 atIndexPath:(id)a4;
- (void)removeRowAtIndexPath:(id)a3;
- (void)rightLabelDone:(id)a3;
- (void)rowDidChange:(id)a3 action:(int)a4;
- (void)rowDidEndEditing:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)setAttributes:(id)a3;
- (void)setFooterViewAttributes:(id)a3;
- (void)setHeaderViewAttributes:(id)a3;
- (void)setImage:(id)a3;
- (void)setImageAlignment:(unint64_t)a3;
- (void)setImageSize:(CGSize)a3;
- (void)setSelectedRadioGroupRow:(id)a3;
- (void)setTintColor:(id)a3;
- (void)showPickerViewForRow:(id)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)textFieldStartedEditing:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayout;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RUITableView

- (id)staticValues
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setIdentifier:"sectionCount"];
  [v2 setGetter:RUIJSTable_getProperty];
  [v2 setSetter:0];
  [v2 setJSPropertyAttributes:10];
  v3 = objc_opt_new();
  [v3 setIdentifier:"editing"];
  [v3 setGetter:RUIJSTable_getProperty];
  [v3 setSetter:RUIJSTable_setProperty];
  [v3 setJSPropertyAttributes:8];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (RUITableView)initWithAttributes:(id)a3 parent:(id)a4
{
  v8.receiver = self;
  v8.super_class = RUITableView;
  v4 = [(RUIElement *)&v8 initWithAttributes:a3 parent:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sections = v4->_sections;
    v4->_sections = v5;
  }

  return v4;
}

- (NSMutableArray)sections
{
  if (self->_isSearching)
  {
    v2 = &OBJC_IVAR___RUITableView__filteredSections;
  }

  else
  {
    v2 = &OBJC_IVAR___RUITableView__sections;
  }

  return *(&self->super.super.isa + *v2);
}

- (void)_registerForNotifications:(BOOL)a3
{
  if (a3)
  {
    if (self->_registeredForNotifications)
    {
      return;
    }

    self->_registeredForNotifications = 1;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel__textChanged_ name:*MEMORY[0x277D770B0] object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel_automaticKeyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel_automaticKeyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
  }

  else
  {
    if (!self->_registeredForNotifications)
    {
      return;
    }

    self->_registeredForNotifications = 0;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x277D770B0] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 removeObserver:self name:*MEMORY[0x277D76BA8] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  }
}

- (void)dealloc
{
  [(RUITableView *)self _registerForNotifications:0];
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  v3.receiver = self;
  v3.super_class = RUITableView;
  [(RUIElement *)&v3 dealloc];
}

- (BOOL)isSearchEnabled
{
  v2 = [(RUIElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"searchEnabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)addSearchBarToPage:(id)a3
{
  v17 = a3;
  if ([(RUITableView *)self isSearchEnabled]&& !self->_searchBar)
  {
    v4 = [(RUIElement *)self attributes];
    v5 = [v4 objectForKeyedSubscript:@"searchBarInNavigationBar"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
      [v7 setObscuresBackgroundDuringPresentation:0];
      [v7 setAutomaticallyShowsSearchResultsController:0];
      v8 = [(RUIElement *)self attributes];
      v9 = [v8 objectForKeyedSubscript:@"hidesSearchBarWhenScrolling"];
      v10 = [v9 BOOLValue];
      v11 = [v17 navigationItem];
      [v11 setHidesSearchBarWhenScrolling:v10];

      v12 = [v17 navigationItem];
      [v12 setSearchController:v7];

      v13 = [v7 searchBar];
      searchBar = self->_searchBar;
      self->_searchBar = v13;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277D759E8]);
      v16 = self->_searchBar;
      self->_searchBar = v15;

      v7 = [v17 view];
      [v7 addSubview:self->_searchBar];
    }

    [(UISearchBar *)self->_searchBar setDelegate:self];
  }
}

- (CGRect)searchBarRectInPage:(id)a3
{
  v4 = a3;
  if (!self->_searchBar)
  {
    v8 = MEMORY[0x277CBF3A0];
    v9 = *MEMORY[0x277CBF3A0];
    goto LABEL_5;
  }

  v5 = [(RUIElement *)self attributes];
  v6 = [v5 objectForKeyedSubscript:@"searchBarInNavigationBar"];
  v7 = [v6 BOOLValue];

  v8 = MEMORY[0x277CBF3A0];
  v9 = *MEMORY[0x277CBF3A0];
  if (v7)
  {
LABEL_5:
    v20 = v8[1];
    v15 = v8[2];
    v17 = v8[3];
    goto LABEL_6;
  }

  searchBar = self->_searchBar;
  v11 = [v4 view];
  [v11 bounds];
  [(UISearchBar *)searchBar sizeThatFits:v12, v13];
  v15 = v14;
  v17 = v16;

  v18 = [v4 view];
  [v18 safeAreaInsets];
  v20 = v19;

LABEL_6:
  v21 = v9;
  v22 = v20;
  v23 = v15;
  v24 = v17;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    v5 = [(RUITableView *)self tableViewStyle];
    v6 = [v4 initWithFrame:v5 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_tableView;
    self->_tableView = v6;

    [(UITableView *)self->_tableView setSelfSizingInvalidation:2];
    [(UITableView *)self->_tableView setPreservesSuperviewLayoutMargins:1];
    [(UITableView *)self->_tableView setAllowsSelectionDuringEditing:1];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setCellLayoutMarginsFollowReadableWidth:1];
    v8 = [(RUIElement *)self attributes];
    v9 = [v8 objectForKey:@"sectionStyle"];

    if ([v9 isEqualToString:@"compact"])
    {
      [(UITableView *)self->_tableView setSectionHeaderHeight:0.0];
    }

    [(UITableView *)self->_tableView layoutMargins];
    [(UITableView *)self->_tableView setLayoutMargins:?];
    v10 = [(RUIElement *)self attributes];
    v11 = [v10 objectForKeyedSubscript:@"editing"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      [(UITableView *)self->_tableView setEditing:1 animated:0];
    }

    v13 = [(RUIElement *)self attributes];
    v14 = [v13 objectForKeyedSubscript:@"allowsMultipleSelectionDuringEditing"];
    -[UITableView setAllowsMultipleSelectionDuringEditing:](self->_tableView, "setAllowsMultipleSelectionDuringEditing:", [v14 BOOLValue]);

    if (+[RUIPlatform isAppleTV])
    {
      [(UITableView *)self->_tableView _setGradientMaskInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    }

    tableView = self->_tableView;
  }

  return tableView;
}

- (int64_t)tableViewStyle
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKey:@"style"];

  if ([v4 isEqualToString:@"grouped"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"plain"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"insetGrouped"])
  {
    v5 = 2;
  }

  else
  {
    v6 = [(RUITableView *)self objectModel];
    v7 = [v6 style];
    v5 = [v7 tableViewStyle];
  }

  return v5;
}

- (void)_updateSectionContentInsetForSettingsWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(RUIElement *)self attributes];
  v6 = [v5 objectForKey:@"style"];

  if ([v6 isEqualToString:@"settings"])
  {
    v7 = [(RUITableView *)self _isRegularWidth];
    v8 = MEMORY[0x277D76F30];
    if (v7)
    {
      v9 = [(RUITableView *)self view];
      [v9 layoutMargins];
      v11 = v10;

      v12 = [(RUITableView *)self view];
      [v12 safeAreaInsets];
      v14 = v13;

      v15 = 0.0;
      if (v14 <= 0.0)
      {
        v16 = [(RUITableView *)self view];
        [v16 layoutMargins];
        v15 = v17;
      }
    }

    else
    {
      v15 = *MEMORY[0x277D76F30];
      v11 = *MEMORY[0x277D76F30];
    }

    [(UITableView *)self->_tableView _sectionContentInset];
    if (v11 != v19 || v15 != v18)
    {
      v21 = *v8;
      if (v3 && self->_sectionContentInsetInitialized)
      {
        [(UITableView *)self->_tableView _setSectionContentInset:v21, v11, *v8, v15];
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __67__RUITableView__updateSectionContentInsetForSettingsWithAnimation___block_invoke;
        v22[3] = &unk_2782E8D88;
        v22[4] = self;
        *&v22[5] = v21;
        *&v22[6] = v11;
        *&v22[7] = v21;
        *&v22[8] = v15;
        [MEMORY[0x277D75D18] performWithoutAnimation:v22];
        self->_sectionContentInsetInitialized = 1;
      }
    }
  }
}

- (void)setAttributes:(id)a3
{
  v4 = a3;
  v5 = [(RUIElement *)self attributes];

  if (v5 != v4)
  {
    v17.receiver = self;
    v17.super_class = RUITableView;
    [(RUIElement *)&v17 setAttributes:v4];
    v6 = [(RUIElement *)self attributes];
    v7 = [v6 objectForKey:@"scrollEnabled"];

    if ([v7 length] && (objc_msgSend(v7, "BOOLValue") & 1) == 0)
    {
      v8 = [(RUITableView *)self tableView];
      [v8 setScrollEnabled:0];
    }

    v9 = [(RUIElement *)self attributes];
    v10 = [v9 objectForKeyedSubscript:@"backgroundColor"];

    if (v10)
    {
      v11 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v10];
      v12 = [(RUITableView *)self tableView];
      [v12 setBackgroundColor:v11];
    }

    v13 = [(RUIElement *)self attributes];
    v14 = [v13 objectForKeyedSubscript:@"separatorStyle"];

    if (!v14)
    {
      goto LABEL_14;
    }

    if ([v14 isEqualToString:@"none"])
    {
      v15 = 0;
    }

    else
    {
      if (([v14 isEqualToString:@"singleLine"] & 1) == 0 && !objc_msgSend(v14, "isEqualToString:", @"etchedLine"))
      {
        goto LABEL_14;
      }

      v15 = 1;
    }

    v16 = [(RUITableView *)self tableView];
    [v16 setSeparatorStyle:v15];

LABEL_14:
  }
}

- (void)populatePostbackDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) populatePostbackDictionary:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(RUITableView *)self populateSelectionDictionary:v4];
}

- (void)populateSelectionDictionary:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RUIElement *)self identifier];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = self;
    obj = self->_sections;
    v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (!v25)
    {
      goto LABEL_21;
    }

    v24 = *v32;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v8;
        v9 = *(*(&v31 + 1) + 8 * v8);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v10 = [v9 rows];
        v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              v16 = [v15 tableCell];
              if ([v16 isSelected])
              {
                v17 = [v15 tableCell];
                v18 = [v17 selectionStyle];

                if (!v18)
                {
                  continue;
                }

                v19 = [v15 attributes];
                v16 = [v19 objectForKeyedSubscript:@"value"];

                if (v16)
                {
                  [v7 addObject:v16];
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v12);
        }

        v8 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (!v25)
      {
LABEL_21:

        v20 = [v7 copy];
        v21 = [(RUIElement *)v22 identifier];
        [v4 setObject:v20 forKeyedSubscript:v21];

        break;
      }
    }
  }
}

- (id)subElementWithID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_sections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = v10;
LABEL_13:
          v14 = v13;
          goto LABEL_14;
        }

        v13 = [v10 subElementWithID:v4];
        if (v13)
        {
          goto LABEL_13;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (id)subElementsWithName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_sections;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }

        v14 = [v11 subElementsWithName:v4];
        [v5 addObjectsFromArray:v14];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_objectModelIndexPathForIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_embeddedPickerRowIndexPath)
  {
    v6 = [v4 section];
    if (v6 == [(NSIndexPath *)self->_embeddedPickerRowIndexPath section])
    {
      v7 = [v5 row];
      if (v7 > [(NSIndexPath *)self->_embeddedPickerRowIndexPath row])
      {
        v8 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v5 inSection:{"row") - 1, objc_msgSend(v5, "section")}];

        v5 = v8;
      }
    }
  }

  return v5;
}

- (id)objectModelRowForIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RUITableView *)self _objectModelIndexPathForIndexPath:v4];

    v6 = [(RUITableView *)self sections];
    v7 = [v6 objectAtIndex:{objc_msgSend(v5, "section")}];

    v8 = [v5 row];
    v9 = [v7 rows];
    v10 = [v9 count];

    if (v8 >= v10)
    {
      v4 = 0;
    }

    else
    {
      v11 = [v7 rows];
      v4 = [v11 objectAtIndex:{objc_msgSend(v5, "row")}];
    }
  }

  return v4;
}

- (id)indexPathForRow:(id)a3
{
  v4 = a3;
  v5 = [(RUITableView *)self sections];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(RUITableView *)self sections];
      v9 = [v8 objectAtIndex:v7];

      v10 = [v9 rows];
      v11 = [v10 indexOfObject:v4];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v12 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:v7];
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (id)rowWithIdentifier:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(RUITableView *)self sections];
  v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v6 = *v26;
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [v8 rows];
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              v15 = [v14 identifier];
              v16 = [v15 isEqualToString:v4];

              if (v16)
              {
                v17 = v14;

                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
      }

      v17 = 0;
      v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (void)_clearPickers
{
  [(UIDatePicker *)self->_datePicker removeFromSuperview];
  [(UIPickerView *)self->_selectPicker removeFromSuperview];
  pickerBackdrop = self->_pickerBackdrop;

  [(_UIBackdropView *)pickerBackdrop removeFromSuperview];
}

- (void)_setPickerInset:(double)a3
{
  [(UITableView *)self->_tableView contentInset];
  [(UITableView *)self->_tableView setContentInset:?];
  self->_pickerInset = a3;
}

- (void)_setBottomInset:(float)a3
{
  [(UITableView *)self->_tableView contentInset];
  tableView = self->_tableView;

  [(UITableView *)tableView setContentInset:?];
}

- (void)reloadHeadersAndFootersForSection:(id)a3
{
  v8 = a3;
  v4 = [(RUITableView *)self sections];
  v5 = [v4 indexOfObject:v8];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    NSLog(&cfstr_CannotFindSect.isa, v8);
  }

  else
  {
    [MEMORY[0x277D75D18] disableAnimation];
    tableView = self->_tableView;
    v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:v5];
    [(UITableView *)tableView _reloadSectionHeaderFooters:v7 withRowAnimation:5];

    [MEMORY[0x277D75D18] enableAnimation];
  }
}

- (void)reloadRow:(id)a3 atIndexPath:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  sections = self->_sections;
  v7 = a4;
  v8 = a3;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [v7 section]);
  [v9 removeRowAtIndex:{objc_msgSend(v7, "row")}];
  [v9 insertRow:v8 atIndex:{objc_msgSend(v7, "row")}];

  tableView = self->_tableView;
  v13[0] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  if (gAnimatedTransitions)
  {
    v12 = 5;
  }

  else
  {
    v12 = 0;
  }

  [(UITableView *)tableView reloadRowsAtIndexPaths:v11 withRowAnimation:v12];
}

- (void)insertRow:(id)a3 atIndexPath:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  sections = self->_sections;
  v7 = a4;
  v8 = a3;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [v7 section]);
  [v9 insertRow:v8 atIndex:{objc_msgSend(v7, "row")}];

  tableView = self->_tableView;
  v13[0] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  if (gAnimatedTransitions)
  {
    v12 = 5;
  }

  else
  {
    v12 = 0;
  }

  [(UITableView *)tableView insertRowsAtIndexPaths:v11 withRowAnimation:v12];
}

- (void)removeRowAtIndexPath:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  sections = self->_sections;
  v5 = a3;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [v5 section]);
  [v6 removeRowAtIndex:{objc_msgSend(v5, "row")}];
  tableView = self->_tableView;
  v10[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  if (gAnimatedTransitions)
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  [(UITableView *)tableView deleteRowsAtIndexPaths:v8 withRowAnimation:v9];
}

- (id)viewForElementIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  sections = self->_sections;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__RUITableView_viewForElementIdentifier___block_invoke;
  v9[3] = &unk_2782E8DB0;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [(NSMutableArray *)sections enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__RUITableView_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = [a2 viewForElementIdentifier:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)setHeaderViewAttributes:(id)a3
{
  v4 = a3;
  v5 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:v4 parent:self];

  header = self->_header;
  self->_header = v5;
}

- (void)setFooterViewAttributes:(id)a3
{
  v4 = a3;
  v5 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:v4 parent:self];

  footer = self->_footer;
  self->_footer = v5;
}

- (RUIHeader)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    [(RUITableView *)self _loadHeaderView];
    headerView = self->_headerView;
  }

  return headerView;
}

- (CGSize)_tableHeaderSizeForHeader:(id)a3
{
  v4 = a3;
  v5 = [(RUITableView *)self tableView];
  v6 = [v5 readableContentGuide];
  [v6 layoutFrame];
  v8 = v7;

  if (objc_opt_respondsToSelector())
  {
    [v4 headerHeightForWidth:self->_tableView inView:v8];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 headerHeightForWidth:self->_tableView inTableView:v8];
    goto LABEL_5;
  }

  if ([v4 _wantsAutolayout])
  {
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    v13 = *(MEMORY[0x277D76C78] + 8);
    v14 = [(RUITableView *)self tableView];
    v15 = [v14 readableContentGuide];
    [v15 layoutFrame];
    v17 = v16;

    [v4 systemLayoutSizeFittingSize:{v17, v13}];
  }

  else
  {
    [(UITableView *)self->_tableView frame];
    [v4 sizeThatFits:{v18, v19}];
    v8 = v20;
    v10 = v21;
  }

LABEL_6:

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_loadHeaderView
{
  v50[4] = *MEMORY[0x277D85DE8];
  if (self->_header || self->_subHeader || self->_headerTitle || [(RUIElement *)self hasImage])
  {
    v3 = [(RUITableView *)self tableView];
    v4 = [v3 tableHeaderView];

    if (!v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_objectModel);
      v6 = [(RUIElement *)self->_header attributes];
      v7 = [WeakRetained tableHeaderViewForAttributes:v6];

      if (v7 && ([v7 conformsToProtocol:&unk_282D84FE8] & 1) == 0)
      {
        v19 = *MEMORY[0x277CBF3A0];
        v20 = *(MEMORY[0x277CBF3A0] + 8);
        [(RUITableView *)self _tableHeaderSizeForHeader:v7];
        [v7 setFrame:{v19, v20, v21, v22}];
        [(UITableView *)self->_tableView setTableHeaderView:v7];
      }

      else
      {
        v8 = v7;
        v9 = [(RUITableView *)self page];
        v10 = [v9 showsTitlesAsHeaderViews];

        v48 = v7;
        if (v10)
        {
          if (_isInternalInstall())
          {
            v11 = _RUILoggingFacility();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "Attempting modern header", buf, 2u);
            }
          }

          if ([(RUIElement *)self hasImage])
          {
            v12 = objc_alloc_init(MEMORY[0x277D755B8]);
            v13 = [[RUIModernHeaderView alloc] initWithTitle:self->_headerTitle detailText:self->_subHeaderTitle icon:v12];

            v8 = v12;
          }

          else
          {
            v13 = [[RUIModernHeaderView alloc] initWithTitle:self->_headerTitle detailText:self->_subHeaderTitle icon:0];
          }

          [(RUIModernHeaderView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
        }

        else
        {
          if (!v7)
          {
            v8 = [[RUIHeaderView alloc] initWithAttributes:0];
          }

          [(RUIHeaderView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
          v14 = [(RUIElement *)self style];
          [v14 subHeaderTopMargin];
          [(RUIHeaderView *)v8 setSubHeaderTopMargin:?];

          v15 = [(RUIElement *)self style];
          [v15 headerImagePadding];
          [(RUIHeaderView *)v8 setImageLabelPadding:?];

          v16 = [(RUIElement *)self style];
          [v16 headerMargin];
          [(RUIHeaderView *)v8 setHeaderMargin:?];

          v17 = [(RUIElement *)self style];
          v18 = [v17 headerLabelTextColor];
          [(RUIHeaderView *)v8 setHeaderColor:v18];

          v13 = v8;
        }

        [(RUIHeaderElement *)self->_header configureView:v13];
        [(RUISubHeaderElement *)self->_subHeader configureView:v13];
        v23 = objc_alloc_init(RUIReadableContentContainer);
        [(RUIReadableContentContainer *)v23 setPreservesSuperviewLayoutMargins:1];
        v24 = objc_loadWeakRetained(&self->_objectModel);
        v25 = [v24 style];
        [v25 headerContainerSideMargin];
        v27 = v26;
        v28 = objc_loadWeakRetained(&self->_objectModel);
        v29 = [v28 style];
        [v29 headerContainerSideMargin];
        [(RUIReadableContentContainer *)v23 setDirectionalLayoutMargins:0.0, v27, 0.0, v30];

        [(RUIReadableContentContainer *)v23 addSubview:v13];
        [(UITableView *)self->_tableView setTableHeaderView:v23];
        v41 = MEMORY[0x277CCAAD0];
        v47 = [(RUIReadableContentContainer *)v23 topAnchor];
        v46 = [(RUIModernHeaderView *)v13 topAnchor];
        v45 = [v47 constraintEqualToAnchor:v46];
        v50[0] = v45;
        v44 = [(RUIReadableContentContainer *)v23 bottomAnchor];
        v43 = [(RUIModernHeaderView *)v13 bottomAnchor];
        v42 = [v44 constraintEqualToAnchor:v43];
        v50[1] = v42;
        v40 = [(RUIReadableContentContainer *)v23 readableContentGuide];
        v39 = [v40 leadingAnchor];
        v31 = [(RUIModernHeaderView *)v13 leadingAnchor];
        v32 = [v39 constraintEqualToAnchor:v31];
        v50[2] = v32;
        v33 = [(RUIReadableContentContainer *)v23 readableContentGuide];
        v34 = [v33 trailingAnchor];
        v35 = [(RUIModernHeaderView *)v13 trailingAnchor];
        v36 = [v34 constraintEqualToAnchor:v35];
        v50[3] = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
        [v41 activateConstraints:v37];

        headerView = self->_headerView;
        self->_headerView = v13;

        [(RUIElement *)self loadImage];
        v7 = v48;
      }
    }
  }
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = +[RUIHeaderView symbolConfiguration];
  v10 = [v4 imageByApplyingSymbolConfiguration:v5];

  v6 = [(RUITableView *)self page];
  LODWORD(v4) = [v6 showsTitlesAsHeaderViews];

  v7 = [(RUITableView *)self headerView];
  v8 = v7;
  if (v4)
  {
    [v7 setIcon:v10 accessibilityLabel:0];
  }

  else
  {
    [v7 setIconImage:v10];
  }

  v9 = [(RUITableView *)self headerView];
  [v9 layoutIfNeeded];

  [(RUITableView *)self viewDidLayout];
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v5 = [(RUITableView *)self headerView];
  [v5 setTintColor:v4];
}

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(RUITableView *)self page];
  v7 = [v6 showsTitlesAsHeaderViews];

  if ((v7 & 1) == 0)
  {
    v8 = [(RUITableView *)self headerView];
    [v8 setImageSize:{width, height}];
  }

  v9 = [(RUITableView *)self headerView];
  [v9 layoutIfNeeded];

  [(RUITableView *)self viewDidLayout];
}

- (void)setImageAlignment:(unint64_t)a3
{
  v5 = [(RUITableView *)self page];
  v6 = [v5 showsTitlesAsHeaderViews];

  if ((v6 & 1) == 0)
  {
    v7 = [(RUITableView *)self headerView];
    [v7 setImageAlignment:a3];
  }

  v8 = [(RUITableView *)self headerView];
  [v8 layoutIfNeeded];

  [(RUITableView *)self viewDidLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = [(UITableView *)self->_tableView superview];
  [(UITableView *)self->_tableView frame];
  x = v26.origin.x;
  y = v26.origin.y;
  if (CGRectIsEmpty(v26) && v4 != 0)
  {
    [v4 bounds];
    [(UITableView *)self->_tableView setFrame:x, y];
  }

  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained configureTableView:self];

  [(RUITableView *)self _loadHeaderView];
  if (self->_footer)
  {
    v9 = [(UITableView *)self->_tableView tableFooterView];

    if (!v9)
    {
      v10 = objc_loadWeakRetained(&self->_objectModel);
      v11 = [(RUIElement *)self->_footer attributes];
      v12 = [v10 tableFooterViewForAttributes:v11];

      if (v12)
      {
        v13 = *MEMORY[0x277CBF3A0];
        v14 = *(MEMORY[0x277CBF3A0] + 8);
        [(UITableView *)self->_tableView frame];
        [v12 sizeThatFits:{v15, v16}];
        [v12 setFrame:{v13, v14, v17, v18}];
        [(UITableView *)self->_tableView setTableFooterView:v12];
      }
    }
  }

  [(RUITableView *)self _registerForNotifications:1];
  v19 = objc_loadWeakRetained(&self->_objectModel);
  [v19 tableViewOMDidChange:self];

  v20 = [(UITableView *)self->_tableView dataSource];
  v21 = MEMORY[0x277D75D18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __31__RUITableView_viewWillAppear___block_invoke;
  v23[3] = &unk_2782E84F8;
  v24 = v20;
  v25 = self;
  v22 = v20;
  [v21 performWithoutAnimation:v23];
}

uint64_t __31__RUITableView_viewWillAppear___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    [*(*(result + 40) + 80) beginUpdates];
    [*(*(v1 + 40) + 80) layoutIfNeeded];
    v2 = *(*(v1 + 40) + 80);

    return [v2 endUpdates];
  }

  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = [(RUIElement *)self pageElement];
  [v4 reportInternalRenderEvent];

  v5 = [(RUITableView *)self tableView];
  [(RUIElement *)self configureAccessiblityWithTarget:v5];

  [(RUIElement *)self reportInternalRenderEvent];
  v6 = [(RUITableView *)self sections];
  [v6 enumerateObjectsUsingBlock:&__block_literal_global_7];

  v7 = [(RUITableView *)self defaultFirstResponderRow];

  if (v7)
  {
    v8 = [(RUITableView *)self defaultFirstResponderRow];
    v9 = [(RUITableView *)self indexPathForRow:v8];

    [(UITableView *)self->_tableView selectRowAtIndexPath:v9 animated:0 scrollPosition:0];
    [(RUITableView *)self activateRowAtIndexPath:v9 animated:0];
    [(RUITableView *)self setDefaultFirstResponderRow:0];
  }

  tableView = self->_tableView;
  v11 = [(RUIElement *)self attributes];
  v12 = [v11 objectForKeyedSubscript:@"editing"];
  [(UITableView *)tableView setEditing:v12 != 0 animated:0];

  v13 = [(UITableView *)self->_tableView dataSource];
  v14 = MEMORY[0x277D75D18];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __30__RUITableView_viewDidAppear___block_invoke_2;
  v19 = &unk_2782E84F8;
  v20 = v13;
  v21 = self;
  v15 = v13;
  [v14 performWithoutAnimation:&v16];
  [(UITableView *)self->_tableView flashScrollIndicators:v16];
}

uint64_t __30__RUITableView_viewDidAppear___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    [*(*(result + 40) + 80) beginUpdates];
    [*(*(v1 + 40) + 80) layoutIfNeeded];
    v2 = *(*(v1 + 40) + 80);

    return [v2 endUpdates];
  }

  return result;
}

- (void)viewDidLayout
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(RUITableView *)self tableView];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  v6 = [(UITableView *)self->_tableView dataSource];
  [(UITableView *)self->_tableView bounds];
  v9 = v8;
  if (self->_lastLayoutWidth != v9)
  {
    v10 = v7;
    if (v5 == 1)
    {
      v11 = 20.0;
    }

    else
    {
      v11 = 60.0;
    }

    [(UITableView *)self->_tableView contentInset];
    v13 = v10 - v11 - v12;
    [(UITableView *)self->_tableView safeAreaInsets];
    *&v14 = v13 - v14;
    self->_fullscreenCellHeight = *&v14;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = [(RUITableView *)self sections];
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v21 = [v20 rows];
          v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v31;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v31 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                [*(*(&v30 + 1) + 8 * j) clearCachedHeight];
              }

              v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v23);
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v17);
    }
  }

  v26 = MEMORY[0x277D75D18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __29__RUITableView_viewDidLayout__block_invoke;
  v28[3] = &unk_2782E84F8;
  v28[4] = self;
  v29 = v6;
  v27 = v6;
  [v26 performWithoutAnimation:v28];
  self->_lastLayoutWidth = v9;
  [(RUITableView *)self _updateSectionContentInsetForSettingsWithAnimation:0];
}

void __29__RUITableView_viewDidLayout__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v3 = *(MEMORY[0x277CBF3A0] + 24);
  v20 = [*(*(a1 + 32) + 80) tableHeaderView];
  v5 = [*(*(a1 + 32) + 80) tableFooterView];
  v6 = v3;
  v7 = v4;
  if (v20)
  {
    v8 = *(a1 + 32);
    v9 = [v8 headerView];
    [v8 _tableHeaderSizeForHeader:v9];
    v7 = v10;
    v6 = v11;
  }

  v12 = *v2;
  v13 = v2[1];
  if (v5)
  {
    [*(*(a1 + 32) + 80) frame];
    [v5 sizeThatFits:{v14, v15}];
    v4 = v16;
    v3 = v17;
  }

  v18 = *(a1 + 32);
  v19 = *(v18 + 152) - (v6 + v3);
  *(v18 + 152) = v19;
  v22.origin.x = v12;
  v22.origin.y = v13;
  v22.size.width = v7;
  v22.size.height = v6;
  if (!CGRectIsEmpty(v22))
  {
    [v20 setFrame:{v12, v13, v7, v6}];
    [*(*(a1 + 32) + 80) _tableHeaderHeightDidChangeToHeight:v6];
  }

  v23.origin.x = v12;
  v23.origin.y = v13;
  v23.size.width = v4;
  v23.size.height = v3;
  if (!CGRectIsEmpty(v23))
  {
    [v5 setFrame:{v12, v13, v4, v3}];
    [*(*(a1 + 32) + 80) _tableFooterHeightDidChangeToHeight:v3];
  }

  if (*(a1 + 40))
  {
    [*(*(a1 + 32) + 80) beginUpdates];
    [*(*(a1 + 32) + 80) endUpdates];
  }
}

- (void)setSelectedRadioGroupRow:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 attributes];
  v6 = [v5 objectForKeyedSubscript:@"radioGroup"];

  if ([v6 length])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(RUITableView *)self sections];
    v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v19)
    {
      v18 = *v26;
      do
      {
        v7 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = v7;
          v8 = *(*(&v25 + 1) + 8 * v7);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v9 = [v8 rows];
          v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

                v14 = *(*(&v21 + 1) + 8 * i);
                v15 = [v14 attributes];
                v16 = [v15 objectForKey:@"radioGroup"];

                if (v14 != v4 && [v16 isEqualToString:v6])
                {
                  [v14 setSelected:0];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v11);
          }

          v7 = v20 + 1;
        }

        while (v20 + 1 != v19);
        v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v19);
    }

    [v4 setSelected:1];
  }
}

- (void)_showLeftBarButtonItemForLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v4 = [WeakRetained displayedPages];
  v9 = [v4 lastObject];

  [(RUITableView *)self _hideLeftBarButtonItemForLabel];
  self->_showingLeftLabelNavBarButtons = 1;
  v5 = [v9 leftNavigationBarButtonItem];
  oldLeftBarButtonItemForLabel = self->_oldLeftBarButtonItemForLabel;
  self->_oldLeftBarButtonItemForLabel = v5;

  v7 = objc_opt_new();
  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_leftLabelDone_];
  [v9 setLeftNavigationBarButtonItem:v7 barButtonItem:v8];
}

- (void)leftLabelDone:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v5 = [WeakRetained visiblePage];
  v6 = [v5 view];
  [v6 endEditing:0];

  [(RUITableView *)self _hideLeftBarButtonItemForLabel];
}

- (void)_hideLeftBarButtonItemForLabel
{
  if (self->_showingLeftLabelNavBarButtons)
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    v4 = [WeakRetained displayedPages];
    v6 = [v4 lastObject];

    [v6 setLeftNavigationBarButtonItem:self->_oldLeftBarButtonItemForLabel];
    oldLeftBarButtonItemForLabel = self->_oldLeftBarButtonItemForLabel;
    self->_oldLeftBarButtonItemForLabel = 0;

    self->_showingLeftLabelNavBarButtons = 0;
  }
}

- (void)_showRightBarButtonItemForLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v4 = [WeakRetained displayedPages];
  v9 = [v4 lastObject];

  [(RUITableView *)self _hideRightBarButtonItemForLabel];
  self->_showingRightLabelNavBarButtons = 1;
  v5 = [v9 rightNavigationBarButtonItem];
  oldRightBarButtonItemForLabel = self->_oldRightBarButtonItemForLabel;
  self->_oldRightBarButtonItemForLabel = v5;

  v7 = objc_opt_new();
  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_rightLabelDone_];
  [v9 setRightNavigationBarButtonItem:v7 barButtonItem:v8];
}

- (void)rightLabelDone:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v5 = [WeakRetained visiblePage];
  v6 = [v5 view];
  [v6 endEditing:0];

  [(RUITableView *)self _hideRightBarButtonItemForLabel];
}

- (void)_hideRightBarButtonItemForLabel
{
  if (self->_showingRightLabelNavBarButtons)
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    v4 = [WeakRetained displayedPages];
    v6 = [v4 lastObject];

    [v6 setRightNavigationBarButtonItem:self->_oldRightBarButtonItemForLabel];
    oldRightBarButtonItemForLabel = self->_oldRightBarButtonItemForLabel;
    self->_oldRightBarButtonItemForLabel = 0;

    self->_showingRightLabelNavBarButtons = 0;
  }
}

- (void)_datePickerRevert
{
  if (self->_oldPickerDate)
  {
    [(UIDatePicker *)self->_datePicker setDate:?];
    v3 = [(RUITableView *)self objectModelRowForIndexPath:self->_pickerRowIndexPath];
    [v3 setDate:self->_oldPickerDate];
  }
}

- (void)datePickerCancel:(id)a3
{
  [(RUITableView *)self _datePickerRevert];
  v4 = (gAnimatedTransitions & 1) == 0;

  [(RUITableView *)self hidePickerViewAnimated:v4];
}

- (void)datePickerDone:(id)a3
{
  v5 = [(RUITableView *)self objectModelRowForIndexPath:self->_pickerRowIndexPath];
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained tableViewOM:self elementDidChange:v5 action:2 completion:0];

  [(RUITableView *)self hidePickerViewAnimated:(gAnimatedTransitions & 1) == 0];
}

- (void)_showDatePickerNavBarButtonsIfNeededForRow:(id)a3
{
  v4 = [a3 attributes];
  v5 = [v4 objectForKeyedSubscript:@"url"];

  if (v5)
  {
    v6 = [(UIDatePicker *)self->_datePicker date];
    oldPickerDate = self->_oldPickerDate;
    self->_oldPickerDate = v6;

    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    v9 = [WeakRetained displayedPages];
    v24 = [v9 lastObject];

    self->_showingPickerNavBarButtons = 1;
    v10 = [v24 leftNavigationBarButtonItem];
    oldLeftBarButtonItemForPicker = self->_oldLeftBarButtonItemForPicker;
    self->_oldLeftBarButtonItemForPicker = v10;

    v12 = [v24 rightNavigationBarButtonItem];
    oldRightBarButtonItemForPicker = self->_oldRightBarButtonItemForPicker;
    self->_oldRightBarButtonItemForPicker = v12;

    v14 = objc_opt_new();
    v15 = objc_alloc(MEMORY[0x277D751E0]);
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_282D68F58 table:@"Localizable"];
    v18 = [v15 initWithTitle:v17 style:0 target:self action:sel_datePickerCancel_];

    [v24 setLeftNavigationBarButtonItem:v14 barButtonItem:v18];
    v19 = objc_opt_new();
    v20 = objc_alloc(MEMORY[0x277D751E0]);
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"DONE" value:&stru_282D68F58 table:@"Localizable"];
    v23 = [v20 initWithTitle:v22 style:2 target:self action:sel_datePickerDone_];

    [v24 setRightNavigationBarButtonItem:v19 barButtonItem:v23];
  }
}

- (void)_hideDatePickerNavBarButtonsIfNeeded
{
  if (self->_showingPickerNavBarButtons)
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    v4 = [WeakRetained displayedPages];
    v7 = [v4 lastObject];

    [v7 setLeftNavigationBarButtonItem:self->_oldLeftBarButtonItemForPicker];
    [v7 setRightNavigationBarButtonItem:self->_oldRightBarButtonItemForPicker];
    oldLeftBarButtonItemForPicker = self->_oldLeftBarButtonItemForPicker;
    self->_oldLeftBarButtonItemForPicker = 0;

    oldRightBarButtonItemForPicker = self->_oldRightBarButtonItemForPicker;
    self->_oldRightBarButtonItemForPicker = 0;

    self->_showingPickerNavBarButtons = 0;
  }
}

- (void)showPickerViewForRow:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v91 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(RUITableView *)self _datePickerRevert];
  [(RUITableView *)self _hideDatePickerNavBarButtonsIfNeeded];
  [(RUITableView *)self _selectPickerFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 attributes];
  v16 = [v15 objectForKeyedSubscript:@"class"];

  v17 = [v6 attributes];
  v18 = [v17 objectForKey:@"inline"];
  v19 = [v18 BOOLValue];

  if (self->_embeddedPickerRowIndexPath)
  {
    [(RUITableView *)self hidePickerViewAnimated:v4];
  }

  v69 = [(RUITableView *)self indexPathForRow:v6];
  objc_storeStrong(&self->_pickerRowIndexPath, v69);
  v20 = [(UITableView *)self->_tableView firstResponder];
  [v20 resignFirstResponder];

  if (v4)
  {
    UIKeyboardOrderOutAutomatic();
  }

  else
  {
    UIKeyboardOrderOutAutomaticSkippingAnimation();
  }

  if (![v16 isEqualToString:@"select"])
  {
    if (![v16 isEqualToString:@"datePicker"])
    {
      v31 = 0;
      goto LABEL_50;
    }

    v68 = v4;
    v67 = v16;
    self->_showDatePicker = 1;
    datePicker = self->_datePicker;
    if (datePicker)
    {
      v23 = [(UIDatePicker *)datePicker allTargets];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v85 objects:v90 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v86;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v86 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [(UIDatePicker *)self->_datePicker removeTarget:*(*(&v85 + 1) + 8 * i) action:0 forControlEvents:0xFFFFFFFFLL];
          }

          v25 = [v23 countByEnumeratingWithState:&v85 objects:v90 count:16];
        }

        while (v25);
      }

      [(UIDatePicker *)self->_datePicker removeFromSuperview];
    }

    if (!self->_pickerBackdrop)
    {
      v28 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:2020 style:{v8, v10, v12, v14}];
      pickerBackdrop = self->_pickerBackdrop;
      self->_pickerBackdrop = v28;
    }

    v30 = [v6 dateFormatterCalendarIdentifier];
    v66 = v30;
    if (v30)
    {
      [MEMORY[0x277CBEA80] calendarWithIdentifier:v30];
    }

    else
    {
      [MEMORY[0x277CBEA80] currentCalendar];
    }
    v41 = ;
    v42 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    v65 = v41;
    [v41 setTimeZone:v42];

    v43 = [v6 newConfiguredDatePicker];
    v44 = self->_datePicker;
    self->_datePicker = v43;

    [(UIDatePicker *)self->_datePicker setFrame:v8, v10, v12, v14];
    v31 = self->_datePicker;
    v45 = [v6 datePickerMode];
    v46 = 1;
    if ((v45 - 3) >= 2 && (v45 - 4270) >= 2)
    {
      if ([(UIDatePicker *)self->_datePicker datePickerStyle]!= UIDatePickerStyleCompact)
      {
LABEL_38:
        -[UIDatePicker setDatePickerMode:](self->_datePicker, "setDatePickerMode:", [v6 datePickerMode]);
        v47 = ([(UIDatePicker *)self->_datePicker datePickerStyle]== UIDatePickerStyleInline) | v19;
        if (v47)
        {
          [(UIDatePicker *)self->_datePicker removeFromSuperview];
          [(_UIBackdropView *)self->_pickerBackdrop removeFromSuperview];
          v48 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v69 inSection:{"row") + 1, objc_msgSend(v69, "section")}];
        }

        else
        {
          v49 = [(UITableView *)self->_tableView superview];
          [v49 addSubview:self->_pickerBackdrop];

          v50 = [(UITableView *)self->_tableView superview];
          [v50 addSubview:self->_datePicker];

          v48 = 0;
        }

        embeddedPickerRowIndexPath = self->_embeddedPickerRowIndexPath;
        self->_embeddedPickerRowIndexPath = v48;

        [(RUITableView *)self _showDatePickerNavBarButtonsIfNeededForRow:v6];
        v16 = v67;
        LOBYTE(v19) = v47;
        if (!v31)
        {
          goto LABEL_50;
        }

        goto LABEL_42;
      }

      v46 = 3;
    }

    [(UIDatePicker *)self->_datePicker setPreferredDatePickerStyle:v46];
    goto LABEL_38;
  }

  v68 = v4;
  self->_showSelectPicker = 1;
  selectPicker = self->_selectPicker;
  if (selectPicker)
  {
    [(UIPickerView *)selectPicker setDelegate:v6];
    [(UIPickerView *)self->_selectPicker reloadAllComponents];
  }

  else
  {
    if (!self->_pickerBackdrop)
    {
      v32 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:2020 style:{v8, v10, v12, v14}];
      v33 = self->_pickerBackdrop;
      self->_pickerBackdrop = v32;
    }

    v34 = [objc_alloc(MEMORY[0x277D75840]) initWithFrame:{v8, v10, v12, v14}];
    v35 = self->_selectPicker;
    self->_selectPicker = v34;

    [(UIPickerView *)self->_selectPicker setAutoresizingMask:10];
    [(UIPickerView *)self->_selectPicker setDelegate:v6];
    [(UIPickerView *)self->_selectPicker setShowsSelectionIndicator:1];
  }

  v31 = self->_selectPicker;
  if (v19)
  {
    [(_UIBackdropView *)self->_pickerBackdrop removeFromSuperview];
    v36 = [v69 copy];
  }

  else
  {
    v37 = [(UITableView *)self->_tableView superview];
    [v37 addSubview:self->_pickerBackdrop];

    v38 = [(UITableView *)self->_tableView superview];
    [v38 addSubview:self->_selectPicker];

    v36 = 0;
  }

  v39 = self->_embeddedPickerRowIndexPath;
  self->_embeddedPickerRowIndexPath = v36;

  v40 = [v6 selectedRow];
  if (v40 == -1)
  {
    [v6 pickerView:self->_selectPicker didSelectRow:0 inComponent:0];
    v40 = 0;
  }

  [(UIPickerView *)self->_selectPicker selectRow:v40 inColumn:0 animated:0];
  if (v31)
  {
LABEL_42:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__RUITableView_showPickerViewForRow_animated___block_invoke;
    aBlock[3] = &unk_2782E7F30;
    aBlock[4] = self;
    v52 = _Block_copy(aBlock);
    v53 = [(RUITableView *)self tableView];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __46__RUITableView_showPickerViewForRow_animated___block_invoke_2;
    v77[3] = &unk_2782E8DF8;
    v77[4] = self;
    v80 = v8;
    v81 = v10;
    v82 = v12;
    v83 = v14;
    v31 = v31;
    v78 = v31;
    v54 = v53;
    v79 = v54;
    v55 = _Block_copy(v77);
    v56 = v69;
    if (v19)
    {
      v89 = self->_embeddedPickerRowIndexPath;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
      v57 = v54;
      v59 = v58 = v16;
      [v57 insertRowsAtIndexPaths:v59 withRowAnimation:0];

      v60 = self->_embeddedPickerRowIndexPath;
      v52[2](v52);
      v56 = v60;
      v16 = v58;
      v54 = v57;
    }

    else if (!v68 || self->_datePicker && self->_selectPicker)
    {
      v55[2](v55);
      v52[2](v52);
    }

    else
    {
      [(UIDatePicker *)v31 setFrame:v8, v10 + v14, v12, v14];
      v61 = v16;
      v62 = MEMORY[0x277D75D18];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __46__RUITableView_showPickerViewForRow_animated___block_invoke_3;
      v75[3] = &unk_2782E8180;
      v76 = v55;
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __46__RUITableView_showPickerViewForRow_animated___block_invoke_4;
      v73[3] = &unk_2782E87F8;
      v74 = v52;
      v63 = v62;
      v16 = v61;
      [v63 animateWithDuration:v75 animations:v73 completion:0.3];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__RUITableView_showPickerViewForRow_animated___block_invoke_5;
    block[3] = &unk_2782E8A90;
    block[4] = self;
    v71 = v56;
    v72 = v68;
    v64 = v56;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_50:
}

void __46__RUITableView_showPickerViewForRow_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 96;
  v4 = *(v2 + 96);
  if (v4 && (*(v2 + 104) & 1) == 0 && (*(v2 + 88) & 1) != 0 || (v3 = 328, (v4 = *(v2 + 328)) != 0) && (*(v2 + 88) & 1) == 0 && *(v2 + 104) == 1)
  {
    [v4 removeFromSuperview];
    v5 = *(a1 + 32);
    v6 = *(v5 + v3);
    *(v5 + v3) = 0;
  }
}

void __46__RUITableView_showPickerViewForRow_animated___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 112) setAutoresizingMask:10];
  [*(*(a1 + 32) + 112) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 32) _setPickerInset:*(a1 + 80)];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 264));
  v3 = [WeakRetained visiblePage];
  v4 = [v3 accessoryViews];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 tableViewDidUpdateContentInset:*(a1 + 48)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)hidePickerViewAnimated:(BOOL)a3
{
  v3 = a3;
  v47[1] = *MEMORY[0x277D85DE8];
  [(RUITableView *)self _selectPickerFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  self->_showSelectPicker = 0;
  self->_showDatePicker = 0;
  datePicker = self->_datePicker;
  if (!datePicker)
  {
    datePicker = self->_selectPicker;
  }

  v14 = datePicker;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__RUITableView_hidePickerViewAnimated___block_invoke;
  aBlock[3] = &unk_2782E7F30;
  aBlock[4] = self;
  v15 = _Block_copy(aBlock);
  if (self->_embeddedPickerRowIndexPath)
  {
    [(UITableView *)self->_tableView beginUpdates];
    tableView = self->_tableView;
    v47[0] = self->_embeddedPickerRowIndexPath;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    [(UITableView *)tableView deleteRowsAtIndexPaths:v17 withRowAnimation:0];

    embeddedPickerRowIndexPath = self->_embeddedPickerRowIndexPath;
    self->_embeddedPickerRowIndexPath = 0;

    [(UITableView *)self->_tableView endUpdates];
  }

  else
  {
    v19 = v8 + v12;
    v20 = [(RUITableView *)self tableView];
    if (v3)
    {
      v21 = MEMORY[0x277D75D18];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __39__RUITableView_hidePickerViewAnimated___block_invoke_2;
      v38[3] = &unk_2782E8DF8;
      v38[4] = self;
      v41 = v6;
      v42 = v19;
      v43 = v10;
      v44 = v12;
      v39 = v14;
      v40 = v20;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __39__RUITableView_hidePickerViewAnimated___block_invoke_3;
      v36[3] = &unk_2782E87F8;
      v37 = v15;
      [v21 animateWithDuration:v38 animations:v36 completion:0.3];
    }

    else
    {
      [(_UIBackdropView *)self->_pickerBackdrop setFrame:v6, v19, v10, v12];
      v31 = v14;
      [v14 setFrame:{v6, v19, v10, v12}];
      [(RUITableView *)self _setPickerInset:0.0];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      WeakRetained = objc_loadWeakRetained(&self->_objectModel);
      v23 = [WeakRetained visiblePage];
      v24 = [v23 accessoryViews];

      v25 = [v24 countByEnumeratingWithState:&v32 objects:v46 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v33;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v33 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v32 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v29 tableViewDidUpdateContentInset:v20];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v32 objects:v46 count:16];
        }

        while (v26);
      }

      v15[2](v15);
      v3 = 0;
      v14 = v31;
    }
  }

  [(RUITableView *)self _hideDatePickerNavBarButtonsIfNeeded];
  [(UITableView *)self->_tableView deselectRowAtIndexPath:self->_pickerRowIndexPath animated:v3];
  pickerRowIndexPath = self->_pickerRowIndexPath;
  self->_pickerRowIndexPath = 0;
}

uint64_t __39__RUITableView_hidePickerViewAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 96;
  v4 = *(v2 + 96);
  if (v4 || (v3 = 328, (v4 = *(v2 + 328)) != 0))
  {
    [v4 removeFromSuperview];
    v5 = *(a1 + 32);
    v6 = *(v5 + v3);
    *(v5 + v3) = 0;
  }

  v7 = *(*(a1 + 32) + 112);

  return [v7 removeFromSuperview];
}

void __39__RUITableView_hidePickerViewAnimated___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 112) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 32) _setPickerInset:0.0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 264));
  v3 = [WeakRetained visiblePage];
  v4 = [v3 accessoryViews];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 tableViewDidUpdateContentInset:*(a1 + 48)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(RUITableView *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(RUITableView *)self sections];
  v7 = [v6 objectAtIndex:a4];

  if (([v7 configured] & 1) == 0)
  {
    v8 = [(RUITableView *)self objectModel];
    [v8 configureSection:v7];

    [v7 setConfigured:1];
  }

  v9 = [v7 rows];
  v10 = [v9 count];

  embeddedPickerRowIndexPath = self->_embeddedPickerRowIndexPath;
  if (embeddedPickerRowIndexPath && [(NSIndexPath *)embeddedPickerRowIndexPath section]== a4)
  {
    ++v10;
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v37[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(RUITableView *)self objectModelRowForIndexPath:v7];
  if ([v7 isEqual:self->_embeddedPickerRowIndexPath])
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"embeddedPickerCell"];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"embeddedPickerCell"];
    }

    v35 = v7;
    v36 = v6;
    [v9 setAccessibilityIdentifier:@"embeddedPickerCell"];
    v34 = v8;
    [v8 configureAccessiblityWithTarget:v9];
    datePicker = self->_datePicker;
    if (!datePicker)
    {
      datePicker = self->_selectPicker;
    }

    v11 = datePicker;
    v12 = [v9 contentView];
    [v12 addSubview:v11];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = MEMORY[0x277CCAAD0];
    v32 = [v11 topAnchor];
    v33 = [v9 contentView];
    v31 = [v33 topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:0.0];
    v37[0] = v30;
    v28 = [v11 bottomAnchor];
    v29 = [v9 contentView];
    v26 = [v29 bottomAnchor];
    v25 = [v28 constraintEqualToAnchor:v26 constant:0.0];
    v37[1] = v25;
    v24 = [v11 leadingAnchor];
    v13 = [v9 contentView];
    v14 = [v13 leadingAnchor];
    v15 = [v24 constraintEqualToAnchor:v14 constant:0.0];
    v37[2] = v15;
    v16 = [v11 trailingAnchor];
    v17 = [v9 contentView];
    v18 = [v17 trailingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:0.0];
    v37[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
    [v27 activateConstraints:v20];

    v7 = v35;
    v6 = v36;
    v8 = v34;
  }

  else
  {
    if (([v8 configured] & 1) == 0)
    {
      v21 = [(RUITableView *)self objectModel];
      [v21 configureRow:v8];
    }

    v9 = [v8 tableCell];
    [v8 configureAccessiblityWithTarget:v9];
    if (-[RUITableView tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", v6, [v7 section]) == 1)
    {
      [v9 setTextFieldOffset:0.0];
    }
  }

  v22 = v9;

  return v9;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v17 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(RUITableView *)self objectModelRowForIndexPath:v7];
    v9 = [v8 tableCell];
    if (v9 == v17)
    {
      v10 = [v8 attributes];
      v11 = [v10 objectForKeyedSubscript:@"labelBold"];
      v12 = [v11 BOOLValue];

      if (!v12)
      {
LABEL_6:

        goto LABEL_7;
      }

      v9 = [v17 ruiTextLabel];
      v13 = MEMORY[0x277D74300];
      v14 = [v17 ruiTextLabel];
      v15 = [v14 font];
      [v15 pointSize];
      v16 = [v13 boldSystemFontOfSize:?];
      [v9 setFont:v16];
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(RUITableView *)self sections];
  v6 = [v5 objectAtIndex:a4];

  if ([v6 hasCustomHeader])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v6 header];
    v7 = [v8 body];
  }

  return v7;
}

- (int64_t)tableView:(id)a3 titleAlignmentForHeaderInSection:(int64_t)a4
{
  v5 = [(RUITableView *)self sections];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 header];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 header];
    v10 = [v9 labelAlignment];
  }

  else
  {
    v10 = 4;
  }

  return v10;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(RUITableView *)self sections];
  v6 = [v5 objectAtIndex:a4];

  if ([v6 hasCustomFooter])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v6 footer];
    v7 = [v8 body];
  }

  return v7;
}

- (int64_t)tableView:(id)a3 titleAlignmentForFooterInSection:(int64_t)a4
{
  v5 = [(RUITableView *)self sections];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 footer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 footer];
    v10 = [v9 labelAlignment];
  }

  else
  {
    v10 = 4;
  }

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = [(RUITableView *)self sections];
  v7 = [v6 objectAtIndex:a4];

  v8 = [v7 header];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v7 header];
    [v10 loadElementIfNeeded];
    v11 = [v10 view];
    [v11 intrinsicContentSize];
    v13 = v12;
  }

  else if ([v7 hasCustomHeader])
  {
    v13 = *MEMORY[0x277D76F30];
  }

  else
  {
    v14 = [(RUIElement *)self style];
    [v14 sectionSpacing];
    v16 = v15;

    v17 = [(RUIElement *)self style];
    v18 = v17;
    if (a4 < 1 || v16 == 0.0)
    {
      [v17 firstSectionSpacing];
      v21 = v20;

      if (v21 == -1.0)
      {
        v13 = 31.0;
      }

      else
      {
        v22 = [(RUIElement *)self style];
        [v22 firstSectionSpacing];
        v13 = v23;
      }

      v24 = [v7 header];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v26 = [v7 headerView];
        v25 = v26 == 0;
      }

      if (a4 || v25)
      {
        [v7 headerHeight];
        if (a4 || v27 != 0.0)
        {
          [v7 headerHeight];
          v13 = v28;
        }
      }
    }

    else
    {
      [v17 sectionSpacing];
      v13 = v19;
    }
  }

  return v13;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(RUITableView *)self sections];
  v8 = [v7 objectAtIndex:a4];

  v9 = [v8 header];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v8 header];
    v12 = [v11 view];
    [v12 setBackgroundColor:0];

    [v11 loadElementIfNeeded];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3010000000;
    v25 = 0;
    v26 = 0;
    v24[3] = &unk_21BACC44D;
    v13 = [v11 view];
    [v13 intrinsicContentSize];
    v25 = v14;
    v26 = v15;

    objc_initWeak(&location, v6);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__RUITableView_tableView_viewForHeaderInSection___block_invoke;
    v21[3] = &unk_2782E8E20;
    objc_copyWeak(&v22, &location);
    v21[4] = v24;
    [v11 setDidLayoutSubviewsHandler:v21];
    v16 = [v11 view];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    _Block_object_dispose(v24, 8);
  }

  else if ([v8 hasCustomHeader])
  {
    v16 = [v8 containerizedHeaderView];
    v17 = [v16 headerView];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [v16 headerView];
      [v19 setSectionIsFirst:a4 == 0];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 setTableView:v6];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __49__RUITableView_tableView_viewForHeaderInSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 view];

  [v4 intrinsicContentSize];
  v6 = v5;
  v8 = v7;

  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 32) != v6 || *(v9 + 40) != v8)
  {
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    [WeakRetained beginUpdates];
    [WeakRetained endUpdates];
  }
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(RUITableView *)self sections];
  v8 = [v7 objectAtIndex:a4];

  v9 = [v8 header];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v10 = [v8 rows];
  if ([v10 count])
  {

LABEL_4:
    goto LABEL_5;
  }

  v16 = [v8 footer];

  if (!v16)
  {
    v15 = 0.0;
    goto LABEL_11;
  }

LABEL_5:
  if ([v8 hasCustomFooter] && (objc_msgSend(v6, "readableContentGuide"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "layoutFrame"), v13 = v12, v11, v13 > 0.0))
  {
    v15 = *MEMORY[0x277D76F30];
  }

  else
  {
    [v8 footerHeight];
    v15 = v14;
  }

LABEL_11:

  return v15;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(RUITableView *)self sections];
  v8 = [v7 objectAtIndex:a4];

  v9 = [v8 footer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v8 footer];
    v12 = [v11 view];
    [v12 setBackgroundColor:0];

    [v11 loadElementIfNeeded];
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3010000000;
    v22 = 0;
    v23 = 0;
    v21[3] = &unk_21BACC44D;
    v13 = [v11 view];
    [v13 intrinsicContentSize];
    v22 = v14;
    v23 = v15;

    objc_initWeak(&location, v6);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__RUITableView_tableView_viewForFooterInSection___block_invoke;
    v18[3] = &unk_2782E8E20;
    objc_copyWeak(&v19, &location);
    v18[4] = v21;
    [v11 setDidLayoutSubviewsHandler:v18];
    v16 = [v11 view];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    _Block_object_dispose(v21, 8);
  }

  else if ([v8 hasCustomFooter])
  {
    v16 = [v8 containerizedFooterView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 setTableView:v6];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __49__RUITableView_tableView_viewForFooterInSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 view];

  [v4 intrinsicContentSize];
  v6 = v5;
  v8 = v7;

  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 32) != v6 || *(v9 + 40) != v8)
  {
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    [WeakRetained beginUpdates];
    [WeakRetained endUpdates];
  }
}

- (CGRect)_selectPickerFrame
{
  v2 = [(UITableView *)self->_tableView superview];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v6 + -216.0;
  v8 = 216.0;
  v9 = 0.0;
  v10 = v4;
  result.size.height = v8;
  result.size.width = v10;
  result.origin.y = v7;
  result.origin.x = v9;
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 beginUpdates];
  [(RUITableView *)self activateRowAtIndexPath:v6 animated:(gAnimatedTransitions & 1) == 0];
  v8 = [(RUITableView *)self objectModelRowForIndexPath:v6];

  [v8 didBecomeSelected];
  [v7 endUpdates];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v13 = a4;
  v6 = a3;
  [v6 beginUpdates];
  v7 = [(RUITableView *)self tableView];
  v8 = [v7 allowsMultipleSelectionDuringEditing];
  v9 = [(RUITableView *)self tableView];
  v10 = [v9 isEditing];

  if (v8 && v10)
  {
    v11 = [(RUITableView *)self objectModel];
    [v11 tableViewOMDidChange:self];
  }

  v12 = [(RUITableView *)self objectModelRowForIndexPath:v13];
  [v12 didBecomeDeselected];
  [v6 endUpdates];
}

- (void)activateRowAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(UITableView *)self->_tableView beginUpdates];
  v7 = [(RUITableView *)self objectModelRowForIndexPath:v6];
  v8 = [v7 attributes];
  v9 = [v8 objectForKey:@"class"];

  if (![v7 enabled])
  {
    goto LABEL_33;
  }

  self->_showSelectPicker = 0;
  v10 = [(RUITableView *)self sections];
  v11 = [v10 objectAtIndex:{objc_msgSend(v6, "section")}];

  v46 = v11;
  if (![v9 isEqualToString:@"select"])
  {
    if (![v9 isEqualToString:@"datePicker"])
    {
      if (([v9 isEqualToString:@"editableText"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"numberPicker"))
      {
        [(RUITableView *)self hidePickerViewAnimated:1];
        v12 = [v7 tableCell];
        v13 = [v12 editableTextField];
        v14 = [v13 isFirstResponder];

        if (v14)
        {
          goto LABEL_17;
        }

        v15 = [v7 tableCell];
        v16 = [v15 editableTextField];
        [v16 becomeFirstResponder];
      }

      else
      {
        v17 = [v11 showAllRow];

        [(RUITableView *)self hidePickerViewAnimated:1];
        if (v7 == v17)
        {
          [v11 tappedShowAllRowWithTable:self->_tableView];
          goto LABEL_17;
        }

        v15 = [(UITableView *)self->_tableView firstResponder];
        [v15 resignFirstResponder];
      }

      goto LABEL_17;
    }

    if ([v7 datePickerStyle] == 2)
    {
      [v7 activateDatePicker];
      [(UITableView *)self->_tableView deselectRowAtIndexPath:v6 animated:v4];
      goto LABEL_17;
    }

    if ([(RUITableView *)self isShowingPicker])
    {
      [(RUITableView *)self hidePickerViewAnimated:1];
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  if (([(NSIndexPath *)self->_pickerRowIndexPath isEqual:v6]& 1) == 0)
  {
LABEL_4:
    [(RUITableView *)self showPickerViewForRow:v7 animated:v4];
  }

LABEL_17:
  if (self->_datePicker && !self->_showDatePicker || self->_selectPicker && !self->_showSelectPicker)
  {
    [(RUITableView *)self hidePickerViewAnimated:v4];
  }

  if ([v9 isEqualToString:@"selectPage"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    v19 = [v7 linkedPage];
    [WeakRetained _displaySupplementalPage:v19];

    [(UITableView *)self->_tableView deselectRowAtIndexPath:v6 animated:(gAnimatedTransitions & 1) == 0];
  }

  if (([v9 isEqualToString:@"button"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"htmlButton"))
  {
    [(UITableView *)self->_tableView deselectRowAtIndexPath:v6 animated:(gAnimatedTransitions & 1) == 0];
    v20 = objc_loadWeakRetained(&self->_objectModel);
    [v20 tableViewOM:self elementDidChange:v7 action:2 completion:0];
  }

  else if (([v9 isEqualToString:@"link"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"htmlLink"))
  {
    [(UITableView *)self->_tableView deselectRowAtIndexPath:v6 animated:(gAnimatedTransitions & 1) == 0];
    [(RUITableView *)self rowDidChange:v7 action:2];
  }

  else
  {
    v30 = [v7 attributes];
    v31 = [v30 objectForKey:@"radioGroup"];

    if ([v31 length])
    {
      [(RUITableView *)self setSelectedRadioGroupRow:v7];
      [(UITableView *)self->_tableView deselectRowAtIndexPath:v6 animated:(gAnimatedTransitions & 1) == 0];
      [(RUITableView *)self rowDidChange:v7 action:2];
      v32 = [(RUITableView *)self objectModel];
      v33 = [v32 visiblePage];
      v34 = [v33 parentPage];

      if (v34)
      {
        v43 = v31;
        v44 = v32;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = [(RUITableView *)self sections];
        v35 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v48;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v48 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v47 + 1) + 8 * i);
              v40 = [v39 rows];
              if ([v40 containsObject:v7])
              {
                v41 = [v39 attributes];
                v42 = [v41 objectForKey:@"autoGoBack"];

                if (v42)
                {
                  [v44 back:self];
                  goto LABEL_52;
                }
              }

              else
              {
              }
            }

            v36 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v36);
        }

LABEL_52:

        v31 = v43;
        v32 = v44;
      }
    }
  }

  v21 = [v7 attributes];
  v22 = [v21 objectForKeyedSubscript:@"alternateDetailLabel"];

  if (v22)
  {
    [v7 setShowAlternateDetailLabel:{objc_msgSend(v7, "showAlternateDetailLabel") ^ 1}];
    tableView = self->_tableView;
    v51 = v6;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    [(UITableView *)tableView reloadRowsAtIndexPaths:v24 withRowAnimation:5];
  }

  v25 = [(RUITableView *)self tableView];
  v26 = [v25 allowsMultipleSelectionDuringEditing];
  v27 = [(RUITableView *)self tableView];
  v28 = [v27 isEditing];

  if (v26 && v28)
  {
    v29 = [(RUITableView *)self objectModel];
    [v29 tableViewOMDidChange:self];
  }

  [(UITableView *)self->_tableView endUpdates];

LABEL_33:
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RUITableView *)self objectModelRowForIndexPath:v7];
  v9 = [v8 tableCell];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = *MEMORY[0x277D76F30];
  }

  else if ([(NSIndexPath *)self->_embeddedPickerRowIndexPath isEqual:v7])
  {
    datePicker = self->_datePicker;
    if (!datePicker)
    {
      datePicker = self->_selectPicker;
    }

    v15 = datePicker;
    [v15 sizeToFit];
    [v15 frame];
    v11 = v16;
  }

  else
  {
    LODWORD(v12) = 2139095040;
    LODWORD(v13) = 2139095040;
    [v8 rowHeightWithMax:v6 peggedHeight:v7 tableView:v12 indexPath:v13];
    if (v17 == -1.0)
    {
      v18 = *MEMORY[0x277D76F30];
      v17 = v18;
    }

    v11 = v17;
  }

  return v11;
}

- (BOOL)tableView:(id)a3 canFocusRowAtIndexPath:(id)a4
{
  v4 = [(RUITableView *)self objectModelRowForIndexPath:a4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(RUITableView *)self objectModelRowForIndexPath:a4];
  v5 = [v4 isEditingEnabled];

  return v5;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RUITableView *)self objectModelRowForIndexPath:v7];
  v9 = [v8 deleteAction];
  if (v9)
  {
  }

  else
  {
    v10 = [v8 attributes];
    v11 = [v10 objectForKeyedSubscript:@"deletionFunction"];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_5;
    }
  }

  v12 = 1;
LABEL_5:

  return v12;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RUITableView *)self objectModelRowForIndexPath:v6];
  v9 = [(RUITableView *)self tableView:v7 editingStyleForRowAtIndexPath:v6];

  if (v9 != 1)
  {
    LOBYTE(v9) = [v8 indentWhileEditing];
  }

  return v9;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v14 = a5;
  if (a4 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    v8 = [WeakRetained tableViewOM:self deleteRowAtIndexPath:v14];

    if (v8)
    {
      v9 = [(RUITableView *)self sections];
      v10 = [v9 objectAtIndex:{objc_msgSend(v14, "section")}];

      [v10 removeRowAtIndex:{objc_msgSend(v14, "row")}];
      tableView = self->_tableView;
      v12 = [MEMORY[0x277CBEA60] arrayWithObject:v14];
      if (gAnimatedTransitions)
      {
        v13 = 5;
      }

      else
      {
        v13 = 100;
      }

      [(UITableView *)tableView deleteRowsAtIndexPaths:v12 withRowAnimation:v13];
    }
  }
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(RUITableView *)self sections];
  v8 = [v7 objectAtIndex:a4];

  if ([v8 hasValueForDrawsTopSeparator])
  {
    v9 = [v8 drawTopSeparator];
  }

  else
  {
    v9 = [v6 _drawsSeparatorAtTopOfSections];
  }

  v10 = v9;

  return v10;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RUITableView *)self sections];
  v12 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v7 = [v12 rows];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  v10 = [v9 detailButton];

  if (v10)
  {
    v11 = [v9 detailButton];
    [(RUITableView *)self performAction:2 forElement:v11 completion:0];
  }
}

- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4
{
  v4 = [(RUITableView *)self objectModelRowForIndexPath:a4];
  v5 = [v4 isCopyable];

  return v5;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v5 = [(RUITableView *)self objectModelRowForIndexPath:a4, a5.x, a5.y];
  if ([v5 isCopyable])
  {
    v6 = MEMORY[0x277D753B0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__RUITableView_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
    v9[3] = &unk_2782E8E70;
    v10 = v5;
    v7 = [v6 configurationWithIdentifier:0 previewProvider:0 actionProvider:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __74__RUITableView_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D750C8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"COPY" value:&stru_282D68F58 table:@"Localizable"];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __74__RUITableView_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
  v18 = &unk_2782E8E48;
  v19 = *(a1 + 32);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:&v15];

  v7 = [*(a1 + 32) attributes];
  v8 = [v7 objectForKeyedSubscript:@"contextMenuTitle"];

  v9 = MEMORY[0x277D75710];
  if (v8)
  {
    v10 = [*(a1 + 32) attributes];
    v11 = [v10 objectForKeyedSubscript:@"contextMenuTitle"];
    v21[0] = v6;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v13 = [v9 menuWithTitle:v11 children:v12];
  }

  else
  {
    v20 = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v13 = [v9 menuWithChildren:v10];
  }

  return v13;
}

void __74__RUITableView_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x277D75810] generalPasteboard];
  v2 = [*(a1 + 32) copyText];
  [v3 setString:v2];
}

- (BOOL)tableView:(id)a3 canPerformAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  v7 = [(RUITableView *)self objectModelRowForIndexPath:a5];
  v8 = v7;
  v9 = sel_copy_ == a4 && ([v7 isCopyable] & 1) != 0;

  return v9;
}

- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  if (sel_copy_ == a4)
  {
    v9 = [(RUITableView *)self objectModelRowForIndexPath:a5];
    v7 = [MEMORY[0x277D75810] generalPasteboard];
    v8 = [v9 copyText];
    [v7 setString:v8];
  }

  else
  {
    v6 = _RUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [RUITableView tableView:v6 performAction:? forRowAtIndexPath:? withSender:?];
    }
  }
}

- (id)indexPathForPreferredFocusedViewInTableView:(id)a3
{
  v3 = a3;
  if ([v3 numberOfSections] < 1 || objc_msgSend(v3, "numberOfRowsInSection:", 0) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  }

  return v4;
}

- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v12 = a4;
  v6 = [v12 previouslyFocusedIndexPath];

  if (v6)
  {
    v7 = [v12 previouslyFocusedIndexPath];
    v8 = [(RUITableView *)self objectModelRowForIndexPath:v7];

    [v8 setFocused:0];
  }

  v9 = [v12 nextFocusedIndexPath];

  if (v9)
  {
    v10 = [v12 nextFocusedIndexPath];
    v11 = [(RUITableView *)self objectModelRowForIndexPath:v10];

    [v11 setFocused:1];
  }
}

- (void)performAction:(int)a3 forElement:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained activateElement:v8 completion:v7];
}

- (void)textFieldStartedEditing:(id)a3
{
  v4 = a3;
  v5 = [(UITableView *)self->_tableView indexPathsForSelectedRows];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __40__RUITableView_textFieldStartedEditing___block_invoke;
  v27[3] = &unk_2782E8E98;
  v27[4] = self;
  [v5 enumerateObjectsUsingBlock:v27];

  v6 = &qword_27CD9FEF0[34];
  [(UITableView *)self->_tableView selectRowAtIndexPath:0 animated:(gAnimatedTransitions & 1) == 0 scrollPosition:0];
  if (self->_showingRightLabelNavBarButtons)
  {
    [(RUITableView *)self _hideRightBarButtonItemForLabel];
  }

  if (self->_showingLeftLabelNavBarButtons)
  {
    [(RUITableView *)self _hideLeftBarButtonItemForLabel];
  }

  v7 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v7 == 0;
  v10 = v7;
  if ((isKindOfClass & 1) == 0 && v7)
  {
    v10 = v7;
    do
    {
      v11 = v10;
      v10 = [v10 superview];

      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
      v9 = v10 == 0;
    }

    while ((v12 & 1) == 0 && v10);
  }

  if (!v9)
  {
    v13 = [(UITableView *)self->_tableView indexPathForCell:v10];
    if (v13)
    {
      v14 = v13;
      v15 = [(RUITableView *)self objectModelRowForIndexPath:v13];
      v16 = [v15 attributes];
      v17 = [v16 objectForKeyedSubscript:@"class"];
      if ([v17 isEqualToString:@"editableText"])
      {
        v18 = [v15 attributes];
        v19 = [v18 objectForKeyedSubscript:@"changeNavButtonBarOnEdit"];
        v20 = [v19 isEqualToString:@"true"];

        v6 = qword_27CD9FEF0 + 272;
        if (v20)
        {
          v21 = [v15 attributes];
          v22 = [v21 objectForKeyedSubscript:@"navButtonBarPosition"];
          v23 = [v22 isEqualToString:@"right"];

          if (v23)
          {
            [(RUITableView *)self _showRightBarButtonItemForLabel];
          }

          else
          {
            v24 = [v15 attributes];
            v25 = [v24 objectForKeyedSubscript:@"navButtonBarPosition"];
            v26 = [v25 isEqualToString:@"left"];

            if (v26)
            {
              [(RUITableView *)self _showLeftBarButtonItemForLabel];
            }
          }
        }
      }

      else
      {
      }

      [(RUITableView *)self activateRowAtIndexPath:v14 animated:(*(v6 + 4049) & 1) == 0];
    }
  }
}

void __40__RUITableView_textFieldStartedEditing___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectModelRowForIndexPath:a2];
  [v2 didBecomeDeselected];
}

- (void)_textChanged:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained tableViewOMDidChange:self];
}

- (BOOL)webViewOM:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  LOBYTE(a5) = [WeakRetained webViewOM:v9 shouldStartLoadWithRequest:v8 navigationType:a5];

  return a5;
}

- (id)sourceURL
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v3 = [WeakRetained sourceURL];

  return v3;
}

- (void)_enumerateRowsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = 0;
  v6 = 0;
  v16 = 0;
  do
  {
    v7 = [(RUITableView *)self sections];
    v8 = [v7 count];

    if (v5 >= v8)
    {
      break;
    }

    v9 = [(RUITableView *)self sections];
    v10 = [v9 objectAtIndexedSubscript:v5];

    v11 = [v10 rows];
    v12 = [v11 count];

    if (v6 < v12)
    {
      v13 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:v5];
      v14 = [(RUITableView *)self objectModelRowForIndexPath:v13];
      v4[2](v4, v14, v13, &v16);
    }

    v15 = v6 + 1 >= v12;
    if (v6 + 1 < v12)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    if (v15)
    {
      ++v5;
    }
  }

  while (v16 != 1);
}

- (void)rowDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [v4 attributes];
  v6 = [v5 objectForKey:@"nextKeyField"];

  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"false"];

  if ((v8 & 1) == 0)
  {
    if (v6)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__3;
      v31 = __Block_byref_object_dispose__3;
      v32 = 0;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __33__RUITableView_rowDidEndEditing___block_invoke;
      v24[3] = &unk_2782E8EC0;
      v25 = v6;
      v26 = &v27;
      [(RUITableView *)self _enumerateRowsUsingBlock:v24];
      if (v28[5])
      {
        [(RUITableView *)self _becomeFirstResponderAtIndexPath:?];
      }

      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v9 = [(RUITableView *)self indexPathForRow:v4];
      v10 = [v9 section];
      v22 = [v9 row];
      v11 = [(RUITableView *)self sections];
      v12 = [v11 count];

      while (--v12 >= 0)
      {
        v13 = [(RUITableView *)self sections];
        v14 = [v13 objectAtIndexedSubscript:v12];
        v15 = [v14 rows];
        v16 = [v15 count];

        if (v16)
        {
          if (v10 == v12)
          {
            v17 = [(RUITableView *)self sections];
            v18 = [v17 objectAtIndexedSubscript:v10];
            v19 = [v18 rows];
            v20 = [v19 count] - 1;

            if (v22 == v20)
            {
              WeakRetained = objc_loadWeakRetained(&self->_objectModel);
              [WeakRetained tableViewOMSubmitForm:self];

              [(RUITableView *)self _hideRightBarButtonItemForLabel];
              goto LABEL_13;
            }
          }

          break;
        }
      }

      [(RUITableView *)self _hideRightBarButtonItemForLabel];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __33__RUITableView_rowDidEndEditing___block_invoke_2;
      v23[3] = &unk_2782E8EE8;
      v23[5] = v10;
      v23[6] = v22;
      v23[4] = self;
      [(RUITableView *)self _enumerateRowsUsingBlock:v23];
LABEL_13:
    }
  }
}

void __33__RUITableView_rowDidEndEditing___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v8 = [a2 attributes];
  v9 = [v8 objectForKey:@"id"];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void __33__RUITableView_rowDidEndEditing___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 section] > *(a1 + 40) || objc_msgSend(v6, "section") == *(a1 + 40) && objc_msgSend(v6, "row") > *(a1 + 48)) && objc_msgSend(*(a1 + 32), "_becomeFirstResponderAtIndexPath:", v6))
  {
    *a4 = 1;
  }
}

- (BOOL)_becomeFirstResponderAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RUITableView *)self objectModelRowForIndexPath:v4];
  v6 = [v5 tableCell];
  v7 = [v6 editableTextField];
  if (v7)
  {
    v8 = 1;
    [(RUITableView *)self activateRowAtIndexPath:v4 animated:(gAnimatedTransitions & 1) == 0];
  }

  else if ([v5 supportsAutomaticSelection])
  {
    v8 = 1;
    [(UITableView *)self->_tableView selectRowAtIndexPath:v4 animated:(gAnimatedTransitions & 1) == 0 scrollPosition:0];
    [(RUITableView *)self tableView:self->_tableView didSelectRowAtIndexPath:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)rowDidChange:(id)a3 action:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained tableViewOMDidChange:self];

  v8 = [v6 attributes];
  v9 = [v8 objectForKeyedSubscript:@"class"];
  if (([v9 isEqualToString:@"switch"] & 1) == 0)
  {

    goto LABEL_6;
  }

  v10 = [v6 attributes];
  v11 = [v10 objectForKeyedSubscript:@"url"];

  if (v11)
  {
    v12 = [v6 attributes];
    v13 = [v12 objectForKeyedSubscript:@"httpMethod"];

    if (!v13)
    {
      v14 = [v6 attributes];
      v8 = [v14 mutableCopy];

      [v8 setObject:@"POST" forKeyedSubscript:@"httpMethod"];
      [v6 setAttributes:v8];
LABEL_6:
    }
  }

  [v6 startActivityIndicator];
  v15 = [v6 tableCell];
  v16 = objc_loadWeakRetained(&self->_objectModel);
  [v16 setPopoverSourceItem:v15];

  v17 = objc_loadWeakRetained(&self->_objectModel);
  LOBYTE(v16) = objc_opt_respondsToSelector();

  if (v16)
  {
    v18 = objc_loadWeakRetained(&self->_objectModel);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __36__RUITableView_rowDidChange_action___block_invoke;
    v19[3] = &unk_2782E8018;
    v20 = v6;
    [v18 tableViewOM:self elementDidChange:v20 action:v4 completion:v19];
  }
}

void __36__RUITableView_rowDidChange_action___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__RUITableView_rowDidChange_action___block_invoke_2;
  v2[3] = &unk_2782E8F10;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __36__RUITableView_rowDidChange_action___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = [*(a1 + 32) attributes];
    v3 = [v2 objectForKeyedSubscript:@"class"];
    v4 = [v3 isEqualToString:@"switch"];

    if (v4)
    {
      [*(a1 + 32) switchCanceled];
    }
  }

  v5 = *(a1 + 32);

  return [v5 stopActivityIndicator];
}

- (id)textFieldRow:(id)a3 changeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = a3;
  v11 = [v10 attributes];
  v12 = [v11 objectForKey:@"changeCharactersFunction"];

  v13 = [v10 tableCell];

  v14 = [v13 ruiEditableTextField];
  v15 = [v14 text];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &stru_282D68F58;
  }

  if (v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = &stru_282D68F58;
  }

  v18 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v20 = MEMORY[0x277CBEA60];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:length];
  v23 = [v20 arrayWithObjects:{v16, v21, v22, v17, 0}];
  v24 = [WeakRetained invokeScriptFunction:v12 withArguments:v23];

  return v24;
}

- (Class)tableCellClassForTableViewRow:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v6 = [WeakRetained customTableCellClassForTableViewRow:v4];

  return v6;
}

- (id)filteredResultsWithSearchTerm:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sections, "count")}];
  sections = self->_sections;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__RUITableView_filteredResultsWithSearchTerm___block_invoke;
  v12[3] = &unk_2782E8F60;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(NSMutableArray *)sections enumerateObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __46__RUITableView_filteredResultsWithSearchTerm___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = [v3 rows];

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __46__RUITableView_filteredResultsWithSearchTerm___block_invoke_2;
  v12 = &unk_2782E8F38;
  v13 = *(a1 + 32);
  v6 = v4;
  v14 = v6;
  [v5 enumerateObjectsUsingBlock:&v9];

  v7 = [v6 rows];
  v8 = [v7 count];

  if (v8)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __46__RUITableView_filteredResultsWithSearchTerm___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 matchesSearchTerm:*(a1 + 32)])
  {
    [*(a1 + 40) addRow:v3];
  }
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = [a3 text];
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v10 = [v5 stringByTrimmingCharactersInSet:v6];

  v7 = [v10 length];
  if (v7)
  {
    self->_isSearching = 1;
    v7 = [(RUITableView *)self filteredResultsWithSearchTerm:v10];
  }

  else
  {
    self->_isSearching = 0;
  }

  filteredSections = self->_filteredSections;
  self->_filteredSections = v7;

  v9 = [(RUITableView *)self tableView];
  [v9 reloadData];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  self->_isSearching = 0;
  filteredSections = self->_filteredSections;
  self->_filteredSections = 0;
  v5 = a3;

  [v5 setText:&stru_282D68F58];
  v6 = [(RUITableView *)self tableView];
  [v6 reloadData];
}

- (CGSize)scrollView:(id)a3 contentSizeForZoomScale:(double)a4 withProposedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  p_cachedContentSize = &self->_cachedContentSize;
  v9 = FASizeRoundMetrics(self->_cachedContentSize.width);
  v11 = v10;
  if (v9 != FASizeRoundMetrics(width) || v11 != v12)
  {
    v14 = [(RUIElement *)self pageElement];
    v15 = [v14 page];
    v16 = [v15 view];
    [v16 setNeedsLayout];
  }

  p_cachedContentSize->width = width;
  p_cachedContentSize->height = height;
  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (RUIObjectModel)objectModel
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);

  return WeakRetained;
}

- (RUIPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

@end