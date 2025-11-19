BOOL _UIScrollPocketAllowHorizontalPockets()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_UIAllowHorizontalPockets, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UIAllowHorizontalPockets))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_UIAllowHorizontalPockets, @"UIAllowHorizontalPockets", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_UIAllowHorizontalPockets;
    }

    while (v0 != _UIInternalPreference_UIAllowHorizontalPockets);
  }

  return byte_1EA95E47C && v1;
}

void _UIScrollEdgeEffectOnRenderingModeChange(void *a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v10[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___UIScrollEdgeEffectOnRenderingModeChange_block_invoke;
  v8[3] = &unk_1E71092D0;
  v9 = v4;
  v6 = v4;
  v7 = [v3 registerForTraitChanges:v5 withHandler:v8];
}

double adjustedFontSize(uint64_t a1, void *a2, double a3, double a4)
{
  v23 = *MEMORY[0x1E69E9840];
  WebThreadLock();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    return a4;
  }

  v9 = v8;
  v10 = *v19;
  v11 = a4;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(a2);
      }

      v13 = [*(*(&v18 + 1) + 8 * i) node];
      if (v13)
      {
        v14 = [v13 itemTitle];
        if ([v14 length])
        {
          v17 = a4;
          [v14 _legacy_sizeWithFont:a1 minFontSize:&v17 actualFontSize:0 forWidth:12.0 lineBreakMode:a3];
          if (v17 < v11 && v17 > 0.0)
          {
            v11 = v17;
          }
        }
      }
    }

    v9 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v9);
  return v11;
}

__CFString *UIDefaultCountryCode()
{
  v0 = CFLocaleCopyCurrent();
  if (v0)
  {
    v1 = v0;
    v2 = [CFLocaleGetValue(v0 *MEMORY[0x1E695E6D0])];
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"us";
  }

  v4 = v3;

  return v3;
}

void UIFormattedPhoneStringByRemovingFromEnd(void *a1)
{
  v1 = a1;
  v2 = CPPhoneNumberCopyNetworkCountryCode();
  if (!v2)
  {
    v2 = UIDefaultCountryCode();
  }

  v3 = [v1 length];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = get_PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndexSymbolLoc_ptr;
  v13 = get_PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndexSymbolLoc_ptr;
  if (!get_PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndexSymbolLoc_ptr)
  {
    v5 = CorePhoneNumbersLibrary();
    v11[3] = dlsym(v5, "_PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndex");
    get_PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndexSymbolLoc_ptr = v11[3];
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v4)
  {
    v6 = v4(v1, v2, v3);

    v7 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFStringRef _UIPNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndex(CFStringRef, CFStringRef, CFIndex)"}];
    [v8 handleFailureInFunction:v9 file:@"UIPhoneFormatUtilities.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189895ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UIPhonePrefixFromNumber(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = CPPhoneNumberCopyHomeCountryCode();
    if (!v2)
    {
      v2 = UIDefaultCountryCode();
    }

    v3 = *MEMORY[0x1E695E480];
    v4 = UIUnformattedPhoneNumberFromString(v1);
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v3, v4, @",");

    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v7 = get_PNCopyPrefixForCountrySymbolLoc_ptr;
    v16 = get_PNCopyPrefixForCountrySymbolLoc_ptr;
    if (!get_PNCopyPrefixForCountrySymbolLoc_ptr)
    {
      v8 = CorePhoneNumbersLibrary();
      v14[3] = dlsym(v8, "_PNCopyPrefixForCountry");
      get_PNCopyPrefixForCountrySymbolLoc_ptr = v14[3];
      v7 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v7)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFStringRef _UIPNCopyPrefixForCountry(CFStringRef, CFStringRef)"}];
      [v11 handleFailureInFunction:v12 file:@"UIPhoneFormatUtilities.m" lineNumber:35 description:{@"%s", dlerror()}];

      __break(1u);
      return;
    }

    v9 = v7(ValueAtIndex, v2);
    CFRelease(ArrayBySeparatingStrings);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
}

void sub_1898960D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UIUnformattedPhoneNumberFromString(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr;
  v11 = get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr;
  if (!get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr)
  {
    v3 = CorePhoneNumbersLibrary();
    v9[3] = dlsym(v3, "_PNCreateStringByStrippingFormattingAndNotVisiblyAllowable");
    get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = v2(v1);

    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef _UIPNCreateStringByStrippingFormattingAndNotVisiblyAllowable(CFStringRef)"];
    [v6 handleFailureInFunction:v7 file:@"UIPhoneFormatUtilities.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18989625C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UIFormattedPhoneNumberFromString(void *a1)
{
  v1 = a1;
  v2 = UIDefaultCountryCode();
  v3 = UIFormattedPhoneNumberFromStringWithCountry(v1, v2);

  return v3;
}

void UIFormattedPhoneNumberFromStringWithCountry(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getPNCreateFormattedStringWithCountrySymbolLoc_ptr;
  v14 = getPNCreateFormattedStringWithCountrySymbolLoc_ptr;
  if (!getPNCreateFormattedStringWithCountrySymbolLoc_ptr)
  {
    v6 = CorePhoneNumbersLibrary();
    v12[3] = dlsym(v6, "PNCreateFormattedStringWithCountry");
    getPNCreateFormattedStringWithCountrySymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = v5(v3, v4, 2, 0);

    v8 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFStringRef _UIPNCreateFormattedStringWithCountry(CFStringRef, CFStringRef, PNFormatLocalization, PNFormatCompression)"}];
    [v9 handleFailureInFunction:v10 file:@"UIPhoneFormatUtilities.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189896464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UIPhoneNumberSuggestionForString(void *a1, unsigned int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v15[0] = 0;
  v7 = UIDefaultCountryCode();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v8 = get_PNCopyFormattedNumberSuggestionForDigitsWithCountrySymbolLoc_ptr;
  v20 = get_PNCopyFormattedNumberSuggestionForDigitsWithCountrySymbolLoc_ptr;
  if (!get_PNCopyFormattedNumberSuggestionForDigitsWithCountrySymbolLoc_ptr)
  {
    v15[1] = MEMORY[0x1E69E9820];
    v15[2] = 3221225472;
    v15[3] = __get_PNCopyFormattedNumberSuggestionForDigitsWithCountrySymbolLoc_block_invoke;
    v15[4] = &unk_1E70F2F20;
    v16 = &v17;
    v9 = CorePhoneNumbersLibrary();
    v18[3] = dlsym(v9, "_PNCopyFormattedNumberSuggestionForDigitsWithCountry");
    get_PNCopyFormattedNumberSuggestionForDigitsWithCountrySymbolLoc_ptr = *(v16[1] + 24);
    v8 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v8)
  {
    v10 = (v8)(v5, a2, v6, v15, v7);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1EFB14550;
    }

    [v11 addObject:v12];
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFStringRef _UIPNCopyFormattedNumberSuggestionForDigitsWithCountry(CFStringRef, CFIndex, CFStringRef, CFIndex *, CFStringRef)"}];
    [v13 handleFailureInFunction:v14 file:@"UIPhoneFormatUtilities.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18989664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *CorePhoneNumbersLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CorePhoneNumbersLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CorePhoneNumbersLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71092F0;
    v6 = 0;
    CorePhoneNumbersLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CorePhoneNumbersLibraryCore_frameworkLibrary;
  if (!CorePhoneNumbersLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CorePhoneNumbersLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIPhoneFormatUtilities.m" lineNumber:31 description:{@"%s", v4[0]}];

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

uint64_t __CorePhoneNumbersLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CorePhoneNumbersLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPNCreateFormattedStringWithCountrySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CorePhoneNumbersLibrary();
  result = dlsym(v2, "PNCreateFormattedStringWithCountry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPNCreateFormattedStringWithCountrySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL __shouldUseView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && [v3 isDescendantOfView:v4] && (objc_msgSend(v3, "isHidden") & 1) == 0 && (objc_msgSend(v3, "alpha"), v5 >= 0.01))
  {
    [v3 bounds];
    v6 = !CGRectIsEmpty(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

UITargetedPreview *_UIControlMenuSupportTargetedPreviewOverViews(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 _window];

  if (!v8)
  {
    v11 = 0;
    goto LABEL_15;
  }

  if (!_UIContextMenuMagicMorphAnimationEnabled() || ![v5 showsMenuFromSource])
  {
    v12 = v5;
    v13 = v6;
    v14 = v7;
    if (__shouldUseView(v13, v12))
    {
      [v13 bounds];
      [v12 convertRect:v13 fromView:?];
      x = v15;
      y = v17;
      width = v19;
      height = v21;
      if (!__shouldUseView(v14, v12))
      {
LABEL_13:

        v10 = [[UIPreviewTarget alloc] initWithContainer:v12 center:x + width * 0.5, y + height * 0.5];
        v27 = objc_opt_new();
        v28 = +[UIColor clearColor];
        [v27 setBackgroundColor:v28];

        v29 = [UITargetedPreview alloc];
        v30 = [[UIView alloc] initWithFrame:x, y, width, height];
        v11 = [(UITargetedPreview *)v29 initWithView:v30 parameters:v27 target:v10];

        goto LABEL_14;
      }

      [v14 bounds];
      [v12 convertRect:v14 fromView:?];
      v35.origin.x = v23;
      v35.origin.y = v24;
      v35.size.width = v25;
      v35.size.height = v26;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v34 = CGRectUnion(v33, v35);
    }

    else if (__shouldUseView(v14, v12))
    {
      [v14 bounds];
      [v12 convertRect:v14 fromView:?];
    }

    else
    {
      [v12 bounds];
    }

    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    goto LABEL_13;
  }

  v9 = [UITargetedPreview alloc];
  v10 = [v5 _morphView];
  v11 = [(UITargetedPreview *)v9 initWithView:v10];
LABEL_14:

LABEL_15:

  return v11;
}

id _UIControlMenuSupportDefaultMenuStyle(int a1, int a2)
{
  v4 = +[_UIContextMenuStyle defaultStyle];
  [v4 setPreferredLayout:3];
  if (a2)
  {
    v5 = _UIContextMenuMagicMorphAnimationEnabled();
  }

  else
  {
    v5 = 0;
  }

  [v4 setShouldMenuOverlapSourcePreview:v5];
  [v4 set_orderMenuBasedOnPriority:a1 ^ 1u];

  return v4;
}

void _UIControlMenuSupportUpdateStyleForBarButtons(void *a1, void *a2, void *a3, int a4, double a5, CGFloat a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  _UIControlMenuSupportUpdateStyle(v11, v12, v13, a5, a6);
  if (a4)
  {
    v14 = [v13 view];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [v13 target];
    [v23 center];
    v25 = v24;
    v27 = v26;
    v28 = [v12 _screen];
    [v28 scale];
    UIRectCenteredAboutPointScale(v16, v18, v20, v22, v25, v27, v29);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    if (v11)
    {
      [v11 _preferredAnchor];
      v38 = *&v57;
      [v11 _preferredAnchor];
    }

    else
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0;
      v38 = 0.0;
    }

    if (([v11 shouldMenuOverlapSourcePreview] & 1) == 0)
    {
      [v14 bounds];
      v38 = -(CGRectGetMidY(v59) + 22.0);
    }

    if (v11)
    {
      [v11 _preferredAnchor];
      if (*(&v50 + 1) == 2)
      {
        v60.origin.x = v31;
        v60.origin.y = v33;
        v60.size.width = v35;
        v60.size.height = v37;
        v39 = -(CGRectGetMinX(v60) + -8.0);
        [v11 set_allowsImmediateSelection:1];
        goto LABEL_12;
      }
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
    }

    [v12 bounds];
    Width = CGRectGetWidth(v61);
    v62.origin.x = v31;
    v62.origin.y = v33;
    v62.size.width = v35;
    v62.size.height = v37;
    v39 = Width - CGRectGetMaxX(v62) + -8.0;
    [v11 set_allowsImmediateSelection:1];
    if (!v11)
    {
      v42 = 0;
      v41 = 0;
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      goto LABEL_14;
    }

LABEL_12:
    [v11 _preferredAnchor];
    v41 = v47;
    [v11 _preferredAnchor];
    v42 = *(&v44 + 1);
LABEL_14:
    v43[0] = v41;
    v43[1] = v42;
    *&v43[2] = v38;
    *&v43[3] = v39;
    v43[4] = 0;
    [v11 set_preferredAnchor:v43];
  }
}

void _UIControlMenuSupportUpdateStyle(void *a1, void *a2, void *a3, double a4, CGFloat a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  [v9 setPreferredEdgeInsets:{1.0, 1.0, 1.0, 1.0}];
  [v9 setPreferredLayout:3];
  v12 = [v11 view];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  if (a5 >= CGRectGetMidY(v40))
  {
    v22 = 0;
    v23 = 4;
  }

  else
  {
    v41.origin.x = v15;
    v41.origin.y = v17;
    v41.size.width = v19;
    v41.size.height = v21;
    if (a5 >= CGRectGetMidY(v41))
    {
      v23 = 0;
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v23 = 1;
    }
  }

  v42.origin.x = v15;
  v42.origin.y = v17;
  v42.size.width = v19;
  v42.size.height = v21;
  v24 = CGRectGetWidth(v42) * 0.05;
  if (v24 >= 2.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 2.0;
  }

  v43.origin.x = v15;
  v43.origin.y = v17;
  v43.size.width = v19;
  v43.size.height = v21;
  v26 = a4 - CGRectGetMidX(v43);
  if (v26 <= v25)
  {
    if (v26 >= -v25)
    {
      v28 = 0;
      v27 = 1;
    }

    else
    {
      v27 = 0;
      v28 = 2;
    }
  }

  else
  {
    v27 = 0;
    v28 = 8;
  }

  v29 = [v9 shouldMenuOverlapSourcePreview];
  v30 = 0.0;
  v31 = 0.0;
  if (((v22 | v29) & 1) == 0)
  {
    if (v23 == 4)
    {
      v44.origin.x = v15;
      v44.origin.y = v17;
      v44.size.width = v19;
      v44.size.height = v21;
      v31 = a5 - CGRectGetMaxY(v44);
    }

    else if (v23 == 1)
    {
      v31 = a5;
    }
  }

  if (((v27 | v29) & 1) == 0)
  {
    v32 = [v10 traitCollection];
    v33 = _UIContextMenuGetPlatformMetrics([v32 userInterfaceIdiom]);
    v34 = [v33 wantsControlAlignmentWithHorizontalEdgeAdjustment];

    v35 = 0.0;
    if (v34)
    {
      v36 = [v10 traitCollection];
      v37 = _UIContextMenuGetPlatformMetrics([v36 userInterfaceIdiom]);
      [v37 menuItemInternalPadding];
      v35 = v38;
    }

    if (v28 == 8)
    {
      v45.origin.x = v15;
      v45.origin.y = v17;
      v45.size.width = v19;
      v45.size.height = v21;
      v30 = v35 + a4 - CGRectGetMaxX(v45);
    }

    else if (v28 == 2)
    {
      v30 = a4 - v35;
    }
  }

  v39[0] = v23;
  v39[1] = v28;
  *&v39[2] = v31;
  *&v39[3] = v30;
  v39[4] = 0;
  [v9 set_preferredAnchor:v39];
  [v9 set_parentTraitEnvironmentForUserInterfaceStyle:v10];
}

double _UIControlMenuAttachmentPointForRectInContainer(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v42 = a4;
  v10 = a4 * 0.5;
  v11 = a5;
  v12 = a5 * 0.5;
  v13 = [v9 _window];

  if (v13)
  {
    [v9 bounds];
    rect = v14;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = a2 + v10;
    v22 = a3 + v12;
    v23 = [v9 _window];
    if ([v23 _isTextEffectsWindow])
    {
      [v9 convertPoint:v23 toView:{v21, a3 + v12}];
      v21 = v24;
      v22 = v25;
      v26 = v23;

      [v26 _usableBounds];
      rect = v27;
      v16 = v28;
      v18 = v29;
      v20 = v30;
      v9 = v26;
    }

    v31 = [v9 traitCollection];
    v32 = _UIContextMenuGetPlatformMetrics([v31 userInterfaceIdiom]);
    v33 = [v32 controlAttachmentYOffsetProvider];
    v34 = v33;
    if (v33)
    {
      (*(v33 + 16))(v33, v42, v11);
    }

    if (([v23 _isRemoteInputHostWindow] & 1) == 0)
    {
      v44.origin.x = rect;
      v44.origin.y = v16;
      v44.size.width = v18;
      v44.size.height = v20;
      if (v22 <= CGRectGetMidY(v44))
      {
        v49.origin.x = rect;
        v49.origin.y = v16;
        v49.size.width = v18;
        v49.size.height = v20;
        if (v22 < CGRectGetMidY(v49))
        {
          v50.origin.x = 0.0;
          v50.origin.y = 0.0;
          v50.size.width = v42;
          v50.size.height = v11;
          CGRectGetMaxY(v50);
        }
      }
    }

    v45.origin.x = rect;
    v45.origin.y = v16;
    v45.size.width = v18;
    v45.size.height = v20;
    v36 = CGRectGetWidth(v45) * 0.05;
    if (v36 >= 2.0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 2.0;
    }

    v46.origin.x = rect;
    v46.origin.y = v16;
    v46.size.width = v18;
    v46.size.height = v20;
    v38 = v21 - CGRectGetMidX(v46);
    if (v38 <= v37)
    {
      v40 = -v37;
      v35 = 0.0;
      if (v38 < v40)
      {
LABEL_17:

        goto LABEL_18;
      }

      v48.origin.x = 0.0;
      v48.origin.y = 0.0;
      v48.size.width = v42;
      v48.size.height = v11;
      MidX = CGRectGetMidX(v48);
    }

    else
    {
      v47.origin.x = 0.0;
      v47.origin.y = 0.0;
      v47.size.width = v42;
      v47.size.height = v11;
      MidX = CGRectGetMaxX(v47);
    }

    v35 = MidX;
    goto LABEL_17;
  }

  v35 = v10 + 0.0;
LABEL_18:

  return v35;
}

void _UIControlMenuSupportUpdateStyleWithHorizontalPreference(void *a1, void *a2, void *a3, double a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  [v9 setPreferredEdgeInsets:{1.0, 1.0, 1.0, 1.0}];
  [v9 setPreferredLayout:3];
  v12 = [v11 view];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v32.origin.x = v15;
  v32.origin.y = v17;
  v32.size.width = v19;
  v32.size.height = v21;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v15;
  v33.origin.y = v17;
  v33.size.width = v19;
  v33.size.height = v21;
  v23 = CGRectGetHeight(v33) * 0.05;
  if (v23 >= 2.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 2.0;
  }

  v34.origin.x = v15;
  v34.origin.y = v17;
  v34.size.width = v19;
  v34.size.height = v21;
  v25 = a5 - CGRectGetMidY(v34);
  if (v25 <= v24)
  {
    if (v25 >= -v24)
    {
      v27 = 0;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v27 = 1;
    }
  }

  else
  {
    v26 = 0;
    v27 = 4;
  }

  v28 = a4;
  if (a4 >= MidX)
  {
    v35.origin.x = v15;
    v35.origin.y = v17;
    v35.size.width = v19;
    v35.size.height = v21;
    v28 = a4 - CGRectGetMaxX(v35);
  }

  v29 = 0.0;
  if ((v26 & 1) == 0)
  {
    if (v27 == 4)
    {
      v36.origin.x = v15;
      v36.origin.y = v17;
      v36.size.width = v19;
      v36.size.height = v21;
      v29 = a5 - CGRectGetMaxY(v36);
    }

    else if (v27 == 1)
    {
      v29 = a5;
    }
  }

  v30 = 8;
  if (a4 < MidX)
  {
    v30 = 2;
  }

  v31[0] = v30;
  v31[1] = v27;
  *&v31[2] = v28;
  *&v31[3] = v29;
  v31[4] = 0;
  [v9 set_preferredAnchor:v31];
  [v9 set_parentTraitEnvironmentForUserInterfaceStyle:v10];
}

double _UIControlMenuAttachmentPointForRectInContainerForHorizontalAttachment(void *a1, double a2, double a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v10 = [v9 _window];

  if (v10)
  {
    [v9 bounds];
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v21 = a2 + a4 * 0.5;
    v15 = a3 + a5 * 0.5;
    v16 = CGRectGetHeight(v22) * 0.05;
    if (v16 >= 2.0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 2.0;
    }

    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v18 = v15 - CGRectGetMidY(v23);
    if (v18 <= v17)
    {
      if (v18 >= -v17)
      {
        v25.origin.x = 0.0;
        v25.origin.y = 0.0;
        v25.size.width = a4;
        v25.size.height = a5;
        CGRectGetMidY(v25);
      }
    }

    else
    {
      v24.origin.x = 0.0;
      v24.origin.y = 0.0;
      v24.size.width = a4;
      v24.size.height = a5;
      CGRectGetMaxY(v24);
    }

    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v19 = -20.0;
    if (v21 <= CGRectGetMidX(v26))
    {
      v27.origin.x = 0.0;
      v27.origin.y = 0.0;
      v27.size.width = a4;
      v27.size.height = a5;
      v19 = CGRectGetMaxX(v27) + 20.0;
    }
  }

  else
  {
    v19 = a4 * 0.5 + 0.0;
  }

  return v19;
}

id _candidatesChoicesFromTextChoices(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = &stru_1EFB14550;
    }

    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = objc_alloc(MEMORY[0x1E69D95F0]);
        v14 = [v13 initWithCandidate:v12 forInput:{v10, v17}];
        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

uint64_t _candidateSourceIsSmartReply(void *a1)
{
  v1 = a1;
  if ([v1 isSmartReply])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isSmartAction];
  }

  return v2;
}

uint64_t _replacementSourceIsSmartReply(void *a1)
{
  v1 = [a1 candidateChoices];
  v2 = [v1 firstObject];
  IsSmartReply = _candidateSourceIsSmartReply(v2);

  return IsSmartReply;
}

void sub_1898A30C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getTUIGradientViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49B300)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_7;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7109418;
    v8 = 0;
    qword_1ED49B300 = _sl_dlopen();
  }

  if (!qword_1ED49B300)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:85 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIGradientView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIGradientViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:86 description:{@"Unable to find class %s", "TUIGradientView"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49B2F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke_7()
{
  result = _sl_dlopen();
  qword_1ED49B300 = result;
  return result;
}

void __TIGetShowCandidateConfidenceValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"ShowCandidateConfidence" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void sub_1898AE8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1898B1870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1898B3D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBETextAlternativesClass_block_invoke(uint64_t a1)
{
  BrowserEngineKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BETextAlternatives");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBETextAlternativesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBETextAlternativesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKBInputDelegateManager.m" lineNumber:65 description:{@"Unable to find class %s", "BETextAlternatives"}];

    __break(1u);
  }
}

void BrowserEngineKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!BrowserEngineKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __BrowserEngineKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71094F0;
    v5 = 0;
    BrowserEngineKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BrowserEngineKitLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BrowserEngineKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKBInputDelegateManager.m" lineNumber:59 description:{@"%s", v3[0]}];

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

uint64_t __BrowserEngineKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  BrowserEngineKitLibraryCore_frameworkLibrary = result;
  return result;
}

id getBEAutoFillTextSuggestionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBEAutoFillTextSuggestionClass_softClass;
  v7 = getBEAutoFillTextSuggestionClass_softClass;
  if (!getBEAutoFillTextSuggestionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBEAutoFillTextSuggestionClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getBEAutoFillTextSuggestionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1898B6DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBEAutoFillTextSuggestionClass_block_invoke_0(uint64_t a1)
{
  BrowserEngineKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BEAutoFillTextSuggestion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBEAutoFillTextSuggestionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBEAutoFillTextSuggestionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKBInputDelegateManager.m" lineNumber:64 description:{@"Unable to find class %s", "BEAutoFillTextSuggestion"}];

    __break(1u);
  }
}

void __getBETextSuggestionClass_block_invoke(uint64_t a1)
{
  BrowserEngineKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BETextSuggestion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBETextSuggestionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBETextSuggestionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKBInputDelegateManager.m" lineNumber:60 description:{@"Unable to find class %s", "BETextSuggestion"}];

    __break(1u);
  }
}

void __getBEKeyEntryClass_block_invoke(uint64_t a1)
{
  BrowserEngineKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BEKeyEntry");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBEKeyEntryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBEKeyEntryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKBInputDelegateManager.m" lineNumber:61 description:{@"Unable to find class %s", "BEKeyEntry"}];

    __break(1u);
  }
}

void __getBETextDocumentRequestClass_block_invoke(uint64_t a1)
{
  BrowserEngineKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BETextDocumentRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBETextDocumentRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBETextDocumentRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKBInputDelegateManager.m" lineNumber:62 description:{@"Unable to find class %s", "BETextDocumentRequest"}];

    __break(1u);
  }
}

void __TIGetChamoisExternalSWKeyboardValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"ChamoisExternalSWKeyboard" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void sub_1898B8720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1898B99FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1898BA1CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id _asCalendarDay(void *a1, void *a2, int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = ___asCalendarDay_block_invoke;
  v38[3] = &unk_1E71095D0;
  v6 = v5;
  v39 = v6;
  v7 = _UICalendarMap(a1, v38);
  if (a3)
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = v8;
    v10 = *v35;
    v30 = v6;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v32 = 0;
        v33 = 0.0;
        v13 = [v12 date];
        [v6 rangeOfUnit:4096 startDate:&v32 interval:&v33 forDate:v13];
        v14 = v32;

        v15 = [v14 dateByAddingTimeInterval:v33 + -1.0];
        v16 = [v6 component:8 fromDate:v14];
        v17 = [v6 component:8 fromDate:v15];
        if (v16 != v17)
        {
          v18 = v17;
          v19 = v9;
          v20 = v10;
          v21 = [v12 components];
          v22 = [v21 month];

          if (v16 == v22)
          {
            v23 = [v12 month];
            v24 = [v23 nextMonth];
            v10 = v20;
            v9 = v19;
            v6 = v30;
          }

          else
          {
            v25 = [v12 components];
            v26 = [v25 month];

            v10 = v20;
            v9 = v19;
            v6 = v30;
            if (v18 != v26)
            {
              goto LABEL_14;
            }

            v23 = [v12 month];
            v24 = [v23 previousMonth];
          }

          if (v24)
          {
            v27 = [v12 copyWithAssignedMonth:v24];
            [v29 addObject:v27];
          }
        }

LABEL_14:
      }

      v9 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (!v9)
      {
LABEL_16:

        v7 = [obj arrayByAddingObjectsFromArray:v29];

        break;
      }
    }
  }

  return v7;
}

id _UICalendarMap(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
        if (v12)
        {
          [v6 addObject:{v12, v15}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];

  return v13;
}

_UIDatePickerCalendarDay *___asCalendarDay_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dateFromComponents:a2];
  v4 = [[_UIDatePickerCalendarDay alloc] initWithDate:v3 calendar:*(a1 + 32)];

  return v4;
}

void ___voiceControlEnablementStateChanged_block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:0x1EFB73D30 object:0];
}

void sub_1898BFDF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 120));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1898C32B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSSScreenshotMetadataHarvesterClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49DFE8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ScreenshotServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71096B8;
    v8 = 0;
    qword_1ED49DFE8 = _sl_dlopen();
  }

  if (!qword_1ED49DFE8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ScreenshotServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIScreenshotMetadataRequestAction.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SSScreenshotMetadataHarvester");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSScreenshotMetadataHarvesterClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIScreenshotMetadataRequestAction.m" lineNumber:19 description:{@"Unable to find class %s", "SSScreenshotMetadataHarvester"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1106 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenshotServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49DFE8 = result;
  return result;
}

id _UIHyperExtenderClasses()
{
  if (qword_1ED49DFF8 != -1)
  {
    dispatch_once(&qword_1ED49DFF8, &__block_literal_global_250);
  }

  v1 = _MergedGlobals_1107;

  return v1;
}

void sub_1898C69C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1898C6E04(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t previewHandler_block_invoke(uint64_t a1, id *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (*(v2 + 20) == 1)
  {
    v3 = [*a2 privateDelegate];
    v4 = [v2 previewInteraction];
    v5 = [v3 _previewInteractionShouldFinishTransitionToPreview:v4];

    if (!v5)
    {
      return 4;
    }
  }

  if (*(v2 + 17) & 1) != 0 || ([v2 _canPerformPresentation])
  {
    return 5;
  }

  return *(v2 + 1);
}

void postPreviewHandler_block_invoke_2(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if (!v5)
  {
    [(_UIPreviewInteractionClickImpl *)0 _delegateUpdatePreviewTransitionWithProgress:1.0 ended:?];
    v5 = 0;
    if (a4 == 5)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v5[1] == 4)
  {
    goto LABEL_21;
  }

  v19 = v5;
  [(_UIPreviewInteractionClickImpl *)v5 _delegateUpdatePreviewTransitionWithProgress:1.0 ended:?];
  v5 = v19;
  if (a4 != 5)
  {
LABEL_18:
    v19 = v5;
    goto LABEL_19;
  }

  v6 = [v19 _performPresentationIfPossible];
  if (![v19 _canPerformPresentation] || (v6 & 1) != 0)
  {
    v7 = [v19 previewClickInteraction];
    v8 = [v7 view];
    v9 = [v19 previewClickInteraction];
    [v8 removeInteraction:v9];

    if (v19[22] == 1)
    {
      v10 = [v19 privateDelegate];
      v11 = [v19 previewInteraction];
      v12 = [v10 _previewInteractionOverrideViewForCommitPhase:v11];
    }

    else
    {
      v12 = 0;
    }

    if (!((v12 != 0) | v6 & 1))
    {
      v12 = [v19 view];
    }

    if (v12)
    {
      v13 = [v19 commitClickInteraction];

      if (!v13)
      {
        v14 = objc_opt_new();
        [v19 setCommitClickInteraction:v14];

        v15 = [v19 commitClickInteraction];
        [v15 setAllowableMovement:1.79769313e308];

        v16 = [v19 commitClickInteraction];
        [v16 setDelegate:v19];
      }

      v17 = [v19 commitClickInteraction];
      [v12 addInteraction:v17];

      if ((v6 & 1) == 0)
      {
        v18 = [UIApp _gestureEnvironment];
        [(UIGestureEnvironment *)v18 _performTouchContinuationWithOverrideHitTestedView:v12];
      }
    }

    goto LABEL_20;
  }

LABEL_19:
  [(_UIPreviewInteractionClickImpl *)v19 _endInteractionDidComplete:0 wasCancelledByClient:?];
LABEL_20:
  v5 = v19;
LABEL_21:
}

uint64_t stateMachineSpec_block_invoke_5_2(uint64_t a1, id *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v2[16] == 1)
  {
    v3 = [*a2 delegate];
    v4 = [v2 previewInteraction];
    v5 = [v3 previewInteractionShouldBegin:v4];

    if (!v5)
    {
      return 1;
    }
  }

  if ([UIApp _isSpringBoard])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v2 view];
    v7 = [v6 interactions];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v12;
            [v14 setEnabled:0];
            [v14 _cancelLift];
            [v2 setAssociatedDragInteraction:v14];

            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  return 2;
}

uint64_t stateMachineSpec_block_invoke_6_1(uint64_t a1, id *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = [*a2 exclusionRelationshipGestureRecognizer];
  [v3 _succeed];

  v4 = [v2 previewClickInteraction];
  [v4 setAllowableMovement:20.0];

  return 3;
}

uint64_t stateMachineSpec_block_invoke_7_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  [(_UIPreviewInteractionClickImpl *)*a2 _delegateUpdateCommitTransitionWithProgress:1.0 ended:?];
  v4[0] = v2;
  v4[1] = 1;
  return [(_UIPreviewInteractionClickImpl *)v2 _handleTransitionToPossibleByEndingWithContext:v4];
}

void ___getUTIForUnlocalizedAppCategoryDescription_block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  _addDescendantUTIsToSet(0, @"public.app-category", v1);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v7 allowUndeclared:{1, v13}];
        v9 = [v8 _localizedDescriptionDictionary];

        v10 = [v9 objectForKeyedSubscript:@"LSDefaultLocalizedValue"];
        if (v10)
        {
          [v0 setObject:v7 forKeyedSubscript:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = [v0 copy];
  v12 = _MergedGlobals_3_10;
  _MergedGlobals_3_10 = v11;
}

void _addDescendantUTIsToSet(unint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6982C40] _typeWithIdentifier:a2 allowUndeclared:1];
  v7 = [v6 _childTypes];

  v8 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v24 + 1) + 8 * v13) identifier];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  [v5 addObjectsFromArray:v8];
  if (a1 <= 9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          _addDescendantUTIsToSet(a1 + 1, *(*(&v20 + 1) + 8 * v19++), v5);
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }
  }
}

void sub_1898CC184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1898CC648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1898CCF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1898CD35C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

id UIScenePresentationBinderLog()
{
  if (UIScenePresentationBinderLog_onceToken != -1)
  {
    dispatch_once(&UIScenePresentationBinderLog_onceToken, &__block_literal_global_4_4);
  }

  v1 = UIScenePresentationBinderLog___instance;

  return v1;
}

void __UIScenePresentationBinderLog_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "ScenePresentationBinder");
  v1 = UIScenePresentationBinderLog___instance;
  UIScenePresentationBinderLog___instance = v0;
}

void sub_1898D6150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1898DBA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1898DFD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1898E0804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromUISceneRenderingMode(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Asynchronous";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown (%li)", a1];
    }
  }

  else
  {
    v2 = @"Normal";
  }

  return v2;
}

UIScriptSwitcherButton *_GetButtonForInputMode(void *a1)
{
  v1 = a1;
  v2 = [UIScriptSwitcherButton alloc];
  v3 = [(UIScriptSwitcherButton *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = [v1 _iconLabelWithinMultiscriptSet];
  v5 = [@"multiscript-" stringByAppendingString:v4];

  v6 = [UIImage kitImageNamed:v5];
  [(UIScriptSwitcherButton *)v3 setImage:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___GetButtonForInputMode_block_invoke;
  v10[3] = &unk_1E70F4708;
  v11 = v1;
  v7 = v1;
  v8 = [UIAction actionWithHandler:v10];
  [(UIControl *)v3 addAction:v8 forControlEvents:64];

  return v3;
}

UIAlternativeCandidatesButton *_GetAlternativeCandidatesButton(void *a1)
{
  v1 = a1;
  v2 = [UIAlternativeCandidatesButton alloc];
  v3 = [(UIAlternativeCandidatesButton *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIControl *)v3 addAction:v1 forControlEvents:64];

  return v3;
}

void _runLoopObserverCallout(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 == 128)
  {

    _popAutoreleasePool(a3);
  }

  else
  {
    if (a2 == 32)
    {
      _popAutoreleasePool(a3);
    }

    else if (a2 != 1)
    {
      return;
    }

    _pushAutoreleasePool(a3);
  }
}

uint64_t _popAutoreleasePool(void *a1)
{
  result = [a1 count];
  if (result)
  {
    v3 = result - 1;
    while (1)
    {
      v4 = [objc_msgSend(a1 objectAtIndexedSubscript:{v3), "object"}];
      if (v4)
      {
        break;
      }

      result = [a1 removeObjectAtIndex:v3--];
      if (v3 == -1)
      {
        return result;
      }
    }

    v5 = v4;
    MEMORY[0x18CFE77C0]([v4 mark]);

    return [a1 removeObjectAtIndex:v3];
  }

  return result;
}

_UIBoxedAutoreleasePoolMark *_pushAutoreleasePool(void *a1)
{
  v2 = [[_UIBoxedAutoreleasePoolMark alloc] initWithAutoreleasePoolMark:MEMORY[0x18CFE77E0](0)];
  v3 = [[_UIWeakReference alloc] initWithObject:v2];
  [a1 addObject:v3];

  return v2;
}

void sub_1898E416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1898E4458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1898E4A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1898E4D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1898E5F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1898E626C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

_UIPortalView *_UIFrozenPortalWithSource(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[_UIPortalView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
  [(_UIPortalView *)v5 setName:v3];

  v6 = [v4 sourceContextID];
  v7 = [(_UIPortalView *)v5 portalLayer];
  [v7 setSourceContextId:v6];

  v8 = [v4 sourceLayerRenderID];
  v9 = [(_UIPortalView *)v5 portalLayer];
  [v9 setSourceLayerRenderId:v8];

  [(_UIPortalView *)v5 _setGeometryFrozen:1];
  [(UIView *)v5 setUserInteractionEnabled:0];
  [(_UIPortalView *)v5 setMatchesAlpha:1];
  [(_UIPortalView *)v5 setHidesSourceView:1];
  [(_UIPortalView *)v5 setMatchesTransform:1];
  [(_UIPortalView *)v5 setMatchesPosition:1];

  return v5;
}

double _UIPointerShapeOffsetFromModelPosition(void *a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [v7 referenceView];
  [v8 convertPoint:v9 toView:{a3, a4}];
  v11 = v10;

  [v7 rect];
  v13 = v12;
  v15 = v14;

  return v11 - (v13 + v15 * 0.5);
}

void sub_1898E7B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromUISceneAppearanceStyle(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown (%li)", a1];
  }

  else
  {
    v2 = off_1E710A188[a1];
  }

  return v2;
}

void __UIApplicationSceneClientSettingAppendCustomDescription_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __UIApplicationSceneClientSettingAppendCustomDescription_block_invoke_2;
  v5[3] = &unk_1E710A240;
  v6 = WeakRetained;
  v4 = WeakRetained;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __UIApplicationSceneClientSettingAppendCustomDescription_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = +[_UIStatusBar stringForStatusBarStyle:](_UIStatusBar, "stringForStatusBarStyle:", [v10 integerValue]);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v10 stringValue];
  }

  v9 = v8;

  [*(a1 + 32) appendString:v9 withName:v5 skipIfEmpty:1];
}

void __UIApplicationSceneClientSettingAppendCustomDescription_block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) description];
        v9 = [WeakRetained appendObject:v8 withName:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

__CFString *UIApplicationSceneStringForApplicationStatusBarPart(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return @"(none)";
    }

    if (a1 == 1)
    {
      return @"leading";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return @"trailing";
      case 4:
        return @"center";
      case 0xFFFFLL:
        return @"(all)";
    }
  }

  return @"(other)";
}

__CFString *UIApplicationSceneStringForInterfaceOrientationMode(uint64_t a1)
{
  v1 = @"alwaysAll";
  v2 = @"legacy";
  if (a1 != 100)
  {
    v2 = 0;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  v3 = @"unknown";
  v4 = @"dynamic";
  if (a1 != 1)
  {
    v4 = 0;
  }

  if (a1)
  {
    v3 = v4;
  }

  if (a1 <= 1)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

__CFString *UIApplicationSceneSettingKeyDescription(uint64_t a1)
{
  if ((a1 - 1) > 0x2B)
  {
    return 0;
  }

  else
  {
    return off_1E710A408[a1 - 1];
  }
}

__CFString *UIApplicationSceneSettingValueDescription(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  switch(a1)
  {
    case 1:
    case 6:
    case 7:
    case 41:
      BSSettingFlagIsYes();
      v9 = NSStringFromBOOL();
      goto LABEL_5;
    case 2:
      v9 = +[UIApplication stringForStatusBarStyleOverrides:](UIApplication, "stringForStatusBarStyleOverrides:", [v4 integerValue]);
      goto LABEL_5;
    case 3:
      v17 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents([v4 unsignedIntegerValue]);
      v18 = [v17 componentsJoinedByString:{@", "}];
      goto LABEL_38;
    case 4:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v4, "integerValue")];
      goto LABEL_3;
    case 10:
      v9 = UIApplicationSceneStringForUserInterfaceStyle([v4 integerValue]);
      goto LABEL_5;
    case 13:
      [v4 integerValue];
      v9 = BSDeviceOrientationDescription();
      goto LABEL_5;
    case 19:
      v20 = [v4 integerValue];
      if (v20 <= 1)
      {
        if (!v20)
        {
          v6 = @"(none)";
          goto LABEL_6;
        }

        if (v20 == 1)
        {
          v6 = @"leading";
          goto LABEL_6;
        }
      }

      else
      {
        switch(v20)
        {
          case 2:
            v6 = @"trailing";
            goto LABEL_6;
          case 4:
            v6 = @"center";
            goto LABEL_6;
          case 0xFFFFLL:
            v6 = @"(all)";
            goto LABEL_6;
        }
      }

      v6 = @"(other)";
LABEL_6:

      return v6;
    case 20:
      [v4 CGRectValue];
      v9 = NSStringFromCGRect(v22);
      goto LABEL_5;
    case 21:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v4, "unsignedIntegerValue")];
      goto LABEL_3;
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 42:
      v7 = MEMORY[0x1E696AEC0];
      [v4 doubleValue];
      [v7 stringWithFormat:@"%.2f", v8];
      goto LABEL_3;
    case 30:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%x", objc_msgSend(v4, "unsignedIntegerValue")];
      goto LABEL_3;
    case 31:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%lx", objc_msgSend(v4, "unsignedIntegerValue")];
      v9 = LABEL_3:;
      goto LABEL_5;
    case 33:
      v9 = _NSStringFromUIPointerLockStatus([v4 integerValue]);
      goto LABEL_5;
    case 35:
      v11 = [v4 unsignedIntegerValue];
      v12 = @"alwaysAll";
      v13 = @"legacy";
      if (v11 != 100)
      {
        v13 = 0;
      }

      if (v11 != 2)
      {
        v12 = v13;
      }

      v14 = @"unknown";
      v15 = @"dynamic";
      if (v11 != 1)
      {
        v15 = 0;
      }

      if (v11)
      {
        v14 = v15;
      }

      if (v11 <= 1)
      {
        v6 = v14;
      }

      else
      {
        v6 = v12;
      }

      goto LABEL_6;
    case 36:
      v17 = [(_UIEventDeferringEnvironmentsContainer *)v4 environments];
      v18 = _UIEventDeferringEnvironmentsContainerSetDescription(v17);
LABEL_38:
      v6 = v18;

      goto LABEL_6;
    case 37:
      v16 = objc_opt_class();
      v9 = NSStringFromClass(v16);
      goto LABEL_5;
    case 38:
      v19 = [v4 unsignedIntegerValue];
      if ((v19 - 1) > 2)
      {
        v6 = @"notSupported";
      }

      else
      {
        v6 = off_1E710A568[v19 - 1];
      }

      goto LABEL_6;
    case 43:
      [v4 unsignedIntegerValue];
      v9 = _UISStringForSystemReferenceAngleMode();
LABEL_5:
      v6 = v9;
      goto LABEL_6;
    default:
      goto LABEL_6;
  }
}

uint64_t _UISolariumIsLowPerformanceDevice()
{
  if (qword_1ED49E128 != -1)
  {
    dispatch_once(&qword_1ED49E128, &__block_literal_global_2_11);
  }

  return byte_1ED49E111;
}

uint64_t _UIFlexibleWindowingEnabled()
{
  if (qword_1ED49E138 != -1)
  {
    dispatch_once(&qword_1ED49E138, &__block_literal_global_9_1);
  }

  return byte_1ED49E113;
}

uint64_t _UIIgnoreRequiresFullScreenForFirstPartiesEnabled()
{
  if (qword_1ED49E150 != -1)
  {
    dispatch_once(&qword_1ED49E150, &__block_literal_global_18_3);
  }

  return byte_1ED49E116;
}

uint64_t _UIScrollPocketFrameCacheEnabled()
{
  LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ScrollPocketFrameCache, @"ScrollPocketFrameCache");
  if (byte_1ED48B134)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t _UIPlasmaEnabled()
{
  if (qword_1ED49E120 != -1)
  {
    dispatch_once(&qword_1ED49E120, &__block_literal_global_267);
  }

  if (_MergedGlobals_1116 == 1)
  {
    if (qword_1ED49E160 != -1)
    {
      dispatch_once(&qword_1ED49E160, &__block_literal_global_25_4);
    }

    v0 = byte_1ED49E118;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t _UISolariumMetricsEnabled()
{
  if (qword_1ED49E170 != -1)
  {
    dispatch_once(&qword_1ED49E170, &__block_literal_global_30_1);
  }

  return byte_1ED49E11A;
}

void __rip_break_invalid_began__(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = *(__UILogGetCategoryCachedImpl("ResponderIntegrityProtection", &__rip_break_invalid_began_____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = [v5 diffToRecord:v6 press:v7];
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v10;
    v15 = 2080;
    v16 = "__rip_break_invalid_began__";
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Received presses began for a press that's already being tracked: %@\n%@\nSet a breakpoint in %s to debug this issue.", &v11, 0x20u);
  }
}

void __rip_break_invalid_ended__(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *(__UILogGetCategoryCachedImpl("ResponderIntegrityProtection", &__rip_break_invalid_ended_____s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412546;
    v4 = v1;
    v5 = 2080;
    v6 = "__rip_break_invalid_ended__";
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Received presses ended for a press that isn't tracked: %@\nSet a breakpoint in %s to debug this issue.", &v3, 0x16u);
  }
}

void __appendDescription(void *a1, void *a2, void *a3, int a4)
{
  v18 = a1;
  v7 = a3;
  if (a4 <= 0)
  {
    v8 = 45;
  }

  else
  {
    v8 = 43;
  }

  if (a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 62;
  }

  v10 = a2;
  v11 = [v7 responder];

  if (v11 != v10)
  {
    v12 = [v7 responder];
    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v13 stringWithFormat:@"<%@: %p>", v15, v12];
    }

    else
    {
      v16 = @"(nil)";
    }

    [v18 appendFormat:@"%c%c %@\n", v9, v9, v16];
  }

  v17 = NSStringFromClass([v7 clazz]);
  [v18 appendFormat:@"  %c %@\n", v9, v17];
}

void _rip_inject_method(objc_class *a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___rip_inject_method_block_invoke;
  v13[3] = &__block_descriptor_48_e14_v32__0_8_16_24lu32l8;
  v13[4] = a1;
  v13[5] = a2;
  v4 = _Block_copy(v13);
  v5 = imp_implementationWithBlock(v4);

  if (!class_addMethod(a1, a2, v5, "v@:@@"))
  {
    InstanceMethod = class_getInstanceMethod(a1, a2);
    v7 = method_setImplementation(InstanceMethod, v5);
    v8 = _rip_originalSelectorForSelector(a2, a1);
    if (!class_addMethod(a1, v8, v7, "v@:@@"))
    {
      v9 = *(__UILogGetCategoryCachedImpl("ResponderIntegrityProtection", &_rip_inject_method___s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = NSStringFromClass(a1);
        v12 = NSStringFromSelector(a2);
        *buf = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Unable to add original method implementation for class %@ and selector %@. This will likely crash at runtime.", buf, 0x16u);
      }
    }
  }
}

void ___rip_inject_method_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  if (sel_pressesBegan_withEvent_ == v10)
  {
    v15 = 0;
  }

  else if (sel_pressesChanged_withEvent_ == v10)
  {
    v15 = 1;
  }

  else if (sel_pressesEnded_withEvent_ == v10)
  {
    v15 = 3;
  }

  else if (sel_pressesCancelled_withEvent_ == v10)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  v16 = +[_UIResponderIntegrityProtection rip];
  [v16 responder:v12 class:v11 receivedPresses:v13 inPhase:v15 withEvent:v14];

  v17 = _rip_originalSelectorForSelector(v10, v11);
  if (class_respondsToSelector(v11, v17))
  {
    MethodImplementation = class_getMethodImplementation(v11, v17);
    (MethodImplementation)(v12, v10, v13, v14);
  }

  else if (objc_opt_class() != v11)
  {
    v19.receiver = v12;
    v19.super_class = class_getSuperclass(v11);
    objc_msgSendSuper(&v19, v10, v13, v14);
  }
}

SEL _rip_originalSelectorForSelector(const char *a1, Class cls)
{
  v3 = MEMORY[0x1E696AEC0];
  Name = class_getName(cls);
  v5 = [v3 stringWithFormat:@"_original_%s_%s", Name, sel_getName(a1)];
  v6 = NSSelectorFromString(v5);

  return v6;
}

__CFString *UIApplicationSceneStringForCompatibilityMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E710A830[a1];
  }
}

__CFString *UIApplicationSceneProximityDetectionModesDescription(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
    v3 = v2;
    if (v1)
    {
      [(__CFString *)v2 appendString:@" off"];
      v1 &= ~1uLL;
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [(__CFString *)v3 appendString:@" wantsEvents"];
    v1 &= ~2uLL;
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    [(__CFString *)v3 appendString:@" expectsInPortrait"];
    v1 &= ~4uLL;
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if (!v1)
      {
LABEL_8:
        [(__CFString *)v3 appendString:@""]);
        goto LABEL_10;
      }

LABEL_7:
      [(__CFString *)v3 appendFormat:@" %li", v1];
      goto LABEL_8;
    }

LABEL_16:
    [(__CFString *)v3 appendString:@" expectsInLandscape"];
    v1 &= ~8uLL;
    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = @"none";
LABEL_10:

  return v3;
}

__CFString *UIApplicationSceneStringForClassicMode(uint64_t a1)
{
  if (a1 > 5)
  {
    v1 = @"12.9 pad";
    v8 = @"11 rounded pad";
    v9 = @"originalTV";
    if (a1 != 100)
    {
      v9 = 0;
    }

    if (a1 != 10)
    {
      v8 = v9;
    }

    if (a1 != 9)
    {
      v1 = v8;
    }

    v4 = @"6.5 rounded phone";
    v10 = @"pad";
    v11 = @"10.5 pad";
    if (a1 != 8)
    {
      v11 = 0;
    }

    if (a1 != 7)
    {
      v10 = v11;
    }

    if (a1 != 6)
    {
      v4 = v10;
    }

    v7 = a1 <= 8;
  }

  else
  {
    v1 = @"4.7 phone";
    v2 = @"5.5 phone";
    v3 = @"5.8 rounded phone";
    if (a1 != 5)
    {
      v3 = 0;
    }

    if (a1 != 4)
    {
      v2 = v3;
    }

    if (a1 != 3)
    {
      v1 = v2;
    }

    v4 = @"none";
    v5 = @"phone";
    v6 = @"4 phone";
    if (a1 != 2)
    {
      v6 = 0;
    }

    if (a1 != 1)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = v5;
    }

    v7 = a1 <= 2;
  }

  if (v7)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

__CFString *UIApplicationSceneStringForUserInterfaceStyle(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E710A848[a1];
  }
}

__CFString *_UIStatusBarAnimationTypeDescription(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 1)
  {
    v1 = @"fade";
  }

  if (a1 == 2)
  {
    return @"slide";
  }

  else
  {
    return v1;
  }
}

void sub_1898FC4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1898FD048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 200), 8);
  _Block_object_dispose((v34 - 168), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1898FDB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1898FEBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1898FF128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1898FF9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_189900460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189900824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899040EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UIITunesStoreResolvedURLForHTTPURL(void *a1)
{
  v1 = [a1 iTunesStoreURL];
  if (v1 && ([UIApp canOpenURL:v1] & 1) == 0)
  {

    v1 = 0;
  }

  return v1;
}

void sub_18990647C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id getSTKImageGlyphDataSourceClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getSTKImageGlyphDataSourceClass_softClass;
  v6 = getSTKImageGlyphDataSourceClass_softClass;
  if (!getSTKImageGlyphDataSourceClass_softClass)
  {
    StickerKitLibraryCore();
    v4[3] = objc_getClass("STKImageGlyphDataSource");
    getSTKImageGlyphDataSourceClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_189906E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189907084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189907488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189909CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSTKImageGlyphDataSourceClass_block_invoke(uint64_t a1)
{
  StickerKitLibraryCore();
  result = objc_getClass("STKImageGlyphDataSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTKImageGlyphDataSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void StickerKitLibraryCore()
{
  if (!StickerKitLibraryCore_frameworkLibrary)
  {
    StickerKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __StickerKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StickerKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSTKStickerViewClass_block_invoke(uint64_t a1)
{
  StickerKitLibraryCore();
  result = objc_getClass("STKStickerView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTKStickerViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _UIApplicationCallWhenBackgroundTaskCountReachesZero(void *a1)
{
  block = a1;
  os_unfair_lock_lock(&stru_1ED49E204);
  if ([qword_1ED49E250 count])
  {
    v1 = qword_1ED49E258;
    if (!qword_1ED49E258)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v3 = qword_1ED49E258;
      qword_1ED49E258 = v2;

      v1 = qword_1ED49E258;
    }

    v4 = [block copy];
    [v1 addObject:v4];
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  os_unfair_lock_unlock(&stru_1ED49E204);
}

void ___doAddBackgroundTask_block_invoke_111(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E320) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    *buf = 134217984;
    v7 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Calling expiration handler for non-acquired background assertion: task ID = %lu", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___doAddBackgroundTask_block_invoke_112;
  block[3] = &unk_1E70F3590;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  os_unfair_lock_lock(&stru_1ED49E204);
  NSMapRemove(qword_1ED49E250, *(*(a1 + 32) + 8));
  if (![qword_1ED49E250 count])
  {
    _fireBackgroundTaskCountReachedZeroHandlers_Locked();
  }

  os_unfair_lock_unlock(&stru_1ED49E204);
}

void _backgroundTaskExpirationWarningTimerFired(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1ED49E2C8 != a1)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v16 = "void _backgroundTaskExpirationWarningTimerFired(CFRunLoopTimerRef, void *)";
        v17 = 2112;
        v18 = qword_1ED49E2C8;
        v19 = 2112;
        v20 = a1;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "%s called with unexpected timer (_backgroundTaskExpirationTimer = %@, thisTimer = %@)", buf, 0x20u);
      }
    }
  }

  else if (qword_1ED49E2C8 != a1)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E330) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "void _backgroundTaskExpirationWarningTimerFired(CFRunLoopTimerRef, void *)";
      v17 = 2112;
      v18 = qword_1ED49E2C8;
      v19 = 2112;
      v20 = a1;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s called with unexpected timer (_backgroundTaskExpirationTimer = %@, thisTimer = %@)", buf, 0x20u);
    }
  }

  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
  os_unfair_lock_lock(&stru_1ED49E204);
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, qword_1ED49E250);
  value = 0;
  if (NSNextMapEnumeratorPair(&enumerator, 0, &value))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      if ((*(value + 48) & 1) == 0)
      {
        v4 = *(value + 5);
        if (__tp.tv_sec - v4 < 34)
        {
          if (v4 - __tp.tv_sec + 35 >= v3)
          {
            v8 = v3;
          }

          else
          {
            v8 = v4 - __tp.tv_sec + 35;
          }

          if (v2)
          {
            v3 = v8;
          }

          else
          {
            v3 = v4 - __tp.tv_sec + 35;
          }

          v2 = 1;
        }

        else
        {
          if (([@"com.apple.WebKit.ProcessAssertion" isEqualToString:*(value + 4)] & 1) == 0)
          {
            v5 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E338) + 8);
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              v6 = *(value + 1);
              v7 = *(value + 4);
              *buf = 134218499;
              v16 = v6;
              v17 = 2113;
              v18 = v7;
              v19 = 2048;
              v20 = 30;
              _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Background Task %lu (%{private}@), was created over %lu seconds ago. In applications running in the background, this creates a risk of termination. Remember to call UIApplication.endBackgroundTask(_:) for your task in a timely manner to avoid this.", buf, 0x20u);
            }
          }

          *(value + 48) = 1;
        }
      }
    }

    while (NSNextMapEnumeratorPair(&enumerator, 0, &value));
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  NSEndMapTableEnumeration(&enumerator);
  if (qword_1ED49E2C8)
  {
    CFRelease(qword_1ED49E2C8);
    qword_1ED49E2C8 = 0;
  }

  if (v2)
  {
    _backgroundTaskExpirationWarningTimerSchedule_Locked(v3);
  }

  os_unfair_lock_unlock(&stru_1ED49E204);
}

uint64_t _UILayoutRuleLayoutInfoEqualToLayoutRuleLayoutInfo(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && (*(a1 + 72) == *(a2 + 72) ? (v2 = *(a1 + 80) == *(a2 + 80)) : (v2 = 0), v2 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) != 0))
  {
    v3 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56)))));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

__CFString *_UICompositionSessionStateDescription(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E710ADE8[a1 + 1];
  }
}

void DrawCheckeredPattern(uint64_t a1, CGContext *a2)
{
  v4 = [UIColor colorWithCGColor:*a1];
  if (v4)
  {
    v5 = v4;
    v21 = 0.0;
    v22 = 0.0;
    v19 = 0;
    v20 = 0.0;
LABEL_4:
    [v5 getRed:&v22 green:&v21 blue:&v20 alpha:&v19];
    v6 = v22 + v21 + v20;
    goto LABEL_5;
  }

  v5 = +[UIColor whiteColor];
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0;
  v20 = 0.0;
  if (v5)
  {
    goto LABEL_4;
  }

  v6 = 0.0;
LABEL_5:
  if (v6 / 3.0 <= 0.5)
  {
    v7 = &qword_1ED49A6F0;
    v8 = qword_1ED49A6F0;
    if (!qword_1ED49A6F0)
    {
      v9 = 1.0;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = &_MergedGlobals_5_13;
    v8 = _MergedGlobals_5_13;
    if (!_MergedGlobals_5_13)
    {
      v9 = 0.0;
LABEL_10:
      v10 = [UIColor alloc];
      v11 = [(UIColor *)v10 initWithWhite:v9 alpha:0.2, v19];
      v12 = *v7;
      *v7 = v11;

      v8 = *v7;
    }
  }

  v13 = v8;
  CGContextSetFillColorWithColor(a2, [v5 CGColor]);
  v14 = *(a1 + 8);
  v23.size.width = v14 * 96.0;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.height = v14 * 96.0;
  CGContextFillRect(a2, v23);
  CGContextSetFillColorWithColor(a2, [v13 CGColor]);
  v15 = 0;
  do
  {
    v16 = -2;
    v17 = 6;
    do
    {
      v24.origin.y = v14 * (v17 - 6);
      v24.origin.x = v14 * (6 * v15);
      v24.size.width = v14 * 6.0;
      v24.size.height = v14 * 6.0;
      CGContextFillRect(a2, v24);
      v25.origin.y = v14 * v17;
      v25.origin.x = v14 * (6 * v15 + 6);
      v25.size.width = v14 * 6.0;
      v25.size.height = v14 * 6.0;
      CGContextFillRect(a2, v25);
      v16 += 2;
      v17 += 12;
    }

    while (v16 < 0xE);
    v18 = v15 >= 0xE;
    v15 += 2;
  }

  while (!v18);
}

void ReleasePatternInfo(CGColorRef *a1)
{
  CGColorRelease(*a1);

  free(a1);
}

void sub_189915464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18991821C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899184A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UILocalizedFormat(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a3;
  v11 = a1;
  v12 = _UIKitBundle();
  v13 = [v12 localizedStringForKey:v11 value:v10 table:@"Localizable"];

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [MEMORY[0x1E695DF58] currentLocale];
  v16 = [v14 initWithFormat:v13 locale:v15 arguments:&a9];

  return v16;
}

id _UILocalizedStringWithLocale(void *a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AAE8];
  v19 = a4;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v10 = a1;
  v11 = [v7 arrayWithObjects:&v19 count:1];
  v12 = _UIKitBundle();
  v13 = [v12 localizations];
  v14 = [v6 preferredLocalizationsFromArray:v11 forPreferences:v13];

  v15 = _UIKitBundle();
  v16 = [v14 firstObject];
  v17 = [v15 localizedStringForKey:v10 value:v9 table:@"Localizable" localization:v16];

  return v17;
}

void sub_18991D404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18991F568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18991F7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id UIFeedbackServiceLog()
{
  if (UIFeedbackServiceLog_onceToken != -1)
  {
    dispatch_once(&UIFeedbackServiceLog_onceToken, &__block_literal_global_4_6);
  }

  v1 = UIFeedbackServiceLog___instance;

  return v1;
}

void __UIFeedbackServiceLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIFeedbackService");
  v1 = UIFeedbackServiceLog___instance;
  UIFeedbackServiceLog___instance = v0;
}

id UIGlomojiLog()
{
  if (UIGlomojiLog_onceToken != -1)
  {
    dispatch_once(&UIGlomojiLog_onceToken, &__block_literal_global_8_8);
  }

  v1 = UIGlomojiLog___instance;

  return v1;
}

void __UIGlomojiLog_block_invoke()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "GlomojiAnalytics");
  v1 = UIGlomojiLog___instance;
  UIGlomojiLog___instance = v0;
}

id _UIKBMediaLog_0()
{
  if (qword_1ED49E418 != -1)
  {
    dispatch_once(&qword_1ED49E418, &__block_literal_global_141);
  }

  v1 = qword_1ED49E410;

  return v1;
}

void sub_189922C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_UIRectEdgeDescription(char a1)
{
  if ((a1 & 0xF) == 0)
  {
    v1 = @"none";
    goto LABEL_11;
  }

  if ((a1 & 0xF) == 0xFLL)
  {
    v1 = @"all";
    goto LABEL_11;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (a1)
  {
    [v3 addObject:@"top"];
    if ((a1 & 2) == 0)
    {
LABEL_7:
      if ((a1 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      [v4 addObject:@"bottom"];
      if ((a1 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_7;
  }

  [v4 addObject:@"left"];
  if ((a1 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a1 & 8) != 0)
  {
LABEL_9:
    [v4 addObject:@"right"];
  }

LABEL_10:
  v1 = [v4 componentsJoinedByString:{@", "}];

LABEL_11:

  return v1;
}

void sub_189929418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18992A7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18992B744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18992B960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_UITextFormattingViewControllerHighlightFromColorScheme(void *a1)
{
  v1 = a1;
  if (*off_1E70ECA70 == v1)
  {
    v2 = @"UITextFormattingViewControllerHighlightPurple";
  }

  else if (*off_1E70ECA68 == v1)
  {
    v2 = @"UITextFormattingViewControllerHighlightPink";
  }

  else if (*off_1E70ECA60 == v1)
  {
    v2 = @"UITextFormattingViewControllerHighlightOrange";
  }

  else if (*off_1E70ECA58 == v1)
  {
    v2 = @"UITextFormattingViewControllerHighlightMint";
  }

  else if (*off_1E70ECA48 == v1)
  {
    v2 = @"UITextFormattingViewControllerHighlightBlue";
  }

  else
  {
    v2 = @"UITextFormattingViewControllerHighlightDefault";
  }

  return v2;
}

void sub_18992C0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UITextFormattingViewControllerFormattingDescriptorClasses()
{
  if (qword_1ED49E428 != -1)
  {
    dispatch_once(&qword_1ED49E428, &__block_literal_global_284);
  }

  v1 = _MergedGlobals_1127;

  return v1;
}

void sub_189932174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UIIntervalStandardize(double result, double a2)
{
  if (a2 < 0.0)
  {
    return result + a2;
  }

  return result;
}

double _UIIntervalGetMin(double result, double a2)
{
  if (a2 < 0.0)
  {
    return result + a2;
  }

  return result;
}

double _UIIntervalGetMid(double a1, double a2)
{
  v2 = a1 + a2;
  if (a2 < 0.0)
  {
    a2 = -a2;
    a1 = v2;
  }

  return a1 + a2 * 0.5;
}

double _UIIntervalGetMax(double a1, double a2)
{
  v2 = a1 + a2;
  if (a2 < 0.0)
  {
    a2 = -a2;
    a1 = v2;
  }

  return a1 + a2;
}

BOOL _UIIntervalContainsInterval(double a1, double a2, double a3, double a4)
{
  v4 = a1 + a2;
  if (a2 >= 0.0)
  {
    v4 = a1;
  }

  v5 = a3 + a4;
  if (a4 >= 0.0)
  {
    v5 = a3;
  }

  if (v4 > v5)
  {
    return 0;
  }

  if (a2 < 0.0)
  {
    a2 = -a2;
  }

  v7 = v4 + a2;
  v8 = -a4;
  if (a4 >= 0.0)
  {
    v8 = a4;
  }

  return v7 >= v5 + v8;
}

BOOL _UIIntervalIntersectsInterval(double a1, double a2, double a3, double a4)
{
  if (a4 < 0.0)
  {
    a3 = a3 + a4;
    a4 = -a4;
  }

  if (a2 < 0.0)
  {
    a1 = a1 + a2;
    a2 = -a2;
  }

  if (a1 >= a3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a3;
  }

  v5 = a1 + a2;
  if (v5 >= a3 + a4)
  {
    v5 = a3 + a4;
  }

  return v4 < v5;
}

BOOL _UIIntervalSmartIntersectsInterval(double a1, double a2, double a3, double a4)
{
  v4 = a1 + a2;
  if (a2 < 0.0)
  {
    a2 = -a2;
    a1 = v4;
  }

  v5 = a1 + a2;
  v6 = a3 + a4;
  if (a4 < 0.0)
  {
    a4 = -a4;
    a3 = v6;
  }

  v7 = a3 + a4;
  if (v5 >= v7)
  {
    v5 = v7;
  }

  if (a1 < a3)
  {
    a1 = a3;
  }

  return v5 > a1 + 0.0001;
}

void sub_189935C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UISystemGestureLocationForScrollEventInView(void *a1, void *a2, void *a3)
{
  v6 = [a1 view];
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  [v7 locationInView:v6];
  v9 = v8;
  v11 = v10;

  return _ConvertDeviceReferenceSpacePointToView(a3, v9, v11);
}

uint64_t _UISystemGesturePreviousLocationForTouchInView(void *a1, void *a2, void *a3)
{
  if (!a2)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint _UISystemGesturePreviousLocationForTouchInView(UIGestureRecognizer *const __strong, UITouch *const __strong, UIView *const __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"_UISystemGestureUtilities.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"touch"}];
  }

  v6 = [a1 view];
  [a2 previousLocationInView:v6];
  v8 = v7;
  v10 = v9;

  return _ConvertDeviceReferenceSpacePointToView(a3, v8, v10);
}

double _UISystemGestureVelocityInView(void *a1, void *a2)
{
  v4 = [a1 view];
  [a1 velocityInView:v4];
  _ConvertDeviceReferenceSpaceVectorToView(a2, v5, v6);
  v8 = v7;

  return v8;
}

uint64_t _ConvertDeviceReferenceSpaceVectorToView(void *a1, double a2, double a3)
{
  [a1 frame];
  [a1 convertPoint:0 toView:?];
  v7 = v6;
  v9 = v8;
  v10 = [a1 _window];
  [v10 _convertPointToSceneReferenceSpace:{v7, v9}];
  v12 = v11;
  v14 = v13;

  return _ConvertDeviceReferenceSpacePointToView(a1, a2 + v12, a3 + v14);
}

double _UISystemGestureTranslationInView(void *a1, void *a2)
{
  v4 = [a1 view];
  [a1 translationInView:v4];
  _ConvertDeviceReferenceSpaceVectorToView(a2, v5, v6);
  v8 = v7;

  return v8;
}

uint64_t _UIDocumentViewControllerWantsUIPDocumentLanding()
{
  if (qword_1ED49A470 != -1)
  {
    dispatch_once(&qword_1ED49A470, &__block_literal_global_287);
  }

  return _MergedGlobals_27_1;
}

void sub_189937EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189938AD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1899390B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189939650(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18993979C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18993A148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIDocumentBrowserViewControllerClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49A480)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DocumentManagerLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710B2B0;
    v8 = 0;
    qword_1ED49A480 = _sl_dlopen();
  }

  if (!qword_1ED49A480)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DocumentManagerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDocumentViewController.m" lineNumber:39 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIDocumentBrowserViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIDocumentBrowserViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDocumentViewController.m" lineNumber:40 description:{@"Unable to find class %s", "UIDocumentBrowserViewController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49A478 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DocumentManagerLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49A480 = result;
  return result;
}

void sub_18993ACC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20, id a21, id a22)
{
  objc_destroyWeak(v22 + 7);
  objc_destroyWeak(v22 + 6);
  objc_destroyWeak(v22 + 5);
  objc_destroyWeak(v22 + 4);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_18993AE88(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 7);
  objc_destroyWeak(v1 + 6);
  objc_destroyWeak(v1 + 5);
  _Unwind_Resume(a1);
}

void sub_18993B004(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 7);
  objc_destroyWeak(v1 + 6);
  objc_destroyWeak(v1 + 5);
  _Unwind_Resume(a1);
}

BOOL _UIGetLogMoarUISystemGestureLogsForCarousel()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_LogMoarUISystemGestureLogsForCarousel, _UIInternalPreferencesRevisionVar == _UIInternalPreference_LogMoarUISystemGestureLogsForCarousel))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_LogMoarUISystemGestureLogsForCarousel, @"LogMoarUISystemGestureLogsForCarousel", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_LogMoarUISystemGestureLogsForCarousel;
    }

    while (v0 != _UIInternalPreference_LogMoarUISystemGestureLogsForCarousel);
  }

  return byte_1EA95E49C && v1;
}

id _UIGestureLogDescription(void *a1)
{
  v1 = [a1 name];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = objc_opt_class();
    v3 = NSStringFromClass(v4);
  }

  v5 = v3;

  return v5;
}

uint64_t _UIPBIProxyOwnerActionsForState(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 == v6)
  {

    return 0;
  }

  if (v5 && v6)
  {
    v8 = [v5 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  v10 = [v7 _count];
  if (a1)
  {
    v11 = (v10 != 0) << 8;
    if ([a1 _isEnabled])
    {
      v12 = 0;
    }

    else
    {
      v12 = ([v7 _count] != 0) << 16;
    }

    if (![a1 _isEnabled] || v7 && (v14 = v7[1]) != 0 && objc_msgSend(v14, "count"))
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x1000000;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v12 = v10 != 0;
  }

  return v13 | v11 | v12;
}

void _UIGestureRecognizerUpdateObserver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &_UIGestureRecognizerUpdateObserver___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", v6, 2u);
      }
    }
  }

  _UIGestureEnvironmentUpdate(a3);
}

id _UIGestureEnvironmentSubgraphsBlockedFromResetDescription(uint64_t a1, int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v27 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &_UIGestureEnvironmentSubgraphsBlockedFromResetDescription___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }
  }

  v5 = objc_opt_new();
  v6 = *(a1 + 48);
  v7 = mach_absolute_time();
  if (a2 && (!_UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_GestureBlockedFromResetStateCaptureTimeout, @"GestureBlockedFromResetStateCaptureTimeout") ? (v8 = *&qword_1ED48B170) : (v8 = 2.0), (_UIGestureEnvironmentHasBlockedGestureRecognizerSurpassingTimeout(a1, v7, v8) & 1) == 0))
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No gestures blocked from reset beyond %.1f timeout", *&v8];
    [v5 appendString:v22 withName:0];
    v25 = v5;
  }

  else
  {
    v9 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          if ((_UIGestureEnvironmentGestureRecognizerExistsInSubgraphs(v9, v15) & 1) == 0)
          {
            v16 = _UIGestureEnvironmentSubgraphForGestureRecognizer(a1, v15);
            [v9 addObject:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v12);
    }

    v17 = objc_opt_new();
    v18 = objc_opt_new();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke;
    v29[3] = &unk_1E71042D0;
    v30 = v9;
    v31 = v18;
    v32 = v10;
    v33 = v17;
    v19 = v5;
    v34 = v19;
    v35 = v7;
    v20 = v17;
    v21 = v18;
    v22 = v9;
    [v19 appendBodySectionWithName:@"subgraphs blocked from reset" block:v29];
    v23 = v34;
    v24 = v19;

    v6 = v28;
  }

  return v5;
}

void _UIGestureEnvironmentUpdate(uint64_t a1)
{
  v148 = *MEMORY[0x1E69E9840];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v94 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v94, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v2 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498398) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }
  }

  if (*(a1 + 82))
  {
    goto LABEL_8;
  }

  *(a1 + 82) = 1;
  [(UIGestureEnvironment *)a1 _runTouchContinuationActions];
  if (![(UIGestureEnvironment *)a1 _hasGesturesNeedingUpdate])
  {
    goto LABEL_89;
  }

  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v95 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v95, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4983A8) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }
  }

  v4 = [*(a1 + 16) allObjects];
  if (_UIApplicationProcessIsCarousel())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED4983B0);
    if (*CategoryCachedImpl)
    {
      v96 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v97 = v96;
        v98 = [v4 count];
        *buf = 134217984;
        v147 = v98;
        _os_log_impl(&dword_188A29000, v97, OS_LOG_TYPE_ERROR, "Querying dynamic failure requirements for dirty gestures: %li", buf, 0xCu);
      }
    }
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v138 objects:buf count:16];
  if (v6)
  {
    v105 = *v139;
    do
    {
      v106 = v6;
      for (i = 0; i != v106; i = i + 1)
      {
        if (*v139 != v105)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v138 + 1) + 8 * i);
        if (_UIApplicationProcessIsCarousel())
        {
          v8 = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED4983B8);
          if (*v8)
          {
            v46 = *(v8 + 8);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v47 = v46;
              v48 = [v7 _briefDescription];
              *v143 = 138412290;
              *&v143[4] = v48;
              _os_log_impl(&dword_188A29000, v47, OS_LOG_TYPE_ERROR, "Querying dynamic failure requirements: beginning gestureRecognizerToQuery: %@", v143, 0xCu);
            }
          }
        }

        if (v7)
        {
          v9 = *(v7 + 8);
          if ((v9 & 0x40000000) != 0)
          {
            if (_UIApplicationProcessIsCarousel())
            {
              v41 = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED4983C0);
              if (*v41)
              {
                v42 = *(v41 + 8);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v43 = v42;
                  v44 = [v7 _briefDescription];
                  *v143 = 138412290;
                  *&v143[4] = v44;
                  _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "Early exit from querying dynamic failure requirements: already queried: gestureRecognizerToQuery: %@", v143, 0xCu);
                }
              }
            }

            continue;
          }

          *(v7 + 8) = v9 | 0x40000000;
        }

        v10 = [v7 state];
        if (v7)
        {
          v11 = v10 == 5;
        }

        else
        {
          v11 = 1;
        }

        if (!v11 && (*(v7 + 11) & 0xC) != 0)
        {
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v12 = *(a1 + 40);
          v13 = [v12 countByEnumeratingWithState:&v122 objects:v142 count:16];
          if (!v13)
          {
            goto LABEL_74;
          }

          v14 = *v123;
          while (1)
          {
            v15 = 0;
            do
            {
              if (*v123 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v122 + 1) + 8 * v15);
              if (_UIApplicationProcessIsCarousel())
              {
                v17 = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED4983D0);
                if (*v17)
                {
                  v26 = *(v17 + 8);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    v27 = v26;
                    v28 = [v16 _briefDescription];
                    *v143 = 138412290;
                    *&v143[4] = v28;
                    _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Querying dynamic failure requirements: beginning otherGestureRecognizer: %@", v143, 0xCu);
                  }
                }
              }

              if (v7 == v16 || (-[UIGestureEnvironment gestureRecognizer:requiresGestureRecognizerToFail:](a1, v7, v16) & 1) != 0 || (-[UIGestureEnvironment gestureRecognizer:requiresGestureRecognizerToFail:](a1, v16, v7) & 1) != 0 || ![v7 _affectedByGesture:v16] || (objc_msgSend(v16, "_affectedByGesture:", v7) & 1) == 0)
              {
                if (_UIApplicationProcessIsCarousel())
                {
                  v20 = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED4983D8);
                  if (*v20)
                  {
                    v29 = *(v20 + 8);
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      v30 = v29;
                      v31 = [v7 _briefDescription];
                      v32 = [v16 _briefDescription];
                      *v143 = 138412546;
                      *&v143[4] = v31;
                      *&v143[12] = 2112;
                      *&v143[14] = v32;
                      _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "Early exit from querying dynamic failure requirements: already requires failure or can't be affected: gestureRecognizerToQuery: %@; otherGestureRecognizer: %@", v143, 0x16u);
                    }
                  }
                }
              }

              else
              {
                if ([v7 _needsDynamicFailureRequirementForGestureRecognizer:v16])
                {
                  v18 = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED4983E0);
                  if (*v18)
                  {
                    v33 = *(v18 + 8);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      log = v33;
                      v34 = [v7 _briefDescription];
                      v35 = [v16 _briefDescription];
                      *v143 = 138412546;
                      *&v143[4] = v34;
                      *&v143[12] = 2112;
                      *&v143[14] = v35;
                      _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "Dynamic Failure Requirement: %@ requires %@ to fail", v143, 0x16u);
                    }
                  }

                  v19 = v7;
                }

                else
                {
                  if (![v7 _needsDynamicDependentRequirementForGestureRecognizer:v16])
                  {
                    goto LABEL_50;
                  }

                  v21 = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED4983E8);
                  if (*v21)
                  {
                    v37 = *(v21 + 8);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      loga = v37;
                      v38 = [v16 _briefDescription];
                      v39 = [v7 _briefDescription];
                      *v143 = 138412546;
                      *&v143[4] = v38;
                      *&v143[12] = 2112;
                      *&v143[14] = v39;
                      _os_log_impl(&dword_188A29000, loga, OS_LOG_TYPE_ERROR, "Dynamic Failure Requirement: %@ requires %@ to fail", v143, 0x16u);
                    }
                  }

                  v19 = v16;
                  v16 = v7;
                }

                if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
                {
                  dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
                }

                if (_UIIsGesturesFrameworkEnabled_enabled == 1)
                {
                  if (os_variant_has_internal_diagnostics())
                  {
                    v36 = __UIFaultDebugAssertLog();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                    {
                      *v143 = 0;
                      _os_log_fault_impl(&dword_188A29000, v36, OS_LOG_TYPE_FAULT, "Shouldn't end up here", v143, 2u);
                    }
                  }

                  else
                  {
                    v22 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498328) + 8);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      *v143 = 0;
                      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Shouldn't end up here", v143, 2u);
                    }
                  }
                }

                v23 = [*(a1 + 96) objectForKey:v16];
                v24 = [*(a1 + 96) objectForKey:v19];
                v25 = [*(a1 + 88) addUniqueEdgeWithLabel:@"dynamicFailureRequirement" sourceNode:v23 targetNode:v24 directed:1 properties:0];
              }

LABEL_50:
              ++v15;
            }

            while (v13 != v15);
            v40 = [v12 countByEnumeratingWithState:&v122 objects:v142 count:16];
            v13 = v40;
            if (!v40)
            {
LABEL_74:

              goto LABEL_81;
            }
          }
        }

        if (_UIApplicationProcessIsCarousel())
        {
          v45 = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED4983C8);
          if (*v45)
          {
            v49 = *(v45 + 8);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v50 = v49;
              v51 = [v7 _briefDescription];
              v52 = _UIGestureRecognizerStateString([v7 state]);
              *v143 = 138412546;
              *&v143[4] = v51;
              *&v143[12] = 2112;
              *&v143[14] = v52;
              _os_log_impl(&dword_188A29000, v50, OS_LOG_TYPE_ERROR, "Early exit from querying dynamic failure requirements: state or subclass requirements: gestureRecognizerToQuery: %@; state: %@", v143, 0x16u);
            }
          }
        }

LABEL_81:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v138 objects:buf count:16];
    }

    while (v6);
  }

  while (1)
  {
LABEL_89:
    if ([(UIGestureEnvironment *)a1 _hasGesturesNeedingUpdate])
    {
      if ((*(a1 + 81) & 1) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_93;
    }

    if ((*(a1 + 81) & 1) == 0)
    {
      break;
    }

LABEL_93:
    *(a1 + 81) = 0;
    if ([*(a1 + 40) count] >= 2)
    {
      if (*(a1 + 80) == 1)
      {
        [*(a1 + 40) sortUsingSelector:sel__depthFirstCompare_];
        *(a1 + 80) = 0;
      }

      v53 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(a1 + 40)];
      _UIExclusionMatrixPerformExclusion(v53);
    }

LABEL_97:
    v54 = objc_opt_new();
    while ([(UIGestureEnvironment *)a1 _hasGesturesNeedingUpdate])
    {
      v55 = [*(a1 + 16) allObjects];
      v56 = [v55 sortedArrayUsingSelector:sel__depthFirstCompare_];

      [*(a1 + 16) removeAllObjects];
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v57 = v56;
      v58 = [v57 countByEnumeratingWithState:&v114 objects:v133 count:16];
      if (v58)
      {
        v59 = *v115;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v115 != v59)
            {
              objc_enumerationMutation(v57);
            }

            v61 = *(*(&v114 + 1) + 8 * j);
            v62 = [v61 container];

            if (v62)
            {
              [v54 addObject:v61];
            }

            [(UIGestureEnvironment *)a1 _clearGestureNeedsUpdate:v61];
            if ([v61 state] >= 3)
            {
              [(UIGestureEnvironment *)a1 _notifyDependentsGestureRecognizerHasCompleted:v61];
            }
          }

          v58 = [v57 countByEnumeratingWithState:&v114 objects:v133 count:16];
        }

        while (v58);
      }

      [(UIGestureEnvironment *)a1 _queueGestureRecognizersForResetIfFinished:v57];
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v63 = v54;
    v64 = [v63 countByEnumeratingWithState:&v110 objects:v132 count:16];
    if (v64)
    {
      v65 = *v111;
      do
      {
        for (k = 0; k != v64; ++k)
        {
          if (*v111 != v65)
          {
            objc_enumerationMutation(v63);
          }

          [(UIGestureRecognizer *)*(*(&v110 + 1) + 8 * k) _updateGestureForActiveEvents];
        }

        v64 = [v63 countByEnumeratingWithState:&v110 objects:v132 count:16];
      }

      while (v64);
    }
  }

  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v99 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v99, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v67 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4983F0) + 8);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }
  }

  if ([*(a1 + 24) count])
  {
    v68 = [*(a1 + 24) allObjects];
    [*(a1 + 24) removeAllObjects];
    v69 = *(a1 + 88);
    v70 = objc_opt_new();
    v71 = *(a1 + 32);
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v127 = ___UIGestureEnvironmentUpdateGestureGraph_block_invoke;
    v128 = &unk_1E710B558;
    v129 = a1;
    v102 = v69;
    v130 = v102;
    obja = v71;
    v131 = obja;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v109 = v68;
    v72 = [v109 countByEnumeratingWithState:&v122 objects:buf count:16];
    if (v72)
    {
      v73 = *v123;
      do
      {
        for (m = 0; m != v72; ++m)
        {
          if (*v123 != v73)
          {
            objc_enumerationMutation(v109);
          }

          v75 = *(*(&v122 + 1) + 8 * m);
          if ((_UIGestureEnvironmentGestureRecognizerExistsInSubgraphs(v70, v75) & 1) == 0)
          {
            v76 = _UIGestureEnvironmentSubgraphForGestureRecognizer(a1, v75);
            [v70 addObject:v76];
          }
        }

        v72 = [v109 countByEnumeratingWithState:&v122 objects:buf count:16];
      }

      while (v72);
    }

    v144 = 0u;
    v145 = 0u;
    memset(v143, 0, sizeof(v143));
    v107 = v70;
    v77 = [v107 countByEnumeratingWithState:v143 objects:v142 count:16];
    if (v77)
    {
      v78 = **&v143[16];
      do
      {
        v79 = 0;
        do
        {
          if (**&v143[16] != v78)
          {
            objc_enumerationMutation(v107);
          }

          v80 = *(*&v143[8] + 8 * v79);
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v81 = v80;
          v82 = [v81 countByEnumeratingWithState:&v118 objects:&v138 count:16];
          if (v82)
          {
            v83 = *v119;
            while (2)
            {
              for (n = 0; n != v82; n = n + 1)
              {
                if (*v119 != v83)
                {
                  objc_enumerationMutation(v81);
                }

                v85 = *(*(&v118 + 1) + 8 * n);
                if ([(UIGestureRecognizer *)v85 _isActive])
                {
                  v82 = v85;
                  goto LABEL_150;
                }
              }

              v82 = [v81 countByEnumeratingWithState:&v118 objects:&v138 count:16];
              if (v82)
              {
                continue;
              }

              break;
            }

            v127(v126, v81);
            v82 = 0;
          }

          else
          {
LABEL_150:

            v86 = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED498400);
            if (*v86)
            {
              v87 = *(v86 + 8);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
              {
                v88 = v87;
                v89 = [v82 debugDescription];
                v90 = [v81 valueForKeyPath:@"_briefDescription"];
                *v134 = 138412546;
                v135 = v89;
                v136 = 2112;
                v137 = v90;
                _os_log_impl(&dword_188A29000, v88, OS_LOG_TYPE_ERROR, "subgraph NOT ready for reset \nblocking gesture: %@\ngraph: %@", v134, 0x16u);
              }
            }
          }

          ++v79;
        }

        while (v79 != v77);
        v91 = [v107 countByEnumeratingWithState:v143 objects:v142 count:16];
        v77 = v91;
      }

      while (v91);
    }
  }

  if (*__UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED4983A0))
  {
    _UIGestureEnvironmentLogSubgraphsBlockedFromResetIfNeeded(a1);
  }

  v92 = [UIApp _gestureDelayedEventComponentDispatcher];
  [(UIGestureDelayedEventComponentDispatcher *)v92 sendDelayedTouches];

  v93 = [UIApp _gestureDelayedEventComponentDispatcher];
  [(UIGestureDelayedEventComponentDispatcher *)v93 sendDelayedPresses];

LABEL_8:
  *(a1 + 82) = 0;
}

void sub_189943280(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    *(v2 + 82) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_189944558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIGestureEnvironmentHasBlockedGestureRecognizerSurpassingTimeout(uint64_t a1, uint64_t a2, double a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &_UIGestureEnvironmentHasBlockedGestureRecognizerSurpassingTimeout___s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }
  }

  v7 = *(a1 + 48);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (v13)
        {
          v13 = *(v13 + 216);
        }

        if (_UIMediaTimeForMachTime(a2 - v13) > a3)
        {
          v14 = 1;
          goto LABEL_19;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_19:

  return v14;
}

uint64_t _UIGestureEnvironmentGestureRecognizerExistsInSubgraphs(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &_UIGestureEnvironmentGestureRecognizerExistsInSubgraphs___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * i) containsObject:{a2, v13}])
        {
          v10 = 1;
          goto LABEL_17;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_17:

  return v10;
}

id _UIGestureEnvironmentSubgraphForGestureRecognizer(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498388) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }
  }

  v5 = objc_opt_new();
  v6 = [(UIGestureEnvironment *)a1 _nodeForGestureRecognizer:a2];
  if (v6)
  {
    v7 = *(a1 + 88);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___UIGestureEnvironmentSubgraphForGestureRecognizer_block_invoke;
    v14[3] = &unk_1E710B530;
    v15 = v5;
    [v7 traverseGraphDepthFirstFromNode:v6 directed:0 usingBlock:v14];
  }

  else
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED498390);
    if (*CategoryCachedImpl)
    {
      v11 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [a2 _briefDescription];
        *buf = 136315394;
        v17 = "NSMutableSet<UIGestureRecognizer *> *_UIGestureEnvironmentSubgraphForGestureRecognizer(UIGestureEnvironment *__unsafe_unretained, UIGestureRecognizer *__unsafe_unretained)";
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s - Unable to find Node %@", buf, 0x16u);
      }
    }
  }

  return v5;
}

void _UIGestureEnvironmentLogSubgraphsBlockedFromResetIfNeeded(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v13) = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Shouldn't end up here", &v13, 2u);
      }
    }

    else
    {
      v2 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498408) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Shouldn't end up here", &v13, 2u);
      }
    }
  }

  v3 = mach_absolute_time();
  if (_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_939, @"LogSubgraphsBlockedFromResetInterval"))
  {
    v4 = 60.0;
  }

  else
  {
    v4 = *&qword_1ED48B180;
  }

  if (_UIMediaTimeForMachTime(v3 - *(a1 + 56)) > v4)
  {
    *(a1 + 56) = mach_absolute_time();
    v5 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B188, @"GestureBlockedFromResetLogTimeout");
    v6 = *&qword_1ED48B190;
    if (v5)
    {
      v6 = 5.0;
    }

    if (_UIGestureEnvironmentHasBlockedGestureRecognizerSurpassingTimeout(a1, v3, v6))
    {
      v7 = _UIGestureEnvironmentSubgraphsBlockedFromResetDescription(a1, 0);
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED498410);
      if (*CategoryCachedImpl)
      {
        v10 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = v10;
          v12 = [v7 description];
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
        }
      }
    }
  }
}

void sub_189946820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_UIScreenEdgeSystemGestureModeDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E710B620[a1];
  }

  return v2;
}

id _UIGestureRecognizerAllowedTouchTypesArrayFromMask(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 0x10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Touch type mask contains invalid value: %ld. Must be one of UITouchTypeDirect, UITouchTypeIndirect, UITouchTypeStylus, or UITouchTypeIndirectPointer", a1 & 0xFFFFFFFFFFFFFFF0}];
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v1 >= 1)
  {
    v3 = 0;
    do
    {
      if (v1)
      {
        v4 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
        [v2 addObject:v4];
      }

      ++v3;
      v5 = v1 >= 2;
      v1 = v1 >> 1;
    }

    while (v5);
  }

  return v2;
}

void _UIGestureRecognizerDistanceBetweenTouches(void *a1)
{
  if ([a1 count] == 2)
  {
    v2 = [a1 objectAtIndexedSubscript:0];
    [v2 locationInView:0];

    v3 = [a1 objectAtIndexedSubscript:1];
    [v3 locationInView:0];
  }
}

void _UIExclusionMatrixPerformExclusion(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v1 = [v2 count];
  memset(v7, 0, sizeof(v7));
  if (v1 * v1)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v7, (((v1 * v1) - 1) >> 6) + 1);
  }

  __p = 0;
  v5 = 0;
  v6 = 0;
  if (v1 << 32)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  v3[0] = v1;
  v3[1] = v7;
  v3[2] = &__p;
  if (*__UILogGetCategoryCachedImpl("GestureExclusion", &_MergedGlobals_1133))
  {
    _UIExclusionMatrixLog(v3, v2);
  }

  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }
}

void sub_189950ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void _UIExclusionMatrixLog(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v3 = [v27 count];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureExclusion", &qword_1ED49E518);
  if (*CategoryCachedImpl)
  {
    v23 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Gestures relevant to exclusion:", buf, 2u);
    }
  }

  v5 = [MEMORY[0x1E696AD60] stringWithString:{@"Exclusion matrix (a mark at row X, column Y indicates gesture Y will try to exclude X a star next to column X indicates that X has recognized):\n   |"}];;
  v26 = v3;
  v6 = v3;
  if (v3 >= 1)
  {
    v7 = 0;
    v8 = v3 & 0x7FFFFFFF;
    do
    {
      v9 = __UILogGetCategoryCachedImpl("GestureExclusion", &qword_1ED49E520);
      if (*v9)
      {
        v13 = *(v9 + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          log = v13;
          v14 = [v27 objectAtIndexedSubscript:v7];
          v15 = [v14 _excludableDescription];
          *buf = 134218242;
          v29 = (v7 + 1);
          v30 = 2112;
          v16 = v15;
          v31 = v15;
          _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "%2ld: %@", buf, 0x16u);

          v13 = log;
        }
      }

      v10 = [v27 objectAtIndexedSubscript:v7];
      v11 = [v10 _canExcludeOtherExcludables];

      ++v7;
      if (v11)
      {
        v12 = 42;
      }

      else
      {
        v12 = 32;
      }

      [v5 appendFormat:@" %2ld%c", v7, v12];
    }

    while (v8 != v7);
  }

  [v5 appendFormat:@"\n---+"];
  if (v6 >= 1)
  {
    do
    {
      [v5 appendString:@"----"];
      --v6;
    }

    while (v6);
    v17 = 0;
    v18 = v26 & 0x7FFFFFFF;
    do
    {
      v19 = v17 + 1;
      [v5 appendFormat:@"\n%2ld |", v17 + 1];
      if ((v26 & 0x7FFFFFFF) != 0)
      {
        v20 = 0;
        do
        {
          if ((*(**(a1 + 8) + (((v20 + v17 * *a1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v20 + v17 * *a1)))
          {
            v21 = 88;
          }

          else
          {
            v21 = 32;
          }

          [v5 appendFormat:@"  %c ", v21];
          ++v20;
        }

        while (v18 != v20);
      }

      ++v17;
    }

    while (v19 != v18);
  }

  v22 = __UILogGetCategoryCachedImpl("GestureExclusion", &qword_1ED49E528);
  if (*v22)
  {
    v24 = *(v22 + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

void sub_1899532F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _CGRectScaledToAspectFitWithinRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  x = a1;
  Width = CGRectGetWidth(*&a1);
  rect = a4;
  v23.origin.x = x;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  Height = CGRectGetHeight(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v16 = CGRectGetWidth(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  v17 = CGRectGetHeight(v25);
  if (Width - v16 <= 2.22044605e-16)
  {
    if (Height - v17 > 2.22044605e-16)
    {
      CGAffineTransformMakeScale(&v22, v17 / Height, v17 / Height);
      v28.origin.x = x;
      v28.origin.y = a2;
      v28.size.width = a3;
      v28.size.height = rect;
      *&x = CGRectApplyAffineTransform(v28, &v22);
    }
  }

  else
  {
    CGAffineTransformMakeScale(&v22, v16 / Width, v16 / Width);
    v26.origin.x = x;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = rect;
    v27 = CGRectApplyAffineTransform(v26, &v22);
    x = v27.origin.x;
    CGRectGetHeight(v27);
  }

  return x;
}

void UILabelNewAnimatingSummarySymbolView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v6 = _MergedGlobals_1136;
  v24 = _MergedGlobals_1136;
  if (!_MergedGlobals_1136)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getSwiftUIGlue2ClassSymbolLoc_block_invoke;
    v20 = &unk_1E70F2F20;
    v7 = SwiftUILibrary();
    v22[3] = dlsym(v7, "SwiftUIGlue2Class");
    _MergedGlobals_1136 = v22[3];
    v6 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v6)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class _SwiftUIGlue2Class(void)"];
    [v15 handleFailureInFunction:v16 file:@"_UILabelAnimatingSummarySymbolBridge.m" lineNumber:13 description:{@"%s", dlerror(), v17, v18, v19, v20}];
LABEL_17:

    __break(1u);
    return;
  }

  v8 = v6();
  if (!v8)
  {
    v12 = objc_opt_new();
    v9 = +[UIColor redColor];
    [v12 setBackgroundColor:v9];
    goto LABEL_12;
  }

  v9 = objc_alloc_init(v8);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = objc_opt_new();
    v13 = +[UIColor redColor];
    [v12 setBackgroundColor:v13];

    goto LABEL_12;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v10 = off_1ED49E560;
  v24 = off_1ED49E560;
  if (!off_1ED49E560)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __get_IntelligenceSupportMakeSummarySymbolSymbolLoc_block_invoke;
    v20 = &unk_1E70F2F20;
    v11 = SwiftUILibrary();
    v22[3] = dlsym(v11, "_IntelligenceSupportMakeSummarySymbol");
    off_1ED49E560 = v22[3];
    v10 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id _IntelligenceSupportMakeSummarySymbol(BOOL, CTFontRef, CGColorRef)"}];
    [v15 handleFailureInFunction:v16 file:@"_UILabelAnimatingSummarySymbolBridge.m" lineNumber:14 description:{@"%s", dlerror(), v17, v18, v19, v20}];
    goto LABEL_17;
  }

  v12 = v10(a1, a2, a3);
LABEL_12:

  v14 = v12;
}

void sub_18995BF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSwiftUIGlue2ClassSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SwiftUILibrary();
  result = dlsym(v2, "SwiftUIGlue2Class");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_1136 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SwiftUILibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SwiftUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SwiftUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E710B6F8;
    v6 = 0;
    SwiftUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SwiftUILibraryCore_frameworkLibrary;
  if (!SwiftUILibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SwiftUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UILabelAnimatingSummarySymbolBridge.m" lineNumber:12 description:{@"%s", v4[0]}];

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

uint64_t __SwiftUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SwiftUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18995D398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUIKeyboardInputModeIconRendererClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKeyboardInputModeIconRendererClass_softClass;
  v7 = getTUIKeyboardInputModeIconRendererClass_softClass;
  if (!getTUIKeyboardInputModeIconRendererClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKeyboardInputModeIconRendererClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIKeyboardInputModeIconRendererClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18995D494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTUIKeyboardInputModeIconRendererClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_3();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardInputModeIconRenderer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardInputModeIconRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardInputModeIconRendererClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UICursorAccessoryViewController.m" lineNumber:26 description:{@"Unable to find class %s", "TUIKeyboardInputModeIconRenderer"}];

    __break(1u);
  }
}

uint64_t __TextInputUILibraryCore_block_invoke_8()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_3 = result;
  return result;
}

void __getTUIKeyboardInputModeIconRendererConfigurationClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_3();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardInputModeIconRendererConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardInputModeIconRendererConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardInputModeIconRendererConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UICursorAccessoryViewController.m" lineNumber:27 description:{@"Unable to find class %s", "TUIKeyboardInputModeIconRendererConfiguration"}];

    __break(1u);
  }
}

void sub_18995F0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIUndoPinchGestureRecognizerCommonInit(uint64_t a1)
{
  v1 = MEMORY[0x1E695EFD0];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *(a1 + 288) = *MEMORY[0x1E695EFD0];
  *(a1 + 304) = v2;
  *(a1 + 320) = *(v1 + 32);
  *(a1 + 344) = 0;
  *(a1 + 280) = 0;
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = a1;
  [v5 setBeginCentroid:{v3, v4}];
  v5[44] = 3;
  *(v5 + 360) = 0;
  v6 = objc_alloc_init(_UIGestureRecognizerTransformAnalyzer);
  v7 = v5[42];
  v5[42] = v6;

  [v5 _updateTransformAnalyzerWeights];
  [v5[42] setRotationWeight:0.330000013];
  [v5[42] setTranslationWeight:0.330000013];
  v8 = v5[42];

  return [v8 setPinchingWeight:0.330000013];
}

void sub_189962734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _HDRInitialEDRStrength(void *a1)
{
  v1 = a1;
  v2 = [v1 animationForKey:@"contentsEDRStrength"];
  if (v2)
  {
    v3 = [v1 presentationLayer];

    v1 = v3;
  }

  [v1 contentsEDRStrength];
  v5 = v4;

  return v5;
}

double _HDRAnimationDuration(double a1, double a2)
{
  v4 = +[_UIHDRSettingsDomain rootSettings];
  v5 = v4;
  if (a2 <= a1)
  {
    v9 = [v4 asymmetricAnimationDurations];
    v10 = +[_UIHDRSettingsDomain rootSettings];
    v11 = v10;
    if (v9)
    {
      [v10 animationDurationDown];
    }

    else
    {
      [v10 animationDurationUp];
    }

    v7 = v12;

    v8 = a1 - a2;
  }

  else
  {
    [v4 animationDurationUp];
    v7 = v6;

    v8 = a2 - a1;
  }

  return v8 * v7;
}

id _HDRSpringAnimation(double a1, double a2)
{
  v3 = [objc_alloc(MEMORY[0x1E69794A8]) initWithPerceptualDuration:a1 bounce:0.0];
  [v3 setKeyPath:@"contentsEDRStrength"];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [v3 setFromValue:v4];

  return v3;
}

void ___shouldSuppressHDR_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (([@"com.move.Realtor" isEqualToString:v1] & 1) != 0 || objc_msgSend(@"com.autotrader.snapit", "isEqualToString:", v1))
  {
    _MergedGlobals_1137 = 1;
  }
}

void ___commonInit_block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(_UISEEdgeTypeForceRecognizeGestureFeature);
  [v1 addObject:v2];
}

uint64_t ___alwaysIgnoreHIDEdgeFlags_block_invoke()
{
  result = [MEMORY[0x1E699FAB8] isEmulatedDevice];
  _MergedGlobals_7_1 = result;
  return result;
}

uint64_t _UIScreenEdgePanRecognizerShouldLog()
{
  result = os_variant_has_internal_diagnostics();
  if (result)
  {
    if (_UIScreenEdgePanRecognizerShouldLog_onceToken != -1)
    {
      dispatch_once(&_UIScreenEdgePanRecognizerShouldLog_onceToken, &__block_literal_global_297);
    }

    v1 = _UIScreenEdgePanRecognizerCachedShouldLog;
    if (_UIScreenEdgePanRecognizerCachedShouldLog == -1)
    {
      v2 = _UIKitUserDefaults();
      [v2 synchronize];
      _UIScreenEdgePanRecognizerCachedShouldLog = [v2 BOOLForKey:@"UIScreenEdgePanRecognizerShouldLog"];

      v1 = _UIScreenEdgePanRecognizerCachedShouldLog;
    }

    return v1 == 1;
  }

  return result;
}

unint64_t _interfaceOrientedRegionGivenScreenRegion(unint64_t a1, uint64_t a2)
{
  v2 = 90;
  v3 = -90;
  v4 = 180;
  if (a2 != 2)
  {
    v4 = 0;
  }

  if (a2 != 4)
  {
    v3 = v4;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return _rotatedEdgesGivenOrientationInDegrees(a1, v5);
}

uint64_t _regionForLocation(double a1, double a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  if (a5 >= 0.0)
  {
    v10 = a5;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = a3 + -1.0;
  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (a6 >= 0.0)
  {
    v13 = a6;
  }

  else
  {
    v13 = 0.0;
  }

  if (v13 >= a4 + -1.0)
  {
    v14 = a4 + -1.0;
  }

  else
  {
    v14 = v13;
  }

  v20 = a4 - a7;
  v26.size.height = a4 - (a4 - a7 + 0.0);
  rect = a4 - (a4 - a7 + 0.0);
  v26.origin.x = a1 + 0.0;
  v26.origin.y = a2 + 0.0;
  y = v26.origin.y;
  v26.size.width = a3;
  v22.x = v12;
  v22.y = v14;
  v16 = CGRectContainsPoint(v26, v22);
  v27.origin.x = a1 + a3 - a7;
  v27.origin.y = y;
  v27.size.width = a3 - (a3 - a7 + 0.0);
  v27.size.height = a4;
  v23.x = v12;
  v23.y = v14;
  if (CGRectContainsPoint(v27, v23))
  {
    v16 |= 8uLL;
  }

  v28.origin.y = a2 + v20;
  v28.origin.x = a1 + 0.0;
  v28.size.width = a3;
  v28.size.height = rect;
  v24.x = v12;
  v24.y = v14;
  if (CGRectContainsPoint(v28, v24))
  {
    v16 |= 4uLL;
  }

  v29.origin.x = a1 + 0.0;
  v29.origin.y = y;
  v29.size.width = a3 - (a3 - a7 + 0.0);
  v29.size.height = a4;
  v25.x = v12;
  v25.y = v14;
  if (CGRectContainsPoint(v29, v25))
  {
    return v16 | 2;
  }

  else
  {
    return v16;
  }
}

unint64_t _screenRegionGivenInterfaceOrientedRegion(unint64_t a1, uint64_t a2)
{
  v2 = -90;
  v3 = 90;
  v4 = -180;
  if (a2 != 2)
  {
    v4 = 0;
  }

  if (a2 != 4)
  {
    v3 = v4;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return _rotatedEdgesGivenOrientationInDegrees(a1, v5);
}

__CFString *_formatRegion(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"unknown";
  }

  else
  {
    return off_1E710B848[a1 - 1];
  }
}

double _convertSwipeOffsetFromSceneReferenceSpaceToView(void *a1, double a2, double a3)
{
  v6 = [a1 _window];
  v7 = v6;
  if (v6)
  {
    [v6 _convertPointFromSceneReferenceSpace:{a2, a3}];
    [a1 convertPoint:v7 fromView:?];
    v9 = v8;
    [v7 _convertPointFromSceneReferenceSpace:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [a1 convertPoint:v7 fromView:?];
    a2 = v9 - v10;
  }

  return a2;
}

double _TimestampForTouches(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [v7 timestamp];
        if (v8 > v5)
        {
          [v7 timestamp];
          v5 = v9;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

void sub_18996D174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 32; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

BOOL _buttonBackgroundColorIndicatesLiftEffect(void *a1)
{
  v1 = [a1 backgroundColor];
  v2 = v1;
  if (v1)
  {
    [v1 alphaComponent];
    v4 = v3 >= 0.01;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __roundCursorForBounds(void *a1, double *a2, double a3, double a4)
{
  v7 = a1;
  v8 = [v7 effectiveUserInterfaceLayoutDirection] == 1;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  __outsetRectWithMinimumSize(v8, 1, v10, v12, v14, v16, a3, a3, a3, a3, a4);
  if (a2)
  {
    *a2 = v17 * 0.5;
  }
}

double __boundingPointerShapeInContainer(void *a1, void *a2)
{
  v3 = a1;
  [v3 bounds];
  v5 = v4;
  if (a2)
  {
    v6 = [v3 layer];
    [v6 cornerRadius];
    *a2 = v7;
  }

  return v5;
}

double __outsetRectWithMinimumSize(int a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a2)
  {
    if (a5 >= a6)
    {
      v15 = a5;
    }

    else
    {
      v15 = a6;
    }

    v16 = (v15 - a5) * 0.5;
    a7 = v16 + a7;
    a8 = v16 + a8;
  }

  v17 = a5 + a8 + a7;
  v18 = (a11 - v17) * 0.5;
  v19 = a7 + v18;
  v20 = a8 + v18;
  if (v17 < a11)
  {
    a8 = v20;
    a7 = v19;
  }

  if (a1)
  {
    v21 = a8;
  }

  else
  {
    v21 = a7;
  }

  return a3 - v21;
}

unint64_t _UIContextualMenuGestureRecognizerIsEventValidForContextualClick(unint64_t result)
{
  if (result)
  {
    v1 = result;
    if (([result _modifierFlags] & 0x40000) != 0)
    {
      return 1;
    }

    else
    {
      return ([v1 _buttonMask] >> 1) & 1;
    }
  }

  return result;
}

unint64_t _UIPreviousForceLevel(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0xFFFFFFFF80000000;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t _UINextForceLevel(unint64_t a1)
{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0xFFFFFFFF80000000;
  }
}

void __progressObservableCacheKey_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIForceLevelDoesNotExist_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 134218754;
    v5 = v3;
    v6 = 2048;
    v7 = 2;
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/UIKitCore/Sources/Gestures/Force Level Classifiers/_UIForceLevelClassifier.m";
    v10 = 2080;
    v11 = "NSNumber *progressObservableCacheKey(UIPreviewForceState, UIPreviewForceState)_block_invoke";
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "WARNING: Min force state %ld is greater than %ld, %s:%s needs to be updated", &v4, 0x2Au);
  }
}

void sub_189975D18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189975E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189976E90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189976FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *copyBytesWithNullAtEnd(char *a1, char *__src, size_t __n)
{
  if (!__src)
  {
    return 0;
  }

  if (__n >= 0x190)
  {
    a1 = malloc_type_malloc(__n + 1, 0xC12303FBuLL);
  }

  result = strncpy(a1, __src, __n);
  result[__n] = 0;
  return result;
}

uint64_t _UIShouldLogTrackedState()
{
  if (qword_1ED49C010 != -1)
  {
    dispatch_once(&qword_1ED49C010, &__block_literal_global_302);
  }

  return _MergedGlobals_15_4;
}

__CFString *__UITrackedStateDiffDescription(uint64_t a1, void *a2)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v13[0] = &unk_1EFE30B38;
    v13[1] = &unk_1EFE30B50;
    v14[0] = @"trait/property propagation";
    v14[1] = @"additional layout";
    v13[2] = &unk_1EFE30B68;
    v14[2] = @"layout";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ____UITrackedStateDiffDescription_block_invoke;
    v10[3] = &unk_1E710BA98;
    v12 = a1;
    v6 = v5;
    v11 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v10];
    if ([v6 count])
    {
      v7 = [v6 componentsJoinedByString:{@", "}];
    }

    else
    {
      v7 = @"unknown";
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n\t► %@: { %@ }", v3, v7];
  }

  else
  {
    v8 = &stru_1EFB14550;
  }

  return v8;
}

id _UITrackedStateDiffDescription(uint64_t *a1)
{
  v2 = __UITrackedStateDiffDescription(*a1, @"view state added");
  v3 = __UITrackedStateDiffDescription(a1[1], @"view state removed");
  v4 = __UITrackedStateDiffDescription(a1[2], @"view state unchanged");
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v2, v3, v4];

  return v5;
}

uint64_t _UITrackedStateCompare@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a2 & ~result;
  a3[1] = result & ~a2;
  a3[2] = a2 & result;
  return result;
}

void _UILogStateTracking(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (qword_1ED49C010 != -1)
  {
    dispatch_once(&qword_1ED49C010, &__block_literal_global_302);
  }

  if (_MergedGlobals_15_4 == 1)
  {
    v9 = _UITraitTokenSetCount(a1);
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = ___UILogStateTracking_block_invoke;
      v17[3] = &unk_1E70F3B48;
      v18 = v10;
      v11 = v10;
      _UITraitTokenSetEnumerate(a1, v17);
      v12 = [v11 componentsJoinedByString:{@", "}];
    }

    else
    {
      v12 = @"none";
    }

    v13 = *(__UILogGetCategoryCachedImpl("TraitUsageTracking", &qword_1ED49C018) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a5);
      *buf = *a3;
      *&buf[16] = *(a3 + 16);
      v16 = _UITrackedStateDiffDescription(buf);
      *buf = 138413058;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Tracked state change with invalidation action -%@ for %@\n\t► traits used: { %@ }%@", buf, 0x2Au);
    }
  }
}

uint64_t TaggingAppearanceGeneralSetterIMP(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, __n128 a16)
{
  v19[0] = a9;
  v19[1] = a10;
  v19[2] = a11;
  v19[3] = a12;
  v19[4] = a13;
  v19[5] = a14;
  v19[6] = a15;
  v19[7] = a16;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v16 = _ObjectTaggingUtility(a1, a2, v19, &vars0, vars0, &v18);
  (v16)(v18[8].n128_u64[0], v18[8].n128_u64[1], v18[9].n128_u64[0], v18[9].n128_u64[1], v18[10].n128_u64[0], v18[10].n128_u64[1], v18[11].n128_u64[0], v18[11].n128_u64[1], *v18, v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7]);
  return _ObjectTaggingCleanupUtility();
}

void *_UIAppearanceUntagObjectForSelector(void *result, const char *a2, void *a3)
{
  if ((__isObjectTaggingEnabled & 1) == 0)
  {
    AssociatedObject = objc_getAssociatedObject(result, &_UIAppearanceCustomizedSelectorsAssociationKey);
    v7 = TagForSelectorWithAxes(a2, a3);

    return [AssociatedObject removeObject:v7];
  }

  return result;
}

IMP _ObjectTaggingUtility(void *a1, const char *a2, void *a3, unint64_t a4, uint64_t a5, void *a6)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v12 = a5 - a4;
  v13 = a6 + 2;
  if ((a6 + a5 - a4 + 16) != a3)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"IMP _ObjectTaggingUtility(id description:{SEL, u_int8_t *, u_int8_t *, u_int8_t *, u_int8_t *)"), @"UIAppearance.m", 561, @"Error copying stack frame in appearance proxy tagging."}];
  }

  if (a5 != a4 && a6 != a4)
  {
    v14 = v12 >> 2;
    v15 = v12 & 3;
    if (a6 <= a4)
    {
      if (v12 >= 4)
      {
        v19 = (a4 + 16);
        do
        {
          v20 = *v19++;
          *v13++ = v20;
          --v14;
        }

        while (v14);
      }

      if ((v12 & 3) != 0)
      {
        v21 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 17;
        v22 = a6 + v21;
        v23 = (a4 + v21);
        do
        {
          v24 = *v23++;
          *v22++ = v24;
          --v15;
        }

        while (v15);
      }
    }

    else
    {
      if ((v12 & 3) != 0)
      {
        v16 = (a5 + 15);
        v17 = a6 + a5 + 15 - a4;
        do
        {
          v18 = *v16--;
          *v17-- = v18;
          --v15;
        }

        while (v15);
      }

      if (v12 >= 4)
      {
        do
        {
          *(a6 + v14 + 3) = *(a4 + 12 + 4 * v14);
          --v14;
        }

        while (v14);
      }
    }
  }

  *a6 = a3;
  v25 = [a1 methodSignatureForSelector:a2];
  v26 = 2;
  v27 = [v25 getArgumentTypeAtIndex:2];
  v28 = *v27;
  if (v28 <= 0x50)
  {
    if (v28 == 64 || v28 == 66 || v28 == 73)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (*v27 <= 0x68u)
    {
      if (v28 != 81 && v28 != 99)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (v27[1])
      {
        v26 = 2;
      }

      else
      {
        v26 = 3;
      }

      goto LABEL_32;
    }

    if (v28 == 105 || v28 == 113)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = [v25 numberOfArguments];
  if (v30 >= 4)
  {
    v31 = 8 * v26 + 144;
    v32 = v30 - 3;
    do
    {
      v33 = v31 - 16;
      if (v26 >= 8)
      {
        v33 = v31;
      }

      [v29 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", *(a3 + v33))}];
      ++v26;
      v31 += 8;
      --v32;
    }

    while (v32);
  }

  _UIAppearanceTagObjectForSelector(a1, a2, v29);

  if (!qword_1ED49E5E0)
  {
    qword_1ED49E5E0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v37[0] = a1;
  v37[1] = NSStringFromSelector(a2);
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  [qword_1ED49E5E0 addObject:v34];
  PushNextClassForSettingIMP(a1, a2);
  return CurrentOrginalSettingIMP(a1, a2);
}

uint64_t _ObjectTaggingCleanupUtility()
{
  v0 = [qword_1ED49E5E0 lastObject];
  v1 = [v0 objectAtIndexedSubscript:0];
  v2 = NSSelectorFromString([v0 objectAtIndexedSubscript:1]);
  AssociatedObject = objc_getAssociatedObject(v1, &unk_1ED49E5DA);
  [objc_msgSend(AssociatedObject objectForKey:{NSStringFromSelector(v2)), "removeLastObject"}];
  v4 = qword_1ED49E5E0;

  return [v4 removeLastObject];
}

uint64_t TaggingAppearanceObjectSetter1IMP(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  _UIAppearanceTagObjectForSelector(a1, a2, [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", a4)}]);
  PushNextClassForSettingIMP(a1, a2);
  v8 = CurrentOrginalSettingIMP(a1, a2);
  (v8)(a1, a2, a3, a4);
  AssociatedObject = objc_getAssociatedObject(a1, &unk_1ED49E5DA);
  v10 = [AssociatedObject objectForKey:NSStringFromSelector(a2)];

  return [v10 removeLastObject];
}

uint64_t TaggingAppearanceIntSetterIMP(void *a1, const char *a2, uint64_t a3)
{
  _UIAppearanceTagObjectForSelector(a1, a2, 0);
  PushNextClassForSettingIMP(a1, a2);
  v6 = CurrentOrginalSettingIMP(a1, a2);
  (v6)(a1, a2, a3);
  AssociatedObject = objc_getAssociatedObject(a1, &unk_1ED49E5DA);
  v8 = [AssociatedObject objectForKey:NSStringFromSelector(a2)];

  return [v8 removeLastObject];
}

void sub_18997A634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18997C4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _enumerateAppearancesHelper(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [objc_msgSend(a1 "keyEnumerator")];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v23 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [a1 objectForKey:v8];
        objc_opt_self();
        if (objc_opt_isKindOfClass())
        {
          (*(a2 + 16))(a2, v9, a1, v8, &v17);
        }

        else
        {
          objc_opt_self();
          if (objc_opt_isKindOfClass())
          {
            v17 = _enumerateAppearancesHelper(v9, a2) ^ 1;
            v19 = 0;
            v20 = &v19;
            v21 = 0x2020000000;
            v22 = 0;
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __containsAppearances_block_invoke;
            v18[3] = &unk_1E710BB98;
            v18[4] = &v19;
            _enumerateAppearancesHelper(v9, v18);
            v10 = *(v20 + 24);
            _Block_object_dispose(&v19, 8);
            if ((v10 & 1) == 0)
            {
              [a1 removeObjectForKey:v8];
            }
          }
        }

        if (v17)
        {
          v11 = 0;
          return v11 & 1;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v11 = v17 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

void sub_18997FE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __containsAppearances_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

void __encodePathElementIntoData(void *a1, unsigned int *a2)
{
  v3 = a1;
  v13 = *a2;
  [v3 appendBytes:&v13 length:4];
  v4 = *a2;
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_18A67BDD0[v4];
  }

  v12 = v5;
  [v3 appendBytes:&v12 length:4];
  if (v12)
  {
    v6 = 0;
    for (i = 0; i < v12; ++i)
    {
      v8 = *(*(a2 + 1) + v6);
      v11 = v8;
      [v3 appendBytes:&v11 length:4];
      v9 = *(*(a2 + 1) + v6 + 8);
      v10 = v9;
      [v3 appendBytes:&v10 length:4];
      v6 += 16;
    }
  }
}

uint64_t _UIUnifiedSystemBackgroundColorsEnabled()
{
  result = _UIMaterialPresentationsEnabled();
  if (result)
  {
    return (byte_1EA95E4C4 != 0) & ~_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UnifiedSystemBackgroundColorsEnabled, @"UnifiedSystemBackgroundColorsEnabled");
  }

  return result;
}

id _UICreateBoostedRGBColor()
{
  if (qword_1ED49BF10 != -1)
  {
    dispatch_once(&qword_1ED49BF10, &__block_literal_global_2255);
  }

  CGColorSpaceGetName(qword_1ED49BF08);
  UISCreateCachedColorTransform();
  v0 = CGColorTransformConvertColorComponents();
  CGColorTransformRelease();
  if (!v0)
  {
    goto LABEL_10;
  }

  if (qword_1ED49BF20 != -1)
  {
    dispatch_once(&qword_1ED49BF20, &__block_literal_global_2257);
  }

  v1 = qword_1ED49BF18;
  if (qword_1ED49BF10 != -1)
  {
    dispatch_once(&qword_1ED49BF10, &__block_literal_global_2255);
  }

  CGColorSpaceGetName(v1);
  UISCreateCachedColorTransform();
  v2 = CGColorTransformConvertColorComponents();
  CGColorTransformRelease();
  if (v2)
  {
    v3 = CGColorCreateWithContentHeadroom();
    v4 = _WrapCGColorWithUIColor(v3);
    CGColorRelease(v3);
  }

  else
  {
LABEL_10:
    v4 = 0;
  }

  return v4;
}

id _UIApplyHeadroom(void *a1, double a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [v3 _contentHeadroom];
  if (vabdd_f64(a2, v4) >= 0.001)
  {
    v8 = 0u;
    v9 = 0u;
    [v3 getRed:&v8 green:&v8 + 8 blue:&v9 alpha:&v9 + 8];
    if (qword_1ED49BF20 != -1)
    {
      dispatch_once(&qword_1ED49BF20, &__block_literal_global_2257);
    }

    v6 = CGColorCreateWithContentHeadroom();
    v5 = [UIColor colorWithCGColor:v6];
    CGColorRelease(v6);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

id _UIUnExposeColor(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 linearExposure];
  if (v2 <= 1.0)
  {
    v5 = v1;
    goto LABEL_14;
  }

  *&v8 = v2;
  v10 = 0u;
  *v11 = 0u;
  [v1 getRed:&v10 green:&v10.f64[1] blue:v11 alpha:&v11[1]];
  if (qword_1ED49BF20 != -1)
  {
    dispatch_once(&qword_1ED49BF20, &__block_literal_global_2257);
  }

  if (qword_1ED49BF10 != -1)
  {
    dispatch_once(&qword_1ED49BF10, &__block_literal_global_2255);
  }

  CGColorSpaceGetName(qword_1ED49BF08);
  UISCreateCachedColorTransform();
  v3 = CGColorTransformConvertColorComponents();
  CGColorTransformRelease();
  if (v3)
  {
    v10 = vdivq_f64(0, vdupq_lane_s64(v8, 0));
    v11[0] = 0.0 / *&v8;
    if (qword_1ED49BF10 != -1)
    {
      dispatch_once(&qword_1ED49BF10, &__block_literal_global_2255);
    }

    if (qword_1ED49BF20 != -1)
    {
      dispatch_once(&qword_1ED49BF20, &__block_literal_global_2257);
    }

    CGColorSpaceGetName(qword_1ED49BF18);
    UISCreateCachedColorTransform();
    v4 = CGColorTransformConvertColorComponents();
    v9 = v11[1];
    CGColorTransformRelease();
    if (v4)
    {
      v5 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:v9];
LABEL_14:
      v6 = v5;
      goto LABEL_16;
    }
  }

  v6 = 0;
LABEL_16:

  return v6;
}

void raiseWithColorSpaceError(void *a1, const char *a2)
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** -%@ not defined for the UIColor %@; need to first convert colorspace.", v6, v5}];
}

double UIColorBlendPlusDarker(double a1, double a2, double a3, double a4, double a5)
{
  v5 = fabs(a5);
  v6 = 0.0;
  if (fabs(a4) >= 2.22044605e-16 && v5 >= 2.22044605e-16)
  {
    return fmin(fmax(a5 - fmin(fmax(a3 - a1 * a3 + a4 - a2, 0.0), 1.0) / a4, 0.0), 1.0);
  }

  return v6;
}

double *__colorValuesFromString(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [a1 componentsSeparatedByString:{@", "}];
  if ([v1 count] < 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = malloc_type_calloc(8uLL, 3uLL, 0x13A4FBA2uLL);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v13;
LABEL_4:
      v8 = 0;
      v9 = v6;
      while (1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (v9 == 3)
        {
          break;
        }

        [*(*(&v12 + 1) + 8 * v8) floatValue];
        v6 = v9 + 1;
        v2[v9] = v10 / 255.0;
        ++v8;
        ++v9;
        if (v5 == v8)
        {
          v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  return v2;
}

void sub_18998F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18999067C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _colorsByThemeKeySolariumseparatorColor()
{
  v11[4] = *MEMORY[0x1E69E9840];
  v0 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v10[0] = v0;
  v1 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.12];
  v11[0] = v1;
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v10[1] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.12];
  v11[1] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v10[2] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.329411765 green:0.329411765 blue:0.345098039 alpha:0.5];
  v11[2] = v5;
  v6 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v10[3] = v6;
  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.329411765 green:0.329411765 blue:0.345098039 alpha:0.5];
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

id _colorsByThemeKeyPreSolariumseparatorColor()
{
  v11[4] = *MEMORY[0x1E69E9840];
  v0 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v10[0] = v0;
  v1 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.29];
  v11[0] = v1;
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v10[1] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.37];
  v11[1] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v10[2] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.329411765 green:0.329411765 blue:0.345098039 alpha:0.6];
  v11[2] = v5;
  v6 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v10[3] = v6;
  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.329411765 green:0.329411765 blue:0.345098039 alpha:0.68];
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

id _colorsByThemeKeytablePlainHeaderFooterBackgroundColor()
{
  v13[5] = *MEMORY[0x1E69E9840];
  v11 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v12[0] = v11;
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.898039216 green:0.898039216 blue:0.898039216 alpha:1.0];
  v13[0] = v0;
  v1 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v12[1] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.196078431 green:0.196078431 blue:0.203921569 alpha:1.0];
  v13[1] = v2;
  v3 = _UIThemeKeyFromTraitValues(3, 0, 0, 0, 0, 0);
  v12[2] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.949019608 blue:0.949019608 alpha:1.0];
  v13[2] = v4;
  v5 = _UIThemeKeyFromTraitValues(3, 2, 0, 0, 0, 0);
  v12[3] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:1.0];
  v13[3] = v6;
  v7 = _UIThemeKeyFromTraitValues(3, 2, 0, 0, 0, 1);
  v12[4] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v13[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v9;
}

CGColorSpaceRef __DisplayP3ColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  qword_1ED49BEE8 = result;
  return result;
}

CGColorSpaceRef __ExtendedLinearSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  qword_1ED49BF08 = result;
  return result;
}

double _UIPortraitSafeAreaInsetsForSceneHosting(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  v3 = [v2 _windowHostingScene];

  if ([v3 _shouldRotateSafeAreaInsetsToInterfaceOrientation])
  {
    v4 = [v1 window];
    v5 = [v4 interfaceOrientation];

    [v1 safeAreaInsets];
    v10 = v9;
    if (v5 == 2)
    {
      v10 = v8;
    }

    else if (v5 == 3)
    {
      v10 = v7;
    }

    else if (v5 != 4)
    {
      v10 = v6;
    }
  }

  else
  {
    [v1 safeAreaInsets];
    v10 = v11;
  }

  return v10;
}

double UIEdgeInsetsReplace(char a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a1)
  {
    return a6;
  }

  return result;
}

id UICGAffineTransformDescription(_OWORD *a1)
{
  v2 = [@"<CGAffineTransform: " mutableCopy];
  v3 = a1[1];
  *&vector.a = *a1;
  *&vector.c = v3;
  *&vector.tx = a1[2];
  if (CGAffineTransformIsIdentity(&vector))
  {
    v4 = @"identity";
    goto LABEL_23;
  }

  v5 = a1[1];
  *&transform.a = *a1;
  *&transform.c = v5;
  *&transform.tx = a1[2];
  memset(&vector, 0, sizeof(vector));
  CGAffineTransformDecompose(&vector, &transform);
  a = vector.a;
  b = vector.b;
  v8 = vector.b != 1.0 || vector.a != 1.0;
  if (v8)
  {
    v9 = NSStringFromCGSize(*&a);
    [v2 appendFormat:@"scale = %@", v9];
  }

  tx = vector.tx;
  if (fabs(vector.tx) >= 2.22044605e-16 || fabs(vector.ty) >= 2.22044605e-16)
  {
    if (v8)
    {
      [v2 appendString:{@", "}];
      tx = vector.tx;
    }

    ty = vector.ty;
    v13 = NSStringFromCGVector(*&tx);
    [v2 appendFormat:@"translation = %@", v13];

    if (fabs(vector.d) < 2.22044605e-16)
    {
      goto LABEL_18;
    }

LABEL_16:
    [v2 appendString:{@", "}];
    d = vector.d;
LABEL_17:
    [v2 appendFormat:@"rotation = %f", *&d];
LABEL_18:
    v8 = 1;
    goto LABEL_19;
  }

  d = vector.d;
  if (fabs(vector.d) >= 2.22044605e-16)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_19:
  c = vector.c;
  if (fabs(vector.c) < 2.22044605e-16)
  {
    goto LABEL_24;
  }

  if (v8)
  {
    [v2 appendString:{@", "}];
    c = vector.c;
  }

  v17 = c;
  v4 = @"horizontalShear = %f";
LABEL_23:
  [v2 appendFormat:v4, *&v17];
LABEL_24:
  [v2 appendString:@">"];
  v15 = [v2 copy];

  return v15;
}

NSString *__cdecl NSStringFromCGVector(CGVector vector)
{
  v1 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g}", 17, *&vector.dx, 17, *&vector.dy);

  return v1;
}

double UIDistanceBetweenPointAndLine(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = vabdd_f64(a4 * a5 + a1 * (a6 - a4) - a2 * (a5 - a3), a3 * a6);
  v7 = sqrt((a6 - a4) * (a6 - a4) + (a5 - a3) * (a5 - a3));
  result = v6 / v7;
  if (fabs(v7) < 2.22044605e-16)
  {
    return 1.79769313e308;
  }

  return result;
}

double UINormalizePoint(double a1, double a2)
{
  v2 = *MEMORY[0x1E695EFF8];
  if (a1 != *MEMORY[0x1E695EFF8] || a2 != *(MEMORY[0x1E695EFF8] + 8))
  {
    return a1 * (1.0 / sqrt(a1 * a1 + a2 * a2));
  }

  return v2;
}

double UIDistanceBetweenPointAndPolygon(void *a1, double a2, double a3)
{
  v5 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FEFFFFFFFFFFFFFLL;
  if ([v5 containsPoint:{a2, a3}])
  {
    v13[3] = 0.0;
    v6 = 0.0;
  }

  else
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3010000000;
    v11[4] = 0;
    v11[5] = 0;
    v11[3] = "";
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3010000000;
    v10[4] = 0;
    v10[5] = 0;
    v10[3] = "";
    v7 = [v5 CGPath];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __UIDistanceBetweenPointAndPolygon_block_invoke;
    block[3] = &unk_1E710BDC8;
    *&block[7] = a2;
    *&block[8] = a3;
    block[4] = v11;
    block[5] = v10;
    block[6] = &v12;
    CGPathApplyWithBlock(v7, block);
    _Block_object_dispose(v10, 8);
    _Block_object_dispose(v11, 8);
    v6 = v13[3];
  }

  _Block_object_dispose(&v12, 8);

  return v6;
}

void sub_189997300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __UIDistanceBetweenPointAndPolygon_block_invoke(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 == 4)
  {
    v7 = *(*(result + 32) + 8);
    v4 = *(v7 + 32);
    v5 = *(v7 + 40);
  }

  else
  {
    v3 = *(a2 + 1);
    v4 = *v3;
    v5 = v3[1];
    if (v2 != 1)
    {
      if (!v2)
      {
        v6 = *(*(result + 32) + 8);
        *(v6 + 32) = v4;
        *(v6 + 40) = v5;
      }

      goto LABEL_17;
    }
  }

  v8 = *(*(result + 40) + 8);
  v10 = *(result + 56);
  v9 = *(result + 64);
  v12 = *(v8 + 32);
  v11 = *(v8 + 40);
  v13 = v4 - v12;
  v14 = v5 - v11;
  v15 = ((v10 - v12) * (v4 - v12) + (v9 - v11) * (v5 - v11)) / ((v13 * v13) + (v14 * v14));
  if (v15 > 0.0 && v15 < 1.0)
  {
    v18 = sqrt((v12 + (v4 - v12) * v15 - v10) * (v12 + (v4 - v12) * v15 - v10) + (v11 + (v5 - v11) * v15 - v9) * (v11 + (v5 - v11) * v15 - v9));
  }

  else
  {
    v17 = sqrt((v12 - v10) * (v12 - v10) + (v11 - v9) * (v11 - v9));
    v18 = sqrt((v4 - v10) * (v4 - v10) + (v5 - v9) * (v5 - v9));
    if (v17 < v18)
    {
      v18 = v17;
    }
  }

  v19 = *(*(result + 48) + 8);
  if (*(v19 + 24) < v18)
  {
    v18 = *(v19 + 24);
  }

  *(v19 + 24) = v18;
LABEL_17:
  v20 = *(*(result + 40) + 8);
  *(v20 + 32) = v4;
  *(v20 + 40) = v5;
  return result;
}

__n128 UIIntegralTransform@<Q0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = vrndaq_f64(a1[1]);
  *a1 = vrndaq_f64(*a1);
  a1[1] = v2;
  v3 = a1[1];
  a1[2] = vrndaq_f64(a1[2]);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = a1[2];
  *(a2 + 32) = result;
  return result;
}

BOOL UIRectIsDiscrete(double a1, double a2, double a3, double a4)
{
  result = 0;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return fabs(a4) != INFINITY;
  }

  return result;
}

BOOL UIRectContainsRectWithAccuracy(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v27 = CGRectInset(*&a1, -a9, -a9);
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;

  return CGRectContainsRect(v27, *&v21);
}

double UIEdgeInsetsIntegralWithScale(double a1, double a2, double a3, double a4, double a5)
{
  v7 = a5;
  if (a5 == 0.0)
  {
    if (AdjustToScale_onceToken_0 != -1)
    {
      dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
    }

    v7 = *&AdjustToScale___s_0;
  }

  if (v7 == 1.0)
  {
    v8 = round(a1);
  }

  else
  {
    v8 = round(a1 * v7) / v7;
  }

  if (a5 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  if (a5 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  if (a5 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  return v8;
}

double UISizeCeilToScale(double a1, double a2, double a3)
{
  UICeilToScale(a1, a3);
  v6 = v5;
  UICeilToScale(a2, a3);
  return v6;
}

void _UIIntersectionPointOfRayWithRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12.origin.x = a5;
  v12.origin.y = a6;
  v12.size.width = a7;
  v12.size.height = a8;
  CGRectGetMinX(v12);
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  CGRectGetMaxX(v13);
  v14.origin.x = a5;
  v14.origin.y = a6;
  v14.size.width = a7;
  v14.size.height = a8;
  CGRectGetMinY(v14);
  v15.origin.x = a5;
  v15.origin.y = a6;
  v15.size.width = a7;
  v15.size.height = a8;
  CGRectGetMaxY(v15);
}

double UIRectIntegralWithViewScale(void *a1, double a2, double a3, double a4, double a5)
{
  [a1 _currentScreenScale];

  return UIRectIntegralWithScale(a2, a3, a4, a5, v9);
}

double UIEdgeInsetsMakeWithEdges(char a1, double a2)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return 0.0;
  }
}

double UIRectGetCorners(double *a1, double a2, double a3, double a4, double a5)
{
  *a1 = a2;
  a1[1] = a3;
  v5 = a3 + a5;
  a1[2] = a2;
  a1[3] = v5;
  result = a2 + a4;
  a1[4] = result;
  a1[5] = v5;
  a1[6] = result;
  a1[7] = a3;
  return result;
}

double UIRectContainInRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v14 = a1;
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  if (MinX >= CGRectGetMinX(v22))
  {
    v24.origin.x = v14;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = a5;
    v25.origin.y = a6;
    v25.size.width = a7;
    v25.size.height = a8;
    if (MaxX > CGRectGetMaxX(v25))
    {
      v26.origin.x = a5;
      v26.origin.y = a6;
      v26.size.width = a7;
      v26.size.height = a8;
      v17 = CGRectGetMaxX(v26);
      v27.origin.x = v14;
      v27.origin.y = a2;
      v27.size.width = a3;
      v27.size.height = a4;
      v14 = v17 - CGRectGetWidth(v27);
    }
  }

  else
  {
    v23.origin.x = a5;
    v23.origin.y = a6;
    v23.size.width = a7;
    v23.size.height = a8;
    v14 = CGRectGetMinX(v23);
  }

  v28.origin.x = v14;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  MinY = CGRectGetMinY(v28);
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  if (MinY >= CGRectGetMinY(v29))
  {
    v31.origin.x = v14;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    MaxY = CGRectGetMaxY(v31);
    v32.origin.x = a5;
    v32.origin.y = a6;
    v32.size.width = a7;
    v32.size.height = a8;
    if (MaxY > CGRectGetMaxY(v32))
    {
      v33.origin.x = a5;
      v33.origin.y = a6;
      v33.size.width = a7;
      v33.size.height = a8;
      CGRectGetMaxY(v33);
      v34.origin.x = v14;
      v34.origin.y = a2;
      v34.size.width = a3;
      v34.size.height = a4;
      CGRectGetHeight(v34);
    }
  }

  else
  {
    v30.origin.x = a5;
    v30.origin.y = a6;
    v30.size.width = a7;
    v30.size.height = a8;
    CGRectGetMinY(v30);
  }

  return v14;
}

CGAffineTransform *_UITransformLerp@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  memset(&v17, 0, sizeof(v17));
  v6 = a1[1];
  *&transform.a = *a1;
  *&transform.c = v6;
  *&transform.tx = a1[2];
  CGAffineTransformDecompose(&v17, &transform);
  v7 = a2[1];
  *&v15.a = *a2;
  *&v15.c = v7;
  *&v15.tx = a2[2];
  memset(&transform, 0, sizeof(transform));
  v12 = vmulq_n_f64(v17.scale, 1.0 - a4);
  v13 = vmulq_n_f64(v17.translation, 1.0 - a4);
  CGAffineTransformDecompose(&transform, &v15);
  v8 = *&transform.c;
  v9 = vaddq_f64(v12, vmulq_n_f64(*&transform.a, a4));
  v10 = vaddq_f64(v13, vmulq_n_f64(*&transform.tx, a4));
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *&v15.a = v9;
  *&v15.c = vaddq_f64(vmulq_n_f64(*&v17.horizontalShear, 1.0 - a4), vmulq_n_f64(v8, a4));
  *&v15.tx = v10;
  return CGAffineTransformMakeWithComponents(a3, &v15);
}

CGAffineTransform *_UIScaleTransformForAspectFitOrFillOfSizeInTargetSize@<X0>(CGAffineTransform *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v6 = MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v7;
  *(a2 + 32) = *(v6 + 32);
  if (a3 > 0.0 && a4 > 0.0)
  {
    v8 = fmax(a5, 0.1) / a3;
    v9 = fmax(a6, 0.1) / a4;
    if (v8 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v8 <= v9)
    {
      v8 = v9;
    }

    if (result)
    {
      v8 = v10;
    }

    return CGAffineTransformMakeScale(a2, v8, v8);
  }

  return result;
}

double _UI2DInterpolation(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a2)
  {
    v4 = (a1 + 16);
    v5 = 0.0;
    v6 = 1.79769313e308;
    v7 = 0.0;
    v8 = 1.79769313e308;
    do
    {
      v9 = sqrt((a3 - *(v4 - 2)) * (a3 - *(v4 - 2)) + (a4 - *(v4 - 1)) * (a4 - *(v4 - 1)));
      if (v9 >= v6)
      {
        if (v9 < v8)
        {
          v7 = *v4;
          v8 = v9;
        }

        v9 = v6;
      }

      else
      {
        v7 = v5;
        v5 = *v4;
        v8 = v6;
      }

      v4 += 3;
      v6 = v9;
      --a2;
    }

    while (a2);
  }

  else
  {
    v7 = 0.0;
    v8 = 1.79769313e308;
    v9 = 1.79769313e308;
    v5 = 0.0;
  }

  v10 = v8 / (v8 + v9);
  if (v8 + v9 <= 0.0)
  {
    v10 = 1.0;
  }

  return v5 * v10 + v7 * (1.0 - v10);
}

double _UICGRectInsetZeroClamped(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v12 = CGRectGetWidth(*&a1) * 0.5;
  if (v12 <= a5)
  {
    a5 = v12;
  }

  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v13 = CGRectGetHeight(v21) * 0.5;
  if (v13 <= a6)
  {
    v14 = v13;
  }

  else
  {
    v14 = a6;
  }

  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;

  *&result = CGRectInset(*&v15, a5, v14);
  return result;
}

double _UIEdgeInsetsInsetRectZeroClamped(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a3 - a6 - a8;
  if (v8 >= 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8 * 0.5;
  }

  return a1 + a6 + v9;
}

unint64_t _UICGAffineTransformHasFiniteMembers(int8x16_t *a1)
{
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  v2 = vnegq_f64(v1);
  v3 = vandq_s8(a1[1], v2);
  v4 = vandq_s8(*a1, v2);
  v5 = vandq_s8(a1[2], v2);
  v6 = vdupq_n_s64(0x7FF0000000000000uLL);
  v7 = vandq_s8(vandq_s8(vcgtq_s64(v6, v4), vcgtq_s64(v6, v5)), vandq_s8(vcgtq_s64(v6, v3), vcgtq_s64(v6, 0)));
  return vandq_s8(v7, vdupq_laneq_s64(v7, 1)).u64[0] >> 63;
}

unint64_t _UICATransform3DHasFiniteMembers(int8x16_t *a1)
{
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  v2 = vnegq_f64(v1);
  v3 = vdupq_n_s64(0x7FF0000000000000uLL);
  v4 = vandq_s8(vandq_s8(vcgtq_s64(v3, vandq_s8(*a1, v2)), vcgtq_s64(v3, vandq_s8(a1[2], v2))), vandq_s8(vcgtq_s64(v3, vandq_s8(a1[1], v2)), vcgtq_s64(v3, vandq_s8(a1[3], v2))));
  if ((vandq_s8(v4, vdupq_laneq_s64(v4, 1)).u64[0] & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v6 = vandq_s8(vandq_s8(vcgtq_s64(v3, vandq_s8(a1[4], v2)), vcgtq_s64(v3, vandq_s8(a1[6], v2))), vandq_s8(vcgtq_s64(v3, vandq_s8(a1[5], v2)), vcgtq_s64(v3, vandq_s8(a1[7], v2))));
  return vandq_s8(v6, vdupq_laneq_s64(v6, 1)).u64[0] >> 63;
}

__CFString *_NSStringFromCAPoint3D(double a1, double a2, double a3)
{
  v3 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g}", 17, *&a1, 17, *&a2, 17, *&a3);

  return v3;
}

__CFString *_NSStringFromCATransform3D(void *a1)
{
  v1 = CFStringCreateWithFormat(0, 0, @"[%.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g]", 17, *a1, 17, a1[1], 17, a1[2], 17, a1[3], 17, a1[4], 17, a1[5], 17, a1[6], 17, a1[7], 17, a1[8], 17, a1[9], 17, a1[10], 17, a1[11], 17, a1[12], 17, a1[13], 17, a1[14], 17, a1[15]);

  return v1;
}

NSString *__cdecl NSStringFromUIOffset(UIOffset offset)
{
  v1 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g}", 17, *&offset.horizontal, 17, *&offset.vertical);

  return v1;
}

__CFString *NSStringFromUIRectCornerRadii(double a1, double a2, double a3, double a4)
{
  v4 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g, %.*g}", 17, *&a1, 17, *&a2, 17, *&a3, 17, *&a4);

  return v4;
}

__CFString *_NSStringFromUICornerInsets(void *a1)
{
  v1 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g, %.*g}", 17, *a1, 17, a1[1], 17, a1[2], 17, a1[3], 17, a1[4], 17, a1[5], 17, a1[6], 17, a1[7]);

  return v1;
}

__CFString *_NSStringFromUIRectEdge(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"none";
    goto LABEL_23;
  }

  v1 = a1;
  if (a1 == 15)
  {
    v2 = @"all";
    goto LABEL_23;
  }

  Mutable = CFStringCreateMutable(0, 0);
  v2 = Mutable;
  if (v1)
  {
    CFStringAppend(Mutable, @"top");
    if ((v1 & 2) == 0)
    {
LABEL_7:
      if ((v1 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_7;
  }

  if (v2 && CFStringGetLength(v2) >= 1)
  {
    CFStringAppend(v2, @" | ");
  }

  CFStringAppend(v2, @"left");
  if ((v1 & 4) == 0)
  {
LABEL_8:
    if ((v1 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_15:
  if (v2 && CFStringGetLength(v2) >= 1)
  {
    CFStringAppend(v2, @" | ");
  }

  CFStringAppend(v2, @"bottom");
  if ((v1 & 8) != 0)
  {
LABEL_19:
    if (v2 && CFStringGetLength(v2) >= 1)
    {
      CFStringAppend(v2, @" | ");
    }

    CFStringAppend(v2, @"right");
  }

LABEL_23:

  return v2;
}

__CFString *_NSStringFromCAFrameRateRange(float a1, float a2, float a3)
{
  v3 = CFStringCreateWithFormat(0, 0, @"{%d, %d, %d}", a1, a2, a3);

  return v3;
}

CGVector CGVectorFromString(NSString *string)
{
  v1 = string;
  v2 = 0.0;
  if ([(NSString *)v1 length]< 5)
  {
    DoubleValue = 0.0;
  }

  else
  {
    v8 = 0;
    str = 0;
    DoubleValue = 0.0;
    if (SplitBracesAndComma(v1, &str, &v8))
    {
      v4 = str;
      DoubleValue = CFStringGetDoubleValue(str);
      v5 = v8;
      v2 = CFStringGetDoubleValue(v8);
      CFRelease(v4);
      CFRelease(v5);
    }
  }

  v6 = DoubleValue;
  v7 = v2;
  result.dy = v7;
  result.dx = v6;
  return result;
}

CGAffineTransform *__cdecl CGAffineTransformFromString(CGAffineTransform *__return_ptr retstr, NSString *string)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = string;
  if ([(NSString *)v8 length]>= 0xD && ParseNumbersWithDelimiter(v8, v9, 6))
  {
    v3 = v9[1];
    *&retstr->a = v9[0];
    *&retstr->c = v3;
    v4 = v9[2];
  }

  else
  {
    v5 = MEMORY[0x1E695EFD0];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v6;
    v4 = *(v5 + 32);
  }

  *&retstr->tx = v4;

  return result;
}

double _CAPoint3DFromString(void *a1)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] >= 7 && ParseNumbersWithDelimiter(v1, v5, 3))
  {
    v2 = v5;
  }

  else
  {
    v2 = MEMORY[0x1E69792C8];
  }

  v3 = *v2;

  return v3;
}

NSDirectionalEdgeInsets NSDirectionalEdgeInsetsFromString(NSString *string)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v1 = string;
  v2 = 0.0;
  if ([(NSString *)v1 length]< 9)
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    if (ParseNumbersWithDelimiter(v1, v10, 4))
    {
      v4 = *v10;
      v3 = *&v10[1];
      v2 = *&v10[2];
      v5 = *&v10[3];
    }
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = v5;
  result.trailing = v9;
  result.bottom = v8;
  result.leading = v7;
  result.top = v6;
  return result;
}

UIOffset UIOffsetFromString(NSString *string)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = string;
  v2 = 0.0;
  if ([(NSString *)v1 length]< 5)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 0.0;
    if (ParseNumbersWithDelimiter(v1, v6, 2))
    {
      v2 = *v6;
      v3 = *&v6[1];
    }
  }

  v4 = v2;
  v5 = v3;
  result.vertical = v5;
  result.horizontal = v4;
  return result;
}

double UIRectCornerRadiiFromString(void *a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] < 9)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 0.0;
    if (ParseNumbersWithDelimiter(v1, v4, 4))
    {
      v2 = *v4;
    }
  }

  return v2;
}

void _UICornerInsetsFromString(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if ([v5 length] >= 0x11 && ParseNumbersWithDelimiter(v5, v6, 8))
  {
    v3 = v6[1];
    *a2 = v6[0];
    a2[1] = v3;
    v4 = v6[3];
    a2[2] = v6[2];
    a2[3] = v4;
  }

  else
  {
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }
}

void _UICornerPointForRoundedRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 == 8)
  {
    CGRectGetMaxX(*&a2);
    v11.origin.x = a2;
    v11.origin.y = a3;
    v11.size.width = a4;
    v11.size.height = a5;
    CGRectGetMaxY(v11);
  }

  else if (a1 == 4)
  {
    CGRectGetMinX(*&a2);
    v10.origin.x = a2;
    v10.origin.y = a3;
    v10.size.width = a4;
    v10.size.height = a5;
    CGRectGetMaxY(v10);
  }

  else
  {
    if (a1 == 1)
    {
      CGRectGetMinX(*&a2);
    }

    else
    {
      CGRectGetMaxX(*&a2);
    }

    v9.origin.x = a2;
    v9.origin.y = a3;
    v9.size.width = a4;
    v9.size.height = a5;
    CGRectGetMinY(v9);
  }
}

float _CAFrameRateRangeFromString(void *a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] >= 7)
  {
    v2 = v1;
    v15 = 0;
    v16 = 2;
    v14 = 0;
    ParseBracesWithDelimiter(v2, &v15, &v14, v18, &v16);
    if (v15 != -1 && v14 != -1 && v16 == 2)
    {
      v7 = 0;
      v8 = v18;
      while (1)
      {
        v9 = v8 - 1;
        if (!v7)
        {
          v9 = &v15;
        }

        v10 = *v9;
        v11 = v16 <= v7 ? &v14 : v8;
        v12.length = *v11 + ~v10;
        if (v12.length < 1)
        {
          break;
        }

        v12.location = v10 + 1;
        v13 = CFStringCreateWithSubstring(0, v2, v12);
        v17[v7] = CFStringGetIntValue(v13);
        CFRelease(v13);
        ++v7;
        ++v8;
        if (v7 == 3)
        {

          LODWORD(v5) = CAFrameRateRangeMake(v17[0], v17[1], v17[2]);
          goto LABEL_11;
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69792B8];
LABEL_11:

  return v5;
}

void _UIRTLConvertAllLTRFramesToRTL(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v22 = a1;
  v9 = [v22 count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [v22 objectAtIndexedSubscript:i];
      [v12 CGRectValue];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v24.origin.x = a2;
      v24.origin.y = a3;
      v24.size.width = a4;
      v24.size.height = a5;
      v21 = [MEMORY[0x1E696B098] valueWithCGRect:{CGRectGetMaxX(v24) - v18 - v14, v16, v18, v20}];
      [v22 replaceObjectAtIndex:i withObject:v21];
    }
  }
}

double _UIConvertPointFromOrientationToOrientation(uint64_t a1, uint64_t a2, double result, double a4, double a5, double a6)
{
  if (a1 != a2)
  {
    if ((a1 - 3) >= 2)
    {
      v6 = a6;
    }

    else
    {
      v6 = a5;
    }

    if ((a1 - 3) >= 2)
    {
      v7 = a5;
    }

    else
    {
      v7 = a6;
    }

    v8 = a5 - result;
    v9 = a6 - a4;
    if (a1 == 4)
    {
      v10 = a4;
    }

    else
    {
      v10 = result;
    }

    if (a1 == 4)
    {
      a4 = v8;
    }

    if (a1 == 3)
    {
      v10 = v9;
    }

    else
    {
      result = a4;
    }

    if (a1 == 2)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (a1 == 2)
    {
      v12 = v9;
    }

    else
    {
      v12 = result;
    }

    switch(a2)
    {
      case 2:
        return v7 - v11;
      case 3:
        return v12;
      case 4:
        return v6 - v12;
      default:
        return v11;
    }
  }

  return result;
}

double gradientInterpolater(double *a1, double *a2, double *a3)
{
  v3 = *a2;
  if (*a2 < 0.0)
  {
    v3 = 0.0;
  }

  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  do
  {
    v4 = a1[9];
    a1 += 5;
  }

  while (v4 < v3);
  v5 = (v3 - *(a1 - 1)) / (v4 - *(a1 - 1));
  *a3 = *a1 * v5 + *(a1 - 5) * (1.0 - v5);
  a3[1] = (1.0 - v5) * *(a1 - 4) + v5 * a1[1];
  a3[2] = (1.0 - v5) * *(a1 - 3) + v5 * a1[2];
  result = (1.0 - v5) * *(a1 - 2) + v5 * a1[3];
  a3[3] = result;
  return result;
}

void UIRectFrameUsingOperation(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CompositeOperation = CGContextGetCompositeOperation();
  CGContextGetLineWidth();
  v14 = v13;
  if (CompositeOperation != a1)
  {
    CGContextSetCompositeOperation();
  }

  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  v17 = CGRectInset(v16, v14 * 0.5, v14 * 0.5);
  CGContextStrokeRect(v11, v17);
  if (CompositeOperation != a1)
  {
    CGContextSetCompositeOperation();
  }

  CGContextSetLineWidth(v11, v14);
}

void UIRectFrameUsingBlendMode(CGRect rect, CGBlendMode blendMode)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v9 = CGContextGetBlendMode();
  CGContextGetLineWidth();
  v11 = v10;
  if (v9 != blendMode)
  {
    CGContextSetBlendMode(v8, blendMode);
  }

  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v14 = CGRectInset(v13, v11 * 0.5, v11 * 0.5);
  CGContextStrokeRect(v8, v14);
  if (v9 != blendMode)
  {
    CGContextSetBlendMode(v8, v9);
  }

  CGContextSetLineWidth(v8, v11);
}

void UIRectClip(CGRect rect)
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      v7 = x;
      v8 = y;
      v9 = width;
      v10 = height;

      CGContextClipToRect(v6, *&v7);
    }
  }
}

void UISetSystemColor(int a1)
{
  switch(a1)
  {
    case 1:
      v1 = +[UIColor whiteColor];
      break;
    case 2:
      v1 = +[UIColor grayColor];
      break;
    case 3:
      v1 = +[UIColor lightGrayColor];
      break;
    case 4:
      v1 = +[UIColor darkGrayColor];
      break;
    case 5:
      v1 = +[UIColor redColor];
      break;
    case 6:
      v1 = +[UIColor greenColor];
      break;
    case 7:
      v1 = +[UIColor blueColor];
      break;
    case 8:
      v1 = +[UIColor cyanColor];
      break;
    case 9:
      v1 = +[UIColor magentaColor];
      break;
    case 10:
      v1 = +[UIColor yellowColor];
      break;
    case 11:
      v1 = +[UIColor orangeColor];
      break;
    case 12:
      v1 = +[UIColor purpleColor];
      break;
    case 13:
      v1 = +[UIColor brownColor];
      break;
    case 14:
      v1 = +[UIColor clearColor];
      break;
    case 15:
      v2 = 0.8;
      v4 = 0.82;
      v5 = 0.85;
      goto LABEL_24;
    case 16:
      v2 = 0.88;
      v3 = 1.0;
      v4 = 0.88;
      v5 = 0.88;
      goto LABEL_27;
    case 17:
      v2 = 1.0;
      v4 = 1.0;
      v5 = 1.0;
      goto LABEL_24;
    case 18:
      v2 = 0.16;
      v4 = 0.43;
      v5 = 0.83;
      goto LABEL_24;
    case 19:
      v2 = 0.52;
      v4 = 0.56;
      v5 = 0.58;
      goto LABEL_26;
    case 20:
      v2 = 0.9;
      v4 = 0.93;
      v5 = 0.99;
LABEL_26:
      v3 = 0.8;
      goto LABEL_27;
    case 21:
      v2 = 0.92;
      v4 = 0.94;
      v5 = 0.99;
      goto LABEL_24;
    case 22:
      v2 = 0.85;
      v4 = 0.87;
      v5 = 0.91;
LABEL_24:
      v3 = 1.0;
LABEL_27:
      v1 = [UIColor colorWithRed:v2 green:v4 blue:v5 alpha:v3];
      break;
    default:
      v1 = +[UIColor blackColor];
      break;
  }

  v6 = v1;
  [v1 set];
}

id _UIGraphicsDrawIntoImageContextWithMoreOptions(uint64_t a1, int a2, void *a3, double a4, double a5, double a6)
{
  v11 = a3;
  v12 = +[UIGraphicsImageRendererFormat preferredFormat];
  [v12 setOpaque:a1];
  if (a6 > 0.0)
  {
    [v12 setScale:a6];
  }

  if (a2)
  {
    [v12 setPreferredRange:0x7FFFLL];
  }

  v13 = [[UIGraphicsImageRenderer alloc] initWithSize:v12 format:a4, a5];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___UIGraphicsDrawIntoImageContextWithMoreOptions_block_invoke;
  v17[3] = &unk_1E7106E70;
  v18 = v11;
  v14 = v11;
  v15 = [(UIGraphicsImageRenderer *)v13 imageWithActions:v17];

  return v15;
}

uint64_t _UIGraphicsCurrentContextIsOpaque()
{
  ContextStack = GetContextStack(0);
  if (*ContextStack >= 1 && (v1 = &ContextStack[6 * (*ContextStack - 1)], v1[4] == 1) && (v2 = *(v1 + 3)) != 0)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

BOOL UIGraphicsBeginPDFContextToFile(NSString *path, CGRect bounds, NSDictionary *documentInfo)
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v22 = bounds;
  v8 = path;
  v9 = documentInfo;
  v10 = CFURLCreateWithFileSystemPath(0, v8, kCFURLPOSIXPathStyle, 0);
  if (v10)
  {
    v11 = v10;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (CGRectIsEmpty(v23))
    {
      v12 = 0;
    }

    else
    {
      v12 = &v22;
    }

    v13 = CGPDFContextCreateWithURL(v11, v12, v9);
    if (v13)
    {
      v14 = v13;
      CFRelease(v11);
      SetupPDFContext(v14, v9, 0, v22.origin.x, v22.origin.y, v22.size.width, v22.size.height);
    }

    else
    {
      if (dyld_program_sdk_at_least())
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL UIGraphicsBeginPDFContextToFile(NSString *__strong _Nonnull, CGRect, NSDictionary *__strong _Nullable)"}];
        v21 = NSStringFromCGRect(v22);
        [v19 handleFailureInFunction:v20 file:@"UIGraphics.m" lineNumber:627 description:{@"UIGraphicsBeginPDFContextToFile() failed to allocate CGPDFContext: bounds=%@, path=%@, documentInfo=%@. Use UIGraphicsPDFRenderer to avoid this assert.", v21, v8, v9}];
      }

      CFRelease(v11);
    }
  }

  ContextStack = GetContextStack(0);
  v17 = *ContextStack >= 1 && (v16 = &ContextStack[6 * (*ContextStack - 1)], v16[4] == 2) && *(v16 + 1) != 0;

  return v17;
}

void SetupPDFContext(CGContext *a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v25.origin.x = a4;
  v25.origin.y = a5;
  v25.size.width = a6;
  v25.size.height = a7;
  v9 = a2;
  v26 = &v25;
  v10 = *MEMORY[0x1E695F390];
  v11 = [v9 objectForKey:*MEMORY[0x1E695F390]];
  v12 = v11;
  if (v11)
  {
    [v11 getBytes:&v26 length:32];
  }

  if (a3)
  {
    if (CGRectIsEmpty(v25))
    {
      v13 = *(a3 + 16);
      v25.origin = *a3;
      v25.size = v13;
    }

    size = v25.size;
    *(a3 + 32) = v25.origin;
    *(a3 + 48) = size;
    *(a3 + 64) = 1;
  }

  else
  {
    v15 = malloc_type_malloc(0x48uLL, 0x1000040773C5DECuLL);
    v16 = [v9 objectForKey:v10];
    v17 = v16;
    if (v16)
    {
      [v16 getBytes:&v25 length:32];
    }

    if (CGRectIsEmpty(v25))
    {
      v25.origin = 0uLL;
      v25.size = xmmword_18A67C9E0;
    }

    v18 = v25.size;
    v19 = MEMORY[0x1E695F058];
    *v15 = v25.origin;
    v15[1] = v18;
    v20 = v19[1];
    v15[2] = *v19;
    v15[3] = v20;
    LOBYTE(v15[4].width) = 0;
    ContextStack = GetContextStack(1);
    v22 = CGContextRetain(a1);
    v23 = *ContextStack;
    v24 = &ContextStack[6 * *ContextStack];
    *(v24 + 1) = v22;
    v24[4] = 2;
    *(v24 + 3) = v15;
    *ContextStack = v23 + 1;
  }
}

void UIGraphicsBeginPDFContextToData(NSMutableData *data, CGRect bounds, NSDictionary *documentInfo)
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v17 = bounds;
  v8 = documentInfo;
  v9 = CGDataConsumerCreateWithCFData(data);
  if (v9)
  {
    v10 = v9;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    if (CGRectIsEmpty(v18))
    {
      v11 = 0;
    }

    else
    {
      v11 = &v17;
    }

    v12 = CGPDFContextCreate(v10, v11, v8);
    if (v12)
    {
      v13 = v12;
      CGDataConsumerRelease(v10);
      SetupPDFContext(v13, v8, 0, v17.origin.x, v17.origin.y, v17.size.width, v17.size.height);
    }

    else
    {
      if (dyld_program_sdk_at_least())
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void UIGraphicsBeginPDFContextToData(NSMutableData *__strong _Nonnull, CGRect, NSDictionary *__strong _Nullable)"}];
        v16 = NSStringFromCGRect(v17);
        [v14 handleFailureInFunction:v15 file:@"UIGraphics.m" lineNumber:643 description:{@"UIGraphicsBeginPDFContextToData() failed to allocate CGPDFContext: bounds=%@, documentInfo=%@. Use UIGraphicsPDFRenderer to avoid this assert.", v16, v8}];
      }

      CGDataConsumerRelease(v10);
    }
  }
}

void UIGraphicsEndPDFContext(void)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack >= 1 && (v1 = &ContextStack[6 * (*ContextStack - 1)], v1[4] == 2))
  {
    v2 = *(v1 + 1);
  }

  else
  {
    v2 = 0;
  }

  v3 = GetContextStack(0);
  if (*v3 >= 1)
  {
    v4 = &v3[3 * (*v3 - 1)];
    if (*(v4 + 4) == 2)
    {
      if (v2)
      {
        v5 = v4[3];
        if (v5)
        {
          if (*(v5 + 64) == 1)
          {
            CGPDFContextEndPage(v2);
          }

          v6 = GetContextStack(0);
          PopContextFromStack(v6);
          CGPDFContextClose(v2);

          CGContextRelease(v2);
        }
      }
    }
  }
}

void UIGraphicsBeginPDFPage(void)
{
  ContextStack = GetContextStack(0);
  v2 = *ContextStack >= 1 && (v1 = &ContextStack[6 * (*ContextStack - 1)], v1[4] == 2) && *(v1 + 1) != 0;
  v3 = GetContextStack(0);
  if (*v3 >= 1)
  {
    v4 = &v3[3 * (*v3 - 1)];
    if (*(v4 + 4) == 2)
    {
      v5 = v4[3];
      if (v5 && v2)
      {
        v7 = *v5;
        v8 = v5[1];
        v9 = v5[2];
        v10 = v5[3];

        UIGraphicsBeginPDFPageWithInfo(*&v7, 0);
      }
    }
  }
}

void UIGraphicsBeginPDFPageWithInfo(CGRect bounds, NSDictionary *pageInfo)
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v6 = pageInfo;
  ContextStack = GetContextStack(0);
  if (*ContextStack >= 1 && (v8 = &ContextStack[6 * (*ContextStack - 1)], v8[4] == 2))
  {
    v9 = *(v8 + 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = GetContextStack(0);
  if (*v10 >= 1)
  {
    v11 = &v10[3 * (*v10 - 1)];
    if (*(v11 + 4) == 2 && v9 && v11[3])
    {
      v12 = GetContextStack(0);
      if (*v12 >= 1)
      {
        v13 = &v12[3 * (*v12 - 1)];
        if (*(v13 + 4) == 2)
        {
          v14 = v13[3];
          if (v14)
          {
            if (*(v14 + 64) == 1)
            {
              CGPDFContextEndPage(v9);
            }

            SetupPDFContext(v9, v6, v14, x, y, width, height);
            v15 = *MEMORY[0x1E695F390];
            v16 = [(NSDictionary *)v6 objectForKey:*MEMORY[0x1E695F390]];
            if (v16)
            {
              v17 = v16;
            }

            else if (CGRectEqualToRect(*(v14 + 32), *v14))
            {
              v17 = 0;
            }

            else
            {
              v20.size.width = 612.0;
              v20.size.height = 792.0;
              v20.origin.x = 0.0;
              v20.origin.y = 0.0;
              if (CGRectEqualToRect(*(v14 + 32), v20))
              {
LABEL_25:
                CGPDFContextBeginPage(v9, v6);
                CGContextTranslateCTM(v9, 0.0, *(v14 + 56));
                CGContextScaleCTM(v9, 1.0, -1.0);
                CGAffineTransformMakeScale(&v19, 1.0, -1.0);
                CGContextSetBaseCTM();
                goto LABEL_17;
              }

              v17 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 + 32 length:32];
              if (v6)
              {
                v18 = [(NSDictionary *)v6 mutableCopy];

                [(NSDictionary *)v18 setObject:v17 forKey:v15];
                v6 = v18;
              }

              else
              {
                v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:v17 forKey:v15];
              }
            }

            goto LABEL_25;
          }
        }
      }

      NSLog(&cfstr_Getcurrentcont.isa);
    }
  }

LABEL_17:
}

CGRect UIGraphicsGetPDFContextBounds(void)
{
  ContextStack = GetContextStack(0);
  v1 = (MEMORY[0x1E695F058] + 24);
  v2 = (MEMORY[0x1E695F058] + 8);
  v3 = (MEMORY[0x1E695F058] + 16);
  if (*ContextStack < 1)
  {
    goto LABEL_7;
  }

  v4 = &ContextStack[6 * (*ContextStack - 1)];
  if (v4[4] != 2)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 3);
  if (!v5)
  {
    v1 = (MEMORY[0x1E695F058] + 24);
    v2 = (MEMORY[0x1E695F058] + 8);
    v3 = (MEMORY[0x1E695F058] + 16);
LABEL_7:
    v5 = MEMORY[0x1E695F058];
    goto LABEL_8;
  }

  if (*(v5 + 64) == 1)
  {
    v2 = (v5 + 40);
    v3 = (v5 + 48);
    v1 = (v5 + 56);
    v5 += 32;
  }

  else
  {
    v2 = (v5 + 8);
    v3 = (v5 + 16);
    v1 = (v5 + 24);
  }

LABEL_8:
  v6 = *v1;
  v7 = *v5;
  v8 = *v2;
  v9 = *v3;
  result.size.height = v6;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

void UIGraphicsSetPDFContextURLForRect(NSURL *url, CGRect rect)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  urla = url;
  ContextStack = GetContextStack(0);
  if (*ContextStack >= 1)
  {
    v7 = &ContextStack[3 * (*ContextStack - 1)];
    if (*(v7 + 4) == 2)
    {
      v8 = v7[1];
      if (v8)
      {
        v11.origin.x = x;
        v11.origin.y = y;
        v11.size.width = width;
        v11.size.height = height;
        CGPDFContextSetURLForRect(v8, urla, v11);
      }
    }
  }
}