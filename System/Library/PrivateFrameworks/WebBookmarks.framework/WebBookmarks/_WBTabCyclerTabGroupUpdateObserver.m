@interface _WBTabCyclerTabGroupUpdateObserver
+ (id)observeTabGroupManager:(id)a3 waitForTabGroups:(BOOL)a4 handler:(id)a5;
- (_WBTabCyclerTabGroupUpdateObserver)initWithTabGroupManager:(id)a3 handler:(id)a4;
- (void)_timeout;
- (void)startObserving;
- (void)tabGroupManagerDidUpdateTabGroups:(id)a3;
@end

@implementation _WBTabCyclerTabGroupUpdateObserver

+ (id)observeTabGroupManager:(id)a3 waitForTabGroups:(BOOL)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[_WBTabCyclerTabGroupUpdateObserver alloc] initWithTabGroupManager:v8 handler:v7];

  v9->_waitForTabGroups = a4;
  [(_WBTabCyclerTabGroupUpdateObserver *)v9 startObserving];

  return v9;
}

- (_WBTabCyclerTabGroupUpdateObserver)initWithTabGroupManager:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _WBTabCyclerTabGroupUpdateObserver;
  v9 = [(_WBTabCyclerTabGroupUpdateObserver *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tabGroupManager, a3);
    v11 = MEMORY[0x2743D6830](v8);
    handler = v10->_handler;
    v10->_handler = v11;

    v13 = v10;
  }

  else
  {
    v8[2](v8, 0);
  }

  return v10;
}

- (void)startObserving
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52___WBTabCyclerTabGroupUpdateObserver_startObserving__block_invoke;
  v2[3] = &unk_279E75450;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_timeout
{
  v3 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "Timed out while waiting for Tab Group updates", v4, 2u);
  }

  [(WBTabGroupManager *)self->_tabGroupManager removeTabGroupObserver:self];
  (*(self->_handler + 2))();
}

- (void)tabGroupManagerDidUpdateTabGroups:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Received notification of Tab Group updates", buf, 2u);
  }

  if (self->_waitForTabGroups && ([v4 allNamedTabGroupsUnsorted], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Expected tab groups after update but none were found. Continuing to wait.", v9, 2u);
    }
  }

  else
  {
    [(NSTimer *)self->_timeoutTimer invalidate];
    [(WBTabGroupManager *)self->_tabGroupManager removeTabGroupObserver:self];
    (*(self->_handler + 2))();
  }
}

@end