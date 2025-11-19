@interface PLVideoInternalResource
- (BOOL)hasAssociatedMediaMetadata;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocallyAvailable;
- (BOOL)isLocallyGeneratable;
- (BOOL)isOriginalVideo;
- (BOOL)isPlayable;
- (BOOL)isStreamable;
- (BOOL)matchesOrExceedsQualityLevel:(unsigned int)a3;
- (NSString)debugDescription;
- (PLVideoInternalResource)initWithBackingResource:(id)a3;
- (id)additionalDescription;
- (id)fileURLIfLocal;
- (id)uniformTypeIdentifier;
@end

@implementation PLVideoInternalResource

- (NSString)debugDescription
{
  v3 = [(PLInternalResource *)self->_backingResource dataStore];
  v16 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PLInternalResource *)self->_backingResource asset];
  v6 = [v5 uuid];
  v7 = [v3 descriptionForSubtype:{-[PLInternalResource dataStoreSubtype](self->_backingResource, "dataStoreSubtype")}];
  v8 = [(PLInternalResource *)self->_backingResource unorientedWidth];
  v9 = [(PLInternalResource *)self->_backingResource unorientedHeight];
  v10 = PLResourceLocalAvailabilityName([(PLInternalResource *)self->_backingResource localAvailability]);
  v11 = [(PLInternalResource *)self->_backingResource remoteAvailability];
  v12 = @"missing";
  if (v11 == 1)
  {
    v12 = @"available";
  }

  if (!v11)
  {
    v12 = @"unavailable";
  }

  v13 = v12;
  v14 = [v16 stringWithFormat:@"<%@: %p> asset=%@ dataStoreSubtype=%@ size=%lldx%lld availability local=%@/remote=%@", v4, self, v6, v7, v8, v9, v10, v13];

  return v14;
}

- (id)additionalDescription
{
  v3 = [PLResourceRecipe recipeFromID:[(PLInternalResource *)self->_backingResource recipeID]];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(PLInternalResource *)self->_backingResource version];
  if (v5 > 2)
  {
    v6 = @"cur";
  }

  else
  {
    v6 = off_1E75664B0[v5];
  }

  v7 = v6;
  v8 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:{-[PLInternalResource cplType](self->_backingResource, "cplType")}];
  v9 = [v4 stringWithFormat:@"ver: %@, recipe: %@, cplType: %@", v7, v3, v8];

  return v9;
}

- (id)uniformTypeIdentifier
{
  v2 = [(PLInternalResource *)self->_backingResource uniformTypeIdentifier];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)hasAssociatedMediaMetadata
{
  v3 = [(PLInternalResource *)self->_backingResource cplType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(PLInternalResource *)self->_backingResource cplType]== 16 && [(PLInternalResource *)self->_backingResource version]== 2;
  }

  return v3;
}

- (id)fileURLIfLocal
{
  v3 = [(PLInternalResource *)self->_backingResource dataStoreKey];
  v4 = [(PLInternalResource *)self->_backingResource assetID];
  v5 = [v3 fileURLForAssetID:v4];

  return v5;
}

- (BOOL)matchesOrExceedsQualityLevel:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PLInternalResource *)self->_backingResource dataStore];
  LOBYTE(v3) = [v5 videoResource:self->_backingResource matchesOrExceedsQualityLevel:v3];

  return v3;
}

- (BOOL)isStreamable
{
  v2 = self;
  v3 = [(PLInternalResource *)self->_backingResource dataStore];
  LOBYTE(v2) = [v3 canStreamResource:v2->_backingResource];

  return v2;
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

  v3 = [(PLInternalResource *)self->_backingResource asset];
  v4 = [v3 deferredProcessingNeeded];

  if (v4 > 0xA)
  {
    return 0;
  }

  result = 1;
  if (((1 << v4) & 0x1F9) != 0)
  {
    v6 = [(PLInternalResource *)self->_backingResource asset];
    v7 = [v6 videoDeferredProcessingNeeded];

    return v7 == 1;
  }

  return result;
}

- (BOOL)isLocallyAvailable
{
  v2 = [(PLInternalResource *)self->_backingResource dataStoreKey];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isOriginalVideo
{
  v2 = self->_backingResource;
  v3 = [(PLInternalResource *)v2 resourceType]== 1 && ![(PLInternalResource *)v2 version]&& ([(PLInternalResource *)v2 recipeID]& 1) == 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PLVideoInternalResource;
  if ([(PLVideoInternalResource *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PLInternalResource *)self->_backingResource isEqual:v4[2]];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PLVideoInternalResource)initWithBackingResource:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLVideoInternalResourceContext.m" lineNumber:36 description:@"Backing resource required"];
  }

  v11.receiver = self;
  v11.super_class = PLVideoInternalResource;
  v7 = [(PLVideoInternalResource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_backingResource, a3);
  }

  return v8;
}

@end