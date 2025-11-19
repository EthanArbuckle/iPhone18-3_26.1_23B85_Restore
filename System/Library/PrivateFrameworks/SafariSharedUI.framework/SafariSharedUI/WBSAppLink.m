@interface WBSAppLink
- (BOOL)_isApplicationProxyAppleNews:(id)a3;
- (BOOL)isAppleNewsLink;
- (LSApplicationProxy)synchronousTargetApplicationProxy;
- (WBSAppLink)initWithURL:(id)a3;
- (id)_synchronouslyFetchAppLinkWithError:(id *)a3;
- (int64_t)_openStrategyForAppLink:(id)a3;
- (int64_t)synchronouslyDecideOpenStrategy;
- (void)_appLink:(id)a3 getAppLinkLabel:(id *)a4 name:(id *)a5 bundleIdentifier:(id *)a6 icon:(id *)a7;
- (void)_getAppLinkForBanner:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)decideOpenStrategyWithCompletionHandler:(id)a3;
- (void)disableTemporarily;
- (void)disableWithCompletionHandler:(id)a3;
- (void)getAppLinkAttributesWithCompletionHandler:(id)a3;
- (void)getAppLinkLabel:(id *)a3 name:(id *)a4 bundleIdentifier:(id *)a5 icon:(id *)a6;
- (void)getAppLinkTargetApplicationBundleIdentifierWithCompletionHandler:(id)a3;
- (void)openExternallyWithWebBrowserState:(id)a3 referrerURL:(id)a4 completionHandler:(id)a5;
- (void)updateURL:(id)a3;
@end

@implementation WBSAppLink

- (WBSAppLink)initWithURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSAppLink;
  v6 = [(WBSAppLink *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_ivarLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_url, a3);
    v8 = v7;
  }

  return v7;
}

- (LSApplicationProxy)synchronousTargetApplicationProxy
{
  v2 = [(WBSAppLink *)self _synchronouslyFetchAppLinkWithError:0];
  v3 = [v2 targetApplicationProxy];

  return v3;
}

- (BOOL)isAppleNewsLink
{
  v2 = self;
  v3 = [(WBSAppLink *)self _synchronouslyFetchAppLinkWithError:0];
  v4 = [v3 targetApplicationProxy];
  LOBYTE(v2) = [(WBSAppLink *)v2 _isApplicationProxyAppleNews:v4];

  return v2;
}

- (void)decideOpenStrategyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__WBSAppLink_decideOpenStrategyWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8283260;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WBSAppLink *)self _getAppLinkForBanner:0 withCompletionHandler:v6];
}

uint64_t __54__WBSAppLink_decideOpenStrategyWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _openStrategyForAppLink:a2];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)getAppLinkTargetApplicationBundleIdentifierWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__WBSAppLink_getAppLinkTargetApplicationBundleIdentifierWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8283288;
  v7 = v4;
  v5 = v4;
  [(WBSAppLink *)self _getAppLinkForBanner:0 withCompletionHandler:v6];
}

void __79__WBSAppLink_getAppLinkTargetApplicationBundleIdentifierWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 targetApplicationProxy];
  v3 = [v4 bundleIdentifier];
  (*(v2 + 16))(v2, v3);
}

- (int64_t)synchronouslyDecideOpenStrategy
{
  v3 = [(WBSAppLink *)self _synchronouslyFetchAppLinkWithError:0];
  v4 = [(WBSAppLink *)self _openStrategyForAppLink:v3];

  return v4;
}

- (void)getAppLinkAttributesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__WBSAppLink_getAppLinkAttributesWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E82832B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WBSAppLink *)self _getAppLinkForBanner:0 withCompletionHandler:v6];
}

void __56__WBSAppLink_getAppLinkAttributesWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  [v3 _appLink:a2 getAppLinkLabel:&v11 name:&v10 bundleIdentifier:&v9 icon:&v8];
  v4 = v11;
  v5 = v10;
  v6 = v9;
  v7 = v8;
  (*(*(a1 + 40) + 16))();
}

- (void)getAppLinkLabel:(id *)a3 name:(id *)a4 bundleIdentifier:(id *)a5 icon:(id *)a6
{
  v11 = [(WBSAppLink *)self _synchronouslyFetchAppLinkWithError:0];
  [(WBSAppLink *)self _appLink:v11 getAppLinkLabel:a3 name:a4 bundleIdentifier:a5 icon:a6];
}

- (void)openExternallyWithWebBrowserState:(id)a3 referrerURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = &__block_literal_global_2;
  }

  v11 = _Block_copy(v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_2;
  v15[3] = &unk_1E8283320;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v11;
  [(WBSAppLink *)self _getAppLinkForBanner:0 withCompletionHandler:v15];
}

void __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v16 = 0;
    v7 = [v5 setEnabled:1 error:&v16];
    v8 = v16;
    if ((v7 & 1) == 0)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXUniversalLinks();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_2_cold_1(a1, v9);
      }
    }

    if (*(a1 + 40) || *(a1 + 48))
    {
      v10 = objc_alloc_init(MEMORY[0x1E69636B8]);
      [v10 setReferrerURL:*(a1 + 48)];
      v11 = *(a1 + 40);
      if (v11)
      {
        v17 = *MEMORY[0x1E699F900];
        v18[0] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        [v10 setFrontBoardOptions:v12];
      }
    }

    else
    {
      v10 = 0;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_4;
    v14[3] = &unk_1E82832F8;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 56);
    [v5 openWithConfiguration:v10 completionHandler:v14];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXUniversalLinks();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_2_cold_2(a1, v13);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXUniversalLinks();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(*(a1 + 32) + 24);
      v9 = 138739971;
      v10 = v8;
      _os_log_impl(&dword_1C6968000, v7, OS_LOG_TYPE_INFO, "Opened App Link externally for URL %{sensitive}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_4_cold_1(a1, v7);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)disableWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__WBSAppLink_disableWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E82832B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WBSAppLink *)self _getAppLinkForBanner:0 withCompletionHandler:v6];
}

void __43__WBSAppLink_disableWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v10 = 0;
    v6 = [a2 setEnabled:0 error:&v10];
    v7 = v10;
    if ((v6 & 1) == 0)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXUniversalLinks();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_2_cold_1(a1, v8);
      }
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v7 == 0);
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXUniversalLinks();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __43__WBSAppLink_disableWithCompletionHandler___block_invoke_cold_2(a1, v9);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_getAppLinkForBanner:(BOOL)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_ivarLock);
  v6 = self->_cachedAppLink;
  didResolveAppLink = self->_didResolveAppLink;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (didResolveAppLink)
  {
    v5[2](v5, v6, 0);
  }

  else
  {
    url = self->_url;
    if (url)
    {
      v9 = MEMORY[0x1E69635C0];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __57__WBSAppLink__getAppLinkForBanner_withCompletionHandler___block_invoke;
      v11[3] = &unk_1E82832B0;
      v11[4] = self;
      v12 = v5;
      [v9 getAppLinkWithURL:url completionHandler:v11];
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1002 userInfo:0];
      (v5)[2](v5, 0, v10);
    }
  }
}

void __57__WBSAppLink__getAppLinkForBanner_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXUniversalLinks();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(*(a1 + 32) + 24);
      v9 = v7;
      v10 = [v6 safari_privacyPreservingDescription];
      v14 = 138740227;
      v15 = v8;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_1C6968000, v9, OS_LOG_TYPE_INFO, "Failed to resolve App Link for URL %{sensitive}@ with error %{public}@", &v14, 0x16u);
    }
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 12) = 1;
  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  *(v11 + 16) = v5;
  v13 = v5;

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  (*(*(a1 + 40) + 16))();
}

- (id)_synchronouslyFetchAppLinkWithError:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_ivarLock);
  v5 = self->_cachedAppLink;
  didResolveAppLink = self->_didResolveAppLink;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (didResolveAppLink)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E69635C0] appLinksWithURL:self->_url limit:1 error:a3];
    v7 = [v8 firstObject];

    if (!v7)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXUniversalLinks();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        url = self->_url;
        v11 = v9;
        v12 = [0 safari_privacyPreservingDescription];
        v14 = 138740227;
        v15 = url;
        v16 = 2114;
        v17 = v12;
        _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, "Failed to synchronously resolve App Link for URL %{sensitive}@ with error %{public}@", &v14, 0x16u);
      }
    }

    os_unfair_lock_lock(&self->_ivarLock);
    self->_didResolveAppLink = 1;
    objc_storeStrong(&self->_cachedAppLink, v7);
    os_unfair_lock_unlock(&self->_ivarLock);
    if (a3)
    {
      *a3 = 0;
    }
  }

  return v7;
}

- (int64_t)_openStrategyForAppLink:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  if ([v3 isEnabled])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = +[WBSAppLinkEphemeralDisabler defaultDisabler];
  v6 = [v5 shouldDisableAppLink:v3];

  if (v6)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (void)_appLink:(id)a3 getAppLinkLabel:(id *)a4 name:(id *)a5 bundleIdentifier:(id *)a6 icon:(id *)a7
{
  v49[1] = *MEMORY[0x1E69E9840];
  v12 = [a3 targetApplicationProxy];
  v13 = [v12 bundleIdentifier];
  if ([MEMORY[0x1E696AAE8] safari_isICloudAppWithBundleIdentifier:v13])
  {
    v14 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:*MEMORY[0x1E69C8DA0]];

    v12 = v14;
  }

  if (!(a4 | a5))
  {
    v15 = 0;
    v16 = 0;
LABEL_11:
    if (!a7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = [v12 localizedName];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15];
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v16 = 0;
  if (a5)
  {
LABEL_6:
    v17 = v15;
    *a5 = v15;
  }

LABEL_7:
  if (!a4)
  {
    goto LABEL_11;
  }

  v18 = [v12 itemName];
  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v18];
    *a4 = v19;
  }

  else
  {
    v35 = v16;
    *a4 = v16;
  }

  if (a7)
  {
LABEL_12:
    *a7 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v12 format:0];
  }

LABEL_13:
  if (a6)
  {
    v20 = v13;
    *a6 = v13;
  }

  if (a4 && [(WBSAppLink *)self _isApplicationProxyAppleNews:v12])
  {
    if (shouldShowAlternateNewsUniversalLinksFormatting_onceToken != -1)
    {
      [WBSAppLink _appLink:getAppLinkLabel:name:bundleIdentifier:icon:];
    }

    if (shouldShowAlternateNewsUniversalLinksFormatting_shouldShowAlternateNewsUniversalLinksFormatting == 1)
    {
      v43 = _WBSLocalizedString();
      v41 = _WBSLocalizedString();
      v42 = [MEMORY[0x1E69DB880] safari_preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
      v39 = [v42 fontDescriptorWithSymbolicTraits:2];
      v48 = *MEMORY[0x1E6965708];
      v49[0] = *MEMORY[0x1E6965730];
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v40 = [v42 fontDescriptorByAddingAttributes:v21];

      v22 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v37 = [v22 fontWithDescriptor:v40 size:?];
      v23 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v38 = [v23 fontWithDescriptor:v39 size:?];
      v24 = objc_alloc(MEMORY[0x1E696AD40]);
      v46 = *MEMORY[0x1E69DB648];
      v25 = v46;
      v47 = v38;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v36 = [v24 initWithString:v43 attributes:v26];

      v27 = objc_alloc(MEMORY[0x1E696AD40]);
      v44 = v25;
      v45 = v37;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v29 = [v27 initWithString:v41 attributes:v28];

      v30 = [v41 rangeOfString:@"+"];
      [v29 addAttribute:v25 value:v38 range:{v30, v31}];
      v32 = [v43 rangeOfString:@"{apple-news-plus-placeholder}"];
      [v36 replaceCharactersInRange:v32 withAttributedString:{v33, v29}];

      v34 = v36;
      *a4 = v36;
    }
  }
}

- (BOOL)_isApplicationProxyAppleNews:(id)a3
{
  v3 = [a3 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.news"];

  return v4;
}

- (void)updateURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  url = self->_url;
  self->_url = v4;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)disableTemporarily
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = +[WBSAppLinkEphemeralDisabler defaultDisabler];
  [v3 disableAppLink:self->_cachedAppLink];

  os_unfair_lock_unlock(&self->_ivarLock);
}

void __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_1C6968000, v4, v5, "Unable to set App Link policy for URL %{sensitive}@ with error %{public}@", v6, v7, v8, v9, v10);
}

void __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v3 = 138739971;
  v4 = v2;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Unable to externally open App Link for URL %{sensitive}@ due to resolution failure", &v3, 0xCu);
}

void __78__WBSAppLink_openExternallyWithWebBrowserState_referrerURL_completionHandler___block_invoke_4_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_1C6968000, v4, v5, "Unable to externally open App Link for URL %{sensitive}@ with error %{public}@", v6, v7, v8, v9, v10);
}

void __43__WBSAppLink_disableWithCompletionHandler___block_invoke_cold_2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_1C6968000, v4, v5, "Unable to open URL '%{sensitive}@' in Safari because no LSAppLink was found: %{public}@", v6, v7, v8, v9, v10);
}

@end