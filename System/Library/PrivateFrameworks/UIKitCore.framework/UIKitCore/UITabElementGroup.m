@interface UITabElementGroup
@end

@implementation UITabElementGroup

uint64_t __35___UITabElementGroup__setChildren___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _isElement])
  {
    v4 = [v3 _identifier];
    v5 = [*(a1 + 32) _identifier];
    v6 = v4;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
      if (v6 && v7)
      {
        v9 = [v6 isEqual:v7];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __54___UITabElementGroup__orderedChildrenForDisplayOrder___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 _identifier];
  LODWORD(a1) = [v7 isEqualToString:*(a1 + 32)];

  *a4 = a1;
  if (a1)
  {
    v8 = [v6 _isAction] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __42___UITabElementGroup__defaultChildElement__block_invoke(void *a1, void *a2, uint64_t a3, BOOL *a4)
{
  v10 = a2;
  v7 = [v10 _identifier];
  v8 = [v7 isEqualToString:a1[4]];

  if (v8)
  {
    if ([v10 _isElement] && objc_msgSend(v10, "_isVisible"))
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  if (!*(*(a1[7] + 8) + 40) && [v10 _isElement] && objc_msgSend(v10, "_isVisible"))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    if (*(*(a1[5] + 8) + 40))
    {
      v9 = 1;
    }

    else
    {
      v9 = *(*(a1[7] + 8) + 40) != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
}

uint64_t __37___UITabElementGroup__isCustomizable__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 _isCustomizable];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __54___UITabElementGroup__filteredDisplayOrderIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end