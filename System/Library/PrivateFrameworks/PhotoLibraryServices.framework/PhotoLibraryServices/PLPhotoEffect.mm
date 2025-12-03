@interface PLPhotoEffect
+ (BOOL)isEffectNoneForIdentifier:(id)identifier;
+ (BOOL)isEffectWithIdentifier:(id)identifier equalToEffectWithIdentifier:(id)withIdentifier;
+ (id)_effectWithIdentifier:(id)identifier CIFilterName:(id)name displayName:(id)displayName;
+ (id)_legacyEffectWithIdentifier:(id)identifier CIFilterName:(id)name;
+ (id)_lightingEffectWithIdentifier:(id)identifier relatedVersionIdentifier:(id)versionIdentifier CIFilterName:(id)name lightingVersion:(int64_t)version;
+ (id)allEffects;
+ (id)allSupportedEffects;
+ (id)effectWithCIFilterName:(id)name;
+ (id)effectWithIdentifier:(id)identifier;
+ (id)equivalentEffectForIdentifier:(id)identifier version:(int64_t)version;
+ (id)standardSupportedEffects;
+ (unint64_t)_indexOfEffectWithIdentifier:(id)identifier;
- (id)description;
- (id)newEffectFilter;
- (int64_t)latestVersion;
@end

@implementation PLPhotoEffect

- (id)newEffectFilter
{
  cIFilterName = [(PLPhotoEffect *)self CIFilterName];

  if (!cIFilterName)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695F648];
  cIFilterName2 = [(PLPhotoEffect *)self CIFilterName];
  v6 = [v4 filterWithName:cIFilterName2];

  return v6;
}

- (int64_t)latestVersion
{
  newEffectFilter = [(PLPhotoEffect *)self newEffectFilter];
  v3 = [newEffectFilter valueForKey:*MEMORY[0x1E695FB40]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PLPhotoEffect;
  v3 = [(PLPhotoEffect *)&v8 description];
  v4 = MEMORY[0x1E696AEC0];
  displayName = [(PLPhotoEffect *)self displayName];
  v6 = [v4 stringWithFormat:@"%@ %@", v3, displayName];

  return v6;
}

+ (id)equivalentEffectForIdentifier:(id)identifier version:(int64_t)version
{
  v6 = [self effectWithIdentifier:identifier];
  relatedVersionIdentifier = [v6 relatedVersionIdentifier];
  if ([v6 lightingVersion] == version)
  {
    v8 = v6;
  }

  else if (relatedVersionIdentifier)
  {
    v9 = [self effectWithIdentifier:relatedVersionIdentifier];
    if ([v9 lightingVersion] == version)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;

  return v8;
}

+ (id)effectWithCIFilterName:(id)name
{
  nameCopy = name;
  allEffects = [self allEffects];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__PLPhotoEffect_effectWithCIFilterName___block_invoke;
  v11[3] = &unk_1E7575A18;
  v6 = nameCopy;
  v12 = v6;
  v7 = [allEffects indexOfObjectPassingTest:v11];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [PLPhotoEffect effectWithIdentifier:@"PUPhotoEffectNone"];
  }

  else
  {
    allEffects2 = [self allEffects];
    v8 = [allEffects2 objectAtIndex:v7];
  }

  return v8;
}

uint64_t __40__PLPhotoEffect_effectWithCIFilterName___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 CIFilterName];
  v7 = [v6 isEqualToString:*(a1 + 32)];
  *a4 = v7;

  return v7;
}

+ (id)effectWithIdentifier:(id)identifier
{
  v4 = [self _indexOfEffectWithIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    allEffects = [self allEffects];
    v5 = [allEffects objectAtIndex:v6];
  }

  return v5;
}

+ (unint64_t)_indexOfEffectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = identifierCopy;
  }

  else
  {
    v5 = @"PUPhotoEffectNone";
  }

  allEffects = [self allEffects];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__PLPhotoEffect__indexOfEffectWithIdentifier___block_invoke;
  v10[3] = &unk_1E75759F0;
  v11 = v5;
  v7 = v5;
  v8 = [allEffects indexOfObjectPassingTest:v10];

  return v8;
}

uint64_t __46__PLPhotoEffect__indexOfEffectWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 filterIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];
  *a4 = v7;

  return v7;
}

+ (BOOL)isEffectWithIdentifier:(id)identifier equalToEffectWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v8 = [self isEffectNoneForIdentifier:identifierCopy];
  v9 = [self isEffectNoneForIdentifier:withIdentifierCopy];
  if (identifierCopy)
  {
    v10 = [identifierCopy isEqualToString:withIdentifierCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10 | v8 & v9;
}

+ (BOOL)isEffectNoneForIdentifier:(id)identifier
{
  result = [identifier isEqualToString:@"PUPhotoEffectNone"];
  if (!identifier)
  {
    return 1;
  }

  return result;
}

+ (id)allSupportedEffects
{
  pl_dispatch_once();
  v2 = allSupportedEffects_supportedEffects;

  return v2;
}

void __36__PLPhotoEffect_allSupportedEffects__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = +[PLPhotoEffect allEffects];
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 isLegacy] & 1) == 0)
        {
          [v1 addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = allSupportedEffects_supportedEffects;
  allSupportedEffects_supportedEffects = v1;
}

+ (id)standardSupportedEffects
{
  pl_dispatch_once();
  v2 = standardSupportedEffects_standardEffects;

  return v2;
}

void __41__PLPhotoEffect_standardSupportedEffects__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = +[PLPhotoEffect allEffects];
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 isPortrait] & 1) == 0 && (objc_msgSend(v7, "isLegacy") & 1) == 0)
        {
          [v1 addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = standardSupportedEffects_standardEffects;
  standardSupportedEffects_standardEffects = v1;
}

+ (id)allEffects
{
  pl_dispatch_once();
  v2 = allEffects_allPhotoEffects;

  return v2;
}

void __27__PLPhotoEffect_allEffects__block_invoke()
{
  v39[27] = *MEMORY[0x1E69E9840];
  v38 = [PLPhotoEffect _lightingEffectWithIdentifier:@"StageWhite" relatedVersionIdentifier:0 CIFilterName:@"CIPortraitEffectStageWhite" lightingVersion:2];
  v39[0] = v38;
  v37 = [PLPhotoEffect _lightingEffectWithIdentifier:@"StageMonoV2" relatedVersionIdentifier:@"BlackoutMono" CIFilterName:@"CIPortraitEffectStageMonoV2" lightingVersion:2];
  v39[1] = v37;
  v36 = [PLPhotoEffect _lightingEffectWithIdentifier:@"StageV2" relatedVersionIdentifier:@"Black" CIFilterName:@"CIPortraitEffectStageV2" lightingVersion:2];
  v39[2] = v36;
  v35 = [PLPhotoEffect _lightingEffectWithIdentifier:@"ContourV2" relatedVersionIdentifier:@"Contour" CIFilterName:@"CIPortraitEffectContourV2" lightingVersion:2];
  v39[3] = v35;
  v34 = [PLPhotoEffect _lightingEffectWithIdentifier:@"StudioV2" relatedVersionIdentifier:@"Commercial" CIFilterName:@"CIPortraitEffectStudioV2" lightingVersion:2];
  v39[4] = v34;
  v33 = [PLPhotoEffect _lightingEffectWithIdentifier:@"BlackoutMono" relatedVersionIdentifier:@"StageMonoV2" CIFilterName:@"CIPortraitEffectStageMono" lightingVersion:1];
  v39[5] = v33;
  v32 = [PLPhotoEffect _lightingEffectWithIdentifier:@"Black" relatedVersionIdentifier:@"StageV2" CIFilterName:@"CIPortraitEffectStage" lightingVersion:1];
  v39[6] = v32;
  v31 = [PLPhotoEffect _lightingEffectWithIdentifier:@"Contour" relatedVersionIdentifier:@"ContourV2" CIFilterName:@"CIPortraitEffectContour" lightingVersion:1];
  v39[7] = v31;
  v30 = [PLPhotoEffect _lightingEffectWithIdentifier:@"Commercial" relatedVersionIdentifier:@"StudioV2" CIFilterName:@"CIPortraitEffectStudio" lightingVersion:1];
  v39[8] = v30;
  v29 = [PLPhotoEffect _lightingEffectWithIdentifier:@"Light" relatedVersionIdentifier:0 CIFilterName:@"CIPortraitEffectLight" lightingVersion:1];
  v39[9] = v29;
  v28 = PLServicesLocalizedFrameworkString();
  v27 = [PLPhotoEffect _effectWithIdentifier:@"PUPhotoEffectNone" CIFilterName:0 displayName:v28];
  v39[10] = v27;
  v26 = PLServicesLocalizedFrameworkString();
  v25 = [PLPhotoEffect _effectWithIdentifier:@"3DVivid" CIFilterName:@"CIPhotoEffect3DVivid" displayName:v26];
  v39[11] = v25;
  v24 = PLServicesLocalizedFrameworkString();
  v23 = [PLPhotoEffect _effectWithIdentifier:@"3DVividWarm" CIFilterName:@"CIPhotoEffect3DVividWarm" displayName:v24];
  v39[12] = v23;
  v22 = PLServicesLocalizedFrameworkString();
  v21 = [PLPhotoEffect _effectWithIdentifier:@"3DVividCool" CIFilterName:@"CIPhotoEffect3DVividCool" displayName:v22];
  v39[13] = v21;
  v20 = PLServicesLocalizedFrameworkString();
  v19 = [PLPhotoEffect _effectWithIdentifier:@"3DDramatic" CIFilterName:@"CIPhotoEffect3DDramatic" displayName:v20];
  v39[14] = v19;
  v18 = PLServicesLocalizedFrameworkString();
  v17 = [PLPhotoEffect _effectWithIdentifier:@"3DDramaticWarm" CIFilterName:@"CIPhotoEffect3DDramaticWarm" displayName:v18];
  v39[15] = v17;
  v16 = PLServicesLocalizedFrameworkString();
  v15 = [PLPhotoEffect _effectWithIdentifier:@"3DDramaticCool" CIFilterName:@"CIPhotoEffect3DDramaticCool" displayName:v16];
  v39[16] = v15;
  v14 = PLServicesLocalizedFrameworkString();
  v13 = [PLPhotoEffect _effectWithIdentifier:@"Mono" CIFilterName:@"CIPhotoEffectMono" displayName:v14];
  v39[17] = v13;
  v12 = PLServicesLocalizedFrameworkString();
  v11 = [PLPhotoEffect _effectWithIdentifier:@"3DSilverplate" CIFilterName:@"CIPhotoEffect3DSilverplate" displayName:v12];
  v39[18] = v11;
  v0 = PLServicesLocalizedFrameworkString();
  v1 = [PLPhotoEffect _effectWithIdentifier:@"3DNoir" CIFilterName:@"CIPhotoEffect3DNoir" displayName:v0];
  v39[19] = v1;
  v2 = [PLPhotoEffect _legacyEffectWithIdentifier:@"Tonal" CIFilterName:@"CIPhotoEffectTonal"];
  v39[20] = v2;
  v3 = [PLPhotoEffect _legacyEffectWithIdentifier:@"Fade" CIFilterName:@"CIPhotoEffectFade"];
  v39[21] = v3;
  v4 = [PLPhotoEffect _legacyEffectWithIdentifier:@"Chrome" CIFilterName:@"CIPhotoEffectChrome"];
  v39[22] = v4;
  v5 = [PLPhotoEffect _legacyEffectWithIdentifier:@"Process" CIFilterName:@"CIPhotoEffectProcess"];
  v39[23] = v5;
  v6 = [PLPhotoEffect _legacyEffectWithIdentifier:@"Transfer" CIFilterName:@"CIPhotoEffectTransfer"];
  v39[24] = v6;
  v7 = [PLPhotoEffect _legacyEffectWithIdentifier:@"Instant" CIFilterName:@"CIPhotoEffectInstant"];
  v39[25] = v7;
  v8 = [PLPhotoEffect _legacyEffectWithIdentifier:@"Noir" CIFilterName:@"CIPhotoEffectNoir"];
  v39[26] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:27];
  v10 = allEffects_allPhotoEffects;
  allEffects_allPhotoEffects = v9;
}

+ (id)_lightingEffectWithIdentifier:(id)identifier relatedVersionIdentifier:(id)versionIdentifier CIFilterName:(id)name lightingVersion:(int64_t)version
{
  nameCopy = name;
  versionIdentifierCopy = versionIdentifier;
  identifierCopy = identifier;
  v12 = objc_alloc_init(objc_opt_class());
  v13 = [identifierCopy copy];

  v14 = v12[2];
  v12[2] = v13;

  v15 = [versionIdentifierCopy copy];
  v16 = v12[3];
  v12[3] = v15;

  v17 = [nameCopy copy];
  v18 = v12[5];
  v12[5] = v17;

  *(v12 + 8) = 1;
  v12[6] = version;

  return v12;
}

+ (id)_effectWithIdentifier:(id)identifier CIFilterName:(id)name displayName:(id)displayName
{
  displayNameCopy = displayName;
  nameCopy = name;
  identifierCopy = identifier;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = [identifierCopy copy];

  v12 = v10[2];
  v10[2] = v11;

  v13 = [nameCopy copy];
  v14 = v10[5];
  v10[5] = v13;

  v15 = [displayNameCopy copy];
  v16 = v10[4];
  v10[4] = v15;

  *(v10 + 4) = 0;

  return v10;
}

+ (id)_legacyEffectWithIdentifier:(id)identifier CIFilterName:(id)name
{
  nameCopy = name;
  identifierCopy = identifier;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [identifierCopy copy];

  v9 = v7[2];
  v7[2] = v8;

  v10 = [nameCopy copy];
  v11 = v7[5];
  v7[5] = v10;

  *(v7 + 4) = 256;

  return v7;
}

@end