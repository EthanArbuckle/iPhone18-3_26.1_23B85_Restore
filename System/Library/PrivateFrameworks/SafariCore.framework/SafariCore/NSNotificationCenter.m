@interface NSNotificationCenter
@end

@implementation NSNotificationCenter

void __95__NSNotificationCenter_SafariCoreExtras__safari_addObserverForUserDefaultKey_queue_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v4 userInfo];
  v5 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  (*(v3 + 16))(v3, v4, v5);
}

@end