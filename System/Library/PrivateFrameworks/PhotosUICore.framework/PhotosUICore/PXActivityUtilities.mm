@interface PXActivityUtilities
+ (id)_initialsFromGivenName:(id)name familyName:(id)familyName;
+ (id)sharedWorkQueue;
+ (id)textForDate:(id)date;
+ (void)_requestContactMatchingEmail:(id)email orPhone:(id)phone withFirstName:(id)name lastName:(id)lastName keysToFetch:(id)fetch withCompletion:(id)completion;
+ (void)_requestImageForContact:(id)contact targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l deliverOnce:(BOOL)once completion:(id)completion;
+ (void)_requestPlaceholderMonogramWithTargetSize:(CGSize)size displayScale:(double)scale completion:(id)completion;
+ (void)requestImageForContact:(id)contact targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l deliverOnce:(BOOL)once completion:(id)completion;
+ (void)requestImageFromPeopleAlbumForPerson:(id)person targetSize:(CGSize)size displayScale:(double)scale highQualityFormat:(BOOL)format completion:(id)completion;
+ (void)requestMeContactForKeys:(id)keys completionHandler:(id)handler;
+ (void)requestMeContactWithCompletion:(id)completion;
+ (void)requestMonogramForEmailAddress:(id)address targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l completion:(id)completion;
+ (void)requestMonogramForGivenName:(id)name familyName:(id)familyName targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l completion:(id)completion;
+ (void)requestPersonImageWithTargetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l matchingEmail:(id)email orPhone:(id)phone withFirstName:(id)name lastName:(id)lastName prefersPhotosImage:(BOOL)self0 withCompletion:(id)self1;
@end

@implementation PXActivityUtilities

+ (id)_initialsFromGivenName:(id)name familyName:(id)familyName
{
  v5 = _initialsFromGivenName_familyName__onceToken;
  familyNameCopy = familyName;
  nameCopy = name;
  if (v5 != -1)
  {
    dispatch_once(&_initialsFromGivenName_familyName__onceToken, &__block_literal_global_238);
  }

  v8 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  [v8 setGivenName:nameCopy];

  [v8 setFamilyName:familyNameCopy];
  v9 = [_initialsFromGivenName_familyName__formatter stringFromPersonNameComponents:v8];
  if ([(__CFString *)v9 length])
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1F1741150;
  }

  v11 = v10;

  return v10;
}

uint64_t __57__PXActivityUtilities__initialsFromGivenName_familyName___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  v1 = _initialsFromGivenName_familyName__formatter;
  _initialsFromGivenName_familyName__formatter = v0;

  v2 = _initialsFromGivenName_familyName__formatter;

  return [v2 setStyle:4];
}

+ (id)textForDate:(id)date
{
  dateCopy = date;
  v4 = +[PXFeedDateFormatter defaultFeedSectionDateFormatter];
  v5 = [v4 stringFromDate:dateCopy];

  return v5;
}

+ (void)requestPersonImageWithTargetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l matchingEmail:(id)email orPhone:(id)phone withFirstName:(id)name lastName:(id)lastName prefersPhotosImage:(BOOL)self0 withCompletion:(id)self1
{
  height = size.height;
  width = size.width;
  emailCopy = email;
  phoneCopy = phone;
  nameCopy = name;
  lastNameCopy = lastName;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  sharedWorkQueue = [self sharedWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke;
  block[3] = &unk_1E7730B20;
  v34 = emailCopy;
  v35 = phoneCopy;
  v36 = nameCopy;
  v37 = lastNameCopy;
  imageCopy = image;
  v40 = width;
  v41 = height;
  scaleCopy = scale;
  v38 = completionCopy;
  selfCopy = self;
  lCopy = l;
  v27 = completionCopy;
  v28 = lastNameCopy;
  v29 = nameCopy;
  v30 = phoneCopy;
  v31 = emailCopy;
  dispatch_async(sharedWorkQueue, block);
}

void __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CE30] descriptorForRequiredKeys];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v24[0] = v2;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke_2;
  v16[3] = &unk_1E7730AF8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v17 = v13;
  v18 = v12;
  v22 = *(a1 + 104);
  v15 = *(a1 + 64);
  v20 = *(a1 + 80);
  v21 = *(a1 + 96);
  v14 = v15;
  v19 = v15;
  v23 = *(a1 + 105);
  [PXActivityUtilities _requestContactMatchingEmail:v3 orPhone:v4 withFirstName:v5 lastName:v6 keysToFetch:v7 withCompletion:v16];
}

void __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = [v3 identifier];
      *buf = 138413314;
      v43 = v5;
      v44 = 2112;
      v45 = v6;
      v46 = 2112;
      v47 = v7;
      v48 = 2112;
      v49 = v8;
      v50 = 2112;
      v51 = v9;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "[PXAvatarUtilities] Contact found for email: %@, phone: %@, first: %@, last: %@. Contact identifier: %@", buf, 0x34u);
    }

    v10 = [v3 identifier];
    v11 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v12 = [PXPeopleUtilities personWithPersonUri:v10 photoLibrary:v11];

    if (v12 && *(a1 + 104) == 1)
    {
      v13 = PLUIGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v3 identifier];
        *buf = 138412290;
        v43 = v14;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEBUG, "[PXAvatarUtilities] Person found for contact identifier: %@", buf, 0xCu);
      }

      [*(a1 + 72) requestImageFromPeopleAlbumForPerson:v12 targetSize:1 displayScale:*(a1 + 64) highQualityFormat:*(a1 + 80) completion:*(a1 + 88), *(a1 + 96)];
    }

    else
    {
      v15 = PLUIGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v3 identifier];
        *buf = 138412290;
        v43 = v16;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEBUG, "[PXAvatarUtilities] Requesting contacts image for contact identifier: %@", buf, 0xCu);
      }

      v17 = *(a1 + 72);
      v18 = *(a1 + 96);
      v19 = *(a1 + 105);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke_230;
      v39[3] = &unk_1E7730AA8;
      v40 = v3;
      v41 = *(a1 + 64);
      [v17 _requestImageForContact:v40 targetSize:v19 displayScale:0 isRTL:v39 deliverOnce:*(a1 + 80) completion:{*(a1 + 88), v18}];
    }
  }

  else if ([*(a1 + 48) length] || objc_msgSend(*(a1 + 56), "length"))
  {
    v20 = PLUIGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      *buf = 138413058;
      v43 = v21;
      v44 = 2112;
      v45 = v22;
      v46 = 2112;
      v47 = v23;
      v48 = 2112;
      v49 = v24;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEBUG, "[PXAvatarUtilities] Contact not found for email: %@, phone: %@, first: %@, last: %@. Building monogram...", buf, 0x2Au);
    }

    v25 = *(a1 + 72);
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    v28 = *(a1 + 96);
    v29 = *(a1 + 105);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke_232;
    v35[3] = &unk_1E7730AD0;
    v36 = v26;
    v37 = *(a1 + 56);
    v38 = *(a1 + 64);
    [v25 requestMonogramForGivenName:v36 familyName:v27 targetSize:v29 displayScale:v35 isRTL:*(a1 + 80) completion:{*(a1 + 88), v28}];

    v12 = v36;
  }

  else
  {
    v30 = PLUIGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEBUG, "[PXAvatarUtilities] No contact found, and no first & last name provided. Creating placeholder monogram...", buf, 2u);
    }

    v31 = *(a1 + 96);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke_233;
    v33[3] = &unk_1E7730A58;
    v32 = *(a1 + 72);
    v34 = *(a1 + 64);
    [v32 _requestPlaceholderMonogramWithTargetSize:v33 displayScale:*(a1 + 80) completion:{*(a1 + 88), v31}];
    v12 = v34;
  }
}

void __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke_230(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(a1 + 32);
  *(a1 + 40);
  v7 = v6;
  v8 = v5;
  px_dispatch_on_main_queue();
}

void __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke_232(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10[0] = 67109890;
    v10[1] = v5 != 0;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "[PXAvatarUtilities] Monogram created (%{BOOL}d) for first: %@, last: %@. Is degraded: %@", v10, 0x26u);
  }

  (*(a1[6] + 16))(*off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3));
}

void __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke_233(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 32);
  v4 = v3;
  px_dispatch_on_main_queue();
}

uint64_t __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke_2_234(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32) != 0;
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEBUG, "[PXAvatarUtilities] Placeholder monogram created: %{BOOL}d", v5, 8u);
  }

  return (*(*(a1 + 40) + 16))(*off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3));
}

uint64_t __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke_2_231(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32) != 0;
    v5 = [*(a1 + 48) identifier];
    v7[0] = 67109634;
    v7[1] = v4;
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEBUG, "[PXAvatarUtilities] Contacts image image found = %{BOOL}d (isDegraded: %@) for contact identifier: %@. ", v7, 0x1Cu);
  }

  return (*(*(a1 + 56) + 16))(*off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3));
}

+ (void)_requestPlaceholderMonogramWithTargetSize:(CGSize)size displayScale:(double)scale completion:(id)completion
{
  height = size.height;
  width = size.width;
  v8 = MEMORY[0x1E695D098];
  completionCopy = completion;
  v10 = [v8 alloc];
  defaultSettings = [MEMORY[0x1E695D0A8] defaultSettings];
  v14 = [v10 initWithSettings:defaultSettings];

  placeholderImageProvider = [v14 placeholderImageProvider];
  v13 = [placeholderImageProvider imageForSize:0 scale:width style:{height, scale}];

  completionCopy[2](completionCopy, v13);
}

+ (void)requestMonogramForGivenName:(id)name familyName:(id)familyName targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l completion:(id)completion
{
  lCopy = l;
  height = size.height;
  width = size.width;
  familyNameCopy = familyName;
  completionCopy = completion;
  nameCopy = name;
  if (![nameCopy length] && !objc_msgSend(familyNameCopy, "length"))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"givenName.length || familyName.length"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

LABEL_6:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    goto LABEL_4;
  }

  if (!completionCopy)
  {
    goto LABEL_6;
  }

LABEL_4:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__PXActivityUtilities_requestMonogramForGivenName_familyName_targetSize_displayScale_isRTL_completion___block_invoke;
  aBlock[3] = &unk_1E7730A58;
  v30 = completionCopy;
  v19 = completionCopy;
  v20 = _Block_copy(aBlock);
  v21 = [MEMORY[0x1E695D0B0] scopeWithPointSize:lCopy scale:0 rightToLeft:width style:{height, scale}];
  v22 = objc_alloc(MEMORY[0x1E695D098]);
  defaultSettings = [MEMORY[0x1E695D0A8] defaultSettings];
  v24 = [v22 initWithSettings:defaultSettings];

  v25 = [self _initialsFromGivenName:nameCopy familyName:familyNameCopy];

  v26 = [v24 renderMonogramForString:v25 scope:v21 imageHandler:v20];
}

void __103__PXActivityUtilities_requestMonogramForGivenName_familyName_targetSize_displayScale_isRTL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 32);
  v4 = v3;
  px_dispatch_on_main_queue();
}

+ (void)requestMonogramForEmailAddress:(id)address targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l completion:(id)completion
{
  lCopy = l;
  height = size.height;
  width = size.width;
  addressCopy = address;
  completionCopy = completion;
  if ([addressCopy length])
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"emailAddress.length > 0"}];

    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  [PXActivityUtilities requestMonogramForGivenName:addressCopy familyName:0 targetSize:lCopy displayScale:completionCopy isRTL:width completion:height, scale];
}

+ (void)requestImageForContact:(id)contact targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l deliverOnce:(BOOL)once completion:(id)completion
{
  height = size.height;
  width = size.width;
  contactCopy = contact;
  completionCopy = completion;
  v18 = completionCopy;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (v18)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  sharedWorkQueue = [self sharedWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PXActivityUtilities_requestImageForContact_targetSize_displayScale_isRTL_deliverOnce_completion___block_invoke;
  block[3] = &unk_1E7730A80;
  v26 = v18;
  selfCopy = self;
  v28 = width;
  v29 = height;
  scaleCopy = scale;
  lCopy = l;
  onceCopy = once;
  v25 = contactCopy;
  v20 = v18;
  v21 = contactCopy;
  dispatch_async(sharedWorkQueue, block);
}

void __99__PXActivityUtilities_requestImageForContact_targetSize_displayScale_isRTL_deliverOnce_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 81);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__PXActivityUtilities_requestImageForContact_targetSize_displayScale_isRTL_deliverOnce_completion___block_invoke_2;
  v7[3] = &unk_1E774B658;
  v6 = *(a1 + 48);
  v8 = *(a1 + 40);
  [v6 _requestImageForContact:v2 targetSize:v4 displayScale:v5 isRTL:v7 deliverOnce:*(a1 + 56) completion:{*(a1 + 64), v3}];
}

void __99__PXActivityUtilities_requestImageForContact_targetSize_displayScale_isRTL_deliverOnce_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PXActivityUtilities_requestImageForContact_targetSize_displayScale_isRTL_deliverOnce_completion___block_invoke_3;
  block[3] = &unk_1E774A0E0;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (void)_requestImageForContact:(id)contact targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l deliverOnce:(BOOL)once completion:(id)completion
{
  onceCopy = once;
  lCopy = l;
  height = size.height;
  width = size.width;
  v56[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  completionCopy = completion;
  v18 = completionCopy;
  if (contactCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v19 = *MEMORY[0x1E695C400];
  if (([contactCopy isKeyAvailable:*MEMORY[0x1E695C400]]& 1) == 0)
  {
    identifier = [contactCopy identifier];
    v21 = objc_alloc(MEMORY[0x1E695CD78]);
    v56[0] = v19;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v23 = [v21 initWithKeysToFetch:v22];

    v24 = MEMORY[0x1E695CD58];
    v55 = identifier;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v26 = [v24 predicateForContactsWithIdentifiers:v25];
    [v23 setPredicate:v26];

    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__35798;
    v47 = __Block_byref_object_dispose__35799;
    v48 = 0;
    v27 = +[PXPeopleUtilities sharedContactStore];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __100__PXActivityUtilities__requestImageForContact_targetSize_displayScale_isRTL_deliverOnce_completion___block_invoke;
    v42[3] = &unk_1E77416C8;
    v42[4] = &v43;
    [v27 enumerateContactsWithFetchRequest:v23 error:0 usingBlock:v42];
    v28 = v44[5];
    if (v28)
    {
      v29 = contactCopy;
      contactCopy = v28;
    }

    else
    {
      v29 = PLUIGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v52 = identifier;
        v53 = 2112;
        v54 = contactCopy;
        _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_ERROR, "Contact %{public}@ was missing thumbnail image data key, and refetching contact by identifier for that key returned nil. Attempting with original contact: %@", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v43, 8);
  }

  v30 = objc_alloc(MEMORY[0x1E695D098]);
  defaultSettings = [MEMORY[0x1E695D0A8] defaultSettings];
  v32 = [v30 initWithSettings:defaultSettings];

  v33 = [MEMORY[0x1E695D0B0] scopeWithPointSize:lCopy scale:0 rightToLeft:width style:{height, scale}];
  if (onceCopy)
  {
    v50 = contactCopy;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    v35 = [v32 avatarImageForContacts:v34 scope:v33];

    (v18)[2](v18, v35, MEMORY[0x1E695E110]);
  }

  else
  {
    v49 = contactCopy;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __100__PXActivityUtilities__requestImageForContact_targetSize_displayScale_isRTL_deliverOnce_completion___block_invoke_218;
    v40[3] = &unk_1E7730A58;
    v41 = v18;
    v37 = [v32 renderAvatarsForContacts:v36 scope:v33 imageHandler:v40];

    v35 = v41;
  }
}

+ (void)requestImageFromPeopleAlbumForPerson:(id)person targetSize:(CGSize)size displayScale:(double)scale highQualityFormat:(BOOL)format completion:(id)completion
{
  formatCopy = format;
  height = size.height;
  width = size.width;
  personCopy = person;
  completionCopy = completion;
  v16 = completionCopy;
  if (personCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"person"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  scale = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:personCopy targetSize:width displayScale:height, scale];
  v18 = scale;
  if (formatCopy)
  {
    [(PXPeopleFaceCropFetchOptions *)scale setDeliveryMode:1];
  }

  v19 = +[PXPeopleFaceCropManager sharedManager];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __113__PXActivityUtilities_requestImageFromPeopleAlbumForPerson_targetSize_displayScale_highQualityFormat_completion___block_invoke;
  v23[3] = &unk_1E774B680;
  v24 = v16;
  v20 = v16;
  [v19 requestFaceCropForOptions:v18 resultHandler:v23];
}

void __113__PXActivityUtilities_requestImageFromPeopleAlbumForPerson_targetSize_displayScale_highQualityFormat_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(a1 + 32);
  v7 = v5;
  v8 = v6;
  px_dispatch_on_main_queue();
}

void __113__PXActivityUtilities_requestImageFromPeopleAlbumForPerson_targetSize_displayScale_highQualityFormat_completion___block_invoke_2(uint64_t a1)
{
  v14 = [*(a1 + 32) objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  [v14 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) objectForKeyedSubscript:*off_1E7722078];
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"PXPeopleErrorKey"];
  (*(v2 + 16))(v2, v3, v12, v13, v5, v7, v9, v11);
}

+ (void)_requestContactMatchingEmail:(id)email orPhone:(id)phone withFirstName:(id)name lastName:(id)lastName keysToFetch:(id)fetch withCompletion:(id)completion
{
  v88[2] = *MEMORY[0x1E69E9840];
  emailCopy = email;
  phoneCopy = phone;
  nameCopy = name;
  lastNameCopy = lastName;
  fetchCopy = fetch;
  completionCopy = completion;
  v19 = +[PXPeopleUtilities sharedContactStore];
  v20 = [MEMORY[0x1E695DF70] arrayWithArray:fetchCopy];
  v21 = *MEMORY[0x1E695C208];
  v22 = *MEMORY[0x1E695C330];
  v88[0] = *MEMORY[0x1E695C208];
  v88[1] = v22;
  v59 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
  [v20 addObjectsFromArray:v23];

  if (nameCopy | lastNameCopy && (v24 = objc_alloc_init(MEMORY[0x1E695CD80])) != 0)
  {
    v70 = v24;
    [v24 setStyle:0];
    v25 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    [v20 addObject:v25];

    v69 = 0;
  }

  else
  {
    v70 = 0;
    v69 = 1;
  }

  v71 = v20;
  if (![emailCopy length])
  {
    v29 = 0;
    identifier = 0;
    goto LABEL_29;
  }

  [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:emailCopy];
  v81 = 0;
  v61 = v65 = v19;
  v26 = [v19 unifiedContactsMatchingPredicate:? keysToFetch:? error:?];
  v67 = 0;
  if (!v26 && v67)
  {
    v27 = PLUIGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = emailCopy;
      v86 = 2112;
      v87 = v67;
      _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_ERROR, "Error attempting to fetch all unified contacts matching predicate [email=%@] : %@", buf, 0x16u);
    }
  }

  if ([v26 count])
  {
    v28 = [MEMORY[0x1E695CD58] pl_findBestMatchingContactFromMatchingContacts:v26 firstName:nameCopy lastName:lastNameCopy contactFormatter:v70];
    if (v28)
    {
      v53 = fetchCopy;
      v55 = nameCopy;
      v29 = v21;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      emailAddresses = [v28 emailAddresses];
      identifier = [emailAddresses countByEnumeratingWithState:&v77 objects:v83 count:16];
      if (identifier)
      {
        v49 = lastNameCopy;
        v51 = v29;
        v57 = completionCopy;
        v63 = phoneCopy;
        v32 = *v78;
        while (2)
        {
          for (i = 0; i != identifier; i = i + 1)
          {
            if (*v78 != v32)
            {
              objc_enumerationMutation(emailAddresses);
            }

            v34 = *(*(&v77 + 1) + 8 * i);
            value = [v34 value];
            v36 = [value isEqualToString:emailCopy];

            if (v36)
            {
              identifier = [v34 identifier];
              goto LABEL_25;
            }
          }

          identifier = [emailAddresses countByEnumeratingWithState:&v77 objects:v83 count:16];
          if (identifier)
          {
            continue;
          }

          break;
        }

LABEL_25:
        phoneCopy = v63;
        lastNameCopy = v49;
        v29 = v51;
        completionCopy = v57;
      }

      fetchCopy = v53;
      nameCopy = v55;
    }

    else
    {
      identifier = 0;
      v29 = 0;
    }
  }

  else
  {
    identifier = 0;
    v29 = 0;
    v28 = 0;
  }

  v19 = v65;
  if (!v28)
  {
LABEL_29:
    if (![phoneCopy length])
    {
      v28 = 0;
      goto LABEL_53;
    }

    v58 = completionCopy;
    v64 = phoneCopy;
    v37 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:phoneCopy];
    [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v37];
    v62 = v76 = 0;
    v38 = [v19 unifiedContactsMatchingPredicate:? keysToFetch:? error:?];
    v68 = 0;
    if (!v38 && v68)
    {
      v39 = PLUIGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = v64;
        v86 = 2112;
        v87 = v68;
        _os_log_impl(&dword_1A3C1C000, v39, OS_LOG_TYPE_ERROR, "Error attempting to fetch all unified contacts matching predicate [phone=%@] : %@", buf, 0x16u);
      }
    }

    v52 = v38;
    if ([v38 count])
    {
      v28 = [MEMORY[0x1E695CD58] pl_findBestMatchingContactFromMatchingContacts:v38 firstName:nameCopy lastName:lastNameCopy contactFormatter:v70];
      if (v28)
      {
        v54 = fetchCopy;
        v56 = nameCopy;
        v40 = v59;

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        phoneNumbers = [v28 phoneNumbers];
        v42 = [phoneNumbers countByEnumeratingWithState:&v72 objects:v82 count:16];
        phoneCopy = v64;
        if (v42)
        {
          v43 = v42;
          v60 = v40;
          v66 = v19;
          v50 = lastNameCopy;
          v44 = *v73;
          while (2)
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v73 != v44)
              {
                objc_enumerationMutation(phoneNumbers);
              }

              v46 = *(*(&v72 + 1) + 8 * j);
              value2 = [v46 value];
              if ([value2 isLikePhoneNumber:v37])
              {
                identifier2 = [v46 identifier];

                identifier = identifier2;
                goto LABEL_50;
              }
            }

            v43 = [phoneNumbers countByEnumeratingWithState:&v72 objects:v82 count:16];
            if (v43)
            {
              continue;
            }

            break;
          }

LABEL_50:
          phoneCopy = v64;
          v19 = v66;
          lastNameCopy = v50;
          v40 = v60;
        }

        v29 = v40;
        fetchCopy = v54;
        nameCopy = v56;
        goto LABEL_52;
      }
    }

    else
    {
      v28 = 0;
    }

    phoneCopy = v64;
LABEL_52:

    completionCopy = v58;
  }

LABEL_53:
  if ((v69 & 1) == 0)
  {
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v28, v29, identifier);
  }
}

+ (void)requestMeContactForKeys:(id)keys completionHandler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  sharedWorkQueue = [self sharedWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PXActivityUtilities_requestMeContactForKeys_completionHandler___block_invoke;
  block[3] = &unk_1E774C2F0;
  v14 = keysCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = keysCopy;
  dispatch_async(sharedWorkQueue, block);
}

void __65__PXActivityUtilities_requestMeContactForKeys_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[PXPeopleUtilities sharedContactStore];
  v3 = *(a1 + 32);
  v13 = 0;
  v4 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:v3 error:&v13];
  v5 = v13;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PXActivityUtilities_requestMeContactForKeys_completionHandler___block_invoke_2;
  v9[3] = &unk_1E774A0E0;
  v6 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v10 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

+ (void)requestMeContactWithCompletion:(id)completion
{
  v10[3] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivityUtilities.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v6 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v7 = *MEMORY[0x1E695C330];
  v10[0] = *MEMORY[0x1E695C208];
  v10[1] = v7;
  v10[2] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  [self requestMeContactForKeys:v8 completionHandler:completionCopy];
}

+ (id)sharedWorkQueue
{
  if (sharedWorkQueue_onceToken != -1)
  {
    dispatch_once(&sharedWorkQueue_onceToken, &__block_literal_global_35813);
  }

  v3 = sharedWorkQueue_sharedWorkQueue;

  return v3;
}

void __38__PXActivityUtilities_sharedWorkQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.photos.activityUtilities.work", attr);
  v2 = sharedWorkQueue_sharedWorkQueue;
  sharedWorkQueue_sharedWorkQueue = v1;
}

@end