@interface NSArray
@end

@implementation NSArray

void __53__NSArray__LTAsyncMap___ltAsyncMap_queue_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NSArray__LTAsyncMap___ltAsyncMap_queue_completion___block_invoke_2;
  block[3] = &unk_2789B5328;
  v7 = *(a1 + 64);
  v11 = v5;
  v8 = *(a1 + 72);
  v17 = a3;
  v15 = v7;
  v16 = v8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v9 = v5;
  dispatch_async(v6, block);
}

void __53__NSArray__LTAsyncMap___ltAsyncMap_queue_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 80);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__NSArray__LTAsyncMap___ltAsyncMap_queue_completion___block_invoke_3;
  v7[3] = &unk_2789B5300;
  v3 = *(a1 + 64);
  v11 = *(a1 + 72);
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v10 = v5;
  v12 = v6;
  (*(v3 + 16))(v3, v4, v2, v7);
}

void __53__NSArray__LTAsyncMap___ltAsyncMap_queue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v8 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NSArray__LTAsyncMap___ltAsyncMap_queue_completion___block_invoke_4;
    block[3] = &unk_2789B52D8;
    v9 = v6;
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v15 = v9;
    v18 = v10;
    v12 = v11;
    v13 = *(a1 + 64);
    v16 = v12;
    v19 = v13;
    v17 = v5;
    dispatch_sync(v8, block);
    dispatch_group_leave(*(a1 + 32));
  }
}

void __53__NSArray__LTAsyncMap___ltAsyncMap_queue_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v1);
  }

  else
  {
    [*(a1 + 40) setObject:*(a1 + 48) atIndexedSubscript:*(a1 + 64)];
  }
}

uint64_t __53__NSArray__LTAsyncMap___ltAsyncMap_queue_completion___block_invoke_5(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  if (*(*(*(v3 + 8) + 8) + 40))
  {
    return (*(v2 + 16))(v2, MEMORY[0x277CBEBF8]);
  }

  else
  {
    return (*(v2 + 16))(v2, *(a1 + 32));
  }
}

void __52__NSArray__LTAsyncMap___ltSequentialMap_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextObject];
  if (v2)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__NSArray__LTAsyncMap___ltSequentialMap_completion___block_invoke_2;
    v9[3] = &unk_2789B53A0;
    v3 = *(a1 + 56);
    v11 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    v10 = v4;
    v12 = v5;
    (*(v3 + 16))(v3, v2, v9);
  }

  else
  {
    v6 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __52__NSArray__LTAsyncMap___ltSequentialMap_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  else
  {
    if (v9)
    {
      [*(a1 + 32) addObject:v9];
    }

    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  }
}

@end