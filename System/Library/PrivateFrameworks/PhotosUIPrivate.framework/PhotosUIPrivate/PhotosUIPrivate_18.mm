void sub_1B3A4D9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&a32);
  objc_destroyWeak((v35 - 120));
  objc_destroyWeak((v35 - 112));
  _Unwind_Resume(a1);
}

void sub_1B3A4E1D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B3A4FB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose((v66 - 232), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38454(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PUCMMActivityItemSourceStateDebugDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7B78E78[a1];
  }
}

void sub_1B3A53EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A55F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B3A566A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B3A570C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A5792C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

void _iterateBySpreadingIndexes(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  if (a1 >= a2)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _iterateBySpreadingIndexes(NSInteger, NSInteger, void (^__strong)(NSInteger, NSInteger))"}];
    [v8 handleFailureInFunction:v9 file:@"PULayoutSectioning.m" lineNumber:390 description:{@"Trying to spread %ld indexes between 0 and %ld", a1, a2}];
  }

  if (a1 >= 1)
  {
    v5 = 0;
    v6 = a1 - 1;
    do
    {
      if (a1 >= a2)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _unsampledIndexForIndex(NSInteger, NSInteger, NSInteger)"}];
        [v11 handleFailureInFunction:v10 file:@"PULayoutSectioning.m" lineNumber:374 description:@"Invalid use"];
      }

      v7 = a2 - 1;
      if (a1 - 1 > v5)
      {
        v7 = v6 / a1;
      }

      v12[2](v12, v5++, v7);
      v6 += a2;
    }

    while (a1 != v5);
  }
}

void *___spreadIndexesInBuffer_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  v5 = *(result[2] + 8 * *(*(v4 + 8) + 24));
  v6 = *(*(result[1] + 8) + 24) != 0;
  v7 = v5 > a3;
  if (v6 && v7)
  {
    v5 = a3;
  }

  *(result[3] + 8 * a2) = v5;
  if (v6 && v7)
  {
    v8 = result + 1;
  }

  else
  {
    v8 = result;
  }

  v9 = *(*v8 + 8);
  v10 = *(v9 + 24);
  if (v6 && v7)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = v10 + 1;
  }

  *(v9 + 24) = v11;
  return result;
}

uint64_t __Block_byref_object_copy__39071(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void commonInit_39190(void *a1)
{
  v22 = a1;
  [v22 bounds];
  v2 = v1 * 0.5;
  v3 = [v22 contentView];
  v4 = [v3 layer];
  [v4 setCornerRadius:v2];

  v5 = [v22 contentView];
  v6 = [v5 layer];
  [v6 setMasksToBounds:1];

  if (MEMORY[0x1B8C6D660]())
  {
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    v8 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v7];
    [v22 setVisualEffectView:v8];

    v9 = [v22 contentView];
    v10 = [v22 visualEffectView];
    [v9 addSubview:v10];

    v11 = [v22 contentView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [v22 visualEffectView];
    [v20 setFrame:{v13, v15, v17, v19}];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v11 = [v7 colorWithAlphaComponent:0.5];
    v20 = [v22 contentView];
    [v20 setBackgroundColor:v11];
  }

  [v22 _setupContainerButton];
  v21 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v22];
  [v22 addInteraction:v21];
}

void commonInit_39315(void *a1)
{
  v1 = a1;
  v4 = PULocalizedString(@"PHOTOEDIT_MAKE_KEY_FRAME");
  v2 = [v4 copy];
  v3 = v1[125];
  v1[125] = v2;
}

id getMFMailComposeViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMFMailComposeViewControllerClass_softClass;
  v7 = getMFMailComposeViewControllerClass_softClass;
  if (!getMFMailComposeViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMFMailComposeViewControllerClass_block_invoke;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getMFMailComposeViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3A60C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMFMailComposeViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MessageUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MessageUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B79428;
    v8 = 0;
    MessageUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MessageUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MessageUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PUMailActivity.m" lineNumber:57 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MFMailComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMFMailComposeViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PUMailActivity.m" lineNumber:58 description:{@"Unable to find class %s", "MFMailComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getMFMailComposeViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MessageUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MessageUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B3A62BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MCProfileConnection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUMailActivity.m" lineNumber:62 description:{@"Unable to find class %s", "MCProfileConnection"}];

    __break(1u);
  }
}

void *__getMCFeatureAccountModificationAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureAccountModificationAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureAccountModificationAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ManagedConfigurationLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B79440;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PUMailActivity.m" lineNumber:61 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

id PUPickerConfigurationGetTitle(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 _sourceType];
  v9 = 0;
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v16 = MEMORY[0x1E69C3790];
LABEL_25:
        v18 = PXPeoplePetsHomeVisibilityMake();
        if ([v5 selectionLimit] == 1)
        {
          v19 = @"PICKER_SINGLE_SELECT_PEOPLE_TITLE";
        }

        else
        {
          v19 = @"PICKER_PEOPLE_TITLE";
        }

        v11 = [v16 locKeyForPersonOrPet:0 withVisibility:v18 key:v19];
        v20 = PXLocalizedString();
        goto LABEL_29;
      }

      if (v8 != 2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    v15 = [v6 possibleAssetTypes];
    if (v15 > 127)
    {
      if (v15 >= 0x2000)
      {
        if (v15 == 0x2000 || v15 == 0x4000 || v15 == 0x8000)
        {
          goto LABEL_22;
        }
      }

      else
      {
        switch(v15)
        {
          case 128:
            goto LABEL_22;
          case 256:
            [v6 displayAssetMediaType];
            v11 = PXLocalizedString();
            [v5 selectionLimit];
            v20 = PXLocalizedStringWithValidatedFormat();
LABEL_29:
            v9 = v20;
LABEL_30:

            goto LABEL_31;
          case 2048:
            goto LABEL_22;
        }
      }
    }

    else if (v15 > 15)
    {
      if (v15 == 16 || v15 == 32 || v15 == 64)
      {
        goto LABEL_22;
      }
    }

    else if (!v15 || v15 == 4 || v15 == 8)
    {
      goto LABEL_22;
    }

    if ((v15 & 0x3FE) != 0 && (v15 & 0x1FC00) != 0)
    {
      if (![v5 _usesMemoriesLayout] || (objc_msgSend(v5, "_suggestionGroup"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
      {
        if (v7)
        {
          v17 = v7;
          goto LABEL_23;
        }
      }
    }

LABEL_22:
    v17 = PXLocalizedString();
LABEL_23:
    v9 = v17;
    goto LABEL_31;
  }

  if (v8 <= 4)
  {
    if (v8 != 3)
    {
      v10 = MEMORY[0x1E69C3790];
      v11 = [v5 photoLibrary];
      v12 = [v11 px_peoplePetsHomeVisibility];
      if ([v5 selectionLimit] == 1)
      {
        v13 = @"PICKER_SINGLE_SELECT_PEOPLE_TITLE";
      }

      else
      {
        v13 = @"PICKER_PEOPLE_TITLE";
      }

      v14 = [v10 locKeyForPersonOrPet:0 withVisibility:v12 key:v13];
      v9 = PXLocalizedString();

      goto LABEL_30;
    }

    v16 = MEMORY[0x1E69C3790];
    goto LABEL_25;
  }

  if (v8 == 5 || v8 == 6)
  {
    goto LABEL_22;
  }

LABEL_31:

  return v9;
}

id PUPickerConfigurationGetSelectionLimitString()
{
  v0 = PXLocalizedString();
  v1 = PXLocalizedStringWithValidatedFormat();

  return v1;
}

id PUPickerConfigurationGetFetchType(void *a1)
{
  v1 = [a1 _containerIdentifier];
  if (v1)
  {
    v2 = [MEMORY[0x1E6978958] identifierCodeFromLocalIdentifier:v1];
    if (v2)
    {
      v3 = [MEMORY[0x1E69789A8] fetchTypeForLocalIdentifierCode:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PUPickerConfigurationGetSocialGroup(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PUPickerConfigurationGetFetchType(v1);
  v3 = [v1 _containerIdentifier];
  if (v3 && [v2 isEqualToString:*MEMORY[0x1E6978DD8]])
  {
    v4 = PLPickerGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Looking for social group with identifier: %@", buf, 0xCu);
    }

    v5 = [v1 photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    [v6 setFetchLimit:1];
    v7 = MEMORY[0x1E6978AD8];
    v12 = v3;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v9 = [v7 fetchSocialGroupsWithLocalIdentifiers:v8 options:v6];
    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1B3A6B228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A6E168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PUPerformWithNavigationTransition(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = PURequestedNavigationTransition;
  v7 = PURequestedNavigationTransitionIsInteractive;
  v8 = PURequestedNavigationTransition;
  PURequestedNavigationTransition = v5;
  v11 = v5;
  v9 = a3;

  PURequestedNavigationTransitionIsInteractive = a2;
  v9[2](v9);

  v10 = PURequestedNavigationTransition;
  PURequestedNavigationTransition = v6;

  PURequestedNavigationTransitionIsInteractive = v7;
}

id PUGetRequestedNavigationTransition(_BYTE *a1)
{
  if (a1)
  {
    *a1 = PURequestedNavigationTransitionIsInteractive;
  }

  return PURequestedNavigationTransition;
}

void sub_1B3A70F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A78054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A7AA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A7AE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43371(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3A7DC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A81310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44005(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3A818B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A820CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B3A826A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak((v27 - 136));
  _Unwind_Resume(a1);
}

id getBLSAlwaysOnTimelineClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBLSAlwaysOnTimelineClass_softClass;
  v7 = getBLSAlwaysOnTimelineClass_softClass;
  if (!getBLSAlwaysOnTimelineClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBLSAlwaysOnTimelineClass_block_invoke;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getBLSAlwaysOnTimelineClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3A835A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBLSAlwaysOnTimelineClass_block_invoke(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v2 = BacklightServicesLibraryCore_frameworkLibrary;
  v14 = BacklightServicesLibraryCore_frameworkLibrary;
  if (!BacklightServicesLibraryCore_frameworkLibrary)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = __BacklightServicesLibraryCore_block_invoke;
    v8[4] = &unk_1E7B79810;
    v9 = &v11;
    v10 = v8;
    v15 = xmmword_1E7B797E0;
    v16 = *off_1E7B797F0;
    v17 = 0;
    v12[3] = _sl_dlopen();
    BacklightServicesLibraryCore_frameworkLibrary = *(v9[1] + 24);
    v2 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v2)
  {
    v3 = v8[0];
    if (!v8[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BacklightServicesLibrary(void)"];
    [a1 handleFailureInFunction:v5 file:@"PUWallpaperPosterController.m" lineNumber:67 description:{@"%s", v8[0]}];

    __break(1u);
  }

  free(v3);
LABEL_5:
  result = objc_getClass("BLSAlwaysOnTimeline");
  *(*(a1[4] + 8) + 24) = result;
  if (!*(*(a1[4] + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBLSAlwaysOnTimelineClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"PUWallpaperPosterController.m" lineNumber:68 description:{@"Unable to find class %s", "BLSAlwaysOnTimeline"}];

    __break(1u);
  }

  getBLSAlwaysOnTimelineClass_softClass = *(*(a1[4] + 8) + 24);
  return result;
}

void sub_1B3A83870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __BacklightServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  BacklightServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B3A848BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PUDefaultFiltersForBacklightLuminanceUpdates()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v0 setName:@"gaussianBlur"];
  [v0 setValue:@"default" forKey:*MEMORY[0x1E6979BA0]];
  [v0 setValue:&unk_1F2B7E300 forKey:*MEMORY[0x1E6979BA8]];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

id PUDefaultPropertyAnimatorForBacklightLuminanceUpdates(int a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
  v3 = objc_alloc(MEMORY[0x1E69DD278]);
  v4 = 0.3;
  if (!a1)
  {
    v4 = 0.5;
  }

  v5 = [v3 initWithDuration:v2 timingParameters:v4];

  return v5;
}

id _PhotoLibraryForAssetReference(void *a1)
{
  v1 = a1;
  v2 = [v1 asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v1 asset];
    v5 = [v4 photoLibrary];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B3A8E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A8FBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A900F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44889(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3A903F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A94938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id StackView(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DCF90]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setAxis:a1];
  [v3 setSpacing:1.17549435e-38];

  return v3;
}

void ___visualIntelligenceSupport_block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69C3C88] isVisualSearchSupported];
  v1 = [MEMORY[0x1E69C3C88] isImageSegmentationSupported];
  v2 = _os_feature_enabled_impl();
  v3 = _os_feature_enabled_impl();
  v4 = _os_feature_enabled_impl();
  v5 = PLVisualIntelligenceGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    [MEMORY[0x1E696AD98] numberWithBool:v2];
    v6 = v10 = v1;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E69C3C88], "supportedAnalysisTypes")}];
    *buf = 138413058;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "VK analyzing UI-FF (Visual Intelligence): V1: %@, V2: %@, RemoveBackground: %@, supportedAnalysisTypes: %@", buf, 0x2Au);

    v1 = v10;
  }

  LOBYTE(_visualIntelligenceSupport_sharedSupport) = v0 & v2;
  BYTE1(_visualIntelligenceSupport_sharedSupport) = v0 & v3;
  BYTE2(_visualIntelligenceSupport_sharedSupport) = v1 & v4;
  HIBYTE(_visualIntelligenceSupport_sharedSupport) = v2 & v0 & v1 & v4;
  byte_1EB866924 = v0 & v2 & v0 & v3;
}

void sub_1B3A9CC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A9CD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL PUShouldAutoHideChrome(void *a1, uint64_t a2)
{
  v3 = a1;
  if (![v3 isChromeVisible])
  {
    goto LABEL_6;
  }

  v4 = +[PUOneUpSettings sharedInstance];
  v5 = [v4 allowChromeHiding];

  if (!v5)
  {
    goto LABEL_6;
  }

  if (a2 == 2)
  {
    v6 = 1;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v6 = [v3 lastChromeVisibilityChangeReason] != 1;
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

double PUChromeAnimationDuration(void *a1)
{
  v1 = [a1 lastChromeVisibilityChangeReason];
  if (v1 > 8)
  {
    return 0.0;
  }

  if (v1 == 3)
  {
    v2 = +[PUOneUpSettings sharedInstance];
    [v2 chromeTimedAutoHideAnimationDuration];
  }

  else
  {
    v2 = +[PUOneUpSettings sharedInstance];
    [v2 chromeDefaultAnimationDuration];
  }

  v4 = v3;

  return v4;
}

id PUBackgroundColorAnimatorBlockForChromeAnimation(void *a1)
{
  v1 = a1;
  v2 = PUChromeAnimationDuration(v1);
  v3 = [v1 isChromeVisible];

  v4 = +[PUOneUpSettings sharedInstance];
  v5 = [v4 chromeBackgroundAnimationType];

  switch(v5)
  {
    case 2:
      v8 = 65540;
      v6 = aBlock;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __PUBackgroundColorAnimatorBlockForChromeAnimation_block_invoke_3;
      aBlock[3] = &__block_descriptor_48_e24_v24__0___v___8___v__B_16l;
      if (v3)
      {
        v8 = 131076;
      }

      *&aBlock[4] = v2;
      aBlock[5] = v8;
      goto LABEL_11;
    case 1:
      v7 = 0.0;
      v6 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __PUBackgroundColorAnimatorBlockForChromeAnimation_block_invoke_2;
      v13[3] = &__block_descriptor_48_e24_v24__0___v___8___v__B_16l;
      if (!v3)
      {
        v7 = v2 * 0.5;
      }

      *&v13[4] = v2 * 0.5;
      *&v13[5] = v7;
      goto LABEL_11;
    case 0:
      v6 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __PUBackgroundColorAnimatorBlockForChromeAnimation_block_invoke;
      v14[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
      *&v14[4] = v2;
LABEL_11:
      v9 = _Block_copy(v6);
      goto LABEL_13;
  }

  v9 = 0;
LABEL_13:
  v10 = [v9 copy];

  return v10;
}

void sub_1B3A9D90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46541(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double _PUOneUpSelectionIndicatorFrame(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1)
  {
    MinX = CGRectGetMaxX(*&a2) + 8.0;
    v10 = -60.0;
  }

  else
  {
    MinX = CGRectGetMinX(*&a2);
    v10 = -8.0;
  }

  v11 = MinX + v10;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMaxY(v13);
  return v11;
}

double _PUOneUpRenderIndicatorFrame(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  if (a1)
  {
    v10 = CGRectGetMinX(*&a2) + 10.0;
  }

  else
  {
    v10 = CGRectGetMaxX(*&a2) + -10.0 - a6;
  }

  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetMaxY(v12);
  return v10;
}

void sub_1B3AA7CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AA90A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3AA9C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AAA59C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1B3AB3B24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1B3AB475C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47533(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3AB4B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3AB4DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_destroyWeak((v7 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AB588C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  _Block_object_dispose((v25 - 248), 8);
  _Block_object_dispose((v25 - 216), 8);
  _Block_object_dispose((v25 - 184), 8);
  _Block_object_dispose((v25 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B3AB8518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3ABA1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3ABBFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3ABC23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ShouldShowAirPlayButton()
{
  v0 = +[PHAirPlayScreenController sharedInstance];
  v1 = [v0 screenAvailability];

  if (v1 == 2)
  {
    return 1;
  }

  v3 = +[PUOneUpSettings sharedInstance];
  v4 = [v3 alwaysShowAirPlayButton];

  return v4;
}

void sub_1B3ABE53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AC3DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AC489C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3ACE1A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

double PUUserAdjustedAdditionalViewTitleHeightForViewModel(void *a1)
{
  v1 = a1;
  v2 = [v1 deviceOrientation] - 3;
  [v1 containerFrame];
  PXRectWithSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v1 additionalViewTitleHeight];
  v12 = v11;
  if (v2 > 1)
  {
    [v1 overrideTitleHeight];
  }

  else
  {
    PXRectTransposed();
    v4 = v13;
    v6 = v14;
    v8 = v15;
    v10 = v16;
    [v1 landscapeOverrideTitleHeight];
  }

  v18 = v17;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  Height = CGRectGetHeight(v24);
  if (v2 > 1)
  {
    [v1 userAdjustedTitleHeightOffset];
  }

  else
  {
    [v1 landscapeUserAdjustedTitleHeightOffset];
  }

  v21 = v20;
  if (v18 * Height > 0.0)
  {
    v12 = v18 * Height;
  }

  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v22 = v12 + v21 * CGRectGetHeight(v25);

  return v22;
}

void sub_1B3AD37A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float64x2_t PULineIntersection(float64x2_t *a1, float64x2_t *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = MEMORY[0x1E695F050];
  v6.f64[0] = a1[1].f64[0];
  v6.f64[1] = a1->f64[0];
  v8 = *a2;
  v7 = a2[1];
  v9.f64[0] = a2[1].f64[0];
  v9.f64[1] = a2->f64[0];
  v10 = vmovn_s64(vceqq_f64(vdivq_f64(vnegq_f64(v6), vdupq_laneq_s64(*a1, 1)), vdivq_f64(vnegq_f64(v9), vdupq_laneq_s64(*a2, 1))));
  v11 = v10.i8[4] & v10.i8[0];
  if (a3)
  {
    *a3 = v11 & 1;
  }

  result = *v5;
  if ((v11 & 1) == 0)
  {
    v13 = vmlaq_f64(vmulq_f64(v9, vnegq_f64(v3)), v8, v6);
    if (*&v13.i64[1] != 0.0)
    {
      *&v14.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v4), v8, 1), v7, v3, 1);
      *&v14.f64[1] = v13.i64[0];
      return vdivq_f64(v14, vdupq_lane_s64(vextq_s8(v13, v13, 8uLL).i64[0], 0));
    }
  }

  return result;
}

BOOL PURectContainsPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (CGRectIsNull(*&a1))
  {
    return 0;
  }

  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  v18 = CGRectStandardize(v17);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  if (a5 < CGRectGetMinX(v18))
  {
    return 0;
  }

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  if (a5 > CGRectGetMaxX(v19))
  {
    return 0;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (a6 < CGRectGetMinY(v20))
  {
    return 0;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  return a6 <= CGRectGetMaxY(v21);
}

double PUBoundingRectForPoints(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

BOOL PUPointIsOnLineSegmentBetweenPoints(CGFloat a1, CGFloat a2, double a3, double a4, double a5, double a6)
{
  v11 = a5 - a3;
  if (a4 - a6 == 0.0 && v11 == 0.0)
  {
    __assert_rtn("PULineMake", "PULine.h", 30, "a != 0.0 || b != 0.0");
  }

  if (fabs(a3 * (a6 - a4) + (a3 - a5) * a4 + a2 * v11 + (a4 - a6) * a1) / hypot(a4 - a6, v11) >= 0.00000011920929)
  {
    return 0;
  }

  if (a3 >= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = a3;
  }

  if (a4 >= a6)
  {
    v13 = a6;
  }

  else
  {
    v13 = a4;
  }

  v14 = fabs(v11);
  v15 = fabs(a6 - a4);

  return PURectContainsPoint(v12, v13, v14, v15, a1, a2);
}

id PXAssetActionTypeForPUAssetActionType(uint64_t a1)
{
  if (PXAssetActionTypeForPUAssetActionType_onceToken != -1)
  {
    dispatch_once(&PXAssetActionTypeForPUAssetActionType_onceToken, &__block_literal_global_49728);
  }

  v2 = PXAssetActionTypeForPUAssetActionType__puToPXActionTypeMapping;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __PXAssetActionTypeForPUAssetActionType_block_invoke()
{
  v29[27] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C4828];
  v28[0] = &unk_1F2B7E480;
  v28[1] = &unk_1F2B7E498;
  v1 = *MEMORY[0x1E69C4830];
  v29[0] = v0;
  v29[1] = v1;
  v2 = *MEMORY[0x1E69C46E8];
  v28[2] = &unk_1F2B7E4B0;
  v28[3] = &unk_1F2B7E4C8;
  v3 = *MEMORY[0x1E69C47C0];
  v29[2] = v2;
  v29[3] = v3;
  v4 = *MEMORY[0x1E69C4818];
  v28[4] = &unk_1F2B7E4E0;
  v28[5] = &unk_1F2B7E4F8;
  v5 = *MEMORY[0x1E69C4820];
  v29[4] = v4;
  v29[5] = v5;
  v6 = *MEMORY[0x1E69C47A0];
  v28[6] = &unk_1F2B7E510;
  v28[7] = &unk_1F2B7E528;
  v7 = *MEMORY[0x1E69C4810];
  v29[6] = v6;
  v29[7] = v7;
  v8 = *MEMORY[0x1E69C4630];
  v28[8] = &unk_1F2B7E540;
  v28[9] = &unk_1F2B7E558;
  v9 = *MEMORY[0x1E69C4620];
  v29[8] = v8;
  v29[9] = v9;
  v10 = *MEMORY[0x1E69C4628];
  v28[10] = &unk_1F2B7E570;
  v28[11] = &unk_1F2B7E588;
  v11 = *MEMORY[0x1E69C47D8];
  v29[10] = v10;
  v29[11] = v11;
  v12 = *MEMORY[0x1E69C4668];
  v28[12] = &unk_1F2B7E5A0;
  v28[13] = &unk_1F2B7E5B8;
  v13 = *MEMORY[0x1E69C47F0];
  v29[12] = v12;
  v29[13] = v13;
  v14 = *MEMORY[0x1E69C47B0];
  v28[14] = &unk_1F2B7E5D0;
  v28[15] = &unk_1F2B7E5E8;
  v15 = *MEMORY[0x1E69C4670];
  v29[14] = v14;
  v29[15] = v15;
  v16 = *MEMORY[0x1E69C4678];
  v28[16] = &unk_1F2B7E600;
  v28[17] = &unk_1F2B7E618;
  v17 = *MEMORY[0x1E69C4768];
  v29[16] = v16;
  v29[17] = v17;
  v18 = *MEMORY[0x1E69C47A8];
  v28[18] = &unk_1F2B7E630;
  v28[19] = &unk_1F2B7E648;
  v19 = *MEMORY[0x1E69C46B0];
  v29[18] = v18;
  v29[19] = v19;
  v20 = *MEMORY[0x1E69C46C8];
  v28[20] = &unk_1F2B7E660;
  v28[21] = &unk_1F2B7E678;
  v21 = *MEMORY[0x1E69C46D0];
  v29[20] = v20;
  v29[21] = v21;
  v22 = *MEMORY[0x1E69C46C0];
  v28[22] = &unk_1F2B7E690;
  v28[23] = &unk_1F2B7E6A8;
  v23 = *MEMORY[0x1E69C4698];
  v29[22] = v22;
  v29[23] = v23;
  v24 = *MEMORY[0x1E69C4748];
  v28[24] = &unk_1F2B7E6C0;
  v28[25] = &unk_1F2B7E6D8;
  v25 = *MEMORY[0x1E69C47C8];
  v29[24] = v24;
  v29[25] = v25;
  v28[26] = &unk_1F2B7E6F0;
  v29[26] = *MEMORY[0x1E69C4808];
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:27];
  v27 = PXAssetActionTypeForPUAssetActionType__puToPXActionTypeMapping;
  PXAssetActionTypeForPUAssetActionType__puToPXActionTypeMapping = v26;
}

uint64_t PUAssetActionTypeForPXAssetActionType(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PUAssetActionType PUAssetActionTypeForPXAssetActionType(NSString * _Nonnull __strong)"];
    [v5 handleFailureInFunction:v6 file:@"PUPXAssetActionManager.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"pxType"}];
  }

  if (PUAssetActionTypeForPXAssetActionType_onceToken != -1)
  {
    dispatch_once(&PUAssetActionTypeForPXAssetActionType_onceToken, &__block_literal_global_254);
  }

  v2 = [PUAssetActionTypeForPXAssetActionType__pxToPUActionTypeMapping objectForKeyedSubscript:v1];
  v3 = [v2 integerValue];

  return v3;
}

void __PUAssetActionTypeForPXAssetActionType_block_invoke()
{
  v16[27] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C4830];
  v15[0] = *MEMORY[0x1E69C4828];
  v15[1] = v0;
  v16[0] = &unk_1F2B7E480;
  v16[1] = &unk_1F2B7E498;
  v1 = *MEMORY[0x1E69C47C0];
  v15[2] = *MEMORY[0x1E69C46E8];
  v15[3] = v1;
  v16[2] = &unk_1F2B7E4B0;
  v16[3] = &unk_1F2B7E4C8;
  v2 = *MEMORY[0x1E69C4820];
  v15[4] = *MEMORY[0x1E69C4818];
  v15[5] = v2;
  v16[4] = &unk_1F2B7E4E0;
  v16[5] = &unk_1F2B7E4F8;
  v3 = *MEMORY[0x1E69C4810];
  v15[6] = *MEMORY[0x1E69C47A0];
  v15[7] = v3;
  v16[6] = &unk_1F2B7E510;
  v16[7] = &unk_1F2B7E528;
  v4 = *MEMORY[0x1E69C4620];
  v15[8] = *MEMORY[0x1E69C4630];
  v15[9] = v4;
  v16[8] = &unk_1F2B7E540;
  v16[9] = &unk_1F2B7E558;
  v5 = *MEMORY[0x1E69C47D8];
  v15[10] = *MEMORY[0x1E69C4628];
  v15[11] = v5;
  v16[10] = &unk_1F2B7E570;
  v16[11] = &unk_1F2B7E588;
  v6 = *MEMORY[0x1E69C47F0];
  v15[12] = *MEMORY[0x1E69C4668];
  v15[13] = v6;
  v16[12] = &unk_1F2B7E5A0;
  v16[13] = &unk_1F2B7E5B8;
  v7 = *MEMORY[0x1E69C4670];
  v15[14] = *MEMORY[0x1E69C47B0];
  v15[15] = v7;
  v16[14] = &unk_1F2B7E5D0;
  v16[15] = &unk_1F2B7E5E8;
  v8 = *MEMORY[0x1E69C4768];
  v15[16] = *MEMORY[0x1E69C4678];
  v15[17] = v8;
  v16[16] = &unk_1F2B7E600;
  v16[17] = &unk_1F2B7E618;
  v9 = *MEMORY[0x1E69C46B0];
  v15[18] = *MEMORY[0x1E69C47A8];
  v15[19] = v9;
  v16[18] = &unk_1F2B7E630;
  v16[19] = &unk_1F2B7E648;
  v10 = *MEMORY[0x1E69C46D0];
  v15[20] = *MEMORY[0x1E69C46C8];
  v15[21] = v10;
  v16[20] = &unk_1F2B7E660;
  v16[21] = &unk_1F2B7E678;
  v11 = *MEMORY[0x1E69C46C0];
  v15[22] = *MEMORY[0x1E69C4748];
  v15[23] = v11;
  v16[22] = &unk_1F2B7E6C0;
  v16[23] = &unk_1F2B7E690;
  v12 = *MEMORY[0x1E69C47C8];
  v15[24] = *MEMORY[0x1E69C4698];
  v15[25] = v12;
  v16[24] = &unk_1F2B7E6A8;
  v16[25] = &unk_1F2B7E6D8;
  v15[26] = *MEMORY[0x1E69C4808];
  v16[26] = &unk_1F2B7E6F0;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:27];
  v14 = PUAssetActionTypeForPXAssetActionType__pxToPUActionTypeMapping;
  PUAssetActionTypeForPXAssetActionType__pxToPUActionTypeMapping = v13;
}

void sub_1B3AD6EE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1B3AD7F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1B3AD85B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AD8AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AD91D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AD9720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3ADDC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3ADDE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AE4C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AE57F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AE6510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AE7750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51529(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3AE8314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AE961C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AE9A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AE9E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AEA674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AEABA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AEB0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AEB784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AEC5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AEDF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PUKDebugTrace()
{
  result = PUKDebugIsEnabled();
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t PUKDebugIsEnabled()
{
  v0 = +[PUPerformanceDiagnosticsSettings sharedInstance];
  v1 = [v0 shouldTracePerformance];

  return v1;
}

void sub_1B3AEEF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52353(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3AF6410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void commonInit_53484(void *a1)
{
  v1 = a1;
  [v1 setUserInteractionEnabled:0];
  v2 = objc_alloc_init(MEMORY[0x1E69C35D8]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = v1[59];
  v1[59] = v2;
  v4 = v2;

  [v1 addSubview:v4];
  v5 = [v1 layer];
  [v5 setBorderWidth:1.0];

  v6 = [MEMORY[0x1E69DC888] cyanColor];
  v7 = [v6 CGColor];
  v8 = [v1 layer];
  [v8 setBorderColor:v7];

  v9 = [v1 widthAnchor];
  v10 = [v4 widthAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v1 heightAnchor];
  v13 = [v4 heightAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v4 centerXAnchor];
  v16 = [v1 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v4 centerYAnchor];
  v19 = [v1 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = objc_alloc_init(MEMORY[0x1E69C35E0]);
  [v1 setDetailVisualization:v21];

  v22 = [v1 detailVisualization];
  [v4 addVisualization:v22];

  v71 = objc_alloc_init(MEMORY[0x1E69C35E0]);
  v23 = MEMORY[0x1E696AB78];
  v24 = [MEMORY[0x1E695DF00] date];
  v25 = [v23 localizedStringFromDate:v24 dateStyle:1 timeStyle:2];
  [v71 setTitle:v25];

  [v4 addVisualization:v71];
  v26 = objc_alloc_init(MEMORY[0x1E69C35C8]);
  [v1 setFirstSinceBootVisualization:v26];

  v27 = [v1 firstSinceBootVisualization];
  [v27 setTitle:@"First Since Boot"];

  v28 = [v1 firstSinceBootVisualization];
  v29 = MEMORY[0x1E695E110];
  [v28 setValue:MEMORY[0x1E695E110]];

  v30 = [v1 firstSinceBootVisualization];
  [v4 addVisualization:v30];

  v31 = objc_alloc_init(MEMORY[0x1E69C35C8]);
  [v1 setFirstSinceLaunchVisualization:v31];

  v32 = [v1 firstSinceLaunchVisualization];
  [v32 setTitle:@"First Since Launch"];

  v33 = [v1 firstSinceLaunchVisualization];
  [v33 setValue:v29];

  v34 = [v1 firstSinceLaunchVisualization];
  [v4 addVisualization:v34];

  v35 = objc_alloc_init(MEMORY[0x1E69C35D0]);
  [v1 setEnterEditVisualization:v35];

  v36 = [v1 enterEditVisualization];
  [v36 setTitle:@"Total"];

  v37 = [MEMORY[0x1E69DC888] redColor];
  v38 = [v1 enterEditVisualization];
  [v38 setColor:v37];

  v39 = [v1 enterEditVisualization];
  [v4 addVisualization:v39];

  v40 = objc_alloc_init(MEMORY[0x1E69C35D0]);
  [v1 setResourceLoadingVisualization:v40];

  v41 = [v1 resourceLoadingVisualization];
  [v41 setTitle:@"Resources"];

  v42 = [MEMORY[0x1E69DC888] greenColor];
  v43 = [v1 resourceLoadingVisualization];
  [v43 setColor:v42];

  v44 = [v1 resourceLoadingVisualization];
  [v4 addVisualization:v44];

  v45 = objc_alloc_init(MEMORY[0x1E69C35D0]);
  [v1 setResourceCheckingVisualization:v45];

  v46 = [v1 resourceCheckingVisualization];
  [v46 setTitle:@" Check"];

  v47 = [MEMORY[0x1E69DC888] colorWithRed:0.62 green:0.95 blue:0.6 alpha:1.0];
  v48 = [v1 resourceCheckingVisualization];
  [v48 setColor:v47];

  v49 = [v1 resourceCheckingVisualization];
  [v4 addVisualization:v49];

  v50 = objc_alloc_init(MEMORY[0x1E69C35D0]);
  [v1 setResourceDownloadVisualization:v50];

  v51 = [v1 resourceDownloadVisualization];
  [v51 setTitle:@" Download"];

  v52 = [MEMORY[0x1E69DC888] colorWithRed:0.62 green:0.81 blue:0.6 alpha:1.0];
  v53 = [v1 resourceDownloadVisualization];
  [v53 setColor:v52];

  v54 = [v1 resourceDownloadVisualization];
  [v4 addVisualization:v54];

  v55 = objc_alloc_init(MEMORY[0x1E69C35D0]);
  [v1 setAutoCalcVisualization:v55];

  v56 = [v1 autoCalcVisualization];
  [v56 setTitle:@"AutoCalc"];

  v57 = [MEMORY[0x1E69DC888] cyanColor];
  v58 = [v1 autoCalcVisualization];
  [v58 setColor:v57];

  v59 = [v1 autoCalcVisualization];
  [v4 addVisualization:v59];

  v60 = objc_alloc_init(MEMORY[0x1E69C35D0]);
  [v1 setFilterVisualization:v60];

  v61 = [v1 filterVisualization];
  [v61 setTitle:@" Filter"];

  v62 = [MEMORY[0x1E69DC888] colorWithRed:0.6 green:0.68 blue:1.0 alpha:1.0];
  v63 = [v1 filterVisualization];
  [v63 setColor:v62];

  v64 = [v1 hudView];
  v65 = [v1 filterVisualization];
  [v64 addVisualization:v65];

  v66 = objc_alloc_init(MEMORY[0x1E69C35D0]);
  [v1 setExitEditVisualization:v66];

  v67 = [v1 exitEditVisualization];
  [v67 setTitle:@"Save"];

  v68 = [MEMORY[0x1E69DC888] magentaColor];
  v69 = [v1 exitEditVisualization];
  [v69 setColor:v68];

  v70 = [v1 exitEditVisualization];

  [v4 addVisualization:v70];
}

void sub_1B3AFB1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3AFF5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3AFF820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B00120(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1B3B01628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B0D26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56684(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3B17308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B17508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B17D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B17F4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3B18184(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3B1A878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B1BD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__58504(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3B213D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B24250(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B3B24798(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_1B3B26DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B29A94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v5 - 256));
  _Unwind_Resume(a1);
}

void sub_1B3B2AA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B2ACD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B2AF34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B3B2D42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B2DAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B2DFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B2E3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B2E7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B2EA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B2EC2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B2F404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B301BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B30CDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1B3B312C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B3225C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B33538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak(&a53);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B363F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B3B68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _PUCanTrashAssetFromAssetCollection(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v4 isTrashBin] & 1) == 0 && objc_msgSend(v4, "canPerformEditOperation:", 1) && objc_msgSend(v3, "canPerformEditOperation:", 1))
  {
    v5 = [v3 px_isSyndicatedAsset] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B3B4AAD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3B4C684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B4CB88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3B4D3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B50E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60118(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3B53E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 248), 8);
  _Block_object_dispose((v61 - 200), 8);
  _Block_object_dispose((v61 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B3B59B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPPKMarkupViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PaperKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PaperKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B7C0B8;
    v8 = 0;
    PaperKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PaperKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PaperKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PUPhotoMarkupViewController.m" lineNumber:42 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PPKMarkupViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPPKMarkupViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PUPhotoMarkupViewController.m" lineNumber:43 description:{@"Unable to find class %s", "PPKMarkupViewController"}];

LABEL_10:
    __break(1u);
  }

  getPPKMarkupViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PaperKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PaperKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B3B5A348(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3B5A620(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3B5B4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose((v34 - 240), 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60974(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3B5B7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B5B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3B5BAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B5C5EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3B5F7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B60750(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id __log()
{
  if (__log_onceToken != -1)
  {
    dispatch_once(&__log_onceToken, &__block_literal_global_731);
  }

  v1 = __log_log;

  return v1;
}

uint64_t ____log_block_invoke()
{
  v0 = os_log_create("com.apple.Photos", "editvfx");
  v1 = __log_log;
  __log_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1B3B63200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__61999(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PURecurseLayerTreeWithBlock(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v3 sublayers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PURecurseLayerTreeWithBlock(*(*(&v10 + 1) + 8 * v9++), v4);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  v4[2](v4, v3);
}

void AdjustPointsWithinRect(CGPoint *a1, CGPoint *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  p_x = &a1->x;
  p_y = &a1->y;
  if (!CGRectContainsPoint(*&a3, *a1) || (v33.origin.x = a3, v33.origin.y = a4, v33.size.width = a5, v33.size.height = a6, !CGRectContainsPoint(v33, *a2)))
  {
    UIRectGetCenter();
    v14 = v13;
    v16 = v15;
    UIMidPointBetweenPoints();
    v19 = a2->x - *p_x;
    v20 = a2->y - p_x[1];
    if (v19 == 0.0 || fabs(v20 / v19) > a6 / a5)
    {
      v21 = fabs(a6 * 0.5 / v20);
      *p_x = v14 - v21 * v19;
      p_x[1] = v16 - v21 * v20;
      a2->x = v14 + v21 * v19;
      a2->y = v16 + v21 * v20;
      v22 = v17 - v14;
      v34.origin.x = a3;
      v34.origin.y = a4;
      v34.size.width = a5;
      v34.size.height = a6;
      MaxX = CGRectGetMaxX(v34);
      x = *p_x;
      if (*p_x < a2->x)
      {
        x = a2->x;
      }

      v25 = MaxX - x;
      if (v22 >= v25)
      {
        v22 = v25;
      }

      v35.origin.x = a3;
      v35.origin.y = a4;
      v35.size.width = a5;
      v35.size.height = a6;
      MinX = CGRectGetMinX(v35);
    }

    else
    {
      v29 = fabs(a5 * 0.5 / v19);
      *p_x = v14 - v29 * v19;
      p_x[1] = v16 - v29 * v20;
      a2->x = v14 + v29 * v19;
      a2->y = v16 + v29 * v20;
      v22 = v18 - v16;
      v36.origin.x = a3;
      v36.origin.y = a4;
      v36.size.width = a5;
      v36.size.height = a6;
      MaxY = CGRectGetMaxY(v36);
      y = p_x[1];
      if (y < a2->y)
      {
        y = a2->y;
      }

      v32 = MaxY - y;
      if (v22 >= v32)
      {
        v22 = v32;
      }

      v37.origin.x = a3;
      v37.origin.y = a4;
      v37.size.width = a5;
      v37.size.height = a6;
      MinX = CGRectGetMinY(v37);
      p_x = p_y;
      a2 = (a2 + 8);
    }

    v27 = a2->x;
    if (*p_x < a2->x)
    {
      v27 = *p_x;
    }

    v28 = MinX - v27;
    if (v22 >= v28)
    {
      v28 = v22;
    }

    *p_x = *p_x + v28;
    a2->x = a2->x + v28;
  }
}

void sub_1B3B68E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1B3B6A358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3B71BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B71E74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  _Unwind_Resume(a1);
}

void sub_1B3B76788(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__n128 __vfx_script_wand_particleUpdate_28()
{
  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
  return result;
}

uint64_t __vfx_script_wand_graph_F66D2FC7_9DFA_45F7_BDD1_184FB5A9E179(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  vfx_script_get_arguments_buffer();
  v5 = xmmword_1B3D0CF70;
  v6 = xmmword_1B3D0CF80;
  v7 = xmmword_1B3D0CF90;
  v8 = xmmword_1B3D0CFA0;
  v9 = xmmword_1B3D0CF70;
  v3 = xmmword_1B3D0D4C8;
  v4 = 1065353216;
  MEMORY[0x1B8C6EEA0](a1, &v5, &v3, 5, 1);
  v5 = xmmword_1B3D0CF70;
  v6 = xmmword_1B3D0CFB0;
  v7 = xmmword_1B3D0CF90;
  v8 = xmmword_1B3D0CFA0;
  v9 = xmmword_1B3D0CF70;
  v3 = xmmword_1B3D0D4DC;
  v4 = 1065353216;
  MEMORY[0x1B8C6EEA0](a1, &v5, &v3, 5, 1);
  vfx_script_color_ramp_copy();
  vfx_script_color_ramp_destroy();
  return vfx_script_color_ramp_destroy();
}

float __vfx_script_wand_graph_885370CA_9FEE_462C_9EC0_023D3C77D5FA()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  result = *v1;
  v5 = **(arguments_buffer + 24);
  *v2 = *v1;
  v2[1] = result;
  *v3 = v5;
  v3[1] = v5;
  return result;
}

uint64_t __vfx_script_wand_graph_141D2322_0B7C_4E79_BBE6_1B4ED64C475A()
{
  result = vfx_script_get_arguments_buffer();
  v1 = 80.0;
  if (!**(result + 16))
  {
    v1 = 0.0;
  }

  **(result + 24) = v1;
  return result;
}

uint64_t __vfx_script_wand_graph_72931B8F_2F95_4BB5_9FE6_1EB0C3BAC773()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 88);
  v2 = *(arguments_buffer + 96);
  v3 = *(arguments_buffer + 104);
  v4 = *(arguments_buffer + 112);
  v26 = *(arguments_buffer + 128);
  v27 = *(arguments_buffer + 120);
  v5 = **(arguments_buffer + 8);
  *&v6 = **(arguments_buffer + 16);
  v25 = v6;
  v7 = **(arguments_buffer + 40);
  v8 = **(arguments_buffer + 48);
  v9 = **(arguments_buffer + 56);
  v10 = **(arguments_buffer + 64);
  v11 = **(arguments_buffer + 72);
  v12 = **(arguments_buffer + 80);
  v13 = vsubq_f32(**(arguments_buffer + 24), **(arguments_buffer + 32));
  v14 = vmulq_f32(v13, v13);
  v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
  vfx_script_clock_delta_time();
  v17 = v7 * ((v16 * -10.0) + 1.0);
  if (v15 <= v7)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  v19 = v8 ^ v9;
  if ((v8 ^ v9))
  {
    v8 = v9;
  }

  v20 = v10 + (v19 & 1);
  result = vfx_script_clock_delta_time();
  v23 = fmaxf(v11 + (v22 * -5.0), 0.0);
  if (!v12)
  {
    v23 = 1.0;
  }

  v24 = 277803737 * (((747796405 * v5 + 2112654314) >> (((747796405 * v5 + 2112654314) >> 28) + 4)) ^ (747796405 * v5 + 2112654314));
  *v1 = v25;
  *v2 = v18;
  *v3 = v8;
  *v4 = v20;
  *v27 = v23;
  *v26 = COERCE_FLOAT((v24 >> 31) ^ (v24 >> 9) | 0x3F800000) + -1.0;
  return result;
}

float __vfx_script_wand_graph_7EA008FB_5C48_4CE5_98F1_2F09F9A5CD68()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  result = **(arguments_buffer + 16) * 6.0;
  *v1 = result;
  v1[1] = result;
  return result;
}

int32x4_t __vfx_script_wand_graph_871F2BCC_D47F_4C4B_A756_367C9E3B1F1F()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  **(arguments_buffer + 16) = vdupq_n_s32(0xBE4CCCCD);
  result = vdupq_n_s32(0x3E4CCCCDu);
  *v1 = result;
  return result;
}

float32x4_t __vfx_script_wand_graph_60FD312B_BD15_40F5_A712_1FAA290862F8()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 24);
  v13 = _simd_cos_f4(0);
  v3 = _simd_sin_f4(0);
  v4 = v13;
  v5 = vextq_s8(v4, v4, 4uLL);
  v6 = vmulq_f32(vzip1q_s32(vrev64q_s32(v13), v13), vextq_s8(vzip1q_s32(v5, v3), v5, 8uLL));
  v7 = vzip2q_s32(vzip1q_s32(v13, v3), v3);
  v8 = vextq_s8(v3, v3, 8uLL);
  v9 = vtrn1q_s32(v3, vextq_s8(v4, v4, 8uLL));
  v3.i32[3] = v3.i32[1];
  v7.f32[3] = -v3.f32[0];
  v10 = vmulq_f32(v3, v7);
  v11 = vtrn1q_s32(v8, v13);
  v11.f32[1] = -v13.f32[0];
  result = vmlaq_f32(vrev64q_s32(vmulq_f32(v10, v11)), v9, v6);
  *v1 = xmmword_1B3D0CFC0;
  *v2 = result;
  return result;
}

void sub_1B3B77F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3B7A598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3B7AE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDEUtilsClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!DiagnosticExtensionsLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DiagnosticExtensionsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B7C790;
    v8 = 0;
    DiagnosticExtensionsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DiagnosticExtensionsLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DiagnosticExtensionsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PUPhotosDiagnosticsAgent.m" lineNumber:61 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("DEUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDEUtilsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PUPhotosDiagnosticsAgent.m" lineNumber:62 description:{@"Unable to find class %s", "DEUtils"}];

LABEL_10:
    __break(1u);
  }

  getDEUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DiagnosticExtensionsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DiagnosticExtensionsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B3B7B6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B7B818(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B3B7B9C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64865(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3B7FF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B802B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3B80900(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B3B83204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B843B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B84FDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3B851C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3B88748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24, char a25)
{
  objc_destroyWeak((v25 + 72));
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v26 - 168), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__666(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1B3B8CE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a57);
  objc_destroyWeak(&a64);
  objc_destroyWeak(&a70);
  objc_destroyWeak((v70 - 160));
  _Unwind_Resume(a1);
}

void sub_1B3B8DAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B8E13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id location)
{
  objc_destroyWeak((v41 + 56));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B8EB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B8F614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_1B3B900D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1B3B907A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3B914D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66366(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3B9741C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3B97644(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3B97D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BA00B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BA1CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BA2068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BA5030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BA58B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BA5FA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3BA73C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BA7B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BA9184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *location)
{
  objc_destroyWeak((v13 + 32));
  objc_destroyWeak(v15);
  objc_destroyWeak(v14);
  objc_destroyWeak(location);
  objc_destroyWeak((v16 - 152));
  _Unwind_Resume(a1);
}

BOOL _isPhone()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

void sub_1B3BAC130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68850(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3BAFE54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1B3BB0B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3BB1B5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3BB1E0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3BB2348(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1B3BB2C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BB5EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __Block_byref_object_copy__69602(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3BB66FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3BB8AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__69959(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3BB8FA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3BBA9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B3BBC744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BC19CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3BC330C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__71392(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

PUOneUpEventTracker *PUOneUpEventTrackerCreate(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [[PUOneUpEventTracker alloc] initWithViewModel:v3 presentationOrigin:a2];

  return v4;
}

void sub_1B3BCA184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__72245(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3BCE11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BD2DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__73489(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PUReviewScreenSizeClassForReferenceSize(double a1, double a2)
{
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 keyWindow];
  v6 = [v5 rootViewController];
  v7 = [v6 view];
  v8 = [v7 window];
  v9 = [v8 screen];
  [v9 _referenceBounds];

  v10 = [MEMORY[0x1E69DC938] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v12 = CEKIsPadLayoutForWindowSizeInScreenSize();
  if (v11 == 1 && !v12)
  {
    return 6;
  }

  v14 = fmin(a2, a1);
  v15 = fmax(a2, a1);
  if (v14 < 350.0)
  {
    return v15 >= 600.0;
  }

  if (v14 >= 400.0)
  {
    if (v14 >= 450.0)
    {
      return 7;
    }

    v16 = v15 < 750.0;
    v17 = 5;
    v18 = 3;
  }

  else
  {
    v16 = v15 < 700.0;
    v17 = 4;
    v18 = 2;
  }

  if (v16)
  {
    return v18;
  }

  else
  {
    return v17;
  }
}

CGAffineTransform *PUReviewScreenAffineTransformForOrientation(CGAffineTransform *retstr, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      v2 = 0.0;
      break;
    case 3:
      v2 = 1.57079633;
      break;
    case 4:
      v2 = -1.57079633;
      break;
    default:
      v2 = 3.14159265;
      if (a2 != 2)
      {
        v2 = 0.0;
      }

      break;
  }

  return CGAffineTransformMakeRotation(retstr, -v2);
}

__n128 PUReviewScreenGeometryMake@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  *a2 = a5;
  *(a2 + 8) = a6;
  *(a2 + 16) = a7;
  *(a2 + 24) = a8;
  v8 = *(a1 + 16);
  *(a2 + 48) = *a1;
  *(a2 + 64) = v8;
  result = *(a1 + 32);
  *(a2 + 80) = result;
  return result;
}

uint64_t PUReviewScreenFrameForGeometry(uint64_t a1)
{
  v4 = *a1;
  v1 = *(a1 + 64);
  *&v3.a = *(a1 + 48);
  *&v3.c = v1;
  *&v3.tx = *(a1 + 80);
  CGRectApplyAffineTransform(v4, &v3);
  return UIRectCenteredAboutPoint();
}

void sub_1B3BDF534(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1B3BDF8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__75537(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3BDFBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3BE0988(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x440]);
  objc_destroyWeak(&STACK[0x448]);
  _Unwind_Resume(a1);
}

void sub_1B3BE17C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BE278C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  objc_destroyWeak((v55 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1B3BE45F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76264(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3BE7D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3BE84E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void commonInit_76694(void *a1)
{
  v1 = a1;
  [v1 _setupScrubber];
  [v1 _setupFilters];
  [v1 _setupSlider];
}

void sub_1B3BEF9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77542(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3BF62A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77962(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __PUHapticsAllowed_block_invoke()
{
  result = MGGetBoolAnswer();
  PUHapticsAllowed_allowHaptics = result;
  return result;
}

void sub_1B3BFA4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B3BFAD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3BFAFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3BFD180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B3C00DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_1B3C013F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v58 - 216), 8);
  _Block_object_dispose((v58 - 168), 8);
  _Block_object_dispose((v58 - 136), 8);
  _Unwind_Resume(a1);
}

id getOKProducerPresetsManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOKProducerPresetsManagerClass_softClass;
  v7 = getOKProducerPresetsManagerClass_softClass;
  if (!getOKProducerPresetsManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getOKProducerPresetsManagerClass_block_invoke;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getOKProducerPresetsManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3C09614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getOKProducerPresetsManagerClass_block_invoke(uint64_t a1)
{
  SlideshowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OKProducerPresetsManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOKProducerPresetsManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOKProducerPresetsManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUSlideshowMediaItem.m" lineNumber:18 description:{@"Unable to find class %s", "OKProducerPresetsManager"}];

    __break(1u);
  }
}

void *SlideshowKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SlideshowKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SlideshowKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B7E1A8;
    v6 = 0;
    SlideshowKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SlideshowKitLibraryCore_frameworkLibrary;
  if (!SlideshowKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SlideshowKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PUSlideshowMediaItem.m" lineNumber:16 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SlideshowKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SlideshowKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B3C09B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SlideshowKitLibrary();
  result = dlsym(v2, "kOKProducerPresetsFamilyPhotosPhone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B3C0C3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getOKPresentationGuidelineClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOKPresentationGuidelineClass_softClass;
  v7 = getOKPresentationGuidelineClass_softClass;
  if (!getOKPresentationGuidelineClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getOKPresentationGuidelineClass_block_invoke;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getOKPresentationGuidelineClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3C0C48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getOKPresentationViewControllerClass_block_invoke(uint64_t a1)
{
  SlideshowKitLibrary_80651();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OKPresentationViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOKPresentationViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOKPresentationViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUSlideshowSession.m" lineNumber:31 description:{@"Unable to find class %s", "OKPresentationViewController"}];

    __break(1u);
  }
}

void SlideshowKitLibrary_80651()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SlideshowKitLibraryCore_frameworkLibrary_80657)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SlideshowKitLibraryCore_block_invoke_80658;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B7E1C0;
    v5 = 0;
    SlideshowKitLibraryCore_frameworkLibrary_80657 = _sl_dlopen();
  }

  if (!SlideshowKitLibraryCore_frameworkLibrary_80657)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SlideshowKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"PUSlideshowSession.m" lineNumber:29 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SlideshowKitLibraryCore_block_invoke_80658()
{
  result = _sl_dlopen();
  SlideshowKitLibraryCore_frameworkLibrary_80657 = result;
  return result;
}

void __getOKPresentationGuidelineClass_block_invoke(uint64_t a1)
{
  SlideshowKitLibrary_80651();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OKPresentationGuideline");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOKPresentationGuidelineClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOKPresentationGuidelineClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUSlideshowSession.m" lineNumber:32 description:{@"Unable to find class %s", "OKPresentationGuideline"}];

    __break(1u);
  }
}

void __getOKMediaFeederPhotoKitClass_block_invoke(uint64_t a1)
{
  SlideshowKitLibrary_80651();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OKMediaFeederPhotoKit");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOKMediaFeederPhotoKitClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOKMediaFeederPhotoKitClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUSlideshowSession.m" lineNumber:30 description:{@"Unable to find class %s", "OKMediaFeederPhotoKit"}];

    __break(1u);
  }
}

void sub_1B3C0E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOKProducerPresetsManagerClass_block_invoke_81123(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SlideshowKitLibraryCore_frameworkLibrary_81124)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SlideshowKitLibraryCore_block_invoke_81125;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B7E1F8;
    v8 = 0;
    SlideshowKitLibraryCore_frameworkLibrary_81124 = _sl_dlopen();
  }

  if (!SlideshowKitLibraryCore_frameworkLibrary_81124)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SlideshowKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PUSlideshowSettings.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("OKProducerPresetsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOKProducerPresetsManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PUSlideshowSettings.m" lineNumber:17 description:{@"Unable to find class %s", "OKProducerPresetsManager"}];

LABEL_10:
    __break(1u);
  }

  getOKProducerPresetsManagerClass_softClass_81122 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SlideshowKitLibraryCore_block_invoke_81125()
{
  result = _sl_dlopen();
  SlideshowKitLibraryCore_frameworkLibrary_81124 = result;
  return result;
}

void sub_1B3C10570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C12FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getOKProducerPresetsManagerClass_81894()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOKProducerPresetsManagerClass_softClass_81917;
  v7 = getOKProducerPresetsManagerClass_softClass_81917;
  if (!getOKProducerPresetsManagerClass_softClass_81917)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getOKProducerPresetsManagerClass_block_invoke_81918;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getOKProducerPresetsManagerClass_block_invoke_81918(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3C130D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_block_invoke_81896(uint64_t a1)
{
  v2 = SlideshowKitLibrary_81897();
  result = dlsym(v2, "kOKProducerPresetsFamilyPhotosPhone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr_81895 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SlideshowKitLibrary_81897()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SlideshowKitLibraryCore_frameworkLibrary_81912)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SlideshowKitLibraryCore_block_invoke_81913;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B7E258;
    v6 = 0;
    SlideshowKitLibraryCore_frameworkLibrary_81912 = _sl_dlopen();
  }

  v0 = SlideshowKitLibraryCore_frameworkLibrary_81912;
  if (!SlideshowKitLibraryCore_frameworkLibrary_81912)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SlideshowKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PUSlideshowSettingsViewModel.m" lineNumber:19 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SlideshowKitLibraryCore_block_invoke_81913()
{
  result = _sl_dlopen();
  SlideshowKitLibraryCore_frameworkLibrary_81912 = result;
  return result;
}

void __getOKProducerPresetsManagerClass_block_invoke_81918(uint64_t a1)
{
  SlideshowKitLibrary_81897();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OKProducerPresetsManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOKProducerPresetsManagerClass_softClass_81917 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOKProducerPresetsManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUSlideshowSettingsViewModel.m" lineNumber:21 description:{@"Unable to find class %s", "OKProducerPresetsManager"}];

    __break(1u);
  }
}

void sub_1B3C14A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getOKProducerPresetsManagerClass_block_invoke_82116(uint64_t a1)
{
  SlideshowKitLibrary_82119();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OKProducerPresetsManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOKProducerPresetsManagerClass_softClass_82115 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOKProducerPresetsManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUSlideshowThemeViewController.m" lineNumber:21 description:{@"Unable to find class %s", "OKProducerPresetsManager"}];

    __break(1u);
  }
}

void *__getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_block_invoke_82118(uint64_t a1)
{
  v2 = SlideshowKitLibrary_82119();
  result = dlsym(v2, "kOKProducerPresetsFamilyPhotosPhone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr_82117 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SlideshowKitLibrary_82119()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SlideshowKitLibraryCore_frameworkLibrary_82127)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SlideshowKitLibraryCore_block_invoke_82128;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B7E270;
    v6 = 0;
    SlideshowKitLibraryCore_frameworkLibrary_82127 = _sl_dlopen();
  }

  v0 = SlideshowKitLibraryCore_frameworkLibrary_82127;
  if (!SlideshowKitLibraryCore_frameworkLibrary_82127)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SlideshowKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PUSlideshowThemeViewController.m" lineNumber:19 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SlideshowKitLibraryCore_block_invoke_82128()
{
  result = _sl_dlopen();
  SlideshowKitLibraryCore_frameworkLibrary_82127 = result;
  return result;
}

void sub_1B3C179C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PUOneUpLoadingErrorTypeDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7B7E2F8[a1];
  }
}

void sub_1B3C1E52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a65);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPUTesterCurationViewControllerFactoryClass_83906()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUTesterCurationViewControllerFactoryClass_softClass_83907;
  v7 = getPUTesterCurationViewControllerFactoryClass_softClass_83907;
  if (!getPUTesterCurationViewControllerFactoryClass_softClass_83907)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPUTesterCurationViewControllerFactoryClass_block_invoke_83908;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getPUTesterCurationViewControllerFactoryClass_block_invoke_83908(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3C201C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPUTesterCurationViewControllerFactoryClass_block_invoke_83908(uint64_t a1)
{
  PhotosUITesterLibrary_83909();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PUTesterCurationViewControllerFactory");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUTesterCurationViewControllerFactoryClass_softClass_83907 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPUTesterCurationViewControllerFactoryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUSuggestionsSettings+UI.m" lineNumber:41 description:{@"Unable to find class %s", "PUTesterCurationViewControllerFactory"}];

    __break(1u);
  }
}

void PhotosUITesterLibrary_83909()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotosUITesterLibraryCore_frameworkLibrary_83915)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotosUITesterLibraryCore_block_invoke_83916;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B7E438;
    v5 = 0;
    PhotosUITesterLibraryCore_frameworkLibrary_83915 = _sl_dlopen();
  }

  if (!PhotosUITesterLibraryCore_frameworkLibrary_83915)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosUITesterLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"PUSuggestionsSettings+UI.m" lineNumber:38 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotosUITesterLibraryCore_block_invoke_83916()
{
  result = _sl_dlopen();
  PhotosUITesterLibraryCore_frameworkLibrary_83915 = result;
  return result;
}

id getPUTesterSettlingEffectReviewUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUTesterSettlingEffectReviewUtilitiesClass_softClass;
  v7 = getPUTesterSettlingEffectReviewUtilitiesClass_softClass;
  if (!getPUTesterSettlingEffectReviewUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPUTesterSettlingEffectReviewUtilitiesClass_block_invoke;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getPUTesterSettlingEffectReviewUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3C20530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPUTesterSettlingEffectReviewUtilitiesClass_block_invoke(uint64_t a1)
{
  PhotosUITesterLibrary_83909();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PUTesterSettlingEffectReviewUtilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUTesterSettlingEffectReviewUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPUTesterSettlingEffectReviewUtilitiesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUSuggestionsSettings+UI.m" lineNumber:39 description:{@"Unable to find class %s", "PUTesterSettlingEffectReviewUtilities"}];

    __break(1u);
  }
}

void sub_1B3C20C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__84178(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3C264D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3C26EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C27168(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id PUStringWithValidatedFormat()
{
  v0 = PFStringWithValidatedFormatAndLocale();

  return v0;
}

id PULocalizedStringWithValidatedFormat(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DF58];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentLocale];
  v7 = PFStringWithValidatedFormatAndLocale();

  return v7;
}

void sub_1B3C2F580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PUCanConvertFromCoordinateSystemToCoordinateSystem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if (v3 == v4)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v4 parentCoordinateSystem];
      if (v7)
      {
        v8 = v7;
        v9 = v3;
        v10 = v8;
      }

      else
      {
        v9 = [v3 parentCoordinateSystem];
        if (!v9)
        {
          v6 = 0;
          goto LABEL_10;
        }

        v8 = v9;
        v10 = v5;
      }

      v6 = PUCanConvertFromCoordinateSystemToCoordinateSystem(v9, v10);
    }
  }

LABEL_10:

  return v6;
}

double PUConvertPointFromCoordinateSystemToCoordinateSystem(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint PUConvertPointFromCoordinateSystemToCoordinateSystem(CGPoint, __strong id<PUTilingCoordinateSystem>, __strong id<PUTilingCoordinateSystem>)"}];
    [v19 handleFailureInFunction:v20 file:@"PUTilingCoordinateSystem.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"fromCoordinateSystem != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint PUConvertPointFromCoordinateSystemToCoordinateSystem(CGPoint, __strong id<PUTilingCoordinateSystem>, __strong id<PUTilingCoordinateSystem>)"}];
  [v21 handleFailureInFunction:v22 file:@"PUTilingCoordinateSystem.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"toCoordinateSystem != nil"}];

LABEL_3:
  if (v7 != v9)
  {
    v10 = [v9 parentCoordinateSystem];
    if (v10)
    {
      v11 = v10;
      v12 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v7, v10, a3, a4);
      [v9 coordinateSystemOrigin];
      a3 = v12 - v13;
    }

    else
    {
      v14 = [v7 parentCoordinateSystem];
      if (v14)
      {
        v11 = v14;
        [v7 coordinateSystemOrigin];
        a3 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v11, v9, a3 + v15, a4 + v16);
      }

      else
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint PUConvertPointFromCoordinateSystemToCoordinateSystem(CGPoint, __strong id<PUTilingCoordinateSystem>, __strong id<PUTilingCoordinateSystem>)"}];
        [v11 handleFailureInFunction:v17 file:@"PUTilingCoordinateSystem.m" lineNumber:54 description:{@"coordinate systems don't have a common ancestor (%@ %@)", v7, v9}];
      }
    }
  }

  return a3;
}

BOOL PUCoordinateSystemEqualToCoordinateSystem(void *a1, void *a2)
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v4 = v2 == PUConvertPointFromCoordinateSystemToCoordinateSystem(a1, a2, *MEMORY[0x1E695EFF8], v3);
  return v3 == v5 && v4;
}

void sub_1B3C32D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3C35DEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 248));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__86915(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3C3A150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__87409(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3C3C324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3C3C5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3C3C7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3C3CCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B3C3EE90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B3C3F438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3C41D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3C4337C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__87812(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void PUParallaxLayerStackViewManagerPerformChangesInAllLayerViews(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v18 = [v4 viewModel];
  v5 = [v18 currentLayerStack];
  v6 = [v5 backgroundLayer];
  v7 = [v4 viewForLayer:v6];
  v3[2](v3, v7);

  v8 = [v5 foregroundLayer];
  v9 = [v4 viewForLayer:v8];
  v3[2](v3, v9);

  v10 = [v5 inactiveForegroundLayer];
  v11 = [v4 viewForLayer:v10];
  v3[2](v3, v11);

  v12 = [v5 inactiveBackgroundLayer];
  v13 = [v4 viewForLayer:v12];
  v3[2](v3, v13);

  v14 = [v5 spatialPhotoForegroundLayer];
  v15 = [v4 viewForLayer:v14];
  v3[2](v3, v15);

  v16 = [v5 spatialPhotoBackgroundLayer];
  v17 = [v4 viewForLayer:v16];

  v3[2](v3, v17);
}

void sub_1B3C4C63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C4CA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C4D220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a40);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C4D964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C4DC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C4DF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C50960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3C51FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C57840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C57C94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B3C5B8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C5BF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C5C1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C5C474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__91192(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3C5D1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C5D524(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3C5D9D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1B3C5E7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _PUPosterGradientViewGetTimingFunction(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        v5 = MEMORY[0x1E6979EB8];
        goto LABEL_12;
      case 1:
        v5 = MEMORY[0x1E6979EB0];
        goto LABEL_12;
      case 2:
        v5 = MEMORY[0x1E6979ED0];
LABEL_12:
        v6 = [MEMORY[0x1E69793D0] functionWithName:*v5];
        goto LABEL_13;
    }

LABEL_8:
    v5 = MEMORY[0x1E6979EA0];
    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v5 = MEMORY[0x1E6979ED8];
    goto LABEL_12;
  }

  if (a1 != 4)
  {
    goto LABEL_8;
  }

  LODWORD(a2) = 1059648963;
  LODWORD(a4) = 1051260355;
  LODWORD(a5) = 1.0;
  v6 = [MEMORY[0x1E69793D0] functionWithControlPoints:a2 :0.0 :a4 :a5];
LABEL_13:

  return v6;
}

void sub_1B3C69A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92844(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3C6A490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C6AF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PULocalizationKeyForMediaType(uint64_t a1)
{
  v1 = @"ITEM";
  if (a1 == 1)
  {
    v1 = @"PHOTO";
  }

  if (a1 == 2)
  {
    return @"VIDEO";
  }

  else
  {
    return v1;
  }
}

void sub_1B3C72368(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

Class __getPIHDRUtilitiesClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PhotoImagingLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B800A8;
    v8 = 0;
    PhotoImagingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoImagingLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PUVideoTileViewController.m" lineNumber:40 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PIHDRUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPIHDRUtilitiesClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PUVideoTileViewController.m" lineNumber:42 description:{@"Unable to find class %s", "PIHDRUtilities"}];

LABEL_10:
    __break(1u);
  }

  getPIHDRUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotoImagingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B3C72F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  _Block_object_dispose(&a16, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C73A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v19 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__94557(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3C77504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMCProfileConnectionClass_block_invoke_94678(uint64_t a1)
{
  ManagedConfigurationLibrary_94679();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MCProfileConnection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCProfileConnectionClass_softClass_94677 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUWallpaperActivity.m" lineNumber:34 description:{@"Unable to find class %s", "MCProfileConnection"}];

    __break(1u);
  }
}

void *ManagedConfigurationLibrary_94679()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary_94689)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke_94690;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B80110;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary_94689 = _sl_dlopen();
  }

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary_94689;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary_94689)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PUWallpaperActivity.m" lineNumber:33 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke_94690()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary_94689 = result;
  return result;
}

void sub_1B3C77F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMCEffectiveSettingsChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary_94679();
  result = dlsym(v2, "MCEffectiveSettingsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCEffectiveSettingsChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B3C7AB54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3C7C224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C7C300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1B3C7ECEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C80720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C85244(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 168));
  _Unwind_Resume(a1);
}

void sub_1B3C88DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 216), 8);
  _Block_object_dispose((v32 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__97070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3C8A384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double getScaledRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a3 / a5;
  MidX = CGRectGetMidX(*&a1);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMidY(v12);
  return MidX - v9 * 0.5;
}

void sub_1B3C9104C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3C935C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__98245(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x1EEDB9528](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x1EEDBA770](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
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

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}