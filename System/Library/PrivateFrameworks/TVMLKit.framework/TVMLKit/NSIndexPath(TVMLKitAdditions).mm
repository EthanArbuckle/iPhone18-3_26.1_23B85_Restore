@interface NSIndexPath(TVMLKitAdditions)
- (uint64_t)flattenedIndexForItemInSections:()TVMLKitAdditions;
@end

@implementation NSIndexPath(TVMLKitAdditions)

- (uint64_t)flattenedIndexForItemInSections:()TVMLKitAdditions
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__NSIndexPath_TVMLKitAdditions__flattenedIndexForItemInSections___block_invoke;
  v10[3] = &unk_279D6F560;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &v17;
  [v4 enumerateObjectsUsingBlock:v10];
  v5 = v12[5];
  if (v5 && (v6 = [v5 numberOfItems], v6 > objc_msgSend(self, "item")))
  {
    v7 = v18[3];
    v8 = [self item] + v7;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

@end