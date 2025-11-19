@interface PCDLHandleForLibrary
@end

@implementation PCDLHandleForLibrary

uint64_t ___PCDLHandleForLibrary_block_invoke()
{
  _PCDLHandleForLibrary_handles = CFDictionaryCreateMutable(0, 0, 0, 0);
  _PCDLHandleForLibrary_queue = dispatch_queue_create("PCDYLDLoaderQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void ___PCDLHandleForLibrary_block_invoke_2(uint64_t a1)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 pathExtension];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v3 isEqualToString:@"framework"])
  {
    if (_PCFrameworkSearchPaths_onceToken != -1)
    {
      ___PCDLHandleForLibrary_block_invoke_2_cold_2();
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = _PCFrameworkSearchPaths_paths;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v22 + 1) + 8 * i) stringByAppendingPathComponent:{v2, v22}];
          if ([v4 fileExistsAtPath:v10])
          {
            v16 = [v2 stringByDeletingPathExtension];
            v15 = [v10 stringByAppendingPathComponent:v16];

            goto LABEL_26;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:

LABEL_29:
    v15 = 0;
    goto LABEL_30;
  }

  if ([v3 isEqualToString:@"dylib"])
  {
    if (_PCLibrarySearchPaths_onceToken != -1)
    {
      ___PCDLHandleForLibrary_block_invoke_2_cold_1();
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = _PCLibrarySearchPaths_paths;
    v11 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = [*(*(&v22 + 1) + 8 * j) stringByAppendingPathComponent:{v2, v22}];
          if ([v4 fileExistsAtPath:v15])
          {
LABEL_26:

            goto LABEL_30;
          }
        }

        v12 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_24;
  }

  if (![v3 isEqualToString:&stru_28701EA28])
  {
    goto LABEL_29;
  }

  v15 = v2;
LABEL_30:

  Value = CFDictionaryGetValue(_PCDLHandleForLibrary_handles, *(a1 + 32));
  v19 = *(a1 + 40);
  v18 = a1 + 40;
  *(*(v19 + 8) + 24) = Value;
  v20 = *(*(*v18 + 8) + 24);
  if (!v20)
  {
    *(*(*v18 + 8) + 24) = dlopen([v15 fileSystemRepresentation], 5);
    v20 = *(*(*v18 + 8) + 24);
    if (!v20)
    {
      ___PCDLHandleForLibrary_block_invoke_2_cold_3(v15, v18, v26);
      v20 = v26[0];
    }
  }

  CFDictionarySetValue(_PCDLHandleForLibrary_handles, v15, v20);

  v21 = *MEMORY[0x277D85DE8];
}

void ___PCDLHandleForLibrary_block_invoke_2_cold_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *_PCDLHandleForLibrary(NSString *__strong)_block_invoke_2"];
  [v6 handleFailureInFunction:v7 file:@"PCUtilities.m" lineNumber:114 description:{@"Unable to open framework '%@'", a1}];

  *a3 = *(*(*a2 + 8) + 24);
}

@end