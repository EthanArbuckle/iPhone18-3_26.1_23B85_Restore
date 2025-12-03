@interface TSClockManagerInterface
- (TSClockManagerInterface)init;
- (void)addToClockManager;
- (void)interruptedConnectionForClockManager:(id)manager;
- (void)removeFromClockManager;
@end

@implementation TSClockManagerInterface

- (TSClockManagerInterface)init
{
  if (init_onceToken_0 != -1)
  {
    [TSClockManagerInterface init];
  }

  v5.receiver = self;
  v5.super_class = TSClockManagerInterface;
  v3 = [(TSClockManagerInterface *)&v5 init];
  if (v3)
  {
    os_unfair_lock_lock(&_clockManagerInterfacesLock);
    [_clockManagerInterfaces addObject:v3];
    os_unfair_lock_unlock(&_clockManagerInterfacesLock);
  }

  return v3;
}

void __31__TSClockManagerInterface_init__block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = _clockManagerInterfaces;
  _clockManagerInterfaces = v0;

  _clockManagerInterfacesLock = 0;
}

- (void)addToClockManager
{
  clockManager = [(TSClockManagerInterface *)self clockManager];
  [clockManager addClient:self];
}

- (void)removeFromClockManager
{
  clockManager = [(TSClockManagerInterface *)self clockManager];
  [clockManager removeClient:self];
}

- (void)interruptedConnectionForClockManager:(id)manager
{
  interruptionCallback = self->_interruptionCallback;
  if (interruptionCallback)
  {
    interruptionCallback(self->_interruptionRefcon, a2, manager);
  }

  [(TSClockManagerInterface *)self removeFromClockManager];
  os_unfair_lock_lock(&_clockManagerInterfacesLock);
  [_clockManagerInterfaces removeObject:self];

  os_unfair_lock_unlock(&_clockManagerInterfacesLock);
}

@end