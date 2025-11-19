@interface NSPersistentStoreRequest(RCExtensions)
- (void)rc_setAffectedStore:()RCExtensions;
@end

@implementation NSPersistentStoreRequest(RCExtensions)

- (void)rc_setAffectedStore:()RCExtensions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [a1 setAffectedStores:v6];
  }

  else
  {
    [a1 setAffectedStores:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end