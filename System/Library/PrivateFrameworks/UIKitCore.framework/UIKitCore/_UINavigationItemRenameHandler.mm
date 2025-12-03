@interface _UINavigationItemRenameHandler
+ (id)handlerWithDidEndRenamingHandler:(id)handler;
- (BOOL)_canRename;
- (BOOL)_shouldEndRenamingWithTitle:(id)title;
- (UINavigationItem)associatedItem;
- (_UINavigationItemRenameHandler)init;
- (_UINavigationItemRenameHandler)initWithDidEndRenamingHandler:(id)handler;
- (id)_fileURLForRenaming;
- (id)_willBeginRenamingWithTitle:(id)title selectedRange:(_NSRange *)range;
- (void)_fileRenameDidEndWithFinalURL:(id)l;
- (void)_fileRenameDidFailWithError:(id)error;
@end

@implementation _UINavigationItemRenameHandler

- (_UINavigationItemRenameHandler)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Unable to initialize an instance of _UINavigationItemRenameHandler by calling init."];

  return 0;
}

- (_UINavigationItemRenameHandler)initWithDidEndRenamingHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationItemRenameHandler.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"didEndRenamingHandler != NULL"}];
  }

  v10.receiver = self;
  v10.super_class = _UINavigationItemRenameHandler;
  v6 = [(_UINavigationItemRenameHandler *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(_UINavigationItemRenameHandler *)v6 setDidEndRenamingHandler:handlerCopy];
  }

  return v7;
}

+ (id)handlerWithDidEndRenamingHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[self alloc] initWithDidEndRenamingHandler:handlerCopy];

  return v5;
}

- (UINavigationItem)associatedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedItem);

  return WeakRetained;
}

- (BOOL)_canRename
{
  _fileURLForRenaming = [(_UINavigationItemRenameHandler *)self _fileURLForRenaming];
  if (_fileURLForRenaming && (v4 = objc_opt_new(), [_fileURLForRenaming path], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isWritableFileAtPath:", v5), v5, v4, !v6))
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

- (id)_willBeginRenamingWithTitle:(id)title selectedRange:(_NSRange *)range
{
  titleCopy = title;
  willBeginRenamingHandler = self->_willBeginRenamingHandler;
  if (willBeginRenamingHandler)
  {
    v8 = willBeginRenamingHandler[2](willBeginRenamingHandler, titleCopy);

    v9 = [v8 length];
    range->location = 0;
    range->length = v9;
  }

  else
  {
    willBeginRenamingWithRangeHandler = self->_willBeginRenamingWithRangeHandler;
    if (willBeginRenamingWithRangeHandler)
    {
      willBeginRenamingWithRangeHandler[2](willBeginRenamingWithRangeHandler, titleCopy, range);
    }

    else
    {
      [_UINavigationItemRenameHandler defaultNavigationItem:0 willBeginRenamingWithSuggestedTitle:titleCopy selectedRange:range];
    }
    v8 = ;
  }

  return v8;
}

- (BOOL)_shouldEndRenamingWithTitle:(id)title
{
  shouldEndRenamingHandler = self->_shouldEndRenamingHandler;
  if (shouldEndRenamingHandler)
  {
    return shouldEndRenamingHandler[2](shouldEndRenamingHandler, title);
  }

  else
  {
    return [_UINavigationItemRenameHandler defaultNavigationItem:0 shouldEndRenamingWithTitle:title];
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

- (void)_fileRenameDidFailWithError:(id)error
{
  fileRenameDidFail = self->_fileRenameDidFail;
  if (fileRenameDidFail)
  {
    fileRenameDidFail[2](fileRenameDidFail, error);
  }
}

- (void)_fileRenameDidEndWithFinalURL:(id)l
{
  fileRenameDidEnd = self->_fileRenameDidEnd;
  if (fileRenameDidEnd)
  {
    fileRenameDidEnd[2](fileRenameDidEnd, l);
  }
}

@end