@interface NSPersistentHistoryChange(PhotoLibraryServices)
- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices;
@end

@implementation NSPersistentHistoryChange(PhotoLibraryServices)

- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices
{
  v32 = *MEMORY[0x1E69E9840];
  changedObjectID = [self changedObjectID];
  pl_shortURI = [changedObjectID pl_shortURI];

  if ([self changeType] == 1)
  {
    updatedProperties = [self updatedProperties];
    string = PLDescriptionForUpdateProperties(updatedProperties);
  }

  else
  {
    if ([self changeType] != 2)
    {
      string = &stru_1F0F06D80;
      goto LABEL_17;
    }

    tombstone = [self tombstone];
    updatedProperties = tombstone;
    if (tombstone)
    {
      v25 = pl_shortURI;
      allKeys = [tombstone allKeys];
      v8 = [allKeys sortedArrayUsingSelector:sel_compare_];

      string = [MEMORY[0x1E696AD60] string];
      [(__CFString *)string appendString:@" {"];
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
            v14 = string;
            if (*v28 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v27 + 1) + 8 * i);
            v16 = [updatedProperties objectForKeyedSubscript:v15];
            v24 = v15;
            string = v14;
            [(__CFString *)v14 appendFormat:@"%@%@: %@", v12, v24, v16];

            v12 = @", ";
          }

          v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
          v12 = @", ";
        }

        while (v10);
      }

      [(__CFString *)string appendString:@"}"];
      pl_shortURI = v25;
    }

    else
    {
      string = &stru_1F0F06D80;
    }
  }

LABEL_17:
  v17 = MEMORY[0x1E696AEC0];
  v18 = PLIndentToString();
  changeID = [self changeID];
  changeType = [self changeType];
  v21 = @"insert";
  if (changeType == 1)
  {
    v21 = @"update";
  }

  if (changeType == 2)
  {
    v21 = @"delete";
  }

  v22 = [v17 stringWithFormat:@"%@Change %08lld: %@ %@%@\n", v18, changeID, v21, pl_shortURI, string];

  return v22;
}

@end