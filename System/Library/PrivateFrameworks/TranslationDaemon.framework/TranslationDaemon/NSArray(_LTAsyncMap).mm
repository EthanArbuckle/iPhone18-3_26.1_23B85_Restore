@interface NSArray(_LTAsyncMap)
- (void)_ltAsyncMap:()_LTAsyncMap completion:;
- (void)_ltAsyncMap:()_LTAsyncMap queue:completion:;
- (void)_ltSequentialMap:()_LTAsyncMap completion:;
@end

@implementation NSArray(_LTAsyncMap)

- (void)_ltAsyncMap:()_LTAsyncMap completion:
{
  v7 = dispatch_get_global_queue(9, 0);
  [self _ltAsyncMap:a3 queue:v7 completion:a4];
}

- (void)_ltAsyncMap:()_LTAsyncMap queue:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  array = [MEMORY[0x277CBEB18] array];
  if ([self count])
  {
    v12 = 0;
    do
    {
      null = [MEMORY[0x277CBEB68] null];
      [array addObject:null];

      ++v12;
    }

    while (v12 < [self count]);
  }

  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy_;
  v34[4] = __Block_byref_object_dispose_;
  v35 = 0;
  v14 = dispatch_queue_create("com.apple.translation.async-map", 0);
  v15 = dispatch_group_create();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __53__NSArray__LTAsyncMap___ltAsyncMap_queue_completion___block_invoke;
  v27[3] = &unk_2789B5350;
  v16 = v15;
  v28 = v16;
  v17 = v9;
  v29 = v17;
  v18 = v8;
  v32 = v18;
  v33 = v34;
  v19 = v14;
  v30 = v19;
  v20 = array;
  v31 = v20;
  [self enumerateObjectsUsingBlock:v27];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NSArray__LTAsyncMap___ltAsyncMap_queue_completion___block_invoke_5;
  block[3] = &unk_2789B5378;
  v25 = v10;
  v26 = v34;
  v24 = v20;
  v21 = v20;
  v22 = v10;
  dispatch_group_notify(v16, v17, block);

  _Block_object_dispose(v34, 8);
}

- (void)_ltSequentialMap:()_LTAsyncMap completion:
{
  v6 = a3;
  v7 = a4;
  array = [MEMORY[0x277CBEB18] array];
  objectEnumerator = [self objectEnumerator];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__NSArray__LTAsyncMap___ltSequentialMap_completion___block_invoke;
  v17[3] = &unk_2789B53C8;
  v10 = objectEnumerator;
  v18 = v10;
  v11 = v7;
  v20 = v11;
  v12 = array;
  v19 = v12;
  v22 = &v23;
  v13 = v6;
  v21 = v13;
  v14 = MEMORY[0x238398770](v17);
  v15 = MEMORY[0x238398770]();
  v16 = v24[5];
  v24[5] = v15;

  v14[2](v14);
  _Block_object_dispose(&v23, 8);
}

@end