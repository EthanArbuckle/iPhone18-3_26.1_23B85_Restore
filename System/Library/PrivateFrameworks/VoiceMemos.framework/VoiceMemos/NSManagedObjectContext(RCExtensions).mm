@interface NSManagedObjectContext(RCExtensions)
- (uint64_t)rc_performAndWaitReturningError:()RCExtensions block:;
@end

@implementation NSManagedObjectContext(RCExtensions)

- (uint64_t)rc_performAndWaitReturningError:()RCExtensions block:
{
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__NSManagedObjectContext_RCExtensions__rc_performAndWaitReturningError_block___block_invoke;
  v10[3] = &unk_279E43A78;
  v12 = &v20;
  v7 = v6;
  v11 = v7;
  v13 = &v14;
  [self performBlockAndWait:v10];
  v8 = *(v21 + 24);
  if (a3 && (v21[3] & 1) == 0)
  {
    *a3 = v15[5];
    v8 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8 & 1;
}

@end