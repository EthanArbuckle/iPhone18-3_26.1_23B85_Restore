@interface WBTabCyclerTabGroupUpdateObserver
@end

@implementation WBTabCyclerTabGroupUpdateObserver

void __52___WBTabCyclerTabGroupUpdateObserver_startObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5[0] = 0;
      _os_log_impl(&dword_272C20000, v2, OS_LOG_TYPE_INFO, "Beginning to observe Tab Group updates", v5, 2u);
    }

    [WeakRetained[2] addTabGroupObserver:WeakRetained];
    v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:WeakRetained target:sel__timeout selector:0 userInfo:0 repeats:300.0];
    v4 = WeakRetained[3];
    WeakRetained[3] = v3;
  }
}

@end