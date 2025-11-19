@interface SecureMAHelper
- (BOOL)graftSecureAssetsFromLastBootSession;
- (SecureMAHelper)initWithLogger:(void *)a3;
- (id)copyBootTaskPlist:(id *)a3;
- (void)clearBootTaskPlist;
- (void)log:(id)a3;
@end

@implementation SecureMAHelper

- (void)log:(id)a3
{
  v4 = a3;
  if ([(SecureMAHelper *)self logger])
  {
    ([(SecureMAHelper *)self logger])(v4);
  }

  else
  {
    NSLog(&stru_2A1EA42F8.isa, v4);
  }
}

- (SecureMAHelper)initWithLogger:(void *)a3
{
  v5.receiver = self;
  v5.super_class = SecureMAHelper;
  result = [(SecureMAHelper *)&v5 init];
  if (result)
  {
    result->_logger = a3;
  }

  return result;
}

- (id)copyBootTaskPlist:(id *)a3
{
  v7 = 0;
  v4 = [SecureMobileAssetBundle readBootTaskPlist:&v7];
  v5 = v7;
  if (a3 && v5)
  {
    v5 = v5;
    *a3 = v5;
  }

  return v4;
}

- (void)clearBootTaskPlist
{
  [(SecureMAHelper *)self log:@"Clearing previous boot-task plist\n"];
  v9 = 0;
  v3 = [SecureMobileAssetBundle clearBootTaskPlist:&v9];
  v4 = v9;
  v5 = v4;
  if (!v3 || v4 != 0)
  {
    v7 = @"Unknown error";
    if (v4)
    {
      v7 = v4;
    }

    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to clear previous boot task plist: %@\n", v7];
    [(SecureMAHelper *)self log:v8];
  }
}

- (BOOL)graftSecureAssetsFromLastBootSession
{
  [(SecureMAHelper *)self log:@"Attempting to graft secure assets from last boot session\n"];
  v17 = 0;
  v3 = [(SecureMAHelper *)self copyBootTaskPlist:&v17];
  v4 = v17;
  v5 = v4;
  if (v3)
  {
    [(SecureMAHelper *)self log:@"Boot plist successfully loaded. Deleting list\n"];
    [(SecureMAHelper *)self clearBootTaskPlist];
    v6 = [v3 objectForKey:@"GraftOperations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 1;
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 3221225472;
      v12[2] = __54__SecureMAHelper_graftSecureAssetsFromLastBootSession__block_invoke;
      v12[3] = &unk_29EE8B5E8;
      v12[4] = self;
      v12[5] = &v13;
      [v6 enumerateKeysAndObjectsUsingBlock:v12];
      v7 = *(v14 + 24);
      _Block_object_dispose(&v13, 8);
    }

    else
    {
      v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Boot plist from previous boot contains no graft operations. Skipping grafting..."];
      [(SecureMAHelper *)self log:v10];

      v7 = 1;
    }
  }

  else
  {
    v8 = MEMORY[0x29EDBA0F8];
    v6 = [v4 description];
    v9 = [v8 stringWithFormat:@"Unable to determine boot plist from previous boot. Skipping grafting: %@\n", v6];
    [(SecureMAHelper *)self log:v9];

    v7 = 0;
  }

  return v7 & 1;
}

void __54__SecureMAHelper_graftSecureAssetsFromLastBootSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:@"PathsToDeleteOnGraftFailure"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = *(a1 + 32);
      v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Graft operation for (%@) did not contain paths for cleanup, it will be skipped: %@.", v5, v7];
      [v19 log:v20];

      *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_29:

      goto LABEL_30;
    }

    v8 = [v6 objectForKey:@"PerformGraft"];
    objc_opt_class();
    v44 = v8;
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 BOOLValue])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [[SecureMobileAssetBundle alloc] initWithPath:v5];
      if (v10)
      {
        v11 = v10;
        context = v9;
        v12 = objc_opt_new();
        v13 = [MEMORY[0x29EDB8E50] setWithArray:v7];
        [v12 setPathsToPurgeOnGraftFailureInEarlyBootTask:v13];

        v51 = 0;
        v14 = [(SecureMobileAssetBundle *)v11 beginAccessWithOptions:v12 accessMechanismPtr:0 errorPtr:&v51];
        v15 = v51;
        v16 = *(a1 + 32);
        if (v14)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"Successfully grafted asset at %@\n", v5, v40];
        }

        else
        {
          v23 = @"Unknown error";
          if (v15)
          {
            v23 = v15;
          }

          [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to graft asset at %@: %@\n", v5, v23];
        }
        v24 = ;
        [v16 log:v24];

        objc_autoreleasePoolPop(context);
        v25 = v44;
        if (v14)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v21 = *(a1 + 32);
        v22 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to allocate SecureMobileAssetBundle for asset at path %@\n", v5];
        [v21 log:v22];

        objc_autoreleasePoolPop(v9);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    v42 = v6;
    v43 = v5;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v41 = v7;
    contexta = v7;
    v26 = [contexta countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v48;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v48 != v28)
          {
            objc_enumerationMutation(contexta);
          }

          v30 = *(*(&v47 + 1) + 8 * i);
          v31 = *(a1 + 32);
          v32 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Cleaning up path: %@", v30];
          [v31 log:v32];

          v33 = [MEMORY[0x29EDB9FB8] defaultManager];
          LOBYTE(v31) = [v33 fileExistsAtPath:v30];

          if (v31)
          {
            if (removefile([v30 fileSystemRepresentation], 0, 1u))
            {
              v34 = __error();
              v35 = *(a1 + 32);
              v36 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to cleanup: %@. %s", v30, strerror(*v34)];
              [v35 log:v36];

              *(*(*(a1 + 40) + 8) + 24) = 0;
            }
          }

          else
          {
            v37 = *(a1 + 32);
            v38 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"The path already does not exist: %@", v30];
            [v37 log:v38];
          }
        }

        v27 = [contexta countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v27);
    }

    v6 = v42;
    v5 = v43;
    v7 = v41;
    v25 = v44;
LABEL_28:

    goto LABEL_29;
  }

  v17 = *(a1 + 32);
  v18 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Graft operation for (%@) is not a dictionary, it will be skipped: %@", v5, v6];
  [v17 log:v18];

  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_30:

  v39 = *MEMORY[0x29EDCA608];
}

@end