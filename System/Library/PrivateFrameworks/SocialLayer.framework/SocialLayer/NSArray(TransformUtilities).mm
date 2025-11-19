@interface NSArray(TransformUtilities)
+ (id)arrayWithObject:()TransformUtilities repeated:;
- (void)sl_mapAsynchronously:()TransformUtilities completionHandler:;
- (void)sl_mapAsynchronouslyOnQueue:()TransformUtilities transform:completionHandler:;
@end

@implementation NSArray(TransformUtilities)

+ (id)arrayWithObject:()TransformUtilities repeated:
{
  v6 = a3;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
  {
    [i addObject:v6];
  }

  v8 = [[a1 alloc] initWithArray:i];

  return v8;
}

- (void)sl_mapAsynchronouslyOnQueue:()TransformUtilities transform:completionHandler:
{
  queue = a3;
  v8 = a4;
  v18 = a5;
  v9 = [a1 count];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2810000000;
  v28[3] = "";
  v29 = 0;
  v10 = MEMORY[0x277CBEB18];
  v11 = [MEMORY[0x277CBEB68] null];
  v12 = [v10 arrayWithObject:v11 repeated:v9];

  v13 = dispatch_group_create();
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      dispatch_group_enter(v13);
      v15 = [a1 objectAtIndexedSubscript:i];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __87__NSArray_TransformUtilities__sl_mapAsynchronouslyOnQueue_transform_completionHandler___block_invoke;
      v23[3] = &unk_278927780;
      v26 = v28;
      v24 = v12;
      v27 = i;
      v25 = v13;
      v8[2](v8, v15, v23);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__NSArray_TransformUtilities__sl_mapAsynchronouslyOnQueue_transform_completionHandler___block_invoke_2;
  block[3] = &unk_2789266B0;
  v21 = v12;
  v22 = v18;
  v16 = v18;
  v17 = v12;
  dispatch_group_notify(v13, queue, block);

  _Block_object_dispose(v28, 8);
}

- (void)sl_mapAsynchronously:()TransformUtilities completionHandler:
{
  v7 = dispatch_get_global_queue(0, 0);
  [a1 sl_mapAsynchronouslyOnQueue:v7 transform:a3 completionHandler:a4];
}

@end