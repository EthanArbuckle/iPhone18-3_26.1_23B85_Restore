@interface PRSPosterUpdater
+ (BOOL)canUpdatesBeAppliedLocally:(id)a3;
+ (id)updaterForPath:(id)a3;
- (BOOL)applyUpdateLocally:(id)a3 error:(id *)a4;
- (BOOL)applyUpdatesLocally:(id)a3 error:(id *)a4;
- (id)_initWithWeakPath:(id)a3;
@end

@implementation PRSPosterUpdater

+ (BOOL)canUpdatesBeAppliedLocally:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) type];
        if (v8 > 0x15 || ((1 << v8) & 0x3BE001) == 0)
        {
          v10 = 0;
          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_14:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)updaterForPath:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = a1;
    objc_sync_enter(v6);
    v7 = objc_getAssociatedObject(v5, a2);
    if (!v7)
    {
      v7 = [[PRSPosterUpdater alloc] _initWithWeakPath:v5];
      objc_setAssociatedObject(v5, a2, v7, 1);
    }

    objc_sync_exit(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initWithWeakPath:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PRSPosterUpdater;
  v5 = [(PRSPosterUpdater *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakPath, v4);
  }

  return v6;
}

- (BOOL)applyUpdateLocally:(id)a3 error:(id *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v12 = a3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a3;
    v8 = [v6 arrayWithObjects:&v12 count:1];

    v9 = [(PRSPosterUpdater *)self applyUpdatesLocally:v8 error:a4, v12, v13];
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)applyUpdatesLocally:(id)a3 error:(id *)a4
{
  v68[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakPath);
    if (!WeakRetained)
    {
      if (!a4)
      {
        LOBYTE(v24) = 0;
LABEL_56:

        goto LABEL_57;
      }

      v25 = MEMORY[0x1E696ABC0];
      v67 = *MEMORY[0x1E696A588];
      v68[0] = @"path is no longer valid.";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
      [v25 errorWithDomain:@"com.apple.PosterBoardServices" code:-1 userInfo:v8];
      *a4 = LOBYTE(v24) = 0;
LABEL_55:

      goto LABEL_56;
    }

    v8 = self;
    objc_sync_enter(v8);
    v9 = [WeakRetained instanceURL];
    if (([v9 checkResourceIsReachableAndReturnError:a4] & 1) == 0)
    {
      LOBYTE(v24) = 0;
LABEL_54:

      objc_sync_exit(v8);
      goto LABEL_55;
    }

    v10 = [WeakRetained role];
    v47 = a4;
    v45 = v9;
    v46 = WeakRetained;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v51 objects:v66 count:16];
    if (v12)
    {
      v13 = *v52;
      v14 = *MEMORY[0x1E69C5220];
      v15 = *MEMORY[0x1E69C5208];
      do
      {
        v16 = 0;
        do
        {
          if (*v52 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [*(*(&v51 + 1) + 8 * v16) type];
          if (v17 <= 0x15)
          {
            if (((1 << v17) & 0x3BE1C6) != 0)
            {
              if (([v10 isEqualToString:v14] & 1) == 0)
              {
                v26 = v47;
                if (v47)
                {
                  v27 = MEMORY[0x1E696ABC0];
                  v62 = *MEMORY[0x1E696A588];
                  v63 = @"Lockscreen role is inconsistent with provided updates.";
                  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
                  v9 = v45;
                  v28 = WeakRetained = v46;
                  v29 = [v27 errorWithDomain:@"com.apple.PosterBoardServices" code:-1 userInfo:v28];
LABEL_43:
                  LOBYTE(v24) = 0;
                  *v26 = v29;
                  goto LABEL_52;
                }

                goto LABEL_44;
              }
            }

            else if (((1 << v17) & 0x1200) != 0)
            {
              if (([v10 isEqualToString:v15] & 1) == 0)
              {
                v26 = v47;
                if (v47)
                {
                  v38 = MEMORY[0x1E696ABC0];
                  v60 = *MEMORY[0x1E696A588];
                  v61 = @"Ambient role is inconsistent with provided updates.";
                  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
                  v9 = v45;
                  v28 = WeakRetained = v46;
                  v29 = [v38 errorWithDomain:@"com.apple.PosterBoardServices" code:-1 userInfo:v28];
                  goto LABEL_43;
                }

LABEL_44:
                LOBYTE(v24) = 0;
                WeakRetained = v46;
                v9 = v45;
                goto LABEL_53;
              }
            }

            else if (((1 << v17) & 0xC38) != 0)
            {
              v26 = v47;
              if (v47)
              {
                v30 = MEMORY[0x1E696ABC0];
                v64 = *MEMORY[0x1E696A588];
                v65 = @"update type is not valid for PRSPosterUpdater.";
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
                v9 = v45;
                v28 = WeakRetained = v46;
                v29 = [v30 errorWithDomain:@"com.apple.PosterBoardServices" code:-1 userInfo:v28];
                goto LABEL_43;
              }

              goto LABEL_44;
            }
          }

          ++v16;
        }

        while (v12 != v16);
        v18 = [v11 countByEnumeratingWithState:&v51 objects:v66 count:16];
        v12 = v18;
      }

      while (v18);
    }

    WeakRetained = v46;
    v9 = v45;
    v50 = 0;
    v19 = [getPRPosterPathUtilitiesClass() loadConfiguredPropertiesForPath:v46 error:&v50];
    v20 = v50;
    v21 = [v19 mutableCopy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v56 = 0;
      v57 = &v56;
      v58 = 0x2050000000;
      v31 = getPRPosterMutableConfiguredPropertiesClass_softClass;
      v59 = getPRPosterMutableConfiguredPropertiesClass_softClass;
      if (!getPRPosterMutableConfiguredPropertiesClass_softClass)
      {
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __getPRPosterMutableConfiguredPropertiesClass_block_invoke;
        v55[3] = &unk_1E818CC28;
        v55[4] = &v56;
        __getPRPosterMutableConfiguredPropertiesClass_block_invoke(v55);
        v31 = v57[3];
      }

      v32 = v31;
      _Block_object_dispose(&v56, 8);
      v23 = [v31 defaultConfiguredPropertiesForRole:v10];
    }

    v28 = v23;

    if (v20)
    {
      if (v47)
      {
        v33 = v20;
        LOBYTE(v24) = 0;
        *v47 = v20;
      }

      else
      {
        LOBYTE(v24) = 0;
      }

      goto LABEL_51;
    }

    v49 = 0;
    v34 = [v28 applyUpdates:v11 error:&v49];
    v35 = v49;
    v36 = v35;
    if (v35)
    {
      if (v47)
      {
        v37 = v35;
        LOBYTE(v24) = 0;
        *v47 = v36;
      }

      else
      {
        LOBYTE(v24) = 0;
      }

      goto LABEL_50;
    }

    if (v34)
    {
      PRPosterPathUtilitiesClass = getPRPosterPathUtilitiesClass();
      v40 = [v28 copy];
      v24 = [PRPosterPathUtilitiesClass storeConfiguredPropertiesForPath:v46 configuredProperties:v40 error:v47];

      if (!v24)
      {
LABEL_50:

LABEL_51:
        v11 = v20;
LABEL_52:

LABEL_53:
        goto LABEL_54;
      }

      v48 = objc_alloc_init(PRSService);
      v41 = [v46 identity];
      v42 = [v41 posterUUID];
      [(PRSService *)v48 notePosterConfigurationUnderlyingModelDidChange:v42];
    }

    LOBYTE(v24) = 1;
    goto LABEL_50;
  }

  LOBYTE(v24) = 1;
LABEL_57:

  v43 = *MEMORY[0x1E69E9840];
  return v24;
}

@end