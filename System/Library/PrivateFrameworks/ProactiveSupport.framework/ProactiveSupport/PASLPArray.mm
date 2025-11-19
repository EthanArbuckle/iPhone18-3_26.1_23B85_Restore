@interface PASLPArray
@end

@implementation PASLPArray

void __32___PASLPArray_getObjects_range___block_invoke(void *a1)
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
        v6 = *(v6 + 16);
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
      v9 = 8 * *(v8 + 16);
    }

    else
    {
      v9 = 0;
    }

    v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v9];
    v11 = [v10 mutableBytes];
    for (j = 0; ; ++j)
    {
      v13 = a1[4];
      v14 = *(v13 + 16);
      v15 = v14 ? *(v14 + 16) : 0;
      if (j >= v15)
      {
        break;
      }

      v16 = [*(v13 + 8) objectAtIndex:j usingArrayContext:?];
      *(v11 + 8 * j) = CFAutorelease(v16);
    }

    v3 = v10;
    objc_storeWeak((v13 + 24), v3);
  }

  v17 = v3;
  CFAutorelease(v17);
  [v17 getBytes:a1[5] range:{8 * a1[6], 8 * a1[7]}];
}

@end