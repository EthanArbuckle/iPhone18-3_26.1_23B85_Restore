@interface UIUCBBarButtonVisualProviderIOS
@end

@implementation UIUCBBarButtonVisualProviderIOS

void __59___UIUCBBarButtonVisualProviderIOS__defaultTitleAttributes__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(off_1E70ECB80);
  [v0 setLineBreakMode:4];
  [v0 setAlignment:4];
  v1 = objc_alloc_init(off_1E70ECB90);
  [v1 setShadowOffset:{0.0, -1.0}];
  [v1 setShadowColor:0];
  [v1 setShadowBlurRadius:0.0];
  v7[0] = *off_1E70EC918;
  v2 = [off_1E70ECC18 systemFontOfSize:17.0];
  v3 = *off_1E70EC988;
  v8[0] = v2;
  v8[1] = v0;
  v4 = *off_1E70EC9B0;
  v7[1] = v3;
  v7[2] = v4;
  v8[2] = v1;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v6 = _MergedGlobals_11_1;
  _MergedGlobals_11_1 = v5;
}

void __70___UIUCBBarButtonVisualProviderIOS__configureImageOrTitleFromBarItem___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70___UIUCBBarButtonVisualProviderIOS__configureImageOrTitleFromBarItem___block_invoke_3;
  block[3] = &unk_1E70F7580;
  v16[1] = a2;
  v13 = v7;
  v14 = *(a1 + 32);
  v15 = v8;
  v10 = v8;
  v11 = v7;
  objc_copyWeak(v16, (a1 + 40));
  dispatch_async(v9, block);

  objc_destroyWeak(v16);
}

void __70___UIUCBBarButtonVisualProviderIOS__configureImageOrTitleFromBarItem___block_invoke_3(uint64_t a1)
{
  v2 = [_UIConcretePasteboard _remoteContentForLayerContextWithId:*(a1 + 64) slotStyle:*(a1 + 32) pasteButtonTag:*(a1 + 40)];
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70___UIUCBBarButtonVisualProviderIOS__configureImageOrTitleFromBarItem___block_invoke_4;
    block[3] = &unk_1E70F7558;
    v5 = *(a1 + 48);
    v4 = v2;
    objc_copyWeak(&v6, (a1 + 56));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);
  }
}

void __70___UIUCBBarButtonVisualProviderIOS__configureImageOrTitleFromBarItem___block_invoke_4(uint64_t a1)
{
  if ((*(*(a1 + 40) + 16))())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained updateSecureButton];
  }
}

id __46___UIUCBBarButtonVisualProviderIOS_updateMenu__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = (*(v4 + 16))(v4, WeakRetained, v3);

  if (!v6)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = objc_loadWeakRetained((a1 + 40));
        *buf = 138412290;
        v26 = v18;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Client configured a bar button item (%@) with a secondaryActionsProvider and secondaryActionsArePrimary=YES, but failed to return a menu, Substituting a dummy menu.", buf, 0xCu);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &UIDictationInputModeInvocationSourceGenerativeField_block_invoke___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v10 = objc_loadWeakRetained((a1 + 40));
        *buf = 138412290;
        v26 = v10;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Client configured a bar button item (%@) with a secondaryActionsProvider and secondaryActionsArePrimary=YES, but failed to return a menu, Substituting a dummy menu.", buf, 0xCu);
      }
    }

    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 title];
    v13 = objc_loadWeakRetained((a1 + 40));
    v14 = [v13 image];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __46___UIUCBBarButtonVisualProviderIOS_updateMenu__block_invoke_96;
    v22 = &unk_1E70F7450;
    objc_copyWeak(&v23, (a1 + 40));
    v15 = [UIAction actionWithTitle:v12 image:v14 identifier:0 handler:&v19];

    v24 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:{1, v19, v20, v21, v22}];
    v6 = [UIMenu menuWithChildren:v16];

    objc_destroyWeak(&v23);
  }

  return v6;
}

void __46___UIUCBBarButtonVisualProviderIOS_updateMenu__block_invoke_96(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerActionForEvent:0];
}

id __46___UIUCBBarButtonVisualProviderIOS_updateMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = (*(v3 + 16))(v3, WeakRetained, v4);

  return v6;
}

@end