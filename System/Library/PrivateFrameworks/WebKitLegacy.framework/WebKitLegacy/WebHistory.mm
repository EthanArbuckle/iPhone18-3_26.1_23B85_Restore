@interface WebHistory
+ (WebHistory)optionalSharedHistory;
+ (void)_setVisitedLinkTrackingEnabled:(BOOL)a3;
+ (void)setOptionalSharedHistory:(WebHistory *)history;
- (BOOL)loadFromURL:(NSURL *)URL error:(NSError *)error;
- (BOOL)saveToURL:(NSURL *)URL error:(NSError *)error;
- (WebHistory)init;
- (void)_sendNotification:(id)a3 entries:(id)a4;
- (void)_visitedURL:(id)a3 withTitle:(id)a4 method:(id)a5 wasFailure:(BOOL)a6;
- (void)addItems:(NSArray *)newItems;
- (void)dealloc;
- (void)removeAllItems;
- (void)removeItems:(NSArray *)items;
@end

@implementation WebHistory

+ (WebHistory)optionalSharedHistory
{
  if (byte_1ED6A6201 == 1)
  {
    return qword_1ED6A6210;
  }

  result = 0;
  qword_1ED6A6210 = 0;
  byte_1ED6A6201 = 1;
  return result;
}

+ (void)setOptionalSharedHistory:(WebHistory *)history
{
  if (byte_1ED6A6201 == 1)
  {
    v4 = qword_1ED6A6210;
    if (qword_1ED6A6210 == history)
    {
      return;
    }
  }

  else
  {
    v4 = 0;
    qword_1ED6A6210 = 0;
    byte_1ED6A6201 = 1;
    if (!history)
    {
      return;
    }
  }

  if (history)
  {
    a1 = history;
    v4 = qword_1ED6A6210;
  }

  qword_1ED6A6210 = history;
  if (v4)
  {
  }

  if (s_shouldTrackVisitedLinks == (history != 0) || (s_shouldTrackVisitedLinks = history != 0, history))
  {
  }

  else
  {
    a1 = WebVisitedLinkStore::removeAllVisitedLinks(a1, a2);
  }

  WebVisitedLinkStore::removeAllVisitedLinks(a1, a2);
}

- (WebHistory)init
{
  v5.receiver = self;
  v5.super_class = WebHistory;
  v2 = [(WebHistory *)&v5 init];
  if (v2)
  {
    v2->_historyPrivate = objc_alloc_init(WebHistoryPrivate);
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_timeZoneChanged_ name:*MEMORY[0x1E695DA68] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695DA68] object:0];

  v4.receiver = self;
  v4.super_class = WebHistory;
  [(WebHistory *)&v4 dealloc];
}

- (void)_sendNotification:(id)a3 entries:(id)a4
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = WebHistoryItemsKey;
  v5[0] = a4;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  WebThreadPostNotification();
}

- (void)removeItems:(NSArray *)items
{
  if ([(WebHistoryPrivate *)self->_historyPrivate removeItems:?])
  {
    v5 = WebHistoryItemsRemovedNotification;

    [(WebHistory *)self _sendNotification:v5 entries:items];
  }
}

- (void)removeAllItems
{
  v3 = [(WebHistoryPrivate *)self->_historyPrivate allItems];
  if ([(WebHistoryPrivate *)self->_historyPrivate removeAllItems])
  {
    v4 = WebHistoryAllItemsRemovedNotification;

    [(WebHistory *)self _sendNotification:v4 entries:v3];
  }
}

- (void)addItems:(NSArray *)newItems
{
  [(WebHistoryPrivate *)self->_historyPrivate addItems:?];
  v5 = WebHistoryItemsAddedNotification;

  [(WebHistory *)self _sendNotification:v5 entries:newItems];
}

- (BOOL)loadFromURL:(NSURL *)URL error:(NSError *)error
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(WebHistoryPrivate *)self->_historyPrivate loadFromURL:URL collectDiscardedItemsInto:v7 error:error];
  if (v8)
  {
    WebThreadPostNotification();
    if ([v7 count])
    {
      [(WebHistory *)self _sendNotification:WebHistoryItemsDiscardedWhileLoadingNotification entries:v7];
    }
  }

  if (v7)
  {
  }

  return v8;
}

- (BOOL)saveToURL:(NSURL *)URL error:(NSError *)error
{
  v4 = [(WebHistoryPrivate *)self->_historyPrivate saveToURL:URL error:error];
  if (v4)
  {
    v5 = v4;
    WebThreadPostNotification();
    LOBYTE(v4) = v5;
  }

  return v4;
}

+ (void)_setVisitedLinkTrackingEnabled:(BOOL)a3
{
  if (s_shouldTrackVisitedLinks != a3)
  {
    s_shouldTrackVisitedLinks = a3;
    if (!a3)
    {
      WebVisitedLinkStore::removeAllVisitedLinks(a1, a2);
    }
  }
}

- (void)_visitedURL:(id)a3 withTitle:(id)a4 method:(id)a5 wasFailure:(BOOL)a6
{
  v16[1] = *MEMORY[0x1E69E9840];
  v9 = [(WebHistoryPrivate *)self->_historyPrivate visitedURL:a3 withTitle:a4, a5];
  *(*(v9[1] + 8) + 136) = a6;
  v10 = v9[1];
  v11 = *(v10 + 24);
  *(v10 + 24) = 0;
  if (v11)
  {
    v12 = *(v11 + 3);
    v13 = *v11;
    if (v12)
    {
      v14 = 8 * v12;
      do
      {
        v15 = *v13;
        *v13 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v8);
        }

        v13 = (v13 + 8);
        v14 -= 8;
      }

      while (v14);
      v13 = *v11;
    }

    if (v13)
    {
      *v11 = 0;
      *(v11 + 2) = 0;
      WTF::fastFree(v13, v8);
    }

    WTF::fastFree(v11, v8);
  }

  v16[0] = v9;
  -[WebHistory _sendNotification:entries:](self, "_sendNotification:entries:", WebHistoryItemsAddedNotification, [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1]);
}

@end