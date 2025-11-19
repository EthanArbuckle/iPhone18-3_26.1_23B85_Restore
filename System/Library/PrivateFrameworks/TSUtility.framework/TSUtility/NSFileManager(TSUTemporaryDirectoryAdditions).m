@interface NSFileManager(TSUTemporaryDirectoryAdditions)
- (uint64_t)grantUserWritePosixPermissionAtPath:()TSUTemporaryDirectoryAdditions error:;
@end

@implementation NSFileManager(TSUTemporaryDirectoryAdditions)

- (uint64_t)grantUserWritePosixPermissionAtPath:()TSUTemporaryDirectoryAdditions error:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  v28 = 0;
  v8 = [a1 attributesOfItemAtPath:a3 error:&v28];
  v9 = [v8 fileType];
  v10 = *MEMORY[0x277CCA1E8];
  if (([v9 isEqualToString:*MEMORY[0x277CCA1E8]] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277CCA1F0]) & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277CCA1F8]))
  {
    goto LABEL_16;
  }

  v11 = [v8 filePosixPermissions];
  v12 = MEMORY[0x277CBEAC0];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11 | 0x80];
  if ([a1 setAttributes:objc_msgSend(v12 ofItemAtPath:"dictionaryWithObject:forKey:" error:{v13, *MEMORY[0x277CCA180]), a3, &v28}])
  {
    if ([v9 isEqualToString:v10])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = [a1 contentsOfDirectoryAtPath:a3 error:{&v28, 0}];
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
LABEL_8:
        v18 = 0;
        while (1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if (![a1 grantUserWritePosixPermissionAtPath:objc_msgSend(a3 error:{"stringByAppendingPathComponent:", *(*(&v24 + 1) + 8 * v18)), &v28}])
          {
            goto LABEL_15;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
            v19 = 1;
            if (v16)
            {
              goto LABEL_8;
            }

            goto LABEL_17;
          }
        }
      }
    }

LABEL_16:
    v19 = 1;
    goto LABEL_17;
  }

LABEL_15:
  v19 = 0;
LABEL_17:
  v20 = v28;
  [v7 drain];
  v21 = v28;
  if (a4 && (v19 & 1) == 0)
  {
    v22 = v28;
    if (!v28)
    {
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
    }

    *a4 = v22;
  }

  return v19;
}

@end