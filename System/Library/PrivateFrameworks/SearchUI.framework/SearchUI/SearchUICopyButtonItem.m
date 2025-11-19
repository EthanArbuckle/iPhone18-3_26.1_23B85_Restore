@interface SearchUICopyButtonItem
+ (double)offsetSinceLastPasteboardUpdate;
+ (void)pasteboardWasUpdatedWithObject:(id)a3;
- (BOOL)pasteboardStringMatches;
- (SearchUICopyButtonItem)initWithSFButtonItem:(id)a3;
- (id)stateSymbolTransition;
- (void)didUpdatePasteboard:(id)a3;
- (void)setStatus:(unint64_t)a3;
@end

@implementation SearchUICopyButtonItem

- (SearchUICopyButtonItem)initWithSFButtonItem:(id)a3
{
  v8.receiver = self;
  v8.super_class = SearchUICopyButtonItem;
  v3 = [(SearchUIButtonItem *)&v8 initWithSFButtonItem:a3];
  if (v3)
  {
    v4 = *MEMORY[0x1E69DE270];
    +[SearchUICopyButtonItem offsetSinceLastPasteboardUpdate];
    if (v5 < 2.0 && [(SearchUICopyButtonItem *)v3 pasteboardStringMatches])
    {
      [(SearchUICopyButtonItem *)v3 setStatus:1];
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v3 selector:sel_didUpdatePasteboard_ name:v4 object:0];
  }

  return v3;
}

- (void)setStatus:(unint64_t)a3
{
  if ([(SearchUIButtonItem *)self status]!= a3)
  {
    v5 = self->_statusTimer;
    v6 = v5;
    if (v5)
    {
      [(NSTimer *)v5 invalidate];
      statusTimer = self->_statusTimer;
      self->_statusTimer = 0;
    }

    if (a3 == 1)
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
      [(SearchUIButtonItem *)&v13 setStatus:a3];
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
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E6982288] replaceUpUpTransition];
  }

  return v2;
}

- (BOOL)pasteboardStringMatches
{
  v3 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v4 = [v3 string];

  v5 = [(SearchUIButtonItem *)self command];
  v6 = [v5 copyableItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 copyableString];
    v8 = [v7 isEqualToString:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didUpdatePasteboard:(id)a3
{
  [SearchUICopyButtonItem pasteboardWasUpdatedWithObject:0];
  [(SearchUICopyButtonItem *)self setStatus:[(SearchUICopyButtonItem *)self pasteboardStringMatches]];
  v4 = [(SearchUIButtonItem *)self delegate];
  [v4 stateDidChangeForButtonItem:self];
}

+ (void)pasteboardWasUpdatedWithObject:(id)a3
{
  v7 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x1E695DF00] now];
  [v5 timeIntervalSince1970];
  sLastCopyTimestamp = v6;

  objc_sync_exit(v4);
}

+ (double)offsetSinceLastPasteboardUpdate
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E695DF00] now];
  [v3 timeIntervalSince1970];
  v5 = v4 - *&sLastCopyTimestamp;

  objc_sync_exit(v2);
  return v5;
}

@end