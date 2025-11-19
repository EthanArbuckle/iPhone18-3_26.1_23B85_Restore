@interface TPStringTable
+ (id)defaultTable;
- (TPStringTable)initWithIdentifier:(id)a3;
- (id)setWithArray:(id)a3;
- (id)stringWithString:(id)a3;
- (unint64_t)_count;
@end

@implementation TPStringTable

uint64_t __29__TPStringTable_defaultTable__block_invoke()
{
  defaultTable_table = [[TPStringTable alloc] initWithIdentifier:@"TPStringTable.defaultTable"];

  return MEMORY[0x2821F96F8]();
}

+ (id)defaultTable
{
  if (defaultTable_once != -1)
  {
    dispatch_once(&defaultTable_once, &__block_literal_global_3057);
  }

  v3 = defaultTable_table;

  return v3;
}

- (id)setWithArray:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = malloc_type_calloc(v5, 8uLL, 0x80040B8603338uLL);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [v4 objectAtIndexedSubscript:i];
      v9 = [(TPStringTable *)self stringWithString:v8];
      v10 = v6[i];
      v6[i] = v9;
    }
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:v6 count:v5];
  if (v5)
  {
    v12 = v6;
    do
    {
      v13 = *v12;
      *v12++ = 0;

      --v5;
    }

    while (v5);
  }

  free(v6);

  return v11;
}

- (id)stringWithString:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3048;
  v21 = __Block_byref_object_dispose__3049;
  v22 = 0;
  v5 = [(TPStringTable *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__TPStringTable_stringWithString___block_invoke;
  block[3] = &unk_279DEDDD0;
  v16 = &v17;
  block[4] = self;
  v6 = v4;
  v15 = v6;
  dispatch_sync(v5, block);

  v7 = v18[5];
  if (!v7)
  {
    v8 = [(TPStringTable *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__TPStringTable_stringWithString___block_invoke_2;
    v11[3] = &unk_279DEDDD0;
    v13 = &v17;
    v11[4] = self;
    v12 = v6;
    dispatch_barrier_sync(v8, v11);

    v7 = v18[5];
  }

  v9 = v7;

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __34__TPStringTable_stringWithString___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) table];
  v2 = [v5 member:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __34__TPStringTable_stringWithString___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) table];
  v3 = [v2 member:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) table];
    [v6 addObject:*(a1 + 40)];

    v7 = *(a1 + 40);
    v8 = (*(*(a1 + 48) + 8) + 40);

    objc_storeStrong(v8, v7);
  }
}

- (TPStringTable)initWithIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPStringTable;
  v5 = [(TPStringTable *)&v11 init];
  if (v5)
  {
    v6 = [v4 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(v6, v7);
    [(TPStringTable *)v5 setQueue:v8];

    v9 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    [(TPStringTable *)v5 setTable:v9];
  }

  return v5;
}

- (unint64_t)_count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v3 = [(TPStringTable *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__TPStringTable_Testing___count__block_invoke;
  v6[3] = &unk_279DEDE18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __32__TPStringTable_Testing___count__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) table];
  v2 = [v3 allObjects];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

@end