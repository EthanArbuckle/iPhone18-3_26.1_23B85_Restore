@interface _UINavigationItemRenameHandler
+ (id)handlerWithDidEndRenamingHandler:(id)a3;
- (BOOL)_canRename;
- (BOOL)_shouldEndRenamingWithTitle:(id)a3;
- (UINavigationItem)associatedItem;
- (_UINavigationItemRenameHandler)init;
- (_UINavigationItemRenameHandler)initWithDidEndRenamingHandler:(id)a3;
- (id)_fileURLForRenaming;
- (id)_willBeginRenamingWithTitle:(id)a3 selectedRange:(_NSRange *)a4;
- (void)_fileRenameDidEndWithFinalURL:(id)a3;
- (void)_fileRenameDidFailWithError:(id)a3;
@end

@implementation _UINavigationItemRenameHandler

- (_UINavigationItemRenameHandler)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Unable to initialize an instance of _UINavigationItemRenameHandler by calling init."];

  return 0;
}

- (_UINavigationItemRenameHandler)initWithDidEndRenamingHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UINavigationItemRenameHandler.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"didEndRenamingHandler != NULL"}];
  }

  v10.receiver = self;
  v10.super_class = _UINavigationItemRenameHandler;
  v6 = [(_UINavigationItemRenameHandler *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(_UINavigationItemRenameHandler *)v6 setDidEndRenamingHandler:v5];
  }

  return v7;
}

+ (id)handlerWithDidEndRenamingHandler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDidEndRenamingHandler:v4];

  return v5;
}

- (UINavigationItem)associatedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedItem);

  return WeakRetained;
}

- (BOOL)_canRename
{
  v3 = [(_UINavigationItemRenameHandler *)self _fileURLForRenaming];
  if (v3 && (v4 = objc_opt_new(), [v3 path], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isWritableFileAtPath:", v5), v5, v4, !v6))
  {
    v9 = 0;
  }

  else
  {
    shouldBeginRenamingHandler = self->_shouldBeginRenamingHandler;
    if (shouldBeginRenamingHandler)
    {
      v8 = shouldBeginRenamingHandler[2]();
    }

    else
    {
      v8 = [_UINavigationItemRenameHandler defaultNavigationItemShouldBeginRenaming:0 forValidDelegate:1];
    }

    v9 = v8;
  }

  return v9;
}

- (id)_willBeginRenamingWithTitle:(id)a3 selectedRange:(_NSRange *)a4
{
  v6 = a3;
  willBeginRenamingHandler = self->_willBeginRenamingHandler;
  if (willBeginRenamingHandler)
  {
    v8 = willBeginRenamingHandler[2](willBeginRenamingHandler, v6);

    v9 = [v8 length];
    a4->location = 0;
    a4->length = v9;
  }

  else
  {
    willBeginRenamingWithRangeHandler = self->_willBeginRenamingWithRangeHandler;
    if (willBeginRenamingWithRangeHandler)
    {
      willBeginRenamingWithRangeHandler[2](willBeginRenamingWithRangeHandler, v6, a4);
    }

    else
    {
      [_UINavigationItemRenameHandler defaultNavigationItem:0 willBeginRenamingWithSuggestedTitle:v6 selectedRange:a4];
    }
    v8 = ;
  }

  return v8;
}

- (BOOL)_shouldEndRenamingWithTitle:(id)a3
{
  shouldEndRenamingHandler = self->_shouldEndRenamingHandler;
  if (shouldEndRenamingHandler)
  {
    return shouldEndRenamingHandler[2](shouldEndRenamingHandler, a3);
  }

  else
  {
    return [_UINavigationItemRenameHandler defaultNavigationItem:0 shouldEndRenamingWithTitle:a3];
  }
}

- (id)_fileURLForRenaming
{
  fileURLForRenaming = self->_fileURLForRenaming;
  if (fileURLForRenaming)
  {
    fileURLForRenaming = (fileURLForRenaming)[2](fileURLForRenaming, a2);
    v2 = vars8;
  }

  return fileURLForRenaming;
}

- (void)_fileRenameDidFailWithError:(id)a3
{
  fileRenameDidFail = self->_fileRenameDidFail;
  if (fileRenameDidFail)
  {
    fileRenameDidFail[2](fileRenameDidFail, a3);
  }
}

- (void)_fileRenameDidEndWithFinalURL:(id)a3
{
  fileRenameDidEnd = self->_fileRenameDidEnd;
  if (fileRenameDidEnd)
  {
    fileRenameDidEnd[2](fileRenameDidEnd, a3);
  }
}

@end