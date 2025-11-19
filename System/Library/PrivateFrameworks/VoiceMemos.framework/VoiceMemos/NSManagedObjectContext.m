@interface NSManagedObjectContext
@end

@implementation NSManagedObjectContext

void __78__NSManagedObjectContext_RCExtensions__rc_performAndWaitReturningError_block___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = (*(v2 + 16))();
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

@end