@interface PSPhotoUtils
@end

@implementation PSPhotoUtils

void __33___PSPhotoUtils_sharedMADService__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v1 = getMADServiceClass_softClass;
  v8 = getMADServiceClass_softClass;
  if (!getMADServiceClass_softClass)
  {
    MediaAnalysisServicesLibraryCore();
    v6[3] = objc_getClass("MADService");
    getMADServiceClass_softClass = v6[3];
    v1 = v6[3];
  }

  v2 = v1;
  _Block_object_dispose(&v5, 8);
  v3 = [v1 service];
  v4 = sharedMADService__pasExprOnceResult;
  sharedMADService__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

void __40___PSPhotoUtils_prewarmPhotosFrameworks__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = +[_PSConstants mobileCoreDuetBundleId];
  v3 = [v1 isEqual:v2];

  if (v3)
  {
    v4 = MEMORY[0x1E69C5D08];

    [v4 runBlockWhenDeviceIsClassCUnlocked:&__block_literal_global_208];
  }
}

void __40___PSPhotoUtils_prewarmPhotosFrameworks__block_invoke_2()
{
  v0 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"_PSPhotoUtils prewarm" qosClass:9];
  dispatch_async(v0, &__block_literal_global_212);
}

void __40___PSPhotoUtils_prewarmPhotosFrameworks__block_invoke_3()
{
  v2 = [getPHPhotoLibraryClass() sharedPhotoLibrary];
  [v2 isCloudPhotoLibraryEnabled];
  v0 = [objc_alloc(getPFSceneTaxonomyClass()) initWithLatestTaxonomy];
  v1 = [v0 digest];
}

@end