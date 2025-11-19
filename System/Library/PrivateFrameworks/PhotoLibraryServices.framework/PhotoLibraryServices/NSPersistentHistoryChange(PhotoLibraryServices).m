@interface NSPersistentHistoryChange(PhotoLibraryServices)
- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices;
@end

@implementation NSPersistentHistoryChange(PhotoLibraryServices)

- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [a1 changedObjectID];
  v3 = [v2 pl_shortURI];

  if ([a1 changeType] == 1)
  {
    v4 = [a1 updatedProperties];
    v5 = PLDescriptionForUpdateProperties(v4);
  }

  else
  {
    if ([a1 changeType] != 2)
    {
      v5 = &stru_1F0F06D80;
      goto LABEL_17;
    }

    v6 = [a1 tombstone];
    v4 = v6;
    if (v6)
    {
      v25 = v3;
      v7 = [v6 allKeys];
      v8 = [v7 sortedArrayUsingSelector:sel_compare_];

      v5 = [MEMORY[0x1E696AD60] string];
      [(__CFString *)v5 appendString:@" {"];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = v8;
      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v28;
        v12 = &stru_1F0F06D80;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            v14 = v5;
            if (*v28 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v27 + 1) + 8 * i);
            v16 = [v4 objectForKeyedSubscript:v15];
            v24 = v15;
            v5 = v14;
            [(__CFString *)v14 appendFormat:@"%@%@: %@", v12, v24, v16];

            v12 = @", ";
          }

          v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
          v12 = @", ";
        }

        while (v10);
      }

      [(__CFString *)v5 appendString:@"}"];
      v3 = v25;
    }

    else
    {
      v5 = &stru_1F0F06D80;
    }
  }

LABEL_17:
  v17 = MEMORY[0x1E696AEC0];
  v18 = PLIndentToString();
  v19 = [a1 changeID];
  v20 = [a1 changeType];
  v21 = @"insert";
  if (v20 == 1)
  {
    v21 = @"update";
  }

  if (v20 == 2)
  {
    v21 = @"delete";
  }

  v22 = [v17 stringWithFormat:@"%@Change %08lld: %@ %@%@\n", v18, v19, v21, v3, v5];

  return v22;
}

@end