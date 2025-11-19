@interface PASKVOHandler
@end

@implementation PASKVOHandler

void __87___PASKVOHandler_reactAsynchronouslyAfterChangesToKeyPath_ofObject_usingBlock_onQueue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87___PASKVOHandler_reactAsynchronouslyAfterChangesToKeyPath_ofObject_usingBlock_onQueue___block_invoke_2;
  block[3] = &unk_1E77F1EA0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v23 = v12;
  v24 = v14;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_async(v13, block);
}

void __87___PASKVOHandler_reactAsynchronouslyAfterChangesToKeyPath_ofObject_usingBlock_onQueue___block_invoke_2(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[7];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  (*(a1[8] + 16))();

  objc_autoreleasePoolPop(v2);
}

@end