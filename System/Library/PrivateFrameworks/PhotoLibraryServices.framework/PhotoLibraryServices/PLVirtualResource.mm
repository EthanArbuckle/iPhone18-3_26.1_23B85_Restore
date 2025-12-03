@interface PLVirtualResource
- (BOOL)isOriginalResource;
- (NSString)debugDescription;
- (NSURL)fileURL;
- (PLVirtualResource)initWithAsset:(id)asset resourceType:(unsigned int)type version:(unsigned int)version recipeID:(unsigned int)d;
- (PLVirtualResource)initWithRecipe:(id)recipe forAsset:(id)asset;
- (id)photosCTLJSONDict;
- (id)singleLineDescription;
- (id)validateForAssetID:(id)d resourceIdentity:(id)identity;
- (int)qualitySortValue;
- (int64_t)orientedHeight;
- (int64_t)orientedWidth;
- (signed)localAvailability;
- (signed)utiConformanceHint;
@end

@implementation PLVirtualResource

- (NSString)debugDescription
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:0];
  resourceType = [(PLVirtualResource *)self resourceType];
  if (resourceType > 0x1F)
  {
    v5 = @"invalid";
  }

  else
  {
    v5 = off_1E75663B0[resourceType];
  }

  v6 = v5;
  [(PLDescriptionBuilder *)v3 appendName:@"resourceType" object:v6];

  version = [(PLVirtualResource *)self version];
  if (version > 2)
  {
    v8 = @"cur";
  }

  else
  {
    v8 = off_1E75664B0[version];
  }

  v9 = v8;
  [(PLDescriptionBuilder *)v3 appendName:@"version" object:v9];

  dataStore = [(PLVirtualResource *)self dataStore];
  storeClassID = [objc_opt_class() storeClassID];
  name = [dataStore name];
  v13 = [name stringByAppendingFormat:@" (%ld)", storeClassID];

  [(PLDescriptionBuilder *)v3 appendName:@"dataStore" object:v13];
  dataStoreSubtype = [(PLVirtualResource *)self dataStoreSubtype];
  dataStore2 = [(PLVirtualResource *)self dataStore];
  v16 = [dataStore2 descriptionForSubtype:dataStoreSubtype];
  v17 = [v16 stringByAppendingFormat:@" (%ld)", dataStoreSubtype];

  [(PLDescriptionBuilder *)v3 appendName:@"dataStoreSubtype" object:v17];
  if ([(PLVirtualResource *)self recipeID])
  {
    v18 = [PLResourceRecipe recipeFromID:[(PLVirtualResource *)self recipeID]];
    v19 = [v18 description];
    [(PLDescriptionBuilder *)v3 appendName:@"recipeID" object:v19];
  }

  dataStoreKey = [(PLVirtualResource *)self dataStoreKey];

  if (dataStoreKey)
  {
    dataStoreKey2 = [(PLVirtualResource *)self dataStoreKey];
    v22 = [dataStoreKey2 descriptionForAssetID:self->_assetID];
    [(PLDescriptionBuilder *)v3 appendName:@"dataStoreKey" object:v22];
  }

  v23 = PLResourceLocalAvailabilityName([(PLVirtualResource *)self localAvailability]);
  [(PLDescriptionBuilder *)v3 appendName:@"localAvailability" object:v23];

  v24 = PLResourceLocalAvailabilityTargetName([(PLVirtualResource *)self localAvailabilityTarget]);
  [(PLDescriptionBuilder *)v3 appendName:@"localAvailabilityTarget" object:v24];

  remoteAvailability = [(PLVirtualResource *)self remoteAvailability];
  if (remoteAvailability == 1)
  {
    v26 = @"available";
  }

  else
  {
    v26 = @"missing";
  }

  if (!remoteAvailability)
  {
    v26 = @"unavailable";
  }

  v27 = v26;
  [(PLDescriptionBuilder *)v3 appendName:@"remoteAvailability" object:v27];

  remoteAvailabilityTarget = [(PLVirtualResource *)self remoteAvailabilityTarget];
  if (remoteAvailabilityTarget == 1)
  {
    v29 = @"available";
  }

  else
  {
    v29 = @"missing";
  }

  if (!remoteAvailabilityTarget)
  {
    v29 = @"unavailable";
  }

  v30 = v29;
  [(PLDescriptionBuilder *)v3 appendName:@"remoteAvailabilityTarget" object:v30];

  [(PLDescriptionBuilder *)v3 appendName:@"isDerivative" BOOLValue:[(PLVirtualResource *)self isDerivative]];
  [(PLDescriptionBuilder *)v3 appendName:@"unorientedWidth" integerValue:[(PLVirtualResource *)self unorientedWidth]];
  [(PLDescriptionBuilder *)v3 appendName:@"unorientedHeight" integerValue:[(PLVirtualResource *)self unorientedHeight]];
  [(PLDescriptionBuilder *)v3 appendName:@"orientation" integerValue:[(PLVirtualResource *)self orientation]];
  [(PLDescriptionBuilder *)v3 appendName:@"qualitySortValue" integerValue:[(PLVirtualResource *)self qualitySortValue]];
  uniformTypeIdentifier = [(PLVirtualResource *)self uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];
  [(PLDescriptionBuilder *)v3 appendName:@"uniformTypeIdentifier" object:identifier];

  codecFourCharCodeName = [(PLVirtualResource *)self codecFourCharCodeName];
  [(PLDescriptionBuilder *)v3 appendName:@"codecFourCharCodeName" object:codecFourCharCodeName];

  build = [(PLDescriptionBuilder *)v3 build];

  return build;
}

- (id)singleLineDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  resourceType = [(PLVirtualResource *)self resourceType];
  if (resourceType > 0x1F)
  {
    v8 = @"invalid";
  }

  else
  {
    v8 = off_1E75663B0[resourceType];
  }

  v9 = v8;
  [v6 appendFormat:@" type: %@", v9];

  v10 = [PLResourceRecipe recipeFromID:[(PLVirtualResource *)self recipeID]];
  v11 = [v10 description];
  [v6 appendFormat:@" recipeID: %@", v11];

  version = [(PLVirtualResource *)self version];
  if (version > 2)
  {
    v13 = @"cur";
  }

  else
  {
    v13 = off_1E75664B0[version];
  }

  v14 = v13;
  [v6 appendFormat:@" ver: %@", v14];

  dataStore = [(PLVirtualResource *)self dataStore];
  v16 = [dataStore descriptionForSubtype:{-[PLVirtualResource dataStoreSubtype](self, "dataStoreSubtype")}];
  [v6 appendFormat:@" subtype: %@", v16];

  [v6 appendFormat:@" size: (%ld, %ld)", -[PLVirtualResource unorientedWidth](self, "unorientedWidth"), -[PLVirtualResource unorientedHeight](self, "unorientedHeight")];
  uniformTypeIdentifier = [(PLVirtualResource *)self uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];
  [v6 appendFormat:@" uti: %@", identifier];

  if ([(PLVirtualResource *)self localAvailability]== 1)
  {
    v19 = @"Y";
  }

  else
  {
    v19 = @"N";
  }

  [v6 appendFormat:@" local: %@", v19];
  if ([(PLVirtualResource *)self remoteAvailability]== 1)
  {
    v20 = @"Y";
  }

  else
  {
    v20 = @"N";
  }

  [v6 appendFormat:@" remote: %@", v20];
  dataStoreKey = [(PLVirtualResource *)self dataStoreKey];
  v22 = [dataStoreKey fileURLForAssetID:self->_assetID];

  if (v22)
  {
    [v6 appendFormat:@" url: %@", v22];
  }

  return v6;
}

- (id)photosCTLJSONDict
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  codecFourCharCodeName = [(PLVirtualResource *)self codecFourCharCodeName];

  if (codecFourCharCodeName)
  {
    codecFourCharCodeName2 = [(PLVirtualResource *)self codecFourCharCodeName];
  }

  else
  {
    codecFourCharCodeName2 = @"none";
  }

  uniformTypeIdentifier = [(PLVirtualResource *)self uniformTypeIdentifier];
  v7 = uniformTypeIdentifier;
  if (uniformTypeIdentifier)
  {
    identifier = [uniformTypeIdentifier identifier];
  }

  else
  {
    identifier = @"none";
  }

  dataStore = [(PLVirtualResource *)self dataStore];
  storeClassID = [objc_opt_class() storeClassID];

  [v3 setObject:identifier forKeyedSubscript:@"uti"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:storeClassID];
  [v3 setObject:v11 forKeyedSubscript:@"store"];

  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLVirtualResource dataStoreSubtype](self, "dataStoreSubtype")}];
  [v3 setObject:v12 forKeyedSubscript:@"subtype"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLVirtualResource version](self, "version")}];
  [v3 setObject:v13 forKeyedSubscript:@"version"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLVirtualResource recipeID](self, "recipeID")}];
  [v3 setObject:v14 forKeyedSubscript:@"recipe"];

  [v3 setObject:codecFourCharCodeName2 forKeyedSubscript:@"codec"];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLVirtualResource orientation](self, "orientation")}];
  [v3 setObject:v15 forKeyedSubscript:@"orientation"];

  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLVirtualResource unorientedWidth](self, "unorientedWidth")}];
  [v3 setObject:v16 forKeyedSubscript:@"unorientedWidth"];

  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLVirtualResource unorientedHeight](self, "unorientedHeight")}];
  [v3 setObject:v17 forKeyedSubscript:@"unorientedHeight"];

  v18 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLVirtualResource localAvailability](self, "localAvailability")}];
  [v3 setObject:v18 forKeyedSubscript:@"localAvailability"];

  v19 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLVirtualResource remoteAvailability](self, "remoteAvailability")}];
  [v3 setObject:v19 forKeyedSubscript:@"remoteAvailability"];

  dataStoreKey = [(PLVirtualResource *)self dataStoreKey];
  v21 = [dataStoreKey descriptionForAssetID:self->_assetID];
  [v3 setObject:v21 forKeyedSubscript:@"dataStoreKey"];

  return v3;
}

- (NSURL)fileURL
{
  dataStoreKey = [(PLVirtualResource *)self dataStoreKey];
  assetID = [(PLVirtualResource *)self assetID];
  v5 = [dataStoreKey fileURLForAssetID:assetID];

  return v5;
}

- (int)qualitySortValue
{
  assetWidth = self->_assetWidth;
  assetHeight = self->_assetHeight;
  orientedWidth = [(PLVirtualResource *)self orientedWidth];
  orientedHeight = [(PLVirtualResource *)self orientedHeight];
  isLosslessEncoded = self->_isLosslessEncoded;
  if (self->_isMarkedFullSize)
  {
    isLosslessEncoded |= 2u;
  }

  return isLosslessEncoded | ((fmin(sqrt((orientedHeight * orientedWidth)) / sqrt((assetHeight * assetWidth)), 1.0) * 32767.0) << 16);
}

- (signed)utiConformanceHint
{
  uniformTypeIdentifier = [(PLVirtualResource *)self uniformTypeIdentifier];
  conformanceHint = [uniformTypeIdentifier conformanceHint];

  return conformanceHint;
}

- (int64_t)orientedHeight
{
  unorientedWidth = [(PLVirtualResource *)self unorientedWidth];
  unorientedHeight = [(PLVirtualResource *)self unorientedHeight];
  if ([(PLVirtualResource *)self orientation]- 5 >= 4)
  {
    v5 = unorientedHeight;
  }

  else
  {
    v5 = unorientedWidth;
  }

  return v5;
}

- (int64_t)orientedWidth
{
  unorientedWidth = [(PLVirtualResource *)self unorientedWidth];
  unorientedHeight = [(PLVirtualResource *)self unorientedHeight];
  if ([(PLVirtualResource *)self orientation]- 5 >= 4)
  {
    v5 = unorientedWidth;
  }

  else
  {
    v5 = unorientedHeight;
  }

  return v5;
}

- (signed)localAvailability
{
  dataStoreKey = [(PLVirtualResource *)self dataStoreKey];

  if (dataStoreKey)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (BOOL)isOriginalResource
{
  selfCopy = self;
  if ([(PLVirtualResource *)selfCopy version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PLVirtualResource *)selfCopy recipeID]& 1) == 0;
  }

  return v3;
}

- (id)validateForAssetID:(id)d resourceIdentity:(id)identity
{
  identityCopy = identity;
  dCopy = d;
  dataStoreKey = [(PLVirtualResource *)self dataStoreKey];
  v9 = [dataStoreKey validateForAssetID:dCopy resourceIdentity:identityCopy];

  v10 = [MEMORY[0x1E695E0F0] arrayByAddingObjectsFromArray:v9];

  return v10;
}

- (PLVirtualResource)initWithRecipe:(id)recipe forAsset:(id)asset
{
  recipeCopy = recipe;
  assetCopy = asset;
  if (!recipeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLVirtualResource.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"recipe"}];
  }

  v9 = -[PLVirtualResource initWithAsset:resourceType:version:recipeID:](self, "initWithAsset:resourceType:version:recipeID:", assetCopy, 0, 3, [recipeCopy recipeID]);

  return v9;
}

- (PLVirtualResource)initWithAsset:(id)asset resourceType:(unsigned int)type version:(unsigned int)version recipeID:(unsigned int)d
{
  v6 = *&d;
  assetCopy = asset;
  if ([(PLVirtualResource *)self isMemberOfClass:objc_opt_class()])
  {
    [(PLVirtualResource *)self doesNotRecognizeSelector:a2];
    selfCopy = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PLVirtualResource;
    v13 = [(PLVirtualResource *)&v19 init];
    if (v13)
    {
      if (!assetCopy)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v13 file:@"PLVirtualResource.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
      }

      assetID = [assetCopy assetID];
      assetID = v13->_assetID;
      v13->_assetID = assetID;

      v13->_version = version;
      v13->_resourceType = type;
      v13->_recipeID = v6;
      v13->_assetWidth = [assetCopy width];
      v13->_assetHeight = [assetCopy height];
      v13->_isMarkedFullSize = PLIsResourceMarkedFullSizeFromRecipeID(v6);
      uniformTypeIdentifier = [(PLVirtualResource *)v13 uniformTypeIdentifier];
      v13->_isLosslessEncoded = [uniformTypeIdentifier isLosslessEncoding];
    }

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

@end