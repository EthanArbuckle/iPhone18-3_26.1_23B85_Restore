@interface NSBundle(PCXBundleAdditions)
- (uint64_t)pcxPathForImageResource:()PCXBundleAdditions;
@end

@implementation NSBundle(PCXBundleAdditions)

- (uint64_t)pcxPathForImageResource:()PCXBundleAdditions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [&unk_28732D940 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(&unk_28732D940);
      }

      result = [self pathForResource:a3 ofType:*(*(&v9 + 1) + 8 * v8)];
      if (result)
      {
        break;
      }

      if (v6 == ++v8)
      {
        result = [&unk_28732D940 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v6 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

@end