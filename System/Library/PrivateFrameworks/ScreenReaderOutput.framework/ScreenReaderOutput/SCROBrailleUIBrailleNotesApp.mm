@interface SCROBrailleUIBrailleNotesApp
- (BOOL)_isEditing;
- (BOOL)_isNoteOnlyUnicodeBraille:(id)a3;
- (BOOL)_isOpen;
- (BOOL)_isShowingAlert;
- (BOOL)_isShowingContextMenu;
- (BOOL)_isShowingContextMenuOptions;
- (BOOL)_isShowingDeleteConfirmView;
- (BOOL)_isShowingFindField;
- (SCROBrailleUIBrailleNotesApp)initWithDelegate:(id)a3;
- (id)_brailleNoteIdentifierForItemIdentifier:(id)a3;
- (id)_brailleNotesContext;
- (id)_brailleNotesFolder;
- (id)_closeEditor;
- (id)_createNoteWithContent:(id)a3;
- (id)_folderForIdentifier:(id)a3;
- (id)_itemsArrayInFolder:(id)a3;
- (id)_labelForFolder:(id)a3;
- (id)_labelForNote:(id)a3 order:(unint64_t)a4;
- (id)_labelForPinnedNote:(id)a3 order:(unint64_t)a4;
- (id)_modifyNoteWithIdentifier:(id)a3 updatedContent:(id)a4;
- (id)_noteForIdentififer:(id)a3;
- (id)_notesListViewForFolder:(id)a3 withInitialFocus:(id)a4;
- (id)_notesListViewForFolder:(id)a3 withInitialFocusedIndex:(unint64_t)a4;
- (id)_pinnedNotesInFolder:(id)a3;
- (id)_saveNoteDeletingIfEmpty:(BOOL)a3;
- (id)_sortedArrayOfNotesFor:(id)a3;
- (id)_unpinnedNotesInFolder:(id)a3;
- (id)views;
- (void)_closeAlert;
- (void)_closeContextMenu;
- (void)_closeContextMenuOptions;
- (void)_closeDeleteConfirmView;
- (void)_closeFindField;
- (void)_closeNotesList;
- (void)_deleteNote:(id)a3;
- (void)_goUpOneLevel;
- (void)_handleActionInAlert:(id)a3;
- (void)_handleActionInContextMenu:(id)a3;
- (void)_handleActionInContextMenuOptions:(id)a3;
- (void)_handleActionInDeleteConfirmView:(id)a3;
- (void)_handleActionInEditor:(id)a3;
- (void)_handleActionInFindField:(id)a3;
- (void)_handleActionInNotesList:(id)a3;
- (void)_openAlertWithMessage:(id)a3;
- (void)_openContextMenuForCreateNote;
- (void)_openContextMenuForFolder:(id)a3;
- (void)_openContextMenuForNote:(id)a3;
- (void)_openContextMenuOptionsForIdentifier:(id)a3;
- (void)_openDeleteConfirmView;
- (void)_openEditorWithIdentifier:(id)a3 initialContent:(id)a4 initialCursor:(int64_t)a5;
- (void)_openFindField;
- (void)_openNotesListInFolder:(id)a3;
- (void)_refreshNotesListViewsWithFocus:(id)a3;
- (void)_refreshNotesListViewsWithFocusedIndex:(unint64_t)a3;
- (void)_startAutoSave;
- (void)_stopAutoSave;
- (void)close;
- (void)handleAction:(id)a3;
- (void)open;
@end

@implementation SCROBrailleUIBrailleNotesApp

- (SCROBrailleUIBrailleNotesApp)initWithDelegate:(id)a3
{
  v9.receiver = self;
  v9.super_class = SCROBrailleUIBrailleNotesApp;
  v3 = [(SCROBrailleUIApp *)&v9 initWithDelegate:a3];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.scrod.braille.ui.braille.notes", 0);
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
  if (![(SCROBrailleUIBrailleNotesApp *)self _isOpen])
  {
    v3 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesFolder];
    if (v3)
    {
      [(SCROBrailleUIBrailleNotesApp *)self setOpenFolder:v3];
      v4 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
      v5 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:v4 withInitialFocus:0];
      [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v5];

      v6 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
      [v6 display];

      v10 = self;
      v7 = &v10;
    }

    else
    {
      v8 = _SCROD_LOG();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch the Braille Notes root folder.", buf, 2u);
      }

      v9 = SCROBrailleUILocString(@"braille.notes.failed.to.open.message");
      [(SCROBrailleUIBrailleNotesApp *)self _openAlertWithMessage:v9];

      v11.receiver = self;
      v7 = &v11;
    }

    v7->super_class = SCROBrailleUIBrailleNotesApp;
    [(objc_super *)v7 open];
  }
}

- (void)close
{
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingAlert])
  {
    [(SCROBrailleUIBrailleNotesApp *)self _closeAlert];
  }

  if ([(SCROBrailleUIBrailleNotesApp *)self _isEditing])
  {
    v3 = [(SCROBrailleUIBrailleNotesApp *)self _closeEditor];
  }

  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenu])
  {
    [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenu];
  }

  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingFindField])
  {
    [(SCROBrailleUIBrailleNotesApp *)self _closeFindField];
  }

  if ([(SCROBrailleUIBrailleNotesApp *)self _isOpen])
  {
    [(SCROBrailleUIBrailleNotesApp *)self _closeNotesList];
  }

  v4.receiver = self;
  v4.super_class = SCROBrailleUIBrailleNotesApp;
  [(SCROBrailleUIApp *)&v4 close];
}

- (id)views
{
  v3 = objc_opt_new();
  v4 = [(SCROBrailleUIBrailleNotesApp *)self editorView];

  if (v4)
  {
    v5 = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    [v3 addObject:v5];
  }

  v6 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];

  if (v6)
  {
    v7 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
    [v3 addObject:v7];
  }

  v8 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];

  if (v8)
  {
    v9 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
    [v3 addObject:v9];
  }

  v10 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuOptionsView];

  if (v10)
  {
    v11 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuOptionsView];
    [v3 addObject:v11];
  }

  v12 = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];

  if (v12)
  {
    v13 = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
    [v3 addObject:v13];
  }

  v14 = [(SCROBrailleUIBrailleNotesApp *)self alertView];

  if (v14)
  {
    v15 = [(SCROBrailleUIBrailleNotesApp *)self alertView];
    [v3 addObject:v15];
  }

  return v3;
}

- (void)handleAction:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isOpen])
  {
    if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingAlert])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInAlert:v4];
    }

    else if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingDeleteConfirmView])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInDeleteConfirmView:v4];
    }

    else if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenuOptions])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInContextMenuOptions:v4];
    }

    else if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenu])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInContextMenu:v4];
    }

    else if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingFindField])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInFindField:v4];
    }

    else if ([(SCROBrailleUIBrailleNotesApp *)self _isEditing])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInEditor:v4];
    }

    else
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInNotesList:v4];
    }
  }
}

- (void)_handleActionInNotesList:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isOpen])
  {
    v5 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
    v6 = [v5 focusedItem];
    v7 = [v6 identifier];

    ICFolderClass = getICFolderClass();
    v9 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
    v10 = [(objc_class *)ICFolderClass folderWithIdentifier:v7 context:v9];

    v11 = [v4 type];
    switch(v11)
    {
      case 4:
        if (([v7 isEqualToString:@"create.note"] & 1) == 0)
        {
          if (v10)
          {
            [(SCROBrailleUIBrailleNotesApp *)self _openContextMenuForFolder:v7];
          }

          else
          {
            [(SCROBrailleUIBrailleNotesApp *)self _openContextMenuForNote:v7];
          }
        }

        goto LABEL_22;
      case 2:
        v12 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
        v13 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesFolder];

        if (v12 != v13)
        {
          [(SCROBrailleUIBrailleNotesApp *)self _goUpOneLevel];
LABEL_22:

          goto LABEL_23;
        }

        break;
      case 1:
        if ([v7 isEqualToString:@"create.note"])
        {
          [(SCROBrailleUIBrailleNotesApp *)self _openContextMenuForCreateNote];
        }

        else if (v10)
        {
          [(SCROBrailleUIBrailleNotesApp *)self _openNotesListInFolder:v10];
        }

        else
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"braille.notes.edit.note.", v7];
          v15 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:v7];
          v16 = [v15 mergeableString];
          v17 = [v16 attributedString];
          v18 = [v17 string];

          v19 = [v18 length];
          v20 = +[SCROBrailleUIPersistenceManager sharedInstance];
          v21 = [v20 getValueForKey:v7 cache:@"BrailleNotes"];

          if (v21)
          {
            v22 = [v21 range];
            v19 = v22 + v23;
            if (v22 + v23 < 0)
            {
              v19 = 0;
            }

            else if (v19 > [v18 length])
            {
              v19 = [v18 length];
            }
          }

          [(SCROBrailleUIBrailleNotesApp *)self _openEditorWithIdentifier:v14 initialContent:v18 initialCursor:v19];
        }

        goto LABEL_22;
    }

    v24.receiver = self;
    v24.super_class = SCROBrailleUIBrailleNotesApp;
    [(SCROBrailleUIApp *)&v24 handleAction:v4];
    goto LABEL_22;
  }

LABEL_23:
}

- (void)_handleActionInAlert:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingAlert])
  {
    v5 = [v4 type];
    if (v5 <= 4 && ((1 << v5) & 0x16) != 0)
    {
      [(SCROBrailleUIBrailleNotesApp *)self close];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v6 handleAction:v4];
    }
  }
}

- (void)_handleActionInEditor:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isEditing])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      v6 = [(SCROBrailleUIBrailleNotesApp *)self _closeEditor];
      v7 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
      v8 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
      if (v6)
      {
        v9 = [v6 identifier];
        v10 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:v8 withInitialFocus:v9];
        [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v10];
      }

      else
      {
        v9 = -[SCROBrailleUIBrailleNotesApp _notesListViewForFolder:withInitialFocusedIndex:](self, "_notesListViewForFolder:withInitialFocusedIndex:", v8, [v7 focusedIndex]);
        [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v9];
      }

      v11 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
      [v11 display];

      [v7 dismiss];
    }

    else if (v5 == 5)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _openFindField];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v12 handleAction:v4];
    }
  }
}

- (void)_handleActionInContextMenu:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenu])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenu];
    }

    else
    {
      if (v5 == 1)
      {
        v6 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
        v7 = [v6 focusedItem];
        v8 = [v7 identifier];

        v9 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
        v10 = [v9 focusedItem];
        v11 = [v10 identifier];

        v12 = [(SCROBrailleUIBrailleNotesApp *)self _folderForIdentifier:v11];
        v13 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:v11];
        if ([v11 isEqualToString:@"create.note"])
        {
          if ([v8 isEqualToString:@"braille.notes.context.menu.create.note"])
          {
            v14 = [(SCROBrailleUIBrailleNotesApp *)self _createNoteWithContent:&stru_28763D5C8];
            v15 = v14;
            if (v14)
            {
              v16 = MEMORY[0x277CCACA8];
              v17 = [v14 identifier];
              v18 = [v16 stringWithFormat:@"%@%@", @"braille.notes.edit.note.", v17];

              [(SCROBrailleUIBrailleNotesApp *)self _openEditorWithIdentifier:v18 initialContent:&stru_28763D5C8 initialCursor:0];
LABEL_23:

              goto LABEL_24;
            }

            goto LABEL_24;
          }

          if ([v8 isEqualToString:@"braille.notes.context.menu.create.folder"])
          {
            v19 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
            v15 = [v19 value];

            if ([v15 length])
            {
              ICFolderClass = getICFolderClass();
              v21 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
              v18 = [(objc_class *)ICFolderClass newFolderInParentFolder:v21];

              if (v18)
              {
                [v18 setTitle:v15];
                v22 = [v18 identifier];
                [(SCROBrailleUIBrailleNotesApp *)self _refreshNotesListViewsWithFocus:v22];
              }

              goto LABEL_23;
            }

LABEL_24:
          }
        }

        else
        {
          if ([v8 isEqualToString:@"braille.notes.context.menu.delete"])
          {
            [(SCROBrailleUIBrailleNotesApp *)self _openDeleteConfirmView];
LABEL_26:

            goto LABEL_27;
          }

          if ([v8 isEqualToString:@"braille.notes.context.menu.move"])
          {
            [(SCROBrailleUIBrailleNotesApp *)self _openContextMenuOptionsForIdentifier:v11];
          }

          else
          {
            if (![v8 isEqualToString:@"braille.notes.context.menu.rename"])
            {
              if ([v8 isEqualToString:@"braille.notes.context.menu.pin"])
              {
                v25 = v13;
                v26 = 1;
              }

              else
              {
                if (![v8 isEqualToString:@"braille.notes.context.menu.unpin"])
                {
                  goto LABEL_25;
                }

                v25 = v13;
                v26 = 0;
              }

              [v25 setIsPinned:v26];
              v27 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
              [v27 ic_save];

              [(SCROBrailleUIBrailleNotesApp *)self _refreshNotesListViewsWithFocus:v11];
              goto LABEL_25;
            }

            if (v12)
            {
              v23 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
              v15 = [v23 value];

              if ([v15 length])
              {
                [v12 setTitle:v15];
                v24 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
                [v24 ic_save];
              }

              v18 = [v12 identifier];
              [(SCROBrailleUIBrailleNotesApp *)self _refreshNotesListViewsWithFocus:v18];
              goto LABEL_23;
            }
          }
        }

LABEL_25:
        [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenu];
        goto LABEL_26;
      }

      v28.receiver = self;
      v28.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v28 handleAction:v4];
    }
  }

LABEL_27:
}

- (void)_refreshNotesListViewsWithFocusedIndex:(unint64_t)a3
{
  v8 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  v5 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
  v6 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:v5 withInitialFocusedIndex:a3];
  [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v6];

  v7 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  [v7 display];

  [v8 dismiss];
}

- (void)_refreshNotesListViewsWithFocus:(id)a3
{
  v4 = a3;
  v8 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  v5 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
  v6 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:v5 withInitialFocus:v4];

  [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v6];
  v7 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  [v7 display];

  [v8 dismiss];
}

- (void)_handleActionInContextMenuOptions:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenuOptions])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenuOptions];
    }

    else
    {
      if (v5 == 1)
      {
        v6 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuOptionsView];
        v7 = [v6 focusedItem];
        v8 = [v7 identifier];

        v9 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
        v10 = [v9 focusedItem];
        v11 = [v10 identifier];

        v12 = [(SCROBrailleUIBrailleNotesApp *)self _folderForIdentifier:v11];
        v13 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:v11];
        if ([v8 isEqualToString:@"braille.notes.context.menu.move.up.one.level"])
        {
          v14 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
          v15 = [v14 parent];

          if (!v15)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v15 = [(SCROBrailleUIBrailleNotesApp *)self _folderForIdentifier:v8];
          if (!v15)
          {
LABEL_15:

            goto LABEL_16;
          }
        }

        if (v12)
        {
          [v12 setParent:v15];
        }

        else if (v13)
        {
          [v13 setFolder:v15];
        }

        v16 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
        [v16 ic_save];

        [(SCROBrailleUIBrailleNotesApp *)self _openNotesListInFolder:v15];
        [(SCROBrailleUIBrailleNotesApp *)self _refreshNotesListViewsWithFocus:v11];
        [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenuOptions];
        [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenu];
        goto LABEL_15;
      }

      v17.receiver = self;
      v17.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v17 handleAction:v4];
    }
  }

LABEL_16:
}

- (void)_handleActionInFindField:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingFindField])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _closeFindField];
    }

    else if (v5 == 1)
    {
      v6 = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
      v7 = [v6 focusedItem];
      v8 = [v7 identifier];

      if ([v8 isEqualToString:@"braille.notes.find.field.enter.search.text"])
      {
        v9 = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
        v10 = [v9 value];

        [(SCROBrailleUIBrailleNotesApp *)self _closeFindField];
        v11 = [(SCROBrailleUIBrailleNotesApp *)self editorView];
        [v11 handleFindForSearchBraille:v10];
      }
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v12 handleAction:v4];
    }
  }
}

- (void)_handleActionInDeleteConfirmView:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingDeleteConfirmView])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _closeDeleteConfirmView];
    }

    else if (v5 == 1)
    {
      v6 = [(SCROBrailleUIBrailleNotesApp *)self deleteConfirmView];
      v7 = [v6 focusedItem];
      v8 = [v7 identifier];

      if ([v8 isEqualToString:@"braille.notes.delete.confirm.delete"])
      {
        v9 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
        v10 = [v9 focusedItem];
        v11 = [v10 identifier];

        v12 = [(SCROBrailleUIBrailleNotesApp *)self _folderForIdentifier:v11];
        v13 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:v11];
        if (v12)
        {
          if ([v12 isDeletable] && (objc_msgSend(v12, "markedForDeletion") & 1) == 0)
          {
            [(objc_class *)getICFolderClass() deleteFolder:v12];
            v14 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
            [v14 ic_save];
          }
        }

        else
        {
          [(SCROBrailleUIBrailleNotesApp *)self _deleteNote:v13];
        }

        v15 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
        -[SCROBrailleUIBrailleNotesApp _refreshNotesListViewsWithFocusedIndex:](self, "_refreshNotesListViewsWithFocusedIndex:", [v15 focusedIndex]);

        [(SCROBrailleUIBrailleNotesApp *)self _closeDeleteConfirmView];
        [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenu];
      }
    }

    else
    {
      v16.receiver = self;
      v16.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v16 handleAction:v4];
    }
  }
}

- (BOOL)_isOpen
{
  v3 = [(SCROBrailleUIBrailleNotesApp *)self alertView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)_closeNotesList
{
  v3 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  [v3 dismiss];

  [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:0];
}

- (void)_openNotesListInFolder:(id)a3
{
  v4 = a3;
  v7 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  [(SCROBrailleUIBrailleNotesApp *)self setOpenFolder:v4];
  v5 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:v4 withInitialFocus:0];

  [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v5];
  v6 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  [v6 display];

  [v7 dismiss];
}

- (void)_goUpOneLevel
{
  v3 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];

  if (v3)
  {
    v4 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
    v5 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesFolder];

    if (v4 == v5)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _closeNotesList];
    }

    v13 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
    v6 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
    v7 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
    v8 = [v7 parent];
    [(SCROBrailleUIBrailleNotesApp *)self setOpenFolder:v8];

    v9 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
    v10 = [v6 identifier];
    v11 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:v9 withInitialFocus:v10];
    [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v11];

    v12 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
    [v12 display];

    [v13 dismiss];
  }
}

- (BOOL)_isEditing
{
  v2 = [(SCROBrailleUIBrailleNotesApp *)self editorView];
  v3 = v2 != 0;

  return v3;
}

- (void)_openEditorWithIdentifier:(id)a3 initialContent:(id)a4 initialCursor:(int64_t)a5
{
  v11 = a3;
  v8 = a4;
  if (![(SCROBrailleUIBrailleNotesApp *)self _isEditing])
  {
    [(SCROBrailleUIBrailleNotesApp *)self setInitialContent:v8];
    v9 = [[SCROBrailleUIBrailleAreaView alloc] initWithIdentifier:v11 initialContent:v8 initialCursor:a5];
    [(SCROBrailleUIBrailleNotesApp *)self setEditorView:v9];

    v10 = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    [v10 display];

    [(SCROBrailleUIBrailleNotesApp *)self _startAutoSave];
  }
}

- (id)_closeEditor
{
  if ([(SCROBrailleUIBrailleNotesApp *)self _isEditing])
  {
    [(SCROBrailleUIBrailleNotesApp *)self _stopAutoSave];
    v3 = [(SCROBrailleUIBrailleNotesApp *)self _saveNoteDeletingIfEmpty:1];
    v4 = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    [v4 dismiss];

    [(SCROBrailleUIBrailleNotesApp *)self setEditorView:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_saveNoteDeletingIfEmpty:(BOOL)a3
{
  v3 = a3;
  if (+[SCROBrailleUIApp isHidingViews](SCROBrailleUIApp, "isHidingViews") || ![(SCROBrailleUIBrailleNotesApp *)self _isEditing]|| +[SCROBrailleUIApp isUnitTesting])
  {
    v5 = 0;
  }

  else
  {
    v7 = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    v8 = [v7 identifier];
    v9 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNoteIdentifierForItemIdentifier:v8];

    v10 = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    v11 = [v10 value];

    if (v3 && ![v11 length])
    {
      v12 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:v9];
      [(SCROBrailleUIBrailleNotesApp *)self _deleteNote:v12];

      v5 = 0;
    }

    else
    {
      v5 = [(SCROBrailleUIBrailleNotesApp *)self _modifyNoteWithIdentifier:v9 updatedContent:v11];
    }
  }

  return v5;
}

- (id)_itemsArrayInFolder:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [SCROBrailleUIListItem alloc];
  v7 = SCROBrailleUILocString(@"braille.notes.create");
  v8 = [(SCROBrailleUIListItem *)v6 initWithIdentifier:@"create.note" label:v7 isInline:0];

  [v5 addObject:v8];
  if (!+[SCROBrailleUIApp isUnitTesting])
  {
    v42 = v8;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = [v4 visibleSubFolders];
    v10 = [v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v53;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v53 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v52 + 1) + 8 * i);
          v15 = [SCROBrailleUIListItem alloc];
          v16 = [v14 identifier];
          v17 = [(SCROBrailleUIBrailleNotesApp *)self _labelForFolder:v14];
          v18 = [(SCROBrailleUIListItem *)v15 initWithIdentifier:v16 brailleLabel:v17 isInline:0];

          [v5 addObject:v18];
        }

        v11 = [v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v11);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v43 = v4;
    v19 = [(SCROBrailleUIBrailleNotesApp *)self _pinnedNotesInFolder:v4];
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      v23 = 1;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v48 + 1) + 8 * j);
          v26 = [SCROBrailleUIListItem alloc];
          v27 = [v25 identifier];
          v28 = [(SCROBrailleUIBrailleNotesApp *)self _labelForPinnedNote:v25 order:v23];
          v29 = [(SCROBrailleUIListItem *)v26 initWithIdentifier:v27 brailleLabel:v28 isInline:0 shouldTruncateAtPanBoundary:1];

          [v5 addObject:v29];
          ++v23;
        }

        v21 = [v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v21);
    }

    else
    {
      v23 = 1;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = [(SCROBrailleUIBrailleNotesApp *)self _unpinnedNotesInFolder:v43];
    v31 = [v30 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v45;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v45 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v44 + 1) + 8 * k);
          v36 = [SCROBrailleUIListItem alloc];
          v37 = [v35 identifier];
          v38 = [(SCROBrailleUIBrailleNotesApp *)self _labelForNote:v35 order:v23];
          v39 = [(SCROBrailleUIListItem *)v36 initWithIdentifier:v37 brailleLabel:v38 isInline:0 shouldTruncateAtPanBoundary:1];

          [v5 addObject:v39];
          ++v23;
        }

        v32 = [v30 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v32);
    }

    v8 = v42;
    v4 = v43;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_notesListViewForFolder:(id)a3 withInitialFocusedIndex:(unint64_t)a4
{
  v5 = [(SCROBrailleUIBrailleNotesApp *)self _itemsArrayInFolder:a3];
  v6 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"braille.notes" items:v5 initialFocusedIndex:a4];

  return v6;
}

- (id)_notesListViewForFolder:(id)a3 withInitialFocus:(id)a4
{
  v6 = a4;
  v7 = [(SCROBrailleUIBrailleNotesApp *)self _itemsArrayInFolder:a3];
  v8 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"braille.notes" items:v7 initialFocus:v6];

  return v8;
}

- (id)_brailleNoteIdentifierForItemIdentifier:(id)a3
{
  v3 = a3;
  v4 = [@"braille.notes.edit.note." length];
  v5 = [v3 substringWithRange:{v4, objc_msgSend(v3, "length") - v4}];

  return v5;
}

- (id)_modifyNoteWithIdentifier:(id)a3 updatedContent:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v8 = [(SCROBrailleUIBrailleNotesApp *)self initialContent];
    v9 = [v8 isEqualToString:v7];

    v35 = v9 ^ 1;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__2;
    v32 = __Block_byref_object_dispose__2;
    v33 = 0;
    v10 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__SCROBrailleUIBrailleNotesApp__modifyNoteWithIdentifier_updatedContent___block_invoke;
    v23[3] = &unk_279B74750;
    v26 = &v28;
    v23[4] = self;
    v11 = v6;
    v24 = v11;
    v27 = v34;
    v25 = v7;
    [v10 performBlockAndWait:v23];

    v12 = _SCROD_LOG();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v29[5] identifier];
      *buf = 138412290;
      v37 = v13;
      _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_DEFAULT, "Braille Notes: modified the note with id %@", buf, 0xCu);
    }

    v14 = MEMORY[0x277CBEA90];
    v15 = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    v16 = [v15 selection];
    v18 = [v14 dataWithRange:{v16, v17}];

    v19 = +[SCROBrailleUIPersistenceManager sharedInstance];
    [v19 setValue:v18 forKey:v11 cache:@"BrailleNotes" maxRecordCount:100];

    v20 = v29[5];
    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(v34, 8);
  }

  else
  {
    v20 = [(SCROBrailleUIBrailleNotesApp *)self _createNoteWithContent:v7];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __73__SCROBrailleUIBrailleNotesApp__modifyNoteWithIdentifier_updatedContent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _noteForIdentififer:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v7 = [*(*(*(a1 + 56) + 8) + 40) mergeableString];
    [v7 replaceCharactersInRange:0 withString:{objc_msgSend(v7, "length"), *(a1 + 48)}];
    v5 = [MEMORY[0x277CBEAA8] now];
    [*(*(*(a1 + 56) + 8) + 40) setModificationDate:v5];

    v6 = [*(a1 + 32) _brailleNotesContext];
    [v6 ic_save];
  }
}

- (id)_createNoteWithContent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
  if (v5)
  {
    v6 = [(objc_class *)getICNoteClass() newEmptyNoteInFolder:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 mergeableString];
      [v8 insertString:v4 atIndex:0];

      v9 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
      [v9 ic_save];

      v10 = _SCROD_LOG();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v7 identifier];
        v16 = 138412290;
        v17 = v11;
        _os_log_impl(&dword_26490B000, v10, OS_LOG_TYPE_DEFAULT, "Braille Notes: created note with id %@", &v16, 0xCu);
      }

      v7 = v7;
      v12 = v7;
    }

    else
    {
      v13 = _SCROD_LOG();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "Braille Notes: creation failed due to new note being nil", &v16, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v7 = _SCROD_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEFAULT, "Braille Notes: creation failed due to open folder being nil", &v16, 2u);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_pinnedNotesInFolder:(id)a3
{
  if (a3)
  {
    v4 = [a3 notes];
    v5 = [(objc_class *)getICNoteClass() predicateForPinnedNotes];
    v6 = [v4 filteredSetUsingPredicate:v5];

    v7 = [(SCROBrailleUIBrailleNotesApp *)self _sortedArrayOfNotesFor:v6];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)_unpinnedNotesInFolder:(id)a3
{
  if (a3)
  {
    v4 = [a3 notes];
    v5 = [v4 ax_filteredSetUsingBlock:&__block_literal_global_7];

    v6 = [(SCROBrailleUIBrailleNotesApp *)self _sortedArrayOfNotesFor:v5];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)_sortedArrayOfNotesFor:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SCROBrailleUISettingsManager sharedInstance];
  v6 = [v5 brailleNotesSortType] == 1;
  v7 = [v5 brailleNotesSortDirection] == 0;
  v8 = [(objc_class *)getICCloudSyncingObjectClass() predicateForVisibleObjects];
  v9 = [v4 filteredSetUsingPredicate:v8];
  v10 = [(objc_class *)getICNoteListSortUtilitiesClass() sortDescriptorsForType:v6 ascending:v7];
  v11 = [v9 sortedArrayUsingDescriptors:v10];

  v12 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if ([(SCROBrailleUIBrailleNotesApp *)self _isNoteOnlyUnicodeBraille:v18, v21])
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_brailleNotesContext
{
  if (([(objc_class *)getICNoteContextClass() hasSharedContext]& 1) == 0)
  {
    [(objc_class *)getICNoteContextClass() startSharedContextWithOptions:2048];
  }

  v2 = [(objc_class *)getICNoteContextClass() sharedContext];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (id)_brailleNotesFolder
{
  v2 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
  v3 = [(objc_class *)getICAccountClass() defaultAccountInContext:v2];
  if (v3)
  {
    v4 = [(objc_class *)getICFolderClass() folderWithIdentifier:@"⠃⠗⠇" context:v2];
    if (!v4)
    {
      v4 = [(objc_class *)getICFolderClass() newFolderWithIdentifier:@"⠃⠗⠇" account:v3];
      v5 = SCROBrailleUILocString(@"braille.notes.folder.title");
      [v4 setTitle:v5];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_folderForIdentifier:(id)a3
{
  v4 = getICFolderClass;
  v5 = a3;
  v6 = v4();
  v7 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
  v8 = [(objc_class *)v6 folderWithIdentifier:v5 context:v7];

  return v8;
}

- (id)_noteForIdentififer:(id)a3
{
  v4 = getICNoteClass;
  v5 = a3;
  v6 = v4();
  v7 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
  v8 = [(objc_class *)v6 noteWithIdentifier:v5 context:v7];

  return v8;
}

- (id)_labelForNote:(id)a3 order:(unint64_t)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%lu", a4];
  v8 = +[SCROBrailleTranslationManager sharedManager];
  v9 = [v8 printBrailleForText:v7 language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];

  v10 = MEMORY[0x277CCACA8];
  v11 = [v6 mergeableString];

  v12 = [v11 attributedString];
  v13 = [v12 string];
  v14 = [v10 stringWithFormat:@"%@⠀%@", v9, v13];

  v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\n"];
  v16 = [v14 rangeOfCharacterFromSet:v15];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v14;
  }

  else
  {
    v17 = [v14 substringWithRange:{0, v16}];
  }

  v18 = v17;

  return v18;
}

- (id)_labelForPinnedNote:(id)a3 order:(unint64_t)a4
{
  v4 = [(SCROBrailleUIBrailleNotesApp *)self _labelForNote:a3 order:a4];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"⠏", v4];

  return v5;
}

- (id)_labelForFolder:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 title];
  v5 = [v3 stringWithFormat:@"%@⠀%@", @"⠋", v4];

  return v5;
}

- (BOOL)_isNoteOnlyUnicodeBraille:(id)a3
{
  v3 = [a3 mergeableString];
  v4 = [v3 attributedString];
  v5 = [v4 string];

  if ([v5 length])
  {
    v6 = 0;
    do
    {
      v7 = [v5 characterAtIndex:v6];
      v8 = v7 == 10 || (v7 & 0xFF00) == 10240;
      v9 = v8;
      if (!v8)
      {
        break;
      }

      ++v6;
    }

    while (v6 < [v5 length]);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_deleteNote:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _SCROD_LOG();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "Braille Notes: deleting note with id %@", &v11, 0xCu);
  }

  if ([v4 isDeletable] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
  {
    v7 = [v4 isEmpty];
    ICNoteClass = getICNoteClass();
    if (v7)
    {
      [(objc_class *)ICNoteClass deleteEmptyNote:v4];
    }

    else
    {
      [(objc_class *)ICNoteClass deleteNote:v4];
    }

    v9 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
    [v9 ic_save];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isShowingContextMenu
{
  v2 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
  v3 = v2 != 0;

  return v3;
}

- (void)_closeContextMenu
{
  v3 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
  [v3 dismiss];

  [(SCROBrailleUIBrailleNotesApp *)self setContextMenuView:0];
}

- (void)_openContextMenuForCreateNote
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenu])
  {
    v3 = [SCROBrailleUIListItem alloc];
    v4 = SCROBrailleUILocString(@"braille.notes.context.menu.create.note");
    v5 = [(SCROBrailleUIListItem *)v3 initWithIdentifier:@"braille.notes.context.menu.create.note" label:v4 isInline:0];

    v6 = [SCROBrailleUIListItem alloc];
    v7 = SCROBrailleUILocString(@"braille.notes.context.menu.create.folder");
    v8 = [(SCROBrailleUIListItem *)v6 initWithIdentifier:@"braille.notes.context.menu.create.folder" label:v7 isInline:1];

    v9 = [SCROBrailleUIListView alloc];
    v14[0] = v5;
    v14[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v11 = [(SCROBrailleUIListView *)v9 initWithIdentifier:@"braille.notes.context.menu" items:v10];
    [(SCROBrailleUIBrailleNotesApp *)self setContextMenuView:v11];

    v12 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
    [v12 display];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_openContextMenuForFolder:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenu])
  {
    v4 = [SCROBrailleUIListItem alloc];
    v5 = SCROBrailleUILocString(@"braille.notes.context.menu.delete.label");
    v6 = [(SCROBrailleUIListItem *)v4 initWithIdentifier:@"braille.notes.context.menu.delete" label:v5 isInline:0];

    v7 = [SCROBrailleUIListItem alloc];
    v8 = SCROBrailleUILocString(@"braille.notes.context.menu.move.label");
    v9 = [(SCROBrailleUIListItem *)v7 initWithIdentifier:@"braille.notes.context.menu.move" label:v8 isInline:0];

    v10 = [SCROBrailleUIListItem alloc];
    v11 = SCROBrailleUILocString(@"braille.notes.context.menu.rename.label");
    v12 = [(SCROBrailleUIListItem *)v10 initWithIdentifier:@"braille.notes.context.menu.rename" label:v11 isInline:1];

    v13 = [SCROBrailleUIListView alloc];
    v18[0] = v9;
    v18[1] = v6;
    v18[2] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    v15 = [(SCROBrailleUIListView *)v13 initWithIdentifier:@"braille.notes.context.menu" items:v14];
    [(SCROBrailleUIBrailleNotesApp *)self setContextMenuView:v15];

    v16 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
    [v16 display];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_openContextMenuForNote:(id)a3
{
  v27[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenu])
  {
    v5 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:v4];
    if (!v5)
    {
LABEL_10:

      goto LABEL_11;
    }

    v6 = [SCROBrailleUIListItem alloc];
    v7 = SCROBrailleUILocString(@"braille.notes.context.menu.delete.label");
    v8 = [(SCROBrailleUIListItem *)v6 initWithIdentifier:@"braille.notes.context.menu.delete" label:v7 isInline:0];

    v9 = [SCROBrailleUIListItem alloc];
    v10 = SCROBrailleUILocString(@"braille.notes.context.menu.move.label");
    v11 = [(SCROBrailleUIListItem *)v9 initWithIdentifier:@"braille.notes.context.menu.move" label:v10 isInline:0];

    if ([v5 isPinned])
    {
      v12 = [SCROBrailleUIListItem alloc];
      v13 = SCROBrailleUILocString(@"braille.notes.context.menu.unpin.label");
      v14 = [(SCROBrailleUIListItem *)v12 initWithIdentifier:@"braille.notes.context.menu.unpin" label:v13 isInline:0];

      v15 = [SCROBrailleUIListView alloc];
      v27[0] = v11;
      v27[1] = v8;
      v27[2] = v14;
      v16 = MEMORY[0x277CBEA60];
      v17 = v27;
    }

    else
    {
      if (![v5 isPinnable])
      {
        v22 = [SCROBrailleUIListView alloc];
        v25[0] = v11;
        v25[1] = v8;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
        v20 = [(SCROBrailleUIListView *)v22 initWithIdentifier:@"braille.notes.context.menu" items:v14];
        [(SCROBrailleUIBrailleNotesApp *)self setContextMenuView:v20];
        goto LABEL_9;
      }

      v18 = [SCROBrailleUIListItem alloc];
      v19 = SCROBrailleUILocString(@"braille.notes.context.menu.pin.label");
      v14 = [(SCROBrailleUIListItem *)v18 initWithIdentifier:@"braille.notes.context.menu.pin" label:v19 isInline:0];

      v15 = [SCROBrailleUIListView alloc];
      v26[0] = v11;
      v26[1] = v8;
      v26[2] = v14;
      v16 = MEMORY[0x277CBEA60];
      v17 = v26;
    }

    v20 = [v16 arrayWithObjects:v17 count:3];
    v21 = [(SCROBrailleUIListView *)v15 initWithIdentifier:@"braille.notes.context.menu" items:v20];
    [(SCROBrailleUIBrailleNotesApp *)self setContextMenuView:v21];

LABEL_9:
    v23 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
    [v23 display];

    goto LABEL_10;
  }

LABEL_11:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isShowingContextMenuOptions
{
  v2 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuOptionsView];
  v3 = v2 != 0;

  return v3;
}

- (void)_closeContextMenuOptions
{
  v3 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuOptionsView];
  [v3 dismiss];

  [(SCROBrailleUIBrailleNotesApp *)self setContextMenuOptionsView:0];
}

- (void)_openContextMenuOptionsForIdentifier:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = self;
  v6 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
  v7 = [v6 visibleSubFolders];

  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [v4 isEqualToString:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [SCROBrailleUIListItem alloc];
          v16 = [v12 identifier];
          v17 = [v12 title];
          v18 = [(SCROBrailleUIListItem *)v15 initWithIdentifier:v16 brailleLabel:v17 isInline:0];

          [v5 addObject:v18];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  v19 = [(SCROBrailleUIBrailleNotesApp *)v28 openFolder];
  v20 = [(SCROBrailleUIBrailleNotesApp *)v28 _brailleNotesFolder];
  v21 = [v19 isEqual:v20];

  if ((v21 & 1) == 0)
  {
    v22 = [SCROBrailleUIListItem alloc];
    v23 = SCROBrailleUILocString(@"braille.notes.context.menu.move.up.one.level.label");
    v24 = [(SCROBrailleUIListItem *)v22 initWithIdentifier:@"braille.notes.context.menu.move.up.one.level" label:v23 isInline:0];

    [v5 addObject:v24];
  }

  v25 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"braille.notes.context.menu.options" items:v5];
  [(SCROBrailleUIBrailleNotesApp *)v28 setContextMenuOptionsView:v25];

  v26 = [(SCROBrailleUIBrailleNotesApp *)v28 contextMenuOptionsView];
  [v26 display];

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isShowingFindField
{
  v2 = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
  v3 = v2 != 0;

  return v3;
}

- (void)_closeFindField
{
  v3 = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
  [v3 dismiss];

  [(SCROBrailleUIBrailleNotesApp *)self setFindFieldView:0];
}

- (void)_openFindField
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIBrailleNotesApp *)self _isShowingFindField])
  {
    v3 = [SCROBrailleUIListItem alloc];
    v4 = SCROBrailleUILocString(@"braille.notes.find.field.enter.search.text");
    v5 = [(SCROBrailleUIListItem *)v3 initWithIdentifier:@"braille.notes.find.field.enter.search.text" label:v4 isInline:1];

    v6 = [SCROBrailleUIListView alloc];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [(SCROBrailleUIListView *)v6 initWithIdentifier:@"braille.notes.find.field" items:v7];
    [(SCROBrailleUIBrailleNotesApp *)self setFindFieldView:v8];

    v9 = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
    [v9 display];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startAutoSave
{
  v3 = [(SCROBrailleUIBrailleNotesApp *)self autoSaveTimer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SCROBrailleUIBrailleNotesApp__startAutoSave__block_invoke;
  v4[3] = &unk_279B73DD0;
  v4[4] = self;
  [v3 afterDelay:v4 processBlock:5.0];
}

uint64_t __46__SCROBrailleUIBrailleNotesApp__startAutoSave__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isEditing];
  if (result)
  {
    v3 = [*(a1 + 32) _saveNote];
    v4 = *(a1 + 32);

    return [v4 _startAutoSave];
  }

  return result;
}

- (void)_stopAutoSave
{
  v2 = [(SCROBrailleUIBrailleNotesApp *)self autoSaveTimer];
  [v2 cancel];
}

- (BOOL)_isShowingAlert
{
  v2 = [(SCROBrailleUIBrailleNotesApp *)self alertView];
  v3 = v2 != 0;

  return v3;
}

- (void)_closeAlert
{
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingAlert])
  {
    v3 = [(SCROBrailleUIBrailleNotesApp *)self alertView];
    [v3 dismiss];

    [(SCROBrailleUIBrailleNotesApp *)self setAlertView:0];
  }
}

- (void)_openAlertWithMessage:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(SCROBrailleUIBrailleNotesApp *)self _isShowingAlert])
  {
    v5 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"braille.notes.alert.message" label:v4 isInline:0];
    v6 = [SCROBrailleUIListView alloc];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [(SCROBrailleUIListView *)v6 initWithIdentifier:@"braille.notes.alert" items:v7];
    [(SCROBrailleUIBrailleNotesApp *)self setAlertView:v8];

    v9 = [(SCROBrailleUIBrailleNotesApp *)self alertView];
    [v9 display];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isShowingDeleteConfirmView
{
  v2 = [(SCROBrailleUIBrailleNotesApp *)self deleteConfirmView];
  v3 = v2 != 0;

  return v3;
}

- (void)_closeDeleteConfirmView
{
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingDeleteConfirmView])
  {
    v3 = [(SCROBrailleUIBrailleNotesApp *)self deleteConfirmView];
    [v3 dismiss];

    [(SCROBrailleUIBrailleNotesApp *)self setDeleteConfirmView:0];
  }
}

- (void)_openDeleteConfirmView
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIBrailleNotesApp *)self _isShowingDeleteConfirmView])
  {
    v3 = [SCROBrailleUIListItem alloc];
    v4 = SCROBrailleUILocString(@"braille.notes.delete.confirm.format");
    v5 = [(SCROBrailleUIListItem *)v3 initWithIdentifier:@"braille.notes.delete.confirm.message" label:v4 isInline:0];

    v6 = [SCROBrailleUIListItem alloc];
    v7 = SCROBrailleUILocString(@"braille.notes.delete.confirm.delete");
    v8 = [(SCROBrailleUIListItem *)v6 initWithIdentifier:@"braille.notes.delete.confirm.delete" label:v7 isInline:0];

    v9 = [SCROBrailleUIListView alloc];
    v14[0] = v5;
    v14[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v11 = [(SCROBrailleUIListView *)v9 initWithIdentifier:@"braille.notes.delete.confirm" items:v10];
    [(SCROBrailleUIBrailleNotesApp *)self setDeleteConfirmView:v11];

    v12 = [(SCROBrailleUIBrailleNotesApp *)self deleteConfirmView];
    [v12 display];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end