@interface PLVideoInternalResource
- (BOOL)hasAssociatedMediaMetadata;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocallyAvailable;
- (BOOL)isLocallyGeneratable;
- (BOOL)isOriginalVideo;
- (BOOL)isPlayable;
- (BOOL)isStreamable;
- (BOOL)matchesOrExceedsQualityLevel:(unsigned int)level;
- (NSString)debugDescription;
- (PLVideoInternalResource)initWithBackingResource:(id)resource;
- (id)additionalDescription;
- (id)fileURLIfLocal;
- (id)uniformTypeIdentifier;
@end

@implementation PLVideoInternalResource

- (NSString)debugDescription
{
  dataStore = [(PLInternalResource *)self->_backingResource dataStore];
  v16 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  asset = [(PLInternalResource *)self->_backingResource asset];
  uuid = [asset uuid];
  v7 = [dataStore descriptionForSubtype:{-[PLInternalResource dataStoreSubtype](self->_backingResource, "dataStoreSubtype")}];
  unorientedWidth = [(PLInternalResource *)self->_backingResource unorientedWidth];
  unorientedHeight = [(PLInternalResource *)self->_backingResource unorientedHeight];
  v10 = PLResourceLocalAvailabilityName([(PLInternalResource *)self->_backingResource localAvailability]);
  remoteAvailability = [(PLInternalResource *)self->_backingResource remoteAvailability];
  v12 = @"missing";
  if (remoteAvailability == 1)
  {
    v12 = @"available";
  }

  if (!remoteAvailability)
  {
    v12 = @"unavailable";
  }

  v13 = v12;
  v14 = [v16 stringWithFormat:@"<%@: %p> asset=%@ dataStoreSubtype=%@ size=%lldx%lld availability local=%@/remote=%@", v4, self, uuid, v7, unorientedWidth, unorientedHeight, v10, v13];

  return v14;
}

- (id)additionalDescription
{
  v3 = [PLResourceRecipe recipeFromID:[(PLInternalResource *)self->_backingResource recipeID]];
  v4 = MEMORY[0x1E696AEC0];
  version = [(PLInternalResource *)self->_backingResource version];
  if (version > 2)
  {
    v6 = @"cur";
  }

  else
  {
    v6 = off_1E75664B0[version];
  }

  v7 = v6;
  v8 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:{-[PLInternalResource cplType](self->_backingResource, "cplType")}];
  v9 = [v4 stringWithFormat:@"ver: %@, recipe: %@, cplType: %@", v7, v3, v8];

  return v9;
}

- (id)uniformTypeIdentifier
{
  uniformTypeIdentifier = [(PLInternalResource *)self->_backingResource uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];

  return identifier;
}

- (BOOL)hasAssociatedMediaMetadata
{
  cplType = [(PLInternalResource *)self->_backingResource cplType];
  if (cplType != 1)
  {
    LOBYTE(cplType) = [(PLInternalResource *)self->_backingResource cplType]== 16 && [(PLInternalResource *)self->_backingResource version]== 2;
  }

  return cplType;
}

- (id)fileURLIfLocal
{
  dataStoreKey = [(PLInternalResource *)self->_backingResource dataStoreKey];
  assetID = [(PLInternalResource *)self->_backingResource assetID];
  v5 = [dataStoreKey fileURLForAssetID:assetID];

  return v5;
}

- (BOOL)matchesOrExceedsQualityLevel:(unsigned int)level
{
  v3 = *&level;
  dataStore = [(PLInternalResource *)self->_backingResource dataStore];
  LOBYTE(v3) = [dataStore videoResource:self->_backingResource matchesOrExceedsQualityLevel:v3];

  return v3;
}

- (BOOL)isStreamable
{
  selfCopy = self;
  dataStore = [(PLInternalResource *)self->_backingResource dataStore];
  LOBYTE(selfCopy) = [dataStore canStreamResource:selfCopy->_backingResource];

  return selfCopy;
}

- (BOOL)isPlayable
{
  cachedIsPlayable = self->_cachedIsPlayable;
  if (!cachedIsPlayable)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLInternalResource isPlayableVideo](self->_backingResource, "isPlayableVideo")}];
    v5 = self->_cachedIsPlayable;
    self->_cachedIsPlayable = v4;

    cachedIsPlayable = self->_cachedIsPlayable;
  }

  return [(NSNumber *)cachedIsPlayable BOOLValue];
}

- (BOOL)isLocallyGeneratable
{
  if ([(PLInternalResource *)self->_backingResource recipeID]!= 0x20000 && [(PLInternalResource *)self->_backingResource recipeID]!= 131272 && [(PLInternalResource *)self->_backingResource recipeID]!= 131280)
  {
    return 0;
  }

  asset = [(PLInternalResource *)self->_backingResource asset];
  deferredProcessingNeeded = [asset deferredProcessingNeeded];

  if (deferredProcessingNeeded > 0xA)
  {
    return 0;
  }

  result = 1;
  if (((1 << deferredProcessingNeeded) & 0x1F9) != 0)
  {
    asset2 = [(PLInternalResource *)self->_backingResource asset];
    videoDeferredProcessingNeeded = [asset2 videoDeferredProcessingNeeded];

    return videoDeferredProcessingNeeded == 1;
  }

  return result;
}

- (BOOL)isLocallyAvailable
{
  dataStoreKey = [(PLInternalResource *)self->_backingResource dataStoreKey];
  v3 = dataStoreKey != 0;

  return v3;
}

- (BOOL)isOriginalVideo
{
  v2 = self->_backingResource;
  v3 = [(PLInternalResource *)v2 resourceType]== 1 && ![(PLInternalResource *)v2 version]&& ([(PLInternalResource *)v2 recipeID]& 1) == 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = PLVideoInternalResource;
  if ([(PLVideoInternalResource *)&v7 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PLInternalResource *)self->_backingResource isEqual:equalCopy[2]];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PLVideoInternalResource)initWithBackingResource:(id)resource
{
  resourceCopy = resource;
  if (!resourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLVideoInternalResourceContext.m" lineNumber:36 description:@"Backing resource required"];
  }

  v11.receiver = self;
  v11.super_class = PLVideoInternalResource;
  v7 = [(PLVideoInternalResource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_backingResource, resource);
  }

  return v8;
}

@end