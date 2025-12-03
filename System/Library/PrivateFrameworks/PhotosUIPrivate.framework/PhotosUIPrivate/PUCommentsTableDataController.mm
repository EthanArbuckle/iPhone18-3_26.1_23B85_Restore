@interface PUCommentsTableDataController
- (BOOL)_canPostCommentWithText:(id)text localizedFailureDescription:(id *)description;
- (BOOL)_isAssetOwnerSectionVisible;
- (BOOL)_isVideoAsset;
- (BOOL)photoCommentEntryViewShouldEndEditing:(id)editing;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (PUCommentsTableDataController)initWithTableView:(id)view;
- (PUCommentsTableDataControllerDelegate)delegate;
- (double)_heightForComment:(id)comment forWidth:(double)width forInterfaceOrientation:(int64_t)orientation;
- (double)minimumHeight;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_commentText;
- (id)_currentEntryView;
- (id)_orderedComments;
- (id)_orderedFetchOptions;
- (id)_orderedLikes;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_assetOwnerCommentSection;
- (int64_t)_postCommentSection;
- (int64_t)_textCommentSection;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_fontCacheDidChange:(id)change;
- (void)_invalidateCommentsAndLikes;
- (void)_postCommentWithText:(id)text completionHandler:(id)handler;
- (void)_scrollToComment:(id)comment animated:(BOOL)animated;
- (void)_setIsPostingComment:(BOOL)comment postButton:(id)button;
- (void)_setManagedAsset:(id)asset;
- (void)_updateFirstResponder;
- (void)_updateOrderedComments;
- (void)_updatedOrderedLikes;
- (void)_validateAndPostComment:(id)comment;
- (void)cloudCommentsDidChange:(id)change;
- (void)dealloc;
- (void)photoCommentEntryViewDidEndEditing:(id)editing;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAsset:(id)asset;
- (void)setEditing:(BOOL)editing;
- (void)setShouldUseCompactCommentSeparators:(BOOL)separators;
- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation PUCommentsTableDataController

- (PUCommentsTableDataControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cloudCommentsDidChange:(id)change
{
  changeCopy = change;
  if ([(PUCommentsTableDataController *)self isEditing]&& ([(PUCommentsTableDataController *)self justInsertedCommentUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_hasPendingChanges = 1;
  }

  else
  {
    asset = [changeCopy asset];
    managedAsset = [(PUCommentsTableDataController *)self managedAsset];
    v8 = [asset isEqual:managedAsset];

    if (v8)
    {
      self->_hasPendingChanges = 0;
      [(PUCommentsTableDataController *)self _invalidateCommentsAndLikes];
      shouldReload = [changeCopy shouldReload];
      deletedIndexes = [changeCopy deletedIndexes];
      insertedIndexes = [changeCopy insertedIndexes];
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 0;
      justInsertedCommentUUID = [(PUCommentsTableDataController *)self justInsertedCommentUUID];
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__18697;
      v44 = __Block_byref_object_dispose__18698;
      v45 = 0;
      numberOfSections = [(UITableView *)self->_tableView numberOfSections];
      LOBYTE(numberOfSections) = (numberOfSections != [(PUCommentsTableDataController *)self numberOfSectionsInTableView:self->_tableView]) | shouldReload;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__PUCommentsTableDataController_cloudCommentsDidChange___block_invoke;
      aBlock[3] = &unk_1E7B80798;
      aBlock[4] = self;
      v14 = _Block_copy(aBlock);
      v15 = v14;
      if (numberOfSections)
      {
        v16 = v14[2](v14);
        [(UITableView *)self->_tableView reloadData];
      }

      else if ([deletedIndexes count] || objc_msgSend(insertedIndexes, "count"))
      {
        [(UITableView *)self->_tableView beginUpdates];
        if ([deletedIndexes count])
        {
          array = [MEMORY[0x1E695DF70] array];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __56__PUCommentsTableDataController_cloudCommentsDidChange___block_invoke_2;
          v36[3] = &unk_1E7B7DEA8;
          v18 = array;
          v37 = v18;
          selfCopy = self;
          [deletedIndexes enumerateIndexesUsingBlock:v36];
          [(UITableView *)self->_tableView deleteRowsAtIndexPaths:v18 withRowAnimation:0];
        }

        if ([insertedIndexes count])
        {
          array2 = [MEMORY[0x1E695DF70] array];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __56__PUCommentsTableDataController_cloudCommentsDidChange___block_invoke_3;
          v30[3] = &unk_1E7B762D0;
          v20 = array2;
          v31 = v20;
          selfCopy2 = self;
          v33 = justInsertedCommentUUID;
          v34 = &v46;
          v35 = &v40;
          [insertedIndexes enumerateIndexesUsingBlock:v30];
          if (*(v47 + 24) == 1)
          {
            [(PUCommentsTableDataController *)self setEditing:0];
            v16 = 1;
          }

          else
          {
            v16 = v15[2](v15);
          }

          if (v47[3])
          {
            v21 = 5;
          }

          else if ([insertedIndexes count] >= 0x15)
          {
            v21 = 5;
          }

          else
          {
            v21 = 100;
          }

          [(UITableView *)self->_tableView insertRowsAtIndexPaths:v20 withRowAnimation:v21];
        }

        else
        {
          v16 = 0;
        }

        v22 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PUCommentsTableDataController _smileCommentSection](self, "_smileCommentSection")}];
        tableView = self->_tableView;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObject:v22];
        [(UITableView *)tableView reloadRowsAtIndexPaths:v24 withRowAnimation:5];

        [(UITableView *)self->_tableView endUpdates];
      }

      else
      {
        [(UITableView *)self->_tableView beginUpdates];
        v27 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PUCommentsTableDataController _smileCommentSection](self, "_smileCommentSection")}];
        v28 = self->_tableView;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObject:v27];
        [(UITableView *)v28 reloadRowsAtIndexPaths:v29 withRowAnimation:5];

        [(UITableView *)self->_tableView endUpdates];
        v16 = 0;
      }

      if (*(v47 + 24) == 1)
      {
        v25 = v41[5];
        if (v25)
        {
          [(PUCommentsTableDataController *)self _scrollToComment:v25 animated:0];
        }
      }

      if (v16)
      {
        [(UITableView *)self->_tableView px_scrollToEdge:3 animated:1];
      }

      justInsertedCommentUUID2 = [(PUCommentsTableDataController *)self justInsertedCommentUUID];

      if (justInsertedCommentUUID2)
      {
        [(PUCommentsTableDataController *)self setJustInsertedCommentUUID:0];
      }

      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v46, 8);
    }
  }
}

void __56__PUCommentsTableDataController_cloudCommentsDidChange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:a2 inSection:{objc_msgSend(*(a1 + 40), "_textCommentSection")}];
  [v2 addObject:v3];
}

void __56__PUCommentsTableDataController_cloudCommentsDidChange___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:a2 inSection:{objc_msgSend(*(a1 + 40), "_textCommentSection")}];
  [v4 addObject:v5];

  if (*(a1 + 48) && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v6 = [*(a1 + 40) _orderedComments];
    obj = [v6 objectAtIndex:a2];

    v7 = [obj uuid];
    LODWORD(v6) = [v7 isEqualToString:*(a1 + 48)];

    if (v6)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj);
    }
  }
}

- (void)photoCommentEntryViewDidEndEditing:(id)editing
{
  [(PUCommentsTableDataController *)self setEditing:0];
  if (self->_hasPendingChanges)
  {
    tableView = self->_tableView;

    [(UITableView *)tableView reloadData];
  }
}

- (BOOL)photoCommentEntryViewShouldEndEditing:(id)editing
{
  if (![(PUCommentsTableDataController *)self isEditing])
  {
    return 1;
  }

  _commentText = [(PUCommentsTableDataController *)self _commentText];
  if ([_commentText length])
  {
    if ([(PUCommentsTableDataController *)self _canPostCommentWithText:_commentText localizedFailureDescription:0])
    {
      justInsertedCommentUUID = [(PUCommentsTableDataController *)self justInsertedCommentUUID];
      v6 = justInsertedCommentUUID != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  delegate = [(PUCommentsTableDataController *)self delegate];
  [delegate commentsTableDataController:self tableViewDidScroll:scrollCopy];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  v9 = 0;
  if (![(PUCommentsTableDataController *)self isEditing])
  {
    section = [pathCopy section];
    if (section == [(PUCommentsTableDataController *)self _textCommentSection])
    {
      _orderedComments = [(PUCommentsTableDataController *)self _orderedComments];
      v8 = [_orderedComments objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      LOBYTE(_orderedComments) = [v8 canBeDeletedByUser];
      if (_orderedComments)
      {
        v9 = 1;
      }
    }
  }

  return v9;
}

- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(PUCommentsTableDataController *)self _textCommentSection]&& sel_copy_ == action)
  {
    _orderedComments = [(PUCommentsTableDataController *)self _orderedComments];
    v10 = [_orderedComments objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    commentText = [v10 commentText];
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    [generalPasteboard setString:commentText];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  managedAsset = [(PUCommentsTableDataController *)self managedAsset];
  if ([managedAsset totalCommentsCount])
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      objc_initWeak(&location, self);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __77__PUCommentsTableDataController_tableView_willDisplayCell_forRowAtIndexPath___block_invoke;
      v9[3] = &unk_1E7B80638;
      objc_copyWeak(&v10, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v9);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __77__PUCommentsTableDataController_tableView_willDisplayCell_forRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFirstResponder];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  statusBarOrientation = [mEMORY[0x1E69DC668] statusBarOrientation];

  [(UITableView *)self->_tableView frame];
  v9 = v8;
  section = [pathCopy section];
  if (section == [(PUCommentsTableDataController *)self _smileCommentSection])
  {
    _orderedLikes = [(PUCommentsTableDataController *)self _orderedLikes];
    [PUPhotoSmilesCommentCell heightOfSmileCellWithComments:_orderedLikes forWidth:[(PUCommentsTableDataController *)self _isVideoAsset] isVideo:statusBarOrientation forInterfaceOrientation:v9];
LABEL_3:
    v13 = v12;

    goto LABEL_6;
  }

  if (section == [(PUCommentsTableDataController *)self _assetOwnerCommentSection])
  {
    managedAsset = [(PUCommentsTableDataController *)self managedAsset];
    [PUPhotoOwnerCommentCell heightOfOwnerCellWithAsset:managedAsset forWidth:statusBarOrientation forInterfaceOrientation:v9];
    v13 = v15;

    goto LABEL_6;
  }

  if (section == [(PUCommentsTableDataController *)self _textCommentSection])
  {
    _orderedComments = [(PUCommentsTableDataController *)self _orderedComments];
    _orderedLikes = [_orderedComments objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    [(PUCommentsTableDataController *)self _heightForComment:_orderedLikes forWidth:statusBarOrientation forInterfaceOrientation:v9];
    goto LABEL_3;
  }

  v13 = 0.0;
  if (section == [(PUCommentsTableDataController *)self _postCommentSection])
  {
    [PUPhotoPostCommentTextEntryCell heightForWidth:v9];
    v13 = v18;
  }

LABEL_6:

  return v13;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(PUCommentsTableDataController *)self _smileCommentSection])
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PLPhotoSmilesCommentCell"];
    if (!v10)
    {
      v10 = [[PUPhotoSmilesCommentCell alloc] initWithStyle:3 reuseIdentifier:@"PLPhotoSmilesCommentCell" isVideo:[(PUCommentsTableDataController *)self _isVideoAsset]];
    }

    _orderedLikes = [(PUCommentsTableDataController *)self _orderedLikes];
    [(PUPhotoSmilesCommentCell *)v10 setUserLikes:_orderedLikes];

    [(PUPhotoSmilesCommentCell *)v10 setUsesCompactSeparators:[(PUCommentsTableDataController *)self shouldUseCompactCommentSeparators]];
    goto LABEL_14;
  }

  if (section == [(PUCommentsTableDataController *)self _assetOwnerCommentSection])
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PLPhotoOwnerCommentCell"];
    if (!v10)
    {
      v10 = [[PUPhotoOwnerCommentCell alloc] initWithStyle:3 reuseIdentifier:@"PLPhotoOwnerCommentCell"];
    }

    [(PUPhotoSmilesCommentCell *)v10 setUsesCompactSeparators:[(PUCommentsTableDataController *)self shouldUseCompactCommentSeparators]];
    managedAsset = [(PUCommentsTableDataController *)self managedAsset];
    [(PUPhotoSmilesCommentCell *)v10 updateContentFromAsset:managedAsset];
LABEL_13:

    goto LABEL_14;
  }

  if (section == [(PUCommentsTableDataController *)self _textCommentSection])
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"CommentsTableViewCell"];
    if (!v10)
    {
      v10 = [[PUPhotoCommentCell alloc] initWithStyle:0 reuseIdentifier:@"CommentsTableViewCell"];
    }

    [(PUPhotoSmilesCommentCell *)v10 setUsesCompactSeparators:[(PUCommentsTableDataController *)self shouldUseCompactCommentSeparators]];
    asset = [(PUCommentsTableDataController *)self asset];
    [(PUPhotoSmilesCommentCell *)v10 setAsset:asset];

    managedAsset = [(PUCommentsTableDataController *)self _orderedComments];
    v14 = [managedAsset objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    [(PUPhotoSmilesCommentCell *)v10 setComment:v14];

    goto LABEL_13;
  }

  if (section != [(PUCommentsTableDataController *)self _postCommentSection])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCommentsTableDataController.m" lineNumber:401 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PLPhotoPostCommentCell"];
  if (!v10)
  {
    v10 = [[PUPhotoPostCommentTextEntryCell alloc] initWithStyle:3 reuseIdentifier:@"PLPhotoPostCommentCell"];
    textEntryView = [(PUPhotoSmilesCommentCell *)v10 textEntryView];
    [textEntryView setDelegate:self];

    textEntryView2 = [(PUPhotoSmilesCommentCell *)v10 textEntryView];
    postButton = [textEntryView2 postButton];

    [postButton addTarget:self action:sel__validateAndPostComment_ forControlEvents:64];
  }

LABEL_14:

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(PUCommentsTableDataController *)self _smileCommentSection]== section || [(PUCommentsTableDataController *)self _assetOwnerCommentSection]== section)
  {
    return 1;
  }

  if ([(PUCommentsTableDataController *)self _textCommentSection]!= section)
  {
    return [(PUCommentsTableDataController *)self _postCommentSection]== section;
  }

  managedAsset = [(PUCommentsTableDataController *)self managedAsset];
  cloudCommentsCount = [managedAsset cloudCommentsCount];

  return cloudCommentsCount;
}

- (void)_validateAndPostComment:(id)comment
{
  commentCopy = comment;
  v5 = commentCopy;
  if (!self->_isPostingComment)
  {
    v6 = commentCopy;
    [(PUCommentsTableDataController *)self _setIsPostingComment:1 postButton:v6];
    if ([(PUCommentsTableDataController *)self isEditing])
    {
      _commentText = [(PUCommentsTableDataController *)self _commentText];
      v21 = 0;
      v8 = [(PUCommentsTableDataController *)self _canPostCommentWithText:_commentText localizedFailureDescription:&v21];
      v9 = v21;
      v10 = v9;
      if (v8)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __57__PUCommentsTableDataController__validateAndPostComment___block_invoke;
        v19[3] = &unk_1E7B80088;
        v19[4] = self;
        v20 = v6;
        [(PUCommentsTableDataController *)self _postCommentWithText:_commentText completionHandler:v19];
      }

      else if (v9)
      {
        v11 = PLLocalizedFrameworkString();
        v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:v10 preferredStyle:1];
        v13 = MEMORY[0x1E69DC648];
        v14 = PULocalizedString(@"OK");
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __57__PUCommentsTableDataController__validateAndPostComment___block_invoke_2;
        v17[3] = &unk_1E7B7E120;
        v17[4] = self;
        v18 = v6;
        v15 = [v13 actionWithTitle:v14 style:1 handler:v17];
        [v12 addAction:v15];

        delegate = [(PUCommentsTableDataController *)self delegate];
        [delegate commentsTableDataController:self presentViewController:v12];
      }
    }

    else
    {
      [(PUCommentsTableDataController *)self _setIsPostingComment:0 postButton:v6];
    }
  }
}

uint64_t __57__PUCommentsTableDataController__validateAndPostComment___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  return [v3 _setIsPostingComment:0 postButton:v4];
}

- (void)_setIsPostingComment:(BOOL)comment postButton:(id)button
{
  self->_isPostingComment = comment;
  if (button)
  {
    [button setEnabled:!comment];
  }
}

- (void)_fontCacheDidChange:(id)change
{
  [(NSCache *)self->_commentsHeightCache removeAllObjects];
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)_postCommentWithText:(id)text completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x1E69C39E8];
  textCopy = text;
  asset = [(PUCommentsTableDataController *)self asset];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PUCommentsTableDataController__postCommentWithText_completionHandler___block_invoke;
  v11[3] = &unk_1E7B7C748;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [v7 addComment:textCopy toAsset:asset completionHandler:v11];
}

uint64_t __72__PUCommentsTableDataController__postCommentWithText_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setJustInsertedCommentUUID:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (BOOL)_canPostCommentWithText:(id)text localizedFailureDescription:(id *)description
{
  v6 = [text length];
  if (v6 <= [MEMORY[0x1E69BE6A8] maxCharactersPerComment])
  {
    if (v6)
    {
      managedAsset = [(PUCommentsTableDataController *)self managedAsset];
      totalCommentsCount = [managedAsset totalCommentsCount];

      if (totalCommentsCount < [MEMORY[0x1E69BE6A8] maxCommentsPerAsset])
      {
        v8 = 0;
        v11 = 1;
        if (!description)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v8 = PLLocalizedFrameworkString();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = PULocalizedString(@"TOO_MANY_CHARS_IN_COMMENT");
    v8 = PULocalizedStringWithValidatedFormat(v7, @"%ld");
  }

  v11 = 0;
  if (description)
  {
LABEL_10:
    v12 = v8;
    *description = v8;
  }

LABEL_11:

  return v11;
}

- (id)_commentText
{
  _currentEntryView = [(PUCommentsTableDataController *)self _currentEntryView];
  trimmedText = [_currentEntryView trimmedText];

  return trimmedText;
}

- (double)_heightForComment:(id)comment forWidth:(double)width forInterfaceOrientation:(int64_t)orientation
{
  commentCopy = comment;
  v9 = commentCopy;
  if (commentCopy)
  {
    v10 = MEMORY[0x1E696AEC0];
    uuid = [commentCopy uuid];
    v12 = [v10 stringWithFormat:@"%@%f%d", uuid, *&width, (orientation - 3) < 2];

    v13 = [(NSCache *)self->_commentsHeightCache objectForKey:v12];
    v14 = v13;
    if (v13)
    {
      [v13 doubleValue];
      v16 = v15;
    }

    else
    {
      asset = [(PUCommentsTableDataController *)self asset];
      [PUPhotoCommentCell heightForComment:v9 ofAsset:asset forWidth:orientation forInterfaceOrientation:width];
      v16 = v18;

      commentsHeightCache = self->_commentsHeightCache;
      v20 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      [(NSCache *)commentsHeightCache setObject:v20 forKey:v12];
    }
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

- (void)_scrollToComment:(id)comment animated:(BOOL)animated
{
  animatedCopy = animated;
  commentCopy = comment;
  _orderedComments = [(PUCommentsTableDataController *)self _orderedComments];
  fetchedObjects = [_orderedComments fetchedObjects];
  v8 = [fetchedObjects indexOfObject:commentCopy];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:{-[PUCommentsTableDataController _textCommentSection](self, "_textCommentSection")}];
    [(UITableView *)self->_tableView scrollToRowAtIndexPath:v9 atScrollPosition:2 animated:animatedCopy];
  }
}

- (id)_currentEntryView
{
  v3 = self->_entryView;
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PUCommentsTableDataController _postCommentSection](self, "_postCommentSection")}];
  v5 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      textEntryView = [v5 textEntryView];

      v3 = textEntryView;
    }
  }

  return v3;
}

- (int64_t)_textCommentSection
{
  if ([(PUCommentsTableDataController *)self _isAssetOwnerSectionVisible])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_postCommentSection
{
  if ([(PUCommentsTableDataController *)self _isAssetOwnerSectionVisible])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (int64_t)_assetOwnerCommentSection
{
  if ([(PUCommentsTableDataController *)self _isAssetOwnerSectionVisible])
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)_isAssetOwnerSectionVisible
{
  _orderedComments = [(PUCommentsTableDataController *)self _orderedComments];
  firstObject = [_orderedComments firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    v5 = [firstObject isCaption] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)_orderedLikes
{
  [(PUCommentsTableDataController *)self _updatedOrderedLikes];

  return [(PUCommentsTableDataController *)self orderedLikesFetchResult];
}

- (id)_orderedComments
{
  [(PUCommentsTableDataController *)self _updateOrderedComments];

  return [(PUCommentsTableDataController *)self orderedCommentsFetchResult];
}

- (void)_updatedOrderedLikes
{
  if (!self->_orderedLikesFetchResult)
  {
    v4 = MEMORY[0x1E6978668];
    asset = [(PUCommentsTableDataController *)self asset];
    _orderedFetchOptions = [(PUCommentsTableDataController *)self _orderedFetchOptions];
    v6 = [v4 fetchLikesForAsset:asset options:_orderedFetchOptions];
    orderedLikesFetchResult = self->_orderedLikesFetchResult;
    self->_orderedLikesFetchResult = v6;
  }
}

- (void)_updateOrderedComments
{
  if (!self->_orderedCommentsFetchResult)
  {
    v4 = MEMORY[0x1E6978668];
    asset = [(PUCommentsTableDataController *)self asset];
    _orderedFetchOptions = [(PUCommentsTableDataController *)self _orderedFetchOptions];
    v6 = [v4 fetchCommentsForAsset:asset options:_orderedFetchOptions];
    orderedCommentsFetchResult = self->_orderedCommentsFetchResult;
    self->_orderedCommentsFetchResult = v6;
  }
}

- (id)_orderedFetchOptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  asset = [(PUCommentsTableDataController *)self asset];
  photoLibrary = [asset photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"commentDate" ascending:1];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v6];

  return librarySpecificFetchOptions;
}

- (void)_invalidateCommentsAndLikes
{
  orderedCommentsFetchResult = self->_orderedCommentsFetchResult;
  self->_orderedCommentsFetchResult = 0;

  orderedLikesFetchResult = self->_orderedLikesFetchResult;
  self->_orderedLikesFetchResult = 0;
}

- (void)_setManagedAsset:(id)asset
{
  assetCopy = asset;
  managedAsset = self->_managedAsset;
  v9 = assetCopy;
  if (managedAsset != assetCopy)
  {
    if (managedAsset)
    {
      defaultCenter = [MEMORY[0x1E69BE2F0] defaultCenter];
      [defaultCenter removeCloudCommentsChangeObserver:self asset:self->_managedAsset];
    }

    objc_storeStrong(&self->_managedAsset, asset);
    if (self->_managedAsset)
    {
      defaultCenter2 = [MEMORY[0x1E69BE2F0] defaultCenter];
      [defaultCenter2 addCloudCommentsChangeObserver:self asset:self->_managedAsset];
    }
  }
}

- (BOOL)_isVideoAsset
{
  asset = [(PUCommentsTableDataController *)self asset];
  if ([asset isVideo] & 1) != 0 || (objc_msgSend(asset, "isStreamedVideo"))
  {
    isAudio = 1;
  }

  else
  {
    isAudio = [asset isAudio];
  }

  return isAudio;
}

- (void)_updateFirstResponder
{
  _currentEntryView = [(PUCommentsTableDataController *)self _currentEntryView];
  if ([(PUCommentsTableDataController *)self isEditing])
  {
    textView = [_currentEntryView textView];
    [textView becomeFirstResponder];
  }

  else
  {
    [_currentEntryView clearText];
    textView = [_currentEntryView textView];
    [textView resignFirstResponder];
  }
}

- (double)minimumHeight
{
  tableView = [(PUCommentsTableDataController *)self tableView];
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{-[PUCommentsTableDataController _assetOwnerCommentSection](self, "_assetOwnerCommentSection")}];
  [(PUCommentsTableDataController *)self tableView:tableView heightForRowAtIndexPath:v4];
  v6 = v5 + 0.0;

  v7 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{-[PUCommentsTableDataController _postCommentSection](self, "_postCommentSection")}];
  [(PUCommentsTableDataController *)self tableView:tableView heightForRowAtIndexPath:v7];
  v9 = v6 + v8;

  return v9;
}

- (void)setShouldUseCompactCommentSeparators:(BOOL)separators
{
  if (self->_shouldUseCompactCommentSeparators != separators)
  {
    self->_shouldUseCompactCommentSeparators = separators;
    tableView = [(PUCommentsTableDataController *)self tableView];
    [tableView reloadData];
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    editingCopy = editing;
    self->_editing = editing;
    [(PUCommentsTableDataController *)self _updateFirstResponder];
    delegate = [(PUCommentsTableDataController *)self delegate];
    [delegate commentsTableDataController:self didChangeEditing:editingCopy];
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  p_asset = &self->_asset;
  if (self->_asset != assetCopy)
  {
    v9 = assetCopy;
    objc_storeStrong(p_asset, asset);
    [(PUCommentsTableDataController *)self _invalidateCommentsAndLikes];
    systemPhotoLibrary = [MEMORY[0x1E69BE670] systemPhotoLibrary];
    v8 = [(PHAsset *)v9 pl_managedAssetFromPhotoLibrary:systemPhotoLibrary];
    [(PUCommentsTableDataController *)self _setManagedAsset:v8];

    assetCopy = v9;
  }

  MEMORY[0x1EEE66BB8](p_asset, assetCopy);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E69BE2F0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUCommentsTableDataController;
  [(PUCommentsTableDataController *)&v4 dealloc];
}

- (PUCommentsTableDataController)initWithTableView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = PUCommentsTableDataController;
  v6 = [(PUCommentsTableDataController *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    commentsHeightCache = v6->_commentsHeightCache;
    v6->_commentsHeightCache = v7;

    objc_storeStrong(&v6->_tableView, view);
    [(UITableView *)v6->_tableView setDelegate:v6];
    [(UITableView *)v6->_tableView setDataSource:v6];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__fontCacheDidChange_ name:*MEMORY[0x1E69BE208] object:0];
  }

  return v6;
}

@end