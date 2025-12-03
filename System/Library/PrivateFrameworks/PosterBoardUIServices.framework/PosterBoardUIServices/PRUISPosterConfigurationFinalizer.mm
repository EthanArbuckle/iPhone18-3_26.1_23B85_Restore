@interface PRUISPosterConfigurationFinalizer
+ (id)finalizedConfigurationForAttributes:(id)attributes withConfiguredProperties:(id)properties error:(id *)error;
+ (id)finalizerErrorWithCode:(int64_t)code underlyingError:(id)error;
@end

@implementation PRUISPosterConfigurationFinalizer

+ (id)finalizerErrorWithCode:(int64_t)code underlyingError:(id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696AA08];
  v12[0] = error;
  v6 = MEMORY[0x1E695DF20];
  errorCopy = error;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"PRUISPosterConfigurationFinalizerErrorDomain" code:code userInfo:v8];

  return v9;
}

+ (id)finalizedConfigurationForAttributes:(id)attributes withConfiguredProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  attributesCopy = attributes;
  v8 = objc_opt_new();
  path = [attributesCopy path];
  v10 = MEMORY[0x1E69C51E0];
  extensionIdentifier = [attributesCopy extensionIdentifier];
  descriptorIdentifier = [attributesCopy descriptorIdentifier];
  role = [attributesCopy role];
  posterUUID = [attributesCopy posterUUID];
  v15 = [v10 configurationIdentityWithProvider:extensionIdentifier identifier:descriptorIdentifier role:role posterUUID:posterUUID version:0 supplement:0];

  v16 = MEMORY[0x1E69C51E8];
  providerURL = [attributesCopy providerURL];

  v18 = [v16 pathWithProviderURL:providerURL identity:v15];

  instanceURL = [v18 instanceURL];
  v20 = PFFileProtectionNoneAttributes();
  v37 = 0;
  [v8 createDirectoryAtURL:instanceURL withIntermediateDirectories:1 attributes:v20 error:&v37];
  v21 = v37;

  if (v21)
  {
    [objc_opt_class() finalizerErrorWithCode:2 underlyingError:v21];
    *error = v22 = 0;
    v23 = propertiesCopy;
    goto LABEL_8;
  }

  contentsURL = [v18 contentsURL];
  v25 = PFFileProtectionNoneAttributes();
  v36 = 0;
  [v8 createDirectoryAtURL:contentsURL withIntermediateDirectories:1 attributes:v25 error:&v36];
  v21 = v36;

  v23 = propertiesCopy;
  if (v21)
  {
    goto LABEL_7;
  }

  v35 = 0;
  [v18 copyContentsOfPath:path error:&v35];
  v26 = v35;
  if (v26)
  {
    goto LABEL_5;
  }

  supplementURL = [v18 supplementURL];
  v28 = PFFileProtectionNoneAttributes();
  v34 = 0;
  [v8 createDirectoryAtURL:supplementURL withIntermediateDirectories:1 attributes:v28 error:&v34];
  v21 = v34;

  if (v21)
  {
    goto LABEL_7;
  }

  v33 = 0;
  [MEMORY[0x1E69C5328] storeConfiguredPropertiesForPath:v18 configuredProperties:propertiesCopy error:&v33];
  v26 = v33;
  if (v26)
  {
LABEL_5:
    v21 = v26;
LABEL_7:
    [objc_opt_class() finalizerErrorWithCode:2 underlyingError:v21];
    *error = v22 = 0;
    goto LABEL_8;
  }

  containerURL = [v18 containerURL];
  v32 = 0;
  [v15 setupPersistenceForPathContainerURL:containerURL error:&v32];
  v21 = v32;

  if (v21)
  {
    *error = [objc_opt_class() finalizerErrorWithCode:2 underlyingError:v21];
  }

  v22 = [objc_alloc(MEMORY[0x1E69C5000]) _initWithPath:v18];
LABEL_8:

  return v22;
}

@end