@interface PUAssetExplorerAnalytics
- (PUAssetExplorerAnalytics)init;
- (void)sendEvent:(id)event view:(unint64_t)view source:(unint64_t)source currentAssetCount:(int64_t)count;
@end

@implementation PUAssetExplorerAnalytics

- (void)sendEvent:(id)event view:(unint64_t)view source:(unint64_t)source currentAssetCount:(int64_t)count
{
  v16[4] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (([(NSMutableSet *)self->_eventsSent containsObject:eventCopy]& 1) == 0)
  {
    v16[0] = eventCopy;
    v15[0] = @"eventName";
    v15[1] = @"view";
    if (view > 2)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1E7B7D490[view];
    }

    v16[1] = v11;
    v15[2] = @"source";
    if (source > 3)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = off_1E7B7D4A8[source];
    }

    v16[2] = v12;
    v15[3] = @"currentAssetCount";
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v16[3] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

    AnalyticsSendEvent();
    [(NSMutableSet *)self->_eventsSent addObject:eventCopy];
  }
}

- (PUAssetExplorerAnalytics)init
{
  v6.receiver = self;
  v6.super_class = PUAssetExplorerAnalytics;
  v2 = [(PUAssetExplorerAnalytics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    eventsSent = v2->_eventsSent;
    v2->_eventsSent = v3;
  }

  return v2;
}

@end