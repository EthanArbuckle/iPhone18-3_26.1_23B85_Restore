@interface UIViewController(PLNavigationControllerInterface)
- (uint64_t)uiipc_filterForMediaTypes:()PLNavigationControllerInterface;
- (uint64_t)uiipc_imagePickerOptions;
- (uint64_t)uiipc_useTelephonyUI;
- (void)uiipc_imagePickerController;
@end

@implementation UIViewController(PLNavigationControllerInterface)

- (uint64_t)uiipc_filterForMediaTypes:()PLNavigationControllerInterface
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = *v15;
    v9 = *MEMORY[0x277CE1DB0];
    v10 = *MEMORY[0x277CE1E00];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 isEqualToString:{objc_msgSend(v9, "identifier")}])
        {
          v6 = 1;
        }

        else
        {
          v7 |= [v12 isEqualToString:{objc_msgSend(v10, "identifier")}];
        }
      }

      v5 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
    if (v7)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    if (v6)
    {
      return (v6 & v7 & 1) == 0;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

- (uint64_t)uiipc_useTelephonyUI
{
  uiipc_imagePickerOptions = [self uiipc_imagePickerOptions];
  v2 = [uiipc_imagePickerOptions objectForKey:*MEMORY[0x277D77490]];

  return [v2 BOOLValue];
}

- (uint64_t)uiipc_imagePickerOptions
{
  uiipc_imagePickerController = [self uiipc_imagePickerController];

  return [uiipc_imagePickerController _properties];
}

- (void)uiipc_imagePickerController
{
  for (i = [self parentViewController]; i; i = objc_msgSend(i, "parentViewController"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }
  }

  return i;
}

@end