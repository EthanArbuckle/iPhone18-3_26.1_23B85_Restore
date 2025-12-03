@interface NSFileManager(UserNotificationsCore)
- (id)unc_contentsSortedByLastModificationDateOfDirectoryAtPath:()UserNotificationsCore error:;
- (uint64_t)unc_securelyCopyFile:()UserNotificationsCore fromURL:toURL:error:;
@end

@implementation NSFileManager(UserNotificationsCore)

- (uint64_t)unc_securelyCopyFile:()UserNotificationsCore fromURL:toURL:error:
{
  v9 = a3;
  v10 = a5;
  path = [v10 path];
  data = [MEMORY[0x1E695DEF0] data];
  LODWORD(self) = [self createFileAtPath:path contents:data attributes:MEMORY[0x1E695E0F8]];

  if (self)
  {
    v19 = 0;
    v13 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v10 error:&v19];
    v14 = v19;
    v15 = v14;
    if (v14)
    {
      if (a6)
      {
        v16 = v14;
LABEL_5:
        v17 = 0;
        *a6 = v16;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      if (fcopyfile([v9 fileDescriptor], objc_msgSend(v13, "fileDescriptor"), 0, 0x4000Fu) != -1)
      {
        v17 = 1;
        goto LABEL_14;
      }

      if (a6)
      {
        v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
        goto LABEL_5;
      }
    }

    v17 = 0;
    goto LABEL_14;
  }

  if (a6)
  {
    [MEMORY[0x1E696ABC0] un_errorWithUNErrorCode:104 userInfo:0];
    *a6 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_15:

  return v17;
}

- (id)unc_contentsSortedByLastModificationDateOfDirectoryAtPath:()UserNotificationsCore error:
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![self fileExistsAtPath:v6])
  {
    v21 = 0;
LABEL_14:
    v22 = [v21 bs_map:&__block_literal_global_12];

    goto LABEL_15;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager contentsOfDirectoryAtPath:v6 error:a4];

  if (v8)
  {
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      v12 = *MEMORY[0x1E696A350];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [v6 stringByAppendingPathComponent:*(*(&v28 + 1) + 8 * i)];
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v27 = 0;
          v16 = [defaultManager2 attributesOfItemAtPath:v14 error:&v27];
          v17 = v27;

          v18 = [v16 objectForKey:v12];
          v19 = v18;
          if (v18)
          {
            v32[0] = @"path";
            v32[1] = @"lastModDate";
            v33[0] = v14;
            v33[1] = v18;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
            [v26 addObject:v20];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v10);
    }

    v21 = [v26 sortedArrayUsingComparator:&__block_literal_global_8];

    goto LABEL_14;
  }

  v22 = 0;
LABEL_15:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

@end