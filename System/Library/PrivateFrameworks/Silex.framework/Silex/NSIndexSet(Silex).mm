@interface NSIndexSet(Silex)
- (uint64_t)firstRangeAfterIndex:()Silex;
@end

@implementation NSIndexSet(Silex)

- (uint64_t)firstRangeAfterIndex:()Silex
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_1D83A8029;
  v13 = xmmword_1D8392410;
  v5 = [a1 lastIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__NSIndexSet_Silex__firstRangeAfterIndex___block_invoke;
  v8[3] = &unk_1E8501C28;
  v8[4] = &v9;
  [a1 enumerateRangesInRange:a3 options:v5 - a3 + 1 usingBlock:{0, v8}];
  v6 = v10[4];
  _Block_object_dispose(&v9, 8);
  return v6;
}

@end