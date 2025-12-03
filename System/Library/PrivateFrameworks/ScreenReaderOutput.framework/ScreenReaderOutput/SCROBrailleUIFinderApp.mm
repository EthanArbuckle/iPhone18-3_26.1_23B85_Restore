@interface SCROBrailleUIFinderApp
+ (id)_absoluteRootURL;
+ (id)cloudRootURL;
+ (void)ensureBRFContainerExists;
- (BOOL)_canGoUpOneLevel;
- (BOOL)_hasBookMark;
- (BOOL)_isContextMenuOpen;
- (BOOL)_isContextMenuOptionsOpen;
- (BOOL)_isCreateNewMenuOpen;
- (BOOL)_isEditing;
- (BOOL)_isFileSizeAcceptableForURL:(id)l;
- (BOOL)_isOpen;
- (BOOL)_isPathComponentBad:(id)bad;
- (BOOL)_isShowingAlert;
- (BOOL)_isShowingDeleteConfirmView;
- (BOOL)_isShowingFindField;
- (BOOL)_isTitleGood:(id)good;
- (BOOL)_isViewerContextMenuOpen;
- (BOOL)_isViewing;
- (SCROBrailleUIFinderApp)initWithDelegate:(id)delegate;
- (id)_bookmarkLocationsInCurrentLine;
- (id)_brfContentForURL:(id)l;
- (id)_brfForUnicodeBraille:(id)braille;
- (id)_currentFileRelativePath;
- (id)_fileItemsInURL:(id)l directoriesOnly:(BOOL)only excluding:(id)excluding;
- (id)_rawBookmarks;
- (id)_secureURLWithBase:(id)base userInput:(id)input;
- (id)views;
- (int64_t)_loadReadingCursorForCurrentFile;
- (void)_closeAlert;
- (void)_closeContextMenu;
- (void)_closeContextMenuOptions;
- (void)_closeCreateNewMenu;
- (void)_closeDeleteConfirmView;
- (void)_closeEditorForBRF;
- (void)_closeFilesList;
- (void)_closeFindField;
- (void)_closeViewerContextMenu;
- (void)_closeViewerForBRF;
- (void)_handleActionInAlert:(id)alert;
- (void)_handleActionInContextMenu:(id)menu;
- (void)_handleActionInContextMenuOptions:(id)options;
- (void)_handleActionInCreateNewMenu:(id)menu;
- (void)_handleActionInDeleteConfirmView:(id)view;
- (void)_handleActionInEditor:(id)editor;
- (void)_handleActionInFilesList:(id)list;
- (void)_handleActionInFindField:(id)field;
- (void)_handleActionInViewer:(id)viewer;
- (void)_handleActionInViewerContextMenu:(id)menu;
- (void)_handleReturnInViewer;
- (void)_moveToNextBookmark;
- (void)_moveToPreviousBookmark;
- (void)_openAlertWithMessage:(id)message;
- (void)_openContextMenuForURL:(id)l;
- (void)_openContextMoveOptionsExcluding:(id)excluding;
- (void)_openCreateNewMenu;
- (void)_openDeleteConfirmView;
- (void)_openEditorForBRF:(id)f;
- (void)_openFilesListInURL:(id)l withFocusAtIdentifier:(id)identifier display:(BOOL)display;
- (void)_openFindField;
- (void)_openViewerContextMenuWithFocusSearch:(BOOL)search;
- (void)_openViewerForBRF:(id)f;
- (void)_saveBookmarks;
- (void)_saveReadingRange:(_NSRange)range;
- (void)_startAutoSave;
- (void)_stopAutoSave;
- (void)_writeUnicodeContent:(id)content toURL:(id)l;
- (void)close;
- (void)handleAction:(id)action;
- (void)lazyLoad;
- (void)open;
- (void)openWithURL:(id)l;
@end

@implementation SCROBrailleUIFinderApp

- (SCROBrailleUIFinderApp)initWithDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = SCROBrailleUIFinderApp;
  v3 = [(SCROBrailleUIApp *)&v9 initWithDelegate:delegate];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.scrod.braille.ui.finder", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v3->_queue];
    autoSaveTimer = v3->_autoSaveTimer;
    v3->_autoSaveTimer = v6;
  }

  return v3;
}

- (void)open
{
  if (![(SCROBrailleUIFinderApp *)self _isOpen])
  {
    if (_fetchedAbsoluteRootURL)
    {
      v3 = +[SCROBrailleUIFinderApp _absoluteRootURL];
      [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:v3];

      [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:0];
      currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
      [(SCROBrailleUIFinderApp *)self _openFilesListInURL:currentDirectoryURL];

      selfCopy = self;
      v5 = &selfCopy;
    }

    else
    {
      v6 = _SCROD_LOG();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "BRF Files Root URL not fetched yet - probably waiting for the creation of iCloud folder.", buf, 2u);
      }

      v7 = SCROBrailleUILocString(@"finder.failed.to.open.message");
      [(SCROBrailleUIFinderApp *)self _openAlertWithMessage:v7];

      v9.receiver = self;
      v5 = &v9;
    }

    v5->super_class = SCROBrailleUIFinderApp;
    [(objc_super *)v5 open];
  }
}

- (void)openWithURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = lCopy;
    uRLByStandardizingPath = [lCopy URLByStandardizingPath];

    v19 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [uRLByStandardizingPath path];
    v9 = [defaultManager fileExistsAtPath:path isDirectory:&v19];

    pathExtension = [uRLByStandardizingPath pathExtension];
    lowercaseString = [pathExtension lowercaseString];
    v12 = [lowercaseString isEqualToString:@"brf"];

    if (v9)
    {
      if (v19 == 1)
      {
        [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:uRLByStandardizingPath];
        [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:0];
        [(SCROBrailleUIFinderApp *)self _openFilesListInURL:uRLByStandardizingPath];
        selfCopy = self;
        v13 = &selfCopy;
LABEL_7:
        v13->super_class = SCROBrailleUIFinderApp;
        [(objc_super *)v13 open];
        goto LABEL_8;
      }

      if (v12)
      {
        uRLByDeletingLastPathComponent = [uRLByStandardizingPath URLByDeletingLastPathComponent];
        uRLByStandardizingPath2 = [uRLByDeletingLastPathComponent URLByStandardizingPath];
        [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:uRLByStandardizingPath2];

        [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:0];
        currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        [(SCROBrailleUIFinderApp *)self _openFilesListInURL:currentDirectoryURL withFocusAtIdentifier:0 display:0];

        [(SCROBrailleUIFinderApp *)self _openViewerForBRF:uRLByStandardizingPath];
        v17.receiver = self;
        v13 = &v17;
        goto LABEL_7;
      }
    }

LABEL_8:
  }
}

- (void)close
{
  if ([(SCROBrailleUIFinderApp *)self _isShowingDeleteConfirmView])
  {
    [(SCROBrailleUIFinderApp *)self _closeDeleteConfirmView];
  }

  if ([(SCROBrailleUIFinderApp *)self _isShowingAlert])
  {
    [(SCROBrailleUIFinderApp *)self _closeAlert];
  }

  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    [(SCROBrailleUIFinderApp *)self _closeViewerForBRF];
  }

  if ([(SCROBrailleUIFinderApp *)self _isViewerContextMenuOpen])
  {
    [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
  }

  if ([(SCROBrailleUIFinderApp *)self _isEditing])
  {
    [(SCROBrailleUIFinderApp *)self _closeEditorForBRF];
  }

  if ([(SCROBrailleUIFinderApp *)self _isContextMenuOptionsOpen])
  {
    [(SCROBrailleUIFinderApp *)self _closeContextMenuOptions];
  }

  if ([(SCROBrailleUIFinderApp *)self _isContextMenuOpen])
  {
    [(SCROBrailleUIFinderApp *)self _closeContextMenu];
  }

  if ([(SCROBrailleUIFinderApp *)self _isCreateNewMenuOpen])
  {
    [(SCROBrailleUIFinderApp *)self _closeCreateNewMenu];
  }

  if ([(SCROBrailleUIFinderApp *)self _isOpen])
  {
    [(SCROBrailleUIFinderApp *)self _closeFilesList];
  }

  v3.receiver = self;
  v3.super_class = SCROBrailleUIFinderApp;
  [(SCROBrailleUIApp *)&v3 close];
}

- (id)views
{
  v3 = objc_opt_new();
  filesListView = [(SCROBrailleUIFinderApp *)self filesListView];

  if (filesListView)
  {
    filesListView2 = [(SCROBrailleUIFinderApp *)self filesListView];
    [v3 addObject:filesListView2];
  }

  viewerView = [(SCROBrailleUIFinderApp *)self viewerView];

  if (viewerView)
  {
    viewerView2 = [(SCROBrailleUIFinderApp *)self viewerView];
    [v3 addObject:viewerView2];
  }

  viewerContextMenuView = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];

  if (viewerContextMenuView)
  {
    viewerContextMenuView2 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
    [v3 addObject:viewerContextMenuView2];
  }

  editorView = [(SCROBrailleUIFinderApp *)self editorView];

  if (editorView)
  {
    editorView2 = [(SCROBrailleUIFinderApp *)self editorView];
    [v3 addObject:editorView2];
  }

  findFieldView = [(SCROBrailleUIFinderApp *)self findFieldView];

  if (findFieldView)
  {
    findFieldView2 = [(SCROBrailleUIFinderApp *)self findFieldView];
    [v3 addObject:findFieldView2];
  }

  createNewMenuView = [(SCROBrailleUIFinderApp *)self createNewMenuView];

  if (createNewMenuView)
  {
    createNewMenuView2 = [(SCROBrailleUIFinderApp *)self createNewMenuView];
    [v3 addObject:createNewMenuView2];
  }

  contextMenuView = [(SCROBrailleUIFinderApp *)self contextMenuView];

  if (contextMenuView)
  {
    contextMenuView2 = [(SCROBrailleUIFinderApp *)self contextMenuView];
    [v3 addObject:contextMenuView2];
  }

  contextMenuOptionsView = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];

  if (contextMenuOptionsView)
  {
    contextMenuOptionsView2 = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];
    [v3 addObject:contextMenuOptionsView2];
  }

  alertView = [(SCROBrailleUIFinderApp *)self alertView];

  if (alertView)
  {
    alertView2 = [(SCROBrailleUIFinderApp *)self alertView];
    [v3 addObject:alertView2];
  }

  deleteConfirmView = [(SCROBrailleUIFinderApp *)self deleteConfirmView];

  if (deleteConfirmView)
  {
    deleteConfirmView2 = [(SCROBrailleUIFinderApp *)self deleteConfirmView];
    [v3 addObject:deleteConfirmView2];
  }

  return v3;
}

- (void)handleAction:(id)action
{
  actionCopy = action;
  if ([(SCROBrailleUIFinderApp *)self _isOpen])
  {
    if ([(SCROBrailleUIFinderApp *)self _isShowingAlert])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInAlert:actionCopy];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isShowingDeleteConfirmView])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInDeleteConfirmView:actionCopy];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isCreateNewMenuOpen])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInCreateNewMenu:actionCopy];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isShowingFindField])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInFindField:actionCopy];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isViewerContextMenuOpen])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInViewerContextMenu:actionCopy];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isViewing])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInViewer:actionCopy];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isEditing])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInEditor:actionCopy];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isContextMenuOptionsOpen])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInContextMenuOptions:actionCopy];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isContextMenuOpen])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInContextMenu:actionCopy];
    }

    else
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInFilesList:actionCopy];
    }
  }
}

- (void)_handleActionInAlert:(id)alert
{
  alertCopy = alert;
  if ([(SCROBrailleUIFinderApp *)self _isShowingAlert])
  {
    type = [alertCopy type];
    if (type <= 4 && ((1 << type) & 0x16) != 0)
    {
      [(SCROBrailleUIFinderApp *)self close];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v6 handleAction:alertCopy];
    }
  }
}

- (void)_handleActionInDeleteConfirmView:(id)view
{
  v20 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ([(SCROBrailleUIFinderApp *)self _isShowingDeleteConfirmView])
  {
    type = [viewCopy type];
    if (type == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeDeleteConfirmView];
    }

    else if (type == 1)
    {
      deleteConfirmView = [(SCROBrailleUIFinderApp *)self deleteConfirmView];
      focusedItem = [deleteConfirmView focusedItem];
      identifier = [focusedItem identifier];

      if ([identifier isEqualToString:@"finder.delete.confirm.delete"])
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        currentFileURL = [(SCROBrailleUIFinderApp *)self currentFileURL];
        v17 = 0;
        [defaultManager removeItemAtURL:currentFileURL error:&v17];
        v11 = v17;

        if (v11)
        {
          v12 = _SCROD_LOG();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            currentFileURL2 = [(SCROBrailleUIFinderApp *)self currentFileURL];
            *buf = 138412290;
            v19 = currentFileURL2;
            _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_DEFAULT, "Failed to remove file at %@", buf, 0xCu);
          }
        }

        currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        [(SCROBrailleUIFinderApp *)self _openFilesListInURL:currentDirectoryURL];

        [(SCROBrailleUIFinderApp *)self _closeDeleteConfirmView];
        [(SCROBrailleUIFinderApp *)self _closeContextMenu];
      }
    }

    else
    {
      v16.receiver = self;
      v16.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v16 handleAction:viewCopy];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInFilesList:(id)list
{
  listCopy = list;
  if ([(SCROBrailleUIFinderApp *)self _isOpen])
  {
    filesListView = [(SCROBrailleUIFinderApp *)self filesListView];
    focusedItem = [filesListView focusedItem];
    identifier = [focusedItem identifier];

    currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
    v9 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:currentDirectoryURL userInput:identifier];

    if (!v9)
    {
LABEL_17:

      goto LABEL_18;
    }

    v24 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v9 path];
    [defaultManager fileExistsAtPath:path isDirectory:&v24];

    type = [listCopy type];
    switch(type)
    {
      case 4:
        filesListView2 = [(SCROBrailleUIFinderApp *)self filesListView];
        focusedIndex = [filesListView2 focusedIndex];

        if (focusedIndex)
        {
          [(SCROBrailleUIFinderApp *)self _openContextMenuForURL:v9];
        }

        goto LABEL_17;
      case 2:
        if ([(SCROBrailleUIFinderApp *)self _canGoUpOneLevel])
        {
          currentDirectoryURL2 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
          lastPathComponent = [currentDirectoryURL2 lastPathComponent];

          currentDirectoryURL3 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
          uRLByDeletingLastPathComponent = [currentDirectoryURL3 URLByDeletingLastPathComponent];
          uRLByStandardizingPath = [uRLByDeletingLastPathComponent URLByStandardizingPath];
          [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:uRLByStandardizingPath];

          [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:[(SCROBrailleUIFinderApp *)self currentDirectoryDepth]- 1];
          currentDirectoryURL4 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
          [(SCROBrailleUIFinderApp *)self _openFilesListInURL:currentDirectoryURL4 withFocusAtIdentifier:lastPathComponent];

LABEL_11:
          goto LABEL_17;
        }

        break;
      case 1:
        filesListView3 = [(SCROBrailleUIFinderApp *)self filesListView];
        focusedIndex2 = [filesListView3 focusedIndex];

        if (!focusedIndex2)
        {
          [(SCROBrailleUIFinderApp *)self _openCreateNewMenu];
          goto LABEL_17;
        }

        if (v24 != 1)
        {
          [(SCROBrailleUIFinderApp *)self _openViewerForBRF:v9];
          goto LABEL_17;
        }

        [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:v9];
        [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:[(SCROBrailleUIFinderApp *)self currentDirectoryDepth]+ 1];
        lastPathComponent = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        [(SCROBrailleUIFinderApp *)self _openFilesListInURL:lastPathComponent];
        goto LABEL_11;
    }

    v23.receiver = self;
    v23.super_class = SCROBrailleUIFinderApp;
    [(SCROBrailleUIApp *)&v23 handleAction:listCopy];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_handleActionInViewer:(id)viewer
{
  viewerCopy = viewer;
  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    type = [viewerCopy type];
    if (type <= 3)
    {
      if (type == 1)
      {
        [(SCROBrailleUIFinderApp *)self _handleReturnInViewer];
        goto LABEL_13;
      }

      if (type == 2)
      {
        [(SCROBrailleUIFinderApp *)self _closeViewerForBRF];
        goto LABEL_13;
      }

LABEL_9:
      v8.receiver = self;
      v8.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v8 handleAction:viewerCopy];
      goto LABEL_13;
    }

    if (type == 4)
    {
      selfCopy2 = self;
      v7 = 0;
    }

    else
    {
      if (type != 5)
      {
        goto LABEL_9;
      }

      selfCopy2 = self;
      v7 = 1;
    }

    [(SCROBrailleUIFinderApp *)selfCopy2 _openViewerContextMenuWithFocusSearch:v7];
  }

LABEL_13:
}

- (void)_handleActionInViewerContextMenu:(id)menu
{
  v45 = *MEMORY[0x277D85DE8];
  menuCopy = menu;
  if ([(SCROBrailleUIFinderApp *)self _isViewerContextMenuOpen])
  {
    viewerContextMenuView = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
    focusedItem = [viewerContextMenuView focusedItem];
    identifier = [focusedItem identifier];

    type = [menuCopy type];
    if (type == 2)
    {
LABEL_12:
      [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
      goto LABEL_13;
    }

    if (type != 1)
    {
      v39.receiver = self;
      v39.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v39 handleAction:menuCopy];
LABEL_13:

      goto LABEL_14;
    }

    if ([identifier isEqualToString:@"finder.viewer.context.menu.next.bookmark"])
    {
      [(SCROBrailleUIFinderApp *)self setCurrentSearchString:0];
      [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
      [(SCROBrailleUIFinderApp *)self _moveToNextBookmark];
LABEL_6:
      selfCopy2 = self;
      v10 = 1;
LABEL_11:
      [(SCROBrailleUIFinderApp *)selfCopy2 setSearchingForward:v10];
      goto LABEL_12;
    }

    if ([identifier isEqualToString:@"finder.viewer.context.menu.previous.bookmark"])
    {
      [(SCROBrailleUIFinderApp *)self setCurrentSearchString:0];
      [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
      [(SCROBrailleUIFinderApp *)self _moveToPreviousBookmark];
    }

    else
    {
      if ([identifier isEqualToString:@"finder.viewer.context.menu.search"])
      {
        viewerContextMenuView2 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
        value = [viewerContextMenuView2 value];
        [(SCROBrailleUIFinderApp *)self setCurrentSearchString:value];

        [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
        viewerView = [(SCROBrailleUIFinderApp *)self viewerView];
        currentSearchString = [(SCROBrailleUIFinderApp *)self currentSearchString];
        [viewerView handleFindForSearchBraille:currentSearchString];

        goto LABEL_6;
      }

      if (![identifier isEqualToString:@"finder.viewer.context.menu.previous.search"])
      {
        if ([identifier isEqualToString:@"finder.viewer.context.menu.add.bookmark"])
        {
          [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
          viewerView2 = [(SCROBrailleUIFinderApp *)self viewerView];
          focus = [viewerView2 focus];

          bookmarkLocations = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
          v23 = [bookmarkLocations count];

          v24 = 0;
          if (v23)
          {
            do
            {
              bookmarkLocations2 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
              v26 = [bookmarkLocations2 objectAtIndexedSubscript:v24];
              integerValue = [v26 integerValue];

              if (integerValue > focus)
              {
                break;
              }

              ++v24;
              bookmarkLocations3 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
              v29 = [bookmarkLocations3 count];
            }

            while (v24 < v29);
          }

          bookmarkLocations4 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
          v31 = [MEMORY[0x277CCABB0] numberWithInteger:focus];
          [bookmarkLocations4 insertObject:v31 atIndex:v24];
        }

        else if ([identifier isEqualToString:@"finder.viewer.context.menu.remove.bookmark"])
        {
          [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          _bookmarkLocationsInCurrentLine = [(SCROBrailleUIFinderApp *)self _bookmarkLocationsInCurrentLine];
          v33 = [_bookmarkLocationsInCurrentLine countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v41;
            do
            {
              v36 = 0;
              do
              {
                if (*v41 != v35)
                {
                  objc_enumerationMutation(_bookmarkLocationsInCurrentLine);
                }

                v37 = *(*(&v40 + 1) + 8 * v36);
                bookmarkLocations5 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
                [bookmarkLocations5 removeObject:v37];

                ++v36;
              }

              while (v34 != v36);
              v34 = [_bookmarkLocationsInCurrentLine countByEnumeratingWithState:&v40 objects:v44 count:16];
            }

            while (v34);
          }
        }

        goto LABEL_12;
      }

      viewerContextMenuView3 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
      value2 = [viewerContextMenuView3 value];
      [(SCROBrailleUIFinderApp *)self setCurrentSearchString:value2];

      [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
      viewerView3 = [(SCROBrailleUIFinderApp *)self viewerView];
      currentSearchString2 = [(SCROBrailleUIFinderApp *)self currentSearchString];
      [viewerView3 handlePreviousFindForSearchBraille:currentSearchString2];
    }

    selfCopy2 = self;
    v10 = 0;
    goto LABEL_11;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInEditor:(id)editor
{
  editorCopy = editor;
  if ([(SCROBrailleUIFinderApp *)self _isEditing])
  {
    type = [editorCopy type];
    if (type == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeEditorForBRF];
    }

    else if (type == 5)
    {
      [(SCROBrailleUIFinderApp *)self _openFindField];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v6 handleAction:editorCopy];
    }
  }
}

- (void)_handleActionInCreateNewMenu:(id)menu
{
  v41 = *MEMORY[0x277D85DE8];
  menuCopy = menu;
  if ([(SCROBrailleUIFinderApp *)self _isCreateNewMenuOpen])
  {
    type = [menuCopy type];
    if (type == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeCreateNewMenu];
    }

    else if (type == 1)
    {
      createNewMenuView = [(SCROBrailleUIFinderApp *)self createNewMenuView];
      focusedItem = [createNewMenuView focusedItem];
      identifier = [focusedItem identifier];

      if ([identifier isEqualToString:@"finder.create.new.brf.file"])
      {
        createNewMenuView2 = [(SCROBrailleUIFinderApp *)self createNewMenuView];
        value = [createNewMenuView2 value];

        v11 = +[SCROBrailleTranslationManager inputManager];
        v34 = value;
        v12 = [v11 textForPrintBraille:value language:0 mode:1 locations:0];

        v13 = [v12 stringByAppendingString:@".brf"];
        currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        v15 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:currentDirectoryURL userInput:v13];

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        if (v15)
        {
          [v15 path];
          v18 = v17 = identifier;
          v19 = [defaultManager fileExistsAtPath:v18];

          identifier = v17;
          if ((v19 & 1) == 0)
          {
            path = [v15 path];
            v21 = objc_opt_new();
            v22 = [defaultManager createFileAtPath:path contents:v21 attributes:0];

            identifier = v17;
            if (v22)
            {
              [(SCROBrailleUIFinderApp *)self _openEditorForBRF:v15];
              [(SCROBrailleUIFinderApp *)self _closeCreateNewMenu];
            }
          }
        }
      }

      else if ([identifier isEqualToString:@"finder.create.new.directory"])
      {
        createNewMenuView3 = [(SCROBrailleUIFinderApp *)self createNewMenuView];
        value2 = [createNewMenuView3 value];

        v25 = +[SCROBrailleTranslationManager inputManager];
        v26 = [v25 textForPrintBraille:value2 language:0 mode:1 locations:0];

        currentDirectoryURL2 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        v28 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:currentDirectoryURL2 userInput:v26];

        if (v28)
        {
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          path2 = [v28 path];
          v36 = 0;
          [defaultManager2 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:MEMORY[0x277CBEC10] error:&v36];
          v31 = v36;

          if (v31)
          {
            v32 = _SCROD_LOG();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v38 = v28;
              v39 = 2112;
              v40 = v31;
              _os_log_impl(&dword_26490B000, v32, OS_LOG_TYPE_DEFAULT, "Failed to create a directory at %@ with error %@", buf, 0x16u);
            }
          }

          else
          {
            [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:v28];
            [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:[(SCROBrailleUIFinderApp *)self currentDirectoryDepth]+ 1];
            [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v28];
            [(SCROBrailleUIFinderApp *)self _closeCreateNewMenu];
          }
        }

        else
        {
          v31 = 0;
        }
      }
    }

    else
    {
      v35.receiver = self;
      v35.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v35 handleAction:menuCopy];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInContextMenu:(id)menu
{
  v43 = *MEMORY[0x277D85DE8];
  menuCopy = menu;
  if ([(SCROBrailleUIFinderApp *)self _isContextMenuOpen])
  {
    type = [menuCopy type];
    if (type == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeContextMenu];
    }

    else
    {
      if (type == 1)
      {
        contextMenuView = [(SCROBrailleUIFinderApp *)self contextMenuView];
        focusedItem = [contextMenuView focusedItem];
        identifier = [focusedItem identifier];

        filesListView = [(SCROBrailleUIFinderApp *)self filesListView];
        focusedItem2 = [filesListView focusedItem];
        identifier2 = [focusedItem2 identifier];

        currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        v13 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:currentDirectoryURL userInput:identifier2];

        if ([identifier isEqualToString:@"finder.context.menu.edit"])
        {
          if (v13)
          {
            [(SCROBrailleUIFinderApp *)self _openEditorForBRF:v13];
            [(SCROBrailleUIFinderApp *)self _closeContextMenu];
            [(SCROBrailleUIFinderApp *)self setCurrentFileURL:v13];
          }

          goto LABEL_28;
        }

        if ([identifier isEqualToString:@"finder.context.menu.delete"])
        {
          [(SCROBrailleUIFinderApp *)self _openDeleteConfirmView];
          goto LABEL_28;
        }

        if ([identifier isEqualToString:@"finder.context.menu.move"])
        {
          if (v13)
          {
            [(SCROBrailleUIFinderApp *)self _openContextMoveOptionsExcluding:v13];
          }

          goto LABEL_28;
        }

        if (![identifier isEqualToString:@"finder.context.menu.rename"])
        {
LABEL_28:

          goto LABEL_29;
        }

        currentFileURL = [(SCROBrailleUIFinderApp *)self currentFileURL];
        contextMenuView2 = [(SCROBrailleUIFinderApp *)self contextMenuView];
        value = [contextMenuView2 value];

        v17 = +[SCROBrailleTranslationManager inputManager];
        v18 = [v17 textForPrintBraille:value language:0 mode:1 locations:0];

        if ([v18 length])
        {
          v34 = value;
          v38 = 0;
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          path = [currentFileURL path];
          [defaultManager fileExistsAtPath:path isDirectory:&v38];

          if ((v38 & 1) == 0)
          {
            v21 = [v18 stringByAppendingString:@".brf"];

            v18 = v21;
          }

          currentDirectoryURL2 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
          v23 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:currentDirectoryURL2 userInput:v18];

          if (!v23)
          {

            v31 = value;
            goto LABEL_27;
          }

          v33 = v23;
          [(SCROBrailleUIFinderApp *)self setCurrentFileURL:v23];
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          currentFileURL2 = [(SCROBrailleUIFinderApp *)self currentFileURL];
          v37 = 0;
          v35 = currentFileURL;
          [defaultManager2 moveItemAtURL:currentFileURL toURL:currentFileURL2 error:&v37];
          currentFileURL = v37;

          if (currentFileURL)
          {
            v26 = _SCROD_LOG();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              currentFileURL3 = [(SCROBrailleUIFinderApp *)self currentFileURL];
              *buf = 138412546;
              v40 = v35;
              v41 = 2112;
              v42 = currentFileURL3;
              _os_log_impl(&dword_26490B000, v26, OS_LOG_TYPE_DEFAULT, "Failed to move file at %@ to %@", buf, 0x16u);
            }
          }

          currentDirectoryURL3 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
          currentFileURL4 = [(SCROBrailleUIFinderApp *)self currentFileURL];
          lastPathComponent = [currentFileURL4 lastPathComponent];
          [(SCROBrailleUIFinderApp *)self _openFilesListInURL:currentDirectoryURL3 withFocusAtIdentifier:lastPathComponent];

          value = v34;
        }

        else
        {
          v35 = currentFileURL;
          currentFileURL = 0;
        }

        [(SCROBrailleUIFinderApp *)self _closeContextMenu];

        v31 = v35;
LABEL_27:

        goto LABEL_28;
      }

      v36.receiver = self;
      v36.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v36 handleAction:menuCopy];
    }
  }

LABEL_29:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInContextMenuOptions:(id)options
{
  v29 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if ([(SCROBrailleUIFinderApp *)self _isContextMenuOptionsOpen])
  {
    type = [optionsCopy type];
    if (type == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeContextMenuOptions];
    }

    else if (type == 1)
    {
      contextMenuOptionsView = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];
      focusedItem = [contextMenuOptionsView focusedItem];
      identifier = [focusedItem identifier];

      LODWORD(contextMenuOptionsView) = [identifier isEqualToString:@"finder.context.menu.options.up.one.level"];
      currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
      v10 = currentDirectoryURL;
      if (contextMenuOptionsView)
      {
        uRLByDeletingLastPathComponent = [currentDirectoryURL URLByDeletingLastPathComponent];
        uRLByStandardizingPath = [uRLByDeletingLastPathComponent URLByStandardizingPath];

        v13 = -1;
      }

      else
      {
        uRLByStandardizingPath = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:currentDirectoryURL userInput:identifier];
        v13 = 1;
      }

      if (uRLByStandardizingPath)
      {
        currentFileURL = [(SCROBrailleUIFinderApp *)self currentFileURL];
        lastPathComponent = [currentFileURL lastPathComponent];

        v16 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:uRLByStandardizingPath userInput:lastPathComponent];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        currentFileURL2 = [(SCROBrailleUIFinderApp *)self currentFileURL];
        v24 = 0;
        [defaultManager moveItemAtURL:currentFileURL2 toURL:v16 error:&v24];
        v19 = v24;

        if (v19)
        {
          v20 = _SCROD_LOG();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            currentFileURL3 = [(SCROBrailleUIFinderApp *)self currentFileURL];
            *buf = 138412546;
            v26 = currentFileURL3;
            v27 = 2112;
            v28 = v16;
            _os_log_impl(&dword_26490B000, v20, OS_LOG_TYPE_DEFAULT, "Failed to move %@ to %@", buf, 0x16u);
          }
        }

        else
        {
          [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:uRLByStandardizingPath];
          [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:[(SCROBrailleUIFinderApp *)self currentDirectoryDepth]+ v13];
          [(SCROBrailleUIFinderApp *)self _openFilesListInURL:uRLByStandardizingPath withFocusAtIdentifier:lastPathComponent];
        }
      }

      [(SCROBrailleUIFinderApp *)self _closeContextMenuOptions];
      [(SCROBrailleUIFinderApp *)self _closeContextMenu];
    }

    else
    {
      v23.receiver = self;
      v23.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v23 handleAction:optionsCopy];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInFindField:(id)field
{
  fieldCopy = field;
  if ([(SCROBrailleUIFinderApp *)self _isShowingFindField])
  {
    type = [fieldCopy type];
    if (type == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeFindField];
    }

    else
    {
      if (type == 1)
      {
        findFieldView = [(SCROBrailleUIFinderApp *)self findFieldView];
        focusedItem = [findFieldView focusedItem];
        identifier = [focusedItem identifier];

        if (![identifier isEqualToString:@"finder.find.field.enter.search.text"])
        {
LABEL_13:

          goto LABEL_14;
        }

        findFieldView2 = [(SCROBrailleUIFinderApp *)self findFieldView];
        value = [findFieldView2 value];

        [(SCROBrailleUIFinderApp *)self _closeFindField];
        editorView = [(SCROBrailleUIFinderApp *)self editorView];

        if (editorView)
        {
          editorView2 = [(SCROBrailleUIFinderApp *)self editorView];
        }

        else
        {
          viewerView = [(SCROBrailleUIFinderApp *)self viewerView];

          if (!viewerView)
          {
LABEL_12:

            goto LABEL_13;
          }

          editorView2 = [(SCROBrailleUIFinderApp *)self viewerView];
        }

        v14 = editorView2;
        [editorView2 handleFindForSearchBraille:value];

        goto LABEL_12;
      }

      v15.receiver = self;
      v15.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v15 handleAction:fieldCopy];
    }
  }

LABEL_14:
}

- (BOOL)_isOpen
{
  filesListView = [(SCROBrailleUIFinderApp *)self filesListView];
  if (filesListView)
  {
    v4 = 1;
  }

  else
  {
    alertView = [(SCROBrailleUIFinderApp *)self alertView];
    v4 = alertView != 0;
  }

  return v4;
}

- (void)_closeFilesList
{
  [(SCROBrailleUIFinderApp *)self setCurrentFileURL:0];
  filesListView = [(SCROBrailleUIFinderApp *)self filesListView];
  [filesListView dismiss];

  [(SCROBrailleUIFinderApp *)self setFilesListView:0];
}

+ (void)ensureBRFContainerExists
{
  if ((_ensureBRFContainerExistsDispatched & 1) == 0)
  {
    _ensureBRFContainerExistsDispatched = 1;
    v3 = dispatch_get_global_queue(0, 0);
    dispatch_async(v3, &__block_literal_global_0);
  }
}

+ (id)cloudRootURL
{
  if (_SCROBrailleUIFinderAppIsRootCloud == 1)
  {
    _absoluteRootURL = [self _absoluteRootURL];
  }

  else
  {
    _absoluteRootURL = 0;
  }

  return _absoluteRootURL;
}

+ (id)_absoluteRootURL
{
  if (_absoluteRootURL_onceToken != -1)
  {
    +[SCROBrailleUIFinderApp _absoluteRootURL];
  }

  _fetchedAbsoluteRootURL = 1;
  v3 = _absoluteRootURL_absoluteRootURL;

  return v3;
}

void __42__SCROBrailleUIFinderApp__absoluteRootURL__block_invoke()
{
  v31 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 URLForUbiquityContainerIdentifier:0];
  v2 = [v1 URLByAppendingPathComponent:@"Documents"];
  v3 = [v2 URLByStandardizingPath];
  v4 = _absoluteRootURL_absoluteRootURL;
  _absoluteRootURL_absoluteRootURL = v3;

  if (!_absoluteRootURL_absoluteRootURL)
  {
LABEL_7:
    v10 = _SCROD_LOG();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26490B000, v10, OS_LOG_TYPE_DEFAULT, "Braille UI failed to access the Documents folder in the iCloud container", buf, 2u);
    }

    v25 = 0;
    v11 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:@"com.apple.FileProvider.LocalStorage" allowPlaceholder:0 error:&v25];
    v12 = v25;
    if (!v11)
    {
      v13 = _SCROD_LOG();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = @"com.apple.FileProvider.LocalStorage";
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "Braille UI failed to get the bundle record for provider ID %@ error: %@", buf, 0x16u);
      }
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"group.%@", @"com.apple.FileProvider.LocalStorage"];
    v15 = [v11 groupContainerURLs];
    v16 = [v15 objectForKey:v14];

    if (!v16)
    {
      v17 = _SCROD_LOG();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26490B000, v17, OS_LOG_TYPE_DEFAULT, "Braille UI failed to find group container URL", buf, 2u);
      }
    }

    v18 = [v16 URLByAppendingPathComponent:@"File Provider Storage"];
    v19 = [v18 URLByStandardizingPath];
    v20 = _absoluteRootURL_absoluteRootURL;
    _absoluteRootURL_absoluteRootURL = v19;

    goto LABEL_22;
  }

  v5 = [_absoluteRootURL_absoluteRootURL path];
  v6 = [v0 fileExistsAtPath:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [_absoluteRootURL_absoluteRootURL path];
    v26 = 0;
    [v0 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v26];
    v8 = v26;

    if (v8)
    {
      v9 = _SCROD_LOG();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v8;
        _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, "Braille UI can't create the Documents folder in the iCloud container: %@", buf, 0xCu);
      }

      _SCROBrailleUIFinderAppIsRootCloud = 0;
      goto LABEL_7;
    }
  }

  v21 = _SCROD_LOG();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = _absoluteRootURL_absoluteRootURL;
    _os_log_impl(&dword_26490B000, v21, OS_LOG_TYPE_DEFAULT, "Braille UI can access the iCloud container at %@", buf, 0xCu);
  }

  _SCROBrailleUIFinderAppIsRootCloud = 1;
  v12 = [_absoluteRootURL_absoluteRootURL URLByAppendingPathComponent:@".placeholder"];
  v22 = [v12 path];
  v23 = [v0 fileExistsAtPath:v22];

  if ((v23 & 1) == 0)
  {
    v11 = objc_opt_new();
    [v11 writeToURL:v12 atomically:1];
LABEL_22:
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canGoUpOneLevel
{
  if ([(SCROBrailleUIFinderApp *)self currentDirectoryDepth]< 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
    v4 = +[SCROBrailleUIFinderApp _absoluteRootURL];
    v5 = [currentDirectoryURL isEqual:v4] ^ 1;
  }

  return v5;
}

- (void)_openFilesListInURL:(id)l withFocusAtIdentifier:(id)identifier display:(BOOL)display
{
  displayCopy = display;
  identifierCopy = identifier;
  lCopy = l;
  [SCROBrailleUIUtilities tryDownloadingIfNeededForURL:lCopy];
  v17 = objc_opt_new();
  v10 = [SCROBrailleUIListItem alloc];
  v11 = SCROBrailleUILocString(@"finder.create.new.label");
  v12 = [(SCROBrailleUIListItem *)v10 initWithIdentifier:@"finder.create.new.menu" label:v11 isInline:0];

  [v17 addObject:v12];
  v13 = [(SCROBrailleUIFinderApp *)self _fileItemsInURL:lCopy directoriesOnly:0];

  [v17 addObjectsFromArray:v13];
  v14 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"finder.files.list" items:v17 initialFocus:identifierCopy];

  filesListView = [(SCROBrailleUIFinderApp *)self filesListView];
  [(SCROBrailleUIFinderApp *)self setFilesListView:v14];
  if (displayCopy)
  {
    filesListView2 = [(SCROBrailleUIFinderApp *)self filesListView];
    [filesListView2 display];
  }

  [filesListView dismiss];
}

- (id)_fileItemsInURL:(id)l directoriesOnly:(BOOL)only excluding:(id)excluding
{
  onlyCopy = only;
  v49 = *MEMORY[0x277D85DE8];
  lCopy = l;
  excludingCopy = excluding;
  v9 = 0x277CCA000uLL;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v40 = lCopy;
  path = [lCopy path];
  v45 = 0;
  v12 = [defaultManager contentsOfDirectoryAtPath:path error:&v45];
  v13 = v45;

  if (v13)
  {
    v14 = _SCROD_LOG();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [v40 path];
      *buf = 138412290;
      v48 = path2;
      _os_log_impl(&dword_26490B000, v14, OS_LOG_TYPE_DEFAULT, "Failed to fetch subpaths in the path %@", buf, 0xCu);
    }

    v35 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v34 = v12;
    v35 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v12;
    v16 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v36 = !onlyCopy;
      v39 = *v42;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v42 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v41 + 1) + 8 * i);
          v20 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:v40 userInput:v19];
          if (v20)
          {
            v21 = [v19 hasPrefix:@"."];
            buf[0] = 0;
            v22 = v9;
            defaultManager2 = [*(v9 + 2560) defaultManager];
            path3 = [v20 path];
            [defaultManager2 fileExistsAtPath:path3 isDirectory:buf];

            pathExtension = [v20 pathExtension];
            lowercaseString = [pathExtension lowercaseString];
            v27 = [lowercaseString isEqualToString:@"brf"];

            v28 = [excludingCopy isEqual:v20];
            if ((v21 & 1) == 0 && !(v28 & 1 | (((buf[0] | v36 & v27) & 1) == 0)))
            {
              v29 = v19;
              v30 = v29;
              if (buf[0] == 1)
              {
                v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@…", v29];
              }

              v31 = [[SCROBrailleUIListItem alloc] initWithIdentifier:v29 label:v30 isInline:0 shouldPreserveCase:1];
              [v35 addObject:v31];
            }

            v9 = v22;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v17);
    }

    [v35 sortUsingComparator:&__block_literal_global_108];
    v13 = 0;
    v12 = v34;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v35;
}

uint64_t __68__SCROBrailleUIFinderApp__fileItemsInURL_directoriesOnly_excluding___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 label];
  v6 = [v4 label];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (id)_brfForUnicodeBraille:(id)braille
{
  v3 = MEMORY[0x277CCA900];
  brailleCopy = braille;
  newlineCharacterSet = [v3 newlineCharacterSet];
  v6 = [brailleCopy componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v7 = [v6 ax_mappedArrayUsingBlock:&__block_literal_global_112];
  v8 = [v7 componentsJoinedByString:@"\n"];

  return v8;
}

- (BOOL)_isFileSizeAcceptableForURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v3 defaultManager];
  path = [lCopy path];

  v15 = 0;
  v7 = [defaultManager attributesOfItemAtPath:path error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = _SCROD_LOG();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_26490B000, v10, OS_LOG_TYPE_DEFAULT, "Error getting file attributes: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v10 = [v7 objectForKey:*MEMORY[0x277CCA1C0]];
  if ([v10 unsignedLongLongValue]<= 0x500000)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_12;
  }

  v12 = _SCROD_LOG();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_DEFAULT, "BRF File bigger than 5MB", buf, 2u);
  }

  v11 = 0;
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_brfContentForURL:(id)l
{
  v14 = *MEMORY[0x277D85DE8];
  lCopy = l;
  [SCROBrailleUIUtilities tryDownloadingIfNeededForURL:lCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager contentsAtPath:path];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:1];
  }

  else
  {
    v8 = _SCROD_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [lCopy path];
      v12 = 138412290;
      v13 = path2;
      _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Braille UI Finder: Failed to get contents at path %@", &v12, 0xCu);
    }

    v7 = &stru_28763D5C8;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_writeUnicodeContent:(id)content toURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = [(SCROBrailleUIFinderApp *)self _brfForUnicodeBraille:content];
  path = [lCopy path];
  v13 = 0;
  [v7 writeToFile:path atomically:0 encoding:4 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = _SCROD_LOG();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [lCopy path];
      *buf = 138412290;
      v15 = path2;
      _os_log_impl(&dword_26490B000, v10, OS_LOG_TYPE_DEFAULT, "Failed to write to file at %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_saveReadingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  brfFile = [(SCROBrailleUIFinderApp *)self brfFile];
  locationMap = [brfFile locationMap];

  if (location >= [locationMap count])
  {
    integerValue = 0;
  }

  else
  {
    v7 = [locationMap objectAtIndex:location];
    integerValue = [v7 integerValue];
  }

  v9 = location + length;
  if (v9 >= [locationMap count])
  {
    v12 = 0;
  }

  else
  {
    v10 = [locationMap objectAtIndex:v9];
    v11 = [v10 integerValue] - integerValue;

    v12 = v11 & ~(v11 >> 63);
  }

  v13 = [MEMORY[0x277CBEA90] dataWithRange:{integerValue, v12}];
  v14 = +[SCROBrailleUIPersistenceManager sharedInstance];
  _currentFileRelativePath = [(SCROBrailleUIFinderApp *)self _currentFileRelativePath];
  [v14 setValue:v13 forKey:_currentFileRelativePath cache:@"Files" maxRecordCount:100];
}

- (int64_t)_loadReadingCursorForCurrentFile
{
  v3 = +[SCROBrailleUIPersistenceManager sharedInstance];
  _currentFileRelativePath = [(SCROBrailleUIFinderApp *)self _currentFileRelativePath];
  v5 = [v3 getValueForKey:_currentFileRelativePath cache:@"Files"];

  if (v5)
  {
    range = [v5 range];
  }

  else
  {
    range = 0;
  }

  return range;
}

- (void)_saveBookmarks
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  brfFile = [(SCROBrailleUIFinderApp *)self brfFile];
  locationMap = [brfFile locationMap];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  bookmarkLocations = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
  v7 = [bookmarkLocations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(bookmarkLocations);
        }

        integerValue = [*(*(&v17 + 1) + 8 * v10) integerValue];
        if ((integerValue & 0x8000000000000000) == 0)
        {
          v12 = integerValue;
          if (integerValue < [locationMap count])
          {
            v13 = [locationMap objectAtIndex:v12];
            [v3 addObject:v13];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [bookmarkLocations countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = +[SCROBrailleUIPersistenceManager sharedInstance];
  _currentFileRelativePath = [(SCROBrailleUIFinderApp *)self _currentFileRelativePath];
  [v14 setValue:v3 forKey:_currentFileRelativePath cache:@"FilesBookmarks" maxRecordCount:100];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_rawBookmarks
{
  v3 = +[SCROBrailleUIPersistenceManager sharedInstance];
  _currentFileRelativePath = [(SCROBrailleUIFinderApp *)self _currentFileRelativePath];
  v5 = [v3 getValueForKey:_currentFileRelativePath cache:@"FilesBookmarks"];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

- (id)_currentFileRelativePath
{
  currentFileURL = [(SCROBrailleUIFinderApp *)self currentFileURL];
  path = [currentFileURL path];
  currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
  path2 = [currentDirectoryURL path];
  v7 = [path substringFromIndex:{objc_msgSend(path2, "length")}];

  return v7;
}

- (BOOL)_isViewing
{
  viewerView = [(SCROBrailleUIFinderApp *)self viewerView];
  v3 = viewerView != 0;

  return v3;
}

- (void)_openViewerForBRF:(id)f
{
  v14[1] = *MEMORY[0x277D85DE8];
  fCopy = f;
  if (![(SCROBrailleUIFinderApp *)self _isViewing])
  {
    if ([(SCROBrailleUIFinderApp *)self _isFileSizeAcceptableForURL:fCopy])
    {
      [(SCROBrailleUIFinderApp *)self setIsViewerViewLoading:1];
      v5 = SCROBrailleUILocString(@"finder.viewer.loading");
      v6 = [SCROBrailleTranslationUtility brailleForText:v5];

      v7 = [[SCROBrailleUIBrailleAreaView alloc] initWithIdentifier:@"finder.viewer" initialContent:v6 initialCursor:0x7FFFFFFFFFFFFFFFLL];
      [(SCROBrailleUIFinderApp *)self setViewerView:v7];

      viewerView = [(SCROBrailleUIFinderApp *)self viewerView];
      [viewerView setIsReadOnly:1];

      viewerView2 = [(SCROBrailleUIFinderApp *)self viewerView];
      [viewerView2 display];

      [(SCROBrailleUIFinderApp *)self setCurrentFileURL:fCopy];
      delegate = [(SCROBrailleUIApp *)self delegate];
      v13 = kSCROBrailleUIRequestTypeKey[0];
      v14[0] = &unk_2876519B0;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [delegate handleBrailleUIRequest:v11];

      [(SCROBrailleUIFinderApp *)self _startAutoSave];
    }

    else
    {
      v6 = SCROBrailleUILocString(@"finder.file.too.big");
      [(SCROBrailleUIFinderApp *)self _openAlertWithMessage:v6];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)lazyLoad
{
  if ([(SCROBrailleUIFinderApp *)self isViewerViewLoading])
  {
    [(SCROBrailleUIFinderApp *)self setIsViewerViewLoading:0];
    [(SCROBrailleUIFinderApp *)self setCurrentSearchString:0];
    [(SCROBrailleUIFinderApp *)self setSearchingForward:1];
    _loadReadingCursorForCurrentFile = [(SCROBrailleUIFinderApp *)self _loadReadingCursorForCurrentFile];
    _rawBookmarks = [(SCROBrailleUIFinderApp *)self _rawBookmarks];
    v4 = +[SCROBrailleUISettingsManager sharedInstance];
    isBRFReflowEnabled = [v4 isBRFReflowEnabled];

    if (isBRFReflowEnabled)
    {
      v6 = +[SCROBrailleUISettingsManager sharedInstance];
      brfReflowSize = [v6 brfReflowSize];
    }

    else
    {
      brfReflowSize = 0x7FFFFFFFFFFFFFFFLL;
    }

    v8 = +[SCROBrailleUISettingsManager sharedInstance];
    isBRFWordWrapEnabled = [v8 isBRFWordWrapEnabled];

    v10 = +[SCROBrailleUISettingsManager sharedInstance];
    isBRFStripPageIndicatorsEnabled = [v10 isBRFStripPageIndicatorsEnabled];

    v12 = [SCROBrailleUIBRFFile alloc];
    currentFileURL = [(SCROBrailleUIFinderApp *)self currentFileURL];
    v14 = [(SCROBrailleUIFinderApp *)self _brfContentForURL:currentFileURL];
    v15 = [(SCROBrailleUIBRFFile *)v12 initWithBRF:v14 rawInitialLocation:_loadReadingCursorForCurrentFile rawBookmarks:_rawBookmarks reflowSize:brfReflowSize shouldWordWrap:isBRFWordWrapEnabled shouldStripPageIndicators:isBRFStripPageIndicatorsEnabled];
    [(SCROBrailleUIFinderApp *)self setBrfFile:v15];

    brfFile = [(SCROBrailleUIFinderApp *)self brfFile];
    bookmarks = [brfFile bookmarks];
    v18 = [bookmarks mutableCopy];
    [(SCROBrailleUIFinderApp *)self setBookmarkLocations:v18];

    viewerView = [(SCROBrailleUIFinderApp *)self viewerView];
    brfFile2 = [(SCROBrailleUIFinderApp *)self brfFile];
    unicode = [brfFile2 unicode];
    brfFile3 = [(SCROBrailleUIFinderApp *)self brfFile];
    [viewerView loadContent:unicode cursor:{objc_msgSend(brfFile3, "initialLocation")}];

    viewerView2 = [(SCROBrailleUIFinderApp *)self viewerView];
    [viewerView2 display];
  }
}

- (void)_closeViewerForBRF
{
  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    [(SCROBrailleUIFinderApp *)self _stopAutoSave];
    viewerView = [(SCROBrailleUIFinderApp *)self viewerView];
    focus = [viewerView focus];
    [(SCROBrailleUIFinderApp *)self _saveReadingRange:focus, v5];

    [(SCROBrailleUIFinderApp *)self _saveBookmarks];
    [(SCROBrailleUIFinderApp *)self setBookmarkLocations:0];
    currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
    currentFileURL = [(SCROBrailleUIFinderApp *)self currentFileURL];
    lastPathComponent = [currentFileURL lastPathComponent];
    [(SCROBrailleUIFinderApp *)self _openFilesListInURL:currentDirectoryURL withFocusAtIdentifier:lastPathComponent];

    viewerView2 = [(SCROBrailleUIFinderApp *)self viewerView];
    [viewerView2 dismiss];

    [(SCROBrailleUIFinderApp *)self setViewerView:0];
  }
}

- (id)_bookmarkLocationsInCurrentLine
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    v3 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
    v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = v4;
    v6 = *v22;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        integerValue = [v8 integerValue];
        viewerView = [(SCROBrailleUIFinderApp *)self viewerView];
        focus = [viewerView focus];
        if (integerValue < focus || integerValue - focus >= v12)
        {
          viewerView2 = [(SCROBrailleUIFinderApp *)self viewerView];
          focus2 = [viewerView2 focus];
          v17 = focus2 + v16;

          if (integerValue != v17)
          {
            continue;
          }
        }

        else
        {
        }

        [v3 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v5)
      {
LABEL_16:

        goto LABEL_18;
      }
    }
  }

  v3 = MEMORY[0x277CBEBF8];
LABEL_18:
  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_hasBookMark
{
  if (![(SCROBrailleUIFinderApp *)self _isViewing])
  {
    return 0;
  }

  bookmarkLocations = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
  v4 = [bookmarkLocations count] != 0;

  return v4;
}

- (void)_moveToNextBookmark
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    bookmarkLocations = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
    v4 = [bookmarkLocations count];

    if (v4)
    {
      viewerView = [(SCROBrailleUIFinderApp *)self viewerView];
      focus = [viewerView focus];
      v8 = v7;

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      bookmarkLocations2 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
      v10 = [bookmarkLocations2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = focus + v8;
        v13 = *v25;
LABEL_5:
        v14 = 0;
        while (1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(bookmarkLocations2);
          }

          integerValue = [*(*(&v24 + 1) + 8 * v14) integerValue];
          viewerView2 = [(SCROBrailleUIFinderApp *)self viewerView];
          value = [viewerView2 value];
          v18 = [value length];

          if (integerValue > v18)
          {
            break;
          }

          if (integerValue > v12)
          {
            viewerView3 = [(SCROBrailleUIFinderApp *)self viewerView];
            [viewerView3 moveFocusTo:integerValue];

            goto LABEL_14;
          }

          if (v11 == ++v14)
          {
            v11 = [bookmarkLocations2 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      bookmarkLocations3 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
      firstObject = [bookmarkLocations3 firstObject];
      integerValue2 = [firstObject integerValue];

      bookmarkLocations2 = [(SCROBrailleUIFinderApp *)self viewerView];
      [bookmarkLocations2 moveFocusTo:integerValue2];
LABEL_14:
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_moveToPreviousBookmark
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    bookmarkLocations = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
    v4 = [bookmarkLocations count];

    if (v4)
    {
      viewerView = [(SCROBrailleUIFinderApp *)self viewerView];
      focus = [viewerView focus];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      bookmarkLocations2 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
      reverseObjectEnumerator = [bookmarkLocations2 reverseObjectEnumerator];

      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v24;
        while (2)
        {
          v12 = 0;
          do
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            integerValue = [*(*(&v23 + 1) + 8 * v12) integerValue];
            viewerView2 = [(SCROBrailleUIFinderApp *)self viewerView];
            value = [viewerView2 value];
            v16 = [value length];

            if (integerValue <= v16 && integerValue < focus)
            {
              viewerView3 = [(SCROBrailleUIFinderApp *)self viewerView];
              [viewerView3 moveFocusTo:integerValue];

              goto LABEL_16;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      bookmarkLocations3 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
      lastObject = [bookmarkLocations3 lastObject];
      integerValue2 = [lastObject integerValue];

      reverseObjectEnumerator = [(SCROBrailleUIFinderApp *)self viewerView];
      [reverseObjectEnumerator moveFocusTo:integerValue2];
LABEL_16:
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isViewerContextMenuOpen
{
  viewerContextMenuView = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
  v3 = viewerContextMenuView != 0;

  return v3;
}

- (void)_closeViewerContextMenu
{
  viewerContextMenuView = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
  [viewerContextMenuView dismiss];

  [(SCROBrailleUIFinderApp *)self setViewerContextMenuView:0];
}

- (void)_openViewerContextMenuWithFocusSearch:(BOOL)search
{
  searchCopy = search;
  v39 = objc_opt_new();
  if ([(SCROBrailleUIFinderApp *)self _hasBookMark])
  {
    v5 = [SCROBrailleUIListItem alloc];
    v6 = SCROBrailleUILocString(@"finder.viewer.context.menu.next.bookmark");
    v7 = [(SCROBrailleUIListItem *)v5 initWithIdentifier:@"finder.viewer.context.menu.next.bookmark" label:v6 isInline:0];

    [v39 addObject:v7];
    v8 = [SCROBrailleUIListItem alloc];
    v9 = SCROBrailleUILocString(@"finder.viewer.context.menu.previous.bookmark");
    v10 = [(SCROBrailleUIListItem *)v8 initWithIdentifier:@"finder.viewer.context.menu.previous.bookmark" label:v9 isInline:0];

    [v39 addObject:v10];
  }

  v11 = SCROBrailleUILocString(@"finder.viewer.context.menu.find");
  currentSearchString = [(SCROBrailleUIFinderApp *)self currentSearchString];
  if (currentSearchString && (v13 = currentSearchString, v14 = [(SCROBrailleUIFinderApp *)self searchingForward], v13, v14))
  {
    v15 = [SCROBrailleUIListItem alloc];
    currentSearchString2 = [(SCROBrailleUIFinderApp *)self currentSearchString];
    v17 = [(SCROBrailleUIListItem *)v15 initWithIdentifier:@"finder.viewer.context.menu.search" label:v11 prepopulatedBraille:currentSearchString2];
  }

  else
  {
    v17 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"finder.viewer.context.menu.search" label:v11 isInline:1];
  }

  [v39 addObject:v17];
  v18 = SCROBrailleUILocString(@"finder.viewer.context.menu.previous.find");
  currentSearchString3 = [(SCROBrailleUIFinderApp *)self currentSearchString];
  if (currentSearchString3 && (v20 = currentSearchString3, v21 = [(SCROBrailleUIFinderApp *)self searchingForward], v20, !v21))
  {
    v23 = [SCROBrailleUIListItem alloc];
    currentSearchString4 = [(SCROBrailleUIFinderApp *)self currentSearchString];
    v22 = [(SCROBrailleUIListItem *)v23 initWithIdentifier:@"finder.viewer.context.menu.previous.search" label:v18 prepopulatedBraille:currentSearchString4];
  }

  else
  {
    v22 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"finder.viewer.context.menu.previous.search" label:v18 isInline:1];
  }

  [v39 addObject:v22];
  _bookmarkLocationsInCurrentLine = [(SCROBrailleUIFinderApp *)self _bookmarkLocationsInCurrentLine];
  v26 = [_bookmarkLocationsInCurrentLine count];
  v27 = [SCROBrailleUIListItem alloc];
  if (v26)
  {
    v28 = @"finder.viewer.context.menu.remove.bookmark";
  }

  else
  {
    v28 = @"finder.viewer.context.menu.add.bookmark";
  }

  v29 = SCROBrailleUILocString(v28);
  v30 = [(SCROBrailleUIListItem *)v27 initWithIdentifier:v28 label:v29 isInline:0];

  [v39 addObject:v30];
  currentSearchString5 = [(SCROBrailleUIFinderApp *)self currentSearchString];

  if (currentSearchString5 || searchCopy)
  {
    currentSearchString6 = [(SCROBrailleUIFinderApp *)self currentSearchString];
    v36 = @"finder.viewer.context.menu.search";
    if (currentSearchString6 && ![(SCROBrailleUIFinderApp *)self searchingForward])
    {
      v36 = @"finder.viewer.context.menu.previous.search";
    }

    v34 = v36;
  }

  else
  {
    searchingForward = [(SCROBrailleUIFinderApp *)self searchingForward];
    v33 = @"finder.viewer.context.menu.previous.bookmark";
    if (searchingForward)
    {
      v33 = @"finder.viewer.context.menu.next.bookmark";
    }

    v34 = v33;
  }

  v37 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"finder.viewer.context.menu" items:v39 initialFocus:v34];

  [(SCROBrailleUIFinderApp *)self setViewerContextMenuView:v37];
  viewerContextMenuView = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
  [viewerContextMenuView display];
}

- (void)_handleReturnInViewer
{
  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    currentSearchString = [(SCROBrailleUIFinderApp *)self currentSearchString];

    searchingForward = [(SCROBrailleUIFinderApp *)self searchingForward];
    if (currentSearchString)
    {
      viewerView = [(SCROBrailleUIFinderApp *)self viewerView];
      currentSearchString2 = [(SCROBrailleUIFinderApp *)self currentSearchString];
      if (searchingForward)
      {
        [viewerView handleFindForSearchBraille:currentSearchString2];
      }

      else
      {
        [viewerView handlePreviousFindForSearchBraille:currentSearchString2];
      }
    }

    else if (searchingForward)
    {

      [(SCROBrailleUIFinderApp *)self _moveToNextBookmark];
    }

    else
    {

      [(SCROBrailleUIFinderApp *)self _moveToPreviousBookmark];
    }
  }
}

- (BOOL)_isEditing
{
  editorView = [(SCROBrailleUIFinderApp *)self editorView];
  v3 = editorView != 0;

  return v3;
}

- (void)_openEditorForBRF:(id)f
{
  fCopy = f;
  if (![(SCROBrailleUIFinderApp *)self _isEditing])
  {
    if ([(SCROBrailleUIFinderApp *)self _isFileSizeAcceptableForURL:fCopy])
    {
      [(SCROBrailleUIFinderApp *)self setCurrentFileURL:fCopy];
      _loadReadingCursorForCurrentFile = [(SCROBrailleUIFinderApp *)self _loadReadingCursorForCurrentFile];
      v5 = [SCROBrailleUIBRFFile alloc];
      v6 = [(SCROBrailleUIFinderApp *)self _brfContentForURL:fCopy];
      v7 = [(SCROBrailleUIBRFFile *)v5 initWithBRF:v6 initialLocation:_loadReadingCursorForCurrentFile bookmarks:MEMORY[0x277CBEBF8]];
      [(SCROBrailleUIFinderApp *)self setBrfFile:v7];

      brfFile = [(SCROBrailleUIFinderApp *)self brfFile];
      unicode = [brfFile unicode];

      v10 = [[SCROBrailleUIBrailleAreaView alloc] initWithIdentifier:@"finder.editor" initialContent:unicode initialCursor:_loadReadingCursorForCurrentFile];
      [(SCROBrailleUIFinderApp *)self setEditorView:v10];

      editorView = [(SCROBrailleUIFinderApp *)self editorView];
      [editorView display];
    }

    else
    {
      unicode = SCROBrailleUILocString(@"finder.file.too.big");
      [(SCROBrailleUIFinderApp *)self _openAlertWithMessage:unicode];
    }
  }
}

- (void)_closeEditorForBRF
{
  if ([(SCROBrailleUIFinderApp *)self _isEditing])
  {
    editorView = [(SCROBrailleUIFinderApp *)self editorView];
    value = [editorView value];

    editorView2 = [(SCROBrailleUIFinderApp *)self editorView];
    selection = [editorView2 selection];
    [(SCROBrailleUIFinderApp *)self _saveReadingRange:selection, v6];

    currentFileURL = [(SCROBrailleUIFinderApp *)self currentFileURL];
    [(SCROBrailleUIFinderApp *)self _writeUnicodeContent:value toURL:currentFileURL];

    currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
    currentFileURL2 = [(SCROBrailleUIFinderApp *)self currentFileURL];
    lastPathComponent = [currentFileURL2 lastPathComponent];
    [(SCROBrailleUIFinderApp *)self _openFilesListInURL:currentDirectoryURL withFocusAtIdentifier:lastPathComponent];

    editorView3 = [(SCROBrailleUIFinderApp *)self editorView];
    [editorView3 dismiss];

    [(SCROBrailleUIFinderApp *)self setEditorView:0];
  }
}

- (BOOL)_isCreateNewMenuOpen
{
  createNewMenuView = [(SCROBrailleUIFinderApp *)self createNewMenuView];
  v3 = createNewMenuView != 0;

  return v3;
}

- (void)_openCreateNewMenu
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIFinderApp *)self _isCreateNewMenuOpen])
  {
    v3 = [SCROBrailleUIListItem alloc];
    v4 = SCROBrailleUILocString(@"finder.create.new.type.brf.file.name");
    v5 = [(SCROBrailleUIListItem *)v3 initWithIdentifier:@"finder.create.new.brf.file" label:v4 isInline:1];

    v6 = [SCROBrailleUIListItem alloc];
    v7 = SCROBrailleUILocString(@"finder.create.new.type.directory");
    v8 = [(SCROBrailleUIListItem *)v6 initWithIdentifier:@"finder.create.new.directory" label:v7 isInline:1];

    v9 = [SCROBrailleUIListView alloc];
    v14[0] = v5;
    v14[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v11 = [(SCROBrailleUIListView *)v9 initWithIdentifier:@"finder.create.new.menu" items:v10];
    [(SCROBrailleUIFinderApp *)self setCreateNewMenuView:v11];

    createNewMenuView = [(SCROBrailleUIFinderApp *)self createNewMenuView];
    [createNewMenuView display];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_closeCreateNewMenu
{
  createNewMenuView = [(SCROBrailleUIFinderApp *)self createNewMenuView];
  [createNewMenuView dismiss];

  [(SCROBrailleUIFinderApp *)self setCreateNewMenuView:0];
}

- (BOOL)_isContextMenuOpen
{
  contextMenuView = [(SCROBrailleUIFinderApp *)self contextMenuView];
  v3 = contextMenuView != 0;

  return v3;
}

- (void)_openContextMenuForURL:(id)l
{
  v28[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (![(SCROBrailleUIFinderApp *)self _isContextMenuOpen])
  {
    [(SCROBrailleUIFinderApp *)self setCurrentFileURL:lCopy];
    v5 = [SCROBrailleUIListItem alloc];
    v6 = SCROBrailleUILocString(@"finder.context.menu.rename.edit");
    v7 = [(SCROBrailleUIListItem *)v5 initWithIdentifier:@"finder.context.menu.edit" label:v6 isInline:0];

    v8 = [SCROBrailleUIListItem alloc];
    v9 = SCROBrailleUILocString(@"finder.context.menu.delete.label");
    v10 = [(SCROBrailleUIListItem *)v8 initWithIdentifier:@"finder.context.menu.delete" label:v9 isInline:0];

    v11 = [SCROBrailleUIListItem alloc];
    v12 = SCROBrailleUILocString(@"finder.context.menu.move.label");
    v13 = [(SCROBrailleUIListItem *)v11 initWithIdentifier:@"finder.context.menu.move" label:v12 isInline:0];

    v14 = [SCROBrailleUIListItem alloc];
    v15 = SCROBrailleUILocString(@"finder.context.menu.rename.label");
    v16 = [(SCROBrailleUIListItem *)v14 initWithIdentifier:@"finder.context.menu.rename" label:v15 isInline:1];

    v26 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [lCopy path];
    [defaultManager fileExistsAtPath:path isDirectory:&v26];

    if (v26 == 1)
    {
      v28[0] = v13;
      v28[1] = v10;
      v28[2] = v16;
      v19 = MEMORY[0x277CBEA60];
      v20 = v28;
      v21 = 3;
    }

    else
    {
      v27[0] = v7;
      v27[1] = v13;
      v27[2] = v10;
      v27[3] = v16;
      v19 = MEMORY[0x277CBEA60];
      v20 = v27;
      v21 = 4;
    }

    v22 = [v19 arrayWithObjects:v20 count:v21];
    v23 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"finder.context.menu" items:v22];
    [(SCROBrailleUIFinderApp *)self setContextMenuView:v23];

    contextMenuView = [(SCROBrailleUIFinderApp *)self contextMenuView];
    [contextMenuView display];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_closeContextMenu
{
  [(SCROBrailleUIFinderApp *)self setCurrentFileURL:0];
  contextMenuView = [(SCROBrailleUIFinderApp *)self contextMenuView];
  [contextMenuView dismiss];

  [(SCROBrailleUIFinderApp *)self setContextMenuView:0];
}

- (BOOL)_isContextMenuOptionsOpen
{
  contextMenuOptionsView = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];
  v3 = contextMenuOptionsView != 0;

  return v3;
}

- (void)_openContextMoveOptionsExcluding:(id)excluding
{
  excludingCopy = excluding;
  if (![(SCROBrailleUIFinderApp *)self _isContextMenuOptionsOpen])
  {
    currentDirectoryURL = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
    v5 = [(SCROBrailleUIFinderApp *)self _fileItemsInURL:currentDirectoryURL directoriesOnly:1 excluding:excludingCopy];
    v6 = [v5 mutableCopy];

    if ([(SCROBrailleUIFinderApp *)self _canGoUpOneLevel])
    {
      v7 = [SCROBrailleUIListItem alloc];
      v8 = SCROBrailleUILocString(@"finder.context.menu.move.up.one.level.label");
      v9 = [(SCROBrailleUIListItem *)v7 initWithIdentifier:@"finder.context.menu.options.up.one.level" label:v8 isInline:0];

      [v6 addObject:v9];
    }

    v10 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"finder.context.menu.options" items:v6];
    [(SCROBrailleUIFinderApp *)self setContextMenuOptionsView:v10];

    contextMenuOptionsView = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];
    [contextMenuOptionsView display];
  }
}

- (void)_closeContextMenuOptions
{
  contextMenuOptionsView = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];
  [contextMenuOptionsView dismiss];

  [(SCROBrailleUIFinderApp *)self setContextMenuOptionsView:0];
}

- (BOOL)_isShowingFindField
{
  findFieldView = [(SCROBrailleUIFinderApp *)self findFieldView];
  v3 = findFieldView != 0;

  return v3;
}

- (void)_closeFindField
{
  findFieldView = [(SCROBrailleUIFinderApp *)self findFieldView];
  [findFieldView dismiss];

  [(SCROBrailleUIFinderApp *)self setFindFieldView:0];
}

- (void)_openFindField
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIFinderApp *)self _isShowingFindField])
  {
    v3 = [SCROBrailleUIListItem alloc];
    v4 = SCROBrailleUILocString(@"finder.find.field.enter.search.text");
    v5 = [(SCROBrailleUIListItem *)v3 initWithIdentifier:@"finder.find.field.enter.search.text" label:v4 isInline:1];

    v6 = [SCROBrailleUIListView alloc];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [(SCROBrailleUIListView *)v6 initWithIdentifier:@"finder.find.field" items:v7];
    [(SCROBrailleUIFinderApp *)self setFindFieldView:v8];

    findFieldView = [(SCROBrailleUIFinderApp *)self findFieldView];
    [findFieldView display];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startAutoSave
{
  autoSaveTimer = [(SCROBrailleUIFinderApp *)self autoSaveTimer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SCROBrailleUIFinderApp__startAutoSave__block_invoke;
  v4[3] = &unk_279B73DD0;
  v4[4] = self;
  [autoSaveTimer afterDelay:v4 processBlock:5.0];
}

uint64_t __40__SCROBrailleUIFinderApp__startAutoSave__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isViewing];
  if (result)
  {
    if (!+[SCROBrailleUIApp isHidingViews])
    {
      v3 = *(a1 + 32);
      v4 = [v3 viewerView];
      v5 = [v4 focus];
      [v3 _saveReadingRange:{v5, v6}];

      [*(a1 + 32) _saveBookmarks];
    }

    v7 = *(a1 + 32);

    return [v7 _startAutoSave];
  }

  return result;
}

- (void)_stopAutoSave
{
  autoSaveTimer = [(SCROBrailleUIFinderApp *)self autoSaveTimer];
  [autoSaveTimer cancel];
}

- (BOOL)_isShowingAlert
{
  alertView = [(SCROBrailleUIFinderApp *)self alertView];
  v3 = alertView != 0;

  return v3;
}

- (void)_closeAlert
{
  if ([(SCROBrailleUIFinderApp *)self _isShowingAlert])
  {
    alertView = [(SCROBrailleUIFinderApp *)self alertView];
    [alertView dismiss];

    [(SCROBrailleUIFinderApp *)self setAlertView:0];
  }
}

- (void)_openAlertWithMessage:(id)message
{
  v11[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (![(SCROBrailleUIFinderApp *)self _isShowingAlert])
  {
    v5 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"finder.alert.message" label:messageCopy isInline:0];
    v6 = [SCROBrailleUIListView alloc];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [(SCROBrailleUIListView *)v6 initWithIdentifier:@"finder.alert" items:v7];
    [(SCROBrailleUIFinderApp *)self setAlertView:v8];

    alertView = [(SCROBrailleUIFinderApp *)self alertView];
    [alertView display];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isShowingDeleteConfirmView
{
  deleteConfirmView = [(SCROBrailleUIFinderApp *)self deleteConfirmView];
  v3 = deleteConfirmView != 0;

  return v3;
}

- (void)_closeDeleteConfirmView
{
  if ([(SCROBrailleUIFinderApp *)self _isShowingDeleteConfirmView])
  {
    deleteConfirmView = [(SCROBrailleUIFinderApp *)self deleteConfirmView];
    [deleteConfirmView dismiss];

    [(SCROBrailleUIFinderApp *)self setDeleteConfirmView:0];
  }
}

- (void)_openDeleteConfirmView
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIFinderApp *)self _isShowingDeleteConfirmView])
  {
    v3 = [SCROBrailleUIListItem alloc];
    v4 = SCROBrailleUILocString(@"finder.delete.confirm.format");
    v5 = [(SCROBrailleUIListItem *)v3 initWithIdentifier:@"finder.delete.confirm.message" label:v4 isInline:0];

    v6 = [SCROBrailleUIListItem alloc];
    v7 = SCROBrailleUILocString(@"finder.delete.confirm.delete");
    v8 = [(SCROBrailleUIListItem *)v6 initWithIdentifier:@"finder.delete.confirm.delete" label:v7 isInline:0];

    v9 = [SCROBrailleUIListView alloc];
    v14[0] = v5;
    v14[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v11 = [(SCROBrailleUIListView *)v9 initWithIdentifier:@"finder.delete.confirm" items:v10];
    [(SCROBrailleUIFinderApp *)self setDeleteConfirmView:v11];

    deleteConfirmView = [(SCROBrailleUIFinderApp *)self deleteConfirmView];
    [deleteConfirmView display];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isTitleGood:(id)good
{
  goodCopy = good;
  if (![goodCopy length] || objc_msgSend(goodCopy, "length") > 0xFF || (objc_msgSend(goodCopy, "hasPrefix:", @":") & 1) != 0 || (objc_msgSend(goodCopy, "hasPrefix:", @".") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [goodCopy containsString:@"/"] ^ 1;
  }

  return v4;
}

- (id)_secureURLWithBase:(id)base userInput:(id)input
{
  v26 = *MEMORY[0x277D85DE8];
  baseCopy = base;
  inputCopy = input;
  if (![inputCopy length] || objc_msgSend(inputCopy, "length") >= 0x100)
  {
    stringByRemovingPercentEncoding = _SCROD_LOG();
    if (!os_log_type_enabled(stringByRemovingPercentEncoding, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }

    LOWORD(v22) = 0;
    v9 = "Braille UI Finder: URL not secure; invalid length of user input";
LABEL_5:
    _os_log_impl(&dword_26490B000, stringByRemovingPercentEncoding, OS_LOG_TYPE_DEFAULT, v9, &v22, 2u);
    goto LABEL_6;
  }

  if ([(SCROBrailleUIFinderApp *)self _isPathComponentBad:inputCopy])
  {
    stringByRemovingPercentEncoding = _SCROD_LOG();
    if (!os_log_type_enabled(stringByRemovingPercentEncoding, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    LOWORD(v22) = 0;
    v9 = "Braille UI Finder: URL not secure; contains an illegal character";
    goto LABEL_5;
  }

  stringByRemovingPercentEncoding = [inputCopy stringByRemovingPercentEncoding];
  if ([(SCROBrailleUIFinderApp *)self _isPathComponentBad:stringByRemovingPercentEncoding])
  {
    v13 = _SCROD_LOG();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "Braille UI Finder: URL not secure; after decoding percent encoding it contains an illegal character", &v22, 2u);
    }

    v10 = 0;
  }

  else
  {
    v13 = [baseCopy URLByAppendingPathComponent:stringByRemovingPercentEncoding];
    uRLByResolvingSymlinksInPath = [v13 URLByResolvingSymlinksInPath];
    uRLByStandardizingPath = [uRLByResolvingSymlinksInPath URLByStandardizingPath];
    path = [uRLByStandardizingPath path];
    path2 = [baseCopy path];
    v18 = [path hasPrefix:path2];

    if (v18)
    {
      v10 = uRLByStandardizingPath;
    }

    else
    {
      v19 = _SCROD_LOG();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        path3 = [uRLByStandardizingPath path];
        path4 = [baseCopy path];
        v22 = 138412546;
        v23 = path3;
        v24 = 2112;
        v25 = path4;
        _os_log_impl(&dword_26490B000, v19, OS_LOG_TYPE_DEFAULT, "Braille UI Finder: URL not secure; processed path %@ does have the %@ as a base", &v22, 0x16u);
      }

      v10 = 0;
    }
  }

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_isPathComponentBad:(id)bad
{
  badCopy = bad;
  if ([badCopy containsString:@"/"] & 1) != 0 || (objc_msgSend(badCopy, "containsString:", @"..") & 1) != 0 || (objc_msgSend(badCopy, "containsString:", @":") & 1) != 0 || (objc_msgSend(badCopy, "hasPrefix:", @".") & 1) != 0 || (objc_msgSend(badCopy, "containsString:", @"~"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [badCopy containsString:&stru_28763E0C8];
  }

  return v4;
}

@end