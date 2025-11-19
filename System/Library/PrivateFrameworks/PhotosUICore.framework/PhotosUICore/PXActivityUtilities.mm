@interface PXActivityUtilities
+ (id)_initialsFromGivenName:(id)a3 familyName:(id)a4;
+ (id)sharedWorkQueue;
+ (id)textForDate:(id)a3;
+ (void)_requestContactMatchingEmail:(id)a3 orPhone:(id)a4 withFirstName:(id)a5 lastName:(id)a6 keysToFetch:(id)a7 withCompletion:(id)a8;
+ (void)_requestImageForContact:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 isRTL:(BOOL)a6 deliverOnce:(BOOL)a7 completion:(id)a8;
+ (void)_requestPlaceholderMonogramWithTargetSize:(CGSize)a3 displayScale:(double)a4 completion:(id)a5;
+ (void)requestImageForContact:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 isRTL:(BOOL)a6 deliverOnce:(BOOL)a7 completion:(id)a8;
+ (void)requestImageFromPeopleAlbumForPerson:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 highQualityFormat:(BOOL)a6 completion:(id)a7;
+ (void)requestMeContactForKeys:(id)a3 completionHandler:(id)a4;
+ (void)requestMeContactWithCompletion:(id)a3;
+ (void)requestMonogramForEmailAddress:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 isRTL:(BOOL)a6 completion:(id)a7;
+ (void)requestMonogramForGivenName:(id)a3 familyName:(id)a4 targetSize:(CGSize)a5 displayScale:(double)a6 isRTL:(BOOL)a7 completion:(id)a8;
+ (void)requestPersonImageWithTargetSize:(CGSize)a3 displayScale:(double)a4 isRTL:(BOOL)a5 matchingEmail:(id)a6 orPhone:(id)a7 withFirstName:(id)a8 lastName:(id)a9 prefersPhotosImage:(BOOL)a10 withCompletion:(id)a11;
@end

@implementation PXActivityUtilities

+ (id)_initialsFromGivenName:(id)a3 familyName:(id)a4
{
  v5 = _initialsFromGivenName_familyName__onceToken;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    dispatch_once(&_initialsFromGivenName_familyName__onceToken, &__block_literal_global_238);
  }

  v8 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  [v8 setGivenName:v7];

  [v8 setFamilyName:v6];
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

+ (id)textForDate:(id)a3
{
  v3 = a3;
  v4 = +[PXFeedDateFormatter defaultFeedSectionDateFormatter];
  v5 = [v4 stringFromDate:v3];

  return v5;
}

+ (void)requestPersonImageWithTargetSize:(CGSize)a3 displayScale:(double)a4 isRTL:(BOOL)a5 matchingEmail:(id)a6 orPhone:(id)a7 withFirstName:(id)a8 lastName:(id)a9 prefersPhotosImage:(BOOL)a10 withCompletion:(id)a11
{
  height = a3.height;
  width = a3.width;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a11;
  if (!v25)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v26 = [a1 sharedWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __154__PXActivityUtilities_requestPersonImageWithTargetSize_displayScale_isRTL_matchingEmail_orPhone_withFirstName_lastName_prefersPhotosImage_withCompletion___block_invoke;
  block[3] = &unk_1E7730B20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v43 = a10;
  v40 = width;
  v41 = height;
  v42 = a4;
  v38 = v25;
  v39 = a1;
  v44 = a5;
  v27 = v25;
  v28 = v24;
  v29 = v23;
  v30 = v22;
  v31 = v21;
  dispatch_async(v26, block);
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

+ (void)_requestPlaceholderMonogramWithTargetSize:(CGSize)a3 displayScale:(double)a4 completion:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = MEMORY[0x1E695D098];
  v9 = a5;
  v10 = [v8 alloc];
  v11 = [MEMORY[0x1E695D0A8] defaultSettings];
  v14 = [v10 initWithSettings:v11];

  v12 = [v14 placeholderImageProvider];
  v13 = [v12 imageForSize:0 scale:width style:{height, a4}];

  v9[2](v9, v13);
}

+ (void)requestMonogramForGivenName:(id)a3 familyName:(id)a4 targetSize:(CGSize)a5 displayScale:(double)a6 isRTL:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  height = a5.height;
  width = a5.width;
  v16 = a4;
  v17 = a8;
  v18 = a3;
  if (![v18 length] && !objc_msgSend(v16, "length"))
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"givenName.length || familyName.length"}];

    if (v17)
    {
      goto LABEL_4;
    }

LABEL_6:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    goto LABEL_4;
  }

  if (!v17)
  {
    goto LABEL_6;
  }

LABEL_4:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__PXActivityUtilities_requestMonogramForGivenName_familyName_targetSize_displayScale_isRTL_completion___block_invoke;
  aBlock[3] = &unk_1E7730A58;
  v30 = v17;
  v19 = v17;
  v20 = _Block_copy(aBlock);
  v21 = [MEMORY[0x1E695D0B0] scopeWithPointSize:v9 scale:0 rightToLeft:width style:{height, a6}];
  v22 = objc_alloc(MEMORY[0x1E695D098]);
  v23 = [MEMORY[0x1E695D0A8] defaultSettings];
  v24 = [v22 initWithSettings:v23];

  v25 = [a1 _initialsFromGivenName:v18 familyName:v16];

  v26 = [v24 renderMonogramForString:v25 scope:v21 imageHandler:v20];
}

void __103__PXActivityUtilities_requestMonogramForGivenName_familyName_targetSize_displayScale_isRTL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 32);
  v4 = v3;
  px_dispatch_on_main_queue();
}

+ (void)requestMonogramForEmailAddress:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 isRTL:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  height = a4.height;
  width = a4.width;
  v17 = a3;
  v14 = a7;
  if ([v17 length])
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"emailAddress.length > 0"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  [PXActivityUtilities requestMonogramForGivenName:v17 familyName:0 targetSize:v8 displayScale:v14 isRTL:width completion:height, a5];
}

+ (void)requestImageForContact:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 isRTL:(BOOL)a6 deliverOnce:(BOOL)a7 completion:(id)a8
{
  height = a4.height;
  width = a4.width;
  v16 = a3;
  v17 = a8;
  v18 = v17;
  if (!v16)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (v18)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    goto LABEL_3;
  }

  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = [a1 sharedWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PXActivityUtilities_requestImageForContact_targetSize_displayScale_isRTL_deliverOnce_completion___block_invoke;
  block[3] = &unk_1E7730A80;
  v26 = v18;
  v27 = a1;
  v28 = width;
  v29 = height;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v25 = v16;
  v20 = v18;
  v21 = v16;
  dispatch_async(v19, block);
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

+ (void)_requestImageForContact:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 isRTL:(BOOL)a6 deliverOnce:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v10 = a6;
  height = a4.height;
  width = a4.width;
  v56[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a8;
  v18 = v17;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v39 = [MEMORY[0x1E696AAA8] currentHandler];
  [v39 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v19 = *MEMORY[0x1E695C400];
  if (([v16 isKeyAvailable:*MEMORY[0x1E695C400]]& 1) == 0)
  {
    v20 = [v16 identifier];
    v21 = objc_alloc(MEMORY[0x1E695CD78]);
    v56[0] = v19;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v23 = [v21 initWithKeysToFetch:v22];

    v24 = MEMORY[0x1E695CD58];
    v55 = v20;
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
      v29 = v16;
      v16 = v28;
    }

    else
    {
      v29 = PLUIGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v52 = v20;
        v53 = 2112;
        v54 = v16;
        _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_ERROR, "Contact %{public}@ was missing thumbnail image data key, and refetching contact by identifier for that key returned nil. Attempting with original contact: %@", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v43, 8);
  }

  v30 = objc_alloc(MEMORY[0x1E695D098]);
  v31 = [MEMORY[0x1E695D0A8] defaultSettings];
  v32 = [v30 initWithSettings:v31];

  v33 = [MEMORY[0x1E695D0B0] scopeWithPointSize:v10 scale:0 rightToLeft:width style:{height, a5}];
  if (v9)
  {
    v50 = v16;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    v35 = [v32 avatarImageForContacts:v34 scope:v33];

    (v18)[2](v18, v35, MEMORY[0x1E695E110]);
  }

  else
  {
    v49 = v16;
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

+ (void)requestImageFromPeopleAlbumForPerson:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 highQualityFormat:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a7;
  v16 = v15;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"person"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v17 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:v14 targetSize:width displayScale:height, a5];
  v18 = v17;
  if (v8)
  {
    [(PXPeopleFaceCropFetchOptions *)v17 setDeliveryMode:1];
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

+ (void)_requestContactMatchingEmail:(id)a3 orPhone:(id)a4 withFirstName:(id)a5 lastName:(id)a6 keysToFetch:(id)a7 withCompletion:(id)a8
{
  v88[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = +[PXPeopleUtilities sharedContactStore];
  v20 = [MEMORY[0x1E695DF70] arrayWithArray:v17];
  v21 = *MEMORY[0x1E695C208];
  v22 = *MEMORY[0x1E695C330];
  v88[0] = *MEMORY[0x1E695C208];
  v88[1] = v22;
  v59 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
  [v20 addObjectsFromArray:v23];

  if (v15 | v16 && (v24 = objc_alloc_init(MEMORY[0x1E695CD80])) != 0)
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
  if (![v13 length])
  {
    v29 = 0;
    v31 = 0;
    goto LABEL_29;
  }

  [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v13];
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
      v85 = v13;
      v86 = 2112;
      v87 = v67;
      _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_ERROR, "Error attempting to fetch all unified contacts matching predicate [email=%@] : %@", buf, 0x16u);
    }
  }

  if ([v26 count])
  {
    v28 = [MEMORY[0x1E695CD58] pl_findBestMatchingContactFromMatchingContacts:v26 firstName:v15 lastName:v16 contactFormatter:v70];
    if (v28)
    {
      v53 = v17;
      v55 = v15;
      v29 = v21;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v30 = [v28 emailAddresses];
      v31 = [v30 countByEnumeratingWithState:&v77 objects:v83 count:16];
      if (v31)
      {
        v49 = v16;
        v51 = v29;
        v57 = v18;
        v63 = v14;
        v32 = *v78;
        while (2)
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v78 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v77 + 1) + 8 * i);
            v35 = [v34 value];
            v36 = [v35 isEqualToString:v13];

            if (v36)
            {
              v31 = [v34 identifier];
              goto LABEL_25;
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v77 objects:v83 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }

LABEL_25:
        v14 = v63;
        v16 = v49;
        v29 = v51;
        v18 = v57;
      }

      v17 = v53;
      v15 = v55;
    }

    else
    {
      v31 = 0;
      v29 = 0;
    }
  }

  else
  {
    v31 = 0;
    v29 = 0;
    v28 = 0;
  }

  v19 = v65;
  if (!v28)
  {
LABEL_29:
    if (![v14 length])
    {
      v28 = 0;
      goto LABEL_53;
    }

    v58 = v18;
    v64 = v14;
    v37 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v14];
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
      v28 = [MEMORY[0x1E695CD58] pl_findBestMatchingContactFromMatchingContacts:v38 firstName:v15 lastName:v16 contactFormatter:v70];
      if (v28)
      {
        v54 = v17;
        v56 = v15;
        v40 = v59;

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v41 = [v28 phoneNumbers];
        v42 = [v41 countByEnumeratingWithState:&v72 objects:v82 count:16];
        v14 = v64;
        if (v42)
        {
          v43 = v42;
          v60 = v40;
          v66 = v19;
          v50 = v16;
          v44 = *v73;
          while (2)
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v73 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v72 + 1) + 8 * j);
              v47 = [v46 value];
              if ([v47 isLikePhoneNumber:v37])
              {
                v48 = [v46 identifier];

                v31 = v48;
                goto LABEL_50;
              }
            }

            v43 = [v41 countByEnumeratingWithState:&v72 objects:v82 count:16];
            if (v43)
            {
              continue;
            }

            break;
          }

LABEL_50:
          v14 = v64;
          v19 = v66;
          v16 = v50;
          v40 = v60;
        }

        v29 = v40;
        v17 = v54;
        v15 = v56;
        goto LABEL_52;
      }
    }

    else
    {
      v28 = 0;
    }

    v14 = v64;
LABEL_52:

    v18 = v58;
  }

LABEL_53:
  if ((v69 & 1) == 0)
  {
  }

  if (v18)
  {
    v18[2](v18, v28, v29, v31);
  }
}

+ (void)requestMeContactForKeys:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v9 = [a1 sharedWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PXActivityUtilities_requestMeContactForKeys_completionHandler___block_invoke;
  block[3] = &unk_1E774C2F0;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
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

+ (void)requestMeContactWithCompletion:(id)a3
{
  v10[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXActivityUtilities.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v6 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v7 = *MEMORY[0x1E695C330];
  v10[0] = *MEMORY[0x1E695C208];
  v10[1] = v7;
  v10[2] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  [a1 requestMeContactForKeys:v8 completionHandler:v5];
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