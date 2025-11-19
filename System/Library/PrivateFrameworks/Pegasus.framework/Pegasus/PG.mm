@interface PG
@end

@implementation PG

void __PG_dispatch_async_with_timeout_block_invoke(uint64_t a1)
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PG_dispatch_async_with_timeout_block_invoke_2;
  block[3] = &unk_1E7F332B0;
  v16 = *(a1 + 48);
  v4 = *(a1 + 40);
  v17 = v21;
  v18 = v19;
  v14 = v4;
  v15 = v2;
  v5 = v2;
  dispatch_async(v3, block);
  v6 = dispatch_time(0, (*(a1 + 64) * 1000000000.0));
  dispatch_semaphore_wait(v5, v6);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PG_dispatch_async_with_timeout_block_invoke_5;
  v8[3] = &unk_1E7F33300;
  v11 = v21;
  v7 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v12 = v19;
  dispatch_async(v7, v8);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

void __PG_dispatch_async_with_timeout_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PG_dispatch_async_with_timeout_block_invoke_3;
  v3[3] = &unk_1E7F33288;
  v4 = *(a1 + 32);
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  (*(v2 + 16))(v2, v3);
}

void __PG_dispatch_async_with_timeout_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PG_dispatch_async_with_timeout_block_invoke_4;
  block[3] = &unk_1E7F33260;
  v6 = *(a1 + 56);
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  dispatch_async(v1, block);
}

intptr_t __PG_dispatch_async_with_timeout_block_invoke_4(intptr_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    *(*(*(result + 48) + 8) + 24) = 1;
    return dispatch_semaphore_signal(*(result + 32));
  }

  return result;
}

void __PG_dispatch_async_with_timeout_block_invoke_5(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PG_dispatch_async_with_timeout_block_invoke_6;
  v5[3] = &unk_1E7F332D8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

@end