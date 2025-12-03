@interface PLResourceIdentityXPC
+ (id)dictionaryRepresentationFromResourceIdentity:(id)identity;
+ (id)imageRequestResourceForDataStoreKey:(id)key store:(id)store assetObjectID:(id)d context:(id)context;
+ (id)possibleClassesInDictionaryRepresentation;
- (BOOL)isOriginalResource;
- (NSString)description;
- (PLResourceIdentityXPC)initWithDictionary:(id)dictionary;
- (PLResourceIdentityXPC)initWithResource:(id)resource;
- (PLResourceIdentityXPC)initWithResourceType:(unsigned int)type version:(unsigned int)version recipeID:(unsigned int)d uti:(id)uti conformsToTypes:(int64_t)types;
@end

@implementation PLResourceIdentityXPC

- (NSString)description
{
  v3 = [PLResourceRecipe recipeFromID:[(PLResourceIdentityXPC *)self recipeID]];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  resourceType = self->_resourceType;
  if (resourceType > 0x1F)
  {
    v8 = @"invalid";
  }

  else
  {
    v8 = off_1E75663B0[resourceType];
  }

  v9 = v8;
  identifier = [(PLUniformTypeIdentifier *)self->_uniformTypeIdentifier identifier];
  v11 = [v4 stringWithFormat:@"<%@ %p> %@, recipe: %@, uti: %@", v6, self, v9, v3, identifier];

  return v11;
}

- (BOOL)isOriginalResource
{
  selfCopy = self;
  if ([(PLResourceIdentityXPC *)selfCopy version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PLResourceIdentityXPC *)selfCopy recipeID]& 1) == 0;
  }

  return v3;
}

- (PLResourceIdentityXPC)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"resourceType"];
  integerValue = [v5 integerValue];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"resourceVersion"];
  integerValue2 = [v7 integerValue];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"resourceRecipeID"];
  integerValue3 = [v9 integerValue];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"resourceUniformTypeIdentifier"];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"conformsToTypes"];

  v13 = -[PLResourceIdentityXPC initWithResourceType:version:recipeID:uti:conformsToTypes:](self, "initWithResourceType:version:recipeID:uti:conformsToTypes:", integerValue, integerValue2, integerValue3, v11, [v12 integerValue]);
  return v13;
}

- (PLResourceIdentityXPC)initWithResource:(id)resource
{
  v25 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  v5 = resourceCopy;
  if (resourceCopy)
  {
    uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
    if (uniformTypeIdentifier && (v7 = uniformTypeIdentifier, [v5 uniformTypeIdentifier], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v9))
    {
      uniformTypeIdentifier2 = [v5 uniformTypeIdentifier];
      identifier = [uniformTypeIdentifier2 identifier];

      uniformTypeIdentifier3 = [v5 uniformTypeIdentifier];
      v13 = PLResourceConformsToTypesFromUTI(uniformTypeIdentifier3);
    }

    else
    {
      v14 = PLImageManagerGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = PLResourceIdentityShortDescription(v5);
        v21 = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v17;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Attempting to create %{public}@ from resource (%{public}@) with missing uniform type identifier, will guess uti from resource type", &v21, 0x16u);
      }

      v13 = 0;
      identifier = 0;
      switch([v5 resourceType])
      {
        case 0u:
        case 4u:
        case 0xAu:
        case 0xFu:
        case 0x10u:
          v18 = MEMORY[0x1E6982E30];
          goto LABEL_14;
        case 1u:
        case 3u:
        case 0xBu:
          v18 = MEMORY[0x1E6982EE8];
          goto LABEL_14;
        case 2u:
          v18 = MEMORY[0x1E6982CD0];
          goto LABEL_14;
        case 5u:
        case 6u:
        case 8u:
        case 9u:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0x1Fu:
          v18 = MEMORY[0x1E6982E48];
          goto LABEL_14;
        case 7u:
          v18 = MEMORY[0x1E6982D60];
LABEL_14:
          identifier = [*v18 identifier];
          v13 = 0;
          break;
        case 0x11u:
        case 0x12u:
        case 0x13u:
        case 0x14u:
        case 0x15u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
        case 0x19u:
        case 0x1Au:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
          break;
        default:
          identifier = 0;
          break;
      }
    }

    v19 = -[PLResourceIdentityXPC initWithResourceType:version:recipeID:uti:conformsToTypes:](self, "initWithResourceType:version:recipeID:uti:conformsToTypes:", [v5 resourceType], objc_msgSend(v5, "version"), objc_msgSend(v5, "recipeID"), identifier, v13);
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

- (PLResourceIdentityXPC)initWithResourceType:(unsigned int)type version:(unsigned int)version recipeID:(unsigned int)d uti:(id)uti conformsToTypes:(int64_t)types
{
  utiCopy = uti;
  if (utiCopy)
  {
    v17.receiver = self;
    v17.super_class = PLResourceIdentityXPC;
    v12 = [(PLResourceIdentityXPC *)&v17 init];
    v13 = v12;
    if (v12)
    {
      v12->_resourceType = type;
      v12->_version = version;
      v12->_recipeID = d;
      v14 = [PLUniformTypeIdentifier utiWithIdentifier:utiCopy];
      uniformTypeIdentifier = v13->_uniformTypeIdentifier;
      v13->_uniformTypeIdentifier = v14;
    }
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

+ (id)possibleClassesInDictionaryRepresentation
{
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 initWithObjects:{v3, v4, objc_opt_class(), 0}];

  return v5;
}

+ (id)dictionaryRepresentationFromResourceIdentity:(id)identity
{
  v17[5] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  uniformTypeIdentifier = [identityCopy uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];

  if (identifier)
  {
    v16[0] = @"resourceType";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(identityCopy, "resourceType")}];
    v17[0] = v6;
    v16[1] = @"resourceVersion";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(identityCopy, "version")}];
    v17[1] = v7;
    v16[2] = @"resourceRecipeID";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(identityCopy, "recipeID")}];
    v17[2] = v8;
    v16[3] = @"resourceUniformTypeIdentifier";
    uniformTypeIdentifier2 = [identityCopy uniformTypeIdentifier];
    identifier2 = [uniformTypeIdentifier2 identifier];
    v17[3] = identifier2;
    v16[4] = @"conformsToTypes";
    v11 = MEMORY[0x1E696AD98];
    uniformTypeIdentifier3 = [identityCopy uniformTypeIdentifier];
    v13 = [v11 numberWithInteger:PLResourceConformsToTypesFromUTI(uniformTypeIdentifier3)];
    v17[4] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)imageRequestResourceForDataStoreKey:(id)key store:(id)store assetObjectID:(id)d context:(id)context
{
  keyCopy = key;
  storeCopy = store;
  dCopy = d;
  contextCopy = context;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__103809;
  v31 = __Block_byref_object_dispose__103810;
  v32 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__PLResourceIdentityXPC_imageRequestResourceForDataStoreKey_store_assetObjectID_context___block_invoke;
  v20[3] = &unk_1E75754C8;
  v14 = dCopy;
  v21 = v14;
  v15 = contextCopy;
  v22 = v15;
  v16 = keyCopy;
  v23 = v16;
  v17 = storeCopy;
  v24 = v17;
  v25 = &v27;
  selfCopy = self;
  [v15 performBlockAndWait:v20];
  v18 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v18;
}

void __89__PLResourceIdentityXPC_imageRequestResourceForDataStoreKey_store_assetObjectID_context___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  v21 = 0;
  v3 = [v2 fetchResourcesForAssetVersions:0 allowDerivatives:1 additionalPredicate:0 relationshipKeyPathsForPrefetching:0 error:&v21];
  v16 = v21;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 dataStoreKey];
        if ([v10 isEqualToKey:*(a1 + 48)])
        {
          v11 = [v9 dataStore];
          v12 = [v11 isEqual:*(a1 + 56)];

          if (v12)
          {
            v13 = [objc_alloc(*(a1 + 72)) initWithResource:v9];
            v14 = *(*(a1 + 64) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;

            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

LABEL_12:
}

@end