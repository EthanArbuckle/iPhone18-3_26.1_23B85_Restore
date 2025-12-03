@interface NSIndexSet(PKUIUtilities)
- (id)pkui_indexPathsForRowsInSection:()PKUIUtilities;
@end

@implementation NSIndexSet(PKUIUtilities)

- (id)pkui_indexPathsForRowsInSection:()PKUIUtilities
{
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NSIndexSet_PKUIUtilities__pkui_indexPathsForRowsInSection___block_invoke;
  v8[3] = &unk_1E8014C90;
  v6 = v5;
  v9 = v6;
  v10 = a3;
  [self enumerateIndexesUsingBlock:v8];

  return v6;
}

@end