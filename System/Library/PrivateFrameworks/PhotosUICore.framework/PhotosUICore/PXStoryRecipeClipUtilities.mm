@interface PXStoryRecipeClipUtilities
+ (BOOL)asset:(id)asset isClassifiedAs:(id)as;
+ (BOOL)assetHasHighCurationScore:(id)score;
+ (BOOL)assetHasSignificantFaceArea:(id)area;
+ (BOOL)assetIsPet:(id)pet;
+ (BOOL)canRotate1UpClipsInRange:(_NSRange)range clipCatalog:(id)catalog maxAdjacent1Ups:(int64_t)ups;
+ (BOOL)canRotateAsset:(id)asset;
+ (id)doNotRotateSceneIdentifiers;
+ (id)doNotRotateWithSkySceneIdentifiers;
+ (id)peopleSceneIdentifiers;
+ (id)petSceneIdentifiers;
+ (id)skySceneIdentifiers;
@end

@implementation PXStoryRecipeClipUtilities

+ (BOOL)canRotate1UpClipsInRange:(_NSRange)range clipCatalog:(id)catalog maxAdjacent1Ups:(int64_t)ups
{
  upsCopy = 0x7FFFFFFFLL;
  if (ups)
  {
    upsCopy = ups;
  }

  v19 = upsCopy;
  v6 = range.location + range.length;
  if (range.location < range.location + range.length)
  {
    length = range.length;
    location = range.location;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [catalog clipAtIndex:location];
      displayAssets = [v12 displayAssets];
      v14 = [displayAssets count];

      if (v14 == 1)
      {
        if (v11 >= v19 || ([v12 displayAssets], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "firstObject"), v16 = objc_claimAutoreleasedReturnValue(), v17 = +[PXStoryRecipeClipUtilities canRotateAsset:](PXStoryRecipeClipUtilities, "canRotateAsset:", v16), v16, v15, !v17))
        {

          return v10;
        }

        ++v11;
      }

      else
      {
        v11 = 0;
      }

      v10 = ++location >= v6;
      --length;
    }

    while (length);
  }

  return 1;
}

+ (BOOL)assetHasHighCurationScore:(id)score
{
  scoreCopy = score;
  v4 = +[PXStorySettings sharedInstance];
  [v4 autoEditHighCurationScoreThreshold];
  v6 = v5;

  [scoreCopy px_storyResourceFetchCurationScore];
  LOBYTE(v4) = v7 >= v6;

  return v4;
}

+ (BOOL)canRotateAsset:(id)asset
{
  assetCopy = asset;
  doNotRotateSceneIdentifiers = [self doNotRotateSceneIdentifiers];
  v6 = [self asset:assetCopy isClassifiedAs:doNotRotateSceneIdentifiers];
  v7 = (v6 & 1) == 0 && (([self skySceneIdentifiers], v8 = ;
  return v7;
}

+ (id)doNotRotateWithSkySceneIdentifiers
{
  if (doNotRotateWithSkySceneIdentifiers_onceToken != -1)
  {
    dispatch_once(&doNotRotateWithSkySceneIdentifiers_onceToken, &__block_literal_global_219_28616);
  }

  v3 = doNotRotateWithSkySceneIdentifiers_skyPlusSceneIdentifiers;

  return v3;
}

void __64__PXStoryRecipeClipUtilities_doNotRotateWithSkySceneIdentifiers__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F190FBC8];
  v1 = doNotRotateWithSkySceneIdentifiers_skyPlusSceneIdentifiers;
  doNotRotateWithSkySceneIdentifiers_skyPlusSceneIdentifiers = v0;
}

+ (id)skySceneIdentifiers
{
  if (skySceneIdentifiers_onceToken != -1)
  {
    dispatch_once(&skySceneIdentifiers_onceToken, &__block_literal_global_212_28620);
  }

  v3 = skySceneIdentifiers_skySceneIdentifiers;

  return v3;
}

void __49__PXStoryRecipeClipUtilities_skySceneIdentifiers__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F190FBB0];
  v1 = skySceneIdentifiers_skySceneIdentifiers;
  skySceneIdentifiers_skySceneIdentifiers = v0;
}

+ (id)doNotRotateSceneIdentifiers
{
  if (doNotRotateSceneIdentifiers_onceToken != -1)
  {
    dispatch_once(&doNotRotateSceneIdentifiers_onceToken, &__block_literal_global_201_28622);
  }

  v3 = doNotRotateSceneIdentifiers_doNotRotateSceneIdentifiers;

  return v3;
}

void __57__PXStoryRecipeClipUtilities_doNotRotateSceneIdentifiers__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F190FB98];
  v1 = doNotRotateSceneIdentifiers_doNotRotateSceneIdentifiers;
  doNotRotateSceneIdentifiers_doNotRotateSceneIdentifiers = v0;
}

+ (BOOL)assetIsPet:(id)pet
{
  petCopy = pet;
  petSceneIdentifiers = [self petSceneIdentifiers];
  v6 = [self asset:petCopy isClassifiedAs:petSceneIdentifiers];

  v7 = v6 && ([self assetHasSignificantFaceArea:petCopy] & 1) != 0;
  return v7;
}

+ (id)petSceneIdentifiers
{
  if (petSceneIdentifiers_onceToken != -1)
  {
    dispatch_once(&petSceneIdentifiers_onceToken, &__block_literal_global_192);
  }

  v3 = petSceneIdentifiers_petSceneIdentifiers;

  return v3;
}

void __49__PXStoryRecipeClipUtilities_petSceneIdentifiers__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F190FB80];
  v1 = petSceneIdentifiers_petSceneIdentifiers;
  petSceneIdentifiers_petSceneIdentifiers = v0;
}

+ (BOOL)asset:(id)asset isClassifiedAs:(id)as
{
  v24 = *MEMORY[0x1E69E9840];
  asCopy = as;
  px_storyResourceFetchSceneClassifications = [asset px_storyResourceFetchSceneClassifications];
  v7 = +[PXStorySettings sharedInstance];
  [v7 autoEditSceneConfidenceThreshold];
  v9 = v8;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = px_storyResourceFetchSceneClassifications;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        [v14 confidence];
        if (v15 >= v9)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v14, "extendedSceneIdentifier")}];
          v17 = [asCopy containsObject:v16];

          if (v17)
          {
            LOBYTE(v11) = 1;
            goto LABEL_12;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v11;
}

+ (BOOL)assetHasSignificantFaceArea:(id)area
{
  [area faceAreaRect];
  width = v9.size.width;
  height = v9.size.height;
  if (CGRectIsEmpty(v9))
  {
    return 0;
  }

  v6 = +[PXStorySettings sharedInstance];
  [v6 autoEditPortraitAreaMin];
  v8 = v7;

  return width * height >= v8;
}

+ (id)peopleSceneIdentifiers
{
  if (peopleSceneIdentifiers_onceToken != -1)
  {
    dispatch_once(&peopleSceneIdentifiers_onceToken, &__block_literal_global_28629);
  }

  v3 = peopleSceneIdentifiers_peopleSceneIdentifiers;

  return v3;
}

void __52__PXStoryRecipeClipUtilities_peopleSceneIdentifiers__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F190FB68];
  v1 = peopleSceneIdentifiers_peopleSceneIdentifiers;
  peopleSceneIdentifiers_peopleSceneIdentifiers = v0;
}

@end