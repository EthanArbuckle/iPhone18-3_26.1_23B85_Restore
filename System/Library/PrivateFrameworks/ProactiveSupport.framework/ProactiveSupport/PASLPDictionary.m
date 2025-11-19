@interface PASLPDictionary
@end

@implementation PASLPDictionary

void __45___PASLPDictionary_getObjects_andKeys_count___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = [WeakRetained bytes];
    for (i = 0; ; ++i)
    {
      v6 = *(a1[4] + 16);
      if (v6)
      {
        v6 = 2 * *(v6 + 16);
      }

      if (i >= v6)
      {
        break;
      }

      v7 = CFRetain(*(v4 + 8 * i));
      CFAutorelease(v7);
    }
  }

  else
  {
    v8 = *(a1[4] + 16);
    if (v8)
    {
      v9 = 16 * *(v8 + 16);
    }

    else
    {
      v9 = 0;
    }

    v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v9];
    v11 = [v10 mutableBytes];
    v12 = v11;
    v13 = a1[4];
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v14 + 16);
    }

    else
    {
      v15 = 0;
    }

    v16 = 0;
    v17 = v11 + 8 * v15;
    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_12:
    for (j = *(v14 + 16); v16 < j; j = 0)
    {
      v19 = [*(v13 + 8) keyAtIndex:v16 usingDictionaryContext:?];
      *(v17 + 8 * v16) = CFAutorelease(v19);

      v20 = [*(a1[4] + 8) objectAtIndex:v16 usingDictionaryContext:*(a1[4] + 16)];
      *(v12 + 8 * v16) = CFAutorelease(v20);

      ++v16;
      v13 = a1[4];
      v14 = *(v13 + 16);
      if (v14)
      {
        goto LABEL_12;
      }

LABEL_15:
      ;
    }

    v3 = v10;
    objc_storeWeak((v13 + 24), v3);
  }

  v25 = v3;
  CFAutorelease(v25);
  v21 = a1[5];
  if (v21)
  {
    [v25 getBytes:v21 range:{0, 8 * a1[6]}];
  }

  if (a1[7])
  {
    v22 = *(a1[4] + 16);
    if (v22)
    {
      v23 = 8 * *(v22 + 16);
    }

    v24 = a1[6];
    [v25 getBytes:? range:?];
  }
}

void __40___PASLPDictionary_isEqualToDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v7 || ([v8 isEqual:v7] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __37___PASLPDictionary_allKeysForObject___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) isEqual:a3])
  {
    [*(a1 + 40) addObject:v5];
  }
}

@end