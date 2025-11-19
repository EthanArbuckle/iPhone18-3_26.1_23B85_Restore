@interface SBStatusBarStateProvider
- (SBStatusBarStateAggregator)stateAggregator;
- (SBStatusBarStateProvider)init;
- (void)_didChangeDoubleHeightStatusStringForStyle:(int64_t)a3;
- (void)beginCoalescentBlock;
- (void)dealloc;
- (void)endCoalescentBlock;
- (void)getStatusBarData:(id *)a3;
- (void)statusBarStateAggregator:(id)a3 didUpdateNonItemData:(id *)a4;
- (void)statusBarStateAggregator:(id)a3 didVisitItem:(int)a4 withUpdates:(BOOL)a5 toData:(id *)a6;
- (void)statusBarStateAggregatorDidFinishPost:(id)a3 withData:(id *)a4 actions:(int)a5;
- (void)updateStatusBarItem:(int)a3;
@end

@implementation SBStatusBarStateProvider

- (void)beginCoalescentBlock
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStatusBarStateProvider.m" lineNumber:75 description:{@"calls to %s are not allowed from within a post", "-[SBStatusBarStateProvider beginCoalescentBlock]"}];
}

- (void)endCoalescentBlock
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBStatusBarStateProvider.m" lineNumber:81 description:{@"unbalanced call to %s", "-[SBStatusBarStateProvider endCoalescentBlock]"}];

  *a4 = *a3;
}

- (SBStatusBarStateProvider)init
{
  v7.receiver = self;
  v7.super_class = SBStatusBarStateProvider;
  v2 = [(SBStatusBarStateProvider *)&v7 init];
  if (v2)
  {
    v3 = [SBApp statusBarStateAggregator];
    [v3 addPostingObserver:v2];
    objc_storeWeak(&v2->_stateAggregator, v3);
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateObservers = v2->_stateObservers;
    v2->_stateObservers = v4;
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

- (void)getStatusBarData:(id *)a3
{
  if (a3)
  {
    memcpy(a3, &self->_aggregatorData, sizeof($6C45178016D353444451090973A2A97F));

    [(SBStatusBarStateProvider *)self _composePostDataFromAggregatorData:a3];
  }
}

- (void)updateStatusBarItem:(int)a3
{
  v3 = *&a3;
  [(SBStatusBarStateProvider *)self beginCoalescentBlock];
  if ([(SBStatusBarStateProvider *)self _shouldPostForVisitedItem:v3 withUpdates:0 toAggregatorData:&self->_aggregatorData lastPost:&self->_lastPost])
  {
    self->_itemNeedsPost[v3] = 1;
    self->_anyItemNeedsPost = 1;
  }

  [(SBStatusBarStateProvider *)self endCoalescentBlock];
}

- (void)_didChangeDoubleHeightStatusStringForStyle:(int64_t)a3
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

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableArray *)stylesWithDetailUpdates addObject:v8];

  [(SBStatusBarStateProvider *)self endCoalescentBlock];
}

- (void)statusBarStateAggregator:(id)a3 didVisitItem:(int)a4 withUpdates:(BOOL)a5 toData:(id *)a6
{
  if ([(SBStatusBarStateProvider *)self _shouldPostForVisitedItem:*&a4 withUpdates:a5 toAggregatorData:a6 lastPost:&self->_lastPost])
  {
    self->_itemNeedsPost[a4] = 1;
    self->_anyItemNeedsPost = 1;
  }
}

- (void)statusBarStateAggregator:(id)a3 didUpdateNonItemData:(id *)a4
{
  if ([(SBStatusBarStateProvider *)self _shouldPostForUpdatesToNonItemData:a4])
  {
    self->_nonItemDataNeedsPost = 1;
  }
}

- (void)statusBarStateAggregatorDidFinishPost:(id)a3 withData:(id *)a4 actions:(int)a5
{
  memcpy(&self->_aggregatorData, a4, sizeof(self->_aggregatorData));
  self->_aggregatorActions = a5;

  [(SBStatusBarStateProvider *)self endCoalescentBlock];
}

- (SBStatusBarStateAggregator)stateAggregator
{
  WeakRetained = objc_loadWeakRetained(&self->_stateAggregator);

  return WeakRetained;
}

@end