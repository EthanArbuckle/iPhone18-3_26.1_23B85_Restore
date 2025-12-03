@interface SearchUICopyButtonItem
+ (double)offsetSinceLastPasteboardUpdate;
+ (void)pasteboardWasUpdatedWithObject:(id)object;
- (BOOL)pasteboardStringMatches;
- (SearchUICopyButtonItem)initWithSFButtonItem:(id)item;
- (id)stateSymbolTransition;
- (void)didUpdatePasteboard:(id)pasteboard;
- (void)setStatus:(unint64_t)status;
@end

@implementation SearchUICopyButtonItem

- (SearchUICopyButtonItem)initWithSFButtonItem:(id)item
{
  v8.receiver = self;
  v8.super_class = SearchUICopyButtonItem;
  v3 = [(SearchUIButtonItem *)&v8 initWithSFButtonItem:item];
  if (v3)
  {
    v4 = *MEMORY[0x1E69DE270];
    +[SearchUICopyButtonItem offsetSinceLastPasteboardUpdate];
    if (v5 < 2.0 && [(SearchUICopyButtonItem *)v3 pasteboardStringMatches])
    {
      [(SearchUICopyButtonItem *)v3 setStatus:1];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_didUpdatePasteboard_ name:v4 object:0];
  }

  return v3;
}

- (void)setStatus:(unint64_t)status
{
  if ([(SearchUIButtonItem *)self status]!= status)
  {
    v5 = self->_statusTimer;
    v6 = v5;
    if (v5)
    {
      [(NSTimer *)v5 invalidate];
      statusTimer = self->_statusTimer;
      self->_statusTimer = 0;
    }

    if (status == 1)
    {
      +[SearchUICopyButtonItem offsetSinceLastPasteboardUpdate];
      if (v8 < 2.0)
      {
        v9 = v8;
        v17.receiver = self;
        v17.super_class = SearchUICopyButtonItem;
        [(SearchUIButtonItem *)&v17 setStatus:1];
        objc_initWeak(&location, self);
        v10 = MEMORY[0x1E695DFF0];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __36__SearchUICopyButtonItem_setStatus___block_invoke;
        v14[3] = &unk_1E85B2F10;
        objc_copyWeak(&v15, &location);
        v14[4] = self;
        v11 = [v10 scheduledTimerWithTimeInterval:0 repeats:v14 block:2.0 - v9];
        v12 = self->_statusTimer;
        self->_statusTimer = v11;

        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v13.receiver = self;
      v13.super_class = SearchUICopyButtonItem;
      [(SearchUIButtonItem *)&v13 setStatus:status];
    }
  }
}

void __36__SearchUICopyButtonItem_setStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setStatus:0];
  v2 = [*(a1 + 32) delegate];
  [v2 stateDidChangeForButtonItem:*(a1 + 32)];
}

- (id)stateSymbolTransition
{
  if ([(SearchUIButtonItem *)self status]== 1)
  {
    replaceUpUpTransition = 0;
  }

  else
  {
    replaceUpUpTransition = [MEMORY[0x1E6982288] replaceUpUpTransition];
  }

  return replaceUpUpTransition;
}

- (BOOL)pasteboardStringMatches
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  string = [generalPasteboard string];

  command = [(SearchUIButtonItem *)self command];
  copyableItem = [command copyableItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyableString = [copyableItem copyableString];
    v8 = [copyableString isEqualToString:string];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didUpdatePasteboard:(id)pasteboard
{
  [SearchUICopyButtonItem pasteboardWasUpdatedWithObject:0];
  [(SearchUICopyButtonItem *)self setStatus:[(SearchUICopyButtonItem *)self pasteboardStringMatches]];
  delegate = [(SearchUIButtonItem *)self delegate];
  [delegate stateDidChangeForButtonItem:self];
}

+ (void)pasteboardWasUpdatedWithObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [MEMORY[0x1E695DF00] now];
  [v5 timeIntervalSince1970];
  sLastCopyTimestamp = v6;

  objc_sync_exit(selfCopy);
}

+ (double)offsetSinceLastPasteboardUpdate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x1E695DF00] now];
  [v3 timeIntervalSince1970];
  v5 = v4 - *&sLastCopyTimestamp;

  objc_sync_exit(selfCopy);
  return v5;
}

@end