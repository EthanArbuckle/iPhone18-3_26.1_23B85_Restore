@interface TSUMemoryWatcher
- (TSUMemoryWatcher)initWithFlushingManager:(id)manager;
- (void)_periodicallySimulateMemoryWarning:(id)warning;
- (void)_simulateMemoryWarning:(id)warning;
- (void)beginObserving;
- (void)dealloc;
@end

@implementation TSUMemoryWatcher

- (TSUMemoryWatcher)initWithFlushingManager:(id)manager
{
  v5.receiver = self;
  v5.super_class = TSUMemoryWatcher;
  result = [(TSUMemoryWatcher *)&v5 init];
  if (result)
  {
    result->_flushingManager = manager;
  }

  return result;
}

- (void)dealloc
{
  [(TSUMemoryWatcher *)self stopObserving];
  v3.receiver = self;
  v3.super_class = TSUMemoryWatcher;
  [(TSUMemoryWatcher *)&v3 dealloc];
}

- (void)beginObserving
{
  if (!self->_going)
  {
    *&self->_going = 1;
    v3 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
    if (v3 >= 1)
    {
      v4 = MEMORY[0x277CCACC8];
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:v3];

      [v4 detachNewThreadSelector:sel__periodicallySimulateMemoryWarning_ toTarget:self withObject:v5];
    }
  }
}

- (void)_periodicallySimulateMemoryWarning:(id)warning
{
  v5 = objc_opt_new();
  integerValue = [warning integerValue];
  NSLog(@"%@ enabled, simulating UIKit memory warning every %ld seconds", @"TSUSimulateMemoryWarningsEvery", integerValue);
  while (!self->_stop)
  {
    [v5 drain];
    v5 = objc_opt_new();
    [MEMORY[0x277CCACC8] sleepForTimeInterval:integerValue];
    [(TSUMemoryWatcher *)self performSelectorOnMainThread:sel__simulateMemoryWarning_ withObject:0 waitUntilDone:1];
  }

  [v5 drain];
}

- (void)_simulateMemoryWarning:(id)warning
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76670];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];

  [defaultCenter postNotificationName:v4 object:mEMORY[0x277D75128]];
}

@end