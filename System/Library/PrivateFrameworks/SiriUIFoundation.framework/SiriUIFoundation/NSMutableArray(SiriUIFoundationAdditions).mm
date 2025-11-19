@interface NSMutableArray(SiriUIFoundationAdditions)
- (uint64_t)sruif_isValidIndexSetToInsert:()SiriUIFoundationAdditions;
@end

@implementation NSMutableArray(SiriUIFoundationAdditions)

- (uint64_t)sruif_isValidIndexSetToInsert:()SiriUIFoundationAdditions
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = [a1 count];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__NSMutableArray_SiriUIFoundationAdditions__sruif_isValidIndexSetToInsert___block_invoke;
  v7[3] = &unk_279C61BA8;
  v7[4] = v8;
  v7[5] = &v9;
  [v4 enumerateIndexesUsingBlock:v7];
  v5 = *(v10 + 24);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return v5;
}

@end