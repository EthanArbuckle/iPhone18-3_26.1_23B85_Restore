@interface VUIEntitiesSortedByDateValueTransformer
- (VUIEntitiesSortedByDateValueTransformer)init;
- (VUIEntitiesSortedByDateValueTransformer)initWithDateForEntityBlock:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation VUIEntitiesSortedByDateValueTransformer

- (VUIEntitiesSortedByDateValueTransformer)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIEntitiesSortedByDateValueTransformer)initWithDateForEntityBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIEntitiesSortedByDateValueTransformer;
  v5 = [(VUIEntitiesSortedByDateValueTransformer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dateForEntityBlock = v5->_dateForEntityBlock;
    v5->_dateForEntityBlock = v6;
  }

  return v5;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  v5 = [(VUIEntitiesSortedByDateValueTransformer *)self dateForEntityBlock];
  v6 = [VUISortUtilities descendingDateSortComparatorWithBlock:v5];

  v7 = [v4 sortedArrayUsingComparator:v6];
  v8 = [(VUIEntitiesSortedByDateValueTransformer *)self maxEntities];
  v9 = [v7 count];
  if (v9)
  {
    v10 = v9;
    v11 = [(VUIEntitiesSortedByDateValueTransformer *)self earliestDate];
    if (v11)
    {
      v12 = [(VUIEntitiesSortedByDateValueTransformer *)self dateForEntityBlock];
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2020000000;
      v26[3] = 0;
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __60__VUIEntitiesSortedByDateValueTransformer_transformedValue___block_invoke;
      v21 = &unk_279E21C90;
      v13 = v12;
      v23 = v13;
      v24 = v26;
      v25 = v8;
      v22 = v11;
      v14 = [v7 indexesOfObjectsPassingTest:&v18];
      v15 = [v7 objectsAtIndexes:{v14, v18, v19, v20, v21}];

      _Block_object_dispose(v26, 8);
    }

    else
    {
      if (v8 && v10 > v8)
      {
        v16 = [v7 subarrayWithRange:{0, v8}];
      }

      else
      {
        v16 = v7;
      }

      v15 = v16;
    }
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

uint64_t __60__VUIEntitiesSortedByDateValueTransformer_transformedValue___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = (*(a1[5] + 16))();
  v7 = v6;
  if (*(*(a1[6] + 8) + 24) >= a1[7])
  {
    v8 = 0;
    *a4 = 1;
  }

  else if ([v6 compare:a1[4]] == 1)
  {
    ++*(*(a1[6] + 8) + 24);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end