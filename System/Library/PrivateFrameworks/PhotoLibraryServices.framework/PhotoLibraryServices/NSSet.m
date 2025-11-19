@interface NSSet
@end

@implementation NSSet

uint64_t __51__NSSet_PLAdditions__pl_countOfObjectsPassingTest___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

id __63__NSSet_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [v2 sortedArrayUsingSelector:sel_compare_];

    v2 = v5;
  }

  v6 = [MEMORY[0x1E696AD60] string];
  v7 = PLIndentToString();
  [v6 appendFormat:@"<%@: %p> count=%lu [", objc_opt_class(), *(a1 + 32), objc_msgSend(*(a1 + 32), "count")];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__NSSet_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2;
  v13[3] = &unk_1E7573A20;
  v16 = *(a1 + 40);
  v8 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v7;
  [v2 enumerateObjectsUsingBlock:v13];
  [v8 appendFormat:@"\n%@]", v9];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __63__NSSet_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 _pl_prettyDescriptionWithIndent:*(a1 + 48) + 1];
  [*(a1 + 32) appendFormat:@"\n%@%@%@", *(a1 + 40), *MEMORY[0x1E69BFEC8], v3];
}

id __39__NSSet_PhotoLibraryServices___pl_map___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allObjects];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [v2 _pl_map:*(a1 + 40)];
  v5 = [v3 setWithArray:v4];

  return v5;
}

@end