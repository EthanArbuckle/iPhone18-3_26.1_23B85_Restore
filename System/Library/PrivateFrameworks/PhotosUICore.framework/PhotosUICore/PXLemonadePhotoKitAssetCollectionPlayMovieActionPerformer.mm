@interface PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer
+ ($4C472092DE67A143DAA215F616F8A186)canPerformReasoningOnAssetCollectionReference:(SEL)reference;
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (BOOL)canPerformOnPHPerson:(id)person;
+ (id)reasoningStructDescriptionFor:(id *)for;
@end

@implementation PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer

+ (id)reasoningStructDescriptionFor:(id *)for
{
  v3 = @"NO";
  v4 = @"YES";
  if (for->var5)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (for->var6)
  {
    v3 = @"YES";
  }

  if (!for->var7)
  {
    v4 = @"NO'";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformerCanPerformReasoning {\ndecisioningVersion: %llu\n\nestimatedAssetCollectionSize: %llu, \n\npx_estimatedCuratedAssetCollectionSize: %llu, \n\nmemoryMinimumAssetCountPreset: %llu, \n\nmemoryMaximumAssetCountPreset: %llu, \n\nisAssetCountAcceptableForMemoryLensPlayback_px_estimatedCureatedAssetCountResult: %@, \nisAssetCountAcceptableForMemoryLensPlayback_estimatedAssetCountResult: %@, \n\nfinalCanPerformResult: %@\n}", *&for->var0, *&for->var2, for->var4, v5, v3, v4];
}

+ (BOOL)canPerformOnPHPerson:(id)person
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978630];
  v11[0] = person;
  v4 = MEMORY[0x1E695DEC8];
  personCopy = person;
  v6 = [v4 arrayWithObjects:v11 count:1];
  v7 = [v3 fetchAssetsForPersons:v6 options:0];
  v8 = [v7 count];

  v9 = [PXMemoriesRelatedSettings isAssetCountAcceptableForMemoryLensPlayback:v8];
  if (!v9)
  {
    NSLog(&cfstr_Pxlemonadephot_1.isa, v8);
  }

  return v9;
}

+ ($4C472092DE67A143DAA215F616F8A186)canPerformReasoningOnAssetCollectionReference:(SEL)reference
{
  assetCollection = [a4 assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:reference object:a2 file:@"PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v13, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:reference object:a2 file:@"PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v13}];
  }

LABEL_3:
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  retstr->var1 = [assetCollection estimatedAssetCount];
  retstr->var2 = [assetCollection px_estimatedCuratedAssetsCount];
  v7 = +[PXLemonadeSettings sharedInstance];
  retstr->var3 = [v7 minimumNumberOfAssetsForPlaybackAsMemory];

  v8 = +[PXLemonadeSettings sharedInstance];
  retstr->var4 = [v8 maximumNumberOfAssetsForPlaybackAsMemory];

  LOBYTE(v8) = +[PXMemoriesRelatedSettings isAssetCountAcceptableForMemoryLensPlayback:](PXMemoriesRelatedSettings, "isAssetCountAcceptableForMemoryLensPlayback:", [assetCollection px_estimatedCuratedAssetsCount]);
  retstr->var5 = v8;
  v9 = +[PXMemoriesRelatedSettings isAssetCountAcceptableForMemoryLensPlayback:](PXMemoriesRelatedSettings, "isAssetCountAcceptableForMemoryLensPlayback:", [assetCollection estimatedAssetCount]);
  retstr->var6 = v9;
  retstr->var7 = (v9 | v8) & 1;

  return result;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  assetCollection = [referenceCopy assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v13, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v13}];
  }

LABEL_3:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 1;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    [self canPerformReasoningOnAssetCollectionReference:referenceCopy];
    v8 = 0;
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    v9 = [self reasoningStructDescriptionFor:v16];
    NSLog(&cfstr_Pxlemonadephot_0.isa, v9);
  }

  return v8;
}

@end