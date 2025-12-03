@interface SBStatusBarStateProvider
- (SBStatusBarStateAggregator)stateAggregator;
- (SBStatusBarStateProvider)init;
- (void)_didChangeDoubleHeightStatusStringForStyle:(int64_t)style;
- (void)beginCoalescentBlock;
- (void)dealloc;
- (void)endCoalescentBlock;
- (void)getStatusBarData:(id *)data;
- (void)statusBarStateAggregator:(id)aggregator didUpdateNonItemData:(id *)data;
- (void)statusBarStateAggregator:(id)aggregator didVisitItem:(int)item withUpdates:(BOOL)updates toData:(id *)data;
- (void)statusBarStateAggregatorDidFinishPost:(id)post withData:(id *)data actions:(int)actions;
- (void)updateStatusBarItem:(int)item;
@end

@implementation SBStatusBarStateProvider

- (void)beginCoalescentBlock
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBStatusBarStateProvider.m" lineNumber:75 description:{@"calls to %s are not allowed from within a post", "-[SBStatusBarStateProvider beginCoalescentBlock]"}];
}

- (void)endCoalescentBlock
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBStatusBarStateProvider.m" lineNumber:81 description:{@"unbalanced call to %s", "-[SBStatusBarStateProvider endCoalescentBlock]"}];

  *a4 = *a3;
}

- (SBStatusBarStateProvider)init
{
  v7.receiver = self;
  v7.super_class = SBStatusBarStateProvider;
  v2 = [(SBStatusBarStateProvider *)&v7 init];
  if (v2)
  {
    statusBarStateAggregator = [SBApp statusBarStateAggregator];
    [statusBarStateAggregator addPostingObserver:v2];
    objc_storeWeak(&v2->_stateAggregator, statusBarStateAggregator);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateObservers = v2->_stateObservers;
    v2->_stateObservers = weakObjectsHashTable;
  }

  return v2;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_stateAggregator);
  [WeakRetained removePostingObserver:self];

  v4.receiver = self;
  v4.super_class = SBStatusBarStateProvider;
  [(SBStatusBarStateProvider *)&v4 dealloc];
}

- (void)getStatusBarData:(id *)data
{
  if (data)
  {
    memcpy(data, &self->_aggregatorData, sizeof($6C45178016D353444451090973A2A97F));

    [(SBStatusBarStateProvider *)self _composePostDataFromAggregatorData:data];
  }
}

- (void)updateStatusBarItem:(int)item
{
  v3 = *&item;
  [(SBStatusBarStateProvider *)self beginCoalescentBlock];
  if ([(SBStatusBarStateProvider *)self _shouldPostForVisitedItem:v3 withUpdates:0 toAggregatorData:&self->_aggregatorData lastPost:&self->_lastPost])
  {
    self->_itemNeedsPost[v3] = 1;
    self->_anyItemNeedsPost = 1;
  }

  [(SBStatusBarStateProvider *)self endCoalescentBlock];
}

- (void)_didChangeDoubleHeightStatusStringForStyle:(int64_t)style
{
  [(SBStatusBarStateProvider *)self beginCoalescentBlock];
  stylesWithDetailUpdates = self->_stylesWithDetailUpdates;
  if (!stylesWithDetailUpdates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_stylesWithDetailUpdates;
    self->_stylesWithDetailUpdates = v6;

    stylesWithDetailUpdates = self->_stylesWithDetailUpdates;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [(NSMutableArray *)stylesWithDetailUpdates addObject:v8];

  [(SBStatusBarStateProvider *)self endCoalescentBlock];
}

- (void)statusBarStateAggregator:(id)aggregator didVisitItem:(int)item withUpdates:(BOOL)updates toData:(id *)data
{
  if ([(SBStatusBarStateProvider *)self _shouldPostForVisitedItem:*&item withUpdates:updates toAggregatorData:data lastPost:&self->_lastPost])
  {
    self->_itemNeedsPost[item] = 1;
    self->_anyItemNeedsPost = 1;
  }
}

- (void)statusBarStateAggregator:(id)aggregator didUpdateNonItemData:(id *)data
{
  if ([(SBStatusBarStateProvider *)self _shouldPostForUpdatesToNonItemData:data])
  {
    self->_nonItemDataNeedsPost = 1;
  }
}

- (void)statusBarStateAggregatorDidFinishPost:(id)post withData:(id *)data actions:(int)actions
{
  memcpy(&self->_aggregatorData, data, sizeof(self->_aggregatorData));
  self->_aggregatorActions = actions;

  [(SBStatusBarStateProvider *)self endCoalescentBlock];
}

- (SBStatusBarStateAggregator)stateAggregator
{
  WeakRetained = objc_loadWeakRetained(&self->_stateAggregator);

  return WeakRetained;
}

@end