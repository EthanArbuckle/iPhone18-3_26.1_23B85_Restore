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
- (BOOL)_isFileSizeAcceptableForURL:(id)a3;
- (BOOL)_isOpen;
- (BOOL)_isPathComponentBad:(id)a3;
- (BOOL)_isShowingAlert;
- (BOOL)_isShowingDeleteConfirmView;
- (BOOL)_isShowingFindField;
- (BOOL)_isTitleGood:(id)a3;
- (BOOL)_isViewerContextMenuOpen;
- (BOOL)_isViewing;
- (SCROBrailleUIFinderApp)initWithDelegate:(id)a3;
- (id)_bookmarkLocationsInCurrentLine;
- (id)_brfContentForURL:(id)a3;
- (id)_brfForUnicodeBraille:(id)a3;
- (id)_currentFileRelativePath;
- (id)_fileItemsInURL:(id)a3 directoriesOnly:(BOOL)a4 excluding:(id)a5;
- (id)_rawBookmarks;
- (id)_secureURLWithBase:(id)a3 userInput:(id)a4;
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
- (void)_handleActionInAlert:(id)a3;
- (void)_handleActionInContextMenu:(id)a3;
- (void)_handleActionInContextMenuOptions:(id)a3;
- (void)_handleActionInCreateNewMenu:(id)a3;
- (void)_handleActionInDeleteConfirmView:(id)a3;
- (void)_handleActionInEditor:(id)a3;
- (void)_handleActionInFilesList:(id)a3;
- (void)_handleActionInFindField:(id)a3;
- (void)_handleActionInViewer:(id)a3;
- (void)_handleActionInViewerContextMenu:(id)a3;
- (void)_handleReturnInViewer;
- (void)_moveToNextBookmark;
- (void)_moveToPreviousBookmark;
- (void)_openAlertWithMessage:(id)a3;
- (void)_openContextMenuForURL:(id)a3;
- (void)_openContextMoveOptionsExcluding:(id)a3;
- (void)_openCreateNewMenu;
- (void)_openDeleteConfirmView;
- (void)_openEditorForBRF:(id)a3;
- (void)_openFilesListInURL:(id)a3 withFocusAtIdentifier:(id)a4 display:(BOOL)a5;
- (void)_openFindField;
- (void)_openViewerContextMenuWithFocusSearch:(BOOL)a3;
- (void)_openViewerForBRF:(id)a3;
- (void)_saveBookmarks;
- (void)_saveReadingRange:(_NSRange)a3;
- (void)_startAutoSave;
- (void)_stopAutoSave;
- (void)_writeUnicodeContent:(id)a3 toURL:(id)a4;
- (void)close;
- (void)handleAction:(id)a3;
- (void)lazyLoad;
- (void)open;
- (void)openWithURL:(id)a3;
@end

@implementation SCROBrailleUIFinderApp

- (SCROBrailleUIFinderApp)initWithDelegate:(id)a3
{
  v9.receiver = self;
  v9.super_class = SCROBrailleUIFinderApp;
  v3 = [(SCROBrailleUIApp *)&v9 initWithDelegate:a3];
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
      v4 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
      [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v4];

      v8 = self;
      v5 = &v8;
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

- (void)openWithURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 URLByStandardizingPath];

    v19 = 0;
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v6 path];
    v9 = [v7 fileExistsAtPath:v8 isDirectory:&v19];

    v10 = [v6 pathExtension];
    v11 = [v10 lowercaseString];
    v12 = [v11 isEqualToString:@"brf"];

    if (v9)
    {
      if (v19 == 1)
      {
        [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:v6];
        [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:0];
        [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v6];
        v18 = self;
        v13 = &v18;
LABEL_7:
        v13->super_class = SCROBrailleUIFinderApp;
        [(objc_super *)v13 open];
        goto LABEL_8;
      }

      if (v12)
      {
        v14 = [v6 URLByDeletingLastPathComponent];
        v15 = [v14 URLByStandardizingPath];
        [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:v15];

        [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:0];
        v16 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v16 withFocusAtIdentifier:0 display:0];

        [(SCROBrailleUIFinderApp *)self _openViewerForBRF:v6];
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
  v4 = [(SCROBrailleUIFinderApp *)self filesListView];

  if (v4)
  {
    v5 = [(SCROBrailleUIFinderApp *)self filesListView];
    [v3 addObject:v5];
  }

  v6 = [(SCROBrailleUIFinderApp *)self viewerView];

  if (v6)
  {
    v7 = [(SCROBrailleUIFinderApp *)self viewerView];
    [v3 addObject:v7];
  }

  v8 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];

  if (v8)
  {
    v9 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
    [v3 addObject:v9];
  }

  v10 = [(SCROBrailleUIFinderApp *)self editorView];

  if (v10)
  {
    v11 = [(SCROBrailleUIFinderApp *)self editorView];
    [v3 addObject:v11];
  }

  v12 = [(SCROBrailleUIFinderApp *)self findFieldView];

  if (v12)
  {
    v13 = [(SCROBrailleUIFinderApp *)self findFieldView];
    [v3 addObject:v13];
  }

  v14 = [(SCROBrailleUIFinderApp *)self createNewMenuView];

  if (v14)
  {
    v15 = [(SCROBrailleUIFinderApp *)self createNewMenuView];
    [v3 addObject:v15];
  }

  v16 = [(SCROBrailleUIFinderApp *)self contextMenuView];

  if (v16)
  {
    v17 = [(SCROBrailleUIFinderApp *)self contextMenuView];
    [v3 addObject:v17];
  }

  v18 = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];

  if (v18)
  {
    v19 = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];
    [v3 addObject:v19];
  }

  v20 = [(SCROBrailleUIFinderApp *)self alertView];

  if (v20)
  {
    v21 = [(SCROBrailleUIFinderApp *)self alertView];
    [v3 addObject:v21];
  }

  v22 = [(SCROBrailleUIFinderApp *)self deleteConfirmView];

  if (v22)
  {
    v23 = [(SCROBrailleUIFinderApp *)self deleteConfirmView];
    [v3 addObject:v23];
  }

  return v3;
}

- (void)handleAction:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isOpen])
  {
    if ([(SCROBrailleUIFinderApp *)self _isShowingAlert])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInAlert:v4];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isShowingDeleteConfirmView])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInDeleteConfirmView:v4];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isCreateNewMenuOpen])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInCreateNewMenu:v4];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isShowingFindField])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInFindField:v4];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isViewerContextMenuOpen])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInViewerContextMenu:v4];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isViewing])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInViewer:v4];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isEditing])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInEditor:v4];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isContextMenuOptionsOpen])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInContextMenuOptions:v4];
    }

    else if ([(SCROBrailleUIFinderApp *)self _isContextMenuOpen])
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInContextMenu:v4];
    }

    else
    {
      [(SCROBrailleUIFinderApp *)self _handleActionInFilesList:v4];
    }
  }
}

- (void)_handleActionInAlert:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isShowingAlert])
  {
    v5 = [v4 type];
    if (v5 <= 4 && ((1 << v5) & 0x16) != 0)
    {
      [(SCROBrailleUIFinderApp *)self close];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v6 handleAction:v4];
    }
  }
}

- (void)_handleActionInDeleteConfirmView:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isShowingDeleteConfirmView])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeDeleteConfirmView];
    }

    else if (v5 == 1)
    {
      v6 = [(SCROBrailleUIFinderApp *)self deleteConfirmView];
      v7 = [v6 focusedItem];
      v8 = [v7 identifier];

      if ([v8 isEqualToString:@"finder.delete.confirm.delete"])
      {
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        v10 = [(SCROBrailleUIFinderApp *)self currentFileURL];
        v17 = 0;
        [v9 removeItemAtURL:v10 error:&v17];
        v11 = v17;

        if (v11)
        {
          v12 = _SCROD_LOG();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(SCROBrailleUIFinderApp *)self currentFileURL];
            *buf = 138412290;
            v19 = v13;
            _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_DEFAULT, "Failed to remove file at %@", buf, 0xCu);
          }
        }

        v14 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v14];

        [(SCROBrailleUIFinderApp *)self _closeDeleteConfirmView];
        [(SCROBrailleUIFinderApp *)self _closeContextMenu];
      }
    }

    else
    {
      v16.receiver = self;
      v16.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v16 handleAction:v4];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInFilesList:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isOpen])
  {
    v5 = [(SCROBrailleUIFinderApp *)self filesListView];
    v6 = [v5 focusedItem];
    v7 = [v6 identifier];

    v8 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
    v9 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:v8 userInput:v7];

    if (!v9)
    {
LABEL_17:

      goto LABEL_18;
    }

    v24 = 0;
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v9 path];
    [v10 fileExistsAtPath:v11 isDirectory:&v24];

    v12 = [v4 type];
    switch(v12)
    {
      case 4:
        v21 = [(SCROBrailleUIFinderApp *)self filesListView];
        v22 = [v21 focusedIndex];

        if (v22)
        {
          [(SCROBrailleUIFinderApp *)self _openContextMenuForURL:v9];
        }

        goto LABEL_17;
      case 2:
        if ([(SCROBrailleUIFinderApp *)self _canGoUpOneLevel])
        {
          v16 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
          v15 = [v16 lastPathComponent];

          v17 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
          v18 = [v17 URLByDeletingLastPathComponent];
          v19 = [v18 URLByStandardizingPath];
          [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:v19];

          [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:[(SCROBrailleUIFinderApp *)self currentDirectoryDepth]- 1];
          v20 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
          [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v20 withFocusAtIdentifier:v15];

LABEL_11:
          goto LABEL_17;
        }

        break;
      case 1:
        v13 = [(SCROBrailleUIFinderApp *)self filesListView];
        v14 = [v13 focusedIndex];

        if (!v14)
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
        v15 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v15];
        goto LABEL_11;
    }

    v23.receiver = self;
    v23.super_class = SCROBrailleUIFinderApp;
    [(SCROBrailleUIApp *)&v23 handleAction:v4];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_handleActionInViewer:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    v5 = [v4 type];
    if (v5 <= 3)
    {
      if (v5 == 1)
      {
        [(SCROBrailleUIFinderApp *)self _handleReturnInViewer];
        goto LABEL_13;
      }

      if (v5 == 2)
      {
        [(SCROBrailleUIFinderApp *)self _closeViewerForBRF];
        goto LABEL_13;
      }

LABEL_9:
      v8.receiver = self;
      v8.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v8 handleAction:v4];
      goto LABEL_13;
    }

    if (v5 == 4)
    {
      v6 = self;
      v7 = 0;
    }

    else
    {
      if (v5 != 5)
      {
        goto LABEL_9;
      }

      v6 = self;
      v7 = 1;
    }

    [(SCROBrailleUIFinderApp *)v6 _openViewerContextMenuWithFocusSearch:v7];
  }

LABEL_13:
}

- (void)_handleActionInViewerContextMenu:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isViewerContextMenuOpen])
  {
    v5 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
    v6 = [v5 focusedItem];
    v7 = [v6 identifier];

    v8 = [v4 type];
    if (v8 == 2)
    {
LABEL_12:
      [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
      goto LABEL_13;
    }

    if (v8 != 1)
    {
      v39.receiver = self;
      v39.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v39 handleAction:v4];
LABEL_13:

      goto LABEL_14;
    }

    if ([v7 isEqualToString:@"finder.viewer.context.menu.next.bookmark"])
    {
      [(SCROBrailleUIFinderApp *)self setCurrentSearchString:0];
      [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
      [(SCROBrailleUIFinderApp *)self _moveToNextBookmark];
LABEL_6:
      v9 = self;
      v10 = 1;
LABEL_11:
      [(SCROBrailleUIFinderApp *)v9 setSearchingForward:v10];
      goto LABEL_12;
    }

    if ([v7 isEqualToString:@"finder.viewer.context.menu.previous.bookmark"])
    {
      [(SCROBrailleUIFinderApp *)self setCurrentSearchString:0];
      [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
      [(SCROBrailleUIFinderApp *)self _moveToPreviousBookmark];
    }

    else
    {
      if ([v7 isEqualToString:@"finder.viewer.context.menu.search"])
      {
        v12 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
        v13 = [v12 value];
        [(SCROBrailleUIFinderApp *)self setCurrentSearchString:v13];

        [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
        v14 = [(SCROBrailleUIFinderApp *)self viewerView];
        v15 = [(SCROBrailleUIFinderApp *)self currentSearchString];
        [v14 handleFindForSearchBraille:v15];

        goto LABEL_6;
      }

      if (![v7 isEqualToString:@"finder.viewer.context.menu.previous.search"])
      {
        if ([v7 isEqualToString:@"finder.viewer.context.menu.add.bookmark"])
        {
          [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
          v20 = [(SCROBrailleUIFinderApp *)self viewerView];
          v21 = [v20 focus];

          v22 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
          v23 = [v22 count];

          v24 = 0;
          if (v23)
          {
            do
            {
              v25 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
              v26 = [v25 objectAtIndexedSubscript:v24];
              v27 = [v26 integerValue];

              if (v27 > v21)
              {
                break;
              }

              ++v24;
              v28 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
              v29 = [v28 count];
            }

            while (v24 < v29);
          }

          v30 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
          v31 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
          [v30 insertObject:v31 atIndex:v24];
        }

        else if ([v7 isEqualToString:@"finder.viewer.context.menu.remove.bookmark"])
        {
          [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v32 = [(SCROBrailleUIFinderApp *)self _bookmarkLocationsInCurrentLine];
          v33 = [v32 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v40 + 1) + 8 * v36);
                v38 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
                [v38 removeObject:v37];

                ++v36;
              }

              while (v34 != v36);
              v34 = [v32 countByEnumeratingWithState:&v40 objects:v44 count:16];
            }

            while (v34);
          }
        }

        goto LABEL_12;
      }

      v16 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
      v17 = [v16 value];
      [(SCROBrailleUIFinderApp *)self setCurrentSearchString:v17];

      [(SCROBrailleUIFinderApp *)self _closeViewerContextMenu];
      v18 = [(SCROBrailleUIFinderApp *)self viewerView];
      v19 = [(SCROBrailleUIFinderApp *)self currentSearchString];
      [v18 handlePreviousFindForSearchBraille:v19];
    }

    v9 = self;
    v10 = 0;
    goto LABEL_11;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInEditor:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isEditing])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeEditorForBRF];
    }

    else if (v5 == 5)
    {
      [(SCROBrailleUIFinderApp *)self _openFindField];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v6 handleAction:v4];
    }
  }
}

- (void)_handleActionInCreateNewMenu:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isCreateNewMenuOpen])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeCreateNewMenu];
    }

    else if (v5 == 1)
    {
      v6 = [(SCROBrailleUIFinderApp *)self createNewMenuView];
      v7 = [v6 focusedItem];
      v8 = [v7 identifier];

      if ([v8 isEqualToString:@"finder.create.new.brf.file"])
      {
        v9 = [(SCROBrailleUIFinderApp *)self createNewMenuView];
        v10 = [v9 value];

        v11 = +[SCROBrailleTranslationManager inputManager];
        v34 = v10;
        v12 = [v11 textForPrintBraille:v10 language:0 mode:1 locations:0];

        v13 = [v12 stringByAppendingString:@".brf"];
        v14 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        v15 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:v14 userInput:v13];

        v16 = [MEMORY[0x277CCAA00] defaultManager];
        if (v15)
        {
          [v15 path];
          v18 = v17 = v8;
          v19 = [v16 fileExistsAtPath:v18];

          v8 = v17;
          if ((v19 & 1) == 0)
          {
            v20 = [v15 path];
            v21 = objc_opt_new();
            v22 = [v16 createFileAtPath:v20 contents:v21 attributes:0];

            v8 = v17;
            if (v22)
            {
              [(SCROBrailleUIFinderApp *)self _openEditorForBRF:v15];
              [(SCROBrailleUIFinderApp *)self _closeCreateNewMenu];
            }
          }
        }
      }

      else if ([v8 isEqualToString:@"finder.create.new.directory"])
      {
        v23 = [(SCROBrailleUIFinderApp *)self createNewMenuView];
        v24 = [v23 value];

        v25 = +[SCROBrailleTranslationManager inputManager];
        v26 = [v25 textForPrintBraille:v24 language:0 mode:1 locations:0];

        v27 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        v28 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:v27 userInput:v26];

        if (v28)
        {
          v29 = [MEMORY[0x277CCAA00] defaultManager];
          v30 = [v28 path];
          v36 = 0;
          [v29 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:MEMORY[0x277CBEC10] error:&v36];
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
      [(SCROBrailleUIApp *)&v35 handleAction:v4];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInContextMenu:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isContextMenuOpen])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeContextMenu];
    }

    else
    {
      if (v5 == 1)
      {
        v6 = [(SCROBrailleUIFinderApp *)self contextMenuView];
        v7 = [v6 focusedItem];
        v8 = [v7 identifier];

        v9 = [(SCROBrailleUIFinderApp *)self filesListView];
        v10 = [v9 focusedItem];
        v11 = [v10 identifier];

        v12 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
        v13 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:v12 userInput:v11];

        if ([v8 isEqualToString:@"finder.context.menu.edit"])
        {
          if (v13)
          {
            [(SCROBrailleUIFinderApp *)self _openEditorForBRF:v13];
            [(SCROBrailleUIFinderApp *)self _closeContextMenu];
            [(SCROBrailleUIFinderApp *)self setCurrentFileURL:v13];
          }

          goto LABEL_28;
        }

        if ([v8 isEqualToString:@"finder.context.menu.delete"])
        {
          [(SCROBrailleUIFinderApp *)self _openDeleteConfirmView];
          goto LABEL_28;
        }

        if ([v8 isEqualToString:@"finder.context.menu.move"])
        {
          if (v13)
          {
            [(SCROBrailleUIFinderApp *)self _openContextMoveOptionsExcluding:v13];
          }

          goto LABEL_28;
        }

        if (![v8 isEqualToString:@"finder.context.menu.rename"])
        {
LABEL_28:

          goto LABEL_29;
        }

        v14 = [(SCROBrailleUIFinderApp *)self currentFileURL];
        v15 = [(SCROBrailleUIFinderApp *)self contextMenuView];
        v16 = [v15 value];

        v17 = +[SCROBrailleTranslationManager inputManager];
        v18 = [v17 textForPrintBraille:v16 language:0 mode:1 locations:0];

        if ([v18 length])
        {
          v34 = v16;
          v38 = 0;
          v19 = [MEMORY[0x277CCAA00] defaultManager];
          v20 = [v14 path];
          [v19 fileExistsAtPath:v20 isDirectory:&v38];

          if ((v38 & 1) == 0)
          {
            v21 = [v18 stringByAppendingString:@".brf"];

            v18 = v21;
          }

          v22 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
          v23 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:v22 userInput:v18];

          if (!v23)
          {

            v31 = v16;
            goto LABEL_27;
          }

          v33 = v23;
          [(SCROBrailleUIFinderApp *)self setCurrentFileURL:v23];
          v24 = [MEMORY[0x277CCAA00] defaultManager];
          v25 = [(SCROBrailleUIFinderApp *)self currentFileURL];
          v37 = 0;
          v35 = v14;
          [v24 moveItemAtURL:v14 toURL:v25 error:&v37];
          v14 = v37;

          if (v14)
          {
            v26 = _SCROD_LOG();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [(SCROBrailleUIFinderApp *)self currentFileURL];
              *buf = 138412546;
              v40 = v35;
              v41 = 2112;
              v42 = v27;
              _os_log_impl(&dword_26490B000, v26, OS_LOG_TYPE_DEFAULT, "Failed to move file at %@ to %@", buf, 0x16u);
            }
          }

          v28 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
          v29 = [(SCROBrailleUIFinderApp *)self currentFileURL];
          v30 = [v29 lastPathComponent];
          [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v28 withFocusAtIdentifier:v30];

          v16 = v34;
        }

        else
        {
          v35 = v14;
          v14 = 0;
        }

        [(SCROBrailleUIFinderApp *)self _closeContextMenu];

        v31 = v35;
LABEL_27:

        goto LABEL_28;
      }

      v36.receiver = self;
      v36.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v36 handleAction:v4];
    }
  }

LABEL_29:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInContextMenuOptions:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isContextMenuOptionsOpen])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeContextMenuOptions];
    }

    else if (v5 == 1)
    {
      v6 = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];
      v7 = [v6 focusedItem];
      v8 = [v7 identifier];

      LODWORD(v6) = [v8 isEqualToString:@"finder.context.menu.options.up.one.level"];
      v9 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
      v10 = v9;
      if (v6)
      {
        v11 = [v9 URLByDeletingLastPathComponent];
        v12 = [v11 URLByStandardizingPath];

        v13 = -1;
      }

      else
      {
        v12 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:v9 userInput:v8];
        v13 = 1;
      }

      if (v12)
      {
        v14 = [(SCROBrailleUIFinderApp *)self currentFileURL];
        v15 = [v14 lastPathComponent];

        v16 = [(SCROBrailleUIFinderApp *)self _secureURLWithBase:v12 userInput:v15];
        v17 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = [(SCROBrailleUIFinderApp *)self currentFileURL];
        v24 = 0;
        [v17 moveItemAtURL:v18 toURL:v16 error:&v24];
        v19 = v24;

        if (v19)
        {
          v20 = _SCROD_LOG();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [(SCROBrailleUIFinderApp *)self currentFileURL];
            *buf = 138412546;
            v26 = v21;
            v27 = 2112;
            v28 = v16;
            _os_log_impl(&dword_26490B000, v20, OS_LOG_TYPE_DEFAULT, "Failed to move %@ to %@", buf, 0x16u);
          }
        }

        else
        {
          [(SCROBrailleUIFinderApp *)self setCurrentDirectoryURL:v12];
          [(SCROBrailleUIFinderApp *)self setCurrentDirectoryDepth:[(SCROBrailleUIFinderApp *)self currentDirectoryDepth]+ v13];
          [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v12 withFocusAtIdentifier:v15];
        }
      }

      [(SCROBrailleUIFinderApp *)self _closeContextMenuOptions];
      [(SCROBrailleUIFinderApp *)self _closeContextMenu];
    }

    else
    {
      v23.receiver = self;
      v23.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v23 handleAction:v4];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInFindField:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIFinderApp *)self _isShowingFindField])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUIFinderApp *)self _closeFindField];
    }

    else
    {
      if (v5 == 1)
      {
        v6 = [(SCROBrailleUIFinderApp *)self findFieldView];
        v7 = [v6 focusedItem];
        v8 = [v7 identifier];

        if (![v8 isEqualToString:@"finder.find.field.enter.search.text"])
        {
LABEL_13:

          goto LABEL_14;
        }

        v9 = [(SCROBrailleUIFinderApp *)self findFieldView];
        v10 = [v9 value];

        [(SCROBrailleUIFinderApp *)self _closeFindField];
        v11 = [(SCROBrailleUIFinderApp *)self editorView];

        if (v11)
        {
          v12 = [(SCROBrailleUIFinderApp *)self editorView];
        }

        else
        {
          v13 = [(SCROBrailleUIFinderApp *)self viewerView];

          if (!v13)
          {
LABEL_12:

            goto LABEL_13;
          }

          v12 = [(SCROBrailleUIFinderApp *)self viewerView];
        }

        v14 = v12;
        [v12 handleFindForSearchBraille:v10];

        goto LABEL_12;
      }

      v15.receiver = self;
      v15.super_class = SCROBrailleUIFinderApp;
      [(SCROBrailleUIApp *)&v15 handleAction:v4];
    }
  }

LABEL_14:
}

- (BOOL)_isOpen
{
  v3 = [(SCROBrailleUIFinderApp *)self filesListView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SCROBrailleUIFinderApp *)self alertView];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)_closeFilesList
{
  [(SCROBrailleUIFinderApp *)self setCurrentFileURL:0];
  v3 = [(SCROBrailleUIFinderApp *)self filesListView];
  [v3 dismiss];

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
    v4 = [a1 _absoluteRootURL];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v3 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
    v4 = +[SCROBrailleUIFinderApp _absoluteRootURL];
    v5 = [v3 isEqual:v4] ^ 1;
  }

  return v5;
}

- (void)_openFilesListInURL:(id)a3 withFocusAtIdentifier:(id)a4 display:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [SCROBrailleUIUtilities tryDownloadingIfNeededForURL:v9];
  v17 = objc_opt_new();
  v10 = [SCROBrailleUIListItem alloc];
  v11 = SCROBrailleUILocString(@"finder.create.new.label");
  v12 = [(SCROBrailleUIListItem *)v10 initWithIdentifier:@"finder.create.new.menu" label:v11 isInline:0];

  [v17 addObject:v12];
  v13 = [(SCROBrailleUIFinderApp *)self _fileItemsInURL:v9 directoriesOnly:0];

  [v17 addObjectsFromArray:v13];
  v14 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"finder.files.list" items:v17 initialFocus:v8];

  v15 = [(SCROBrailleUIFinderApp *)self filesListView];
  [(SCROBrailleUIFinderApp *)self setFilesListView:v14];
  if (v5)
  {
    v16 = [(SCROBrailleUIFinderApp *)self filesListView];
    [v16 display];
  }

  [v15 dismiss];
}

- (id)_fileItemsInURL:(id)a3 directoriesOnly:(BOOL)a4 excluding:(id)a5
{
  v6 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v38 = a5;
  v9 = 0x277CCA000uLL;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v40 = v8;
  v11 = [v8 path];
  v45 = 0;
  v12 = [v10 contentsOfDirectoryAtPath:v11 error:&v45];
  v13 = v45;

  if (v13)
  {
    v14 = _SCROD_LOG();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v40 path];
      *buf = 138412290;
      v48 = v15;
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
      v36 = !v6;
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
            v23 = [*(v9 + 2560) defaultManager];
            v24 = [v20 path];
            [v23 fileExistsAtPath:v24 isDirectory:buf];

            v25 = [v20 pathExtension];
            v26 = [v25 lowercaseString];
            v27 = [v26 isEqualToString:@"brf"];

            v28 = [v38 isEqual:v20];
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

- (id)_brfForUnicodeBraille:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 newlineCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 ax_mappedArrayUsingBlock:&__block_literal_global_112];
  v8 = [v7 componentsJoinedByString:@"\n"];

  return v8;
}

- (BOOL)_isFileSizeAcceptableForURL:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v4 path];

  v15 = 0;
  v7 = [v5 attributesOfItemAtPath:v6 error:&v15];
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

- (id)_brfContentForURL:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [SCROBrailleUIUtilities tryDownloadingIfNeededForURL:v3];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 contentsAtPath:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:1];
  }

  else
  {
    v8 = _SCROD_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 path];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Braille UI Finder: Failed to get contents at path %@", &v12, 0xCu);
    }

    v7 = &stru_28763D5C8;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_writeUnicodeContent:(id)a3 toURL:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SCROBrailleUIFinderApp *)self _brfForUnicodeBraille:a3];
  v8 = [v6 path];
  v13 = 0;
  [v7 writeToFile:v8 atomically:0 encoding:4 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = _SCROD_LOG();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 path];
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_26490B000, v10, OS_LOG_TYPE_DEFAULT, "Failed to write to file at %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_saveReadingRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(SCROBrailleUIFinderApp *)self brfFile];
  v16 = [v6 locationMap];

  if (location >= [v16 count])
  {
    v8 = 0;
  }

  else
  {
    v7 = [v16 objectAtIndex:location];
    v8 = [v7 integerValue];
  }

  v9 = location + length;
  if (v9 >= [v16 count])
  {
    v12 = 0;
  }

  else
  {
    v10 = [v16 objectAtIndex:v9];
    v11 = [v10 integerValue] - v8;

    v12 = v11 & ~(v11 >> 63);
  }

  v13 = [MEMORY[0x277CBEA90] dataWithRange:{v8, v12}];
  v14 = +[SCROBrailleUIPersistenceManager sharedInstance];
  v15 = [(SCROBrailleUIFinderApp *)self _currentFileRelativePath];
  [v14 setValue:v13 forKey:v15 cache:@"Files" maxRecordCount:100];
}

- (int64_t)_loadReadingCursorForCurrentFile
{
  v3 = +[SCROBrailleUIPersistenceManager sharedInstance];
  v4 = [(SCROBrailleUIFinderApp *)self _currentFileRelativePath];
  v5 = [v3 getValueForKey:v4 cache:@"Files"];

  if (v5)
  {
    v6 = [v5 range];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_saveBookmarks
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SCROBrailleUIFinderApp *)self brfFile];
  v5 = [v4 locationMap];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) integerValue];
        if ((v11 & 0x8000000000000000) == 0)
        {
          v12 = v11;
          if (v11 < [v5 count])
          {
            v13 = [v5 objectAtIndex:v12];
            [v3 addObject:v13];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = +[SCROBrailleUIPersistenceManager sharedInstance];
  v15 = [(SCROBrailleUIFinderApp *)self _currentFileRelativePath];
  [v14 setValue:v3 forKey:v15 cache:@"FilesBookmarks" maxRecordCount:100];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_rawBookmarks
{
  v3 = +[SCROBrailleUIPersistenceManager sharedInstance];
  v4 = [(SCROBrailleUIFinderApp *)self _currentFileRelativePath];
  v5 = [v3 getValueForKey:v4 cache:@"FilesBookmarks"];
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
  v3 = [(SCROBrailleUIFinderApp *)self currentFileURL];
  v4 = [v3 path];
  v5 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
  v6 = [v5 path];
  v7 = [v4 substringFromIndex:{objc_msgSend(v6, "length")}];

  return v7;
}

- (BOOL)_isViewing
{
  v2 = [(SCROBrailleUIFinderApp *)self viewerView];
  v3 = v2 != 0;

  return v3;
}

- (void)_openViewerForBRF:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(SCROBrailleUIFinderApp *)self _isViewing])
  {
    if ([(SCROBrailleUIFinderApp *)self _isFileSizeAcceptableForURL:v4])
    {
      [(SCROBrailleUIFinderApp *)self setIsViewerViewLoading:1];
      v5 = SCROBrailleUILocString(@"finder.viewer.loading");
      v6 = [SCROBrailleTranslationUtility brailleForText:v5];

      v7 = [[SCROBrailleUIBrailleAreaView alloc] initWithIdentifier:@"finder.viewer" initialContent:v6 initialCursor:0x7FFFFFFFFFFFFFFFLL];
      [(SCROBrailleUIFinderApp *)self setViewerView:v7];

      v8 = [(SCROBrailleUIFinderApp *)self viewerView];
      [v8 setIsReadOnly:1];

      v9 = [(SCROBrailleUIFinderApp *)self viewerView];
      [v9 display];

      [(SCROBrailleUIFinderApp *)self setCurrentFileURL:v4];
      v10 = [(SCROBrailleUIApp *)self delegate];
      v13 = kSCROBrailleUIRequestTypeKey[0];
      v14[0] = &unk_2876519B0;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [v10 handleBrailleUIRequest:v11];

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
    v3 = [(SCROBrailleUIFinderApp *)self _loadReadingCursorForCurrentFile];
    v24 = [(SCROBrailleUIFinderApp *)self _rawBookmarks];
    v4 = +[SCROBrailleUISettingsManager sharedInstance];
    v5 = [v4 isBRFReflowEnabled];

    if (v5)
    {
      v6 = +[SCROBrailleUISettingsManager sharedInstance];
      v7 = [v6 brfReflowSize];
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v8 = +[SCROBrailleUISettingsManager sharedInstance];
    v9 = [v8 isBRFWordWrapEnabled];

    v10 = +[SCROBrailleUISettingsManager sharedInstance];
    v11 = [v10 isBRFStripPageIndicatorsEnabled];

    v12 = [SCROBrailleUIBRFFile alloc];
    v13 = [(SCROBrailleUIFinderApp *)self currentFileURL];
    v14 = [(SCROBrailleUIFinderApp *)self _brfContentForURL:v13];
    v15 = [(SCROBrailleUIBRFFile *)v12 initWithBRF:v14 rawInitialLocation:v3 rawBookmarks:v24 reflowSize:v7 shouldWordWrap:v9 shouldStripPageIndicators:v11];
    [(SCROBrailleUIFinderApp *)self setBrfFile:v15];

    v16 = [(SCROBrailleUIFinderApp *)self brfFile];
    v17 = [v16 bookmarks];
    v18 = [v17 mutableCopy];
    [(SCROBrailleUIFinderApp *)self setBookmarkLocations:v18];

    v19 = [(SCROBrailleUIFinderApp *)self viewerView];
    v20 = [(SCROBrailleUIFinderApp *)self brfFile];
    v21 = [v20 unicode];
    v22 = [(SCROBrailleUIFinderApp *)self brfFile];
    [v19 loadContent:v21 cursor:{objc_msgSend(v22, "initialLocation")}];

    v23 = [(SCROBrailleUIFinderApp *)self viewerView];
    [v23 display];
  }
}

- (void)_closeViewerForBRF
{
  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    [(SCROBrailleUIFinderApp *)self _stopAutoSave];
    v3 = [(SCROBrailleUIFinderApp *)self viewerView];
    v4 = [v3 focus];
    [(SCROBrailleUIFinderApp *)self _saveReadingRange:v4, v5];

    [(SCROBrailleUIFinderApp *)self _saveBookmarks];
    [(SCROBrailleUIFinderApp *)self setBookmarkLocations:0];
    v6 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
    v7 = [(SCROBrailleUIFinderApp *)self currentFileURL];
    v8 = [v7 lastPathComponent];
    [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v6 withFocusAtIdentifier:v8];

    v9 = [(SCROBrailleUIFinderApp *)self viewerView];
    [v9 dismiss];

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
        v9 = [v8 integerValue];
        v10 = [(SCROBrailleUIFinderApp *)self viewerView];
        v11 = [v10 focus];
        if (v9 < v11 || v9 - v11 >= v12)
        {
          v14 = [(SCROBrailleUIFinderApp *)self viewerView];
          v15 = [v14 focus];
          v17 = v15 + v16;

          if (v9 != v17)
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

  v3 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_moveToNextBookmark
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    v3 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [(SCROBrailleUIFinderApp *)self viewerView];
      v6 = [v5 focus];
      v8 = v7;

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = v6 + v8;
        v13 = *v25;
LABEL_5:
        v14 = 0;
        while (1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v24 + 1) + 8 * v14) integerValue];
          v16 = [(SCROBrailleUIFinderApp *)self viewerView];
          v17 = [v16 value];
          v18 = [v17 length];

          if (v15 > v18)
          {
            break;
          }

          if (v15 > v12)
          {
            v22 = [(SCROBrailleUIFinderApp *)self viewerView];
            [v22 moveFocusTo:v15];

            goto LABEL_14;
          }

          if (v11 == ++v14)
          {
            v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v19 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
      v20 = [v19 firstObject];
      v21 = [v20 integerValue];

      v9 = [(SCROBrailleUIFinderApp *)self viewerView];
      [v9 moveFocusTo:v21];
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
    v3 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [(SCROBrailleUIFinderApp *)self viewerView];
      v6 = [v5 focus];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
      v8 = [v7 reverseObjectEnumerator];

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v23 + 1) + 8 * v12) integerValue];
            v14 = [(SCROBrailleUIFinderApp *)self viewerView];
            v15 = [v14 value];
            v16 = [v15 length];

            if (v13 <= v16 && v13 < v6)
            {
              v21 = [(SCROBrailleUIFinderApp *)self viewerView];
              [v21 moveFocusTo:v13];

              goto LABEL_16;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v18 = [(SCROBrailleUIFinderApp *)self bookmarkLocations];
      v19 = [v18 lastObject];
      v20 = [v19 integerValue];

      v8 = [(SCROBrailleUIFinderApp *)self viewerView];
      [v8 moveFocusTo:v20];
LABEL_16:
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isViewerContextMenuOpen
{
  v2 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
  v3 = v2 != 0;

  return v3;
}

- (void)_closeViewerContextMenu
{
  v3 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
  [v3 dismiss];

  [(SCROBrailleUIFinderApp *)self setViewerContextMenuView:0];
}

- (void)_openViewerContextMenuWithFocusSearch:(BOOL)a3
{
  v3 = a3;
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
  v12 = [(SCROBrailleUIFinderApp *)self currentSearchString];
  if (v12 && (v13 = v12, v14 = [(SCROBrailleUIFinderApp *)self searchingForward], v13, v14))
  {
    v15 = [SCROBrailleUIListItem alloc];
    v16 = [(SCROBrailleUIFinderApp *)self currentSearchString];
    v17 = [(SCROBrailleUIListItem *)v15 initWithIdentifier:@"finder.viewer.context.menu.search" label:v11 prepopulatedBraille:v16];
  }

  else
  {
    v17 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"finder.viewer.context.menu.search" label:v11 isInline:1];
  }

  [v39 addObject:v17];
  v18 = SCROBrailleUILocString(@"finder.viewer.context.menu.previous.find");
  v19 = [(SCROBrailleUIFinderApp *)self currentSearchString];
  if (v19 && (v20 = v19, v21 = [(SCROBrailleUIFinderApp *)self searchingForward], v20, !v21))
  {
    v23 = [SCROBrailleUIListItem alloc];
    v24 = [(SCROBrailleUIFinderApp *)self currentSearchString];
    v22 = [(SCROBrailleUIListItem *)v23 initWithIdentifier:@"finder.viewer.context.menu.previous.search" label:v18 prepopulatedBraille:v24];
  }

  else
  {
    v22 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"finder.viewer.context.menu.previous.search" label:v18 isInline:1];
  }

  [v39 addObject:v22];
  v25 = [(SCROBrailleUIFinderApp *)self _bookmarkLocationsInCurrentLine];
  v26 = [v25 count];
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
  v31 = [(SCROBrailleUIFinderApp *)self currentSearchString];

  if (v31 || v3)
  {
    v35 = [(SCROBrailleUIFinderApp *)self currentSearchString];
    v36 = @"finder.viewer.context.menu.search";
    if (v35 && ![(SCROBrailleUIFinderApp *)self searchingForward])
    {
      v36 = @"finder.viewer.context.menu.previous.search";
    }

    v34 = v36;
  }

  else
  {
    v32 = [(SCROBrailleUIFinderApp *)self searchingForward];
    v33 = @"finder.viewer.context.menu.previous.bookmark";
    if (v32)
    {
      v33 = @"finder.viewer.context.menu.next.bookmark";
    }

    v34 = v33;
  }

  v37 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"finder.viewer.context.menu" items:v39 initialFocus:v34];

  [(SCROBrailleUIFinderApp *)self setViewerContextMenuView:v37];
  v38 = [(SCROBrailleUIFinderApp *)self viewerContextMenuView];
  [v38 display];
}

- (void)_handleReturnInViewer
{
  if ([(SCROBrailleUIFinderApp *)self _isViewing])
  {
    v3 = [(SCROBrailleUIFinderApp *)self currentSearchString];

    v4 = [(SCROBrailleUIFinderApp *)self searchingForward];
    if (v3)
    {
      v6 = [(SCROBrailleUIFinderApp *)self viewerView];
      v5 = [(SCROBrailleUIFinderApp *)self currentSearchString];
      if (v4)
      {
        [v6 handleFindForSearchBraille:v5];
      }

      else
      {
        [v6 handlePreviousFindForSearchBraille:v5];
      }
    }

    else if (v4)
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
  v2 = [(SCROBrailleUIFinderApp *)self editorView];
  v3 = v2 != 0;

  return v3;
}

- (void)_openEditorForBRF:(id)a3
{
  v12 = a3;
  if (![(SCROBrailleUIFinderApp *)self _isEditing])
  {
    if ([(SCROBrailleUIFinderApp *)self _isFileSizeAcceptableForURL:v12])
    {
      [(SCROBrailleUIFinderApp *)self setCurrentFileURL:v12];
      v4 = [(SCROBrailleUIFinderApp *)self _loadReadingCursorForCurrentFile];
      v5 = [SCROBrailleUIBRFFile alloc];
      v6 = [(SCROBrailleUIFinderApp *)self _brfContentForURL:v12];
      v7 = [(SCROBrailleUIBRFFile *)v5 initWithBRF:v6 initialLocation:v4 bookmarks:MEMORY[0x277CBEBF8]];
      [(SCROBrailleUIFinderApp *)self setBrfFile:v7];

      v8 = [(SCROBrailleUIFinderApp *)self brfFile];
      v9 = [v8 unicode];

      v10 = [[SCROBrailleUIBrailleAreaView alloc] initWithIdentifier:@"finder.editor" initialContent:v9 initialCursor:v4];
      [(SCROBrailleUIFinderApp *)self setEditorView:v10];

      v11 = [(SCROBrailleUIFinderApp *)self editorView];
      [v11 display];
    }

    else
    {
      v9 = SCROBrailleUILocString(@"finder.file.too.big");
      [(SCROBrailleUIFinderApp *)self _openAlertWithMessage:v9];
    }
  }
}

- (void)_closeEditorForBRF
{
  if ([(SCROBrailleUIFinderApp *)self _isEditing])
  {
    v3 = [(SCROBrailleUIFinderApp *)self editorView];
    v12 = [v3 value];

    v4 = [(SCROBrailleUIFinderApp *)self editorView];
    v5 = [v4 selection];
    [(SCROBrailleUIFinderApp *)self _saveReadingRange:v5, v6];

    v7 = [(SCROBrailleUIFinderApp *)self currentFileURL];
    [(SCROBrailleUIFinderApp *)self _writeUnicodeContent:v12 toURL:v7];

    v8 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
    v9 = [(SCROBrailleUIFinderApp *)self currentFileURL];
    v10 = [v9 lastPathComponent];
    [(SCROBrailleUIFinderApp *)self _openFilesListInURL:v8 withFocusAtIdentifier:v10];

    v11 = [(SCROBrailleUIFinderApp *)self editorView];
    [v11 dismiss];

    [(SCROBrailleUIFinderApp *)self setEditorView:0];
  }
}

- (BOOL)_isCreateNewMenuOpen
{
  v2 = [(SCROBrailleUIFinderApp *)self createNewMenuView];
  v3 = v2 != 0;

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

    v12 = [(SCROBrailleUIFinderApp *)self createNewMenuView];
    [v12 display];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_closeCreateNewMenu
{
  v3 = [(SCROBrailleUIFinderApp *)self createNewMenuView];
  [v3 dismiss];

  [(SCROBrailleUIFinderApp *)self setCreateNewMenuView:0];
}

- (BOOL)_isContextMenuOpen
{
  v2 = [(SCROBrailleUIFinderApp *)self contextMenuView];
  v3 = v2 != 0;

  return v3;
}

- (void)_openContextMenuForURL:(id)a3
{
  v28[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(SCROBrailleUIFinderApp *)self _isContextMenuOpen])
  {
    [(SCROBrailleUIFinderApp *)self setCurrentFileURL:v4];
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
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [v4 path];
    [v17 fileExistsAtPath:v18 isDirectory:&v26];

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

    v24 = [(SCROBrailleUIFinderApp *)self contextMenuView];
    [v24 display];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_closeContextMenu
{
  [(SCROBrailleUIFinderApp *)self setCurrentFileURL:0];
  v3 = [(SCROBrailleUIFinderApp *)self contextMenuView];
  [v3 dismiss];

  [(SCROBrailleUIFinderApp *)self setContextMenuView:0];
}

- (BOOL)_isContextMenuOptionsOpen
{
  v2 = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];
  v3 = v2 != 0;

  return v3;
}

- (void)_openContextMoveOptionsExcluding:(id)a3
{
  v12 = a3;
  if (![(SCROBrailleUIFinderApp *)self _isContextMenuOptionsOpen])
  {
    v4 = [(SCROBrailleUIFinderApp *)self currentDirectoryURL];
    v5 = [(SCROBrailleUIFinderApp *)self _fileItemsInURL:v4 directoriesOnly:1 excluding:v12];
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

    v11 = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];
    [v11 display];
  }
}

- (void)_closeContextMenuOptions
{
  v3 = [(SCROBrailleUIFinderApp *)self contextMenuOptionsView];
  [v3 dismiss];

  [(SCROBrailleUIFinderApp *)self setContextMenuOptionsView:0];
}

- (BOOL)_isShowingFindField
{
  v2 = [(SCROBrailleUIFinderApp *)self findFieldView];
  v3 = v2 != 0;

  return v3;
}

- (void)_closeFindField
{
  v3 = [(SCROBrailleUIFinderApp *)self findFieldView];
  [v3 dismiss];

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

    v9 = [(SCROBrailleUIFinderApp *)self findFieldView];
    [v9 display];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startAutoSave
{
  v3 = [(SCROBrailleUIFinderApp *)self autoSaveTimer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SCROBrailleUIFinderApp__startAutoSave__block_invoke;
  v4[3] = &unk_279B73DD0;
  v4[4] = self;
  [v3 afterDelay:v4 processBlock:5.0];
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
  v2 = [(SCROBrailleUIFinderApp *)self autoSaveTimer];
  [v2 cancel];
}

- (BOOL)_isShowingAlert
{
  v2 = [(SCROBrailleUIFinderApp *)self alertView];
  v3 = v2 != 0;

  return v3;
}

- (void)_closeAlert
{
  if ([(SCROBrailleUIFinderApp *)self _isShowingAlert])
  {
    v3 = [(SCROBrailleUIFinderApp *)self alertView];
    [v3 dismiss];

    [(SCROBrailleUIFinderApp *)self setAlertView:0];
  }
}

- (void)_openAlertWithMessage:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(SCROBrailleUIFinderApp *)self _isShowingAlert])
  {
    v5 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"finder.alert.message" label:v4 isInline:0];
    v6 = [SCROBrailleUIListView alloc];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [(SCROBrailleUIListView *)v6 initWithIdentifier:@"finder.alert" items:v7];
    [(SCROBrailleUIFinderApp *)self setAlertView:v8];

    v9 = [(SCROBrailleUIFinderApp *)self alertView];
    [v9 display];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isShowingDeleteConfirmView
{
  v2 = [(SCROBrailleUIFinderApp *)self deleteConfirmView];
  v3 = v2 != 0;

  return v3;
}

- (void)_closeDeleteConfirmView
{
  if ([(SCROBrailleUIFinderApp *)self _isShowingDeleteConfirmView])
  {
    v3 = [(SCROBrailleUIFinderApp *)self deleteConfirmView];
    [v3 dismiss];

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

    v12 = [(SCROBrailleUIFinderApp *)self deleteConfirmView];
    [v12 display];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isTitleGood:(id)a3
{
  v3 = a3;
  if (![v3 length] || objc_msgSend(v3, "length") > 0xFF || (objc_msgSend(v3, "hasPrefix:", @":") & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @".") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 containsString:@"/"] ^ 1;
  }

  return v4;
}

- (id)_secureURLWithBase:(id)a3 userInput:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v7 length] || objc_msgSend(v7, "length") >= 0x100)
  {
    v8 = _SCROD_LOG();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }

    LOWORD(v22) = 0;
    v9 = "Braille UI Finder: URL not secure; invalid length of user input";
LABEL_5:
    _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, v9, &v22, 2u);
    goto LABEL_6;
  }

  if ([(SCROBrailleUIFinderApp *)self _isPathComponentBad:v7])
  {
    v8 = _SCROD_LOG();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    LOWORD(v22) = 0;
    v9 = "Braille UI Finder: URL not secure; contains an illegal character";
    goto LABEL_5;
  }

  v8 = [v7 stringByRemovingPercentEncoding];
  if ([(SCROBrailleUIFinderApp *)self _isPathComponentBad:v8])
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
    v13 = [v6 URLByAppendingPathComponent:v8];
    v14 = [v13 URLByResolvingSymlinksInPath];
    v15 = [v14 URLByStandardizingPath];
    v16 = [v15 path];
    v17 = [v6 path];
    v18 = [v16 hasPrefix:v17];

    if (v18)
    {
      v10 = v15;
    }

    else
    {
      v19 = _SCROD_LOG();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v15 path];
        v21 = [v6 path];
        v22 = 138412546;
        v23 = v20;
        v24 = 2112;
        v25 = v21;
        _os_log_impl(&dword_26490B000, v19, OS_LOG_TYPE_DEFAULT, "Braille UI Finder: URL not secure; processed path %@ does have the %@ as a base", &v22, 0x16u);
      }

      v10 = 0;
    }
  }

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_isPathComponentBad:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@"/"] & 1) != 0 || (objc_msgSend(v3, "containsString:", @"..") & 1) != 0 || (objc_msgSend(v3, "containsString:", @":") & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @".") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"~"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsString:&stru_28763E0C8];
  }

  return v4;
}

@end