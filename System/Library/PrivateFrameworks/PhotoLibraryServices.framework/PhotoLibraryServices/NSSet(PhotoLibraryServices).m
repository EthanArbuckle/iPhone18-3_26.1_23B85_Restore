@interface NSSet(PhotoLibraryServices)
- (id)_pl_filter:()PhotoLibraryServices;
- (id)_pl_firstObjectPassingTest:()PhotoLibraryServices;
- (id)_pl_map:()PhotoLibraryServices;
- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices;
@end

@implementation NSSet(PhotoLibraryServices)

- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices
{
  if ([a1 count])
  {
    pl_result_with_autoreleasepool();
  }

  else
  {
    PLEmptyContainerDescription();
  }
  v1 = ;

  return v1;
}

- (id)_pl_map:()PhotoLibraryServices
{
  v6 = a3;
  v3 = v6;
  v4 = pl_result_with_autoreleasepool();

  return v4;
}

- (id)_pl_filter:()PhotoLibraryServices
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__NSSet_PhotoLibraryServices___pl_filter___block_invoke;
  v8[3] = &unk_1E75739D0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 objectsPassingTest:v8];

  return v6;
}

- (id)_pl_firstObjectPassingTest:()PhotoLibraryServices
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end