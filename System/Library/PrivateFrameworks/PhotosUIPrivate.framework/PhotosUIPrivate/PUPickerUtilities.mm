@interface PUPickerUtilities
+ (id)_pickerConfigurationForAddToCollectionWithAssetsToAdd:(id)add sourceType:(int64_t)type;
+ (id)_pickerConfigurationForAlbumPickerForPhotoLibrary:(id)library;
+ (void)presentDataAccessEducationViewController;
+ (void)presentInternalAndDeveloperModeOnlyTouchAuthenticationAlertIfNeeded;
+ (void)presentUserSafetyViewControllerForNonPreviewableAnalysisResults:(PXSharingUserSafetyAnalysisResults)results completionHandler:(id)handler;
@end

@implementation PUPickerUtilities

+ (id)_pickerConfigurationForAlbumPickerForPhotoLibrary:(id)library
{
  v3 = MEMORY[0x1E69790E0];
  libraryCopy = library;
  v5 = [[v3 alloc] initWithPhotoLibrary:libraryCopy];

  if (v5)
  {
    [v5 setSelectionLimit:1];
    [v5 _setSourceType:2];
    [v5 _setDisabledPrivateCapabilities:49152];
    v6 = PXLocalizedString();
    [v5 setTitle:v6];

    v7 = objc_alloc_init(MEMORY[0x1E6979160]);
    [v5 _setAlbumsConfiguration:v7];
  }

  return v5;
}

+ (id)_pickerConfigurationForAddToCollectionWithAssetsToAdd:(id)add sourceType:(int64_t)type
{
  addCopy = add;
  firstObject = [addCopy firstObject];
  photoLibrary = [firstObject photoLibrary];

  if (photoLibrary)
  {
    v8 = [objc_alloc(MEMORY[0x1E69790E0]) _initWithPhotoLibrary:photoLibrary onlyReturnsIdentifiers:0];
    v9 = v8;
    if (v8)
    {
      [v8 setSelectionLimit:1];
      [v9 _setSourceType:type];
      [v9 _setDisabledPrivateCapabilities:49152];
      v10 = PXLocalizedString();
      [v9 setTitle:v10];

      v11 = objc_alloc_init(MEMORY[0x1E6979160]);
      array = [MEMORY[0x1E695DF70] array];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __86__PUPickerUtilities__pickerConfigurationForAddToCollectionWithAssetsToAdd_sourceType___block_invoke;
      v17[3] = &unk_1E7B80D68;
      v18 = array;
      v13 = array;
      [addCopy enumerateObjectsUsingBlock:v17];
      [v11 setAssetsToAddIdentifiers:v13];
      [v9 _setAlbumsConfiguration:v11];
    }

    return v9;
  }

  else
  {
    v15 = _PFAssertFailHandler();
    __86__PUPickerUtilities__pickerConfigurationForAddToCollectionWithAssetsToAdd_sourceType___block_invoke(v15, v16);
  }

  return result;
}

void __86__PUPickerUtilities__pickerConfigurationForAddToCollectionWithAssetsToAdd_sourceType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

+ (void)presentInternalAndDeveloperModeOnlyTouchAuthenticationAlertIfNeeded
{
  if (presentInternalAndDeveloperModeOnlyTouchAuthenticationAlertIfNeeded_onceToken != -1)
  {
    dispatch_once(&presentInternalAndDeveloperModeOnlyTouchAuthenticationAlertIfNeeded_onceToken, &__block_literal_global_98279);
  }

  if (presentInternalAndDeveloperModeOnlyTouchAuthenticationAlertIfNeeded_hasAlreadyPresented == 1)
  {
    v2 = PLPrivacyGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "[Touch Authentication] Surpassed alert because of it was already presented.";
      v4 = buf;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    }
  }

  else
  {
    if ((PFOSVariantHasInternalUI() & 1) == 0 && (PLIsDeveloperMode() & 1) == 0)
    {
      v2 = PLPrivacyGetLog();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v10 = 0;
      v3 = "[Touch Authentication] Surpassed alert because of it is not enabled.";
      v4 = &v10;
      goto LABEL_6;
    }

    v2 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.Photos.PhotosUIService" viewControllerClassName:@"PhotosUIServicePickerUnsupportedConfigurationAlertController"];
    v5 = objc_alloc_init(MEMORY[0x1E69D4298]);
    v6 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v2 configurationContext:v5];
    v7 = objc_alloc_init(MEMORY[0x1E69D4288]);
    [v6 activateWithContext:v7];
    presentInternalAndDeveloperModeOnlyTouchAuthenticationAlertIfNeeded_hasAlreadyPresented = 1;
    v8 = PLPrivacyGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "[Touch Authentication] Prompted for touch authentication.", v9, 2u);
    }
  }

LABEL_12:
}

+ (void)presentUserSafetyViewControllerForNonPreviewableAnalysisResults:(PXSharingUserSafetyAnalysisResults)results completionHandler:(id)handler
{
  var0 = results.var0;
  handlerCopy = handler;
  v6 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.Photos.PhotosUIService" viewControllerClassName:@"PhotosUIServiceUserSafetyViewController"];
  v7 = objc_alloc_init(MEMORY[0x1E69D4298]);
  v8 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v6 configurationContext:v7];
  v9 = objc_alloc_init(MEMORY[0x1E69D4288]);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:var0];
  [dictionary setValue:v11 forKey:@"nonPreviewableCompactSCSensitivityAnalysis"];

  [v9 setUserInfo:dictionary];
  v12 = MEMORY[0x1E698E5F8];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __103__PUPickerUtilities_presentUserSafetyViewControllerForNonPreviewableAnalysisResults_completionHandler___block_invoke;
  v22 = &unk_1E7B80D40;
  v23 = v8;
  v24 = handlerCopy;
  v13 = v8;
  v14 = handlerCopy;
  v15 = [v12 responderWithHandler:&v19];
  [v15 setQueue:{MEMORY[0x1E69E96A0], v19, v20, v21, v22}];
  v16 = MEMORY[0x1E695DFD8];
  v17 = [objc_alloc(MEMORY[0x1E698E5F0]) initWithInfo:0 responder:v15];
  v18 = [v16 setWithObject:v17];
  [v9 setActions:v18];

  [v13 activateWithContext:v9];
}

uint64_t __103__PUPickerUtilities_presentUserSafetyViewControllerForNonPreviewableAnalysisResults_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 error];
  (*(v3 + 16))(v3, v4 == 0);

  v5 = *(a1 + 32);

  return [v5 invalidate];
}

+ (void)presentDataAccessEducationViewController
{
  v5 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.Photos.PhotosUIService" viewControllerClassName:@"PhotosUIServiceDataAccessEducationViewController"];
  v2 = objc_alloc_init(MEMORY[0x1E69D4298]);
  v3 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v5 configurationContext:v2];
  v4 = objc_alloc_init(MEMORY[0x1E69D4288]);
  [v3 activateWithContext:v4];
}

@end