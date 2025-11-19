@interface HashHelper
+ (HashHelper)hashHelper;
- (HashHelper)init;
- (char)addData:(CC_LONG)a3 withLength:;
- (char)addData:(char *)a1;
- (char)addNumber:(char *)a1;
- (char)addString:(char *)a1;
- (char)getHash;
- (id)addArray:(void *)a1;
- (id)addDateComponents:(id)a1;
- (id)addDictionary:(void *)a1;
- (id)addObject:(void *)a1;
@end

@implementation HashHelper

+ (HashHelper)hashHelper
{
  objc_opt_self();
  v0 = objc_alloc_init(HashHelper);

  return v0;
}

- (HashHelper)init
{
  v5.receiver = self;
  v5.super_class = HashHelper;
  v2 = [(HashHelper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    CC_SHA256_Init(&v2->ctx);
  }

  return v3;
}

void __28__HashHelper_addDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [(HashHelper *)v3 addObject:v4];
  v6 = *(a1 + 32);
  v8 = [*(a1 + 40) objectForKeyedSubscript:v4];

  v7 = [(HashHelper *)v6 addObject:v8];
}

- (char)getHash
{
  if (a1)
  {
    v2 = a1;
    v3 = malloc_type_calloc(0x20uLL, 1uLL, 0xDEFD17BDuLL);
    CC_SHA256_Final(v3, (v2 + 8));
    a1 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v3 length:32 freeWhenDone:1];
    v1 = vars8;
  }

  return a1;
}

- (char)addData:(CC_LONG)a3 withLength:
{
  if (a1)
  {
    CC_SHA256_Update((a1 + 8), a2, a3);
    v4 = a1;
  }

  return a1;
}

- (char)addData:(char *)a1
{
  if (a1)
  {
    v4 = a2;
    v5 = a2;
    v6 = [v5 bytes];
    v7 = [v5 length];

    CC_SHA256_Update((a1 + 8), v6, v7);
    v8 = a1;
  }

  return a1;
}

- (char)addString:(char *)a1
{
  if (a1)
  {
    v4 = a2;
    v5 = a2;
    v6 = [v5 UTF8String];
    v7 = [v5 lengthOfBytesUsingEncoding:4];

    CC_SHA256_Update((a1 + 8), v6, v7);
    v8 = a1;
  }

  return a1;
}

- (char)addNumber:(char *)a1
{
  if (a1)
  {
    data = [a2 longLongValue];
    CC_SHA256_Update((a1 + 8), &data, 8u);
    v3 = a1;
  }

  return a1;
}

- (id)addDictionary:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 allKeys];
    v6 = [v5 sortedArrayUsingSelector:sel_compare_];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__HashHelper_addDictionary___block_invoke;
    v9[3] = &unk_278875250;
    v9[4] = a1;
    v10 = v4;
    [v6 enumerateObjectsUsingBlock:v9];
    v7 = a1;
  }

  return a1;
}

- (id)addObject:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    if (OUTLINED_FUNCTION_4_0())
    {
      v5 = OUTLINED_FUNCTION_3_0();
      [(HashHelper *)v5 addData:v6];
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      objc_opt_class();
      if (OUTLINED_FUNCTION_4_0())
      {
        v7 = OUTLINED_FUNCTION_3_0();
        [(HashHelper *)v7 addString:v8];
        objc_claimAutoreleasedReturnValue();
      }

      else
      {
        objc_opt_class();
        if (OUTLINED_FUNCTION_4_0())
        {
          v9 = OUTLINED_FUNCTION_3_0();
          [(HashHelper *)v9 addNumber:v10];
          objc_claimAutoreleasedReturnValue();
        }

        else
        {
          objc_opt_class();
          if (OUTLINED_FUNCTION_4_0())
          {
            v11 = OUTLINED_FUNCTION_3_0();
            [HashHelper addDictionary:v11];
            objc_claimAutoreleasedReturnValue();
          }

          else
          {
            objc_opt_class();
            if (OUTLINED_FUNCTION_4_0())
            {
              v12 = OUTLINED_FUNCTION_3_0();
              [(HashHelper *)v12 addArray:v13];
              objc_claimAutoreleasedReturnValue();
            }

            else
            {
              objc_opt_class();
              if (OUTLINED_FUNCTION_4_0())
              {
                v14 = OUTLINED_FUNCTION_3_0();
                [(HashHelper *)v14 addDateComponents:v15];
                objc_claimAutoreleasedReturnValue();
              }

              else
              {
                a1 = 0;
              }
            }
          }
        }
      }
    }
  }

  return a1;
}

- (id)addArray:(void *)a1
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = v3;
  if (a1)
  {
    v12 = OUTLINED_FUNCTION_5_0(v3, v4, v5, v6, v7, v8, v9, v10, 0, 0, 0, 0, 0, 0, 0, 0, v35, v37);
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(HashHelper *)a1 addObject:?];
        }

        v13 = OUTLINED_FUNCTION_5_0(v16, v17, v18, v19, v20, v21, v22, v23, v27, v28, v29, v30, v31, v32, v33, v34, v36, v38);
      }

      while (v13);
    }

    v24 = a1;
  }

  v25 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)addDateComponents:(id)a1
{
  if (a1)
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = a2;
    [v4 year];
    [OUTLINED_FUNCTION_1_1() numberWithInteger:?];
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_0_2();
    v7 = [(HashHelper *)v5 addNumber:v6];

    [OUTLINED_FUNCTION_2_0() month];
    [OUTLINED_FUNCTION_1_1() numberWithInteger:?];
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_0_2();
    v10 = [(HashHelper *)v8 addNumber:v9];

    [OUTLINED_FUNCTION_2_0() day];
    [OUTLINED_FUNCTION_1_1() numberWithInteger:?];
    objc_claimAutoreleasedReturnValue();
    v11 = OUTLINED_FUNCTION_0_2();
    v13 = [(HashHelper *)v11 addNumber:v12];

    [OUTLINED_FUNCTION_2_0() hour];
    [OUTLINED_FUNCTION_1_1() numberWithInteger:?];
    objc_claimAutoreleasedReturnValue();
    v14 = OUTLINED_FUNCTION_0_2();
    v16 = [(HashHelper *)v14 addNumber:v15];

    [OUTLINED_FUNCTION_2_0() minute];
    [OUTLINED_FUNCTION_1_1() numberWithInteger:?];
    objc_claimAutoreleasedReturnValue();
    v17 = OUTLINED_FUNCTION_0_2();
    v19 = [(HashHelper *)v17 addNumber:v18];

    v20 = [OUTLINED_FUNCTION_2_0() second];
    v21 = [v3 numberWithInteger:v20];
    v22 = OUTLINED_FUNCTION_3_0();
    v24 = [(HashHelper *)v22 addNumber:v23];

    v25 = a1;
  }

  return a1;
}

@end