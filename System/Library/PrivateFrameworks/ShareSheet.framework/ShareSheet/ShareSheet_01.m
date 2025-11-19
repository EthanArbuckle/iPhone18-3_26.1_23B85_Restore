uint64_t __FileProviderLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary = result;
  return result;
}

id _mapArray(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        [v5 addObject:{v11, v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

void PeopleSuggesterLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PeopleSuggesterLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PeopleSuggesterLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71FB478;
    v3 = 0;
    PeopleSuggesterLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PeopleSuggesterLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PeopleSuggesterLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PeopleSuggesterLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

Class initCNContactPickerViewController()
{
  if (ContactsUILibrary_sOnce != -1)
  {
    initCNContactPickerViewController_cold_1();
  }

  result = objc_getClass("CNContactPickerViewController");
  classCNContactPickerViewController = result;
  getCNContactPickerViewControllerClass = CNContactPickerViewControllerFunction;
  return result;
}

void *__ContactsUILibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  ContactsUILibrary_sLib = result;
  return result;
}

Class initCNContactViewController()
{
  if (ContactsUILibrary_sOnce != -1)
  {
    initCNContactPickerViewController_cold_1();
  }

  result = objc_getClass("CNContactViewController");
  classCNContactViewController = result;
  getCNContactViewControllerClass = CNContactViewControllerFunction;
  return result;
}

id initValCNContactThumbnailImageDataKey()
{
  if (softLinkOnceCNContactThumbnailImageDataKey != -1)
  {
    initValCNContactThumbnailImageDataKey_cold_1();
  }

  v1 = constantValCNContactThumbnailImageDataKey;

  return v1;
}

void __initValCNContactThumbnailImageDataKey_block_invoke()
{
  if (ContactsLibrary_sOnce != -1)
  {
    __initValCNContactThumbnailImageDataKey_block_invoke_cold_1();
  }

  v0 = dlsym(ContactsLibrary_sLib, "CNContactThumbnailImageDataKey");
  if (v0)
  {
    objc_storeStrong(&constantValCNContactThumbnailImageDataKey, *v0);
  }

  getCNContactThumbnailImageDataKey = CNContactThumbnailImageDataKeyFunction;
}

void *__ContactsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
  ContactsLibrary_sLib = result;
  return result;
}

id initValCNContactCropRectKey()
{
  if (softLinkOnceCNContactCropRectKey != -1)
  {
    initValCNContactCropRectKey_cold_1();
  }

  v1 = constantValCNContactCropRectKey;

  return v1;
}

void __initValCNContactCropRectKey_block_invoke()
{
  if (ContactsLibrary_sOnce != -1)
  {
    __initValCNContactThumbnailImageDataKey_block_invoke_cold_1();
  }

  v0 = dlsym(ContactsLibrary_sLib, "CNContactCropRectKey");
  if (v0)
  {
    objc_storeStrong(&constantValCNContactCropRectKey, *v0);
  }

  getCNContactCropRectKey = CNContactCropRectKeyFunction;
}

id initValCNContactFullscreenImageDataKey()
{
  if (softLinkOnceCNContactFullscreenImageDataKey != -1)
  {
    initValCNContactFullscreenImageDataKey_cold_1();
  }

  v1 = constantValCNContactFullscreenImageDataKey;

  return v1;
}

void __initValCNContactFullscreenImageDataKey_block_invoke()
{
  if (ContactsLibrary_sOnce != -1)
  {
    __initValCNContactThumbnailImageDataKey_block_invoke_cold_1();
  }

  v0 = dlsym(ContactsLibrary_sLib, "CNContactFullscreenImageDataKey");
  if (v0)
  {
    objc_storeStrong(&constantValCNContactFullscreenImageDataKey, *v0);
  }

  getCNContactFullscreenImageDataKey = CNContactFullscreenImageDataKeyFunction;
}

void sub_18B404AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B405F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B4062EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_18B406644(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class __getSFAirDropViewControllerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_9)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingUILibraryCore_block_invoke_9;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71FB500;
    v6 = 0;
    SharingUILibraryCore_frameworkLibrary_9 = _sl_dlopen();
    v2 = v4[0];
    if (SharingUILibraryCore_frameworkLibrary_9)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SFAirDropViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFAirDropViewControllerClass_block_invoke_cold_1();
  }

  getSFAirDropViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingUILibraryCore_block_invoke_9()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_9 = result;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_18B408F90(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exc_buf);
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SHSheetImageIdentificationUtilities *)v10 personIdResultsFromImage:v11];
    }

    objc_end_catch();
    JUMPOUT(0x18B408F70);
  }

  _Unwind_Resume(exc_buf);
}

id getMADPersonIdentificationRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADPersonIdentificationRequestClass_softClass;
  v7 = getMADPersonIdentificationRequestClass_softClass;
  if (!getMADPersonIdentificationRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMADPersonIdentificationRequestClass_block_invoke;
    v3[3] = &unk_1E71F91F0;
    v3[4] = &v4;
    __getMADPersonIdentificationRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B409100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMADPersonIdentificationRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADPersonIdentificationRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADPersonIdentificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMADPersonIdentificationRequestClass_block_invoke_cold_1();
    MediaAnalysisServicesLibrary();
  }
}

void MediaAnalysisServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaAnalysisServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71FB520;
    v3 = 0;
    MediaAnalysisServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getMADServiceClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getMADServiceClass_block_invoke_cold_1();
    [(_UIActivityGroupViewFlowLayout *)v2 setEditingGestureRecognizer:v3, v4];
  }
}

void sub_18B40A1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B40C20C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18B40C418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLPiTunesMediaPlaylistMetadataClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LinkPresentationLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71FB5F8;
    v6 = 0;
    LinkPresentationLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (LinkPresentationLibraryCore_frameworkLibrary_2)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LPiTunesMediaPlaylistMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPiTunesMediaPlaylistMetadataClass_block_invoke_cold_1();
  }

  getLPiTunesMediaPlaylistMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LinkPresentationLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_18B40CC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initSLComposeViewController()
{
  if (SocialLibrary_sOnce != -1)
  {
    initSLComposeViewController_cold_1();
  }

  result = objc_getClass("SLComposeViewController");
  classSLComposeViewController = result;
  getSLComposeViewControllerClass = SLComposeViewControllerFunction;
  return result;
}

void *__SocialLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Social.framework/Social", 2);
  SocialLibrary_sLib = result;
  return result;
}

Class initSSVMediaSocialShareExtension()
{
  if (StoreServicesLibrary_sOnce != -1)
  {
    initSSVMediaSocialShareExtension_cold_1();
  }

  result = objc_getClass("SSVMediaSocialShareExtension");
  classSSVMediaSocialShareExtension = result;
  getSSVMediaSocialShareExtensionClass = SSVMediaSocialShareExtensionFunction;
  return result;
}

void *__StoreServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/StoreServices.framework/StoreServices", 2);
  StoreServicesLibrary_sLib = result;
  return result;
}

void sub_18B40EBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

UISUISecurityContext *airdropSupplementalSecurityContextForURL(void *a1)
{
  v1 = a1;
  v2 = [v1 path];
  v3 = [MEMORY[0x1E695DFA8] setWithObjects:{@"/var/tmp", @"/var/mobile", @"/var/root", @"/var", @"/", 0}];
  v4 = [(UISUISecurityScopedResource *)UISUIAirDropSecurityScopedResource scopedResourcesForAncestorsOfItemWithAbsolutePath:v2 traversalStopPaths:v3 allowedAccess:1];
  v5 = [(UISUISecurityScopedResource *)UISUIAirDropSecurityScopedResource scopedResourceWithURL:v1 allowedAccess:1];

  if (v5)
  {
    v6 = [v4 arrayByAddingObject:v5];

    v4 = v6;
  }

  v7 = [[UISUISecurityContext alloc] initWithSecurityScopedResources:v4];

  return v7;
}

void sub_18B40F664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B41254C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WebPrivacyLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WebPrivacyLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B413DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIActivityGroupActivityCellFont(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && UIContentSizeCategoryIsAccessibilityCategory(v3))
  {
    v5 = maximumSizeCategory(v4);
    v6 = UIContentSizeCategoryCompareToCategory(v3, v5);

    if (v6 != NSOrderedAscending)
    {
      v7 = maximumSizeCategory(v4);

      v3 = v7;
    }

    v8 = MEMORY[0x1E69DB880];
    v9 = *MEMORY[0x1E69DDCF8];
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v3];
    v11 = [v8 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v10];

    v12 = [v11 fontDescriptorWithSymbolicTraits:0x8000];

    v13 = [MEMORY[0x1E69DB878] fontWithDescriptor:v12 size:0.0];
  }

  else
  {
    v14 = MEMORY[0x1E69DB878];
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v12 _scaledValueForValue:11.0];
    v13 = [v14 systemFontOfSize:?];
  }

  v15 = v13;

  return v15;
}

_UIActivityGroupActivityCellTitleLabel *createTitleLabel()
{
  v0 = objc_alloc_init(_UIActivityGroupActivityCellTitleLabel);
  v1 = [MEMORY[0x1E69DC888] darkTextColor];
  [(_UIActivityGroupActivityCellTitleLabel *)v0 setTextColor:v1];

  v2 = [MEMORY[0x1E69DC888] clearColor];
  [(_UIActivityGroupActivityCellTitleLabel *)v0 setBackgroundColor:v2];

  [(_UIActivityGroupActivityCellTitleLabel *)v0 setMinimumScaleFactor:0.75];
  [(_UIActivityGroupActivityCellTitleLabel *)v0 setTextAlignment:1];

  return v0;
}

double getChickletSize()
{
  v0 = [UIActivity _activityImageForActionRepresentationImage:0];
  [v0 size];
  v2 = v1;

  return v2;
}

double getTitleLabelHeightForWidthTextAndSizeCategory(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = sTitleLabel;
  if (!sTitleLabel)
  {
    v8 = createTitleLabel();
    v9 = sTitleLabel;
    sTitleLabel = v8;

    v7 = sTitleLabel;
  }

  [v7 setText:v5];
  [sTitleLabel sizeThatFits:v6 sizeCategory:{a3, 1.79769313e308}];
  v11 = v10;
  NSLog(&cfstr_ReturningThisH.isa, *&v10);

  return v11;
}

id getTitleLabelFontForWidthTextAndSizeCategory(void *a1, double a2)
{
  v3 = a1;
  v4 = sTitleLabel;
  if (!sTitleLabel)
  {
    v5 = createTitleLabel();
    v6 = sTitleLabel;
    sTitleLabel = v5;

    v4 = sTitleLabel;
  }

  [v4 setText:@"\n"];
  [sTitleLabel sizeThatFits:v3 sizeCategory:{a2, 1.79769313e308}];
  [sTitleLabel setFrame:{0.0, 0.0, a2, v7}];
  v8 = [sTitleLabel font];

  return v8;
}

uint64_t maximumSizeCategory(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __maximumSizeCategory_block_invoke;
  block[3] = &unk_1E71F9510;
  v8 = v1;
  v2 = maximumSizeCategory_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&maximumSizeCategory_onceToken, block);
  }

  v4 = maximumSizeCategory_maxCategory;
  v5 = maximumSizeCategory_maxCategory;

  return v4;
}

void __maximumSizeCategory_block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = MEMORY[0x1E69DDC40];
  if (v2 >= v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v2;
  }

  if (v4 > 320.0)
  {
    v3 = MEMORY[0x1E69DDC38];
  }

  v5 = *v3;

  objc_storeStrong(&maximumSizeCategory_maxCategory, v5);
}

id getSFUIShareSheetActivityCellSpecClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFUIShareSheetActivityCellSpecClass_softClass_1;
  v7 = getSFUIShareSheetActivityCellSpecClass_softClass_1;
  if (!getSFUIShareSheetActivityCellSpecClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSFUIShareSheetActivityCellSpecClass_block_invoke_1;
    v3[3] = &unk_1E71F91F0;
    v3[4] = &v4;
    __getSFUIShareSheetActivityCellSpecClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B415FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFUIShareSheetActivityCellSpecClass_block_invoke_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_10)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingUILibraryCore_block_invoke_10;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71FB888;
    v6 = 0;
    SharingUILibraryCore_frameworkLibrary_10 = _sl_dlopen();
    v2 = v4[0];
    if (SharingUILibraryCore_frameworkLibrary_10)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SFUIShareSheetActivityCellSpec");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFUIShareSheetActivityCellSpecClass_block_invoke_cold_1();
  }

  getSFUIShareSheetActivityCellSpecClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingUILibraryCore_block_invoke_10()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_10 = result;
  return result;
}

void sub_18B41BA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SHSheetContentHelperFindScrollView(void *a1)
{
  v1 = MEMORY[0x1E696AE18];
  v2 = a1;
  v3 = [v1 predicateWithBlock:&__block_literal_global_54];
  v4 = [v2 subviews];

  v5 = [v4 filteredArrayUsingPredicate:v3];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_4];

  return v6;
}

uint64_t __SHSheetContentHelperFindScrollView_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL __SHSheetContentHelperFindScrollView_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 frame];
  v6 = v5;
  [v4 frame];
  v8 = v7;

  return v6 > v8;
}

void __SHSheetModeRestrictionAlertController_block_invoke_2_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*a1 alertRecoverySuggestionButtonLaunchURL];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_18B359000, a3, OS_LOG_TYPE_ERROR, "### Launch URL failed: %@, %@\n", &v6, 0x16u);
}

void _loadItemProvidersFromActivityItemsStartingAtIndex_cold_2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Could not load any suitable representation of item at index %{public}d. Dropping it.", v2, 8u);
}

void ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_505_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_508_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_510_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_513_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  v3 = v0;
  _os_log_error_impl(&dword_18B359000, v1, OS_LOG_TYPE_ERROR, "Could not move file representation of item at index %{public}d of type %{public}@ to a temporary location.", v2, 0x12u);
}

void _newTempDir_cold_1(NSObject *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_18B359000, a1, OS_LOG_TYPE_ERROR, "Could not create temporary directory. Error: %s", &v4, 0xCu);
}

void _newTempDir_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Could not create temporary directory. Error: %@", &v2, 0xCu);
}

void ___loadItemProviderInline_block_invoke_531_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromClass(*(a1 + 40));
  v6[0] = 67240706;
  v6[1] = MEMORY[0x1E69E98A8];
  v7 = 2114;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_18B359000, a3, OS_LOG_TYPE_ERROR, "Loading item at index %{public}d as class %{public}@ caused an error: %{public}@", v6, 0x1Cu);
}

void _ShareSheetCurrentDeviceClassFromPresentationStyle_cold_1(NSObject *a1, double a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromCGSize(*&a2);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_18B359000, a1, OS_LOG_TYPE_ERROR, "Screen size %{public}@ not recognized, falling back to 4.7 iPhone specs", &v5, 0xCu);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSDirectionalEdgeInsets NSDirectionalEdgeInsetsFromString(NSString *string)
{
  MEMORY[0x1EEE4DB40](string);
  result.trailing = v4;
  result.bottom = v3;
  result.leading = v2;
  result.top = v1;
  return result;
}