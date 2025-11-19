@interface PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer
+ ($4C472092DE67A143DAA215F616F8A186)canPerformReasoningOnAssetCollectionReference:(SEL)a3;
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (BOOL)canPerformOnPHPerson:(id)a3;
+ (id)reasoningStructDescriptionFor:(id *)a3;
@end

@implementation PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer

+ (id)reasoningStructDescriptionFor:(id *)a3
{
  v3 = @"NO";
  v4 = @"YES";
  if (a3->var5)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (a3->var6)
  {
    v3 = @"YES";
  }

  if (!a3->var7)
  {
    v4 = @"NO'";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformerCanPerformReasoning {\ndecisioningVersion: %llu\n\nestimatedAssetCollectionSize: %llu, \n\npx_estimatedCuratedAssetCollectionSize: %llu, \n\nmemoryMinimumAssetCountPreset: %llu, \n\nmemoryMaximumAssetCountPreset: %llu, \n\nisAssetCountAcceptableForMemoryLensPlayback_px_estimatedCureatedAssetCountResult: %@, \nisAssetCountAcceptableForMemoryLensPlayback_estimatedAssetCountResult: %@, \n\nfinalCanPerformResult: %@\n}", *&a3->var0, *&a3->var2, a3->var4, v5, v3, v4];
}

+ (BOOL)canPerformOnPHPerson:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978630];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
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

+ ($4C472092DE67A143DAA215F616F8A186)canPerformReasoningOnAssetCollectionReference:(SEL)a3
{
  v16 = [a4 assetCollection];
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v16 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a3 object:a2 file:@"PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v13, v15}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a3 object:a2 file:@"PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v13}];
  }

LABEL_3:
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  retstr->var1 = [v16 estimatedAssetCount];
  retstr->var2 = [v16 px_estimatedCuratedAssetsCount];
  v7 = +[PXLemonadeSettings sharedInstance];
  retstr->var3 = [v7 minimumNumberOfAssetsForPlaybackAsMemory];

  v8 = +[PXLemonadeSettings sharedInstance];
  retstr->var4 = [v8 maximumNumberOfAssetsForPlaybackAsMemory];

  LOBYTE(v8) = +[PXMemoriesRelatedSettings isAssetCountAcceptableForMemoryLensPlayback:](PXMemoriesRelatedSettings, "isAssetCountAcceptableForMemoryLensPlayback:", [v16 px_estimatedCuratedAssetsCount]);
  retstr->var5 = v8;
  v9 = +[PXMemoriesRelatedSettings isAssetCountAcceptableForMemoryLensPlayback:](PXMemoriesRelatedSettings, "isAssetCountAcceptableForMemoryLensPlayback:", [v16 estimatedAssetCount]);
  retstr->var6 = v9;
  retstr->var7 = (v9 | v8) & 1;

  return result;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v6 = a3;
  v7 = [v6 assetCollection];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v7 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v13, v15}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXLemonadePhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v13}];
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
    [a1 canPerformReasoningOnAssetCollectionReference:v6];
    v8 = 0;
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    v9 = [a1 reasoningStructDescriptionFor:v16];
    NSLog(&cfstr_Pxlemonadephot_0.isa, v9);
  }

  return v8;
}

@end