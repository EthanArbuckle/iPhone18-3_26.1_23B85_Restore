@interface NSFileManager(TVMLKitAdditions)
- (blkcnt_t)tv_onDiskSizeOfFileAtPath:()TVMLKitAdditions status:;
- (uint64_t)tv_onDiskSizeOfDirectoryAtPath:()TVMLKitAdditions status:;
@end

@implementation NSFileManager(TVMLKitAdditions)

- (blkcnt_t)tv_onDiskSizeOfFileAtPath:()TVMLKitAdditions status:
{
  memset(&v7, 0, sizeof(v7));
  v5 = lstat([a3 cStringUsingEncoding:{1, 0, 0, 0, 0, 0, 0, 0}], &v7);
  if (a4)
  {
    *a4 = v5;
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return v7.st_blocks << 9;
  }
}

- (uint64_t)tv_onDiskSizeOfDirectoryAtPath:()TVMLKitAdditions status:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 enumeratorAtPath:v5];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = [v5 stringByAppendingPathComponent:*(*(&v19 + 1) + 8 * v13)];
      memset(&v18, 0, sizeof(v18));
      v15 = lstat([v14 cStringUsingEncoding:1], &v18);
      st_blocks = v18.st_blocks;

      if (v15)
      {
        break;
      }

      v11 += st_blocks << 9;
      if (v10 == ++v13)
      {
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    v11 = 0;
LABEL_11:
    v15 = 0;
  }

  if (a4)
  {
    *a4 = v15;
  }

  return v11;
}

@end