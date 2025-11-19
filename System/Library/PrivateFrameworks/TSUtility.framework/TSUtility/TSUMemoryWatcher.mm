@interface TSUMemoryWatcher
- (TSUMemoryWatcher)initWithFlushingManager:(id)a3;
- (void)_periodicallySimulateMemoryWarning:(id)a3;
- (void)_simulateMemoryWarning:(id)a3;
- (void)beginObserving;
- (void)dealloc;
@end

@implementation TSUMemoryWatcher

- (TSUMemoryWatcher)initWithFlushingManager:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSUMemoryWatcher;
  result = [(TSUMemoryWatcher *)&v5 init];
  if (result)
  {
    result->_flushingManager = a3;
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

- (void)_periodicallySimulateMemoryWarning:(id)a3
{
  v5 = objc_opt_new();
  v6 = [a3 integerValue];
  NSLog(@"%@ enabled, simulating UIKit memory warning every %ld seconds", @"TSUSimulateMemoryWarningsEvery", v6);
  while (!self->_stop)
  {
    [v5 drain];
    v5 = objc_opt_new();
    [MEMORY[0x277CCACC8] sleepForTimeInterval:v6];
    [(TSUMemoryWatcher *)self performSelectorOnMainThread:sel__simulateMemoryWarning_ withObject:0 waitUntilDone:1];
  }

  [v5 drain];
}

- (void)_simulateMemoryWarning:(id)a3
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76670];
  v5 = [MEMORY[0x277D75128] sharedApplication];

  [v3 postNotificationName:v4 object:v5];
}

@end