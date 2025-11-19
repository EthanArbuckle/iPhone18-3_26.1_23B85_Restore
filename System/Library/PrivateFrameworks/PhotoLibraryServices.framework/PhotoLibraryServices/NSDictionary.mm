@interface NSDictionary
@end

@implementation NSDictionary

id __70__NSDictionary_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [v2 sortedArrayUsingSelector:sel_compare_];

    v2 = v5;
  }

  v6 = [MEMORY[0x1E696AD60] string];
  v7 = PLIndentToString();
  [v6 appendFormat:@"<%@: %p> count=%lu {", objc_opt_class(), *(a1 + 32), objc_msgSend(*(a1 + 32), "count")];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__NSDictionary_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2;
  v14[3] = &unk_1E756B8C0;
  v8 = *(a1 + 32);
  v17 = *(a1 + 40);
  v14[4] = v8;
  v9 = v6;
  v15 = v9;
  v16 = v7;
  v10 = v7;
  [v2 enumerateObjectsUsingBlock:v14];
  [v9 appendFormat:@"\n%@}", v10];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __70__NSDictionary_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = a2;
  v7 = [v4 _pl_prettyDescriptionWithIndent:v3 + 1];
  v5 = [*(a1 + 32) objectForKey:v4];

  v6 = [v5 _pl_prettyDescriptionWithIndent:*(a1 + 56) + 1];
  [*(a1 + 40) appendFormat:@"\n%@%@%@: %@", *(a1 + 48), *MEMORY[0x1E69BFEC8], v7, v6];
}

@end