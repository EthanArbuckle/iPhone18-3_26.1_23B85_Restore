@interface NSIndexSet(SafariCoreExtras)
- (uint64_t)safari_intersectsWithIndexSet:()SafariCoreExtras;
@end

@implementation NSIndexSet(SafariCoreExtras)

- (uint64_t)safari_intersectsWithIndexSet:()SafariCoreExtras
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__NSIndexSet_SafariCoreExtras__safari_intersectsWithIndexSet___block_invoke;
  v7[3] = &unk_1E7CF51E8;
  v7[4] = a1;
  v7[5] = &v8;
  [v4 enumerateRangesUsingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end