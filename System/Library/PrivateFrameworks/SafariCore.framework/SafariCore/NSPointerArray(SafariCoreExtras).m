@interface NSPointerArray(SafariCoreExtras)
- (uint64_t)safari_firstIndexOfPointer:()SafariCoreExtras;
@end

@implementation NSPointerArray(SafariCoreExtras)

- (uint64_t)safari_firstIndexOfPointer:()SafariCoreExtras
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    v10 = v7;
    v7 += v6;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v4);
      }

      if (*(*(&v13 + 1) + 8 * v9) == a3)
      {
        break;
      }

      ++v10;
      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end