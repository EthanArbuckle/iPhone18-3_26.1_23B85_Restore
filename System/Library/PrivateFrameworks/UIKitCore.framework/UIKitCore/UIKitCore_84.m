id ___pasteboardCacheQueue_existingItemCollectionWithName_block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__152;
  v8 = __Block_byref_object_dispose__152;
  v9 = 0;
  v0 = _pasteboardAuthenticatedMessageQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___pasteboardCacheQueue_existingItemCollectionWithName_block_invoke_2;
  block[3] = &unk_1E70F2F20;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void ___pasteboardAuthenticatedMessageQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit.pasteboard.authenticated-message-queue", 0);
  v1 = qword_1ED49A7F8;
  qword_1ED49A7F8 = v0;
}

void ___existingItemCollectionWithName_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = _pasteboardCacheQueue_existingItemCollectionWithName(v2, &obj);
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void ___coerceItemToType_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void ___coerceItemToType_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void ___coerceItemToType_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void ___coerceItemToType_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void ___coerceItemToType_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void ___coerceItemToClass_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a2;
  v8 = a3;
  if (!a4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void ___pasteboardCompletionQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit.pasteboard.completion-queue", 0);
  v1 = qword_1ED49A808;
  qword_1ED49A808 = v0;
}

void __PBUTIForNSAttributedStringDocumentType_block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = *off_1E70EC990;
  v0 = [*MEMORY[0x1E6982F40] identifier];
  v8[0] = v0;
  v7[1] = *off_1E70EC9A0;
  v1 = [*MEMORY[0x1E6982F90] identifier];
  v8[1] = v1;
  v7[2] = *off_1E70EC998;
  v2 = [*MEMORY[0x1E6982F98] identifier];
  v8[2] = v2;
  v7[3] = *off_1E70EC940;
  v3 = [*MEMORY[0x1E6982E18] identifier];
  v8[3] = v3;
  v7[4] = *off_1E70ECAE8;
  v4 = [*MEMORY[0x1E6983098] identifier];
  v8[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = qword_1ED49A818;
  qword_1ED49A818 = v5;
}

void sub_189D7C5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

_UIViewControllerPreviewingContext *_UIPreviewingContextForViewController(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && ([v4 _screen], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_isForceTouchCapable"), v6, (v7 & 1) != 0))
  {
    v8 = [[_UIViewControllerPreviewingContext alloc] initWithSourceView:v5 viewController:v3];
  }

  else
  {
    v8 = [[_UIInertPreviewingContext alloc] initWithSourceView:v5];
  }

  v9 = v8;

  return v9;
}

void sub_189D7E764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189D7F930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189D80498(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189D81180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_189D81C5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189D82198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189D8479C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_UITextInputSourceToString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"UNK";
  }

  else
  {
    return off_1E711ABA8[a1 - 1];
  }
}

void UIContentConfigurationAlertForReplacedContentView(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = *(__UILogGetCategoryCachedImpl("ContentConfiguration", &UIContentConfigurationAlertForReplacedContentView___s_category) + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = v14;
    v16 = [v9 capitalizedString];
    v17 = 138413570;
    v18 = v9;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v16;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Warning: You are setting a new content configuration to a %@ that has an existing content configuration, but the existing content view does not support the new configuration. This means the existing content view must be replaced with a new content view created from the new configuration, instead of updating the existing content view directly, which is expensive. %@ Make a symbolic breakpoint at UIContentConfigurationAlertForReplacedContentView to catch this in the debugger.\n%@: %@;\nExisting content configuration: %@;\nNew content configuration: %@", &v17, 0x3Eu);
  }
}

void sub_189D87EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_UIViewGlass *_UIContextMenuListViewResolvedMaterial(void *a1, int a2)
{
  v3 = a1;
  if (!v3 && a2)
  {
    v3 = [[_UIViewGlass alloc] initWithVariant:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    [(_UIViewGlass *)v4 setAdaptive:0];
    [(_UIViewGlass *)v4 setFlexible:1];
    [(_UIViewGlass *)v4 _setFlexVariant:5];
  }

  return v3;
}

void sub_189D883BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _UIPointerViewIsEffectivelyInvisible(void *a1)
{
  v1 = [a1 layer];
  v2 = [v1 presentationLayer];
  [v2 opacity];
  v4 = v3 < 0.05;

  return v4;
}

void sub_189D8B0BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void _updateAffordanceFrameOrigin(void *a1, void *a2)
{
  v14 = a2;
  v3 = a1;
  [v3 frame];
  v5 = v4;
  [v3 frame];
  v7 = v5 + v6 * 0.5;
  [v14 frame];
  v9 = v7 - v8 * 0.5;
  [v3 frame];
  v11 = v10;

  [v14 frame];
  v13 = v11 + -12.0 - v12;
  [v14 frame];
  [v14 setFrame:{v9, v13}];
}

void sub_189D93B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189D95250(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void _UIPreviewQuickActionViewCommonInit(void *a1)
{
  v1 = a1;
  v2 = [UIImageView alloc];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v38 = [(UIImageView *)v2 initWithFrame:*MEMORY[0x1E695F058], v4, v5, v6];
  [(UIImageView *)v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v38];
  [v1 setBackgroundViewImage:v38];
  v7 = [[UIImageView alloc] initWithFrame:v3, v4, v5, v6];
  [(UIImageView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)v7 setContentMode:1];
  LODWORD(v8) = 1148829696;
  [(UIView *)v7 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1148829696;
  [(UIView *)v7 setContentHuggingPriority:1 forAxis:v9];
  [(UIView *)v38 addSubview:v7];
  [v1 setImageView:v7];
  v10 = [[UILabel alloc] initWithFrame:v3, v4, v5, v6];
  [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = +[UIColor clearColor];
  [(UIView *)v10 setBackgroundColor:v11];

  v12 = [off_1E70ECC18 systemFontOfSize:16.0];
  [(UILabel *)v10 setFont:v12];

  [(UILabel *)v10 setTextAlignment:1];
  [(UILabel *)v10 setNumberOfLines:0];
  [v1 addSubview:v10];
  [v1 setLabel:v10];

  v13 = _NSDictionaryOfVariableBindings(&cfstr_ImageviewLabel.isa, v7, v10, v38, 0);
  v14 = objc_opt_new();
  v15 = MEMORY[0x1E695E0F8];
  v16 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-5-[backgroundViewImage]-5-|" options:0 metrics:MEMORY[0x1E695E0F8] views:v13];
  [v14 addObjectsFromArray:v16];

  v17 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:[imageView(<=44)]" options:0 metrics:v15 views:v13];
  [v14 addObjectsFromArray:v17];

  v18 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[backgroundViewImage]-[label]|" options:0 metrics:v15 views:v13];
  [v14 addObjectsFromArray:v18];

  v19 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[label]|" options:0 metrics:v15 views:v13];
  [v14 addObjectsFromArray:v19];

  v20 = [(UIView *)v7 centerXAnchor];
  v21 = [(UIView *)v38 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [v14 addObject:v22];

  v23 = [(UIView *)v7 centerYAnchor];
  v24 = [(UIView *)v38 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [v14 addObject:v25];

  v26 = [(UIView *)v7 heightAnchor];
  v27 = [(UIView *)v7 widthAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v14 addObject:v28];

  v29 = [(UIView *)v38 heightAnchor];
  v30 = [(UIView *)v7 heightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 multiplier:1.57079633];
  [v14 addObject:v31];

  v32 = [(UIView *)v38 widthAnchor];
  v33 = [(UIView *)v7 widthAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 multiplier:1.57079633];
  [v14 addObject:v34];

  [MEMORY[0x1E69977A0] activateConstraints:v14];
  v35 = [(UIView *)v7 widthAnchor];
  v36 = [(UIView *)v7 heightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v37 setActive:1];
}

id ___sendAnalyticsEvent_block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v2 = qword_1ED4993E0;
  v14 = qword_1ED4993E0;
  if (!qword_1ED4993E0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getIAUtilityClass_block_invoke;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getIAUtilityClass_block_invoke(v10);
    v2 = v12[3];
  }

  v3 = v2;
  _Block_object_dispose(&v11, 8);
  v4 = _UIMainBundleIdentifier();
  v5 = [v2 lookupAppBundle:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    v16[0] = *(a1 + 32);
    v15[0] = @"hapticTrigger";
    v15[1] = @"deviceType";
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v16[1] = v7;
    v15[2] = @"bundleId_category";
    v16[2] = v5;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_189D97BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIAUtilityClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4993E8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __InputAnalyticsLibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E711ADE8;
    v8 = 0;
    qword_1ED4993E8 = _sl_dlopen();
  }

  if (!qword_1ED4993E8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *InputAnalyticsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIFeedbackBackBoardEngine.m" lineNumber:22 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IAUtility");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIAUtilityClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIFeedbackBackBoardEngine.m" lineNumber:24 description:{@"Unable to find class %s", "IAUtility"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4993E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __InputAnalyticsLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1ED4993E8 = result;
  return result;
}

id _eventMessageQueue()
{
  if (qword_1ED49FC50 != -1)
  {
    dispatch_once(&qword_1ED49FC50, &__block_literal_global_33_6);
  }

  v1 = _MergedGlobals_1236;

  return v1;
}

void ___slotContent_block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    goto LABEL_4;
  }

  v13 = _UIInternalPreference_UIEventAttributionViewDebugMode;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_UIEventAttributionViewDebugMode)
  {
    goto LABEL_4;
  }

  while (v0 >= v13)
  {
    _UIInternalPreferenceSync(v0, &_UIInternalPreference_UIEventAttributionViewDebugMode, @"UIEventAttributionViewDebugMode", _UIInternalPreferenceUpdateBool);
    v13 = _UIInternalPreference_UIEventAttributionViewDebugMode;
    if (v0 == _UIInternalPreference_UIEventAttributionViewDebugMode)
    {
      goto LABEL_4;
    }
  }

  if (!byte_1EA95E5D4)
  {
LABEL_4:
    v1 = @"iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=";
  }

  else
  {
    v1 = @"iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg==";
  }

  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v1 options:0];
  v2 = CGDataProviderCreateWithCFData(v14);
  v3 = CGImageCreateWithPNGDataProvider(v2, 0, 0, kCGRenderingIntentDefault);
  v4 = [objc_alloc(MEMORY[0x1E69DEC70]) initWithContentSize:1 contentScale:v3 localImage:&_slotContent___layerContext toLayerContext:{1.0, 1.0}];
  v5 = __slotContent;
  __slotContent = v4;

  v6 = [MEMORY[0x1E698E448] sharedInstance];
  v7 = MEMORY[0x1E695DFD8];
  LODWORD(v8) = 2143289344;
  LODWORD(v9) = 2143289344;
  LODWORD(v10) = 2143289344;
  v11 = [__slotContent newTouchAuthenticationSpecificationWithAuthenticationMessageContext:1589136771 backgroundStatisticsRegion:0 backgroundStatisticsForeground:0 backgroundStatisticsPassingContrast:1 backgroundStatisticsFailingContrast:0 hitTestInformationMask:v8 initialSampleEvent:v9 secureName:v10];
  v12 = [v7 setWithObject:v11];
  [v6 addTouchAuthenticationSpecifications:v12 forReason:@"event attribution"];

  CGImageRelease(v3);
  CGDataProviderRelease(v2);
}

void ___eventMessageQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit.event_attribution.event-message-queue", 0);
  v1 = _MergedGlobals_1236;
  _MergedGlobals_1236 = v0;
}

float64x2_t anonymous namespace::DEMA::update@<Q0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  if (*(a1 + 64))
  {
    v5 = *(a1 + 24);
    v3 = vaddq_f64(vmulq_n_f64(v3, v5), vmulq_n_f64(*(a1 + 48), 1.0 - v5));
    v4 = vaddq_f64(vmulq_n_f64(v4, v5), vmulq_n_f64(*(a1 + 32), 1.0 - v5));
    *(a1 + 32) = v4;
    *(a1 + 48) = v3;
  }

  else
  {
    *(a1 + 32) = v4;
    *(a1 + 48) = v3;
    *(a1 + 64) = 1;
  }

  if (*(a1 + 128))
  {
    v6 = *(a1 + 88);
    v7 = 1.0 - v6;
    v8 = vextq_s8(v4, v4, 8uLL).u64[0];
    v9 = vmulq_n_f64(v4, v6);
    v10 = vaddq_f64(vmulq_n_f64(v3, v6), vmulq_n_f64(*(a1 + 112), 1.0 - v6));
    v11 = vaddq_f64(v9, vmulq_n_f64(*(a1 + 96), v7));
    *(a1 + 96) = v11;
    *(a1 + 112) = v10;
  }

  else
  {
    *(a1 + 96) = v4;
    *(a1 + 112) = v3;
    *(a1 + 128) = 1;
    v8 = vextq_s8(v4, v4, 8uLL).u64[0];
    v11 = v4;
    v10 = v3;
  }

  *&v4.f64[1] = v8;
  result = vsubq_f64(vaddq_f64(v3, v3), v10);
  *a3 = vsubq_f64(vaddq_f64(v4, v4), v11);
  a3[1] = result;
  return result;
}

double anonymous namespace::DEMA::reset(_anonymous_namespace_::DEMA *this)
{
  *(this + 64) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 128) = 0;
  return result;
}

float64x2_t anonymous namespace::TEMA::update@<Q0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  if (*(a1 + 64))
  {
    v5 = *(a1 + 24);
    v3 = vaddq_f64(vmulq_n_f64(v3, v5), vmulq_n_f64(*(a1 + 48), 1.0 - v5));
    v4 = vaddq_f64(vmulq_n_f64(v4, v5), vmulq_n_f64(*(a1 + 32), 1.0 - v5));
    *(a1 + 32) = v4;
    *(a1 + 48) = v3;
  }

  else
  {
    *(a1 + 32) = v4;
    *(a1 + 48) = v3;
    *(a1 + 64) = 1;
  }

  if (*(a1 + 128))
  {
    v6 = *(a1 + 88);
    v7 = 1.0 - v6;
    v8 = vmulq_n_f64(v4, v6);
    v9 = vaddq_f64(vmulq_n_f64(v3, v6), vmulq_n_f64(*(a1 + 112), 1.0 - v6));
    v10 = vaddq_f64(v8, vmulq_n_f64(*(a1 + 96), v7));
    *(a1 + 96) = v10;
    *(a1 + 112) = v9;
  }

  else
  {
    *(a1 + 96) = v4;
    *(a1 + 112) = v3;
    *(a1 + 128) = 1;
    v10 = v4;
    v9 = v3;
  }

  if (*(a1 + 192))
  {
    v11 = *(a1 + 152);
    v12 = 1.0 - v11;
    v13 = vextq_s8(v10, v10, 8uLL).u64[0];
    v14 = vmulq_n_f64(v10, v11);
    v15 = vaddq_f64(vmulq_n_f64(v9, v11), vmulq_n_f64(*(a1 + 176), 1.0 - v11));
    v16 = vaddq_f64(v14, vmulq_n_f64(*(a1 + 160), v12));
    *(a1 + 160) = v16;
    *(a1 + 176) = v15;
  }

  else
  {
    *(a1 + 160) = v10;
    *(a1 + 176) = v9;
    *(a1 + 192) = 1;
    v13 = vextq_s8(v10, v10, 8uLL).u64[0];
    v16 = v10;
    v15 = v9;
  }

  __asm { FMOV            V7.2D, #3.0 }

  *&v10.f64[1] = v13;
  result = vaddq_f64(vsubq_f64(vmulq_f64(v3, _Q7), vmulq_f64(v9, _Q7)), v15);
  *a3 = vaddq_f64(vsubq_f64(vmulq_f64(v4, _Q7), vmulq_f64(v10, _Q7)), v16);
  a3[1] = result;
  return result;
}

double anonymous namespace::TEMA::reset(_anonymous_namespace_::TEMA *this)
{
  *(this + 64) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 128) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 192) = 0;
  return result;
}

void anonymous namespace::SMA::~SMA(_anonymous_namespace_::SMA *this)
{
  *this = &unk_1EFB0AD48;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1EFB0AD48;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x18CFE8670);
}

float64x2_t anonymous namespace::SMA::update@<Q0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a1 + 12);
  v6 = *(a1 + 48);
  if (v5 < (*(a1 + 56) - v6) >> 5)
  {
    *(a1 + 12) = v5 + 1;
  }

  v7 = (v6 + 32 * *(a1 + 8));
  v8 = vsubq_f64(*(a1 + 32), v7[1]);
  *(a1 + 16) = vsubq_f64(*(a1 + 16), *v7);
  *(a1 + 32) = v8;
  *v7 = v3;
  v7[1] = v4;
  v9 = *(a1 + 12);
  v10 = *(a1 + 8) + 1;
  v11 = (*(a1 + 56) - *(a1 + 48)) >> 5;
  v12 = vaddq_f64(v4, *(a1 + 32));
  v13 = vaddq_f64(v3, *(a1 + 16));
  *(a1 + 16) = v13;
  *(a1 + 32) = v12;
  *(a1 + 8) = v10 % v11;
  v14 = vdupq_lane_s64(COERCE__INT64(v9), 0);
  result = vdivq_f64(v13, v14);
  *a3 = result;
  a3[1] = vdivq_f64(v12, v14);
  return result;
}

void anonymous namespace::SMA::reset(_anonymous_namespace_::SMA *this)
{
  *(this + 5) = 0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = *(this + 6);
  v3 = *(this + 7) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }
}

void anonymous namespace::WMA::~WMA(_anonymous_namespace_::WMA *this)
{
  *this = &unk_1EFB0AD78;
  _ZNSt3__15dequeIDv3_dNS_9allocatorIS1_EEED2B8nn200100Ev(this + 2);
}

{
  *this = &unk_1EFB0AD78;
  _ZNSt3__15dequeIDv3_dNS_9allocatorIS1_EEED2B8nn200100Ev(this + 2);

  JUMPOUT(0x18CFE8670);
}

void anonymous namespace::WMA::update(uint64_t a1@<X0>, _OWORD *a2@<X1>, float64x2_t *a3@<X8>)
{
  v5 = a2[1];
  v24[0] = *a2;
  v24[1] = v5;
  _ZNSt3__15dequeIDv3_dNS_9allocatorIS1_EEE9push_backERKS1_((a1 + 16), v24);
  v7 = *(a1 + 56);
  if (v7 > *(a1 + 8))
  {
    v8 = *(a1 + 48) + 1;
    *(a1 + 48) = v8;
    *(a1 + 56) = v7 - 1;
    if (v8 >= 0x100)
    {
      operator delete(**(a1 + 24));
      *(a1 + 24) += 8;
      *(a1 + 48) -= 128;
    }
  }

  v9 = *(a1 + 24);
  v10 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (*(a1 + 32) == v9 || (v11 = *(a1 + 48), v12 = (v9 + 8 * (v11 >> 7)), v13 = *v12, v14 = &(*v12)[2 * (v11 & 0x7F)], v15 = *(v9 + (((*(a1 + 56) + v11) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 56) + v11) & 0x7F), v14 == v15))
  {
    v6.f64[0] = NAN;
  }

  else
  {
    v16 = 0uLL;
    v17 = 1;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = v14 + 2;
      if (&v14[2] - v13 == 4096)
      {
        v22 = v12[1];
        ++v12;
        v13 = v22;
        v21 = v22;
      }

      v23 = vdupq_lane_s64(COERCE__INT64(v17), 0);
      v18 = vaddq_f64(v18, vmulq_n_f64(v14[1], v17));
      v16 = vaddq_f64(v16, vmulq_n_f64(*v14, v17));
      v20 = vaddq_f64(v20, v23);
      v19 = vaddq_f64(v19, v23);
      ++v17;
      v14 = v21;
    }

    while (v21 != v15);
    v10 = vdivq_f64(v16, v19);
    v6 = vdivq_f64(v18, v20);
  }

  *a3 = v10;
  a3[1] = v6;
}

void anonymous namespace::WMA::reset(_anonymous_namespace_::WMA *this)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  *(this + 7) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(this + 4);
      v2 = (*(this + 3) + 8);
      *(this + 3) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 128;
  }

  *(this + 6) = v6;
}

const void **_ZNSt3__114__split_bufferIPDv3_dNS_9allocatorIS2_EEE13emplace_frontIJS2_EEEvDpOT_(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIPDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<_UIVelocityIntegratorDataSample *>::emplace_back<_UIVelocityIntegratorDataSample *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<_UIVelocityIntegratorDataSample *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample *,std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample **,long,28l>,0>(void *result, _BYTE *__src, _BYTE *a3, void **a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0x8E38E38E38E38E39 * ((v10 - __dst + 4032) >> 4);
      if ((0x8E38E38E38E38E39 * ((a3 - v9) >> 4)) < v11)
      {
        v11 = 0x8E38E38E38E38E39 * ((a3 - v9) >> 4);
      }

      v12 = 9 * v11;
      v13 = 144 * v11;
      if (v11)
      {
        result = memmove(__dst, v9, 144 * v11);
      }

      v9 += 16 * v12;
      if (v9 == a3)
      {
        break;
      }

      v14 = *v6++;
      v10 = v14;
      __dst = v14;
    }

    __dst += v13;
    if (*(v6 - 1) + 4032 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

uint64_t _UIPreviewInteractionIsTextGestureRecognizer(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    v4 = objc_opt_isKindOfClass();
  }

  return v4 & 1;
}

uint64_t _UIStatusBarPartStyleFromStyle(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 3);
  }
}

uint64_t _UIStatusBarStyleFromPartStyle(uint64_t result)
{
  if (result != 1)
  {
    if (result == 4)
    {
      v1 = [MEMORY[0x1E696AAA8] currentHandler];
      v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIStatusBarStyle _UIStatusBarStyleFromPartStyle(_UIStatusBarPartStyle)"];
      [v1 handleFailureInFunction:v2 file:@"_UIStatusBarStyle.m" lineNumber:46 description:@"_UIStatusBarPartStyleInherited cannot be converted to a UIStatusBarStyle"];

      return 0;
    }

    else if (result == 2)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _UIStatusBarResolvedStyleFromStyle(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 3);
  }
}

uint64_t _UIStatusBarStyleFromResolvedStyle(char a1)
{
  v1 = a1 & 0x3F;
  switch(v1)
  {
    case 1:
      return 1;
    case 4:
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIStatusBarStyle _UIStatusBarStyleFromResolvedStyle(_UIStatusBarResolvedStyle)"];
      [v3 handleFailureInFunction:v4 file:@"_UIStatusBarStyle.m" lineNumber:87 description:@"_UIStatusBarResolvedStyleInherited cannot be converted to a UIStatusBarStyle"];

      return 0;
    case 2:
      return 3;
    default:
      return 0;
  }
}

void sub_189D9E590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 136));
  _Unwind_Resume(a1);
}

id _UIInteractiveHighlightingEnvironmentFromView(void *a1)
{
  v1 = a1;
  v2 = objc_getAssociatedObject(v1, &_UIInteractiveHighlightingEnvironmentProperty);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [v1 superview];
    v6 = v5;
    if (v5)
    {
      v4 = _UIInteractiveHighlightingEnvironmentFromView(v5);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void _UIPreviewInteractionPlatterInsetsForRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetHeight(*&a1);
  v8.origin.x = a1;
  v8.origin.y = a2;
  v8.size.width = a3;
  v8.size.height = a4;
  CGRectGetWidth(v8);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetHeight(v9);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetWidth(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetHeight(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetWidth(v12);
}

char *_UIUpdateCurrentTiming()
{
  if (dword_1ED49FC8C)
  {
    return &_MergedGlobals_1238[24 * (dword_1ED49FC90 - 1) + 112];
  }

  else
  {
    return 0;
  }
}

char *_UIUpdateGetTiming(int a1)
{
  if (dword_1ED49FC8C <= a1)
  {
    return 0;
  }

  else
  {
    return &_MergedGlobals_1238[24 * ((~a1 - (dword_1ED49FC8C & (a1 >> 31)) + dword_1ED49FC90) & 3) + 112];
  }
}

char *_UIMachTimeDebugDescriptionCopyCStr(unint64_t a1, unint64_t a2, char *a3, size_t a4)
{
  if (qword_1ED49FCB8 != -1)
  {
    dispatch_once(&qword_1ED49FCB8, &__block_literal_global_46_2);
  }

  v8 = a1 / *&qword_1ED49FCC0;
  v9 = a2 / *&qword_1ED49FCC0;

  return _UIMediaTimeDebugDescriptionCopyCStr(a3, a4, v8, v9);
}

char *_UIMediaTimeDebugDescriptionCopyCStr(char *a1, size_t a2, double a3, double a4)
{
  if (a4 == 0.0)
  {
    v7 = mach_absolute_time();
    if (qword_1ED49FCB8 != -1)
    {
      dispatch_once(&qword_1ED49FCB8, &__block_literal_global_46_2);
    }

    a4 = v7 / *&qword_1ED49FCC0;
  }

  if (a1)
  {
    v8 = a2;
  }

  else
  {
    a1 = &unk_1ED49FCC8;
    v8 = 48;
  }

  snprintf(a1, v8, "%.06f(%+.06f)s", a3, a3 - a4);
  return a1;
}

char *_UIMachDurationDebugDescriptionCopyCStr(uint64_t a1, char *a2, size_t a3)
{
  if (qword_1ED49FCB8 != -1)
  {
    dispatch_once(&qword_1ED49FCB8, &__block_literal_global_46_2);
  }

  if (a2)
  {
    v6 = a3;
  }

  else
  {
    a2 = &unk_1ED49FCC8;
    v6 = 48;
  }

  snprintf(a2, v6, "%+.06fs", a1 / *&qword_1ED49FCC0);
  return a2;
}

char *_UIMediaDurationDebugDescriptionCopyCStr(char *a1, size_t a2, double a3)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = &unk_1ED49FCC8;
  }

  if (!a1)
  {
    a2 = 48;
  }

  snprintf(v3, a2, "%+.06fs", a3);
  return v3;
}

id _UIUpdateDebugDescriptionIndented(void *a1, __CFString *a2, __CFString *a3)
{
  v5 = @"    ";
  if (a2)
  {
    v5 = a2;
  }

  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  v7 = v6;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v11 = [a1 componentsSeparatedByCharactersInSet:v10];
  v12 = [v11 mutableCopy];

  v13 = [v12 count];
  if (v13)
  {
    v14 = v13 - 1;
    do
    {
      v15 = [v12 objectAtIndexedSubscript:v14];
      v16 = [(__CFString *)v9 stringByAppendingString:v15];
      [v12 setObject:v16 atIndexedSubscript:v14];

      v17 = v7;
      --v14;
      v9 = v17;
    }

    while (v14 != -1);
  }

  else
  {
    v17 = v9;
  }

  v18 = [v12 componentsJoinedByString:@"\n"];

  return v18;
}

void __builtinUpdateCycleEnabled_block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = _UIUpdateInputTimingProfilePath("Default");
  alertMessage = [v0 stringWithFormat:@"Default Event Timing Profile is missing (%s). Create empty file for a quick temporary workaround. File radar on UIKit for a permanent fix.", objc_msgSend(v1, "UTF8String")];

  CFUserNotificationDisplayAlert(30.0, 0, 0, 0, 0, @"Misconfigured Device", alertMessage, @"Okay", 0, 0, 0);
}

void sub_189DA6638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIViewControllerIsChildOfTwoColumnSplitViewController(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      IsChildOfTwoColumnSplitViewController = [v1 _isCollapsed] ^ 1;
    }

    else
    {
      v3 = [v1 parentViewController];
      if (!v3)
      {
        v4 = [v1 presentationController];
        v5 = v4;
        if (v4 && ([v4 shouldPresentInFullscreen] & 1) == 0)
        {
          v3 = [v1 presentingViewController];
        }

        else
        {
          v3 = 0;
        }
      }

      IsChildOfTwoColumnSplitViewController = _UIViewControllerIsChildOfTwoColumnSplitViewController(v3);
    }
  }

  else
  {
    IsChildOfTwoColumnSplitViewController = 0;
  }

  return IsChildOfTwoColumnSplitViewController;
}

void sub_189DAE9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DAECF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DAF21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DAF720(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_189DAFACC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_189DB95F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_189DB9A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

id _UIGetPreviewPresentationController(void *a1)
{
  v1 = [a1 _existingPresentationControllerImmediate:1 effective:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_189DBFEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _enumerateMapTableKeysAndObjectsUsingBlock(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = [v3 objectForKey:v10];
      v4[2](v4, v10, v11, &v16);
      LOBYTE(v10) = v16;

      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

char *_sanitizedIndexPath(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = ([v1 length] + 1);
  do
  {
    v3 = [v1 indexAtPosition:v2 - 2];
    --v2;
  }

  while (v3 == 0x7FFFFFFFFFFFFFFFLL);
  v4 = [v1 length];
  if (v4 == v2)
  {
    v2 = v1;
  }

  else if (v2)
  {
    v5 = MEMORY[0x1EEE9AC00](v4);
    v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    [v1 getIndexes:v7 range:{0, v2, v5}];
    v2 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v7 length:v2];
  }

  return v2;
}

id _manuallyUpdateSanitizedIndexPath(void *a1, void *a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v5 length];
  if (v7 >= [v6 length] && objc_msgSend(v6, "length"))
  {
    v8 = 0;
    while (1)
    {
      v9 = [v5 indexAtPosition:v8];
      v10 = [v6 indexAtPosition:v8];
      if (v9 < v10)
      {
        break;
      }

      v11 = v10;
      if (v8 == [v6 length] - 1)
      {
        if (a3 == 1 && v9 == v11)
        {
          v12 = 0;
        }

        else
        {
          v14 = [v5 length];
          v15 = MEMORY[0x1EEE9AC00](v14);
          v17 = v19 - v16;
          [v5 getIndexes:{v19 - v16, v15}];
          v18 = v9 - 1;
          if (!a3)
          {
            v18 = v9 + 1;
          }

          *&v17[8 * v8] = v18;
          v12 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v17 length:{objc_msgSend(v5, "length")}];
        }

        goto LABEL_9;
      }

      if (v9 == v11 && ++v8 < [v6 length])
      {
        continue;
      }

      break;
    }
  }

  v12 = v5;
LABEL_9:

  return v12;
}

__CFString *_NSStringFromUIOrientationLockState(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E711B350[a1];
  }
}

__CFString *_NSStringFromUIOrientationLockPreference(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E711B368[a1];
  }
}

void sub_189DC33D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DC5DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DC6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticPatternLibraryKeyKeyboardDeletion()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticPatternLibraryKeyKeyboardDeletionSymbolLoc_ptr;
  v9 = getCHHapticPatternLibraryKeyKeyboardDeletionSymbolLoc_ptr;
  if (!getCHHapticPatternLibraryKeyKeyboardDeletionSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_1();
    v7[3] = dlsym(v1, "CHHapticPatternLibraryKeyKeyboardDeletion");
    getCHHapticPatternLibraryKeyKeyboardDeletionSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternLibraryKey getCHHapticPatternLibraryKeyKeyboardDeletion(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:86 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189DC7260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticPatternLibraryKeyKeyboardInputSeparator()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticPatternLibraryKeyKeyboardInputSeparatorSymbolLoc_ptr;
  v9 = getCHHapticPatternLibraryKeyKeyboardInputSeparatorSymbolLoc_ptr;
  if (!getCHHapticPatternLibraryKeyKeyboardInputSeparatorSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_1();
    v7[3] = dlsym(v1, "CHHapticPatternLibraryKeyKeyboardInputSeparator");
    getCHHapticPatternLibraryKeyKeyboardInputSeparatorSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternLibraryKey getCHHapticPatternLibraryKeyKeyboardInputSeparator(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:85 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189DC73C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCHHapticPatternClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCHHapticPatternClass_softClass_0;
  v7 = getCHHapticPatternClass_softClass_0;
  if (!getCHHapticPatternClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCHHapticPatternClass_block_invoke_1;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getCHHapticPatternClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189DC74A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189DC793C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DC8350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location, uint64_t a14, char a15)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DC85A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, char a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DC9D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DCAF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DCB17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getCHHapticPatternLibraryKeyKeyboardInputTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticPatternLibraryKeyKeyboardInputText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticPatternLibraryKeyKeyboardInputTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreHapticsLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  CoreHapticsLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getCHHapticPatternLibraryKeyKeyboardDeletionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticPatternLibraryKeyKeyboardDeletion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticPatternLibraryKeyKeyboardDeletionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticPatternLibraryKeyKeyboardInputSeparatorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticPatternLibraryKeyKeyboardInputSeparator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticPatternLibraryKeyKeyboardInputSeparatorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaExperienceLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getCHHapticPatternLibraryKeyKeyboardDeletionRepeatSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticPatternLibraryKeyKeyboardDeletionRepeat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FDE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticPatternLibraryKeyKeyboardDeletionRapidSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticPatternLibraryKeyKeyboardDeletionRapid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FDE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticPatternLibraryKeyKeyboardOtherSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticPatternLibraryKeyKeyboardOther");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHHapticPatternLibraryKeyKeyboardOtherSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticPatternLibraryKeyKeyboardInputCandidateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticPatternLibraryKeyKeyboardInputCandidate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FDF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_block_invoke_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED49FE10)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AudioToolboxLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E711B5F8;
    v7 = 0;
    qword_1ED49FE10 = _sl_dlopen();
  }

  v2 = qword_1ED49FE10;
  if (!qword_1ED49FE10)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AudioToolboxLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"_UIKBFeedbackGenerator.m" lineNumber:60 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "AudioServicesPlaySystemSoundWithOptions");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED49FE08 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __AudioToolboxLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1ED49FE10 = result;
  return result;
}

void *__getCHHapticEventParameterIDAudioVolumeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticEventParameterIDAudioVolume");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FE18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDHapticIntensitySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticEventParameterIDHapticIntensity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FE20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDAudioPitchSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticEventParameterIDAudioPitch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FE28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDAudioPanSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticEventParameterIDAudioPan");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FE30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCHHapticEventParameterIDAudioBrightnessSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreHapticsLibrary_1();
  result = dlsym(v2, "CHHapticEventParameterIDAudioBrightness");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49FE38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMLULookupItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_1243;
  v7 = _MergedGlobals_1243;
  if (!_MergedGlobals_1243)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMLULookupItemClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getMLULookupItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189DCE4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMLULookupItemClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49FE48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MobileLookupLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E711B678;
    v8 = 0;
    qword_1ED49FE48 = _sl_dlopen();
  }

  if (!qword_1ED49FE48)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileLookupLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIPreviewItemController.m" lineNumber:40 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MLULookupItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMLULookupItemClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIPreviewItemController.m" lineNumber:41 description:{@"Unable to find class %s", "MLULookupItem"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1243 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileLookupLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49FE48 = result;
  return result;
}

id _UIGetLookupBackgroundEffect(void *a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_AXSEnhanceBackgroundContrastEnabled())
  {
    v2 = [UIColor colorWithWhite:0.0 alpha:0.4];
    v3 = [UIVisualEffect effectCompositingColor:v2];
  }

  else
  {
    v4 = __UIStatusBarManagerForWindow(0);
    v5 = [v4 statusBarStyle];

    if (v5 || [v1 userInterfaceStyle] == 2)
    {
      v6 = 0.0;
      v7 = 0.1;
    }

    else
    {
      v6 = 0.35;
      v7 = 0.35;
    }

    v8 = [UIBlurEffect _effectWithBlurRadius:8.0 scale:0.5];
    v9 = [UIColorEffect _colorEffectSourceOver:v6, v6, v6, v7, v8];
    v13[1] = v9;
    v10 = [UIColorEffect _colorEffectSourceOver:0.0, 0.0, 0.0, 0.1];
    v13[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v3 = [UIVisualEffect effectCombiningEffects:v11];
  }

  return v3;
}

void sub_189DD2638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_189DD290C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_189DD2B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18 + 7);
  objc_destroyWeak(v18 + 6);
  objc_destroyWeak(v18 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 64));
  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

void sub_189DD67A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIPreviewInteractionAllowedToBeginForView(id a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED49FE58 != -1)
  {
    dispatch_once(&qword_1ED49FE58, &__block_literal_global_467);
  }

  if (_MergedGlobals_1244 != 1)
  {
    return 0;
  }

  result = _AXSForceTouchEnabled();
  if (result)
  {
    NSClassFromString(&cfstr_Uicontextmenui_1.isa);
    if (a1)
    {
      v3 = 0uLL;
      do
      {
        v11 = v3;
        v12 = v3;
        v10 = v3;
        v4 = [a1 interactions];
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v10;
          while (2)
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v10 != v7)
              {
                objc_enumerationMutation(v4);
              }

              if (objc_opt_isKindOfClass())
              {

                return 0;
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }

        a1 = [a1 superview];
        v3 = 0uLL;
      }

      while (a1);
    }

    return 1;
  }

  return result;
}

void sub_189DD7A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DD8B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DD8FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DD9190(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __destructor_8_s24_sb32_sb40(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_189DDC208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t previewTransition_block_invoke(uint64_t a1, id *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = v2[1];
  if ((*(v2 + 51) & 1) == 0)
  {
    if (v3 == 4 || *(v2 + 32) != 1)
    {
      if (*(v2 + 18) == 1)
      {
        v7 = [*a2 delegate];
        v8 = [v7 clickPresentationInteractionShouldPresent:v2];

        if (!v8)
        {
          return 4;
        }
      }

      goto LABEL_14;
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__161;
    v15 = __Block_byref_object_dispose__161;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61___UIClickPresentationInteraction__handleTransitionToPreview__block_invoke;
    v10[3] = &unk_1E70F8CA0;
    v10[4] = v2;
    v10[5] = &v11;
    v4 = _Block_copy(v10);
    v3 = [v2 delegate];
    [v3 _clickPresentationInteraction:v2 shouldPresentWithCompletion:v4];

    v5 = v12[5];
    if (v5)
    {
      if ([v5 BOOLValue])
      {
        v6 = 1;
      }

      else
      {
        v6 = 0;
        v3 = v2[1];
      }
    }

    else
    {
      v6 = 0;
      v3 = 4;
    }

    _Block_object_dispose(&v11, 8);
    if (v6)
    {
LABEL_14:
      if ([v2 _canPerformPresentation])
      {
        return 5;
      }

      else
      {
        return v2[1];
      }
    }
  }

  return v3;
}

void sub_189DDC778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t stateMachineSpec_block_invoke_5_3(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (*(*a2 + 8) != 4)
  {
    return 1;
  }

  v2 = a2[2];
  if (v2 == 1 || v2 == 11)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

void stateMachineSpec_block_invoke_6_2(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 2)
  {
    v4 = *a2;
    if (*a2)
    {
      if (v4[23] == 1)
      {
        v5 = [*a2 delegate];
        v6 = [v5 _clickPresentationInteractionShouldAssociateWithDrag:v4];

        if (v6)
        {
          [v4 _associateWithActiveDragInteraction];
        }
      }

      v7 = [v4 presentationAssistant];

      if (v7)
      {
        v8 = [v4 presentationAssistant];
        [v8 setLifecycleCompletion:0];

        [v4 setPresentationAssistant:0];
      }
    }
  }
}

uint64_t stateMachineSpec_block_invoke_9_0(uint64_t a1, void *a2)
{
  if (*a2)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

void sub_189DDD294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIWillResetDatePicker()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:0x1EFB8A0F0 object:0];
}

void _UIResetDatePicker()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:0x1EFB8A3D0 object:0];
}

id _UIDatePickerClassForStyleAndMode(uint64_t a1, int64_t a2)
{
  v4 = objc_opt_class();
  v5 = (a2 - 3) >= 2 && a2 <= 4268;
  v6 = 1;
  if (v5)
  {
    v6 = 2;
  }

  if (!a1)
  {
    a1 = v6;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2 && ((a2 - 5) > 0xFFFFFFFFFFFFFFFDLL || a2 >= 4269 && a2 != 4272))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIDatePickerAssertUnsupportedStyleAndMode(UIDatePickerStyle, UIDatePickerMode)"}];
    v12 = _UIDatePickerStringFromMode(a2);
    v13 = _UIDatePickerStringFromStyle(a1);
    [v10 handleFailureInFunction:v11 file:@"UIDatePicker.m" lineNumber:134 description:{@"UIDatePickerMode %@ is unsupported when using style %@.", v12, v13}];
  }

  if (dyld_program_sdk_at_least())
  {
    if (a1 == 1 || a1 == 3 || a1 == 2)
    {
      v4 = objc_opt_class();
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Class _UIDatePickerClassForStyleAndMode(UIDatePickerStyle, UIDatePickerMode)"}];
      [v7 handleFailureInFunction:v8 file:@"UIDatePicker.m" lineNumber:174 description:{@"Unknown UIDatePickerStyle %li", a1}];
    }
  }

  return v4;
}

__CFString *_UIDatePickerStringFromMode(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringValue];
  }

  else
  {
    v1 = off_1E711BB90[a1];
  }

  return v1;
}

__CFString *_UIDatePickerStringFromStyle(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 stringValue];
  }

  else
  {
    v1 = off_1E711BBB8[a1 - 1];
  }

  return v1;
}

void sub_189DE1844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189DE26BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id getSTKImageGlyphClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getSTKImageGlyphClass_softClass;
  v6 = getSTKImageGlyphClass_softClass;
  if (!getSTKImageGlyphClass_softClass)
  {
    StickerKitLibraryCore_0();
    v4[3] = objc_getClass("STKImageGlyph");
    getSTKImageGlyphClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_189DE2C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189DE3550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id getEMFStringUtilitiesClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEMFStringUtilitiesClass_softClass_0;
  v7 = getEMFStringUtilitiesClass_softClass_0;
  if (!getEMFStringUtilitiesClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFStringUtilitiesClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFStringUtilitiesClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189DE3C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getEMFEmojiCategoryClass_2()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEMFEmojiCategoryClass_softClass_2;
  v7 = getEMFEmojiCategoryClass_softClass_2;
  if (!getEMFEmojiCategoryClass_softClass_2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFEmojiCategoryClass_block_invoke_2;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFEmojiCategoryClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189DE3E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189DE60E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189DE805C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189DEB958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTKImageGlyphDataSourceClass_block_invoke_0(uint64_t a1)
{
  StickerKitLibraryCore_0();
  result = objc_getClass("STKImageGlyphDataSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTKImageGlyphDataSourceClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void StickerKitLibraryCore_0()
{
  if (!StickerKitLibraryCore_frameworkLibrary_0)
  {
    StickerKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }
}

uint64_t __StickerKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  StickerKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getSTKImageGlyphClass_block_invoke(uint64_t a1)
{
  StickerKitLibraryCore_0();
  result = objc_getClass("STKImageGlyph");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTKImageGlyphClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getEMFStringUtilitiesClass_block_invoke_0(uint64_t a1)
{
  EmojiFoundationLibrary_4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFStringUtilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFStringUtilitiesClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFStringUtilitiesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiAndStickerCollectionInputView.m" lineNumber:67 description:{@"Unable to find class %s", "EMFStringUtilities"}];

    __break(1u);
  }
}

void EmojiFoundationLibrary_4()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary_4)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __EmojiFoundationLibraryCore_block_invoke_6;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E711BE18;
    v5 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  if (!EmojiFoundationLibraryCore_frameworkLibrary_4)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmojiFoundationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIKeyboardEmojiAndStickerCollectionInputView.m" lineNumber:65 description:{@"%s", v3[0]}];

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

uint64_t __EmojiFoundationLibraryCore_block_invoke_6()
{
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary_4 = result;
  return result;
}

void __getEMFEmojiCategoryClass_block_invoke_2(uint64_t a1)
{
  EmojiFoundationLibrary_4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiCategory");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiCategoryClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiCategoryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiAndStickerCollectionInputView.m" lineNumber:66 description:{@"Unable to find class %s", "EMFEmojiCategory"}];

    __break(1u);
  }
}

void __getEMFEmojiTokenClass_block_invoke_4(uint64_t a1)
{
  EmojiFoundationLibrary_4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiToken");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFEmojiTokenClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiTokenClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiAndStickerCollectionInputView.m" lineNumber:68 description:{@"Unable to find class %s", "EMFEmojiToken"}];

    __break(1u);
  }
}

__CFString *_NSStringFromUITouchSenstiveButtonPositionHint(unint64_t a1)
{
  if (a1)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v2 = objc_opt_new();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___NSStringFromUITouchSenstiveButtonPositionHint_block_invoke;
    v7[3] = &unk_1E711BE58;
    v3 = v2;
    v8 = v3;
    v9 = &stru_1EFB14550;
    v10 = @", ";
    v11 = v12;
    _UIEnumerateOptions(a1, v7);
    v4 = v10;
    v5 = v3;

    _Block_object_dispose(v12, 8);
  }

  else
  {
    v5 = @"none";
  }

  return v5;
}

void sub_189DEDE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UITouchSensitiveButtonRadiusInPointsFromMM(void *a1, double a2)
{
  v4 = [a1 _eventRoutingScene];
  v5 = [v4 _screen];

  if ([v5 _isEmbeddedScreen] & 1) != 0 || v5 && (v5[202])
  {
    v7 = MGCopyAnswer();
    v8 = MGCopyAnswer();
    if (v8 && v7)
    {
      v9 = [v5 displayConfiguration];
      [v8 doubleValue];
      v11 = v10 / 25.4;
      [v9 bounds];
      v13 = v12;
      [v9 pointScale];
      v15 = v14 * v13;
      [v7 doubleValue];
      v17 = v11 * (v15 / v16);
      [v5 scale];
      v6 = v17 / v18 * a2;
    }

    else
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UITouchSensitiveButtonRadiusInPointsFromMM(CGFloat, UIWindow * _Nonnull const __strong)"}];
      [v9 handleFailureInFunction:v19 file:@"_UITouchSensitiveButton.m" lineNumber:122 description:{@"%s: Unexpected nil screen information from query", "CGFloat _UITouchSensitiveButtonRadiusInPointsFromMM(CGFloat, UIWindow * _Nonnull const __strong)"}];

      v6 = 0.0;
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___UITouchSensitiveButtonRadiusInPointsFromMM_block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = a1;
    if (_UITouchSensitiveButtonRadiusInPointsFromMM_once != -1)
    {
      dispatch_once(&_UITouchSensitiveButtonRadiusInPointsFromMM_once, block);
    }

    v6 = 0.0;
  }

  return v6;
}

void sub_189DEEA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t _UIUpdateRequestRecordSortedSetRemoveRequest(char **a1, unint64_t a2, _OWORD *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = &v4[24 * v5];
  while (v5)
  {
    v7 = v5 >> 1;
    v8 = &v4[24 * (v5 >> 1)];
    v10 = *v8;
    v9 = (v8 + 3);
    v5 += ~(v5 >> 1);
    if (v10 < a2)
    {
      v4 = v9;
    }

    else
    {
      v5 = v7;
    }
  }

  if (v6 == v4 || *v4 != a2)
  {
    return 0;
  }

  *a3 = *(v4 + 8);
  v12 = *a1;
  v13 = (a1[1] - 1);
  a1[1] = v13;
  memmove(v4, v4 + 24, v12 - v4 + 24 * v13);
  return 1;
}

id _UIDateFormatStripOtherFormatCharacters(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 length];
  v5 = malloc_type_calloc(v4, 2uLL, 0x1000040BDFB0063uLL);
  v6 = 0;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = [v3 characterAtIndex:v7];
      v10 = v9;
      if (v9 == 39)
      {
        break;
      }

      if (!(v8 & 1 | (v9 == a2)))
      {
        if (_UICalendarUnitForFormatCharacter(v9) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = 0;
          goto LABEL_8;
        }

        v8 = 0;
        if (v10 <= 0x29 && ((1 << v10) & 0x30000000001) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      if (v9)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (v4 == ++v7)
      {
        goto LABEL_15;
      }
    }

    v8 ^= 1u;
LABEL_7:
    v5[v6++] = v10;
    goto LABEL_8;
  }

LABEL_15:
  v11 = [MEMORY[0x1E696AEC0] stringWithCharacters:v5 length:v6];
  free(v5);
  v12 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  return v13;
}

id _UIDateFormatReplaceKoreanYearFormatIfNeeded(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localeIdentifier];
  v5 = [v4 hasPrefix:@"ko"];

  if (v5)
  {
    v6 = [v3 stringByReplacingOccurrencesOfString:@"r년(U년)" withString:@"rU년"];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

void sub_189DF523C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

uint64_t _UIViewControllerCompareToViewController(void *a1, void *a2)
{
  v4 = [a1 _existingView];
  v5 = [v4 window];

  v6 = [a2 _existingView];
  v7 = [v6 window];

  if (a1 == a2)
  {
    goto LABEL_31;
  }

  if (!v5 || !v7 || v5 == v7)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithObject:a1];
    v10 = [(UIViewController *)a1 _parentViewController];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = [a1 _parentModalViewController];
      if (!v11)
      {
LABEL_16:
        if ([v9 containsObject:a2])
        {
          v8 = 1;
        }

        else
        {
          v16 = a2;
          v17 = [(UIViewController *)v16 _parentViewController];
          if (v17)
          {
            v18 = v17;
            goto LABEL_23;
          }

          v18 = [v16 _parentModalViewController];
          if (v18)
          {
            while (1)
            {
LABEL_23:
              if (v18 == a1)
              {
                v21 = 0;
                v8 = -1;
                goto LABEL_39;
              }

              v19 = [v9 containsObject:v18];
              v20 = v18;
              v21 = v20;
              if (v19)
              {
                break;
              }

              v22 = v21[12];
              v23 = v22;
              if (v22)
              {
                v24 = v22;
              }

              else
              {
                v24 = [v21 _parentModalViewController];
              }

              v18 = v24;

              v16 = v21;
              if (!v18)
              {
                v8 = 0;
                v16 = v21;
                v21 = 0;
                goto LABEL_39;
              }
            }

            v28 = [v20 childModalViewController];

            v8 = -1;
            if (v28 != v16)
            {
              v29 = [v9 objectAtIndex:{objc_msgSend(v9, "indexOfObjectIdenticalTo:", v21) - 1}];
              v30 = [v21 childViewControllers];
              v31 = [v30 indexOfObjectIdenticalTo:v29];

              v32 = [v21 childViewControllers];
              v33 = [v32 indexOfObjectIdenticalTo:v16];

              if (v33 <= v31)
              {
                v8 = 1;
              }
            }

            v18 = v21;
          }

          else
          {
            v21 = 0;
            v8 = 0;
          }

LABEL_39:
        }

        goto LABEL_41;
      }
    }

    do
    {
      [v9 addObject:v11];
      v12 = v11[12];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [v11 _parentModalViewController];
      }

      v15 = v14;

      v11 = v15;
    }

    while (v15);
    goto LABEL_16;
  }

  if ([v5 isHidden] && (objc_msgSend(v7, "isHidden") & 1) != 0)
  {
    goto LABEL_31;
  }

  if ([v7 isHidden])
  {
    v8 = 1;
    goto LABEL_41;
  }

  if ([v5 isHidden])
  {
    v8 = -1;
    goto LABEL_41;
  }

  [v7 windowLevel];
  v26 = v25;
  [v5 windowLevel];
  if (v26 == v27)
  {
LABEL_31:
    v8 = 0;
    goto LABEL_41;
  }

  [v7 windowLevel];
  v36 = v35;
  [v5 windowLevel];
  if (v36 <= v37)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

LABEL_41:

  return v8;
}

uint64_t _UIEventDeferringBehaviorCompareRuleOwningElementToElement(void *a1, void *a2)
{
  if (!a1 || !a2)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"}];
    [v29 handleFailureInFunction:v30 file:@"_UIEventDeferringBehavior.m" lineNumber:397 description:{@"%s: Invalid state, an object is missing: r1: %@; r2: %@", "NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", a1, a2}];
  }

  if (!_NSIsNSObject() || (_NSIsNSObject() & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"}];
    [v27 handleFailureInFunction:v28 file:@"_UIEventDeferringBehavior.m" lineNumber:398 description:{@"%s: Invalid state, an object is not a subclass of NSObject: r1: %@; r2: %@", "NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", a1, a2}];
  }

  v4 = a1;
  v5 = a2;
  v6 = [v4 interfaceElementCategory];
  v7 = [v5 interfaceElementCategory];
  if (!(v6 | v7))
  {
    goto LABEL_14;
  }

  if (v6 && !v7)
  {
    goto LABEL_8;
  }

  if (!v6 && v7)
  {
LABEL_11:
    v8 = -1;
    goto LABEL_15;
  }

  if (v6 == 1 && v7 == 1)
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  if (v6 != 1 || v7 == 1)
  {
    if (v7 == 1 && v6 != 1)
    {
      goto LABEL_11;
    }

    if (v6 == 2 && v7 == 3)
    {
      if ([v4 __isKindOfUIWindow])
      {
        v10 = v4;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      if ([v5 __isKindOfUIViewController])
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = v13;
      if (!v11 || !v13)
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"}];
        [v31 handleFailureInFunction:v32 file:@"_UIEventDeferringBehavior.m" lineNumber:454 description:{@"%s: Invalid state. Should be comparing a window and a vc: window1: %p; vc2: %p", "NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", v4, v5}];
      }

      v15 = v11;
      v16 = v14;
      v17 = 1;
    }

    else
    {
      if (v7 != 2 || v6 != 3)
      {
        if (v6 != 2 || v7 != 2)
        {
          if (v6 != 3 || v7 != 3)
          {
            v35 = v7;
            v36 = [MEMORY[0x1E696AAA8] currentHandler];
            v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"}];
            v38 = _NSStringFromUIEventDeferringInterfaceElementCategory(v6);
            v39 = _NSStringFromUIEventDeferringInterfaceElementCategory(v35);
            [v36 handleFailureInFunction:v37 file:@"_UIEventDeferringBehavior.m" lineNumber:477 description:{@"%s: Invalid state. Should be comparing two view controllers: r1: %@; r2: %@", "NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", v38, v39}];
          }

          if ([v4 __isKindOfUIViewController])
          {
            v25 = v4;
          }

          else
          {
            v25 = 0;
          }

          v11 = v25;
          if ([v5 __isKindOfUIViewController])
          {
            v26 = v5;
          }

          else
          {
            v26 = 0;
          }

          v8 = _UIViewControllerCompareToViewController(v11, v26);
          goto LABEL_44;
        }

        if ([v4 __isKindOfUIWindow])
        {
          v22 = v4;
        }

        else
        {
          v22 = 0;
        }

        v11 = v22;
        if ([v5 __isKindOfUIWindow])
        {
          v23 = v5;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
        v14 = v24;
        if (!v11 || !v24)
        {
          v40 = [MEMORY[0x1E696AAA8] currentHandler];
          v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"}];
          [v40 handleFailureInFunction:v41 file:@"_UIEventDeferringBehavior.m" lineNumber:472 description:{@"%s: Invalid state. Should be comparing two valid windows: window1: %p; window2: %p", "NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", v4, v5}];
        }

        v21 = _UIWindowCompareToWindow(v11, v14);
LABEL_43:
        v8 = v21;

LABEL_44:
        goto LABEL_15;
      }

      if ([v4 __isKindOfUIViewController])
      {
        v18 = v4;
      }

      else
      {
        v18 = 0;
      }

      v11 = v18;
      if ([v5 __isKindOfUIWindow])
      {
        v19 = v5;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v14 = v20;
      if (!v11 || !v20)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"}];
        [v33 handleFailureInFunction:v34 file:@"_UIEventDeferringBehavior.m" lineNumber:464 description:{@"%s: Invalid state. Should be comparing a window and a vc: vc1: %p; window2: %p", "NSComparisonResult _UIEventDeferringBehaviorCompareRuleOwningElementToElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", v4, v5}];
      }

      v15 = v14;
      v16 = v11;
      v17 = 0;
    }

    v21 = _UIEventDeferringWindowCompareToViewController(v15, v16, v17, 0);
    goto LABEL_43;
  }

LABEL_8:
  v8 = 1;
LABEL_15:

  return v8;
}

uint64_t _UIEventDeferringWindowCompareToViewController(void *a1, void *a2, int a3, int a4)
{
  if (!a1 || !a2)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringWindowCompareToViewController(UIWindow * _Nonnull const __strong, UIViewController * _Nonnull const __strong, BOOL, BOOL)"}];
    [v20 handleFailureInFunction:v21 file:@"_UIEventDeferringBehavior.m" lineNumber:259 description:{@"%s: Invalid state. Should be comparing two valid objects: window: %@; vc: %@", "NSComparisonResult _UIEventDeferringWindowCompareToViewController(UIWindow * _Nonnull const __strong, UIViewController * _Nonnull const __strong, BOOL, BOOL)", a1, a2}];
  }

  v8 = [a2 _existingView];
  v9 = [v8 window];

  if (!v9 && ([a1 isHidden] & 1) != 0 || objc_msgSend(v9, "isHidden") && (objc_msgSend(a1, "isHidden") & 1) != 0)
  {
    goto LABEL_7;
  }

  if (!v9 && ![a1 isHidden] || !a4 && v9 == a1 || objc_msgSend(v9, "isHidden"))
  {
    v11 = a3 == 0;
LABEL_14:
    v12 = 1;
    goto LABEL_15;
  }

  if (![a1 isHidden])
  {
    if (a4 && v9 == a1 || ([v9 windowLevel], v15 = v14, objc_msgSend(a1, "windowLevel"), v15 == v16))
    {
LABEL_7:
      v10 = 0;
      goto LABEL_18;
    }

    [v9 windowLevel];
    v18 = v17;
    [a1 windowLevel];
    v11 = v18 > v19 == a3;
    goto LABEL_14;
  }

  v11 = a3 == 0;
  v12 = -1;
LABEL_15:
  if (v11)
  {
    v10 = -v12;
  }

  else
  {
    v10 = v12;
  }

LABEL_18:

  return v10;
}

uint64_t _UIEventDeferringBehaviorIsElementOccludedByWindow(void *a1, void *a2)
{
  if (!a1 || !a2)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorIsElementOccludedByWindow(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, UIWindow * _Nonnull const __strong)"}];
    [v17 handleFailureInFunction:v18 file:@"_UIEventDeferringBehavior.m" lineNumber:484 description:{@"%s: Invalid state, an object is missing: ruleOwner: %@; window: %@", "NSComparisonResult _UIEventDeferringBehaviorIsElementOccludedByWindow(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, UIWindow * _Nonnull const __strong)", a1, a2}];
  }

  if ((_NSIsNSObject() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorIsElementOccludedByWindow(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, UIWindow * _Nonnull const __strong)"}];
    [v15 handleFailureInFunction:v16 file:@"_UIEventDeferringBehavior.m" lineNumber:485 description:{@"%s: Invalid state, ruleOwner is not a subclass of NSObject: ruleOwner: %@", "NSComparisonResult _UIEventDeferringBehaviorIsElementOccludedByWindow(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, UIWindow * _Nonnull const __strong)", a1}];
  }

  v4 = a1;
  v5 = [v4 interfaceElementCategory];
  if (v5 >= 2)
  {
    v7 = v5;
    if (v5 == 3)
    {
      if ([v4 __isKindOfUIViewController])
      {
        v8 = v4;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      v10 = a2;
      if (!a2 || !v9)
      {
        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorIsElementOccludedByWindow(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, UIWindow * _Nonnull const __strong)"}];
        [v22 handleFailureInFunction:v23 file:@"_UIEventDeferringBehavior.m" lineNumber:508 description:{@"%s: Invalid state. Should be comparing a vc and a window: ruleOwner: %p; window: %p", "NSComparisonResult _UIEventDeferringBehaviorIsElementOccludedByWindow(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, UIWindow * _Nonnull const __strong)", v4, v10}];
      }

      v11 = _UIEventDeferringWindowCompareToViewController(v10, v9, 0, 1);
    }

    else
    {
      if (v5 != 2)
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorIsElementOccludedByWindow(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, UIWindow * _Nonnull const __strong)"}];
        v21 = _NSStringFromUIEventDeferringInterfaceElementCategory(v7);
        [v19 handleFailureInFunction:v20 file:@"_UIEventDeferringBehavior.m" lineNumber:514 description:{@"%s: Invalid state. Should be comparing two windows: ruleOwner: %@", "NSComparisonResult _UIEventDeferringBehaviorIsElementOccludedByWindow(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, UIWindow * _Nonnull const __strong)", v21}];
      }

      if ([v4 __isKindOfUIWindow])
      {
        v12 = v4;
      }

      else
      {
        v12 = 0;
      }

      v9 = v12;
      v13 = a2;
      if (!a2 || !v9)
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIEventDeferringBehaviorIsElementOccludedByWindow(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, UIWindow * _Nonnull const __strong)"}];
        [v24 handleFailureInFunction:v25 file:@"_UIEventDeferringBehavior.m" lineNumber:517 description:{@"%s: Invalid state. Should be comparing two valid windows: ruleOwner: %p; window: %p", "NSComparisonResult _UIEventDeferringBehaviorIsElementOccludedByWindow(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong, UIWindow * _Nonnull const __strong)", v4, v13}];
      }

      v11 = _UIWindowCompareToWindow(v9, v13);
    }

    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

double _UIFocusSpecularHighlightLayerDefaultFocusSensitivity()
{
  v0 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B440, @"UISolariumFocusSpecularHighlightFocusSensitivity");
  result = *&qword_1ED48B448;
  if (v0)
  {
    return 1.3;
  }

  return result;
}

uint64_t _UIDateComponentsEquivalentUnit(uint64_t result)
{
  if (result < 0x2000)
  {
    if (result == 512 || result == 1024)
    {
      return 16;
    }

    else if (result == 4096)
    {
      return 0x2000;
    }
  }

  else if (result >= 0x100000)
  {
    if (result == 0x100000 || result == 0x200000)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v1 = 4;
    if (result != 0x4000)
    {
      v1 = result;
    }

    if (result == 0x2000)
    {
      return 0x2000;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

void _UIDateComponentsSetValue(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v8 = v5;
  if (a2 <= 511)
  {
    if (a2 <= 15)
    {
      switch(a2)
      {
        case 2:
          [v5 setEra:a3];
          break;
        case 4:
          [v5 setYear:a3];
          break;
        case 8:
          [v5 setMonth:a3];
          break;
        default:
          goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (a2 > 63)
    {
      if (a2 == 64)
      {
        [v5 setMinute:a3];
      }

      else
      {
        if (a2 != 128)
        {
          goto LABEL_43;
        }

        [v5 setSecond:a3];
      }

      goto LABEL_42;
    }

    if (a2 != 16)
    {
      if (a2 != 32)
      {
        goto LABEL_43;
      }

      v6 = a3;
      goto LABEL_41;
    }

    [v5 setDay:a3];
LABEL_42:
    v5 = v8;
    goto LABEL_43;
  }

  if (a2 <= 4095)
  {
    switch(a2)
    {
      case 512:
        [v5 setWeekday:a3];
        break;
      case 1024:
        [v5 setWeekdayOrdinal:a3];
        break;
      case 2048:
        [v5 setQuarter:a3];
        break;
      default:
        goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (a2 < 0x4000)
  {
    if (a2 == 4096)
    {
      [v5 setWeekOfMonth:a3];
    }

    else
    {
      if (a2 != 0x2000)
      {
        goto LABEL_43;
      }

      [v5 setWeekOfYear:a3];
    }

    goto LABEL_42;
  }

  if (a2 == 0x4000)
  {
    [v5 setYearForWeekOfYear:a3];
    goto LABEL_42;
  }

  if (a2 != 0x10000)
  {
    goto LABEL_43;
  }

  if (!a3)
  {
    v7 = [v5 hour] < 12;
    v5 = v8;
    if (v7)
    {
      goto LABEL_43;
    }

    v6 = [v8 hour] - 12;
    goto LABEL_40;
  }

  if (a3 == 1)
  {
    v7 = [v5 hour] <= 11;
    v5 = v8;
    if (v7)
    {
      v6 = [v8 hour] + 12;
LABEL_40:
      v5 = v8;
LABEL_41:
      [v5 setHour:v6];
      goto LABEL_42;
    }
  }

LABEL_43:
}

uint64_t _UIDateComponentsGetValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2 > 511)
  {
    if (a2 <= 4095)
    {
      switch(a2)
      {
        case 512:
          v6 = [v3 weekday];
          goto LABEL_35;
        case 1024:
          v6 = [v3 weekdayOrdinal];
          goto LABEL_35;
        case 2048:
          v6 = [v3 quarter];
          goto LABEL_35;
      }
    }

    else if (a2 >= 0x4000)
    {
      if (a2 == 0x4000)
      {
        v6 = [v3 yearForWeekOfYear];
        goto LABEL_35;
      }

      if (a2 == 0x10000 && [v3 hour] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [v4 hour] > 11;
      }
    }

    else
    {
      if (a2 == 4096)
      {
        v6 = [v3 weekOfMonth];
        goto LABEL_35;
      }

      if (a2 == 0x2000)
      {
        v6 = [v3 weekOfYear];
        goto LABEL_35;
      }
    }
  }

  else if (a2 <= 15)
  {
    switch(a2)
    {
      case 2:
        v6 = [v3 era];
        goto LABEL_35;
      case 4:
        v6 = [v3 year];
        goto LABEL_35;
      case 8:
        v6 = [v3 month];
        goto LABEL_35;
    }
  }

  else if (a2 > 63)
  {
    if (a2 == 64)
    {
      v6 = [v3 minute];
      goto LABEL_35;
    }

    if (a2 == 128)
    {
      v6 = [v3 second];
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 16)
    {
      v6 = [v3 day];
      goto LABEL_35;
    }

    if (a2 == 32)
    {
      v6 = [v3 hour];
LABEL_35:
      v5 = v6;
    }
  }

  return v5;
}

uint64_t _UIDatePickerCompareDateComponents(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if ((a3 & 2) != 0 && [v5 era] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "era") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v5 era];
    if (v10 < [v6 era])
    {
      goto LABEL_47;
    }

    v11 = [v5 era];
    if (v11 > [v6 era])
    {
      goto LABEL_49;
    }
  }

  if ((a3 & 4) != 0 && [v5 year] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "year") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v5 year];
    if (v12 < [v6 year])
    {
      goto LABEL_47;
    }

    v13 = [v5 year];
    if (v13 > [v6 year])
    {
      goto LABEL_49;
    }
  }

  if ((a3 & 8) != 0 && [v5 month] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "month") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v5 month];
    if (v14 < [v6 month])
    {
      goto LABEL_47;
    }

    v15 = [v5 month];
    if (v15 > [v6 month])
    {
      goto LABEL_49;
    }
  }

  if ((a3 & 0x10) != 0 && [v5 day] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "day") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v5 day];
    if (v16 < [v6 day])
    {
      goto LABEL_47;
    }

    v17 = [v5 day];
    if (v17 > [v6 day])
    {
      goto LABEL_49;
    }
  }

  if ((a3 & 0x20) != 0 && [v5 hour] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "hour") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [v5 hour];
    if (v18 < [v6 hour])
    {
      goto LABEL_47;
    }

    v19 = [v5 hour];
    if (v19 > [v6 hour])
    {
      goto LABEL_49;
    }
  }

  if ((a3 & 0x40) != 0 && [v5 minute] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "minute") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [v5 minute];
    if (v20 < [v6 minute])
    {
      goto LABEL_47;
    }

    v21 = [v5 minute];
    if (v21 > [v6 minute])
    {
      goto LABEL_49;
    }
  }

  if ((a3 & 0x80) != 0 && [v5 second] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "second") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = [v5 second];
    if (v22 < [v6 second])
    {
      goto LABEL_47;
    }

    v23 = [v5 second];
    if (v23 > [v6 second])
    {
      goto LABEL_49;
    }
  }

  Value = _UIDateComponentsGetValue(v5, 0x10000);
  v8 = _UIDateComponentsGetValue(v6, 0x10000);
  if ((a3 & 0x10000) == 0 || Value == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (Value < v8)
  {
LABEL_47:
    v9 = -1;
    goto LABEL_50;
  }

  if (Value > v8)
  {
LABEL_49:
    v9 = 1;
    goto LABEL_50;
  }

LABEL_27:
  v9 = 0;
LABEL_50:

  return v9;
}

uint64_t _UICalendarUnitForFormatCharacter(int a1)
{
  if ((a1 - 69) > 0x35)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_18A680F48[(a1 - 69)];
  }
}

uint64_t _UICalendarUnitIsSupported(uint64_t a1)
{
  result = 1;
  if (a1 <= 127)
  {
    v3 = a1 - 2;
    if (v3 <= 0x3E && ((1 << v3) & 0x4000000040004045) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 4095)
  {
    if (a1 != 128 && a1 != 512)
    {
      return 0;
    }
  }

  else if (a1 != 4096 && a1 != 0x2000 && a1 != 0x4000)
  {
    return 0;
  }

  return result;
}

void *_UICopyCalendarUnitsFromFormatString(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 length];
    v8 = malloc_type_calloc(v7, 8uLL, 0x100004000313F17uLL);
    *a3 = 0;
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = [v6 characterAtIndex:v9];
        if (v12 == 39)
        {
          v10 ^= 1u;
        }

        else if (v10)
        {
          v10 = 1;
        }

        else
        {
          v13 = _UICalendarUnitForFormatCharacter(v12);
          v10 = 0;
          if (v13 != 0x7FFFFFFFFFFFFFFFLL && (v13 & a2) != 0 && (v13 & v11) == 0)
          {
            v10 = 0;
            v8[(*a3)++] = v13;
            v11 |= v13;
          }
        }

        ++v9;
      }

      while (v7 != v9);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id _UIDatePickerDateFormatFromTemplate(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    if ([MEMORY[0x1E695DF58] _usesTwelveHourClock])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:v5 options:v7 locale:v6];

  return v8;
}

void sub_189E0B458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_UITraitDataTypeToString(unint64_t a1)
{
  if (a1 >= 5)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid _UITraitDataType (%ld)", a1];
  }

  else
  {
    return off_1E711C690[a1];
  }
}

void _UIPickerViewCommonInit(void *a1)
{
  v30[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  *(v1 + 512) = 1;
  *(v1 + 65) = dyld_program_sdk_at_least();
  v2 = +[UIColor clearColor];
  v3 = *(v1 + 61);
  *(v1 + 61) = v2;

  *(v1 + 513) = 1;
  [v1 setClipsToBounds:1];
  v4 = [UIView alloc];
  [v1 bounds];
  v5 = [(UIView *)v4 initWithFrame:?];
  v6 = *(v1 + 55);
  *(v1 + 55) = v5;

  v7 = [MEMORY[0x1E6979380] layer];
  v8 = *(v1 + 56);
  *(v1 + 56) = v7;

  v9 = *(v1 + 56);
  v29[0] = *MEMORY[0x1E6979EE0];
  v10 = [MEMORY[0x1E695DFB0] null];
  v30[0] = v10;
  v29[1] = @"bounds";
  v11 = [MEMORY[0x1E695DFB0] null];
  v30[1] = v11;
  v29[2] = @"position";
  v12 = [MEMORY[0x1E695DFB0] null];
  v30[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  [v9 setActions:v13];

  v14 = *(v1 + 56);
  v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E0]];
  [v14 setCompositingFilter:v15];

  v16 = [v1 _style];
  [v16 configureMaskGradientLayer:*(v1 + 56)];

  v17 = [UISelectionFeedbackGenerator alloc];
  v18 = [*(v1 + 62) selectionFeedbackGeneratorConfiguration];
  v19 = [(UIFeedbackGenerator *)v17 initWithConfiguration:v18 view:v1];
  v20 = *(v1 + 66);
  *(v1 + 66) = v19;

  if (dyld_program_sdk_at_least())
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = ___UIPickerViewCommonInit_block_invoke;
    v26[3] = &unk_1E70F3590;
    v27 = v1;
    [UIView _performSystemAppearanceModifications:v26];
  }

  v21 = [v1 backgroundColor];

  if (!v21)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___UIPickerViewCommonInit_block_invoke_2;
    v24[3] = &unk_1E70F3590;
    v25 = v1;
    [UIView _performSystemAppearanceModifications:v24];
  }

  if (dyld_program_sdk_at_least())
  {
    v28[0] = 0x1EFE32398;
    v28[1] = 0x1EFE323F8;
    v28[2] = 0x1EFE32410;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v23 = [v1 _registerForTraitTokenChanges:v22 withTarget:v1 action:sel_invalidateIntrinsicContentSize];
  }
}

void sub_189E13A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UIUpdateInputSetDebugDescription(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    v2 = mach_absolute_time();
  }

  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"Input Set, alignment=%i, inputListChanged=%i, inputs=%u:", *(a1 + 40), *(a1 + 64), *(a1 + 68)];
  for (i = *(a1 + 72); i; i = *(i + 56))
  {
    v6 = _UIUpdateInputDebugDescription(i, v2);
    v7 = _UIUpdateDebugDescriptionIndented(v6, @"\n  - ", @"    ");
    [v4 appendString:v7];
  }

  v8 = _UIUpdateInputAggregateCacheDebugDescription((a1 + 8), v2);
  v9 = _UIUpdateDebugDescriptionIndented(v8, @"\n  ", @"  ");
  [v4 appendString:v9];

  return v4;
}

void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 set];
  v5 = [v4 mutableCopy];

  v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v5 containsObject:v12])
        {
          v13 = v6;
        }

        else
        {
          v13 = v5;
        }

        [v13 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(NSOrderedSet *__strong, NSArray *__strong)"}];
  [v14 handleFailureInFunction:v15 file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:24 description:{@"Identifiers in a section snapshot must be unique. Duplicate item identifiers: %@", v6}];
}

uint64_t __TextInputUILibraryCore_block_invoke_20()
{
  result = _sl_dlopen();
  qword_1ED499408 = result;
  return result;
}

id _UIStatusBarGetLowestPrioritizedItem(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v14;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 priority];
        if (v9 < v6)
        {
          v10 = v9;
          v11 = v8;

          v4 = v11;
          v6 = v10;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _UIStatusBarGetPriorityComparator()
{
  if (_UIStatusBarGetPriorityComparator_onceToken != -1)
  {
    dispatch_once(&_UIStatusBarGetPriorityComparator_onceToken, &__block_literal_global_477);
  }

  v0 = _Block_copy(_UIStatusBarGetPriorityComparator_priorityComparator);

  return v0;
}

uint64_t _UIFocusEffectIsSystemDefaultVisible(void *a1)
{
  v1 = _UIFocusEnvironmentContainingView(a1);
  v2 = [v1 _window];

  if (!v2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Trying to apply an effect to an item that is no longer associated with a window.", buf, 2u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_UIFocusEffectIsSystemDefaultVisible___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Trying to apply an effect to an item that is no longer associated with a window.", v10, 2u);
      }
    }
  }

  v3 = [v1 _window];

  if (v3)
  {
    v4 = [v1 _focusBehavior];
    v5 = [v4 focusRingVisibility];

    if (v5)
    {
      v6 = v5 == 3;
    }

    else
    {
      v6 = 1;
    }

    v3 = !v6;
  }

  return v3;
}

void sub_189E23830(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_189E23B9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _UIApplicationConfigurationRuntimeIssuesLog()
{
  if (qword_1ED49FFD0 != -1)
  {
    dispatch_once(&qword_1ED49FFD0, &__block_literal_global_31_3);
  }

  v1 = qword_1ED49FFC8;

  return v1;
}

void sub_189E2BAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189E2BC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189E2BF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t numberOfItemsForWidth(void *a1, double a2, double a3)
{
  v5 = a1;
  if ([v5 count])
  {
    v6 = 0;
    v7 = a3 * 0.9;
    while (1)
    {
      v8 = [v5 objectAtIndexedSubscript:v6];
      v9 = v8;
      if (v8)
      {
        [v8 doubleValue];
      }

      else
      {
        v10 = 0.0;
      }

      v11 = v7 * v10;

      if (v11 >= a2)
      {
        break;
      }

      if (++v6 >= [v5 count])
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = [v5 count];
  }

  return v6;
}

void scaleForWidth(void *a1)
{
  v1 = [a1 lastObject];
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
  }
}

void _UIStatusBarDynamicSplitPerformBaseAnimation(void *a1, int a2, char a3, int a4, void *a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = MEMORY[0x1E6979318];
  v17 = a5;
  v18 = [v16 animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  v19 = v18;
  if (a2)
  {
    v20 = [v15 view];
    v21 = [v20 layer];
    v22 = [v21 presentationLayer];
    v23 = [v22 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];

    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = &unk_1EFE2EA48;
    }

    [v19 setFromValue:v24];
    [v19 setToValue:&unk_1EFE2EA58];
  }

  else
  {
    [v18 setFromValue:&unk_1EFE2EA58];
    [v19 setToValue:&unk_1EFE2EA48];
  }

  [v19 setDuration:a7];
  v25 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v19 setTimingFunction:v25];

  [v19 setBeginTimeMode:@"relative"];
  [v19 setBeginTime:a8];
  v26 = [v15 view];
  v27 = [v26 layer];
  [v27 addAnimation:v19 forKey:@"blur"];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___UIStatusBarDynamicSplitPerformBaseAnimation_block_invoke;
  v30[3] = &unk_1E7102AE8;
  if (a4)
  {
    v28 = 4;
  }

  else
  {
    v28 = 0;
  }

  v33 = a2;
  v34 = a3;
  v31 = v15;
  v32 = a6;
  v29 = v15;
  [UIView animateWithDuration:v28 delay:v30 options:v17 animations:a7 completion:a8];
}

void sub_189E2FADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id location)
{
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak((v44 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _avoidanceFrameInLocalCoordinateSpace(void *a1)
{
  v1 = a1;
  v2 = [v1 statusBar];
  v3 = [v1 statusBar];

  [v3 avoidanceFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  memset(&v15, 0, sizeof(v15));
  if (v2)
  {
    [v2 _effectiveScaleTransform];
  }

  v14 = v15;
  if (!CGAffineTransformIsIdentity(&v14))
  {
    v13 = v15;
    CGAffineTransformInvert(&v14, &v13);
    v15 = v14;
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    *&v5 = CGRectApplyAffineTransform(v16, &v14);
  }

  return v5;
}

id _UIStatusBarDynamicSplitDefaultAnimation(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__165;
  v17[4] = __Block_byref_object_dispose__165;
  v18 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x4010000000;
  v14[3] = "";
  v5 = *(MEMORY[0x1E695F058] + 16);
  v15 = *MEMORY[0x1E695F058];
  v16 = v5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___UIStatusBarDynamicSplitDefaultAnimation_block_invoke;
  v13[3] = &unk_1E711CCD8;
  v13[4] = v17;
  v13[5] = v14;
  v6 = [_UIStatusBarAnimation animationWithBlock:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___UIStatusBarDynamicSplitDefaultAnimation_block_invoke_2;
  v12[3] = &unk_1E711CD00;
  v12[4] = v14;
  [v6 setPrepareBlock:v12];
  [v6 setDelaysAnimatingItems:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___UIStatusBarDynamicSplitDefaultAnimation_block_invoke_3;
  v11[3] = &unk_1E711CD28;
  v11[4] = v17;
  _UIStatusBarAddDefaultAnimationReposition(v3, v6, v4, v11);
  v7 = MEMORY[0x1E695DFD8];
  v8 = [v3 orderedDisplayItemPlacementsInRegionWithIdentifier:0x1EFB9B110];
  v9 = [v7 setWithArray:v8];
  [v6 setDelayedDisplayItemPlacements:v9];

  [v6 setPriority:-100];
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v17, 8);

  return v6;
}

void sub_189E303CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_189E332D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __ASSERT_UNTRACKED_SESSION__(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 trackedSessions];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __ASSERT_UNTRACKED_SESSION__(_UINavigationBarTitleRenamer * _Nonnull __strong, _UINavigationBarTitleRenamerSession * _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v6 file:@"_UINavigationBarTitleRenamer.m" lineNumber:79 description:@"Renamer received a callback from a session not attached to this renamer."];
  }
}

_BYTE *_UIUpdateLinkMakeTrackingScene(void *a1)
{
  if (!a1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIUpdateLink * _Nonnull _UIUpdateLinkMakeTrackingScene(UIScene *const  _Nonnull const __strong)"];
    [v6 handleFailureInFunction:v7 file:@"_UIUpdateLinkTracking.m" lineNumber:383 description:@"UIUpdateLink requires a non-null scene."];
  }

  objc_opt_self();
  v2 = [[_UIUpdateLinkTrackingScene alloc] _initWithScene:a1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _canEngage];
    if (v3[48] != v4)
    {
      v3[48] = v4;
      [(UIUpdateLink *)v3 _setActive:?];
    }
  }

  return v3;
}

void sub_189E379B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_UIStringFromWhitePointAdaptivityStyle(uint64_t a1)
{
  v1 = @"_UIWhitePointAdaptivityStyleVideo";
  v2 = @"_UIWhitePointAdaptivityStyleGame";
  v3 = @"_UIWhitePointAdaptivityStyleOff";
  if (a1 != 0x7FFFFFFFFFFFFFFFLL)
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

  v4 = @"_UIWhitePointAdaptivityStylePhoto";
  if (a1 != 2)
  {
    v4 = 0;
  }

  if (a1 == 1)
  {
    v4 = @"_UIWhitePointAdaptivityStyleReading";
  }

  if (!a1)
  {
    v4 = @"_UIWhitePointAdaptivityStyleStandard";
  }

  if (a1 <= 2)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t _UIAppStatusBarOrientation()
{
  result = __SplashBoardOverrideStatusBarOrientation;
  if (!__SplashBoardOverrideStatusBarOrientation)
  {
    return [UIApp _safeInterfaceOrientationForNoWindow];
  }

  return result;
}

double _UIAppStatusBarHeightForWindow(void *a1)
{
  result = *&__SplashBoardOverrideStatusBarHeight;
  if (*&__SplashBoardOverrideStatusBarHeight == 1.79769313e308)
  {
    v2 = __UIStatusBarManagerForWindow(a1);
    [v2 statusBarHeight];
    v4 = v3;

    return v4;
  }

  return result;
}

void _UIAppStatusBarDefaultHeight()
{
  if (UIApp)
  {
    v0 = [UIApp _findUISceneForLegacyInterfaceOrientation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [v0 statusBarManager];
      [v1 defaultStatusBarHeightInOrientation:1];

      return;
    }
  }

  [(UIStatusBar_Base *)UIStatusBar heightForStyle:0 orientation:1 inWindow:0];
}

void _UIApplicationPerformWithViewServiceFallbackOrientationResolver(void *a1, void *a2)
{
  v3 = a1;
  v4 = _viewServiceFallbackOrientationMapResolver;
  v5 = _viewServiceFallbackOrientationMapResolver;
  _viewServiceFallbackOrientationMapResolver = v3;
  v8 = v3;
  v6 = a2;

  v6[2](v6);
  v7 = _viewServiceFallbackOrientationMapResolver;
  _viewServiceFallbackOrientationMapResolver = v4;
}

void getPGPictureInPictureProxyPictureInPictureActiveChangedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPGPictureInPictureProxyPictureInPictureActiveChangedNotificationSymbolLoc_ptr;
  v9 = getPGPictureInPictureProxyPictureInPictureActiveChangedNotificationSymbolLoc_ptr;
  if (!getPGPictureInPictureProxyPictureInPictureActiveChangedNotificationSymbolLoc_ptr)
  {
    v1 = PegasusLibrary();
    v7[3] = dlsym(v1, "PGPictureInPictureProxyPictureInPictureActiveChangedNotification");
    getPGPictureInPictureProxyPictureInPictureActiveChangedNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPGPictureInPictureProxyPictureInPictureActiveChangedNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIApplication.m" lineNumber:7644 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189E3A364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _UIApplicationFlushRunLoopCATransactionIfTooLate(void *a1)
{
  v2 = CFAbsoluteTimeGetCurrent() - *&__UIApplicationLastCAFlushTime;
  if (v2 > 0.0666666667)
  {
    v3 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] flush];
    _cleanUpAfterCAFlushAndRunDeferredBlocks(a1, 0);
    objc_autoreleasePoolPop(v3);
  }

  return v2 > 0.0666666667;
}

void _UIApplicationAssertForExtensionType(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1EA992E78 != -1)
  {
    dispatch_once(&qword_1EA992E78, &__block_literal_global_1223_0);
  }

  if (byte_1EA992DAB == 1)
  {
    if (qword_1EA992E98 != -1)
    {
      dispatch_once(&qword_1EA992E98, &__block_literal_global_1238_0);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      v6 = 0x1E696A000uLL;
      v7 = 0x1E696A000uLL;
      v8 = "void _UIApplicationAssertForExtensionType(NSArray *__strong)";
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([qword_1EA992E90 isEqualToString:*(*(&v14 + 1) + 8 * i)])
          {
            v10 = [*(v6 + 2728) currentHandler];
            [*(v7 + 3776) stringWithUTF8String:v8];
            v11 = v8;
            v13 = v12 = v7;
            [v10 handleFailureInFunction:v13 file:@"UIApplication.m" lineNumber:3526 description:{@"Feature not available in extensions of type %@", qword_1EA992E90}];

            v7 = v12;
            v8 = v11;

            v6 = 0x1E696A000;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }
  }
}

uint64_t _UIApplicationIsGenerativePlayground()
{
  if (qword_1EA992EF0 != -1)
  {
    dispatch_once(&qword_1EA992EF0, &__block_literal_global_1282);
  }

  return byte_1EA992DB7;
}

uint64_t _UIApplicationProcessIsUIKitester()
{
  if (qword_1EA992F20 != -1)
  {
    dispatch_once(&qword_1EA992F20, &__block_literal_global_1312);
  }

  return byte_1EA992DBD;
}

uint64_t _UIApplicationProcessIsControlCenterHostApp()
{
  if (qword_1EA992F30 != -1)
  {
    dispatch_once(&qword_1EA992F30, &__block_literal_global_1322);
  }

  return byte_1EA992DBF;
}

uint64_t _UIApplicationProcessIsInCallService()
{
  if (qword_1EA992F38 != -1)
  {
    dispatch_once(&qword_1EA992F38, &__block_literal_global_1327);
  }

  return byte_1EA992DC0;
}

void _alertItemStateChanged()
{
  if (pthread_main_np() == 1)
  {
    v0 = UIApp;

    [v0 _alertItemStateChanged];
  }

  else
  {
    v1 = MEMORY[0x1E69E96A0];

    dispatch_async(v1, &__block_literal_global_3867);
  }
}

void _languageChanged()
{
  if (pthread_main_np() == 1)
  {

    ___languageChanged_block_invoke();
  }

  else
  {
    v0 = MEMORY[0x1E69E96A0];

    dispatch_async(v0, &__block_literal_global_3872);
  }
}

void _localeWillChange()
{
  if (pthread_main_np() == 1)
  {

    ___localeWillChange_block_invoke();
  }

  else
  {
    v0 = MEMORY[0x1E69E96A0];

    dispatch_async(v0, &__block_literal_global_3874);
  }
}

void _localeChanged()
{
  if (pthread_main_np() == 1)
  {

    ___localeChanged_block_invoke();
  }

  else
  {
    v0 = MEMORY[0x1E69E96A0];

    dispatch_async(v0, &__block_literal_global_3876);
  }
}

void _UIApplicationLoadWebKit()
{
  if (_UIApplicationLoadWebKit_onceToken[0] != -1)
  {
    dispatch_once(_UIApplicationLoadWebKit_onceToken, &__block_literal_global_1499_1);
  }
}

void sub_189E45B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189E45CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _FBSSceneForPressesEvent(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 anyObject];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 _FBSScene];

  if (!v7)
  {
    v8 = [v3 _screen];
    v9 = [v8 displayIdentity];
    v7 = __UIApplicationFirstSceneMatchingDisplayIdentityAssertingUISceneLifecycle(v9, 0);
  }

  return v7;
}

void _UIApplicationResolveURLUsingModalProgressControllerForNonOpenInPlaceBookmarkableString(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v6)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v23 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "Attempted to resolve a URL with a nil scene", buf, 2u);
      }
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA993060) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Attempted to resolve a URL with a nil scene", buf, 2u);
      }
    }
  }

  v8 = +[_UIApplicationModalProgressController sharedInstance];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v10 = [_UIApplicationModalProgressController instanceForScene:v9];

    v11 = [v9 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 6)
    {
      v13 = [v9 keyWindow];
      v14 = [v13 rootViewController];
    }

    else
    {
      v14 = 0;
    }

    v8 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = [MEMORY[0x1E695DFF8] ui_URLFromExportBookmark:v5];
  if (os_variant_has_internal_diagnostics())
  {
    if (v15)
    {
      goto LABEL_10;
    }

    v21 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Could not resolve URL for import bookmark %@", buf, 0xCu);
    }
  }

  else
  {
    if (v15)
    {
LABEL_10:
      [v15 startAccessingSecurityScopedResource];
      v16 = [MEMORY[0x1E695DFF8] ui_incomingDirectory:1];
      v17 = [v15 lastPathComponent];
      v18 = [v16 URLByAppendingPathComponent:v17];

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = ___UIApplicationResolveURLUsingModalProgressControllerForNonOpenInPlaceBookmarkableString_block_invoke;
      v24[3] = &unk_1E7105F98;
      v25 = v15;
      v26 = v18;
      v27 = v7;
      v19 = v18;
      [v8 displayForCopyingFileAtURL:v25 toURL:v19 sourceViewController:v14 completionHandler:v24];

      goto LABEL_11;
    }

    v22 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA993068) + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Could not resolve URL for import bookmark %@", buf, 0xCu);
    }
  }

LABEL_11:
}

void sub_189E48A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189E4918C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void softlink_SBSSpringBoardServerPort()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getSBSSpringBoardServerPortSymbolLoc_ptr;
  v7 = getSBSSpringBoardServerPortSymbolLoc_ptr;
  if (!getSBSSpringBoardServerPortSymbolLoc_ptr)
  {
    v1 = SpringBoardServicesLibrary_1();
    v5[3] = dlsym(v1, "SBSSpringBoardServerPort");
    getSBSSpringBoardServerPortSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mach_port_t softlink_SBSSpringBoardServerPort(void)"];
    [v2 handleFailureInFunction:v3 file:@"UIApplication.m" lineNumber:493 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189E492E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189E4B080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189E4B35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189E4B854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __UIApplicationFirstSceneMatchingDisplayIdentityAssertingUISceneLifecycle(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && [UIApp _appAdoptsUISceneLifecycle])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "FBSScene *__UIApplicationFirstSceneMatchingDisplayIdentityAssertingUISceneLifecycle(FBSDisplayIdentity *__strong, BOOL)";
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Error in UIKit client: %s should not be called if the client adopts UIScene lifecycle as it will return unexpected results.", &buf, 0xCu);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA993280) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "FBSScene *__UIApplicationFirstSceneMatchingDisplayIdentityAssertingUISceneLifecycle(FBSDisplayIdentity *__strong, BOOL)";
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Error in UIKit client: %s should not be called if the client adopts UIScene lifecycle as it will return unexpected results.", &buf, 0xCu);
      }
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__166;
  v17 = __Block_byref_object_dispose__166;
  v18 = 0;
  v5 = qword_1EA992E50;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ____UIApplicationFirstSceneMatchingDisplayIdentityAssertingUISceneLifecycle_block_invoke;
  v11[3] = &unk_1E711D9A8;
  v6 = v3;
  v12 = v6;
  p_buf = &buf;
  [v5 enumerateObjectsUsingBlock:v11];
  v7 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v7;
}

void sub_189E4F558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _UIApplicationPressEventConformsToType(uint64_t a1, uint64_t a2)
{
  Type = IOHIDEventGetType();
  if (Type == 3)
  {
    if (_UIEventHIDPressTypeForKeyboardHIDEvent() == -1)
    {
      return 0;
    }

    return _UIEventHIDPressTypeForKeyboardHIDEvent() == a2;
  }

  if (Type != 29)
  {
    if (Type != 17)
    {
      return 0;
    }

    v5 = _UIEventHIDUIScreenForHIDEvent(a1);
    v6 = [v5 _userInterfaceIdiom];

    if (v6 != 3)
    {
      return 0;
    }

    return _UIEventHIDPressTypeForKeyboardHIDEvent() == a2;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  result = 0;
  if (IntegerValue && IntegerValue != 3)
  {
    return _UIEventHIDPressTypeForKeyboardHIDEvent() == a2;
  }

  return result;
}

id getSDRDiagnosticReporterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA993288;
  v7 = qword_1EA993288;
  if (!qword_1EA993288)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSDRDiagnosticReporterClass_block_invoke_1;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSDRDiagnosticReporterClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189E548C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UISetUIAnimationDragCoefficient(double a1)
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    qword_1ED48B4A8 = *&a1;
    _MergedGlobals_949 = 0x7FFFFFFF;
    if (&_UIInternalPreferencesListener___COUNTER__ != &webGeolocationCacheFileAccessQueue)
    {
      v2 = &_UIInternalPreferencesListener___COUNTER__;
      do
      {
        v3 = *v2++;
        (*(v3 + 16))();
      }

      while (v2 != &webGeolocationCacheFileAccessQueue);
    }
  }
}

void _setNextWakeDate()
{
  if (*&qword_1EA993138 == -1.0)
  {
    v0 = *MEMORY[0x1E69DECA8];
  }

  else
  {
    if (*&qword_1EA993138 <= 0.0)
    {
      [MEMORY[0x1E695DF00] distantPast];
    }

    else
    {
      [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:*&qword_1EA993138];
    }
    v1 = ;
    [v1 timeIntervalSinceReferenceDate];
    v0 = v2;
  }

  v3 = *(UIApp + 384);
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v0];
  [v3 _setNextWakeDate:v4];
}

void _appleKeyboardsPreferencesChanged()
{
  if (pthread_main_np() != 1)
  {
    v0 = MEMORY[0x1E69E96A0];

    dispatch_async(v0, &__block_literal_global_3891);
  }
}

void _backgroundRefreshStatusDidChange(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___backgroundRefreshStatusDidChange_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v2 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

void __MRMediaRemoteSetCanBeNowPlayingApplication(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr;
  v9 = getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr;
  if (!getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr)
  {
    v3 = MediaRemoteLibrary();
    v7[3] = dlsym(v3, "MRMediaRemoteSetCanBeNowPlayingApplication");
    getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Boolean __MRMediaRemoteSetCanBeNowPlayingApplication(Boolean)"];
    [v4 handleFailureInFunction:v5 file:@"UIApplication.m" lineNumber:15568 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189E5D2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MRMediaRemoteSetCommandHandlerBlock(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMRMediaRemoteSetCommandHandlerBlockSymbolLoc_ptr;
  v9 = getMRMediaRemoteSetCommandHandlerBlockSymbolLoc_ptr;
  if (!getMRMediaRemoteSetCommandHandlerBlockSymbolLoc_ptr)
  {
    v3 = MediaRemoteLibrary();
    v7[3] = dlsym(v3, "MRMediaRemoteSetCommandHandlerBlock");
    getMRMediaRemoteSetCommandHandlerBlockSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(v1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __MRMediaRemoteSetCommandHandlerBlock(__strong MRMediaRemoteCommandHandlerBlock)"];
    [v4 handleFailureInFunction:v5 file:@"UIApplication.m" lineNumber:15569 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189E5D410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189E5DD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189E5DF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UISystemShellAllowsSceneRequests()
{
  if (qword_1EA993148 != -1)
  {
    dispatch_once(&qword_1EA993148, &__block_literal_global_2338);
  }

  return byte_1EA992DCF;
}

id LSApplicationProxyForSettingCurrentApplicationIcon()
{
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  v1 = [v0 allowsAlternateIcons];

  if (v1)
  {
    v2 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = v2;
      if ([v3 supportsAlternateIconNames])
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _UIAdaptLocalizedStringForView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_1EA993180 != -1)
  {
    dispatch_once(&qword_1EA993180, &__block_literal_global_3470);
  }

  v5 = [v4 _window];
  if (v5)
  {
    [v4 _window];
  }

  else
  {
    +[UIWindow _applicationKeyWindow];
  }
  v6 = ;
  [v6 bounds];
  v8 = v7;

  v9 = [v3 variantFittingPresentationWidth:(v8 / *&qword_1EA993178)];

  return v9;
}

id _UILocalizedStringInSystemLanguage(void *a1, void *a2)
{
  v3 = qword_1EA993190;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&qword_1EA993190, &__block_literal_global_3477);
  }

  v6 = [qword_1EA993188 localizedStringForKey:v5 value:v4 table:0];

  return v6;
}

id _UILocalizedStringWithDefaultValueInLanguage(void *a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = MEMORY[0x1E696AAE8];
    v9 = _UIKitBundle();
    v10 = [v9 localizations];
    v18[0] = v6;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v12 = [v8 preferredLocalizationsFromArray:v10 forPreferences:v11];
    v13 = [v12 firstObject];

    if (v13)
    {
      v14 = v13;

      v6 = v14;
    }
  }

  v15 = _UIKitBundle();
  v16 = [v15 localizedStringForKey:v5 value:v7 table:0 localization:v6];

  return v16;
}

void _deleteRestorationArchive(void *a1)
{
  v1 = a1;
  v2 = _restorationPath(v1);
  _deleteRestorationInProgressFile(v1);

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = 0;
  v4 = [v3 removeItemAtURL:v2 error:&v6];
  v5 = v6;

  if ((v4 & 1) == 0 && _UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SWarningUnable_2.isa, "BOOL _deleteRestorationArchive(NSString *__strong)", v5);
  }
}

void sub_189E61AB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12;
  objc_sync_exit(v14);
  if (a2 == 2)
  {
    v16 = objc_begin_catch(a1);
    NSLog(&cfstr_ExceptionOccur.isa);

    objc_end_catch();
    JUMPOUT(0x189E61A38);
  }

  objc_begin_catch(a1);
  JUMPOUT(0x189E61A3CLL);
}

void sub_189E62DD4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x189E62DE0);
}

void _encodeStateRestorationClassForObject(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 && (NSStringFromClass(v4), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [v3 encodeObject:v5 forKey:@"kUIStateRestorationClassNameKey"];
  }

  else
  {
    NSLog(&cfstr_WarningCanTGet.isa, v7);
  }
}

void _encodeRestorationStateForViewAndSubviews(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [UIViewController viewControllerForView:v7];
  v11 = v10;
  if (v10)
  {
    v12 = v10 == v8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = [v7 _restorationIdentifierPath];
    if (v13)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SEncodingState.isa, "void _encodeRestorationStateForViewAndSubviews(UIView *__strong, UIViewController *__strong, NSMutableDictionary *__strong, BOOL)", v13, v7);
      }

      v14 = objc_alloc_init(MEMORY[0x1E695DF88]);
      v15 = [[UIStateRestorationKeyedArchiver alloc] initRequiringSecureCoding:a4];
      v16 = +[_UIStateRestorationKeyedArchiverDelegate sharedDelegate];
      [v15 setDelegate:v16];

      _encodeStateRestorationClassForObject(v7, v15);
      [v7 encodeRestorableStateWithCoder:v15];
      [v15 finishEncoding];
      v17 = [v15 encodedData];
      [v9 setObject:v17 forKey:v13];
    }

    v18 = [v7 subviews];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___encodeRestorationStateForViewAndSubviews_block_invoke;
    v20[3] = &unk_1E711DE30;
    v21 = v8;
    v22 = v9;
    v23 = a4;
    [v18 enumerateObjectsUsingBlock:v20];
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SSkippingState.isa, "void _encodeRestorationStateForViewAndSubviews(UIView *__strong, UIViewController *__strong, NSMutableDictionary *__strong, BOOL)", v7, v11, v8);
  }
}

void sub_189E645FC(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    NSLog(&cfstr_ExceptionOccur_2.isa, v4);
    byte_1EA992DD1 = 0;
    [v4 raise];

    objc_end_catch();
    JUMPOUT(0x189E64500);
  }

  JUMPOUT(0x189E64738);
}

void sub_189E64614(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a2 == 1)
  {
    v38 = objc_begin_catch(exc_buf);
    v39 = *(__UILogGetCategoryCachedImpl("ApplicationStateRestoration", &qword_1EA9931C0) + 8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *(v37 - 240) = 138543362;
      *(v36 + 4) = v38;
      _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "Exception occurred reading archived restorable state: %{public}@", (v37 - 240), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x189E64518);
  }

  _Unwind_Resume(exc_buf);
}

void _UIApplicationHandleEvent(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = CACurrentMediaTime();
  v4 = [MEMORY[0x1E6979518] startFrameWithReason:32 beginTime:v3 commitDeadline:v3 + _UIQOSMaxFrameDurationSeconds()];
  v5 = MEMORY[0x1E6979518];
  HIDTimestamp = GSEventGetHIDTimestamp();
  [v5 setFrameInputTime:v4 withToken:_UIMediaTimeForMachTime(HIDTimestamp)];
  if (GSEventShouldRouteToFrontMost())
  {
    GSEventRemoveShouldRouteToFrontMost();
    v7 = GSEventGetType() - 1000;
    if (v7 < 0x14 && ((0xC3FC3u >> v7) & 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = [UIApp _frontmostApplicationPort];
    }

    if ([UIApp _accessibilityCaptureSimulatorEvent:a1])
    {
      goto LABEL_15;
    }

    if ((v8 - 1) <= 0xFFFFFFFD)
    {
      _GSEventGetGSEventRecord();
      GSSendEvent();
      goto LABEL_15;
    }
  }

  v9 = [UIApp _event];
  [v9 _setGSEvent:a1];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1EA9932E8);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v15 = 67109120;
      LODWORD(v16) = GSEventGetType();
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Received event of type: %d", &v15, 8u);
    }
  }

  if (![UIApp isIgnoringInteractionEvents] || (objc_msgSend(UIApp, "_isInteractionEvent:", a1) & 1) == 0)
  {
    v11 = __UILogGetCategoryCachedImpl("Touch", &qword_1EA9932F0);
    if (*v11)
    {
      v14 = *(v11 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Delivering event %@", &v15, 0xCu);
      }
    }

    [UIApp sendEvent:v9];
  }

LABEL_15:
  [MEMORY[0x1E6979518] finishFrameWithToken:v4];
  objc_autoreleasePoolPop(v2);
}

uint64_t _UIAquaDuckVisualProvidersEnabled()
{
  if (qword_1EA9931D0 != -1)
  {
    dispatch_once(&qword_1EA9931D0, &__block_literal_global_3694);
  }

  return byte_1EA992DDB;
}

void *__getSBSDisplayLayoutElementAppSwitcherIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_1();
  result = dlsym(v2, "SBSDisplayLayoutElementAppSwitcherIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA993200 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_6()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void *__getSBSDisplayLayoutElementFloatingDockIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_1();
  result = dlsym(v2, "SBSDisplayLayoutElementFloatingDockIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA993208 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DuetActivitySchedulerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1EA993228 = result;
  return result;
}

uint64_t __WebKitLegacyLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1EA993230 = result;
  return result;
}

void *__getSBSUIAppSetWantsVolumeButtonEventsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_1();
  result = dlsym(v2, "SBSUIAppSetWantsVolumeButtonEvents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSUIAppSetWantsVolumeButtonEventsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBSUIAppSetWantsLockButtonEventsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_1();
  result = dlsym(v2, "SBSUIAppSetWantsLockButtonEvents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSUIAppSetWantsLockButtonEventsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ___applicationLifecycleMemoryMetricLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIApplicationLifecycle");
  v1 = qword_1EA993240;
  qword_1EA993240 = v0;
}

void *__getPGPictureInPictureProxyPictureInPictureActiveChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PegasusLibrary();
  result = dlsym(v2, "PGPictureInPictureProxyPictureInPictureActiveChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPGPictureInPictureProxyPictureInPictureActiveChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *PegasusLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PegasusLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PegasusLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E711DD98;
    v6 = 0;
    PegasusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PegasusLibraryCore_frameworkLibrary;
  if (!PegasusLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PegasusLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIApplication.m" lineNumber:7642 description:{@"%s", v4[0]}];

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

uint64_t __PegasusLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PegasusLibraryCore_frameworkLibrary = result;
  return result;
}

void __getPGPictureInPictureProxyClass_block_invoke(uint64_t a1)
{
  PegasusLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PGPictureInPictureProxy");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPGPictureInPictureProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPGPictureInPictureProxyClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIApplication.m" lineNumber:7643 description:{@"Unable to find class %s", "PGPictureInPictureProxy"}];

    __break(1u);
  }
}

void *__getFPDocumentURLFromBookmarkableStringSymbolLoc_block_invoke_0(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1EA993258)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __FileProviderLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E711DDB0;
    v7 = 0;
    qword_1EA993258 = _sl_dlopen();
  }

  v2 = qword_1EA993258;
  if (!qword_1EA993258)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"UIApplication.m" lineNumber:8041 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "FPDocumentURLFromBookmarkableString");
  *(*(a1[4] + 8) + 24) = result;
  off_1EA993250 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __FileProviderLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1EA993258 = result;
  return result;
}

Class __getINUIAppIntentForwardingActionExecutorClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA993268)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __IntentsUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E711DDC8;
    v8 = 0;
    qword_1EA993268 = _sl_dlopen();
  }

  if (!qword_1EA993268)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIApplication.m" lineNumber:8281 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("INUIAppIntentForwardingActionExecutor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINUIAppIntentForwardingActionExecutorClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIApplication.m" lineNumber:8282 description:{@"Unable to find class %s", "INUIAppIntentForwardingActionExecutor"}];

LABEL_10:
    __break(1u);
  }

  qword_1EA993260 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IntentsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1EA993268 = result;
  return result;
}

uint64_t __AppIntentsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1EA993278 = result;
  return result;
}

void *__getSBShowNetworkPromptsIfNecessarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_1();
  result = dlsym(v2, "SBShowNetworkPromptsIfNecessary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBShowNetworkPromptsIfNecessarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBSSpringBoardServerPortSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_1();
  result = dlsym(v2, "SBSSpringBoardServerPort");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSSpringBoardServerPortSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBAddWebClipToHomeScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_1();
  result = dlsym(v2, "SBAddWebClipToHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBAddWebClipToHomeScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ___languageChanged_block_invoke()
{
  UIResetDateFormats();
  _UIResetDatePicker();
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"_UIApplicationLanguageChangedNotification" object:UIApp userInfo:0];
}

void ___localeWillChange_block_invoke()
{
  _UIWillResetDatePicker();
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"_UIApplicationLocaleWillChange" object:UIApp userInfo:0];
}

void ___localeChanged_block_invoke()
{
  _UIResetDatePicker();
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"_UIApplicationLocaleDidChange" object:UIApp userInfo:0];
}

Class __getSDRDiagnosticReporterClass_block_invoke_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA993290)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SymptomDiagnosticReporterLibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E711DDF8;
    v8 = 0;
    qword_1EA993290 = _sl_dlopen();
  }

  if (!qword_1EA993290)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SymptomDiagnosticReporterLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIApplication.m" lineNumber:556 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SDRDiagnosticReporter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSDRDiagnosticReporterClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIApplication.m" lineNumber:557 description:{@"Unable to find class %s", "SDRDiagnosticReporter"}];

LABEL_10:
    __break(1u);
  }

  qword_1EA993288 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SymptomDiagnosticReporterLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1EA993290 = result;
  return result;
}

void *__getSBSUIAppDeactivateReachabilitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_1();
  result = dlsym(v2, "SBSUIAppDeactivateReachability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSUIAppDeactivateReachabilitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ___backgroundRefreshStatusDidChange_block_invoke(uint64_t a1)
{
  _cachedBackgroundRefreshStatus = -1;
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIApplicationBackgroundRefreshStatusDidChangeNotification" object:*(a1 + 32)];
}

void *__getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRMediaRemoteSetCanBeNowPlayingApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaRemoteLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaRemoteLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E711DE10;
    v6 = 0;
    MediaRemoteLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaRemoteLibraryCore_frameworkLibrary;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaRemoteLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIApplication.m" lineNumber:15555 description:{@"%s", v4[0]}];

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

uint64_t __MediaRemoteLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMRMediaRemoteSetCommandHandlerBlockSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRMediaRemoteSetCommandHandlerBlock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteSetCommandHandlerBlockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteOptionIsExternalPlayerCommandSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteOptionIsExternalPlayerCommand");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA993298 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteOptionMediaTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteOptionMediaType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA9932A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteMediaTypeAudioSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteMediaTypeAudio");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA9932A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteMediaTypeVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA9932B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteMediaTypeImageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteMediaTypeImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA9932B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteOptionTrackIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteOptionTrackID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA9932C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRMediaRemoteSendCommandSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRMediaRemoteSendCommand");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteSendCommandSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _updateRestorationInProgressFile(void *a1, void *a2)
{
  v3 = a2;
  v4 = _restorationInProgressFilePath(a1);
  v5 = [v3 writeToURL:v4 atomically:1];

  return v5;
}

void ___restoreState_block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("ApplicationStateRestoration", &_ignoreSnapshotOnNextLaunch_block_invoke_13___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Warning: The UIApplicationDelegate method application:shouldRestoreApplicationState: is deprecated. Please replace the use of application:shouldRestoreApplicationState: with application:shouldRestoreSecureApplicationState:", v1, 2u);
  }
}

void ___restoreState_block_invoke_4025(uint64_t a1)
{
  v126 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = *(a1 + 40);
  v96 = a1;
  v93 = *(a1 + 88);
  v5 = *(a1 + 32);
  v94 = v4;
  v99 = v2;
  obj = v3;
  if ([v5 count])
  {
    v6 = 0;
    v103 = v5;
    do
    {
      v7 = [v5 objectAtIndex:v6];
      v8 = [v7 objectAtIndex:0];
      v9 = [v7 objectAtIndex:1];
      v10 = [v7 objectAtIndex:2];
      v11 = v8;
      v12 = v9;
      v13 = v10;
      v14 = v99;
      v15 = obj;
      v16 = objc_opt_respondsToSelector();
      v17 = objc_opt_respondsToSelector();
      v18 = v17;
      if (v16 & 1) != 0 || (v17)
      {
        IsSuitableForDecoding = _stateRestorationClassForObjectIsSuitableForDecoding(v12, v13);
        v20 = _UIStateRestorationDebugLogEnabled();
        if (IsSuitableForDecoding)
        {
          if (v20)
          {
            NSLog(&cfstr_SRestoringObje.isa, "void _decodeRestorableStateForObject(NSString *__strong, NSObject *__strong, NSCoder *__strong, NSMutableArray *__strong, NSMutableArray *__strong)", v11);
          }

          if (v18)
          {
            v21 = [v12 _decodeRestorableStateAndReturnContinuationWithCoder:v13];
            if (_UIStateRestorationDebugLogEnabled())
            {
              v22 = @"returned continuation";
              if (!v21)
              {
                v22 = @"no continuation returned";
              }

              NSLog(&cfstr_SCalledDecoder.isa, "void _decodeRestorableStateForObject(NSString *__strong, NSObject *__strong, NSCoder *__strong, NSMutableArray *__strong, NSMutableArray *__strong)", v22);
            }

            if (v21)
            {
              v23 = [v21 copy];
              [v15 addObject:v23];
            }
          }

          else if (v16)
          {
            [v12 decodeRestorableStateWithCoder:v13];
            if (_UIStateRestorationDebugLogEnabled())
            {
              NSLog(&cfstr_SCalledDecoder_0.isa, "void _decodeRestorableStateForObject(NSString *__strong, NSObject *__strong, NSCoder *__strong, NSMutableArray *__strong, NSMutableArray *__strong)", v92);
            }
          }
        }

        else if (v20)
        {
          NSLog(&cfstr_SClassNameForO.isa, "void _decodeRestorableStateForObject(NSString *__strong, NSObject *__strong, NSCoder *__strong, NSMutableArray *__strong, NSMutableArray *__strong)", v11);
        }
      }

      else if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SRestoredObjec.isa, "void _decodeRestorableStateForObject(NSString *__strong, NSObject *__strong, NSCoder *__strong, NSMutableArray *__strong, NSMutableArray *__strong)", v11);
      }

      [v14 addObject:v12];

      if ([v13 decodeBoolForKey:@"kObjectIsViewControllerKey"])
      {
        v24 = MEMORY[0x1E695DFD8];
        v25 = objc_opt_class();
        v92 = 0;
        v26 = [v24 setWithObjects:{v25, objc_opt_class()}];
        v27 = [v13 decodeObjectOfClasses:v26 forKey:@"kViewRestorationDataKey"];

        if ([v13 decodeBoolForKey:@"kViewControllerViewWasLoadedKey"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v12;
            if ([v28 _shouldLoadViewDuringRestoration:v13])
            {
              v29 = [v28 view];
              if (v29)
              {
                v30 = v29;
                _restoreStateForViewAndSubviews(v29, v28, v27, v94, v14, v93);
              }
            }

            else if (_UIStateRestorationDebugLogEnabled())
            {
              NSLog(&cfstr_SSpecialCasePa_0.isa, "void _performSecondPassStateRestoration(NSArray *__strong, NSDictionary *__strong, NSMutableArray *__strong, NSMutableArray *__strong, BOOL)", v11);
            }
          }

          else
          {
            NSLog(&cfstr_WarningArchive.isa, v11, v12);
          }
        }
      }

      [v13 finishDecoding];

      ++v6;
      v5 = v103;
    }

    while ([v103 count] > v6);
  }

  if (!*(v96 + 48) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(v96 + 56) application:*(v96 + 64) didDecodeRestorableStateWithCoder:*(v96 + 72)];
  }

  v31 = *(v96 + 72);
  v32 = MEMORY[0x1E695DFD8];
  v33 = objc_opt_class();
  v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
  v35 = [v31 decodeObjectOfClasses:v34 forKey:@"kFirstRespondersKey"];

  v98 = v35;
  if (v35)
  {
    v36 = v35;
    if (_UIStateRestorationDebugLogEnabled())
    {
      v37 = [v36 count];
      v38 = [v36 count];
      v39 = "s";
      if (v38 == 1)
      {
        v39 = "";
      }

      NSLog(&cfstr_SLdFirstRespon.isa, "void _restoreFirstResponders(NSArray *__strong)", v37, v39, v36);
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v40 = v36;
    v41 = [v40 countByEnumeratingWithState:&v118 objects:v125 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v119;
      v44 = off_1E70EA000;
      v45 = off_1E70EA000;
      do
      {
        v46 = 0;
        v104 = v42;
        do
        {
          if (*v119 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v47 = *(*(&v118 + 1) + 8 * v46);
          v48 = [(__objc2_class *)v44[162] objectWithRestorationIdentifierPath:v47];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = v48;
          }

          else
          {
            v49 = 0;
          }

          v50 = v49;
          if (v50)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v48 isEditable])
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v50 isProgrammaticScrollEnabled])
              {
                [v50 setProgrammaticScrollEnabled:0];
                v51 = 1;
              }

              else
              {
                v51 = 0;
              }

              v52 = [v50 window];
              v53 = v52;
              if (v52 && ![v52 _isApplicationKeyWindow])
              {
                [v50 window];
                v54 = v43;
                v55 = v45;
                v56 = v44;
                v58 = v57 = v40;
                [v58 _setFirstResponder:v50];

                v40 = v57;
                v44 = v56;
                v45 = v55;
                v43 = v54;
                v42 = v104;
                if (v51)
                {
LABEL_63:
                  [v50 setProgrammaticScrollEnabled:1];
                }
              }

              else
              {
                [v50 becomeFirstResponder];
                if (v51)
                {
                  goto LABEL_63;
                }
              }
            }
          }

          else if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SRestoredFirst.isa, "void _restoreFirstResponders(NSArray *__strong)", v48, v47);
          }

          ++v46;
        }

        while (v42 != v46);
        v59 = [v40 countByEnumeratingWithState:&v118 objects:v125 count:16];
        v42 = v59;
      }

      while (v59);
    }
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v60 = v99;
  v61 = [v60 countByEnumeratingWithState:&v114 objects:v124 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v115;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v115 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v114 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v65 applicationFinishedRestoringState];
        }
      }

      v62 = [v60 countByEnumeratingWithState:&v114 objects:v124 count:16];
    }

    while (v62);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v66 = obj;
  v67 = [v66 countByEnumeratingWithState:&v110 objects:v123 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v111;
    do
    {
      for (j = 0; j != v68; ++j)
      {
        if (*v111 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v110 + 1) + 8 * j);
        if (_UIStateRestorationDebugLogEnabled())
        {
          v72 = _Block_copy(v71);
          NSLog(&cfstr_SCallingContin.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)_block_invoke", v72);
        }

        v71[2](v71);
      }

      v68 = [v66 countByEnumeratingWithState:&v110 objects:v123 count:16];
    }

    while (v68);
  }

  v97 = v60;
  v95 = v66;

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SWindowsWithOv.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)_block_invoke", *(v96 + 80));
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obja = *(v96 + 80);
  v73 = [obja countByEnumeratingWithState:&v106 objects:v122 count:16];
  if (v73)
  {
    v74 = v73;
    v105 = *v107;
    do
    {
      v75 = 0;
      v100 = v74;
      do
      {
        if (*v107 != v105)
        {
          objc_enumerationMutation(obja);
        }

        v76 = *(*(&v106 + 1) + 8 * v75);
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SClearingSizeC.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)_block_invoke", v76);
        }

        v77 = [v76 traitCollection];
        v78 = [v77 verticalSizeClass];
        v79 = [v77 horizontalSizeClass];
        [v76 _clearSizeClassesForStateRestoration];
        if (_UIStateRestorationDebugLogEnabled())
        {
          if (v79 == 2)
          {
            v80 = @"UIUserInterfaceSizeClassRegular";
          }

          else
          {
            v80 = @"UIUserInterfaceSizeClassUnspecified";
          }

          if (v79 == 1)
          {
            v81 = @"UIUserInterfaceSizeClassCompact";
          }

          else
          {
            v81 = v80;
          }

          if (v78 == 2)
          {
            v82 = @"UIUserInterfaceSizeClassRegular";
          }

          else
          {
            v82 = @"UIUserInterfaceSizeClassUnspecified";
          }

          if (v78 == 1)
          {
            v82 = @"UIUserInterfaceSizeClassCompact";
          }

          v83 = v82;
          v84 = v81;
          v85 = [v76 traitCollection];
          v86 = [v85 horizontalSizeClass];
          if (v86 == 2)
          {
            v87 = @"UIUserInterfaceSizeClassRegular";
          }

          else
          {
            v87 = @"UIUserInterfaceSizeClassUnspecified";
          }

          if (v86 == 1)
          {
            v87 = @"UIUserInterfaceSizeClassCompact";
          }

          v88 = v87;
          v89 = [v76 traitCollection];
          v90 = [v89 verticalSizeClass];
          v91 = @"UIUserInterfaceSizeClassUnspecified";
          if (v90 == 2)
          {
            v91 = @"UIUserInterfaceSizeClassRegular";
          }

          if (v90 == 1)
          {
            v91 = @"UIUserInterfaceSizeClassCompact";
          }

          NSLog(&cfstr_SResetWindowSi.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)_block_invoke", v76, v84, v83, v88, v91);

          v74 = v100;
        }

        ++v75;
      }

      while (v74 != v75);
      v74 = [obja countByEnumeratingWithState:&v106 objects:v122 count:16];
    }

    while (v74);
  }
}

uint64_t _sizeClassFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"UIUserInterfaceSizeClassCompact"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"UIUserInterfaceSizeClassRegular"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void _restoreStateForViewAndSubviews(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [UIViewController viewControllerForView:v11];
  v17 = v16;
  if (v16)
  {
    v18 = v16 == v12;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = [v11 _restorationIdentifierPath];
    if (v19)
    {
      v20 = [v13 objectForKey:v19];
      if (v20)
      {
        v25 = a6;
        v21 = [[UIStateRestorationKeyedUnarchiver alloc] initForReadingWithData:v20 defaultValues:v14 requiresSecureCoding:a6];
        IsSuitableForDecoding = _stateRestorationClassForObjectIsSuitableForDecoding(v11, v21);
        v23 = _UIStateRestorationDebugLogEnabled();
        if (IsSuitableForDecoding)
        {
          if (v23)
          {
            NSLog(&cfstr_SRestoringView.isa, "void _restoreStateForViewAndSubviews(UIView *__strong, UIViewController *__strong, NSDictionary *__strong, NSDictionary *__strong, NSMutableArray *__strong, BOOL)", v19);
          }

          [v11 decodeRestorableStateWithCoder:v21];
          LOBYTE(a6) = v25;
        }

        else
        {
          LOBYTE(a6) = v25;
          if (v23)
          {
            NSLog(&cfstr_SClassNameForV.isa, "void _restoreStateForViewAndSubviews(UIView *__strong, UIViewController *__strong, NSDictionary *__strong, NSDictionary *__strong, NSMutableArray *__strong, BOOL)", v19);
          }
        }

        [v21 finishDecoding];
        [v15 addObject:v11];
      }

      else if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SNoRestoration_0.isa, "void _restoreStateForViewAndSubviews(UIView *__strong, UIViewController *__strong, NSDictionary *__strong, NSDictionary *__strong, NSMutableArray *__strong, BOOL)", v19);
      }
    }

    v24 = [v11 subviews];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = ___restoreStateForViewAndSubviews_block_invoke;
    v26[3] = &unk_1E711DE80;
    v27 = v12;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v31 = a6;
    [v24 enumerateObjectsUsingBlock:v26];
  }
}

uint64_t _stateRestorationClassForObjectIsSuitableForDecoding(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUIStateRestorationClassNameKey"];

  if (!v5)
  {
    NSLog(&cfstr_WarningCanTGet_0.isa, v3);
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = NSClassFromString(v5);
  if (!v6)
  {
    NSLog(&cfstr_WarningDecoded_0.isa, v5, v3);
    goto LABEL_9;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = objc_opt_class();
    NSLog(&cfstr_WarningDecoded.isa, v8, v6, v3);
    goto LABEL_8;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

void forwardMethod1(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = a1;
  v6 = [v5 nextResponder];

  if (v6 && v6 != v5)
  {
    ([v6 methodForSelector:a2])(v6, a2, v7);
  }
}

void forwardMethodIntId(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v7 = a1;
  v8 = [v7 nextResponder];

  if (v8 && v8 != v7)
  {
    ([v8 methodForSelector:a2])(v8, a2, a3, v9);
  }
}

uint64_t _UICanPasteItemProviders(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) registeredTypeIdentifiers];
        [v5 addObjectsFromArray:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [v5 allObjects];
  v13 = [v3 acceptableTypeIdentifiers];
  v14 = _UIOneOfTypesConformsToAcceptableTypes(v12, v13);

  return v14;
}

void sub_189E69AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v45 - 248), 8);
  objc_destroyWeak((v44 + 40));
  _Block_object_dispose((v45 - 200), 8);
  _Block_object_dispose((v45 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_189E6B1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIResponderChainDescription(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v40 = a4;
  v7 = [MEMORY[0x1E696AD60] string];
  v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:517 valueOptions:0];
  v9 = v6;
  [v7 appendString:@"Responder traversal BEGINS:\n"];
  v39 = v9;
  if (v9)
  {
    v10 = 0;
    v11 = v9;
    v41 = a3;
    v42 = v8;
    while (1)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = v11;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v12 stringWithFormat:@"<%@: %p>", v15, v13];

      [v7 appendFormat:@"%3lu: %@\n", v10, v16];
      v17 = [v8 objectForKey:v13];
      if (v17)
      {
        break;
      }

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      [v8 setObject:v18 forKey:v13];

      if (a3)
      {
        v19 = objc_opt_respondsToSelector();
        v20 = objc_opt_respondsToSelector();
        v21 = objc_opt_class();
        MethodImplementation = class_getMethodImplementation(v21, sel_canPerformAction_withSender_);
        v23 = objc_opt_self();
        v24 = class_getMethodImplementation(v23, sel_canPerformAction_withSender_);

        if (v20 & 1) != 0 && ([v13 canPerformAction:a3 withSender:v40])
        {
          v25 = 1;
        }

        else
        {
          v25 = v19 & ~v20 & 1;
        }

        v44 = v25;
        v26 = MethodImplementation != v24;
        v27 = objc_opt_respondsToSelector();
        v28 = objc_opt_class();
        v29 = class_getMethodImplementation(v28, sel_targetForAction_withSender_);
        v30 = objc_opt_self();
        v31 = class_getMethodImplementation(v30, sel_targetForAction_withSender_);

        [v7 appendFormat:@"     - respondsToAction = %d\n", v19 & 1];
        [v7 appendFormat:@"     - respondsToCanPerformAction = %d\n", v20 & 1];
        [v7 appendFormat:@"     - overridesCanPerformAction = %d\n", v26];
        [v7 appendFormat:@"     - canPerformAction = %d\n", v44];
        [v7 appendFormat:@"     - respondsToTargetForAction = %d\n", v27 & 1];
        [v7 appendFormat:@"     - overridesTargetForAction = %d\n", v29 != v31];
        [v7 appendString:@"\n"];
        a3 = v41;
        v8 = v42;
      }

      v11 = [v13 _nextResponderUsingTraversalStrategy:a2];

      ++v10;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v32 = v17;
    v33 = MEMORY[0x1E696AEC0];
    v34 = v13;
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = [v33 stringWithFormat:@"<%@: %p>", v36, v34];

    [v7 appendFormat:@"ERROR: Responder loop! Found responder again: %@ originally at index: %lu\n", v37, objc_msgSend(v32, "unsignedIntegerValue")];
  }

LABEL_13:
  [v7 appendString:@"Responder traversal ENDS"];

  return v7;
}

id _UIResponderFindInputAssistantItem(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    while (1)
    {
      v4 = [v3 inputAssistantItem];
      if (v4)
      {
        break;
      }

      v5 = [v3 nextResponder];

      v3 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v6 = v4;
  }

  else
  {
LABEL_5:
    if (qword_1ED4A0090 != -1)
    {
      dispatch_once(&qword_1ED4A0090, &__block_literal_global_1110);
    }

    v6 = qword_1ED4A0098;
  }

  return v6;
}

uint64_t _UIHIDUsageFromSpecialKeyEquivalent(uint64_t a1)
{
  v1 = [&unk_1EFE349F0 objectForKeyedSubscript:a1];
  v2 = [v1 longValue];

  return v2;
}

uint64_t _UISpecialKeyEquivalentFromHIDUsage(uint64_t a1)
{
  if ((a1 - 41) > 0x29)
  {
    return 0;
  }

  else
  {
    return *(&off_1E711E298 + a1 - 41);
  }
}

void _UIAdditionalScaleFactorForClassicPresentationWithHomeAffordance(void *a1)
{
  if ([a1 _isMainScreen])
  {
    v1 = +[UIDevice currentDevice];
    v2 = [v1 userInterfaceIdiom];

    if ((v2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      +[UIDevice _hasHomeButton];
    }

    v3 = +[UIDevice currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      +[UIDevice _hasHomeButton];
    }
  }
}

double _UIScaleFactorForClassicPresentationWithHomeAffordance(void *a1, double a2, double a3, double a4, double a5)
{
  if (a2 / a4 <= a3 / a5)
  {
    v5 = a2 / a4;
  }

  else
  {
    v5 = a3 / a5;
  }

  _UIAdditionalScaleFactorForClassicPresentationWithHomeAffordance(a1);
  return v5 * v6;
}

void _UIInsetAndTranslateLayerForClassicPresentationWithHomeAffordance(void *a1, void *a2, int a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10)
{
  v15 = a1;
  v16 = a2;
  if ([v16 _isMainScreen])
  {
    _UIAdditionalScaleFactorForClassicPresentationWithHomeAffordance(v16);
    v18 = v17;
    if (a5)
    {
      v19 = 1.0 / a10;
    }

    else
    {
      v19 = 1.0;
    }

    v20 = +[UIDevice currentDevice];
    v21 = [v20 userInterfaceIdiom];

    v22 = 20;
    if ((v21 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      if (+[UIDevice _hasHomeButton])
      {
        v22 = 0;
      }

      else
      {
        v22 = 20;
      }
    }

    v23 = +[UIDevice currentDevice];
    v24 = [v23 userInterfaceIdiom];

    if ((v24 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v25 = -24;
    }

    else if (+[UIDevice _hasHomeButton])
    {
      v25 = 0;
    }

    else
    {
      v25 = -6;
    }

    v26 = 0.0;
    if (v18 != 1.0)
    {
      v26 = -(((v25 + v22) >> 1) * v19);
    }

    v27 = v19 * 5.0;
    v28 = -0.0;
    v29 = -v26;
    v30 = -0.0;
    if (a4 == 2)
    {
      v31 = -v26;
    }

    else
    {
      v31 = v26;
    }

    if (a4 != 2)
    {
      v30 = 0.0;
    }

    if (a4 == 3)
    {
      v31 = 0.0;
    }

    else
    {
      v29 = v30;
    }

    if (a4 == 4)
    {
      v29 = v26;
    }

    else
    {
      v28 = v31;
    }

    if (a3)
    {
      v32 = v28;
    }

    else
    {
      v32 = v26;
    }

    memset(&v37.c, 0, 32);
    if (a3)
    {
      v33 = v29;
    }

    else
    {
      v33 = 0.0;
    }

    *&v37.a = 0uLL;
    CGAffineTransformMakeScale(&t1, v18, v18);
    CGAffineTransformMakeTranslation(&t2, v33, v32);
    CGAffineTransformConcat(&v37, &t1, &t2);
    if (v15)
    {
      [v15 affineTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v34 = v37;
    CGAffineTransformConcat(&t1, &t2, &v34);
    [v15 setAffineTransform:&t1];
    [v15 setCornerRadius:v27];
  }
}

void sub_189E6E664(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_189E71068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189E727C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  objc_destroyWeak((v30 + 40));
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_189E76E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189E78368(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_189E7972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIWindowCompareToWindow(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIWindowCompareToWindow(UIWindow *__strong, UIWindow *__strong)"}];
    [v14 handleFailureInFunction:v15 file:@"UIWindow.m" lineNumber:8322 description:{@"%s: Invalid state. Should be comparing two valid objects: window1: %@; window2: %@", "NSComparisonResult _UIWindowCompareToWindow(UIWindow *__strong, UIWindow *__strong)", v3, v5}];
  }

  if (v3 == v5 || [v3 isHidden] && (objc_msgSend(v5, "isHidden") & 1) != 0)
  {
    goto LABEL_11;
  }

  if ([v5 isHidden])
  {
    v6 = 1;
    goto LABEL_12;
  }

  if ([v3 isHidden])
  {
    v6 = -1;
    goto LABEL_12;
  }

  [v5 windowLevel];
  v8 = v7;
  [v3 windowLevel];
  if (v8 == v9)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  [v5 windowLevel];
  v12 = v11;
  [v3 windowLevel];
  if (v12 <= v13)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

LABEL_12:

  return v6;
}

CGImage *UICreateScreenImage()
{
  if ([UIApp applicationState] == 2)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot call UICreateScreenImage() while app is in the background."];
  }

  v0 = +[UIWindow createScreenIOSurface];
  v1 = v0;
  if (!v0)
  {
    return v1;
  }

  v2 = CFGetTypeID(v0);
  if (v2 == CGImageGetTypeID())
  {
    return v1;
  }

  v4 = _UICreateCGImageFromIOSurfaceWithOptions(v1, 0);
  CFRelease(v1);
  return v4;
}

CGImage *_UICreateCGImageFromIOSurfaceWithOptions(CGImage *cf, uint64_t a2)
{
  CGImage = cf;
  v9[1] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CGImageGetTypeID())
    {
      CGImageRetain(CGImage);
    }

    else
    {
      v8 = @"dst-opaque";
      v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
      v9[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      CGImage = _UIRenderingBufferCreateCGImage(CGImage, v6);
    }
  }

  return CGImage;
}

uint64_t _UICreateScreenUIImageFromRectUncheckedWithRotationEnforceSecureMode(int a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v36[7] = *MEMORY[0x1E69E9840];
  if (qword_1EA968EE0 == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  dispatch_once(&qword_1EA968EE0, &__block_literal_global_1543);
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = [UIApp activeInterfaceOrientation];
  if (!v12)
  {
    v12 = [MEMORY[0x1E699FB90] activeInterfaceOrientation];
  }

LABEL_7:
  v13 = [objc_opt_self() mainScreen];
  [v13 _scale];
  v15 = v14;
  if (byte_1EA968DD0)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v13 gamut];
  }

  v35[0] = @"enforce-secure-mode";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v36[0] = v17;
  v36[1] = v13;
  v35[1] = @"src-screen";
  v35[2] = @"src-rect";
  *v32 = a3;
  *&v32[1] = a4;
  *&v32[2] = a5;
  *&v32[3] = a6;
  v18 = [MEMORY[0x1E696B098] valueWithBytes:v32 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v36[2] = v18;
  v35[3] = @"src-orientation";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  v36[3] = v19;
  v35[4] = @"dst-scale";
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v36[4] = v20;
  v35[5] = @"dst-gamut";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
  v35[6] = @"dst-opaque";
  v22 = MEMORY[0x1E695E118];
  v36[5] = v21;
  v36[6] = MEMORY[0x1E695E118];
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:7];

  v24 = _UIRenderDisplay(v23, &__block_literal_global_1553);
  if (v24)
  {
    v25 = v24;
    v33 = @"dst-opaque";
    v34 = v22;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    CGImage = _UIRenderingBufferCreateCGImage(v25, v26);

    if (CGImage)
    {
      v28 = [UIImage alloc];
      if (a1)
      {
        v29 = 0;
      }

      else
      {
        v29 = [v13 _imageOrientation];
      }

      v30 = [(UIImage *)v28 initWithCGImage:CGImage scale:v29 orientation:v15];
      CGImageRelease(CGImage);
    }

    else
    {
      v30 = 0;
    }

    CFRelease(v25);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

uint64_t _UICreateScreenUIImageFromRectWithRotation(int a1, double a2, double a3, double a4, double a5)
{
  if ([UIApp applicationState] == 2)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot call _UICreateScreenUIImage() while app is in the background."];
  }

  return _UICreateScreenUIImageFromRectUncheckedWithRotationEnforceSecureMode(a1, 0, a2, a3, a4, a5);
}

uint64_t _UICreateScreenUIImageWithRotation(int a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 _referenceBounds];
  v7 = _UICreateScreenUIImageFromRectWithRotation(a1, v3, v4, v5, v6);

  return v7;
}

uint64_t ____updateTouchVisualisation_block_invoke_1589(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  [*(a1 + 32) setTransform:v4];
  return [*(a1 + 32) setAlpha:1.0];
}

uint64_t ____updateTouchVisualisation_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.001, 0.001);
  v3 = v4;
  [v1 setTransform:&v3];
  return [v1 setAlpha:0.0];
}

uint64_t ____updateTouchVisualisation_block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = qword_1EA968EF0;
  v3 = *(a1 + 32);

  return [v2 addObject:v3];
}

void _UIMainMenuElementGroupStateEnumerateCommandStatesHelper(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 commandStates];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___UIMainMenuElementGroupStateEnumerateCommandStatesHelper_block_invoke;
  v19[3] = &unk_1E711E980;
  v8 = v6;
  v21 = v8;
  v9 = v5;
  v20 = v9;
  v22 = a3;
  [v7 enumerateKeysAndObjectsUsingBlock:v19];

  if ((*a3 & 1) == 0)
  {
    v10 = [v9 childMenuStates];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___UIMainMenuElementGroupStateEnumerateCommandStatesHelper_block_invoke_2;
    v16[3] = &unk_1E711E9A8;
    v11 = v8;
    v17 = v11;
    v18 = a3;
    [v10 enumerateKeysAndObjectsUsingBlock:v16];

    if ((*a3 & 1) == 0)
    {
      v12 = [v9 fulfilledDeferredElementStates];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___UIMainMenuElementGroupStateEnumerateCommandStatesHelper_block_invoke_3;
      v13[3] = &unk_1E711E9D0;
      v14 = v11;
      v15 = a3;
      [v12 enumerateKeysAndObjectsUsingBlock:v13];
    }
  }
}

id NSStringFrom_UI_UIResponder_Override_Type(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = 0;
  v4 = &v9;
  do
  {
    v5 = v3;
    if (((1 << v3) & a1) != 0)
    {
      v6 = *v4;
      if (*v4)
      {
        if ([v2 length])
        {
          [v2 appendString:@"|"];
        }

        [v2 appendString:v6];
      }
    }

    v3 = 1;
    v4 = &v9 + 1;
  }

  while ((v5 & 1) == 0);
  for (i = 8; i != -8; i -= 8)
  {
  }

  return v2;
}

BOOL _UIGetFocusCastingVisualization()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_FocusCastingVisualization, _UIInternalPreferencesRevisionVar == _UIInternalPreference_FocusCastingVisualization))
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

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_FocusCastingVisualization, @"FocusCastingVisualization", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_FocusCastingVisualization;
    }

    while (v0 != _UIInternalPreference_FocusCastingVisualization);
  }

  return byte_1EA95E644 && v1;
}

id _UIDatePickerFontWithMonospacedNumbers(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a2];
  v3 = *off_1E70ECCC8;
  v14[0] = *off_1E70ECCD0;
  v14[1] = v3;
  v15[0] = &unk_1EFE32CF8;
  v15[1] = &unk_1EFE32D10;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v5 = *off_1E70ECC98;
  v11 = v4;
  v12 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v13 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v2 fontDescriptorByAddingAttributes:v7];

  v9 = [off_1E70ECC18 fontWithDescriptor:v8 size:0.0];

  return v9;
}

void sub_189E94470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void ___getStateMachineSpec_block_invoke()
{
  xmmword_1ED4A0130 = xmmword_18A6814D0;
  qword_1ED4A0140 = 9;
  unk_1ED4A0148 = &_UIHIDInputEventString_block_invoke_debugging;
  v0 = qword_1ED4A0160;
  qword_1ED4A0160 = &__block_literal_global_168;

  v1 = qword_1ED4A0258;
  qword_1ED4A0258 = &__block_literal_global_170;

  v2 = qword_1ED4A0288;
  qword_1ED4A0288 = &__block_literal_global_177;

  v3 = qword_1ED4A0368;
  qword_1ED4A0368 = &__block_literal_global_180_0;

  v4 = qword_1ED4A0448;
  qword_1ED4A0448 = &__block_literal_global_182;

  v5 = qword_1ED4A0418;
  qword_1ED4A0418 = &__block_literal_global_184;

  v6 = qword_1ED4A0430;
  qword_1ED4A0430 = &__block_literal_global_186_0;

  v7 = qword_1ED4A0338;
  qword_1ED4A0338 = &__block_literal_global_188_1;

  v8 = qword_1ED4A0350;
  qword_1ED4A0350 = &__block_literal_global_190_0;

  v9 = qword_1ED4A0380;
  qword_1ED4A0380 = &__block_literal_global_192;

  v10 = qword_1ED4A02A0;
  qword_1ED4A02A0 = &__block_literal_global_200_0;

  v11 = qword_1ED4A0460;
  qword_1ED4A0460 = &__block_literal_global_203;

  v12 = qword_1ED4A03B0;
  qword_1ED4A03B0 = &__block_literal_global_206_0;

  v13 = qword_1ED4A02D0;
  qword_1ED4A02D0 = &__block_literal_global_209_1;

  v14 = qword_1ED4A03C8;
  qword_1ED4A03C8 = &__block_literal_global_212;

  v15 = qword_1ED4A02E8;
  qword_1ED4A02E8 = &__block_literal_global_215_2;

  if ([UIApp _supportsIndirectInputEvents])
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v16 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v27 = _UIInternalPreference_ShouldIncludeTranslationHIDEvent;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_ShouldIncludeTranslationHIDEvent)
      {
        do
        {
          if (v16 < v27)
          {
            break;
          }

          _UIInternalPreferenceSync(v16, &_UIInternalPreference_ShouldIncludeTranslationHIDEvent, @"ShouldIncludeTranslationHIDEvent", _UIInternalPreferenceUpdateBool);
          v27 = _UIInternalPreference_ShouldIncludeTranslationHIDEvent;
        }

        while (v16 != _UIInternalPreference_ShouldIncludeTranslationHIDEvent);
      }
    }

    v17 = qword_1ED4A0398;
    qword_1ED4A0398 = &__block_literal_global_218_0;

    v18 = qword_1ED4A02B8;
    qword_1ED4A02B8 = &__block_literal_global_221_1;

    v19 = qword_1ED4A0478;
    qword_1ED4A0478 = &__block_literal_global_223;
  }

  else
  {
    qword_1ED4A0118 = 0x4041AD7BC01366B8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___getStateMachineSpec_block_invoke_10;
    aBlock[3] = &__block_descriptor_33_e42_____IOHIDEvent__16__0___UIHIDTransformer_8l;
    v33 = 0;
    v20 = _Block_copy(aBlock);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = ___getStateMachineSpec_block_invoke_2_240;
    v30[3] = &unk_1E711EC50;
    v21 = v20;
    v31 = v21;
    v22 = _Block_copy(v30);
    v23 = qword_1ED4A03E0;
    qword_1ED4A03E0 = v22;

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = ___getStateMachineSpec_block_invoke_243;
    v28[3] = &unk_1E711EC50;
    v29 = v21;
    v24 = v21;
    v25 = _Block_copy(v28);
    v26 = qword_1ED4A05A0;
    qword_1ED4A05A0 = v25;
  }
}

uint64_t ___getStateMachineSpec_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = v3;
  if (v2)
  {
    v5 = v2[5];
  }

  else
  {
    v5 = 0;
  }

  [v3 updateWithHIDEvent:v5];

  v6 = objc_opt_new();
  [v6 setOverridePathId:&unk_1EFE32D88];
  if (v2)
  {
    v7 = v2[5];
  }

  else
  {
    v7 = 0;
  }

  [v6 updateWithHIDEvent:v7];
  [v6 setDeliveryPhase:1];
  v8 = [(_UIHIDTransformer *)v2 pathCollection];
  [v8 addPath:v6];

  v9 = [(_UIHIDTransformer *)v2 pathCollection];
  v10 = [v9 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v10 injected:1];

  return 2;
}

uint64_t ___getStateMachineSpec_block_invoke_175(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = v3;
  if (v2)
  {
    v5 = v2[5];
  }

  else
  {
    v5 = 0;
  }

  [v3 updateWithHIDEvent:v5];

  v6 = objc_opt_new();
  [v6 setOverridePathId:&unk_1EFE32D88];
  if (v2)
  {
    v7 = v2[5];
  }

  else
  {
    v7 = 0;
  }

  [v6 updateWithHIDEvent:v7];
  v8 = [(_UIHIDTransformer *)v2 pathCollection];
  [v8 addPath:v6];

  [v6 setDeliveryPhase:4];
  v9 = [(_UIHIDTransformer *)v2 pathCollection];
  v10 = [v9 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v10 injected:1];

  return 3;
}

uint64_t ___getStateMachineSpec_block_invoke_2_178(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = v3;
  if (v2)
  {
    v5 = v2[5];
  }

  else
  {
    v5 = 0;
  }

  [v3 updateWithHIDEvent:v5];

  v6 = [(_UIHIDTransformer *)v2 pathCollection];
  v7 = [v6 pathWithId:&unk_1EFE32D88];

  if (v2)
  {
    v8 = v2[5];
  }

  else
  {
    v8 = 0;
  }

  [v7 updateWithHIDEvent:v8];
  [v7 setDeliveryPhase:4];
  v9 = [(_UIHIDTransformer *)v2 pathCollection];
  v10 = [v9 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v10 injected:1];

  return 3;
}

uint64_t ___getStateMachineSpec_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = v3;
  if (v2)
  {
    v5 = v2[5];
  }

  else
  {
    v5 = 0;
  }

  [v3 updateWithHIDEvent:v5];

  v6 = [(_UIHIDTransformer *)v2 pathCollection];
  v7 = [v6 pathWithId:&unk_1EFE32D88];

  if (v2)
  {
    v8 = v2[5];
  }

  else
  {
    v8 = 0;
  }

  [v7 updateWithHIDEvent:v8];
  [v7 setDeliveryPhase:5];
  v9 = [(_UIHIDTransformer *)v2 pathCollection];
  v10 = [v9 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v10 injected:1];

  return 3;
}

uint64_t ___getStateMachineSpec_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = v3;
  if (v2)
  {
    v5 = v2[5];
  }

  else
  {
    v5 = 0;
  }

  [v3 updateWithHIDEvent:v5];

  v6 = [(_UIHIDTransformer *)v2 pathCollection];
  v7 = [v6 pathWithId:&unk_1EFE32D88];

  if (v2)
  {
    [v7 updateWithHIDEvent:v2[5]];
  }

  else
  {
    [v7 updateWithHIDEvent:0];
  }

  if ((IOHIDEventGetPhase() & 8) != 0)
  {
    v8 = 7;
  }

  else
  {
    v8 = 6;
  }

  [v7 setDeliveryPhase:v8];
  v9 = [(_UIHIDTransformer *)v2 pathCollection];
  v10 = [v9 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v10 injected:1];

  return 2;
}

uint64_t ___getStateMachineSpec_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = v3;
  if (v2)
  {
    v5 = v2[5];
  }

  else
  {
    v5 = 0;
  }

  [v3 updateWithHIDEvent:v5];

  v6 = [(_UIHIDTransformer *)v2 pathCollection];
  v7 = [v6 pathWithId:&unk_1EFE32D88];

  if (v2)
  {
    [v7 updateWithHIDEvent:v2[5]];
  }

  else
  {
    [v7 updateWithHIDEvent:0];
  }

  if ((IOHIDEventGetPhase() & 8) != 0)
  {
    v8 = 7;
  }

  else
  {
    v8 = 6;
  }

  [v7 setDeliveryPhase:v8];
  v9 = [(_UIHIDTransformer *)v2 pathCollection];
  v10 = [v9 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v10 injected:1];

  [v7 setDeliveryPhase:3];
  v11 = [(_UIHIDTransformer *)v2 pathCollection];
  v12 = [v11 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v12 injected:1];

  v13 = [(_UIHIDTransformer *)v2 pathCollection];
  [v13 removePath:v7];

  return 1;
}

uint64_t ___getStateMachineSpec_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = v3;
  if (v2)
  {
    v5 = v2[5];
  }

  else
  {
    v5 = 0;
  }

  [v3 updateWithHIDEvent:v5];

  v6 = [(_UIHIDTransformer *)v2 pathCollection];
  v7 = [v6 pathWithId:&unk_1EFE32D88];

  if (v2)
  {
    v8 = v2[5];
  }

  else
  {
    v8 = 0;
  }

  [v7 updateWithHIDEvent:v8];
  [v7 setDeliveryPhase:2];
  v9 = [(_UIHIDTransformer *)v2 pathCollection];
  v10 = [v9 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v10 injected:1];

  return 2;
}

uint64_t ___getStateMachineSpec_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = v3;
  if (v2)
  {
    v5 = v2[5];
  }

  else
  {
    v5 = 0;
  }

  [v3 updateWithHIDEvent:v5];

  v6 = [(_UIHIDTransformer *)v2 pathCollection];
  v7 = [v6 pathWithId:&unk_1EFE32D88];

  if (v2)
  {
    v8 = v2[5];
  }

  else
  {
    v8 = 0;
  }

  [v7 updateWithHIDEvent:v8];
  [v7 setDeliveryPhase:3];
  v9 = [(_UIHIDTransformer *)v2 pathCollection];
  v10 = [v9 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v10 injected:1];

  v11 = [(_UIHIDTransformer *)v2 pathCollection];
  [v11 removePath:v7];

  return 1;
}

void addOutputEventOfType(void *a1, int a2, void *a3)
{
  v10 = a1;
  v5 = a3;
  if (a2 == 17)
  {
    if (v10)
    {
      v6 = v10[5];
    }

    else
    {
      v6 = 0;
    }

    [v10 addOutputHIDEvent:v6 injected:0];
  }

  else
  {
    if (v10)
    {
      v7 = v10[5];
    }

    else
    {
      v7 = 0;
    }

    v8 = _UIHIDCopyEventPromotingChildOfType(a2, v7, v5);
    if (v8)
    {
      v9 = v8;
      [v10 addOutputHIDEvent:v8 injected:1];
      CFRelease(v9);
    }
  }
}

uint64_t ___getStateMachineSpec_block_invoke_2_201(uint64_t a1, void *a2)
{
  v2 = a2;
  addOutputEventOfType(v2, 6, MEMORY[0x1E695E0F0]);
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = [v3 pathWithId:&unk_1EFE32D88];

  if ([v4 deliveryPhase] == 5)
  {
    v5 = [(_UIHIDTransformer *)v2 pathCollection];
    v6 = [v5 hidEventFromCurrentState];
    [v2 addOutputHIDEvent:v6 injected:1];
  }

  return 3;
}

uint64_t ___getStateMachineSpec_block_invoke_3_204(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = [v3 pathWithId:&unk_1EFE32D88];

  [v4 setDeliveryPhase:7];
  v5 = [(_UIHIDTransformer *)v2 pathCollection];
  v6 = [v5 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v6 injected:1];

  v7 = [(_UIHIDTransformer *)v2 pathCollection];
  [v7 removePath:v4];

  if (v2)
  {
    v8 = v2[5];
  }

  else
  {
    v8 = 0;
  }

  [v2 addOutputHIDEvent:v8 injected:0];

  return 1;
}

uint64_t ___getStateMachineSpec_block_invoke_4_207(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2[5];
  }

  else
  {
    v2 = 0;
  }

  [a2 addOutputHIDEvent:v2 injected:0];
  return 1;
}

uint64_t ___getStateMachineSpec_block_invoke_5_210(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = [v3 pathWithId:&unk_1EFE32D88];

  [v4 setDeliveryPhase:7];
  v5 = [(_UIHIDTransformer *)v2 pathCollection];
  v6 = [v5 hidEventFromCurrentState];
  [v2 addOutputHIDEvent:v6 injected:1];

  v7 = [(_UIHIDTransformer *)v2 pathCollection];
  [v7 removePath:v4];

  if (v2)
  {
    v8 = v2[5];
  }

  else
  {
    v8 = 0;
  }

  [v2 addOutputHIDEvent:v8 injected:0];

  return 1;
}

uint64_t ___getStateMachineSpec_block_invoke_6_213(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2[5];
  }

  else
  {
    v2 = 0;
  }

  [a2 addOutputHIDEvent:v2 injected:0];
  return 1;
}

uint64_t ___getStateMachineSpec_block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  addOutputEventOfType(v2, 17, MEMORY[0x1E695E0F0]);
  v3 = [(_UIHIDTransformer *)v2 pathCollection];
  v4 = [v3 pathWithId:&unk_1EFE32D88];

  if ([v4 deliveryPhase] == 5)
  {
    v5 = [(_UIHIDTransformer *)v2 pathCollection];
    v6 = [v5 hidEventFromCurrentState];
    [v2 addOutputHIDEvent:v6 injected:1];
  }

  return 3;
}

CFTypeRef ___getStateMachineSpec_block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = &unk_1EFE2D420;
  }

  else
  {
    v5 = &unk_1EFE2D438;
  }

  if (v3)
  {
    v6 = v3[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_UIHIDTransformer *)v3 scaleEventTracker];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___UIHIDCreateScaleEventAndAppendIfNeeded_block_invoke;
  v15[3] = &unk_1E70F3838;
  v15[4] = &v16;
  _UIEventHIDEnumerateChildren(v6, 7, v15);
  if (!v17[3])
  {
    Copy = IOHIDEventCreateCopy();
    IOHIDEventGetTimeStamp();
    IOHIDEventGetSenderID();
    [v7 scaleZ];
    [v7 compositePhase];
    ScaleEvent = IOHIDEventCreateScaleEvent();
    IOHIDEventSetSenderID();
    IOHIDEventSetPhase();
    IOHIDEventAppendEvent();
    CFRelease(ScaleEvent);
    v6 = CFAutorelease(Copy);
  }

  _Block_object_dispose(&v16, 8);

  v10 = _UIHIDCopyEventPromotingChildOfType(7, v6, v5);
  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIStateMachineSpecPtr _getStateMachineSpec(void)_block_invoke"];
    [v13 handleFailureInFunction:v14 file:@"_UIHIDTransformer.m" lineNumber:729 description:{@"Unexpected nil outputEvent attempting to create event of type: %lu", 7}];
  }

  v11 = CFAutorelease(v10);

  return v11;
}

void sub_189E97D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIHIDCopyEventPromotingChildOfType(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    IOHIDEventGetType();
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___UIHIDCopyEventPromotingChildOfType_block_invoke;
    v16[3] = &unk_1E70F3838;
    v16[4] = &v17;
    _UIEventHIDEnumerateChildren(a2, a1, v16);
    if (v18[3])
    {
      Copy = IOHIDEventCreateCopy();
      if (IOHIDEventGetAttributeDataLength() >= 1)
      {
        IOHIDEventGetAttributeDataPtr();
        IOHIDEventSetAttributeData();
      }

      v7 = IOHIDEventCreateCopy();
      Children = IOHIDEventGetChildren();
      v9 = Children;
      if (Children)
      {
        Count = CFArrayGetCount(Children);
      }

      else
      {
        Count = 0;
      }

      v11 = Count;
      while (v11 > 0)
      {
        CFArrayGetValueAtIndex(v9, --v11);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IOHIDEventGetType()];
        v13 = [v5 containsObject:v12];

        if (v13)
        {
          v14 = IOHIDEventCreateCopy();
          IOHIDEventAppendEvent();
          CFRelease(v14);
        }

        IOHIDEventRemoveEvent();
      }

      IOHIDEventAppendEvent();
      CFRelease(v7);
    }

    else
    {
      Copy = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    Copy = 0;
  }

  return Copy;
}

void sub_189E97FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___getStateMachineSpec_block_invoke_2_240(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(_UIHIDTransformer *)v3 scaleEventTracker];
  v5 = v4;
  if (v3)
  {
    v6 = v3[5];
  }

  else
  {
    v6 = 0;
  }

  [v4 updateWithHIDEvent:v6];

  v7 = [(_UIHIDTransformer *)v3 scaleEventTracker];
  v8 = [v7 compositePhase];

  if (v8)
  {
    v9 = (*(*(a1 + 32) + 16))();
    v10 = [(_UIHIDTransformer *)v3 pathCollection];
    [v10 updateWithHIDEvent:v9];

    v11 = [(_UIHIDTransformer *)v3 pathCollection];
    v12 = [v11 pathWithId:&unk_1EFE32D88];

    [v12 setOverridePathId:&unk_1EFE32D88];
    [v12 updateWithHIDEvent:v9];
    CGAffineTransformMakeTranslation(&v23, -*&qword_1ED4A0118, *&qword_1ED4A0118);
    [v12 applyTransform:&v23];
    v13 = objc_opt_new();
    [v13 setOverridePathId:&unk_1EFE32DE8];
    [v13 updateWithHIDEvent:v9];
    CGAffineTransformMakeTranslation(&v23, *&qword_1ED4A0118, -*&qword_1ED4A0118);
    [v13 applyTransform:&v23];
    [v12 setDeliveryPhase:4];
    [v13 setDeliveryPhase:4];
    v14 = [(_UIHIDTransformer *)v3 pathCollection];
    [v14 addPath:v13];

    v15 = [(_UIHIDTransformer *)v3 pathCollection];
    v16 = [v15 hidEventFromCurrentState];
    [v3 addOutputHIDEvent:v16 injected:1];

    if (v3)
    {
      v17 = MEMORY[0x1E695EFD0];
      v18 = *(MEMORY[0x1E695EFD0] + 16);
      *(v3 + 4) = *MEMORY[0x1E695EFD0];
      *(v3 + 5) = v18;
      *(v3 + 6) = *(v17 + 32);
    }

    v19 = 4;
  }

  else
  {
    v20 = *(__UILogGetCategoryCachedImpl("HIDTransformer", &qword_1ED4A0128) + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v21 = v3[5];
      }

      else
      {
        v21 = 0;
      }

      LODWORD(v23.a) = 138412290;
      *(&v23.a + 4) = v21;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "HIDTransformer is attempting to process a transform event (scale, rotate, translate) with an improper phase transition, this is likely a FW issue. %@", &v23, 0xCu);
    }

    v19 = 2;
  }

  return v19;
}

uint64_t ___getStateMachineSpec_block_invoke_243(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(_UIHIDTransformer *)v3 scaleEventTracker];
  v5 = v4;
  if (v3)
  {
    v6 = *(v3 + 5);
  }

  else
  {
    v6 = 0;
  }

  [v4 updateWithHIDEvent:v6];

  v7 = (*(*(a1 + 32) + 16))();
  v8 = [(_UIHIDTransformer *)v3 pathCollection];
  [v8 updateWithHIDEvent:v7];

  if (v3)
  {
    v9 = *(v3 + 5);
    v41 = *(v3 + 4);
    v42 = v9;
    v11 = v3[12];
    v10 = v3[13];
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v10 = 0.0;
    v11 = 0.0;
  }

  memset(&v40, 0, sizeof(v40));
  CGAffineTransformMakeTranslation(&v40, v11, v10);
  memset(&v39, 0, sizeof(v39));
  t1 = v40;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v41;
  *&t1.c = v42;
  t1.tx = v11;
  t1.ty = v10;
  CGAffineTransformConcat(&v39, &t1, &t2);
  memset(&t2, 0, sizeof(t2));
  _UIEventGetAffineTransformForScaleEvent(v7, &t2);
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformMakeTranslation(&t1, t2.tx, t2.ty);
  memset(&v36, 0, sizeof(v36));
  v34 = t1;
  CGAffineTransformInvert(&v35, &v34);
  v34 = t2;
  CGAffineTransformConcat(&v36, &v34, &v35);
  v34 = v39;
  memset(&v35, 0, sizeof(v35));
  v33 = v36;
  CGAffineTransformConcat(&v35, &v34, &v33);
  v33 = v40;
  memset(&v34, 0, sizeof(v34));
  v32 = t1;
  CGAffineTransformConcat(&v34, &v33, &v32);
  v33 = v35;
  v32 = v34;
  CGAffineTransformConcat(&v31, &v33, &v32);
  if (v3)
  {
    v12 = *&v31.a;
    v13 = *&v31.c;
    *(v3 + 4) = *&v31.a;
    *(v3 + 5) = v13;
    v14 = *&v31.tx;
    *(v3 + 6) = *&v31.tx;
    *&v32.tx = v14;
    memset(&v33, 0, sizeof(v33));
    *&v32.a = v12;
    *&v32.c = v13;
  }

  else
  {
    memset(&v33, 0, sizeof(v33));
    memset(&v32, 0, sizeof(v32));
  }

  v29 = v34;
  CGAffineTransformInvert(&v30, &v29);
  CGAffineTransformConcat(&v33, &v32, &v30);
  mach_absolute_time();
  v32 = v40;
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v16 = VendorDefinedEvent;
    IOHIDEventAppendEvent();
    CFRelease(v16);
  }

  v17 = [(_UIHIDTransformer *)v3 pathCollection];
  v18 = [v17 pathWithId:&unk_1EFE32D88];

  [v18 updateWithHIDEvent:v7];
  CGAffineTransformMakeTranslation(&v30, v33.tx + *&qword_1ED4A0118 * v33.c - *&qword_1ED4A0118 * v33.a, v33.ty + *&qword_1ED4A0118 * v33.d - *&qword_1ED4A0118 * v33.b);
  [v18 applyTransform:&v30];
  v19 = [(_UIHIDTransformer *)v3 pathCollection];
  v20 = [v19 pathWithId:&unk_1EFE32DE8];

  [v20 updateWithHIDEvent:v7];
  CGAffineTransformMakeTranslation(&v30, v33.tx + *&qword_1ED4A0118 * v33.a - *&qword_1ED4A0118 * v33.c, v33.ty + *&qword_1ED4A0118 * v33.b - *&qword_1ED4A0118 * v33.d);
  [v20 applyTransform:&v30];
  v21 = IOHIDEventGetPhase() & 0xC;
  if (v21)
  {
    v22 = 6;
  }

  else
  {
    v22 = 5;
  }

  [v18 setDeliveryPhase:v22];
  [v20 setDeliveryPhase:v22];
  v23 = [(_UIHIDTransformer *)v3 pathCollection];
  v24 = [v23 hidEventFromCurrentState];
  [(CGFloat *)v3 addOutputHIDEvent:v24 injected:1];

  if (v21)
  {
    v25 = [(_UIHIDTransformer *)v3 pathCollection];
    [v25 removePath:v20];

    v26 = [(_UIHIDTransformer *)v3 scaleEventTracker];
    [v26 reset];

    v27 = 2;
  }

  else
  {
    v27 = 4;
  }

  return v27;
}

id _UIFocusGroupIdentifierOfAssociatedSearchTextFieldForView(void *a1)
{
  v1 = [a1 _viewControllerForAncestor];
  if (!v1)
  {
LABEL_8:
    v3 = 0;
    goto LABEL_12;
  }

  v2 = v1;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
      goto LABEL_12;
    }

    v3 = [v2 presentedViewController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v4 = [v3 searchResultsController];
    v5 = v4;
    if (v4 == v2)
    {
      break;
    }

    v6 = [v3 searchResultsController];

    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_7:
    v7 = [v2 parentViewController];

    v2 = v7;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
LABEL_12:
  v8 = [v3 searchBar];
  v9 = [v8 _searchBarTextField];
  v10 = [v9 focusGroupIdentifier];

  return v10;
}

id _UIFirstResponderCandidateForEnvironment(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIResponder * _Nullable _UIFirstResponderCandidateForEnvironment(id<UIFocusEnvironment>  _Nonnull __strong)"];
    [v9 handleFailureInFunction:v10 file:@"_UIFocusPlatformHelper.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v2 = v1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__170;
  v18 = __Block_byref_object_dispose__170;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___UIFocusEnvironmentContainingResponder_block_invoke;
  v13[3] = &unk_1E71080D8;
  v13[4] = &v14;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v2, v13);
  v3 = v15[5];
  _Block_object_dispose(&v14, 8);

  if (!v3)
  {
    v4 = _UIFocusEnvironmentContainingView(v2);
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v5 = v2;
      if (!v1)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIWindowScene * _Nullable _UIWindowSceneForEnvironment(id<UIFocusEnvironment>  _Nonnull __strong)"];
        [v11 handleFailureInFunction:v12 file:@"_UIFocusPlatformHelper.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
      }

      v6 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:v5];
      v7 = [v6 _windowScene];

      v3 = [v7 keyWindow];
    }
  }

  return v3;
}

void sub_189EA0E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIFocusClosestFocusableViewToRectInView(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  if (!v9)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIView * _Nullable _UIFocusClosestFocusableViewToRectInView(UIView * _Nonnull __strong, CGRect)"}];
    [v26 handleFailureInFunction:v27 file:@"_UIFocusPlatformHelper.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"containingView"}];
  }

  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if ([v9 __isKindOfUIScrollView])
  {
    [v9 visibleBounds];
    v11 = v18;
    v13 = v19;
    v15 = v20;
    v17 = v21;
  }

  v22 = [v9 _focusSystem];
  v23 = [v22 _closestFocusableItemToPoint:v9 inEnvironment:0 constrainedToRect:a2 + a4 * 0.5 distanceMeasuringUnitPoint:a3 + a5 * 0.5 itemFilter:{v11, v13, v15, v17, 0.5, 0.5}];

  v24 = _UIFocusEnvironmentContainingView(v23);

  return v24;
}

uint64_t _UIFocusedSoundForItem(void *a1)
{
  v1 = a1;
  if (_UIFocusItemIsViewOrRespondsToSelector(v1))
  {
    v2 = [v1 _focusedSound];
  }

  else
  {
    v2 = _UIFocusedDefaultSoundForItem(v1);
  }

  v3 = v2;

  return v3;
}

uint64_t _UIFocusedDefaultSoundForItem(void *a1)
{
  v1 = a1;
  [v1 frame];
  Width = CGRectGetWidth(v13);
  [v1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  Height = CGRectGetHeight(v14);
  if (Width < Height)
  {
    Height = Width;
  }

  if (Height < 100.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t _UIViewContainsFocusableSubviews(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _UIViewContainsFocusableSubviews(UIView * _Nonnull __strong)"];
    [v8 handleFailureInFunction:v9 file:@"_UIFocusPlatformHelper.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  v2 = objc_opt_new();
  [v2 addObject:v1];
  if ([v2 count])
  {
    v3 = 0;
    do
    {
      v4 = [v2 objectAtIndex:v3];
      IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(v4);
      if (IsFocusedOrFocusable)
      {
        break;
      }

      v6 = [v4 subviews];
      [v2 addObjectsFromArray:v6];

      ++v3;
    }

    while (v3 < [v2 count]);
  }

  else
  {
    IsFocusedOrFocusable = 0;
  }

  return IsFocusedOrFocusable;
}