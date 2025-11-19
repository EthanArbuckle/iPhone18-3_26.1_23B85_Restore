@interface PRUISPosterConfigurationFinalizer
+ (id)finalizedConfigurationForAttributes:(id)a3 withConfiguredProperties:(id)a4 error:(id *)a5;
+ (id)finalizerErrorWithCode:(int64_t)a3 underlyingError:(id)a4;
@end

@implementation PRUISPosterConfigurationFinalizer

+ (id)finalizerErrorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696AA08];
  v12[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"PRUISPosterConfigurationFinalizerErrorDomain" code:a3 userInfo:v8];

  return v9;
}

+ (id)finalizedConfigurationForAttributes:(id)a3 withConfiguredProperties:(id)a4 error:(id *)a5
{
  v31 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v7 path];
  v10 = MEMORY[0x1E69C51E0];
  v11 = [v7 extensionIdentifier];
  v12 = [v7 descriptorIdentifier];
  v13 = [v7 role];
  v14 = [v7 posterUUID];
  v15 = [v10 configurationIdentityWithProvider:v11 identifier:v12 role:v13 posterUUID:v14 version:0 supplement:0];

  v16 = MEMORY[0x1E69C51E8];
  v17 = [v7 providerURL];

  v18 = [v16 pathWithProviderURL:v17 identity:v15];

  v19 = [v18 instanceURL];
  v20 = PFFileProtectionNoneAttributes();
  v37 = 0;
  [v8 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:v20 error:&v37];
  v21 = v37;

  if (v21)
  {
    [objc_opt_class() finalizerErrorWithCode:2 underlyingError:v21];
    *a5 = v22 = 0;
    v23 = v31;
    goto LABEL_8;
  }

  v24 = [v18 contentsURL];
  v25 = PFFileProtectionNoneAttributes();
  v36 = 0;
  [v8 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:v25 error:&v36];
  v21 = v36;

  v23 = v31;
  if (v21)
  {
    goto LABEL_7;
  }

  v35 = 0;
  [v18 copyContentsOfPath:v9 error:&v35];
  v26 = v35;
  if (v26)
  {
    goto LABEL_5;
  }

  v27 = [v18 supplementURL];
  v28 = PFFileProtectionNoneAttributes();
  v34 = 0;
  [v8 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:v28 error:&v34];
  v21 = v34;

  if (v21)
  {
    goto LABEL_7;
  }

  v33 = 0;
  [MEMORY[0x1E69C5328] storeConfiguredPropertiesForPath:v18 configuredProperties:v31 error:&v33];
  v26 = v33;
  if (v26)
  {
LABEL_5:
    v21 = v26;
LABEL_7:
    [objc_opt_class() finalizerErrorWithCode:2 underlyingError:v21];
    *a5 = v22 = 0;
    goto LABEL_8;
  }

  v30 = [v18 containerURL];
  v32 = 0;
  [v15 setupPersistenceForPathContainerURL:v30 error:&v32];
  v21 = v32;

  if (v21)
  {
    *a5 = [objc_opt_class() finalizerErrorWithCode:2 underlyingError:v21];
  }

  v22 = [objc_alloc(MEMORY[0x1E69C5000]) _initWithPath:v18];
LABEL_8:

  return v22;
}

@end