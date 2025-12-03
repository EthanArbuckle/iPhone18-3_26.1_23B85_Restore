@interface WBSSmartHistorySearcher
- (WBSSmartHistorySearcher)initWithTopics:(id)topics;
- (id)_searchItemsInTopic:(id)topic forText:(id)text options:(unint64_t)options;
- (id)_searchTopicsForText:(id)text options:(unint64_t)options;
- (void)performSearchWithText:(id)text options:(unint64_t)options completionHandler:(id)handler;
@end

@implementation WBSSmartHistorySearcher

- (WBSSmartHistorySearcher)initWithTopics:(id)topics
{
  topicsCopy = topics;
  v10.receiver = self;
  v10.super_class = WBSSmartHistorySearcher;
  v5 = [(WBSSmartHistorySearcher *)&v10 init];
  if (v5)
  {
    v6 = [topicsCopy copy];
    topics = v5->_topics;
    v5->_topics = v6;

    v8 = v5;
  }

  return v5;
}

- (id)_searchItemsInTopic:(id)topic forText:(id)text options:(unint64_t)options
{
  v31 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  textCopy = text;
  [MEMORY[0x1E695DF70] array];
  v24 = v23 = topicCopy;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [topicCopy historyItems];
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        title = [v13 title];
        if (!title || (v15 = title, [v13 title], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "rangeOfString:options:", textCopy, options), v16, v15, v17 == 0x7FFFFFFFFFFFFFFFLL))
        {
          urlString = [v13 urlString];
          if (!urlString)
          {
            continue;
          }

          v19 = urlString;
          urlString2 = [v13 urlString];
          v21 = [urlString2 rangeOfString:textCopy options:options];

          if (v21 == 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }
        }

        [v24 addObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  return v24;
}

- (id)_searchTopicsForText:(id)text options:(unint64_t)options
{
  v25 = *MEMORY[0x1E69E9840];
  textCopy = text;
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  obj = self->_topics;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        title = [v12 title];
        v14 = [title rangeOfString:textCopy options:options];

        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = [(WBSSmartHistorySearcher *)selfCopy _searchItemsInTopic:v12 forText:textCopy options:options];
          if ([v15 count])
          {
            v16 = [[WBSHistoryTopicTag alloc] initWithTag:v12 historyItems:v15];
            [array addObject:v16];
          }
        }

        else
        {
          [array addObject:v12];
        }
      }

      v9 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return array;
}

- (void)performSearchWithText:(id)text options:(unint64_t)options completionHandler:(id)handler
{
  textCopy = text;
  handlerCopy = handler;
  if ([textCopy length])
  {
    objc_initWeak(&location, self);
    searchQueue = self->_searchQueue;
    if (!searchQueue)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.%@.%p.searchQueue", objc_opt_class(), self];
      v12 = dispatch_queue_create([v11 UTF8String], 0);
      v13 = self->_searchQueue;
      self->_searchQueue = v12;

      searchQueue = self->_searchQueue;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__WBSSmartHistorySearcher_performSearchWithText_options_completionHandler___block_invoke;
    block[3] = &unk_1E7FCAA38;
    objc_copyWeak(v17, &location);
    v16 = handlerCopy;
    v15 = textCopy;
    v17[1] = options;
    dispatch_async(searchQueue, block);

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, self->_topics);
  }
}

void __75__WBSSmartHistorySearcher_performSearchWithText_options_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _searchTopicsForText:*(a1 + 32) options:*(a1 + 56)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

@end