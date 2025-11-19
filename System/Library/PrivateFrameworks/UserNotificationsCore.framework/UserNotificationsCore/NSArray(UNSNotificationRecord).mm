@interface NSArray(UNSNotificationRecord)
- (uint64_t)uns_containsSimilarRecord:()UNSNotificationRecord;
@end

@implementation NSArray(UNSNotificationRecord)

- (uint64_t)uns_containsSimilarRecord:()UNSNotificationRecord
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 isSimilar:{v4, v12}])
          {
            v6 = 1;
            goto LABEL_13;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

@end