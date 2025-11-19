@interface PLVirtualResource
- (BOOL)isOriginalResource;
- (NSString)debugDescription;
- (NSURL)fileURL;
- (PLVirtualResource)initWithAsset:(id)a3 resourceType:(unsigned int)a4 version:(unsigned int)a5 recipeID:(unsigned int)a6;
- (PLVirtualResource)initWithRecipe:(id)a3 forAsset:(id)a4;
- (id)photosCTLJSONDict;
- (id)singleLineDescription;
- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4;
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
  v4 = [(PLVirtualResource *)self resourceType];
  if (v4 > 0x1F)
  {
    v5 = @"invalid";
  }

  else
  {
    v5 = off_1E75663B0[v4];
  }

  v6 = v5;
  [(PLDescriptionBuilder *)v3 appendName:@"resourceType" object:v6];

  v7 = [(PLVirtualResource *)self version];
  if (v7 > 2)
  {
    v8 = @"cur";
  }

  else
  {
    v8 = off_1E75664B0[v7];
  }

  v9 = v8;
  [(PLDescriptionBuilder *)v3 appendName:@"version" object:v9];

  v10 = [(PLVirtualResource *)self dataStore];
  v11 = [objc_opt_class() storeClassID];
  v12 = [v10 name];
  v13 = [v12 stringByAppendingFormat:@" (%ld)", v11];

  [(PLDescriptionBuilder *)v3 appendName:@"dataStore" object:v13];
  v14 = [(PLVirtualResource *)self dataStoreSubtype];
  v15 = [(PLVirtualResource *)self dataStore];
  v16 = [v15 descriptionForSubtype:v14];
  v17 = [v16 stringByAppendingFormat:@" (%ld)", v14];

  [(PLDescriptionBuilder *)v3 appendName:@"dataStoreSubtype" object:v17];
  if ([(PLVirtualResource *)self recipeID])
  {
    v18 = [PLResourceRecipe recipeFromID:[(PLVirtualResource *)self recipeID]];
    v19 = [v18 description];
    [(PLDescriptionBuilder *)v3 appendName:@"recipeID" object:v19];
  }

  v20 = [(PLVirtualResource *)self dataStoreKey];

  if (v20)
  {
    v21 = [(PLVirtualResource *)self dataStoreKey];
    v22 = [v21 descriptionForAssetID:self->_assetID];
    [(PLDescriptionBuilder *)v3 appendName:@"dataStoreKey" object:v22];
  }

  v23 = PLResourceLocalAvailabilityName([(PLVirtualResource *)self localAvailability]);
  [(PLDescriptionBuilder *)v3 appendName:@"localAvailability" object:v23];

  v24 = PLResourceLocalAvailabilityTargetName([(PLVirtualResource *)self localAvailabilityTarget]);
  [(PLDescriptionBuilder *)v3 appendName:@"localAvailabilityTarget" object:v24];

  v25 = [(PLVirtualResource *)self remoteAvailability];
  if (v25 == 1)
  {
    v26 = @"available";
  }

  else
  {
    v26 = @"missing";
  }

  if (!v25)
  {
    v26 = @"unavailable";
  }

  v27 = v26;
  [(PLDescriptionBuilder *)v3 appendName:@"remoteAvailability" object:v27];

  v28 = [(PLVirtualResource *)self remoteAvailabilityTarget];
  if (v28 == 1)
  {
    v29 = @"available";
  }

  else
  {
    v29 = @"missing";
  }

  if (!v28)
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
  v31 = [(PLVirtualResource *)self uniformTypeIdentifier];
  v32 = [v31 identifier];
  [(PLDescriptionBuilder *)v3 appendName:@"uniformTypeIdentifier" object:v32];

  v33 = [(PLVirtualResource *)self codecFourCharCodeName];
  [(PLDescriptionBuilder *)v3 appendName:@"codecFourCharCodeName" object:v33];

  v34 = [(PLDescriptionBuilder *)v3 build];

  return v34;
}

- (id)singleLineDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  v7 = [(PLVirtualResource *)self resourceType];
  if (v7 > 0x1F)
  {
    v8 = @"invalid";
  }

  else
  {
    v8 = off_1E75663B0[v7];
  }

  v9 = v8;
  [v6 appendFormat:@" type: %@", v9];

  v10 = [PLResourceRecipe recipeFromID:[(PLVirtualResource *)self recipeID]];
  v11 = [v10 description];
  [v6 appendFormat:@" recipeID: %@", v11];

  v12 = [(PLVirtualResource *)self version];
  if (v12 > 2)
  {
    v13 = @"cur";
  }

  else
  {
    v13 = off_1E75664B0[v12];
  }

  v14 = v13;
  [v6 appendFormat:@" ver: %@", v14];

  v15 = [(PLVirtualResource *)self dataStore];
  v16 = [v15 descriptionForSubtype:{-[PLVirtualResource dataStoreSubtype](self, "dataStoreSubtype")}];
  [v6 appendFormat:@" subtype: %@", v16];

  [v6 appendFormat:@" size: (%ld, %ld)", -[PLVirtualResource unorientedWidth](self, "unorientedWidth"), -[PLVirtualResource unorientedHeight](self, "unorientedHeight")];
  v17 = [(PLVirtualResource *)self uniformTypeIdentifier];
  v18 = [v17 identifier];
  [v6 appendFormat:@" uti: %@", v18];

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
  v21 = [(PLVirtualResource *)self dataStoreKey];
  v22 = [v21 fileURLForAssetID:self->_assetID];

  if (v22)
  {
    [v6 appendFormat:@" url: %@", v22];
  }

  return v6;
}

- (id)photosCTLJSONDict
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PLVirtualResource *)self codecFourCharCodeName];

  if (v4)
  {
    v5 = [(PLVirtualResource *)self codecFourCharCodeName];
  }

  else
  {
    v5 = @"none";
  }

  v6 = [(PLVirtualResource *)self uniformTypeIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 identifier];
  }

  else
  {
    v8 = @"none";
  }

  v9 = [(PLVirtualResource *)self dataStore];
  v10 = [objc_opt_class() storeClassID];

  [v3 setObject:v8 forKeyedSubscript:@"uti"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v10];
  [v3 setObject:v11 forKeyedSubscript:@"store"];

  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLVirtualResource dataStoreSubtype](self, "dataStoreSubtype")}];
  [v3 setObject:v12 forKeyedSubscript:@"subtype"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLVirtualResource version](self, "version")}];
  [v3 setObject:v13 forKeyedSubscript:@"version"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLVirtualResource recipeID](self, "recipeID")}];
  [v3 setObject:v14 forKeyedSubscript:@"recipe"];

  [v3 setObject:v5 forKeyedSubscript:@"codec"];
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

  v20 = [(PLVirtualResource *)self dataStoreKey];
  v21 = [v20 descriptionForAssetID:self->_assetID];
  [v3 setObject:v21 forKeyedSubscript:@"dataStoreKey"];

  return v3;
}

- (NSURL)fileURL
{
  v3 = [(PLVirtualResource *)self dataStoreKey];
  v4 = [(PLVirtualResource *)self assetID];
  v5 = [v3 fileURLForAssetID:v4];

  return v5;
}

- (int)qualitySortValue
{
  assetWidth = self->_assetWidth;
  assetHeight = self->_assetHeight;
  v5 = [(PLVirtualResource *)self orientedWidth];
  v6 = [(PLVirtualResource *)self orientedHeight];
  isLosslessEncoded = self->_isLosslessEncoded;
  if (self->_isMarkedFullSize)
  {
    isLosslessEncoded |= 2u;
  }

  return isLosslessEncoded | ((fmin(sqrt((v6 * v5)) / sqrt((assetHeight * assetWidth)), 1.0) * 32767.0) << 16);
}

- (signed)utiConformanceHint
{
  v2 = [(PLVirtualResource *)self uniformTypeIdentifier];
  v3 = [v2 conformanceHint];

  return v3;
}

- (int64_t)orientedHeight
{
  v3 = [(PLVirtualResource *)self unorientedWidth];
  v4 = [(PLVirtualResource *)self unorientedHeight];
  if ([(PLVirtualResource *)self orientation]- 5 >= 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (int64_t)orientedWidth
{
  v3 = [(PLVirtualResource *)self unorientedWidth];
  v4 = [(PLVirtualResource *)self unorientedHeight];
  if ([(PLVirtualResource *)self orientation]- 5 >= 4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (signed)localAvailability
{
  v2 = [(PLVirtualResource *)self dataStoreKey];

  if (v2)
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
  v2 = self;
  if ([(PLVirtualResource *)v2 version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PLVirtualResource *)v2 recipeID]& 1) == 0;
  }

  return v3;
}

- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLVirtualResource *)self dataStoreKey];
  v9 = [v8 validateForAssetID:v7 resourceIdentity:v6];

  v10 = [MEMORY[0x1E695E0F0] arrayByAddingObjectsFromArray:v9];

  return v10;
}

- (PLVirtualResource)initWithRecipe:(id)a3 forAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLVirtualResource.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"recipe"}];
  }

  v9 = -[PLVirtualResource initWithAsset:resourceType:version:recipeID:](self, "initWithAsset:resourceType:version:recipeID:", v8, 0, 3, [v7 recipeID]);

  return v9;
}

- (PLVirtualResource)initWithAsset:(id)a3 resourceType:(unsigned int)a4 version:(unsigned int)a5 recipeID:(unsigned int)a6
{
  v6 = *&a6;
  v11 = a3;
  if ([(PLVirtualResource *)self isMemberOfClass:objc_opt_class()])
  {
    [(PLVirtualResource *)self doesNotRecognizeSelector:a2];
    v12 = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PLVirtualResource;
    v13 = [(PLVirtualResource *)&v19 init];
    if (v13)
    {
      if (!v11)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        [v18 handleFailureInMethod:a2 object:v13 file:@"PLVirtualResource.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
      }

      v14 = [v11 assetID];
      assetID = v13->_assetID;
      v13->_assetID = v14;

      v13->_version = a5;
      v13->_resourceType = a4;
      v13->_recipeID = v6;
      v13->_assetWidth = [v11 width];
      v13->_assetHeight = [v11 height];
      v13->_isMarkedFullSize = PLIsResourceMarkedFullSizeFromRecipeID(v6);
      v16 = [(PLVirtualResource *)v13 uniformTypeIdentifier];
      v13->_isLosslessEncoded = [v16 isLosslessEncoding];
    }

    self = v13;
    v12 = self;
  }

  return v12;
}

@end