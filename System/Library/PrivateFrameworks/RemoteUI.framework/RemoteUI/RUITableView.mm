@interface RUITableView
- (BOOL)_becomeFirstResponderAtIndexPath:(id)path;
- (BOOL)isSearchEnabled;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path;
- (BOOL)webViewOM:(id)m shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type;
- (CGRect)_selectPickerFrame;
- (CGRect)searchBarRectInPage:(id)page;
- (CGSize)_tableHeaderSizeForHeader:(id)header;
- (CGSize)scrollView:(id)view contentSizeForZoomScale:(double)scale withProposedSize:(CGSize)size;
- (Class)tableCellClassForTableViewRow:(id)row;
- (NSMutableArray)sections;
- (RUIHeader)headerView;
- (RUIObjectModel)objectModel;
- (RUIPage)page;
- (RUITableView)initWithAttributes:(id)attributes parent:(id)parent;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_objectModelIndexPathForIndexPath:(id)path;
- (id)filteredResultsWithSearchTerm:(id)term;
- (id)indexPathForPreferredFocusedViewInTableView:(id)view;
- (id)indexPathForRow:(id)row;
- (id)objectModelRowForIndexPath:(id)path;
- (id)rowWithIdentifier:(id)identifier;
- (id)sourceURL;
- (id)staticValues;
- (id)subElementWithID:(id)d;
- (id)subElementsWithName:(id)name;
- (id)tableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)textFieldRow:(id)row changeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (id)viewForElementIdentifier:(id)identifier;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view titleAlignmentForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view titleAlignmentForHeaderInSection:(int64_t)section;
- (int64_t)tableViewStyle;
- (void)_clearPickers;
- (void)_datePickerRevert;
- (void)_enumerateRowsUsingBlock:(id)block;
- (void)_hideDatePickerNavBarButtonsIfNeeded;
- (void)_hideLeftBarButtonItemForLabel;
- (void)_hideRightBarButtonItemForLabel;
- (void)_loadHeaderView;
- (void)_registerForNotifications:(BOOL)notifications;
- (void)_setBottomInset:(float)inset;
- (void)_setPickerInset:(double)inset;
- (void)_showDatePickerNavBarButtonsIfNeededForRow:(id)row;
- (void)_showLeftBarButtonItemForLabel;
- (void)_showRightBarButtonItemForLabel;
- (void)_textChanged:(id)changed;
- (void)_updateSectionContentInsetForSettingsWithAnimation:(BOOL)animation;
- (void)activateRowAtIndexPath:(id)path animated:(BOOL)animated;
- (void)addSearchBarToPage:(id)page;
- (void)datePickerCancel:(id)cancel;
- (void)datePickerDone:(id)done;
- (void)dealloc;
- (void)hidePickerViewAnimated:(BOOL)animated;
- (void)insertRow:(id)row atIndexPath:(id)path;
- (void)leftLabelDone:(id)done;
- (void)performAction:(int)action forElement:(id)element completion:(id)completion;
- (void)populatePostbackDictionary:(id)dictionary;
- (void)populateSelectionDictionary:(id)dictionary;
- (void)reloadHeadersAndFootersForSection:(id)section;
- (void)reloadRow:(id)row atIndexPath:(id)path;
- (void)removeRowAtIndexPath:(id)path;
- (void)rightLabelDone:(id)done;
- (void)rowDidChange:(id)change action:(int)action;
- (void)rowDidEndEditing:(id)editing;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)setAttributes:(id)attributes;
- (void)setFooterViewAttributes:(id)attributes;
- (void)setHeaderViewAttributes:(id)attributes;
- (void)setImage:(id)image;
- (void)setImageAlignment:(unint64_t)alignment;
- (void)setImageSize:(CGSize)size;
- (void)setSelectedRadioGroupRow:(id)row;
- (void)setTintColor:(id)color;
- (void)showPickerViewForRow:(id)row animated:(BOOL)animated;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)textFieldStartedEditing:(id)editing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayout;
- (void)viewWillAppear:(BOOL)appear;
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

- (RUITableView)initWithAttributes:(id)attributes parent:(id)parent
{
  v8.receiver = self;
  v8.super_class = RUITableView;
  v4 = [(RUIElement *)&v8 initWithAttributes:attributes parent:parent];
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

- (void)_registerForNotifications:(BOOL)notifications
{
  if (notifications)
  {
    if (self->_registeredForNotifications)
    {
      return;
    }

    self->_registeredForNotifications = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__textChanged_ name:*MEMORY[0x277D770B0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_automaticKeyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_automaticKeyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
  }

  else
  {
    if (!self->_registeredForNotifications)
    {
      return;
    }

    self->_registeredForNotifications = 0;
    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 removeObserver:self name:*MEMORY[0x277D770B0] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 removeObserver:self name:*MEMORY[0x277D76BA8] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
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
  attributes = [(RUIElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"searchEnabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addSearchBarToPage:(id)page
{
  pageCopy = page;
  if ([(RUITableView *)self isSearchEnabled]&& !self->_searchBar)
  {
    attributes = [(RUIElement *)self attributes];
    v5 = [attributes objectForKeyedSubscript:@"searchBarInNavigationBar"];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      view = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
      [view setObscuresBackgroundDuringPresentation:0];
      [view setAutomaticallyShowsSearchResultsController:0];
      attributes2 = [(RUIElement *)self attributes];
      v9 = [attributes2 objectForKeyedSubscript:@"hidesSearchBarWhenScrolling"];
      bOOLValue2 = [v9 BOOLValue];
      navigationItem = [pageCopy navigationItem];
      [navigationItem setHidesSearchBarWhenScrolling:bOOLValue2];

      navigationItem2 = [pageCopy navigationItem];
      [navigationItem2 setSearchController:view];

      searchBar = [view searchBar];
      searchBar = self->_searchBar;
      self->_searchBar = searchBar;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277D759E8]);
      v16 = self->_searchBar;
      self->_searchBar = v15;

      view = [pageCopy view];
      [view addSubview:self->_searchBar];
    }

    [(UISearchBar *)self->_searchBar setDelegate:self];
  }
}

- (CGRect)searchBarRectInPage:(id)page
{
  pageCopy = page;
  if (!self->_searchBar)
  {
    v8 = MEMORY[0x277CBF3A0];
    v9 = *MEMORY[0x277CBF3A0];
    goto LABEL_5;
  }

  attributes = [(RUIElement *)self attributes];
  v6 = [attributes objectForKeyedSubscript:@"searchBarInNavigationBar"];
  bOOLValue = [v6 BOOLValue];

  v8 = MEMORY[0x277CBF3A0];
  v9 = *MEMORY[0x277CBF3A0];
  if (bOOLValue)
  {
LABEL_5:
    v20 = v8[1];
    v15 = v8[2];
    v17 = v8[3];
    goto LABEL_6;
  }

  searchBar = self->_searchBar;
  view = [pageCopy view];
  [view bounds];
  [(UISearchBar *)searchBar sizeThatFits:v12, v13];
  v15 = v14;
  v17 = v16;

  view2 = [pageCopy view];
  [view2 safeAreaInsets];
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
    tableViewStyle = [(RUITableView *)self tableViewStyle];
    v6 = [v4 initWithFrame:tableViewStyle style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_tableView;
    self->_tableView = v6;

    [(UITableView *)self->_tableView setSelfSizingInvalidation:2];
    [(UITableView *)self->_tableView setPreservesSuperviewLayoutMargins:1];
    [(UITableView *)self->_tableView setAllowsSelectionDuringEditing:1];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setCellLayoutMarginsFollowReadableWidth:1];
    attributes = [(RUIElement *)self attributes];
    v9 = [attributes objectForKey:@"sectionStyle"];

    if ([v9 isEqualToString:@"compact"])
    {
      [(UITableView *)self->_tableView setSectionHeaderHeight:0.0];
    }

    [(UITableView *)self->_tableView layoutMargins];
    [(UITableView *)self->_tableView setLayoutMargins:?];
    attributes2 = [(RUIElement *)self attributes];
    v11 = [attributes2 objectForKeyedSubscript:@"editing"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      [(UITableView *)self->_tableView setEditing:1 animated:0];
    }

    attributes3 = [(RUIElement *)self attributes];
    v14 = [attributes3 objectForKeyedSubscript:@"allowsMultipleSelectionDuringEditing"];
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
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKey:@"style"];

  if ([v4 isEqualToString:@"grouped"])
  {
    tableViewStyle = 1;
  }

  else if ([v4 isEqualToString:@"plain"])
  {
    tableViewStyle = 0;
  }

  else if ([v4 isEqualToString:@"insetGrouped"])
  {
    tableViewStyle = 2;
  }

  else
  {
    objectModel = [(RUITableView *)self objectModel];
    style = [objectModel style];
    tableViewStyle = [style tableViewStyle];
  }

  return tableViewStyle;
}

- (void)_updateSectionContentInsetForSettingsWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  attributes = [(RUIElement *)self attributes];
  v6 = [attributes objectForKey:@"style"];

  if ([v6 isEqualToString:@"settings"])
  {
    _isRegularWidth = [(RUITableView *)self _isRegularWidth];
    v8 = MEMORY[0x277D76F30];
    if (_isRegularWidth)
    {
      view = [(RUITableView *)self view];
      [view layoutMargins];
      v11 = v10;

      view2 = [(RUITableView *)self view];
      [view2 safeAreaInsets];
      v14 = v13;

      v15 = 0.0;
      if (v14 <= 0.0)
      {
        view3 = [(RUITableView *)self view];
        [view3 layoutMargins];
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
      if (animationCopy && self->_sectionContentInsetInitialized)
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

- (void)setAttributes:(id)attributes
{
  attributesCopy = attributes;
  attributes = [(RUIElement *)self attributes];

  if (attributes != attributesCopy)
  {
    v17.receiver = self;
    v17.super_class = RUITableView;
    [(RUIElement *)&v17 setAttributes:attributesCopy];
    attributes2 = [(RUIElement *)self attributes];
    v7 = [attributes2 objectForKey:@"scrollEnabled"];

    if ([v7 length] && (objc_msgSend(v7, "BOOLValue") & 1) == 0)
    {
      tableView = [(RUITableView *)self tableView];
      [tableView setScrollEnabled:0];
    }

    attributes3 = [(RUIElement *)self attributes];
    v10 = [attributes3 objectForKeyedSubscript:@"backgroundColor"];

    if (v10)
    {
      v11 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v10];
      tableView2 = [(RUITableView *)self tableView];
      [tableView2 setBackgroundColor:v11];
    }

    attributes4 = [(RUIElement *)self attributes];
    v14 = [attributes4 objectForKeyedSubscript:@"separatorStyle"];

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

    tableView3 = [(RUITableView *)self tableView];
    [tableView3 setSeparatorStyle:v15];

LABEL_14:
  }
}

- (void)populatePostbackDictionary:(id)dictionary
{
  v15 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
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

        [*(*(&v10 + 1) + 8 * v9++) populatePostbackDictionary:{dictionaryCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(RUITableView *)self populateSelectionDictionary:dictionaryCopy];
}

- (void)populateSelectionDictionary:(id)dictionary
{
  v37 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifier = [(RUIElement *)self identifier];
  v6 = [identifier length];

  if (v6)
  {
    array = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    selfCopy = self;
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
        rows = [v9 rows];
        v11 = [rows countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(rows);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              tableCell = [v15 tableCell];
              if ([tableCell isSelected])
              {
                tableCell2 = [v15 tableCell];
                selectionStyle = [tableCell2 selectionStyle];

                if (!selectionStyle)
                {
                  continue;
                }

                attributes = [v15 attributes];
                tableCell = [attributes objectForKeyedSubscript:@"value"];

                if (tableCell)
                {
                  [array addObject:tableCell];
                }
              }
            }

            v12 = [rows countByEnumeratingWithState:&v27 objects:v35 count:16];
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

        v20 = [array copy];
        identifier2 = [(RUIElement *)selfCopy identifier];
        [dictionaryCopy setObject:v20 forKeyedSubscript:identifier2];

        break;
      }
    }
  }
}

- (id)subElementWithID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
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
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:dCopy];

        if (v12)
        {
          v13 = v10;
LABEL_13:
          v14 = v13;
          goto LABEL_14;
        }

        v13 = [v10 subElementWithID:dCopy];
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

- (id)subElementsWithName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
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
        name = [v11 name];
        v13 = [name isEqualToString:nameCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }

        v14 = [v11 subElementsWithName:nameCopy];
        [v5 addObjectsFromArray:v14];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_objectModelIndexPathForIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (self->_embeddedPickerRowIndexPath)
  {
    section = [pathCopy section];
    if (section == [(NSIndexPath *)self->_embeddedPickerRowIndexPath section])
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

- (id)objectModelRowForIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v5 = [(RUITableView *)self _objectModelIndexPathForIndexPath:pathCopy];

    sections = [(RUITableView *)self sections];
    v7 = [sections objectAtIndex:{objc_msgSend(v5, "section")}];

    v8 = [v5 row];
    rows = [v7 rows];
    v10 = [rows count];

    if (v8 >= v10)
    {
      pathCopy = 0;
    }

    else
    {
      rows2 = [v7 rows];
      pathCopy = [rows2 objectAtIndex:{objc_msgSend(v5, "row")}];
    }
  }

  return pathCopy;
}

- (id)indexPathForRow:(id)row
{
  rowCopy = row;
  sections = [(RUITableView *)self sections];
  v6 = [sections count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      sections2 = [(RUITableView *)self sections];
      v9 = [sections2 objectAtIndex:v7];

      rows = [v9 rows];
      v11 = [rows indexOfObject:rowCopy];

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

- (id)rowWithIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  sections = [(RUITableView *)self sections];
  v20 = [sections countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(sections);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        rows = [v8 rows];
        v10 = [rows countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(rows);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              identifier = [v14 identifier];
              v16 = [identifier isEqualToString:identifierCopy];

              if (v16)
              {
                v17 = v14;

                goto LABEL_19;
              }
            }

            v11 = [rows countByEnumeratingWithState:&v21 objects:v29 count:16];
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
      v20 = [sections countByEnumeratingWithState:&v25 objects:v30 count:16];
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

- (void)_setPickerInset:(double)inset
{
  [(UITableView *)self->_tableView contentInset];
  [(UITableView *)self->_tableView setContentInset:?];
  self->_pickerInset = inset;
}

- (void)_setBottomInset:(float)inset
{
  [(UITableView *)self->_tableView contentInset];
  tableView = self->_tableView;

  [(UITableView *)tableView setContentInset:?];
}

- (void)reloadHeadersAndFootersForSection:(id)section
{
  sectionCopy = section;
  sections = [(RUITableView *)self sections];
  v5 = [sections indexOfObject:sectionCopy];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    NSLog(&cfstr_CannotFindSect.isa, sectionCopy);
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

- (void)reloadRow:(id)row atIndexPath:(id)path
{
  v13[1] = *MEMORY[0x277D85DE8];
  sections = self->_sections;
  pathCopy = path;
  rowCopy = row;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [pathCopy section]);
  [v9 removeRowAtIndex:{objc_msgSend(pathCopy, "row")}];
  [v9 insertRow:rowCopy atIndex:{objc_msgSend(pathCopy, "row")}];

  tableView = self->_tableView;
  v13[0] = pathCopy;
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

- (void)insertRow:(id)row atIndexPath:(id)path
{
  v13[1] = *MEMORY[0x277D85DE8];
  sections = self->_sections;
  pathCopy = path;
  rowCopy = row;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [pathCopy section]);
  [v9 insertRow:rowCopy atIndex:{objc_msgSend(pathCopy, "row")}];

  tableView = self->_tableView;
  v13[0] = pathCopy;
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

- (void)removeRowAtIndexPath:(id)path
{
  v10[1] = *MEMORY[0x277D85DE8];
  sections = self->_sections;
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [pathCopy section]);
  [v6 removeRowAtIndex:{objc_msgSend(pathCopy, "row")}];
  tableView = self->_tableView;
  v10[0] = pathCopy;
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

- (id)viewForElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
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

- (void)setHeaderViewAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:attributesCopy parent:self];

  header = self->_header;
  self->_header = v5;
}

- (void)setFooterViewAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:attributesCopy parent:self];

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

- (CGSize)_tableHeaderSizeForHeader:(id)header
{
  headerCopy = header;
  tableView = [(RUITableView *)self tableView];
  readableContentGuide = [tableView readableContentGuide];
  [readableContentGuide layoutFrame];
  v8 = v7;

  if (objc_opt_respondsToSelector())
  {
    [headerCopy headerHeightForWidth:self->_tableView inView:v8];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [headerCopy headerHeightForWidth:self->_tableView inTableView:v8];
    goto LABEL_5;
  }

  if ([headerCopy _wantsAutolayout])
  {
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    v13 = *(MEMORY[0x277D76C78] + 8);
    tableView2 = [(RUITableView *)self tableView];
    readableContentGuide2 = [tableView2 readableContentGuide];
    [readableContentGuide2 layoutFrame];
    v17 = v16;

    [headerCopy systemLayoutSizeFittingSize:{v17, v13}];
  }

  else
  {
    [(UITableView *)self->_tableView frame];
    [headerCopy sizeThatFits:{v18, v19}];
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
    tableView = [(RUITableView *)self tableView];
    tableHeaderView = [tableView tableHeaderView];

    if (!tableHeaderView)
    {
      WeakRetained = objc_loadWeakRetained(&self->_objectModel);
      attributes = [(RUIElement *)self->_header attributes];
      v7 = [WeakRetained tableHeaderViewForAttributes:attributes];

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
        page = [(RUITableView *)self page];
        showsTitlesAsHeaderViews = [page showsTitlesAsHeaderViews];

        v48 = v7;
        if (showsTitlesAsHeaderViews)
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
          style = [(RUIElement *)self style];
          [style subHeaderTopMargin];
          [(RUIHeaderView *)v8 setSubHeaderTopMargin:?];

          style2 = [(RUIElement *)self style];
          [style2 headerImagePadding];
          [(RUIHeaderView *)v8 setImageLabelPadding:?];

          style3 = [(RUIElement *)self style];
          [style3 headerMargin];
          [(RUIHeaderView *)v8 setHeaderMargin:?];

          style4 = [(RUIElement *)self style];
          headerLabelTextColor = [style4 headerLabelTextColor];
          [(RUIHeaderView *)v8 setHeaderColor:headerLabelTextColor];

          v13 = v8;
        }

        [(RUIHeaderElement *)self->_header configureView:v13];
        [(RUISubHeaderElement *)self->_subHeader configureView:v13];
        v23 = objc_alloc_init(RUIReadableContentContainer);
        [(RUIReadableContentContainer *)v23 setPreservesSuperviewLayoutMargins:1];
        v24 = objc_loadWeakRetained(&self->_objectModel);
        style5 = [v24 style];
        [style5 headerContainerSideMargin];
        v27 = v26;
        v28 = objc_loadWeakRetained(&self->_objectModel);
        style6 = [v28 style];
        [style6 headerContainerSideMargin];
        [(RUIReadableContentContainer *)v23 setDirectionalLayoutMargins:0.0, v27, 0.0, v30];

        [(RUIReadableContentContainer *)v23 addSubview:v13];
        [(UITableView *)self->_tableView setTableHeaderView:v23];
        v41 = MEMORY[0x277CCAAD0];
        topAnchor = [(RUIReadableContentContainer *)v23 topAnchor];
        topAnchor2 = [(RUIModernHeaderView *)v13 topAnchor];
        v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v50[0] = v45;
        bottomAnchor = [(RUIReadableContentContainer *)v23 bottomAnchor];
        bottomAnchor2 = [(RUIModernHeaderView *)v13 bottomAnchor];
        v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v50[1] = v42;
        readableContentGuide = [(RUIReadableContentContainer *)v23 readableContentGuide];
        leadingAnchor = [readableContentGuide leadingAnchor];
        leadingAnchor2 = [(RUIModernHeaderView *)v13 leadingAnchor];
        v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v50[2] = v32;
        readableContentGuide2 = [(RUIReadableContentContainer *)v23 readableContentGuide];
        trailingAnchor = [readableContentGuide2 trailingAnchor];
        trailingAnchor2 = [(RUIModernHeaderView *)v13 trailingAnchor];
        v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

- (void)setImage:(id)image
{
  imageCopy = image;
  v5 = +[RUIHeaderView symbolConfiguration];
  v10 = [imageCopy imageByApplyingSymbolConfiguration:v5];

  page = [(RUITableView *)self page];
  LODWORD(imageCopy) = [page showsTitlesAsHeaderViews];

  headerView = [(RUITableView *)self headerView];
  v8 = headerView;
  if (imageCopy)
  {
    [headerView setIcon:v10 accessibilityLabel:0];
  }

  else
  {
    [headerView setIconImage:v10];
  }

  headerView2 = [(RUITableView *)self headerView];
  [headerView2 layoutIfNeeded];

  [(RUITableView *)self viewDidLayout];
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  headerView = [(RUITableView *)self headerView];
  [headerView setTintColor:colorCopy];
}

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  page = [(RUITableView *)self page];
  showsTitlesAsHeaderViews = [page showsTitlesAsHeaderViews];

  if ((showsTitlesAsHeaderViews & 1) == 0)
  {
    headerView = [(RUITableView *)self headerView];
    [headerView setImageSize:{width, height}];
  }

  headerView2 = [(RUITableView *)self headerView];
  [headerView2 layoutIfNeeded];

  [(RUITableView *)self viewDidLayout];
}

- (void)setImageAlignment:(unint64_t)alignment
{
  page = [(RUITableView *)self page];
  showsTitlesAsHeaderViews = [page showsTitlesAsHeaderViews];

  if ((showsTitlesAsHeaderViews & 1) == 0)
  {
    headerView = [(RUITableView *)self headerView];
    [headerView setImageAlignment:alignment];
  }

  headerView2 = [(RUITableView *)self headerView];
  [headerView2 layoutIfNeeded];

  [(RUITableView *)self viewDidLayout];
}

- (void)viewWillAppear:(BOOL)appear
{
  superview = [(UITableView *)self->_tableView superview];
  [(UITableView *)self->_tableView frame];
  x = v26.origin.x;
  y = v26.origin.y;
  if (CGRectIsEmpty(v26) && superview != 0)
  {
    [superview bounds];
    [(UITableView *)self->_tableView setFrame:x, y];
  }

  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained configureTableView:self];

  [(RUITableView *)self _loadHeaderView];
  if (self->_footer)
  {
    tableFooterView = [(UITableView *)self->_tableView tableFooterView];

    if (!tableFooterView)
    {
      v10 = objc_loadWeakRetained(&self->_objectModel);
      attributes = [(RUIElement *)self->_footer attributes];
      v12 = [v10 tableFooterViewForAttributes:attributes];

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

  dataSource = [(UITableView *)self->_tableView dataSource];
  v21 = MEMORY[0x277D75D18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __31__RUITableView_viewWillAppear___block_invoke;
  v23[3] = &unk_2782E84F8;
  v24 = dataSource;
  selfCopy = self;
  v22 = dataSource;
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

- (void)viewDidAppear:(BOOL)appear
{
  pageElement = [(RUIElement *)self pageElement];
  [pageElement reportInternalRenderEvent];

  tableView = [(RUITableView *)self tableView];
  [(RUIElement *)self configureAccessiblityWithTarget:tableView];

  [(RUIElement *)self reportInternalRenderEvent];
  sections = [(RUITableView *)self sections];
  [sections enumerateObjectsUsingBlock:&__block_literal_global_7];

  defaultFirstResponderRow = [(RUITableView *)self defaultFirstResponderRow];

  if (defaultFirstResponderRow)
  {
    defaultFirstResponderRow2 = [(RUITableView *)self defaultFirstResponderRow];
    v9 = [(RUITableView *)self indexPathForRow:defaultFirstResponderRow2];

    [(UITableView *)self->_tableView selectRowAtIndexPath:v9 animated:0 scrollPosition:0];
    [(RUITableView *)self activateRowAtIndexPath:v9 animated:0];
    [(RUITableView *)self setDefaultFirstResponderRow:0];
  }

  tableView = self->_tableView;
  attributes = [(RUIElement *)self attributes];
  v12 = [attributes objectForKeyedSubscript:@"editing"];
  [(UITableView *)tableView setEditing:v12 != 0 animated:0];

  dataSource = [(UITableView *)self->_tableView dataSource];
  v14 = MEMORY[0x277D75D18];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __30__RUITableView_viewDidAppear___block_invoke_2;
  v19 = &unk_2782E84F8;
  v20 = dataSource;
  selfCopy = self;
  v15 = dataSource;
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
  tableView = [(RUITableView *)self tableView];
  traitCollection = [tableView traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  dataSource = [(UITableView *)self->_tableView dataSource];
  [(UITableView *)self->_tableView bounds];
  v9 = v8;
  if (self->_lastLayoutWidth != v9)
  {
    v10 = v7;
    if (horizontalSizeClass == 1)
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
    sections = [(RUITableView *)self sections];
    v16 = [sections countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(sections);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          rows = [v20 rows];
          v22 = [rows countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                  objc_enumerationMutation(rows);
                }

                [*(*(&v30 + 1) + 8 * j) clearCachedHeight];
              }

              v23 = [rows countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v23);
          }
        }

        v17 = [sections countByEnumeratingWithState:&v34 objects:v39 count:16];
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
  v29 = dataSource;
  v27 = dataSource;
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

- (void)setSelectedRadioGroupRow:(id)row
{
  v31 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  attributes = [rowCopy attributes];
  v6 = [attributes objectForKeyedSubscript:@"radioGroup"];

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
          rows = [v8 rows];
          v10 = [rows countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                  objc_enumerationMutation(rows);
                }

                v14 = *(*(&v21 + 1) + 8 * i);
                attributes2 = [v14 attributes];
                v16 = [attributes2 objectForKey:@"radioGroup"];

                if (v14 != rowCopy && [v16 isEqualToString:v6])
                {
                  [v14 setSelected:0];
                }
              }

              v11 = [rows countByEnumeratingWithState:&v21 objects:v29 count:16];
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

    [rowCopy setSelected:1];
  }
}

- (void)_showLeftBarButtonItemForLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  displayedPages = [WeakRetained displayedPages];
  lastObject = [displayedPages lastObject];

  [(RUITableView *)self _hideLeftBarButtonItemForLabel];
  self->_showingLeftLabelNavBarButtons = 1;
  leftNavigationBarButtonItem = [lastObject leftNavigationBarButtonItem];
  oldLeftBarButtonItemForLabel = self->_oldLeftBarButtonItemForLabel;
  self->_oldLeftBarButtonItemForLabel = leftNavigationBarButtonItem;

  v7 = objc_opt_new();
  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_leftLabelDone_];
  [lastObject setLeftNavigationBarButtonItem:v7 barButtonItem:v8];
}

- (void)leftLabelDone:(id)done
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  visiblePage = [WeakRetained visiblePage];
  view = [visiblePage view];
  [view endEditing:0];

  [(RUITableView *)self _hideLeftBarButtonItemForLabel];
}

- (void)_hideLeftBarButtonItemForLabel
{
  if (self->_showingLeftLabelNavBarButtons)
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    displayedPages = [WeakRetained displayedPages];
    lastObject = [displayedPages lastObject];

    [lastObject setLeftNavigationBarButtonItem:self->_oldLeftBarButtonItemForLabel];
    oldLeftBarButtonItemForLabel = self->_oldLeftBarButtonItemForLabel;
    self->_oldLeftBarButtonItemForLabel = 0;

    self->_showingLeftLabelNavBarButtons = 0;
  }
}

- (void)_showRightBarButtonItemForLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  displayedPages = [WeakRetained displayedPages];
  lastObject = [displayedPages lastObject];

  [(RUITableView *)self _hideRightBarButtonItemForLabel];
  self->_showingRightLabelNavBarButtons = 1;
  rightNavigationBarButtonItem = [lastObject rightNavigationBarButtonItem];
  oldRightBarButtonItemForLabel = self->_oldRightBarButtonItemForLabel;
  self->_oldRightBarButtonItemForLabel = rightNavigationBarButtonItem;

  v7 = objc_opt_new();
  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_rightLabelDone_];
  [lastObject setRightNavigationBarButtonItem:v7 barButtonItem:v8];
}

- (void)rightLabelDone:(id)done
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  visiblePage = [WeakRetained visiblePage];
  view = [visiblePage view];
  [view endEditing:0];

  [(RUITableView *)self _hideRightBarButtonItemForLabel];
}

- (void)_hideRightBarButtonItemForLabel
{
  if (self->_showingRightLabelNavBarButtons)
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    displayedPages = [WeakRetained displayedPages];
    lastObject = [displayedPages lastObject];

    [lastObject setRightNavigationBarButtonItem:self->_oldRightBarButtonItemForLabel];
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

- (void)datePickerCancel:(id)cancel
{
  [(RUITableView *)self _datePickerRevert];
  v4 = (gAnimatedTransitions & 1) == 0;

  [(RUITableView *)self hidePickerViewAnimated:v4];
}

- (void)datePickerDone:(id)done
{
  v5 = [(RUITableView *)self objectModelRowForIndexPath:self->_pickerRowIndexPath];
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained tableViewOM:self elementDidChange:v5 action:2 completion:0];

  [(RUITableView *)self hidePickerViewAnimated:(gAnimatedTransitions & 1) == 0];
}

- (void)_showDatePickerNavBarButtonsIfNeededForRow:(id)row
{
  attributes = [row attributes];
  v5 = [attributes objectForKeyedSubscript:@"url"];

  if (v5)
  {
    date = [(UIDatePicker *)self->_datePicker date];
    oldPickerDate = self->_oldPickerDate;
    self->_oldPickerDate = date;

    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    displayedPages = [WeakRetained displayedPages];
    lastObject = [displayedPages lastObject];

    self->_showingPickerNavBarButtons = 1;
    leftNavigationBarButtonItem = [lastObject leftNavigationBarButtonItem];
    oldLeftBarButtonItemForPicker = self->_oldLeftBarButtonItemForPicker;
    self->_oldLeftBarButtonItemForPicker = leftNavigationBarButtonItem;

    rightNavigationBarButtonItem = [lastObject rightNavigationBarButtonItem];
    oldRightBarButtonItemForPicker = self->_oldRightBarButtonItemForPicker;
    self->_oldRightBarButtonItemForPicker = rightNavigationBarButtonItem;

    v14 = objc_opt_new();
    v15 = objc_alloc(MEMORY[0x277D751E0]);
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_282D68F58 table:@"Localizable"];
    v18 = [v15 initWithTitle:v17 style:0 target:self action:sel_datePickerCancel_];

    [lastObject setLeftNavigationBarButtonItem:v14 barButtonItem:v18];
    v19 = objc_opt_new();
    v20 = objc_alloc(MEMORY[0x277D751E0]);
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"DONE" value:&stru_282D68F58 table:@"Localizable"];
    v23 = [v20 initWithTitle:v22 style:2 target:self action:sel_datePickerDone_];

    [lastObject setRightNavigationBarButtonItem:v19 barButtonItem:v23];
  }
}

- (void)_hideDatePickerNavBarButtonsIfNeeded
{
  if (self->_showingPickerNavBarButtons)
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    displayedPages = [WeakRetained displayedPages];
    lastObject = [displayedPages lastObject];

    [lastObject setLeftNavigationBarButtonItem:self->_oldLeftBarButtonItemForPicker];
    [lastObject setRightNavigationBarButtonItem:self->_oldRightBarButtonItemForPicker];
    oldLeftBarButtonItemForPicker = self->_oldLeftBarButtonItemForPicker;
    self->_oldLeftBarButtonItemForPicker = 0;

    oldRightBarButtonItemForPicker = self->_oldRightBarButtonItemForPicker;
    self->_oldRightBarButtonItemForPicker = 0;

    self->_showingPickerNavBarButtons = 0;
  }
}

- (void)showPickerViewForRow:(id)row animated:(BOOL)animated
{
  animatedCopy = animated;
  v91 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  [(RUITableView *)self _datePickerRevert];
  [(RUITableView *)self _hideDatePickerNavBarButtonsIfNeeded];
  [(RUITableView *)self _selectPickerFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  attributes = [rowCopy attributes];
  v16 = [attributes objectForKeyedSubscript:@"class"];

  attributes2 = [rowCopy attributes];
  v18 = [attributes2 objectForKey:@"inline"];
  bOOLValue = [v18 BOOLValue];

  if (self->_embeddedPickerRowIndexPath)
  {
    [(RUITableView *)self hidePickerViewAnimated:animatedCopy];
  }

  v69 = [(RUITableView *)self indexPathForRow:rowCopy];
  objc_storeStrong(&self->_pickerRowIndexPath, v69);
  firstResponder = [(UITableView *)self->_tableView firstResponder];
  [firstResponder resignFirstResponder];

  if (animatedCopy)
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

    v68 = animatedCopy;
    v67 = v16;
    self->_showDatePicker = 1;
    datePicker = self->_datePicker;
    if (datePicker)
    {
      allTargets = [(UIDatePicker *)datePicker allTargets];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v24 = [allTargets countByEnumeratingWithState:&v85 objects:v90 count:16];
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
              objc_enumerationMutation(allTargets);
            }

            [(UIDatePicker *)self->_datePicker removeTarget:*(*(&v85 + 1) + 8 * i) action:0 forControlEvents:0xFFFFFFFFLL];
          }

          v25 = [allTargets countByEnumeratingWithState:&v85 objects:v90 count:16];
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

    dateFormatterCalendarIdentifier = [rowCopy dateFormatterCalendarIdentifier];
    v66 = dateFormatterCalendarIdentifier;
    if (dateFormatterCalendarIdentifier)
    {
      [MEMORY[0x277CBEA80] calendarWithIdentifier:dateFormatterCalendarIdentifier];
    }

    else
    {
      [MEMORY[0x277CBEA80] currentCalendar];
    }
    v41 = ;
    v42 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    v65 = v41;
    [v41 setTimeZone:v42];

    newConfiguredDatePicker = [rowCopy newConfiguredDatePicker];
    v44 = self->_datePicker;
    self->_datePicker = newConfiguredDatePicker;

    [(UIDatePicker *)self->_datePicker setFrame:v8, v10, v12, v14];
    v31 = self->_datePicker;
    datePickerMode = [rowCopy datePickerMode];
    v46 = 1;
    if ((datePickerMode - 3) >= 2 && (datePickerMode - 4270) >= 2)
    {
      if ([(UIDatePicker *)self->_datePicker datePickerStyle]!= UIDatePickerStyleCompact)
      {
LABEL_38:
        -[UIDatePicker setDatePickerMode:](self->_datePicker, "setDatePickerMode:", [rowCopy datePickerMode]);
        v47 = ([(UIDatePicker *)self->_datePicker datePickerStyle]== UIDatePickerStyleInline) | bOOLValue;
        if (v47)
        {
          [(UIDatePicker *)self->_datePicker removeFromSuperview];
          [(_UIBackdropView *)self->_pickerBackdrop removeFromSuperview];
          v48 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v69 inSection:{"row") + 1, objc_msgSend(v69, "section")}];
        }

        else
        {
          superview = [(UITableView *)self->_tableView superview];
          [superview addSubview:self->_pickerBackdrop];

          superview2 = [(UITableView *)self->_tableView superview];
          [superview2 addSubview:self->_datePicker];

          v48 = 0;
        }

        embeddedPickerRowIndexPath = self->_embeddedPickerRowIndexPath;
        self->_embeddedPickerRowIndexPath = v48;

        [(RUITableView *)self _showDatePickerNavBarButtonsIfNeededForRow:rowCopy];
        v16 = v67;
        LOBYTE(bOOLValue) = v47;
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

  v68 = animatedCopy;
  self->_showSelectPicker = 1;
  selectPicker = self->_selectPicker;
  if (selectPicker)
  {
    [(UIPickerView *)selectPicker setDelegate:rowCopy];
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
    [(UIPickerView *)self->_selectPicker setDelegate:rowCopy];
    [(UIPickerView *)self->_selectPicker setShowsSelectionIndicator:1];
  }

  v31 = self->_selectPicker;
  if (bOOLValue)
  {
    [(_UIBackdropView *)self->_pickerBackdrop removeFromSuperview];
    v36 = [v69 copy];
  }

  else
  {
    superview3 = [(UITableView *)self->_tableView superview];
    [superview3 addSubview:self->_pickerBackdrop];

    superview4 = [(UITableView *)self->_tableView superview];
    [superview4 addSubview:self->_selectPicker];

    v36 = 0;
  }

  v39 = self->_embeddedPickerRowIndexPath;
  self->_embeddedPickerRowIndexPath = v36;

  selectedRow = [rowCopy selectedRow];
  if (selectedRow == -1)
  {
    [rowCopy pickerView:self->_selectPicker didSelectRow:0 inComponent:0];
    selectedRow = 0;
  }

  [(UIPickerView *)self->_selectPicker selectRow:selectedRow inColumn:0 animated:0];
  if (v31)
  {
LABEL_42:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__RUITableView_showPickerViewForRow_animated___block_invoke;
    aBlock[3] = &unk_2782E7F30;
    aBlock[4] = self;
    v52 = _Block_copy(aBlock);
    tableView = [(RUITableView *)self tableView];
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
    v54 = tableView;
    v79 = v54;
    v55 = _Block_copy(v77);
    v56 = v69;
    if (bOOLValue)
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

- (void)hidePickerViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
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
    tableView = [(RUITableView *)self tableView];
    if (animatedCopy)
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
      v40 = tableView;
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
      visiblePage = [WeakRetained visiblePage];
      accessoryViews = [visiblePage accessoryViews];

      v25 = [accessoryViews countByEnumeratingWithState:&v32 objects:v46 count:16];
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
              objc_enumerationMutation(accessoryViews);
            }

            v29 = *(*(&v32 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v29 tableViewDidUpdateContentInset:tableView];
            }
          }

          v26 = [accessoryViews countByEnumeratingWithState:&v32 objects:v46 count:16];
        }

        while (v26);
      }

      v15[2](v15);
      animatedCopy = 0;
      v14 = v31;
    }
  }

  [(RUITableView *)self _hideDatePickerNavBarButtonsIfNeeded];
  [(UITableView *)self->_tableView deselectRowAtIndexPath:self->_pickerRowIndexPath animated:animatedCopy];
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(RUITableView *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(RUITableView *)self sections];
  v7 = [sections objectAtIndex:section];

  if (([v7 configured] & 1) == 0)
  {
    objectModel = [(RUITableView *)self objectModel];
    [objectModel configureSection:v7];

    [v7 setConfigured:1];
  }

  rows = [v7 rows];
  v10 = [rows count];

  embeddedPickerRowIndexPath = self->_embeddedPickerRowIndexPath;
  if (embeddedPickerRowIndexPath && [(NSIndexPath *)embeddedPickerRowIndexPath section]== section)
  {
    ++v10;
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v37[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = [(RUITableView *)self objectModelRowForIndexPath:pathCopy];
  if ([pathCopy isEqual:self->_embeddedPickerRowIndexPath])
  {
    tableCell = [viewCopy dequeueReusableCellWithIdentifier:@"embeddedPickerCell"];
    if (!tableCell)
    {
      tableCell = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"embeddedPickerCell"];
    }

    v35 = pathCopy;
    v36 = viewCopy;
    [tableCell setAccessibilityIdentifier:@"embeddedPickerCell"];
    v34 = v8;
    [v8 configureAccessiblityWithTarget:tableCell];
    datePicker = self->_datePicker;
    if (!datePicker)
    {
      datePicker = self->_selectPicker;
    }

    v11 = datePicker;
    contentView = [tableCell contentView];
    [contentView addSubview:v11];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = MEMORY[0x277CCAAD0];
    topAnchor = [v11 topAnchor];
    contentView2 = [tableCell contentView];
    topAnchor2 = [contentView2 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v37[0] = v30;
    bottomAnchor = [v11 bottomAnchor];
    contentView3 = [tableCell contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v37[1] = v25;
    leadingAnchor = [v11 leadingAnchor];
    contentView4 = [tableCell contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v37[2] = v15;
    trailingAnchor = [v11 trailingAnchor];
    contentView5 = [tableCell contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v37[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
    [v27 activateConstraints:v20];

    pathCopy = v35;
    viewCopy = v36;
    v8 = v34;
  }

  else
  {
    if (([v8 configured] & 1) == 0)
    {
      objectModel = [(RUITableView *)self objectModel];
      [objectModel configureRow:v8];
    }

    tableCell = [v8 tableCell];
    [v8 configureAccessiblityWithTarget:tableCell];
    if (-[RUITableView tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", viewCopy, [pathCopy section]) == 1)
    {
      [tableCell setTextFieldOffset:0.0];
    }
  }

  v22 = tableCell;

  return tableCell;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(RUITableView *)self objectModelRowForIndexPath:pathCopy];
    tableCell = [v8 tableCell];
    if (tableCell == cellCopy)
    {
      attributes = [v8 attributes];
      v11 = [attributes objectForKeyedSubscript:@"labelBold"];
      bOOLValue = [v11 BOOLValue];

      if (!bOOLValue)
      {
LABEL_6:

        goto LABEL_7;
      }

      tableCell = [cellCopy ruiTextLabel];
      v13 = MEMORY[0x277D74300];
      ruiTextLabel = [cellCopy ruiTextLabel];
      font = [ruiTextLabel font];
      [font pointSize];
      v16 = [v13 boldSystemFontOfSize:?];
      [tableCell setFont:v16];
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(RUITableView *)self sections];
  v6 = [sections objectAtIndex:section];

  if ([v6 hasCustomHeader])
  {
    body = 0;
  }

  else
  {
    header = [v6 header];
    body = [header body];
  }

  return body;
}

- (int64_t)tableView:(id)view titleAlignmentForHeaderInSection:(int64_t)section
{
  sections = [(RUITableView *)self sections];
  v6 = [sections objectAtIndex:section];

  header = [v6 header];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    header2 = [v6 header];
    labelAlignment = [header2 labelAlignment];
  }

  else
  {
    labelAlignment = 4;
  }

  return labelAlignment;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sections = [(RUITableView *)self sections];
  v6 = [sections objectAtIndex:section];

  if ([v6 hasCustomFooter])
  {
    body = 0;
  }

  else
  {
    footer = [v6 footer];
    body = [footer body];
  }

  return body;
}

- (int64_t)tableView:(id)view titleAlignmentForFooterInSection:(int64_t)section
{
  sections = [(RUITableView *)self sections];
  v6 = [sections objectAtIndex:section];

  footer = [v6 footer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    footer2 = [v6 footer];
    labelAlignment = [footer2 labelAlignment];
  }

  else
  {
    labelAlignment = 4;
  }

  return labelAlignment;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  sections = [(RUITableView *)self sections];
  v7 = [sections objectAtIndex:section];

  header = [v7 header];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    header2 = [v7 header];
    [header2 loadElementIfNeeded];
    view = [header2 view];
    [view intrinsicContentSize];
    v13 = v12;
  }

  else if ([v7 hasCustomHeader])
  {
    v13 = *MEMORY[0x277D76F30];
  }

  else
  {
    style = [(RUIElement *)self style];
    [style sectionSpacing];
    v16 = v15;

    style2 = [(RUIElement *)self style];
    v18 = style2;
    if (section < 1 || v16 == 0.0)
    {
      [style2 firstSectionSpacing];
      v21 = v20;

      if (v21 == -1.0)
      {
        v13 = 31.0;
      }

      else
      {
        style3 = [(RUIElement *)self style];
        [style3 firstSectionSpacing];
        v13 = v23;
      }

      header3 = [v7 header];
      if (header3)
      {
        v25 = 0;
      }

      else
      {
        headerView = [v7 headerView];
        v25 = headerView == 0;
      }

      if (section || v25)
      {
        [v7 headerHeight];
        if (section || v27 != 0.0)
        {
          [v7 headerHeight];
          v13 = v28;
        }
      }
    }

    else
    {
      [style2 sectionSpacing];
      v13 = v19;
    }
  }

  return v13;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  sections = [(RUITableView *)self sections];
  v8 = [sections objectAtIndex:section];

  header = [v8 header];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    header2 = [v8 header];
    view = [header2 view];
    [view setBackgroundColor:0];

    [header2 loadElementIfNeeded];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3010000000;
    v25 = 0;
    v26 = 0;
    v24[3] = &unk_21BACC44D;
    view2 = [header2 view];
    [view2 intrinsicContentSize];
    v25 = v14;
    v26 = v15;

    objc_initWeak(&location, viewCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__RUITableView_tableView_viewForHeaderInSection___block_invoke;
    v21[3] = &unk_2782E8E20;
    objc_copyWeak(&v22, &location);
    v21[4] = v24;
    [header2 setDidLayoutSubviewsHandler:v21];
    view3 = [header2 view];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    _Block_object_dispose(v24, 8);
  }

  else if ([v8 hasCustomHeader])
  {
    view3 = [v8 containerizedHeaderView];
    headerView = [view3 headerView];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      headerView2 = [view3 headerView];
      [headerView2 setSectionIsFirst:section == 0];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [view3 setTableView:viewCopy];
    }
  }

  else
  {
    view3 = 0;
  }

  return view3;
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

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  sections = [(RUITableView *)self sections];
  v8 = [sections objectAtIndex:section];

  header = [v8 header];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  rows = [v8 rows];
  if ([rows count])
  {

LABEL_4:
    goto LABEL_5;
  }

  footer = [v8 footer];

  if (!footer)
  {
    v15 = 0.0;
    goto LABEL_11;
  }

LABEL_5:
  if ([v8 hasCustomFooter] && (objc_msgSend(viewCopy, "readableContentGuide"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "layoutFrame"), v13 = v12, v11, v13 > 0.0))
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

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  sections = [(RUITableView *)self sections];
  v8 = [sections objectAtIndex:section];

  footer = [v8 footer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    footer2 = [v8 footer];
    view = [footer2 view];
    [view setBackgroundColor:0];

    [footer2 loadElementIfNeeded];
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3010000000;
    v22 = 0;
    v23 = 0;
    v21[3] = &unk_21BACC44D;
    view2 = [footer2 view];
    [view2 intrinsicContentSize];
    v22 = v14;
    v23 = v15;

    objc_initWeak(&location, viewCopy);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__RUITableView_tableView_viewForFooterInSection___block_invoke;
    v18[3] = &unk_2782E8E20;
    objc_copyWeak(&v19, &location);
    v18[4] = v21;
    [footer2 setDidLayoutSubviewsHandler:v18];
    view3 = [footer2 view];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    _Block_object_dispose(v21, 8);
  }

  else if ([v8 hasCustomFooter])
  {
    view3 = [v8 containerizedFooterView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [view3 setTableView:viewCopy];
    }
  }

  else
  {
    view3 = 0;
  }

  return view3;
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
  superview = [(UITableView *)self->_tableView superview];
  [superview bounds];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy beginUpdates];
  [(RUITableView *)self activateRowAtIndexPath:pathCopy animated:(gAnimatedTransitions & 1) == 0];
  v8 = [(RUITableView *)self objectModelRowForIndexPath:pathCopy];

  [v8 didBecomeSelected];
  [viewCopy endUpdates];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy beginUpdates];
  tableView = [(RUITableView *)self tableView];
  allowsMultipleSelectionDuringEditing = [tableView allowsMultipleSelectionDuringEditing];
  tableView2 = [(RUITableView *)self tableView];
  isEditing = [tableView2 isEditing];

  if (allowsMultipleSelectionDuringEditing && isEditing)
  {
    objectModel = [(RUITableView *)self objectModel];
    [objectModel tableViewOMDidChange:self];
  }

  v12 = [(RUITableView *)self objectModelRowForIndexPath:pathCopy];
  [v12 didBecomeDeselected];
  [viewCopy endUpdates];
}

- (void)activateRowAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  v53 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [(UITableView *)self->_tableView beginUpdates];
  v7 = [(RUITableView *)self objectModelRowForIndexPath:pathCopy];
  attributes = [v7 attributes];
  v9 = [attributes objectForKey:@"class"];

  if (![v7 enabled])
  {
    goto LABEL_33;
  }

  self->_showSelectPicker = 0;
  sections = [(RUITableView *)self sections];
  v11 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v46 = v11;
  if (![v9 isEqualToString:@"select"])
  {
    if (![v9 isEqualToString:@"datePicker"])
    {
      if (([v9 isEqualToString:@"editableText"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"numberPicker"))
      {
        [(RUITableView *)self hidePickerViewAnimated:1];
        tableCell = [v7 tableCell];
        editableTextField = [tableCell editableTextField];
        isFirstResponder = [editableTextField isFirstResponder];

        if (isFirstResponder)
        {
          goto LABEL_17;
        }

        tableCell2 = [v7 tableCell];
        editableTextField2 = [tableCell2 editableTextField];
        [editableTextField2 becomeFirstResponder];
      }

      else
      {
        showAllRow = [v11 showAllRow];

        [(RUITableView *)self hidePickerViewAnimated:1];
        if (v7 == showAllRow)
        {
          [v11 tappedShowAllRowWithTable:self->_tableView];
          goto LABEL_17;
        }

        tableCell2 = [(UITableView *)self->_tableView firstResponder];
        [tableCell2 resignFirstResponder];
      }

      goto LABEL_17;
    }

    if ([v7 datePickerStyle] == 2)
    {
      [v7 activateDatePicker];
      [(UITableView *)self->_tableView deselectRowAtIndexPath:pathCopy animated:animatedCopy];
      goto LABEL_17;
    }

    if ([(RUITableView *)self isShowingPicker])
    {
      [(RUITableView *)self hidePickerViewAnimated:1];
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  if (([(NSIndexPath *)self->_pickerRowIndexPath isEqual:pathCopy]& 1) == 0)
  {
LABEL_4:
    [(RUITableView *)self showPickerViewForRow:v7 animated:animatedCopy];
  }

LABEL_17:
  if (self->_datePicker && !self->_showDatePicker || self->_selectPicker && !self->_showSelectPicker)
  {
    [(RUITableView *)self hidePickerViewAnimated:animatedCopy];
  }

  if ([v9 isEqualToString:@"selectPage"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    linkedPage = [v7 linkedPage];
    [WeakRetained _displaySupplementalPage:linkedPage];

    [(UITableView *)self->_tableView deselectRowAtIndexPath:pathCopy animated:(gAnimatedTransitions & 1) == 0];
  }

  if (([v9 isEqualToString:@"button"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"htmlButton"))
  {
    [(UITableView *)self->_tableView deselectRowAtIndexPath:pathCopy animated:(gAnimatedTransitions & 1) == 0];
    v20 = objc_loadWeakRetained(&self->_objectModel);
    [v20 tableViewOM:self elementDidChange:v7 action:2 completion:0];
  }

  else if (([v9 isEqualToString:@"link"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"htmlLink"))
  {
    [(UITableView *)self->_tableView deselectRowAtIndexPath:pathCopy animated:(gAnimatedTransitions & 1) == 0];
    [(RUITableView *)self rowDidChange:v7 action:2];
  }

  else
  {
    attributes2 = [v7 attributes];
    v31 = [attributes2 objectForKey:@"radioGroup"];

    if ([v31 length])
    {
      [(RUITableView *)self setSelectedRadioGroupRow:v7];
      [(UITableView *)self->_tableView deselectRowAtIndexPath:pathCopy animated:(gAnimatedTransitions & 1) == 0];
      [(RUITableView *)self rowDidChange:v7 action:2];
      objectModel = [(RUITableView *)self objectModel];
      visiblePage = [objectModel visiblePage];
      parentPage = [visiblePage parentPage];

      if (parentPage)
      {
        v43 = v31;
        v44 = objectModel;
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
              rows = [v39 rows];
              if ([rows containsObject:v7])
              {
                attributes3 = [v39 attributes];
                v42 = [attributes3 objectForKey:@"autoGoBack"];

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
        objectModel = v44;
      }
    }
  }

  attributes4 = [v7 attributes];
  v22 = [attributes4 objectForKeyedSubscript:@"alternateDetailLabel"];

  if (v22)
  {
    [v7 setShowAlternateDetailLabel:{objc_msgSend(v7, "showAlternateDetailLabel") ^ 1}];
    tableView = self->_tableView;
    v51 = pathCopy;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    [(UITableView *)tableView reloadRowsAtIndexPaths:v24 withRowAnimation:5];
  }

  tableView = [(RUITableView *)self tableView];
  allowsMultipleSelectionDuringEditing = [tableView allowsMultipleSelectionDuringEditing];
  tableView2 = [(RUITableView *)self tableView];
  isEditing = [tableView2 isEditing];

  if (allowsMultipleSelectionDuringEditing && isEditing)
  {
    objectModel2 = [(RUITableView *)self objectModel];
    [objectModel2 tableViewOMDidChange:self];
  }

  [(UITableView *)self->_tableView endUpdates];

LABEL_33:
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(RUITableView *)self objectModelRowForIndexPath:pathCopy];
  tableCell = [v8 tableCell];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = *MEMORY[0x277D76F30];
  }

  else if ([(NSIndexPath *)self->_embeddedPickerRowIndexPath isEqual:pathCopy])
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
    [v8 rowHeightWithMax:viewCopy peggedHeight:pathCopy tableView:v12 indexPath:v13];
    if (v17 == -1.0)
    {
      v18 = *MEMORY[0x277D76F30];
      v17 = v18;
    }

    v11 = v17;
  }

  return v11;
}

- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path
{
  v4 = [(RUITableView *)self objectModelRowForIndexPath:path];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(RUITableView *)self objectModelRowForIndexPath:path];
  isEditingEnabled = [v4 isEditingEnabled];

  return isEditingEnabled;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(RUITableView *)self objectModelRowForIndexPath:pathCopy];
  deleteAction = [v8 deleteAction];
  if (deleteAction)
  {
  }

  else
  {
    attributes = [v8 attributes];
    v11 = [attributes objectForKeyedSubscript:@"deletionFunction"];

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

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(RUITableView *)self objectModelRowForIndexPath:pathCopy];
  v9 = [(RUITableView *)self tableView:viewCopy editingStyleForRowAtIndexPath:pathCopy];

  if (v9 != 1)
  {
    LOBYTE(v9) = [v8 indentWhileEditing];
  }

  return v9;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (style == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    v8 = [WeakRetained tableViewOM:self deleteRowAtIndexPath:pathCopy];

    if (v8)
    {
      sections = [(RUITableView *)self sections];
      v10 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

      [v10 removeRowAtIndex:{objc_msgSend(pathCopy, "row")}];
      tableView = self->_tableView;
      v12 = [MEMORY[0x277CBEA60] arrayWithObject:pathCopy];
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

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  viewCopy = view;
  sections = [(RUITableView *)self sections];
  v8 = [sections objectAtIndex:section];

  if ([v8 hasValueForDrawsTopSeparator])
  {
    drawTopSeparator = [v8 drawTopSeparator];
  }

  else
  {
    drawTopSeparator = [viewCopy _drawsSeparatorAtTopOfSections];
  }

  v10 = drawTopSeparator;

  return v10;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  sections = [(RUITableView *)self sections];
  v12 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  rows = [v12 rows];
  v8 = [pathCopy row];

  v9 = [rows objectAtIndexedSubscript:v8];

  detailButton = [v9 detailButton];

  if (detailButton)
  {
    detailButton2 = [v9 detailButton];
    [(RUITableView *)self performAction:2 forElement:detailButton2 completion:0];
  }
}

- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path
{
  v4 = [(RUITableView *)self objectModelRowForIndexPath:path];
  isCopyable = [v4 isCopyable];

  return isCopyable;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  v5 = [(RUITableView *)self objectModelRowForIndexPath:path, point.x, point.y];
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

- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  v7 = [(RUITableView *)self objectModelRowForIndexPath:path];
  v8 = v7;
  v9 = sel_copy_ == action && ([v7 isCopyable] & 1) != 0;

  return v9;
}

- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  if (sel_copy_ == action)
  {
    v9 = [(RUITableView *)self objectModelRowForIndexPath:path];
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    copyText = [v9 copyText];
    [generalPasteboard setString:copyText];
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

- (id)indexPathForPreferredFocusedViewInTableView:(id)view
{
  viewCopy = view;
  if ([viewCopy numberOfSections] < 1 || objc_msgSend(viewCopy, "numberOfRowsInSection:", 0) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  }

  return v4;
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  previouslyFocusedIndexPath = [contextCopy previouslyFocusedIndexPath];

  if (previouslyFocusedIndexPath)
  {
    previouslyFocusedIndexPath2 = [contextCopy previouslyFocusedIndexPath];
    v8 = [(RUITableView *)self objectModelRowForIndexPath:previouslyFocusedIndexPath2];

    [v8 setFocused:0];
  }

  nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];

  if (nextFocusedIndexPath)
  {
    nextFocusedIndexPath2 = [contextCopy nextFocusedIndexPath];
    v11 = [(RUITableView *)self objectModelRowForIndexPath:nextFocusedIndexPath2];

    [v11 setFocused:1];
  }
}

- (void)performAction:(int)action forElement:(id)element completion:(id)completion
{
  completionCopy = completion;
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained activateElement:elementCopy completion:completionCopy];
}

- (void)textFieldStartedEditing:(id)editing
{
  editingCopy = editing;
  indexPathsForSelectedRows = [(UITableView *)self->_tableView indexPathsForSelectedRows];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __40__RUITableView_textFieldStartedEditing___block_invoke;
  v27[3] = &unk_2782E8E98;
  v27[4] = self;
  [indexPathsForSelectedRows enumerateObjectsUsingBlock:v27];

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

  v7 = editingCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v7 == 0;
  superview = v7;
  if ((isKindOfClass & 1) == 0 && v7)
  {
    superview = v7;
    do
    {
      v11 = superview;
      superview = [superview superview];

      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
      v9 = superview == 0;
    }

    while ((v12 & 1) == 0 && superview);
  }

  if (!v9)
  {
    v13 = [(UITableView *)self->_tableView indexPathForCell:superview];
    if (v13)
    {
      v14 = v13;
      v15 = [(RUITableView *)self objectModelRowForIndexPath:v13];
      attributes = [v15 attributes];
      v17 = [attributes objectForKeyedSubscript:@"class"];
      if ([v17 isEqualToString:@"editableText"])
      {
        attributes2 = [v15 attributes];
        v19 = [attributes2 objectForKeyedSubscript:@"changeNavButtonBarOnEdit"];
        v20 = [v19 isEqualToString:@"true"];

        v6 = qword_27CD9FEF0 + 272;
        if (v20)
        {
          attributes3 = [v15 attributes];
          v22 = [attributes3 objectForKeyedSubscript:@"navButtonBarPosition"];
          v23 = [v22 isEqualToString:@"right"];

          if (v23)
          {
            [(RUITableView *)self _showRightBarButtonItemForLabel];
          }

          else
          {
            attributes4 = [v15 attributes];
            v25 = [attributes4 objectForKeyedSubscript:@"navButtonBarPosition"];
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

- (void)_textChanged:(id)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained tableViewOMDidChange:self];
}

- (BOOL)webViewOM:(id)m shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type
{
  requestCopy = request;
  mCopy = m;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  LOBYTE(type) = [WeakRetained webViewOM:mCopy shouldStartLoadWithRequest:requestCopy navigationType:type];

  return type;
}

- (id)sourceURL
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  sourceURL = [WeakRetained sourceURL];

  return sourceURL;
}

- (void)_enumerateRowsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  v6 = 0;
  v16 = 0;
  do
  {
    sections = [(RUITableView *)self sections];
    v8 = [sections count];

    if (v5 >= v8)
    {
      break;
    }

    sections2 = [(RUITableView *)self sections];
    v10 = [sections2 objectAtIndexedSubscript:v5];

    rows = [v10 rows];
    v12 = [rows count];

    if (v6 < v12)
    {
      v13 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:v5];
      v14 = [(RUITableView *)self objectModelRowForIndexPath:v13];
      blockCopy[2](blockCopy, v14, v13, &v16);
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

- (void)rowDidEndEditing:(id)editing
{
  editingCopy = editing;
  attributes = [editingCopy attributes];
  v6 = [attributes objectForKey:@"nextKeyField"];

  lowercaseString = [v6 lowercaseString];
  v8 = [lowercaseString isEqualToString:@"false"];

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
      v9 = [(RUITableView *)self indexPathForRow:editingCopy];
      section = [v9 section];
      v22 = [v9 row];
      sections = [(RUITableView *)self sections];
      v12 = [sections count];

      while (--v12 >= 0)
      {
        sections2 = [(RUITableView *)self sections];
        v14 = [sections2 objectAtIndexedSubscript:v12];
        rows = [v14 rows];
        v16 = [rows count];

        if (v16)
        {
          if (section == v12)
          {
            sections3 = [(RUITableView *)self sections];
            v18 = [sections3 objectAtIndexedSubscript:section];
            rows2 = [v18 rows];
            v20 = [rows2 count] - 1;

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
      v23[5] = section;
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

- (BOOL)_becomeFirstResponderAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(RUITableView *)self objectModelRowForIndexPath:pathCopy];
  tableCell = [v5 tableCell];
  editableTextField = [tableCell editableTextField];
  if (editableTextField)
  {
    v8 = 1;
    [(RUITableView *)self activateRowAtIndexPath:pathCopy animated:(gAnimatedTransitions & 1) == 0];
  }

  else if ([v5 supportsAutomaticSelection])
  {
    v8 = 1;
    [(UITableView *)self->_tableView selectRowAtIndexPath:pathCopy animated:(gAnimatedTransitions & 1) == 0 scrollPosition:0];
    [(RUITableView *)self tableView:self->_tableView didSelectRowAtIndexPath:pathCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)rowDidChange:(id)change action:(int)action
{
  v4 = *&action;
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained tableViewOMDidChange:self];

  attributes = [changeCopy attributes];
  v9 = [attributes objectForKeyedSubscript:@"class"];
  if (([v9 isEqualToString:@"switch"] & 1) == 0)
  {

    goto LABEL_6;
  }

  attributes2 = [changeCopy attributes];
  v11 = [attributes2 objectForKeyedSubscript:@"url"];

  if (v11)
  {
    attributes3 = [changeCopy attributes];
    v13 = [attributes3 objectForKeyedSubscript:@"httpMethod"];

    if (!v13)
    {
      attributes4 = [changeCopy attributes];
      attributes = [attributes4 mutableCopy];

      [attributes setObject:@"POST" forKeyedSubscript:@"httpMethod"];
      [changeCopy setAttributes:attributes];
LABEL_6:
    }
  }

  [changeCopy startActivityIndicator];
  tableCell = [changeCopy tableCell];
  v16 = objc_loadWeakRetained(&self->_objectModel);
  [v16 setPopoverSourceItem:tableCell];

  v17 = objc_loadWeakRetained(&self->_objectModel);
  LOBYTE(v16) = objc_opt_respondsToSelector();

  if (v16)
  {
    v18 = objc_loadWeakRetained(&self->_objectModel);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __36__RUITableView_rowDidChange_action___block_invoke;
    v19[3] = &unk_2782E8018;
    v20 = changeCopy;
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

- (id)textFieldRow:(id)row changeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  rowCopy = row;
  attributes = [rowCopy attributes];
  v12 = [attributes objectForKey:@"changeCharactersFunction"];

  tableCell = [rowCopy tableCell];

  ruiEditableTextField = [tableCell ruiEditableTextField];
  text = [ruiEditableTextField text];

  if (text)
  {
    v16 = text;
  }

  else
  {
    v16 = &stru_282D68F58;
  }

  if (stringCopy)
  {
    v17 = stringCopy;
  }

  else
  {
    v17 = &stru_282D68F58;
  }

  v18 = stringCopy;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v20 = MEMORY[0x277CBEA60];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:length];
  v23 = [v20 arrayWithObjects:{v16, v21, v22, v17, 0}];
  v24 = [WeakRetained invokeScriptFunction:v12 withArguments:v23];

  return v24;
}

- (Class)tableCellClassForTableViewRow:(id)row
{
  rowCopy = row;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v6 = [WeakRetained customTableCellClassForTableViewRow:rowCopy];

  return v6;
}

- (id)filteredResultsWithSearchTerm:(id)term
{
  termCopy = term;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sections, "count")}];
  sections = self->_sections;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__RUITableView_filteredResultsWithSearchTerm___block_invoke;
  v12[3] = &unk_2782E8F60;
  v13 = termCopy;
  v7 = v5;
  v14 = v7;
  v8 = termCopy;
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

- (void)searchBar:(id)bar textDidChange:(id)change
{
  text = [bar text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v10 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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

  tableView = [(RUITableView *)self tableView];
  [tableView reloadData];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  self->_isSearching = 0;
  filteredSections = self->_filteredSections;
  self->_filteredSections = 0;
  clickedCopy = clicked;

  [clickedCopy setText:&stru_282D68F58];
  tableView = [(RUITableView *)self tableView];
  [tableView reloadData];
}

- (CGSize)scrollView:(id)view contentSizeForZoomScale:(double)scale withProposedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_cachedContentSize = &self->_cachedContentSize;
  v9 = FASizeRoundMetrics(self->_cachedContentSize.width);
  v11 = v10;
  if (v9 != FASizeRoundMetrics(width) || v11 != v12)
  {
    pageElement = [(RUIElement *)self pageElement];
    page = [pageElement page];
    view = [page view];
    [view setNeedsLayout];
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