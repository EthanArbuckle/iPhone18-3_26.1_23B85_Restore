@interface PPMeCardCacheManager
- (PPMeCardCacheManager)initWithPath:(id)path;
- (void)accessCacheWithBlock:(id)block;
@end

@implementation PPMeCardCacheManager

- (void)accessCacheWithBlock:(id)block
{
  blockCopy = block;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PPMeCardCacheManager_accessCacheWithBlock___block_invoke;
  v7[3] = &unk_278972C00;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (PPMeCardCacheManager)initWithPath:(id)path
{
  pathCopy = path;
  if (initWithPath___pasOnceToken11 != -1)
  {
    dispatch_once(&initWithPath___pasOnceToken11, &__block_literal_global_4496);
  }

  v5 = initWithPath___pasExprOnceResult;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4497;
  v20 = __Block_byref_object_dispose__4498;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__PPMeCardCacheManager_initWithPath___block_invoke_52;
  v12[3] = &unk_278974EA0;
  v15 = &v16;
  v6 = pathCopy;
  v13 = v6;
  selfCopy = self;
  v14 = selfCopy;
  [v5 runWithLockAcquired:v12];
  v8 = v17[5];

  v9 = v14;
  v10 = v8;

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __37__PPMeCardCacheManager_initWithPath___block_invoke_52(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v19.receiver = *(a1 + 40);
    v19.super_class = PPMeCardCacheManager;
    v7 = objc_msgSendSuper2(&v19, sel_init);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [*(a1 + 32) stringByAppendingPathComponent:@"me_card.pb"];
      objc_autoreleasePoolPop(v10);
      v12 = [PPMeCardCache alloc];
      v13 = v11;
      if (v12)
      {
        v20.receiver = v12;
        v20.super_class = PPMeCardCache;
        v14 = objc_msgSendSuper2(&v20, sel_init);
        v15 = v14;
        if (v14)
        {
          objc_storeStrong(v14 + 1, v11);
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v15];
      v17 = *(*(*(a1 + 48) + 8) + 40);
      v18 = *(v17 + 8);
      *(v17 + 8) = v16;
    }
  }
}

void __37__PPMeCardCacheManager_initWithPath___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D425F8]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = initWithPath___pasExprOnceResult;
  initWithPath___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

@end