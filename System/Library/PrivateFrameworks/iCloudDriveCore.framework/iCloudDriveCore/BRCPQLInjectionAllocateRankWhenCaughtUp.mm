@interface BRCPQLInjectionAllocateRankWhenCaughtUp
+ (id)_createInjectionWithCaughtUp:(BOOL)up fullSync:(BOOL)sync;
@end

@implementation BRCPQLInjectionAllocateRankWhenCaughtUp

+ (id)_createInjectionWithCaughtUp:(BOOL)up fullSync:(BOOL)sync
{
  if (sync)
  {
    v4 = "";
    v5 = 0;
  }

  else if (up)
  {
    v4 = " AND item_depth >= -1";
    v5 = 21;
  }

  else
  {
    v4 = " AND item_depth >= 0";
    v5 = 20;
  }

  v6 = [MEMORY[0x277D82C18] rawInjection:v4 length:v5];

  return v6;
}

@end