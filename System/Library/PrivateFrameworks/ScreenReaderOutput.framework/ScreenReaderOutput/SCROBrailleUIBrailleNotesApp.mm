@interface SCROBrailleUIBrailleNotesApp
- (BOOL)_isEditing;
- (BOOL)_isNoteOnlyUnicodeBraille:(id)braille;
- (BOOL)_isOpen;
- (BOOL)_isShowingAlert;
- (BOOL)_isShowingContextMenu;
- (BOOL)_isShowingContextMenuOptions;
- (BOOL)_isShowingDeleteConfirmView;
- (BOOL)_isShowingFindField;
- (SCROBrailleUIBrailleNotesApp)initWithDelegate:(id)delegate;
- (id)_brailleNoteIdentifierForItemIdentifier:(id)identifier;
- (id)_brailleNotesContext;
- (id)_brailleNotesFolder;
- (id)_closeEditor;
- (id)_createNoteWithContent:(id)content;
- (id)_folderForIdentifier:(id)identifier;
- (id)_itemsArrayInFolder:(id)folder;
- (id)_labelForFolder:(id)folder;
- (id)_labelForNote:(id)note order:(unint64_t)order;
- (id)_labelForPinnedNote:(id)note order:(unint64_t)order;
- (id)_modifyNoteWithIdentifier:(id)identifier updatedContent:(id)content;
- (id)_noteForIdentififer:(id)identififer;
- (id)_notesListViewForFolder:(id)folder withInitialFocus:(id)focus;
- (id)_notesListViewForFolder:(id)folder withInitialFocusedIndex:(unint64_t)index;
- (id)_pinnedNotesInFolder:(id)folder;
- (id)_saveNoteDeletingIfEmpty:(BOOL)empty;
- (id)_sortedArrayOfNotesFor:(id)for;
- (id)_unpinnedNotesInFolder:(id)folder;
- (id)views;
- (void)_closeAlert;
- (void)_closeContextMenu;
- (void)_closeContextMenuOptions;
- (void)_closeDeleteConfirmView;
- (void)_closeFindField;
- (void)_closeNotesList;
- (void)_deleteNote:(id)note;
- (void)_goUpOneLevel;
- (void)_handleActionInAlert:(id)alert;
- (void)_handleActionInContextMenu:(id)menu;
- (void)_handleActionInContextMenuOptions:(id)options;
- (void)_handleActionInDeleteConfirmView:(id)view;
- (void)_handleActionInEditor:(id)editor;
- (void)_handleActionInFindField:(id)field;
- (void)_handleActionInNotesList:(id)list;
- (void)_openAlertWithMessage:(id)message;
- (void)_openContextMenuForCreateNote;
- (void)_openContextMenuForFolder:(id)folder;
- (void)_openContextMenuForNote:(id)note;
- (void)_openContextMenuOptionsForIdentifier:(id)identifier;
- (void)_openDeleteConfirmView;
- (void)_openEditorWithIdentifier:(id)identifier initialContent:(id)content initialCursor:(int64_t)cursor;
- (void)_openFindField;
- (void)_openNotesListInFolder:(id)folder;
- (void)_refreshNotesListViewsWithFocus:(id)focus;
- (void)_refreshNotesListViewsWithFocusedIndex:(unint64_t)index;
- (void)_startAutoSave;
- (void)_stopAutoSave;
- (void)close;
- (void)handleAction:(id)action;
- (void)open;
@end

@implementation SCROBrailleUIBrailleNotesApp

- (SCROBrailleUIBrailleNotesApp)initWithDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = SCROBrailleUIBrailleNotesApp;
  v3 = [(SCROBrailleUIApp *)&v9 initWithDelegate:delegate];
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
    _brailleNotesFolder = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesFolder];
    if (_brailleNotesFolder)
    {
      [(SCROBrailleUIBrailleNotesApp *)self setOpenFolder:_brailleNotesFolder];
      openFolder = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
      v5 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:openFolder withInitialFocus:0];
      [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v5];

      notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
      [notesListView display];

      selfCopy = self;
      v7 = &selfCopy;
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
    _closeEditor = [(SCROBrailleUIBrailleNotesApp *)self _closeEditor];
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
  editorView = [(SCROBrailleUIBrailleNotesApp *)self editorView];

  if (editorView)
  {
    editorView2 = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    [v3 addObject:editorView2];
  }

  notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];

  if (notesListView)
  {
    notesListView2 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
    [v3 addObject:notesListView2];
  }

  contextMenuView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];

  if (contextMenuView)
  {
    contextMenuView2 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
    [v3 addObject:contextMenuView2];
  }

  contextMenuOptionsView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuOptionsView];

  if (contextMenuOptionsView)
  {
    contextMenuOptionsView2 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuOptionsView];
    [v3 addObject:contextMenuOptionsView2];
  }

  findFieldView = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];

  if (findFieldView)
  {
    findFieldView2 = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
    [v3 addObject:findFieldView2];
  }

  alertView = [(SCROBrailleUIBrailleNotesApp *)self alertView];

  if (alertView)
  {
    alertView2 = [(SCROBrailleUIBrailleNotesApp *)self alertView];
    [v3 addObject:alertView2];
  }

  return v3;
}

- (void)handleAction:(id)action
{
  actionCopy = action;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isOpen])
  {
    if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingAlert])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInAlert:actionCopy];
    }

    else if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingDeleteConfirmView])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInDeleteConfirmView:actionCopy];
    }

    else if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenuOptions])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInContextMenuOptions:actionCopy];
    }

    else if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenu])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInContextMenu:actionCopy];
    }

    else if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingFindField])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInFindField:actionCopy];
    }

    else if ([(SCROBrailleUIBrailleNotesApp *)self _isEditing])
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInEditor:actionCopy];
    }

    else
    {
      [(SCROBrailleUIBrailleNotesApp *)self _handleActionInNotesList:actionCopy];
    }
  }
}

- (void)_handleActionInNotesList:(id)list
{
  listCopy = list;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isOpen])
  {
    notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
    focusedItem = [notesListView focusedItem];
    identifier = [focusedItem identifier];

    ICFolderClass = getICFolderClass();
    _brailleNotesContext = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
    v10 = [(objc_class *)ICFolderClass folderWithIdentifier:identifier context:_brailleNotesContext];

    type = [listCopy type];
    switch(type)
    {
      case 4:
        if (([identifier isEqualToString:@"create.note"] & 1) == 0)
        {
          if (v10)
          {
            [(SCROBrailleUIBrailleNotesApp *)self _openContextMenuForFolder:identifier];
          }

          else
          {
            [(SCROBrailleUIBrailleNotesApp *)self _openContextMenuForNote:identifier];
          }
        }

        goto LABEL_22;
      case 2:
        openFolder = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
        _brailleNotesFolder = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesFolder];

        if (openFolder != _brailleNotesFolder)
        {
          [(SCROBrailleUIBrailleNotesApp *)self _goUpOneLevel];
LABEL_22:

          goto LABEL_23;
        }

        break;
      case 1:
        if ([identifier isEqualToString:@"create.note"])
        {
          [(SCROBrailleUIBrailleNotesApp *)self _openContextMenuForCreateNote];
        }

        else if (v10)
        {
          [(SCROBrailleUIBrailleNotesApp *)self _openNotesListInFolder:v10];
        }

        else
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"braille.notes.edit.note.", identifier];
          v15 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:identifier];
          mergeableString = [v15 mergeableString];
          attributedString = [mergeableString attributedString];
          string = [attributedString string];

          v19 = [string length];
          v20 = +[SCROBrailleUIPersistenceManager sharedInstance];
          v21 = [v20 getValueForKey:identifier cache:@"BrailleNotes"];

          if (v21)
          {
            range = [v21 range];
            v19 = range + v23;
            if (range + v23 < 0)
            {
              v19 = 0;
            }

            else if (v19 > [string length])
            {
              v19 = [string length];
            }
          }

          [(SCROBrailleUIBrailleNotesApp *)self _openEditorWithIdentifier:v14 initialContent:string initialCursor:v19];
        }

        goto LABEL_22;
    }

    v24.receiver = self;
    v24.super_class = SCROBrailleUIBrailleNotesApp;
    [(SCROBrailleUIApp *)&v24 handleAction:listCopy];
    goto LABEL_22;
  }

LABEL_23:
}

- (void)_handleActionInAlert:(id)alert
{
  alertCopy = alert;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingAlert])
  {
    type = [alertCopy type];
    if (type <= 4 && ((1 << type) & 0x16) != 0)
    {
      [(SCROBrailleUIBrailleNotesApp *)self close];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v6 handleAction:alertCopy];
    }
  }
}

- (void)_handleActionInEditor:(id)editor
{
  editorCopy = editor;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isEditing])
  {
    type = [editorCopy type];
    if (type == 2)
    {
      _closeEditor = [(SCROBrailleUIBrailleNotesApp *)self _closeEditor];
      notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
      openFolder = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
      if (_closeEditor)
      {
        identifier = [_closeEditor identifier];
        v10 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:openFolder withInitialFocus:identifier];
        [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v10];
      }

      else
      {
        identifier = -[SCROBrailleUIBrailleNotesApp _notesListViewForFolder:withInitialFocusedIndex:](self, "_notesListViewForFolder:withInitialFocusedIndex:", openFolder, [notesListView focusedIndex]);
        [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:identifier];
      }

      notesListView2 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
      [notesListView2 display];

      [notesListView dismiss];
    }

    else if (type == 5)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _openFindField];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v12 handleAction:editorCopy];
    }
  }
}

- (void)_handleActionInContextMenu:(id)menu
{
  menuCopy = menu;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenu])
  {
    type = [menuCopy type];
    if (type == 2)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenu];
    }

    else
    {
      if (type == 1)
      {
        contextMenuView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
        focusedItem = [contextMenuView focusedItem];
        identifier = [focusedItem identifier];

        notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
        focusedItem2 = [notesListView focusedItem];
        identifier2 = [focusedItem2 identifier];

        v12 = [(SCROBrailleUIBrailleNotesApp *)self _folderForIdentifier:identifier2];
        v13 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:identifier2];
        if ([identifier2 isEqualToString:@"create.note"])
        {
          if ([identifier isEqualToString:@"braille.notes.context.menu.create.note"])
          {
            v14 = [(SCROBrailleUIBrailleNotesApp *)self _createNoteWithContent:&stru_28763D5C8];
            value = v14;
            if (v14)
            {
              v16 = MEMORY[0x277CCACA8];
              identifier3 = [v14 identifier];
              identifier5 = [v16 stringWithFormat:@"%@%@", @"braille.notes.edit.note.", identifier3];

              [(SCROBrailleUIBrailleNotesApp *)self _openEditorWithIdentifier:identifier5 initialContent:&stru_28763D5C8 initialCursor:0];
LABEL_23:

              goto LABEL_24;
            }

            goto LABEL_24;
          }

          if ([identifier isEqualToString:@"braille.notes.context.menu.create.folder"])
          {
            contextMenuView2 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
            value = [contextMenuView2 value];

            if ([value length])
            {
              ICFolderClass = getICFolderClass();
              openFolder = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
              identifier5 = [(objc_class *)ICFolderClass newFolderInParentFolder:openFolder];

              if (identifier5)
              {
                [identifier5 setTitle:value];
                identifier4 = [identifier5 identifier];
                [(SCROBrailleUIBrailleNotesApp *)self _refreshNotesListViewsWithFocus:identifier4];
              }

              goto LABEL_23;
            }

LABEL_24:
          }
        }

        else
        {
          if ([identifier isEqualToString:@"braille.notes.context.menu.delete"])
          {
            [(SCROBrailleUIBrailleNotesApp *)self _openDeleteConfirmView];
LABEL_26:

            goto LABEL_27;
          }

          if ([identifier isEqualToString:@"braille.notes.context.menu.move"])
          {
            [(SCROBrailleUIBrailleNotesApp *)self _openContextMenuOptionsForIdentifier:identifier2];
          }

          else
          {
            if (![identifier isEqualToString:@"braille.notes.context.menu.rename"])
            {
              if ([identifier isEqualToString:@"braille.notes.context.menu.pin"])
              {
                v25 = v13;
                v26 = 1;
              }

              else
              {
                if (![identifier isEqualToString:@"braille.notes.context.menu.unpin"])
                {
                  goto LABEL_25;
                }

                v25 = v13;
                v26 = 0;
              }

              [v25 setIsPinned:v26];
              _brailleNotesContext = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
              [_brailleNotesContext ic_save];

              [(SCROBrailleUIBrailleNotesApp *)self _refreshNotesListViewsWithFocus:identifier2];
              goto LABEL_25;
            }

            if (v12)
            {
              contextMenuView3 = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
              value = [contextMenuView3 value];

              if ([value length])
              {
                [v12 setTitle:value];
                _brailleNotesContext2 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
                [_brailleNotesContext2 ic_save];
              }

              identifier5 = [v12 identifier];
              [(SCROBrailleUIBrailleNotesApp *)self _refreshNotesListViewsWithFocus:identifier5];
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
      [(SCROBrailleUIApp *)&v28 handleAction:menuCopy];
    }
  }

LABEL_27:
}

- (void)_refreshNotesListViewsWithFocusedIndex:(unint64_t)index
{
  notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  openFolder = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
  v6 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:openFolder withInitialFocusedIndex:index];
  [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v6];

  notesListView2 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  [notesListView2 display];

  [notesListView dismiss];
}

- (void)_refreshNotesListViewsWithFocus:(id)focus
{
  focusCopy = focus;
  notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  openFolder = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
  v6 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:openFolder withInitialFocus:focusCopy];

  [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v6];
  notesListView2 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  [notesListView2 display];

  [notesListView dismiss];
}

- (void)_handleActionInContextMenuOptions:(id)options
{
  optionsCopy = options;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenuOptions])
  {
    type = [optionsCopy type];
    if (type == 2)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenuOptions];
    }

    else
    {
      if (type == 1)
      {
        contextMenuOptionsView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuOptionsView];
        focusedItem = [contextMenuOptionsView focusedItem];
        identifier = [focusedItem identifier];

        notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
        focusedItem2 = [notesListView focusedItem];
        identifier2 = [focusedItem2 identifier];

        v12 = [(SCROBrailleUIBrailleNotesApp *)self _folderForIdentifier:identifier2];
        v13 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:identifier2];
        if ([identifier isEqualToString:@"braille.notes.context.menu.move.up.one.level"])
        {
          openFolder = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
          parent = [openFolder parent];

          if (!parent)
          {
            goto LABEL_15;
          }
        }

        else
        {
          parent = [(SCROBrailleUIBrailleNotesApp *)self _folderForIdentifier:identifier];
          if (!parent)
          {
LABEL_15:

            goto LABEL_16;
          }
        }

        if (v12)
        {
          [v12 setParent:parent];
        }

        else if (v13)
        {
          [v13 setFolder:parent];
        }

        _brailleNotesContext = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
        [_brailleNotesContext ic_save];

        [(SCROBrailleUIBrailleNotesApp *)self _openNotesListInFolder:parent];
        [(SCROBrailleUIBrailleNotesApp *)self _refreshNotesListViewsWithFocus:identifier2];
        [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenuOptions];
        [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenu];
        goto LABEL_15;
      }

      v17.receiver = self;
      v17.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v17 handleAction:optionsCopy];
    }
  }

LABEL_16:
}

- (void)_handleActionInFindField:(id)field
{
  fieldCopy = field;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingFindField])
  {
    type = [fieldCopy type];
    if (type == 2)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _closeFindField];
    }

    else if (type == 1)
    {
      findFieldView = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
      focusedItem = [findFieldView focusedItem];
      identifier = [focusedItem identifier];

      if ([identifier isEqualToString:@"braille.notes.find.field.enter.search.text"])
      {
        findFieldView2 = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
        value = [findFieldView2 value];

        [(SCROBrailleUIBrailleNotesApp *)self _closeFindField];
        editorView = [(SCROBrailleUIBrailleNotesApp *)self editorView];
        [editorView handleFindForSearchBraille:value];
      }
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v12 handleAction:fieldCopy];
    }
  }
}

- (void)_handleActionInDeleteConfirmView:(id)view
{
  viewCopy = view;
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingDeleteConfirmView])
  {
    type = [viewCopy type];
    if (type == 2)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _closeDeleteConfirmView];
    }

    else if (type == 1)
    {
      deleteConfirmView = [(SCROBrailleUIBrailleNotesApp *)self deleteConfirmView];
      focusedItem = [deleteConfirmView focusedItem];
      identifier = [focusedItem identifier];

      if ([identifier isEqualToString:@"braille.notes.delete.confirm.delete"])
      {
        notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
        focusedItem2 = [notesListView focusedItem];
        identifier2 = [focusedItem2 identifier];

        v12 = [(SCROBrailleUIBrailleNotesApp *)self _folderForIdentifier:identifier2];
        v13 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:identifier2];
        if (v12)
        {
          if ([v12 isDeletable] && (objc_msgSend(v12, "markedForDeletion") & 1) == 0)
          {
            [(objc_class *)getICFolderClass() deleteFolder:v12];
            _brailleNotesContext = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
            [_brailleNotesContext ic_save];
          }
        }

        else
        {
          [(SCROBrailleUIBrailleNotesApp *)self _deleteNote:v13];
        }

        notesListView2 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
        -[SCROBrailleUIBrailleNotesApp _refreshNotesListViewsWithFocusedIndex:](self, "_refreshNotesListViewsWithFocusedIndex:", [notesListView2 focusedIndex]);

        [(SCROBrailleUIBrailleNotesApp *)self _closeDeleteConfirmView];
        [(SCROBrailleUIBrailleNotesApp *)self _closeContextMenu];
      }
    }

    else
    {
      v16.receiver = self;
      v16.super_class = SCROBrailleUIBrailleNotesApp;
      [(SCROBrailleUIApp *)&v16 handleAction:viewCopy];
    }
  }
}

- (BOOL)_isOpen
{
  alertView = [(SCROBrailleUIBrailleNotesApp *)self alertView];
  if (alertView)
  {
    v4 = 1;
  }

  else
  {
    notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
    v4 = notesListView != 0;
  }

  return v4;
}

- (void)_closeNotesList
{
  notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  [notesListView dismiss];

  [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:0];
}

- (void)_openNotesListInFolder:(id)folder
{
  folderCopy = folder;
  notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  [(SCROBrailleUIBrailleNotesApp *)self setOpenFolder:folderCopy];
  v5 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:folderCopy withInitialFocus:0];

  [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v5];
  notesListView2 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
  [notesListView2 display];

  [notesListView dismiss];
}

- (void)_goUpOneLevel
{
  openFolder = [(SCROBrailleUIBrailleNotesApp *)self openFolder];

  if (openFolder)
  {
    openFolder2 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
    _brailleNotesFolder = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesFolder];

    if (openFolder2 == _brailleNotesFolder)
    {
      [(SCROBrailleUIBrailleNotesApp *)self _closeNotesList];
    }

    notesListView = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
    openFolder3 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
    openFolder4 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
    parent = [openFolder4 parent];
    [(SCROBrailleUIBrailleNotesApp *)self setOpenFolder:parent];

    openFolder5 = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
    identifier = [openFolder3 identifier];
    v11 = [(SCROBrailleUIBrailleNotesApp *)self _notesListViewForFolder:openFolder5 withInitialFocus:identifier];
    [(SCROBrailleUIBrailleNotesApp *)self setNotesListView:v11];

    notesListView2 = [(SCROBrailleUIBrailleNotesApp *)self notesListView];
    [notesListView2 display];

    [notesListView dismiss];
  }
}

- (BOOL)_isEditing
{
  editorView = [(SCROBrailleUIBrailleNotesApp *)self editorView];
  v3 = editorView != 0;

  return v3;
}

- (void)_openEditorWithIdentifier:(id)identifier initialContent:(id)content initialCursor:(int64_t)cursor
{
  identifierCopy = identifier;
  contentCopy = content;
  if (![(SCROBrailleUIBrailleNotesApp *)self _isEditing])
  {
    [(SCROBrailleUIBrailleNotesApp *)self setInitialContent:contentCopy];
    v9 = [[SCROBrailleUIBrailleAreaView alloc] initWithIdentifier:identifierCopy initialContent:contentCopy initialCursor:cursor];
    [(SCROBrailleUIBrailleNotesApp *)self setEditorView:v9];

    editorView = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    [editorView display];

    [(SCROBrailleUIBrailleNotesApp *)self _startAutoSave];
  }
}

- (id)_closeEditor
{
  if ([(SCROBrailleUIBrailleNotesApp *)self _isEditing])
  {
    [(SCROBrailleUIBrailleNotesApp *)self _stopAutoSave];
    v3 = [(SCROBrailleUIBrailleNotesApp *)self _saveNoteDeletingIfEmpty:1];
    editorView = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    [editorView dismiss];

    [(SCROBrailleUIBrailleNotesApp *)self setEditorView:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_saveNoteDeletingIfEmpty:(BOOL)empty
{
  emptyCopy = empty;
  if (+[SCROBrailleUIApp isHidingViews](SCROBrailleUIApp, "isHidingViews") || ![(SCROBrailleUIBrailleNotesApp *)self _isEditing]|| +[SCROBrailleUIApp isUnitTesting])
  {
    v5 = 0;
  }

  else
  {
    editorView = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    identifier = [editorView identifier];
    v9 = [(SCROBrailleUIBrailleNotesApp *)self _brailleNoteIdentifierForItemIdentifier:identifier];

    editorView2 = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    value = [editorView2 value];

    if (emptyCopy && ![value length])
    {
      v12 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:v9];
      [(SCROBrailleUIBrailleNotesApp *)self _deleteNote:v12];

      v5 = 0;
    }

    else
    {
      v5 = [(SCROBrailleUIBrailleNotesApp *)self _modifyNoteWithIdentifier:v9 updatedContent:value];
    }
  }

  return v5;
}

- (id)_itemsArrayInFolder:(id)folder
{
  v59 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
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
    visibleSubFolders = [folderCopy visibleSubFolders];
    v10 = [visibleSubFolders countByEnumeratingWithState:&v52 objects:v58 count:16];
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
            objc_enumerationMutation(visibleSubFolders);
          }

          v14 = *(*(&v52 + 1) + 8 * i);
          v15 = [SCROBrailleUIListItem alloc];
          identifier = [v14 identifier];
          v17 = [(SCROBrailleUIBrailleNotesApp *)self _labelForFolder:v14];
          v18 = [(SCROBrailleUIListItem *)v15 initWithIdentifier:identifier brailleLabel:v17 isInline:0];

          [v5 addObject:v18];
        }

        v11 = [visibleSubFolders countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v11);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v43 = folderCopy;
    v19 = [(SCROBrailleUIBrailleNotesApp *)self _pinnedNotesInFolder:folderCopy];
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
          identifier2 = [v25 identifier];
          v28 = [(SCROBrailleUIBrailleNotesApp *)self _labelForPinnedNote:v25 order:v23];
          v29 = [(SCROBrailleUIListItem *)v26 initWithIdentifier:identifier2 brailleLabel:v28 isInline:0 shouldTruncateAtPanBoundary:1];

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
          identifier3 = [v35 identifier];
          v38 = [(SCROBrailleUIBrailleNotesApp *)self _labelForNote:v35 order:v23];
          v39 = [(SCROBrailleUIListItem *)v36 initWithIdentifier:identifier3 brailleLabel:v38 isInline:0 shouldTruncateAtPanBoundary:1];

          [v5 addObject:v39];
          ++v23;
        }

        v32 = [v30 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v32);
    }

    v8 = v42;
    folderCopy = v43;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_notesListViewForFolder:(id)folder withInitialFocusedIndex:(unint64_t)index
{
  v5 = [(SCROBrailleUIBrailleNotesApp *)self _itemsArrayInFolder:folder];
  v6 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"braille.notes" items:v5 initialFocusedIndex:index];

  return v6;
}

- (id)_notesListViewForFolder:(id)folder withInitialFocus:(id)focus
{
  focusCopy = focus;
  v7 = [(SCROBrailleUIBrailleNotesApp *)self _itemsArrayInFolder:folder];
  v8 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"braille.notes" items:v7 initialFocus:focusCopy];

  return v8;
}

- (id)_brailleNoteIdentifierForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [@"braille.notes.edit.note." length];
  v5 = [identifierCopy substringWithRange:{v4, objc_msgSend(identifierCopy, "length") - v4}];

  return v5;
}

- (id)_modifyNoteWithIdentifier:(id)identifier updatedContent:(id)content
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contentCopy = content;
  if ([identifierCopy length])
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    initialContent = [(SCROBrailleUIBrailleNotesApp *)self initialContent];
    v9 = [initialContent isEqualToString:contentCopy];

    v35 = v9 ^ 1;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__2;
    v32 = __Block_byref_object_dispose__2;
    v33 = 0;
    _brailleNotesContext = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__SCROBrailleUIBrailleNotesApp__modifyNoteWithIdentifier_updatedContent___block_invoke;
    v23[3] = &unk_279B74750;
    v26 = &v28;
    v23[4] = self;
    v11 = identifierCopy;
    v24 = v11;
    v27 = v34;
    v25 = contentCopy;
    [_brailleNotesContext performBlockAndWait:v23];

    v12 = _SCROD_LOG();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v29[5] identifier];
      *buf = 138412290;
      v37 = identifier;
      _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_DEFAULT, "Braille Notes: modified the note with id %@", buf, 0xCu);
    }

    v14 = MEMORY[0x277CBEA90];
    editorView = [(SCROBrailleUIBrailleNotesApp *)self editorView];
    selection = [editorView selection];
    v18 = [v14 dataWithRange:{selection, v17}];

    v19 = +[SCROBrailleUIPersistenceManager sharedInstance];
    [v19 setValue:v18 forKey:v11 cache:@"BrailleNotes" maxRecordCount:100];

    v20 = v29[5];
    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(v34, 8);
  }

  else
  {
    v20 = [(SCROBrailleUIBrailleNotesApp *)self _createNoteWithContent:contentCopy];
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

- (id)_createNoteWithContent:(id)content
{
  v18 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  openFolder = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
  if (openFolder)
  {
    v6 = [(objc_class *)getICNoteClass() newEmptyNoteInFolder:openFolder];
    v7 = v6;
    if (v6)
    {
      mergeableString = [v6 mergeableString];
      [mergeableString insertString:contentCopy atIndex:0];

      _brailleNotesContext = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
      [_brailleNotesContext ic_save];

      v10 = _SCROD_LOG();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [v7 identifier];
        v16 = 138412290;
        v17 = identifier;
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

- (id)_pinnedNotesInFolder:(id)folder
{
  if (folder)
  {
    notes = [folder notes];
    predicateForPinnedNotes = [(objc_class *)getICNoteClass() predicateForPinnedNotes];
    v6 = [notes filteredSetUsingPredicate:predicateForPinnedNotes];

    v7 = [(SCROBrailleUIBrailleNotesApp *)self _sortedArrayOfNotesFor:v6];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)_unpinnedNotesInFolder:(id)folder
{
  if (folder)
  {
    notes = [folder notes];
    v5 = [notes ax_filteredSetUsingBlock:&__block_literal_global_7];

    v6 = [(SCROBrailleUIBrailleNotesApp *)self _sortedArrayOfNotesFor:v5];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)_sortedArrayOfNotesFor:(id)for
{
  v26 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v5 = +[SCROBrailleUISettingsManager sharedInstance];
  v6 = [v5 brailleNotesSortType] == 1;
  v7 = [v5 brailleNotesSortDirection] == 0;
  predicateForVisibleObjects = [(objc_class *)getICCloudSyncingObjectClass() predicateForVisibleObjects];
  v9 = [forCopy filteredSetUsingPredicate:predicateForVisibleObjects];
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

  sharedContext = [(objc_class *)getICNoteContextClass() sharedContext];
  managedObjectContext = [sharedContext managedObjectContext];

  return managedObjectContext;
}

- (id)_brailleNotesFolder
{
  _brailleNotesContext = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
  v3 = [(objc_class *)getICAccountClass() defaultAccountInContext:_brailleNotesContext];
  if (v3)
  {
    v4 = [(objc_class *)getICFolderClass() folderWithIdentifier:@"⠃⠗⠇" context:_brailleNotesContext];
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

- (id)_folderForIdentifier:(id)identifier
{
  v4 = getICFolderClass;
  identifierCopy = identifier;
  v6 = v4();
  _brailleNotesContext = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
  v8 = [(objc_class *)v6 folderWithIdentifier:identifierCopy context:_brailleNotesContext];

  return v8;
}

- (id)_noteForIdentififer:(id)identififer
{
  v4 = getICNoteClass;
  identififerCopy = identififer;
  v6 = v4();
  _brailleNotesContext = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
  v8 = [(objc_class *)v6 noteWithIdentifier:identififerCopy context:_brailleNotesContext];

  return v8;
}

- (id)_labelForNote:(id)note order:(unint64_t)order
{
  v5 = MEMORY[0x277CCACA8];
  noteCopy = note;
  order = [v5 stringWithFormat:@"%lu", order];
  v8 = +[SCROBrailleTranslationManager sharedManager];
  v9 = [v8 printBrailleForText:order language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];

  v10 = MEMORY[0x277CCACA8];
  mergeableString = [noteCopy mergeableString];

  attributedString = [mergeableString attributedString];
  string = [attributedString string];
  v14 = [v10 stringWithFormat:@"%@⠀%@", v9, string];

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

- (id)_labelForPinnedNote:(id)note order:(unint64_t)order
{
  v4 = [(SCROBrailleUIBrailleNotesApp *)self _labelForNote:note order:order];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"⠏", v4];

  return v5;
}

- (id)_labelForFolder:(id)folder
{
  v3 = MEMORY[0x277CCACA8];
  title = [folder title];
  v5 = [v3 stringWithFormat:@"%@⠀%@", @"⠋", title];

  return v5;
}

- (BOOL)_isNoteOnlyUnicodeBraille:(id)braille
{
  mergeableString = [braille mergeableString];
  attributedString = [mergeableString attributedString];
  string = [attributedString string];

  if ([string length])
  {
    v6 = 0;
    do
    {
      v7 = [string characterAtIndex:v6];
      v8 = v7 == 10 || (v7 & 0xFF00) == 10240;
      v9 = v8;
      if (!v8)
      {
        break;
      }

      ++v6;
    }

    while (v6 < [string length]);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_deleteNote:(id)note
{
  v13 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v5 = _SCROD_LOG();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [noteCopy identifier];
    v11 = 138412290;
    v12 = identifier;
    _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "Braille Notes: deleting note with id %@", &v11, 0xCu);
  }

  if ([noteCopy isDeletable] && (objc_msgSend(noteCopy, "markedForDeletion") & 1) == 0)
  {
    isEmpty = [noteCopy isEmpty];
    ICNoteClass = getICNoteClass();
    if (isEmpty)
    {
      [(objc_class *)ICNoteClass deleteEmptyNote:noteCopy];
    }

    else
    {
      [(objc_class *)ICNoteClass deleteNote:noteCopy];
    }

    _brailleNotesContext = [(SCROBrailleUIBrailleNotesApp *)self _brailleNotesContext];
    [_brailleNotesContext ic_save];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isShowingContextMenu
{
  contextMenuView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
  v3 = contextMenuView != 0;

  return v3;
}

- (void)_closeContextMenu
{
  contextMenuView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
  [contextMenuView dismiss];

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

    contextMenuView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
    [contextMenuView display];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_openContextMenuForFolder:(id)folder
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

    contextMenuView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
    [contextMenuView display];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_openContextMenuForNote:(id)note
{
  v27[3] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  if (![(SCROBrailleUIBrailleNotesApp *)self _isShowingContextMenu])
  {
    v5 = [(SCROBrailleUIBrailleNotesApp *)self _noteForIdentififer:noteCopy];
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
    contextMenuView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuView];
    [contextMenuView display];

    goto LABEL_10;
  }

LABEL_11:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isShowingContextMenuOptions
{
  contextMenuOptionsView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuOptionsView];
  v3 = contextMenuOptionsView != 0;

  return v3;
}

- (void)_closeContextMenuOptions
{
  contextMenuOptionsView = [(SCROBrailleUIBrailleNotesApp *)self contextMenuOptionsView];
  [contextMenuOptionsView dismiss];

  [(SCROBrailleUIBrailleNotesApp *)self setContextMenuOptionsView:0];
}

- (void)_openContextMenuOptionsForIdentifier:(id)identifier
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  openFolder = [(SCROBrailleUIBrailleNotesApp *)self openFolder];
  visibleSubFolders = [openFolder visibleSubFolders];

  v8 = [visibleSubFolders countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(visibleSubFolders);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [identifierCopy isEqualToString:identifier];

        if ((v14 & 1) == 0)
        {
          v15 = [SCROBrailleUIListItem alloc];
          identifier2 = [v12 identifier];
          title = [v12 title];
          v18 = [(SCROBrailleUIListItem *)v15 initWithIdentifier:identifier2 brailleLabel:title isInline:0];

          [v5 addObject:v18];
        }
      }

      v9 = [visibleSubFolders countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  openFolder2 = [(SCROBrailleUIBrailleNotesApp *)selfCopy openFolder];
  _brailleNotesFolder = [(SCROBrailleUIBrailleNotesApp *)selfCopy _brailleNotesFolder];
  v21 = [openFolder2 isEqual:_brailleNotesFolder];

  if ((v21 & 1) == 0)
  {
    v22 = [SCROBrailleUIListItem alloc];
    v23 = SCROBrailleUILocString(@"braille.notes.context.menu.move.up.one.level.label");
    v24 = [(SCROBrailleUIListItem *)v22 initWithIdentifier:@"braille.notes.context.menu.move.up.one.level" label:v23 isInline:0];

    [v5 addObject:v24];
  }

  v25 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"braille.notes.context.menu.options" items:v5];
  [(SCROBrailleUIBrailleNotesApp *)selfCopy setContextMenuOptionsView:v25];

  contextMenuOptionsView = [(SCROBrailleUIBrailleNotesApp *)selfCopy contextMenuOptionsView];
  [contextMenuOptionsView display];

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isShowingFindField
{
  findFieldView = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
  v3 = findFieldView != 0;

  return v3;
}

- (void)_closeFindField
{
  findFieldView = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
  [findFieldView dismiss];

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

    findFieldView = [(SCROBrailleUIBrailleNotesApp *)self findFieldView];
    [findFieldView display];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startAutoSave
{
  autoSaveTimer = [(SCROBrailleUIBrailleNotesApp *)self autoSaveTimer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SCROBrailleUIBrailleNotesApp__startAutoSave__block_invoke;
  v4[3] = &unk_279B73DD0;
  v4[4] = self;
  [autoSaveTimer afterDelay:v4 processBlock:5.0];
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
  autoSaveTimer = [(SCROBrailleUIBrailleNotesApp *)self autoSaveTimer];
  [autoSaveTimer cancel];
}

- (BOOL)_isShowingAlert
{
  alertView = [(SCROBrailleUIBrailleNotesApp *)self alertView];
  v3 = alertView != 0;

  return v3;
}

- (void)_closeAlert
{
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingAlert])
  {
    alertView = [(SCROBrailleUIBrailleNotesApp *)self alertView];
    [alertView dismiss];

    [(SCROBrailleUIBrailleNotesApp *)self setAlertView:0];
  }
}

- (void)_openAlertWithMessage:(id)message
{
  v11[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (![(SCROBrailleUIBrailleNotesApp *)self _isShowingAlert])
  {
    v5 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"braille.notes.alert.message" label:messageCopy isInline:0];
    v6 = [SCROBrailleUIListView alloc];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [(SCROBrailleUIListView *)v6 initWithIdentifier:@"braille.notes.alert" items:v7];
    [(SCROBrailleUIBrailleNotesApp *)self setAlertView:v8];

    alertView = [(SCROBrailleUIBrailleNotesApp *)self alertView];
    [alertView display];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isShowingDeleteConfirmView
{
  deleteConfirmView = [(SCROBrailleUIBrailleNotesApp *)self deleteConfirmView];
  v3 = deleteConfirmView != 0;

  return v3;
}

- (void)_closeDeleteConfirmView
{
  if ([(SCROBrailleUIBrailleNotesApp *)self _isShowingDeleteConfirmView])
  {
    deleteConfirmView = [(SCROBrailleUIBrailleNotesApp *)self deleteConfirmView];
    [deleteConfirmView dismiss];

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

    deleteConfirmView = [(SCROBrailleUIBrailleNotesApp *)self deleteConfirmView];
    [deleteConfirmView display];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end