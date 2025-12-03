@interface INSchema(WFIsSynced)
- (uint64_t)isSyncedFromOtherDevice;
@end

@implementation INSchema(WFIsSynced)

- (uint64_t)isSyncedFromOtherDevice
{
  v16 = *MEMORY[0x1E69E9840];
  NSSelectorFromString(&cfstr_Definitionfile.isa);
  if (objc_opt_respondsToSelector())
  {
    v2 = [self valueForKey:@"_definitionFileURLs"];
  }

  else
  {
    v2 = 0;
  }

  if ([v2 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (!WFIsSyncedIntentDefinitionURL(*(*(&v11 + 1) + 8 * v7)))
          {
            v8 = 0;
            goto LABEL_15;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_15:
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

@end