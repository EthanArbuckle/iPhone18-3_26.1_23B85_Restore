@interface VUISortUtilities
+ (id)ascendingDateSortComparatorWithBlock:(id)a3;
+ (id)ascendingTitleSortComparator;
+ (id)descendingDateSortComparatorWithBlock:(id)a3;
+ (id)descendingTitleSortComparator;
+ (id)titleSortComparatorWithAscending:(BOOL)a3;
+ (int64_t)comparisonResultForObject1:(id)a3 object2:(id)a4 withComparators:(id)a5;
@end

@implementation VUISortUtilities

+ (id)ascendingDateSortComparatorWithBlock:(id)a3
{
  v3 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__VUISortUtilities_ascendingDateSortComparatorWithBlock___block_invoke;
  v8[3] = &unk_279E21460;
  v9 = v3;
  v4 = v3;
  v5 = MEMORY[0x2743B7C30](v8);
  v6 = MEMORY[0x2743B7C30]();

  return v6;
}

uint64_t __57__VUISortUtilities_ascendingDateSortComparatorWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  v9 = (*(*(a1 + 32) + 16))();

  if (v8)
  {
    if (v9)
    {
      v10 = [v8 compare:v9];
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (id)descendingDateSortComparatorWithBlock:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__VUISortUtilities_descendingDateSortComparatorWithBlock___block_invoke;
  v12[3] = &unk_279E21488;
  v13 = v4;
  v14 = a1;
  v5 = v4;
  v6 = MEMORY[0x2743B7C30](v12);
  v10 = MEMORY[0x2743B7C30](v6, v7, v8, v9);

  return v10;
}

uint64_t __58__VUISortUtilities_descendingDateSortComparatorWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [v5 ascendingDateSortComparatorWithBlock:v6];
  v10 = (v9)[2](v9, v8, v7);

  v11 = (*(*(a1 + 32) + 16))();

  v12 = (*(*(a1 + 32) + 16))();

  v13 = 1;
  if (v10 == 1)
  {
    v14 = -1;
  }

  else
  {
    v14 = v10;
  }

  if (v10 != -1)
  {
    v13 = v14;
  }

  if (v11)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

+ (id)titleSortComparatorWithAscending:(BOOL)a3
{
  if (a3)
  {
    [a1 ascendingTitleSortComparator];
  }

  else
  {
    [a1 descendingTitleSortComparator];
  }
  v3 = ;

  return v3;
}

+ (id)ascendingTitleSortComparator
{
  v2 = [MEMORY[0x277CCA900] letterCharacterSet];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__VUISortUtilities_ascendingTitleSortComparator__block_invoke;
  v7[3] = &unk_279E214B0;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x2743B7C30](v7);
  v5 = MEMORY[0x2743B7C30]();

  return v5;
}

uint64_t __48__VUISortUtilities_ascendingTitleSortComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    if ([v6 length])
    {
      v7 = [*(a1 + 32) characterIsMember:{objc_msgSend(v5, "characterAtIndex:", 0)}];
      v8 = [*(a1 + 32) characterIsMember:{objc_msgSend(v6, "characterAtIndex:", 0)}];
      if (v7 && v8)
      {
        v9 = [v5 compare:v6 options:65];
      }

      else if (v7)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)descendingTitleSortComparator
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__VUISortUtilities_descendingTitleSortComparator__block_invoke;
  v5[3] = &__block_descriptor_40_e31_q24__0__NSString_8__NSString_16l;
  v5[4] = a1;
  v2 = MEMORY[0x2743B7C30](v5, a2);
  v3 = MEMORY[0x2743B7C30]();

  return v3;
}

uint64_t __49__VUISortUtilities_descendingTitleSortComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 ascendingTitleSortComparator];
  v8 = (v7)[2](v7, v6, v5);

  if (v8 == 1)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  if (v8 == -1)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

+ (int64_t)comparisonResultForObject1:(id)a3 object2:(id)a4 withComparators:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 count];
  if (v11)
  {
    v12 = v11;
    v13 = [v10 firstObject];
    v14 = [v10 subarrayWithRange:{1, v12 - 1}];
    v15 = (v13)[2](v13, v8, v9);
    if (!v15)
    {
      if ([v14 count])
      {
        v15 = [a1 comparisonResultForObject1:v8 object2:v9 withComparators:v14];
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end