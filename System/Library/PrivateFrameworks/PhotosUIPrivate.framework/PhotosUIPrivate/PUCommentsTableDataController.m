@interface PUCommentsTableDataController
- (BOOL)_canPostCommentWithText:(id)a3 localizedFailureDescription:(id *)a4;
- (BOOL)_isAssetOwnerSectionVisible;
- (BOOL)_isVideoAsset;
- (BOOL)photoCommentEntryViewShouldEndEditing:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (PUCommentsTableDataController)initWithTableView:(id)a3;
- (PUCommentsTableDataControllerDelegate)delegate;
- (double)_heightForComment:(id)a3 forWidth:(double)a4 forInterfaceOrientation:(int64_t)a5;
- (double)minimumHeight;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_commentText;
- (id)_currentEntryView;
- (id)_orderedComments;
- (id)_orderedFetchOptions;
- (id)_orderedLikes;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_assetOwnerCommentSection;
- (int64_t)_postCommentSection;
- (int64_t)_textCommentSection;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_fontCacheDidChange:(id)a3;
- (void)_invalidateCommentsAndLikes;
- (void)_postCommentWithText:(id)a3 completionHandler:(id)a4;
- (void)_scrollToComment:(id)a3 animated:(BOOL)a4;
- (void)_setIsPostingComment:(BOOL)a3 postButton:(id)a4;
- (void)_setManagedAsset:(id)a3;
- (void)_updateFirstResponder;
- (void)_updateOrderedComments;
- (void)_updatedOrderedLikes;
- (void)_validateAndPostComment:(id)a3;
- (void)cloudCommentsDidChange:(id)a3;
- (void)dealloc;
- (void)photoCommentEntryViewDidEndEditing:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAsset:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setShouldUseCompactCommentSeparators:(BOOL)a3;
- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation PUCommentsTableDataController

- (PUCommentsTableDataControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cloudCommentsDidChange:(id)a3
{
  v4 = a3;
  if ([(PUCommentsTableDataController *)self isEditing]&& ([(PUCommentsTableDataController *)self justInsertedCommentUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_hasPendingChanges = 1;
  }

  else
  {
    v6 = [v4 asset];
    v7 = [(PUCommentsTableDataController *)self managedAsset];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      self->_hasPendingChanges = 0;
      [(PUCommentsTableDataController *)self _invalidateCommentsAndLikes];
      v9 = [v4 shouldReload];
      v10 = [v4 deletedIndexes];
      v11 = [v4 insertedIndexes];
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 0;
      v12 = [(PUCommentsTableDataController *)self justInsertedCommentUUID];
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__18697;
      v44 = __Block_byref_object_dispose__18698;
      v45 = 0;
      v13 = [(UITableView *)self->_tableView numberOfSections];
      LOBYTE(v13) = (v13 != [(PUCommentsTableDataController *)self numberOfSectionsInTableView:self->_tableView]) | v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__PUCommentsTableDataController_cloudCommentsDidChange___block_invoke;
      aBlock[3] = &unk_1E7B80798;
      aBlock[4] = self;
      v14 = _Block_copy(aBlock);
      v15 = v14;
      if (v13)
      {
        v16 = v14[2](v14);
        [(UITableView *)self->_tableView reloadData];
      }

      else if ([v10 count] || objc_msgSend(v11, "count"))
      {
        [(UITableView *)self->_tableView beginUpdates];
        if ([v10 count])
        {
          v17 = [MEMORY[0x1E695DF70] array];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __56__PUCommentsTableDataController_cloudCommentsDidChange___block_invoke_2;
          v36[3] = &unk_1E7B7DEA8;
          v18 = v17;
          v37 = v18;
          v38 = self;
          [v10 enumerateIndexesUsingBlock:v36];
          [(UITableView *)self->_tableView deleteRowsAtIndexPaths:v18 withRowAnimation:0];
        }

        if ([v11 count])
        {
          v19 = [MEMORY[0x1E695DF70] array];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __56__PUCommentsTableDataController_cloudCommentsDidChange___block_invoke_3;
          v30[3] = &unk_1E7B762D0;
          v20 = v19;
          v31 = v20;
          v32 = self;
          v33 = v12;
          v34 = &v46;
          v35 = &v40;
          [v11 enumerateIndexesUsingBlock:v30];
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

          else if ([v11 count] >= 0x15)
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

      v26 = [(PUCommentsTableDataController *)self justInsertedCommentUUID];

      if (v26)
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

- (void)photoCommentEntryViewDidEndEditing:(id)a3
{
  [(PUCommentsTableDataController *)self setEditing:0];
  if (self->_hasPendingChanges)
  {
    tableView = self->_tableView;

    [(UITableView *)tableView reloadData];
  }
}

- (BOOL)photoCommentEntryViewShouldEndEditing:(id)a3
{
  if (![(PUCommentsTableDataController *)self isEditing])
  {
    return 1;
  }

  v4 = [(PUCommentsTableDataController *)self _commentText];
  if ([v4 length])
  {
    if ([(PUCommentsTableDataController *)self _canPostCommentWithText:v4 localizedFailureDescription:0])
    {
      v5 = [(PUCommentsTableDataController *)self justInsertedCommentUUID];
      v6 = v5 != 0;
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

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(PUCommentsTableDataController *)self delegate];
  [v5 commentsTableDataController:self tableViewDidScroll:v4];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v9 = 0;
  if (![(PUCommentsTableDataController *)self isEditing])
  {
    v6 = [v5 section];
    if (v6 == [(PUCommentsTableDataController *)self _textCommentSection])
    {
      v7 = [(PUCommentsTableDataController *)self _orderedComments];
      v8 = [v7 objectAtIndex:{objc_msgSend(v5, "row")}];

      LOBYTE(v7) = [v8 canBeDeletedByUser];
      if (v7)
      {
        v9 = 1;
      }
    }
  }

  return v9;
}

- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  v13 = a5;
  v8 = [v13 section];
  if (v8 == [(PUCommentsTableDataController *)self _textCommentSection]&& sel_copy_ == a4)
  {
    v9 = [(PUCommentsTableDataController *)self _orderedComments];
    v10 = [v9 objectAtIndex:{objc_msgSend(v13, "row")}];

    v11 = [v10 commentText];
    v12 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v12 setString:v11];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  v7 = [(PUCommentsTableDataController *)self managedAsset];
  if ([v7 totalCommentsCount])
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 statusBarOrientation];

  [(UITableView *)self->_tableView frame];
  v9 = v8;
  v10 = [v5 section];
  if (v10 == [(PUCommentsTableDataController *)self _smileCommentSection])
  {
    v11 = [(PUCommentsTableDataController *)self _orderedLikes];
    [PUPhotoSmilesCommentCell heightOfSmileCellWithComments:v11 forWidth:[(PUCommentsTableDataController *)self _isVideoAsset] isVideo:v7 forInterfaceOrientation:v9];
LABEL_3:
    v13 = v12;

    goto LABEL_6;
  }

  if (v10 == [(PUCommentsTableDataController *)self _assetOwnerCommentSection])
  {
    v14 = [(PUCommentsTableDataController *)self managedAsset];
    [PUPhotoOwnerCommentCell heightOfOwnerCellWithAsset:v14 forWidth:v7 forInterfaceOrientation:v9];
    v13 = v15;

    goto LABEL_6;
  }

  if (v10 == [(PUCommentsTableDataController *)self _textCommentSection])
  {
    v17 = [(PUCommentsTableDataController *)self _orderedComments];
    v11 = [v17 objectAtIndex:{objc_msgSend(v5, "row")}];

    [(PUCommentsTableDataController *)self _heightForComment:v11 forWidth:v7 forInterfaceOrientation:v9];
    goto LABEL_3;
  }

  v13 = 0.0;
  if (v10 == [(PUCommentsTableDataController *)self _postCommentSection])
  {
    [PUPhotoPostCommentTextEntryCell heightForWidth:v9];
    v13 = v18;
  }

LABEL_6:

  return v13;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 section];
  if (v9 == [(PUCommentsTableDataController *)self _smileCommentSection])
  {
    v10 = [v7 dequeueReusableCellWithIdentifier:@"PLPhotoSmilesCommentCell"];
    if (!v10)
    {
      v10 = [[PUPhotoSmilesCommentCell alloc] initWithStyle:3 reuseIdentifier:@"PLPhotoSmilesCommentCell" isVideo:[(PUCommentsTableDataController *)self _isVideoAsset]];
    }

    v11 = [(PUCommentsTableDataController *)self _orderedLikes];
    [(PUPhotoSmilesCommentCell *)v10 setUserLikes:v11];

    [(PUPhotoSmilesCommentCell *)v10 setUsesCompactSeparators:[(PUCommentsTableDataController *)self shouldUseCompactCommentSeparators]];
    goto LABEL_14;
  }

  if (v9 == [(PUCommentsTableDataController *)self _assetOwnerCommentSection])
  {
    v10 = [v7 dequeueReusableCellWithIdentifier:@"PLPhotoOwnerCommentCell"];
    if (!v10)
    {
      v10 = [[PUPhotoOwnerCommentCell alloc] initWithStyle:3 reuseIdentifier:@"PLPhotoOwnerCommentCell"];
    }

    [(PUPhotoSmilesCommentCell *)v10 setUsesCompactSeparators:[(PUCommentsTableDataController *)self shouldUseCompactCommentSeparators]];
    v12 = [(PUCommentsTableDataController *)self managedAsset];
    [(PUPhotoSmilesCommentCell *)v10 updateContentFromAsset:v12];
LABEL_13:

    goto LABEL_14;
  }

  if (v9 == [(PUCommentsTableDataController *)self _textCommentSection])
  {
    v10 = [v7 dequeueReusableCellWithIdentifier:@"CommentsTableViewCell"];
    if (!v10)
    {
      v10 = [[PUPhotoCommentCell alloc] initWithStyle:0 reuseIdentifier:@"CommentsTableViewCell"];
    }

    [(PUPhotoSmilesCommentCell *)v10 setUsesCompactSeparators:[(PUCommentsTableDataController *)self shouldUseCompactCommentSeparators]];
    v13 = [(PUCommentsTableDataController *)self asset];
    [(PUPhotoSmilesCommentCell *)v10 setAsset:v13];

    v12 = [(PUCommentsTableDataController *)self _orderedComments];
    v14 = [v12 objectAtIndex:{objc_msgSend(v8, "row")}];
    [(PUPhotoSmilesCommentCell *)v10 setComment:v14];

    goto LABEL_13;
  }

  if (v9 != [(PUCommentsTableDataController *)self _postCommentSection])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUCommentsTableDataController.m" lineNumber:401 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = [v7 dequeueReusableCellWithIdentifier:@"PLPhotoPostCommentCell"];
  if (!v10)
  {
    v10 = [[PUPhotoPostCommentTextEntryCell alloc] initWithStyle:3 reuseIdentifier:@"PLPhotoPostCommentCell"];
    v16 = [(PUPhotoSmilesCommentCell *)v10 textEntryView];
    [v16 setDelegate:self];

    v17 = [(PUPhotoSmilesCommentCell *)v10 textEntryView];
    v18 = [v17 postButton];

    [v18 addTarget:self action:sel__validateAndPostComment_ forControlEvents:64];
  }

LABEL_14:

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(PUCommentsTableDataController *)self _smileCommentSection]== a4 || [(PUCommentsTableDataController *)self _assetOwnerCommentSection]== a4)
  {
    return 1;
  }

  if ([(PUCommentsTableDataController *)self _textCommentSection]!= a4)
  {
    return [(PUCommentsTableDataController *)self _postCommentSection]== a4;
  }

  v7 = [(PUCommentsTableDataController *)self managedAsset];
  v8 = [v7 cloudCommentsCount];

  return v8;
}

- (void)_validateAndPostComment:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_isPostingComment)
  {
    v6 = v4;
    [(PUCommentsTableDataController *)self _setIsPostingComment:1 postButton:v6];
    if ([(PUCommentsTableDataController *)self isEditing])
    {
      v7 = [(PUCommentsTableDataController *)self _commentText];
      v21 = 0;
      v8 = [(PUCommentsTableDataController *)self _canPostCommentWithText:v7 localizedFailureDescription:&v21];
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
        [(PUCommentsTableDataController *)self _postCommentWithText:v7 completionHandler:v19];
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

        v16 = [(PUCommentsTableDataController *)self delegate];
        [v16 commentsTableDataController:self presentViewController:v12];
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

- (void)_setIsPostingComment:(BOOL)a3 postButton:(id)a4
{
  self->_isPostingComment = a3;
  if (a4)
  {
    [a4 setEnabled:!a3];
  }
}

- (void)_fontCacheDidChange:(id)a3
{
  [(NSCache *)self->_commentsHeightCache removeAllObjects];
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)_postCommentWithText:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69C39E8];
  v8 = a3;
  v9 = [(PUCommentsTableDataController *)self asset];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PUCommentsTableDataController__postCommentWithText_completionHandler___block_invoke;
  v11[3] = &unk_1E7B7C748;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v7 addComment:v8 toAsset:v9 completionHandler:v11];
}

uint64_t __72__PUCommentsTableDataController__postCommentWithText_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setJustInsertedCommentUUID:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (BOOL)_canPostCommentWithText:(id)a3 localizedFailureDescription:(id *)a4
{
  v6 = [a3 length];
  if (v6 <= [MEMORY[0x1E69BE6A8] maxCharactersPerComment])
  {
    if (v6)
    {
      v9 = [(PUCommentsTableDataController *)self managedAsset];
      v10 = [v9 totalCommentsCount];

      if (v10 < [MEMORY[0x1E69BE6A8] maxCommentsPerAsset])
      {
        v8 = 0;
        v11 = 1;
        if (!a4)
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
  if (a4)
  {
LABEL_10:
    v12 = v8;
    *a4 = v8;
  }

LABEL_11:

  return v11;
}

- (id)_commentText
{
  v2 = [(PUCommentsTableDataController *)self _currentEntryView];
  v3 = [v2 trimmedText];

  return v3;
}

- (double)_heightForComment:(id)a3 forWidth:(double)a4 forInterfaceOrientation:(int64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v8 uuid];
    v12 = [v10 stringWithFormat:@"%@%f%d", v11, *&a4, (a5 - 3) < 2];

    v13 = [(NSCache *)self->_commentsHeightCache objectForKey:v12];
    v14 = v13;
    if (v13)
    {
      [v13 doubleValue];
      v16 = v15;
    }

    else
    {
      v17 = [(PUCommentsTableDataController *)self asset];
      [PUPhotoCommentCell heightForComment:v9 ofAsset:v17 forWidth:a5 forInterfaceOrientation:a4];
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

- (void)_scrollToComment:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = [(PUCommentsTableDataController *)self _orderedComments];
  v7 = [v10 fetchedObjects];
  v8 = [v7 indexOfObject:v6];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:{-[PUCommentsTableDataController _textCommentSection](self, "_textCommentSection")}];
    [(UITableView *)self->_tableView scrollToRowAtIndexPath:v9 atScrollPosition:2 animated:v4];
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
      v6 = [v5 textEntryView];

      v3 = v6;
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
  v2 = [(PUCommentsTableDataController *)self _orderedComments];
  v3 = [v2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isCaption] ^ 1;
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
    v8 = [(PUCommentsTableDataController *)self asset];
    v5 = [(PUCommentsTableDataController *)self _orderedFetchOptions];
    v6 = [v4 fetchLikesForAsset:v8 options:v5];
    orderedLikesFetchResult = self->_orderedLikesFetchResult;
    self->_orderedLikesFetchResult = v6;
  }
}

- (void)_updateOrderedComments
{
  if (!self->_orderedCommentsFetchResult)
  {
    v4 = MEMORY[0x1E6978668];
    v8 = [(PUCommentsTableDataController *)self asset];
    v5 = [(PUCommentsTableDataController *)self _orderedFetchOptions];
    v6 = [v4 fetchCommentsForAsset:v8 options:v5];
    orderedCommentsFetchResult = self->_orderedCommentsFetchResult;
    self->_orderedCommentsFetchResult = v6;
  }
}

- (id)_orderedFetchOptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(PUCommentsTableDataController *)self asset];
  v3 = [v2 photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"commentDate" ascending:1];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 setSortDescriptors:v6];

  return v4;
}

- (void)_invalidateCommentsAndLikes
{
  orderedCommentsFetchResult = self->_orderedCommentsFetchResult;
  self->_orderedCommentsFetchResult = 0;

  orderedLikesFetchResult = self->_orderedLikesFetchResult;
  self->_orderedLikesFetchResult = 0;
}

- (void)_setManagedAsset:(id)a3
{
  v5 = a3;
  managedAsset = self->_managedAsset;
  v9 = v5;
  if (managedAsset != v5)
  {
    if (managedAsset)
    {
      v7 = [MEMORY[0x1E69BE2F0] defaultCenter];
      [v7 removeCloudCommentsChangeObserver:self asset:self->_managedAsset];
    }

    objc_storeStrong(&self->_managedAsset, a3);
    if (self->_managedAsset)
    {
      v8 = [MEMORY[0x1E69BE2F0] defaultCenter];
      [v8 addCloudCommentsChangeObserver:self asset:self->_managedAsset];
    }
  }
}

- (BOOL)_isVideoAsset
{
  v2 = [(PUCommentsTableDataController *)self asset];
  if ([v2 isVideo] & 1) != 0 || (objc_msgSend(v2, "isStreamedVideo"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isAudio];
  }

  return v3;
}

- (void)_updateFirstResponder
{
  v4 = [(PUCommentsTableDataController *)self _currentEntryView];
  if ([(PUCommentsTableDataController *)self isEditing])
  {
    v3 = [v4 textView];
    [v3 becomeFirstResponder];
  }

  else
  {
    [v4 clearText];
    v3 = [v4 textView];
    [v3 resignFirstResponder];
  }
}

- (double)minimumHeight
{
  v3 = [(PUCommentsTableDataController *)self tableView];
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{-[PUCommentsTableDataController _assetOwnerCommentSection](self, "_assetOwnerCommentSection")}];
  [(PUCommentsTableDataController *)self tableView:v3 heightForRowAtIndexPath:v4];
  v6 = v5 + 0.0;

  v7 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{-[PUCommentsTableDataController _postCommentSection](self, "_postCommentSection")}];
  [(PUCommentsTableDataController *)self tableView:v3 heightForRowAtIndexPath:v7];
  v9 = v6 + v8;

  return v9;
}

- (void)setShouldUseCompactCommentSeparators:(BOOL)a3
{
  if (self->_shouldUseCompactCommentSeparators != a3)
  {
    self->_shouldUseCompactCommentSeparators = a3;
    v4 = [(PUCommentsTableDataController *)self tableView];
    [v4 reloadData];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    v4 = a3;
    self->_editing = a3;
    [(PUCommentsTableDataController *)self _updateFirstResponder];
    v6 = [(PUCommentsTableDataController *)self delegate];
    [v6 commentsTableDataController:self didChangeEditing:v4];
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  p_asset = &self->_asset;
  if (self->_asset != v5)
  {
    v9 = v5;
    objc_storeStrong(p_asset, a3);
    [(PUCommentsTableDataController *)self _invalidateCommentsAndLikes];
    v7 = [MEMORY[0x1E69BE670] systemPhotoLibrary];
    v8 = [(PHAsset *)v9 pl_managedAssetFromPhotoLibrary:v7];
    [(PUCommentsTableDataController *)self _setManagedAsset:v8];

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](p_asset, v5);
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69BE2F0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUCommentsTableDataController;
  [(PUCommentsTableDataController *)&v4 dealloc];
}

- (PUCommentsTableDataController)initWithTableView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PUCommentsTableDataController;
  v6 = [(PUCommentsTableDataController *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    commentsHeightCache = v6->_commentsHeightCache;
    v6->_commentsHeightCache = v7;

    objc_storeStrong(&v6->_tableView, a3);
    [(UITableView *)v6->_tableView setDelegate:v6];
    [(UITableView *)v6->_tableView setDataSource:v6];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v6 selector:sel__fontCacheDidChange_ name:*MEMORY[0x1E69BE208] object:0];
  }

  return v6;
}

@end