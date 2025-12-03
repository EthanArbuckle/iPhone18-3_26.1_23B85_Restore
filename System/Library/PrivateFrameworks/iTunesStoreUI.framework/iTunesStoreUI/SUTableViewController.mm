@interface SUTableViewController
- (BOOL)deleteRowAtIndexPath:(id)path;
- (BOOL)indexPathIsPlaceholder:(id)placeholder;
- (SUTableViewController)init;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)copyArchivableContext;
- (id)copyDefaultScriptProperties;
- (id)copyScriptProperties;
- (id)newTableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int)clippedCornersForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)numberOfRows;
- (void)_deliverTapCount:(int64_t)count forIndexPath:(id)path;
- (void)_doubleTapTimeout;
- (void)_reloadPlaceholderCells;
- (void)_resetTableView;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)reloadData;
- (void)scrollToRowAtIndexPath:(id)path atScrollPosition:(int64_t)position animated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setDataSource:(id)source;
- (void)setScriptProperties:(id)properties;
- (void)setTableViewStyle:(int64_t)style;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SUTableViewController

- (SUTableViewController)init
{
  v5.receiver = self;
  v5.super_class = SUTableViewController;
  v2 = [(SUViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_disappearOrientation = [(SUViewController *)v2 interfaceOrientation];
  }

  return v3;
}

- (void)dealloc
{
  [(SUTableDataSource *)self->_dataSource setCellReuseSource:0];

  self->_dataSource = 0;
  self->_firstTapIndexPath = 0;
  [(SUTableView *)self->_tableView setDataSource:0];
  [(SUTableView *)self->_tableView setDelegate:0];

  self->_tableView = 0;
  v3.receiver = self;
  v3.super_class = SUTableViewController;
  [(SUViewController *)&v3 dealloc];
}

- (int)clippedCornersForIndexPath:(id)path
{
  if (self->_tableViewStyle != 1)
  {
    return 0;
  }

  v5 = [path row];
  v6 = -[SUTableDataSource numberOfRowsInSection:](self->_dataSource, "numberOfRowsInSection:", [path section]) - 1;
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  if (v5 == v6)
  {
    return v7;
  }

  else
  {
    return v5 == 0;
  }
}

- (BOOL)deleteRowAtIndexPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  numberOfSections = [(SUTableDataSource *)self->_dataSource numberOfSections];
  v6 = [(SUTableDataSource *)self->_dataSource deleteIndexPath:path];
  if (v6)
  {
    tableView = [(SUTableViewController *)self tableView];
    [(SUTableViewController *)self reloadForChangedRowCount:[(SUTableViewController *)self numberOfRows]- 1];
    [(UITableView *)tableView beginUpdates];
    if (numberOfSections >= 2 && numberOfSections > [(SUTableDataSource *)self->_dataSource numberOfSections])
    {
      -[UITableView deleteSections:withRowAnimation:](tableView, "deleteSections:withRowAnimation:", [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(path, "section")}], 1);
    }

    -[UITableView deleteRowsAtIndexPaths:withRowAnimation:](tableView, "deleteRowsAtIndexPaths:withRowAnimation:", [MEMORY[0x1E695DEC8] arrayWithObjects:{path, 0}], 1);
    [(UITableView *)tableView endUpdates];
    indexPathsForVisibleRows = [(UITableView *)tableView indexPathsForVisibleRows];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(NSArray *)indexPathsForVisibleRows countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(indexPathsForVisibleRows);
          }

          [(SUTableDataSource *)self->_dataSource configureCell:[(UITableView *)tableView cellForRowAtIndexPath:*(*(&v14 + 1) + 8 * v12)] forIndexPath:*(*(&v14 + 1) + 8 * v12)];
          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)indexPathsForVisibleRows countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  return v6;
}

- (BOOL)indexPathIsPlaceholder:(id)placeholder
{
  if (self->_placeholderRowCount < 1)
  {
    return 0;
  }

  v5 = [(SUTableViewController *)self numberOfSectionsInTableView:self->_tableView];
  if ([placeholder section] != v5 - 1)
  {
    return 0;
  }

  v6 = -[SUTableViewController tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", self->_tableView, [placeholder section]);
  return [placeholder row] >= v6 - self->_placeholderRowCount;
}

- (id)newTableView
{
  v3 = [SUTableView alloc];
  [-[SUTableViewController view](self "view")];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableViewStyle = [(SUTableViewController *)self tableViewStyle];

  return [(SUTableView *)v3 initWithFrame:tableViewStyle style:v5, v7, v9, v11];
}

- (void)reloadData
{
  [(SUTableDataSource *)self->_dataSource reloadData];
  -[SUTableView setAllowsHeaderAndFooterToFloat:](self->_tableView, "setAllowsHeaderAndFooterToFloat:", [-[SUTableViewController sectionIndexTitlesForTableView:](self sectionIndexTitlesForTableView:{self->_tableView), "count"}] != 0);
  [(SUTableView *)self->_tableView reloadData];
  [(SUTableViewController *)self _reloadPlaceholderCells];
  if ([(SUTableDataSource *)self->_dataSource numberOfSections]>= 1)
  {
    v3 = [(SUViewControllerContext *)[(SUViewController *)self _restoredContext] valueForMetadataKey:@"offset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = CGPointFromString(v3);
      [(SUTableView *)self->_tableView contentOffset];
      if (v4.x != v6 || v4.y != v5)
      {
        [(SUTableView *)self->_tableView contentSize];
        v9 = v8;
        [(SUTableView *)self->_tableView frame];
        if (v4.y <= v9 - v10)
        {
          [(SUTableView *)self->_tableView setContentOffset:v4.x, v4.y];
          [(SUTableView *)self->_tableView flashScrollIndicators];
        }
      }
    }

    [(SUViewController *)self resetRestoredContext];
  }

  numberOfRows = [(SUTableViewController *)self numberOfRows];

  [(SUTableViewController *)self reloadForChangedRowCount:numberOfRows];
}

- (void)scrollToRowAtIndexPath:(id)path atScrollPosition:(int64_t)position animated:(BOOL)animated
{
  animatedCopy = animated;
  tableView = [(SUTableViewController *)self tableView];
  [(UITableView *)tableView scrollToRowAtIndexPath:path atScrollPosition:1 animated:animatedCopy];
  delegate = [(UITableView *)tableView delegate];
  if (position == 1)
  {
    v10 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v10 tableView:tableView heightForHeaderInSection:0];
      if (v11 > 0.00000011920929)
      {
        [(UITableView *)tableView contentOffset];

        [(UITableView *)tableView setContentOffset:animatedCopy animated:?];
      }
    }
  }
}

- (void)setTableViewStyle:(int64_t)style
{
  if (self->_tableViewStyle != style)
  {
    self->_tableViewStyle = style;
    [(SUTableViewController *)self _resetTableView];
  }
}

- (id)copyArchivableContext
{
  v7.receiver = self;
  v7.super_class = SUTableViewController;
  copyArchivableContext = [(SUViewController *)&v7 copyArchivableContext];
  if (![(SUViewController *)self shouldExcludeFromNavigationHistory])
  {
    tableView = self->_tableView;
    if (tableView)
    {
      [(SUTableView *)tableView contentOffset];
      v5 = NSStringFromCGPoint(v8);
LABEL_6:
      [copyArchivableContext setValue:v5 forMetadataKey:@"offset"];
      return copyArchivableContext;
    }

    if ([(SUViewController *)self _restoredContext])
    {
      v5 = [(SUViewControllerContext *)[(SUViewController *)self _restoredContext] valueForMetadataKey:@"offset"];
      goto LABEL_6;
    }
  }

  return copyArchivableContext;
}

- (id)copyDefaultScriptProperties
{
  v4.receiver = self;
  v4.super_class = SUTableViewController;
  copyDefaultScriptProperties = [(SUViewController *)&v4 copyDefaultScriptProperties];
  [copyDefaultScriptProperties setScrollingDisabled:0];
  [copyDefaultScriptProperties setShowsBackgroundShadow:0];
  return copyDefaultScriptProperties;
}

- (id)copyScriptProperties
{
  copyDefaultScriptProperties = [(SUTableViewController *)self copyDefaultScriptProperties];
  tableView = self->_tableView;
  if (tableView)
  {
    [copyDefaultScriptProperties setBackgroundColor:{-[SUTableView backgroundColor](tableView, "backgroundColor")}];
    [copyDefaultScriptProperties setScrollingDisabled:{-[SUTableView isScrollEnabled](self->_tableView, "isScrollEnabled") ^ 1}];
    [copyDefaultScriptProperties setShowsBackgroundShadow:{-[SUTableView _showsBackgroundShadow](self->_tableView, "_showsBackgroundShadow")}];
    [copyDefaultScriptProperties setTopExtensionColor:{-[UIScrollView topExtensionViewColor](self->_tableView, "topExtensionViewColor")}];
  }

  return copyDefaultScriptProperties;
}

- (void)didReceiveMemoryWarning
{
  [(SUTableDataSource *)self->_dataSource resetCaches];
  v3.receiver = self;
  v3.super_class = SUTableViewController;
  [(SUViewController *)&v3 didReceiveMemoryWarning];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SUTableViewController;
  [(SUViewController *)&v3 loadView];
  self->_preferUserInteractionWhileScrolling = MGGetBoolAnswer() ^ 1;
  [(SUTableViewController *)self _resetTableView];
  [(SUTableViewController *)self reloadData];
}

- (void)setScriptProperties:(id)properties
{
  v5.receiver = self;
  v5.super_class = SUTableViewController;
  [(SUViewController *)&v5 setScriptProperties:?];
  if ([properties backgroundColor])
  {
    -[SUTableView setBackgroundColor:](self->_tableView, "setBackgroundColor:", [properties backgroundColor]);
  }

  -[SUTableView setScrollEnabled:](self->_tableView, "setScrollEnabled:", [properties isScrollingDisabled] ^ 1);
  -[SUTableView _setShowsBackgroundShadow:](self->_tableView, "_setShowsBackgroundShadow:", [properties showsBackgroundShadow]);
  if ([properties topExtensionColor])
  {
    -[UIScrollView setTopExtensionViewColor:](self->_tableView, "setTopExtensionViewColor:", [properties topExtensionColor]);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUTableView *)self->_tableView flashScrollIndicators];
  v5.receiver = self;
  v5.super_class = SUTableViewController;
  [(SUViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  disappearOrientation = self->_disappearOrientation;
  if (disappearOrientation == [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")])
  {
    [(SUTableViewController *)self _reloadPlaceholderCells];
    [(SUTableView *)self->_tableView deselectRowAtIndexPath:[(SUTableView *)self->_tableView indexPathForSelectedRow] animated:appearCopy];
  }

  else
  {
    [(SUTableDataSource *)self->_dataSource resetLayoutCaches];
    [(SUTableViewController *)self reloadData];
  }

  v6.receiver = self;
  v6.super_class = SUTableViewController;
  [(SUViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  self->_disappearOrientation = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__doubleTapTimeout object:0];
  v5.receiver = self;
  v5.super_class = SUTableViewController;
  [(SUViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  [(SUTableDataSource *)self->_dataSource resetLayoutCaches];
  [(SUTableViewController *)self reloadData];
  v7.receiver = self;
  v7.super_class = SUTableViewController;
  [(SUViewController *)&v7 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (unint64_t)numberOfRows
{
  tableView = [(SUTableViewController *)self tableView];
  numberOfSections = [(UITableView *)tableView numberOfSections];
  if (!numberOfSections)
  {
    return 0;
  }

  v4 = numberOfSections;
  v5 = 0;
  for (i = 0; i != v4; ++i)
  {
    v5 += [(UITableView *)tableView numberOfRowsInSection:i];
  }

  return v5;
}

- (void)setDataSource:(id)source
{
  dataSource = self->_dataSource;
  if (dataSource != source)
  {
    [(SUTableDataSource *)dataSource setCellReuseSource:0];

    sourceCopy = source;
    self->_dataSource = sourceCopy;
    [(SUTableDataSource *)sourceCopy setCellReuseSource:self->_tableView];
    v7 = self->_dataSource;
    if (v7)
    {
      tableViewStyle = [(SUTableDataSource *)v7 tableViewStyle];

      [(SUTableViewController *)self setTableViewStyle:tableViewStyle];
    }
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate && self->_preferUserInteractionWhileScrolling)
  {
    [(SUTableDataSource *)self->_dataSource endPreferringUserInteraction];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (self->_preferUserInteractionWhileScrolling)
  {
    [(SUTableDataSource *)self->_dataSource endPreferringUserInteraction];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (self->_preferUserInteractionWhileScrolling)
  {
    [(SUTableDataSource *)self->_dataSource beginPreferringUserInteraction];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [(SUTableViewController *)self indexPathIsPlaceholder:path];
  dataSource = self->_dataSource;
  if (v6)
  {
    v8 = [(SUTableDataSource *)dataSource placeholderCellForIndexPath:path];
  }

  else
  {
    v8 = [(SUTableDataSource *)dataSource cellForIndexPath:path];
  }

  v9 = v8;
  [v8 setClipCorners:{-[SUTableViewController clippedCornersForIndexPath:](self, "clippedCornersForIndexPath:", path)}];
  return v9;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    [(SUTableViewController *)self deleteRowAtIndexPath:path];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v7 = [(SUTableDataSource *)self->_dataSource numberOfRowsInSection:section];
  v8 = [(SUTableViewController *)self numberOfSectionsInTableView:view];
  placeholderRowCount = self->_placeholderRowCount;
  if (v8 - 1 != section || placeholderRowCount <= 0)
  {
    placeholderRowCount = 0;
  }

  return placeholderRowCount + v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = [(SUTableViewController *)self indexPathIsPlaceholder:path];
  dataSource = self->_dataSource;
  if (v8)
  {
    [(SUTableDataSource *)dataSource configurePlaceholderCell:cell forIndexPath:path];
  }

  else
  {
    [(SUTableDataSource *)dataSource configureCell:cell forIndexPath:path];
  }

  accessoryView = [cell accessoryView];
  if (!accessoryView)
  {
    isUserInteractionEnabled = [cell isUserInteractionEnabled];
    goto LABEL_9;
  }

  isUserInteractionEnabled2 = [accessoryView isUserInteractionEnabled];
  isUserInteractionEnabled3 = [cell isUserInteractionEnabled];
  if (isUserInteractionEnabled3 && (isUserInteractionEnabled2 & 1) == 0)
  {
    isUserInteractionEnabled = [(SUTableViewController *)self canSelectRowAtIndexPath:path];
LABEL_9:
    isUserInteractionEnabled3 = isUserInteractionEnabled;
  }

  [cell setUserInteractionEnabled:isUserInteractionEnabled3];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  result = [(SUTableDataSource *)self->_dataSource numberOfSections];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__doubleTapTimeout object:0];
  v7 = self->_firstTapIndexPath;

  self->_firstTapIndexPath = 0;
  if (v7 && ([(NSIndexPath *)v7 isEqual:path]& 1) != 0)
  {
    v6 = 2;
  }

  else
  {
    if ([(SUTableDataSource *)self->_dataSource canDoubleTapIndexPath:path])
    {
      self->_firstTapIndexPath = path;
      [(SUTableViewController *)self performSelector:sel__doubleTapTimeout withObject:0 afterDelay:0.349999994];
      goto LABEL_8;
    }

    v6 = 1;
  }

  [(SUTableViewController *)self _deliverTapCount:v6 forIndexPath:path];
LABEL_8:
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  if ([(SUTableViewController *)self indexPathIsPlaceholder:path])
  {
    return 0;
  }

  else
  {
    return [(SUTableDataSource *)self->_dataSource canDeleteIndexPath:path];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v7 = [(SUTableDataSource *)self->_dataSource headerViewForSection:section];
  if (v7)
  {
    [v7 frame];
    return v8;
  }

  else if ([(SUTableDataSource *)self->_dataSource titleForHeaderInSection:section])
  {

    [view sectionHeaderHeight];
  }

  else
  {
    return *MEMORY[0x1E69DE3D0];
  }

  return result;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  if (self->_dataSource)
  {
    v6 = [(SUTableViewController *)self indexPathIsPlaceholder:path];
    dataSource = self->_dataSource;
    if (v6)
    {
      [(SUTableDataSource *)dataSource heightForPlaceholderCells];
    }

    else
    {
      [(SUTableDataSource *)dataSource cellHeightForIndexPath:path];
    }
  }

  else
  {
    v8 = 45.0;
  }

  return fmax(v8, 1.0);
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  v6 = [view cellForRowAtIndexPath:path];
  if (!v6 || [v6 isUserInteractionEnabled])
  {
    dataSource = self->_dataSource;
    if (!dataSource || [(SUTableDataSource *)dataSource canSelectIndexPath:path])
    {
      v8 = [(SUTableViewController *)self canSelectRowAtIndexPath:path];
      if (path)
      {
        if (v8)
        {
          return path;
        }
      }
    }
  }

  v10 = MEMORY[0x1E696AC88];

  return [v10 indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
}

- (void)_doubleTapTimeout
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  if (self->_firstTapIndexPath)
  {
    [(SUTableViewController *)self _deliverTapCount:1 forIndexPath:?];

    self->_firstTapIndexPath = 0;
  }
}

- (void)_deliverTapCount:(int64_t)count forIndexPath:(id)path
{
  if (![(SUTableViewController *)self handleSelectionForIndexPath:path tapCount:count])
  {
    tableView = [(SUTableViewController *)self tableView];

    [(UITableView *)tableView deselectRowAtIndexPath:path animated:1];
  }
}

- (void)_reloadPlaceholderCells
{
  tableView = self->_tableView;
  if (tableView)
  {
    [(SUTableView *)tableView bounds];
    v5 = v4;
  }

  else
  {
    v5 = *(MEMORY[0x1E695F058] + 24);
  }

  if (v5 > 0.00000011920929)
  {
    placeholderRowCount = self->_placeholderRowCount;
    dataSource = self->_dataSource;
    if (dataSource)
    {
      [(SUTableDataSource *)dataSource heightForPlaceholderCells];
      v9 = v8;
    }

    else
    {
      v9 = -1.0;
    }

    v10 = self->_tableView;
    if (v10)
    {
      [(SUTableView *)v10 contentSize];
    }

    else
    {
      v11 = *(MEMORY[0x1E695F060] + 8);
    }

    v12 = v11 - floor(v9 * placeholderRowCount);
    if (v9 <= 0.00000011920929)
    {
      v12 = v11;
    }

    if (v12 >= v5 || v9 < 0.00000011920929)
    {
      v14 = 0;
    }

    else
    {
      v14 = vcvtmd_s64_f64((v5 - v12) / v9);
    }

    if (self->_placeholderRowCount != v14)
    {
      self->_placeholderRowCount = v14;
      v15 = self->_tableView;

      [(SUTableView *)v15 reloadData];
    }
  }
}

- (void)_resetTableView
{
  if (self->_tableView)
  {
    [(SUTableDataSource *)self->_dataSource setCellReuseSource:0];
    [(SUTableView *)self->_tableView setDataSource:0];
    [(SUTableView *)self->_tableView setDelegate:0];
    [(SUTableView *)self->_tableView removeFromSuperview];

    self->_tableView = 0;
  }

  if ([(SUTableViewController *)self isViewLoaded])
  {
    newTableView = [(SUTableViewController *)self newTableView];
    self->_tableView = newTableView;
    [(SUTableView *)newTableView setAutoresizingMask:18];
    [(SUTableView *)self->_tableView setDataSource:self];
    [(SUTableView *)self->_tableView setDelegate:self];
    [(SUTableDataSource *)self->_dataSource setCellReuseSource:self->_tableView];
    view = [(SUTableViewController *)self view];
    tableView = self->_tableView;

    [view addSubview:tableView];
  }
}

@end