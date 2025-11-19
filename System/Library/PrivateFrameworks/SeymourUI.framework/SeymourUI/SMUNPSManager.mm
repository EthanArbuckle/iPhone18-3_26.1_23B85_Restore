@interface SMUNPSManager
- (SMUNPSManager)init;
@end

@implementation SMUNPSManager

- (SMUNPSManager)init
{
  v6.receiver = self;
  v6.super_class = SMUNPSManager;
  v2 = [(SMUNPSManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D2BA60]);
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;
  }

  return v2;
}

@end