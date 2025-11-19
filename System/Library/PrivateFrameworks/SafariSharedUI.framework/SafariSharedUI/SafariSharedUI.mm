id defaultTranslationPreferenceValues()
{
  v4[19] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C96D8];
  v3[0] = @"WBSTranslationEnabledSettingsKey";
  v3[1] = v0;
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = MEMORY[0x1E695E118];
  v3[2] = @"WBSTranslationUseTranslationAPIsSettingsKey";
  v3[3] = @"WBSTranslationForceOnlineTranslationSettingsKey";
  v4[2] = MEMORY[0x1E695E118];
  v4[3] = MEMORY[0x1E695E118];
  v3[4] = @"WBSTranslationSetWebpageTranslationTaskSettingsKey";
  v3[5] = @"WBSTranslationEnableContinuedTranslationSettingsKey";
  v4[4] = MEMORY[0x1E695E118];
  v4[5] = MEMORY[0x1E695E118];
  v3[6] = @"WBSTranslationLowErrorAlertThresholdSettingsKey";
  v3[7] = @"WBSTranslationHideInternalTapToRadarActionSettingsKey";
  v4[6] = MEMORY[0x1E695E110];
  v4[7] = MEMORY[0x1E695E110];
  v3[8] = @"WBSTranslationHideMessageInUnifiedFieldSettingsKey";
  v3[9] = @"WBSTranslationConsentedToFirstTimeAlertSettingsKey";
  v4[8] = MEMORY[0x1E695E110];
  v4[9] = MEMORY[0x1E695E110];
  v3[10] = @"WBSTranslationDebugAlwaysShowConsentAlertSettingsKey";
  v3[11] = @"WBSTranslationDebugDelayLanguageDetectionSettingsKey";
  v4[10] = MEMORY[0x1E695E110];
  v4[11] = MEMORY[0x1E695E110];
  v3[12] = @"WBSTranslationTargetLanguageEnglishSettingsKey";
  v3[13] = @"WBSTranslationTargetLanguageSpanishSettingsKey";
  v4[12] = MEMORY[0x1E695E118];
  v4[13] = MEMORY[0x1E695E110];
  v3[14] = @"WBSTranslationTargetLanguageFrenchSettingsKey";
  v3[15] = @"WBSTranslationTargetLanguageGermanSettingsKey";
  v4[14] = MEMORY[0x1E695E110];
  v4[15] = MEMORY[0x1E695E110];
  v3[16] = @"WBSTranslationTargetLanguageRussianSettingsKey";
  v3[17] = @"WBSTranslationTargetLanguageChineseSettingsKey";
  v4[16] = MEMORY[0x1E695E110];
  v4[17] = MEMORY[0x1E695E110];
  v3[18] = @"WBSTranslationTargetLanguagePortugeseSettingsKey";
  v4[18] = MEMORY[0x1E695E110];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:19];

  return v1;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPrivacyProxy()
{
  if (WBS_LOG_CHANNEL_PREFIXPrivacyProxy_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPrivacyProxy_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPrivacyProxy_log;
}

Class __getPrivacyProxyClientClass_block_invoke(uint64_t a1)
{
  if (!NetworkServiceProxyLibraryCore_frameworkLibrary)
  {
    NetworkServiceProxyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("PrivacyProxyClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPrivacyProxyClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__2(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__24(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__30(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getPrivacyProxyClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPrivacyProxyClientClass_softClass;
  v7 = getPrivacyProxyClientClass_softClass;
  if (!getPrivacyProxyClientClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPrivacyProxyClientClass_block_invoke;
    v3[3] = &unk_1E8283D08;
    v3[4] = &v4;
    __getPrivacyProxyClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C696BDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__24(uint64_t a1)
{
}

{
}

void sub_1C696C460(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));

  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXSiteMetadata()
{
  if (WBS_LOG_CHANNEL_PREFIXSiteMetadata_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSiteMetadata_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSiteMetadata_log;
}

void sub_1C696D018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C696D110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id WBSSearchProviderBaiduTrackingCodeTemplateParameterValues(int a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v1 = @"1099b";
  if (a1)
  {
    v1 = @"1000539d";
  }

  v6[0] = @"baiduTrackingCodeiPhone";
  v6[1] = @"baiduTrackingCodeiPad";
  v2 = @"84053098_1_dg";
  if (a1)
  {
    v2 = @"84053098_4_dg";
  }

  v7[0] = v1;
  v7[1] = v2;
  v6[2] = @"baiduTrackingCodeMac";
  v3 = @"84053098_dg";
  if (a1)
  {
    v3 = @"84053098_3_dg";
  }

  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

id WBSSearchProviderDefinitions()
{
  if (WBSSearchProviderDefinitions_onceToken != -1)
  {
    WBSSearchProviderDefinitions_cold_1();
  }

  v1 = WBSSearchProviderDefinitions_definitions;

  return v1;
}

uint64_t WBS_LOG_CHANNEL_PREFIXFaviconProvider()
{
  if (WBS_LOG_CHANNEL_PREFIXFaviconProvider_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXFaviconProvider_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXFaviconProvider_log;
}

void __WBSSearchProviderDefinitions_block_invoke()
{
  v83 = *MEMORY[0x1E69E9840];
  v37 = _WBSSearchProviderDefinitionGoogle();
  v38[0] = v37;
  v39 = @"CarrierInfoTemplate";
  v40 = @"HomepageURLs";
  v61 = @"&pcarrier={carrierName}&pmcc={carrierCountryCode}&pmnc={carrierNetworkCode}";
  v62 = &unk_1F466D268;
  v41 = @"HostSuffixes";
  v42 = @"Language";
  v63 = &unk_1F466D280;
  v64 = &unk_1F466D298;
  v43 = @"LocalizedName";
  v0 = _WBSLocalizedString();
  v1 = *MEMORY[0x1E69C94C0];
  v65 = v0;
  v66 = v1;
  v44 = @"ParsecSearchIdentifier";
  v45 = @"ParsecSearchSuggestionIdentifier";
  v67 = *MEMORY[0x1E69C94B8];
  v68 = &unk_1F466CC60;
  v46 = @"ParsecSearchEndpointType";
  v47 = @"ParsecSearchResultType";
  v69 = &unk_1F466CC78;
  v70 = &unk_1F466D2B0;
  v48 = @"PathPrefixes";
  v49 = @"SafeSearchSuffix";
  v71 = @"&vm=r";
  v72 = &unk_1F466D7B0;
  v50 = @"SafeSearchURLQueryParameters";
  v51 = @"SafeSearchURLTemplateMac";
  v73 = @"https://search.yahoo.co.jp/search?p={searchTerms}&ei=UTF-8&fr=appsfch2&vm=r";
  v74 = @"Yahoo";
  v52 = @"ScriptingName";
  v53 = @"SearchEngineID";
  v75 = &unk_1F466CCA8;
  v76 = @"jp.co.yahoo.www";
  v54 = @"SearchEngineIdentifier";
  v55 = @"SearchURLTemplate";
  v77 = @"https://search.yahoo.co.jp/search?p={searchTerms}&ei=UTF-8&fr=applep1";
  v78 = @"https://search.yahoo.co.jp/search?p={searchTerms}&ei=UTF-8&fr=applpd";
  v56 = @"SearchURLTemplateIPad";
  v57 = @"SearchURLTemplateMac";
  v79 = @"https://search.yahoo.co.jp/search?p={searchTerms}&ei=UTF-8&fr=appsfch2";
  v80 = @"Yahoo!";
  v58 = @"ShortName";
  v59 = @"SuggestionsURLTemplate";
  v60 = @"SuggestionsURLTemplateMac";
  v81 = @"https://search.yahooapis.jp/AssistSearchService/V2/webassistSearch?p={searchTerms}&appid=oQsoxcyxg66enp0TYoirkKoryq6rF8bK76mW0KYxZ0v0WPLtn.Lix6wy8F_LwGWHUII-";
  v82 = @"https://search.yahooapis.jp/AssistSearchService/V2/webassistSearch?p={searchTerms}&appid=oQsoxcyxg66enp0TYoirkKoryq6rF8bK76mW0KYxZ0v0WPLtn.Lix6wy8F_LwGWHUII-";
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:22];

  v38[1] = v36;
  v35 = _WBSSearchProviderDefinitionYahoo();
  v38[2] = v35;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D0A0;
  v62 = &unk_1F466D0B8;
  v41 = @"LocalizedName";
  v2 = _WBSLocalizedString();
  v3 = *MEMORY[0x1E69C9450];
  v63 = v2;
  v64 = v3;
  v42 = @"ParsecSearchIdentifier";
  v43 = @"ParsecSearchSuggestionIdentifier";
  v65 = *MEMORY[0x1E69C9448];
  v66 = &unk_1F466CAB0;
  v44 = @"ParsecSearchEndpointType";
  v45 = @"ParsecSearchResultType";
  v67 = &unk_1F466CAC8;
  v68 = &unk_1F466D0D0;
  v46 = @"PathPrefixes";
  v47 = @"SafeSearchSuffix";
  v69 = @"&adlt=strict";
  v70 = &unk_1F466D6E8;
  v48 = @"SafeSearchURLQueryParameters";
  v49 = @"SafeSearchURLTemplateMac";
  v71 = @"https://www.bing.com/search?q={searchTerms}&form=APMCS1&PC=APMC&adlt=strict";
  v72 = @"Bing";
  v50 = @"ScriptingName";
  v51 = @"SearchEngineID";
  v73 = &unk_1F466CAE0;
  v74 = @"com.bing.www";
  v52 = @"SearchEngineIdentifier";
  v53 = @"SearchURLTemplate";
  v75 = @"https://www.bing.com/search?q={searchTerms}&form=APIPH1&PC=APPL";
  v76 = @"https://www.bing.com/search?q={searchTerms}&form=APIPA1&PC=APPD";
  v54 = @"SearchURLTemplateIPad";
  v55 = @"SearchURLTemplateMac";
  v77 = @"https://www.bing.com/search?q={searchTerms}&form=APMCS1&PC=APMC";
  v78 = @"Bing";
  v56 = @"ShortName";
  v57 = @"SuggestionsURLTemplate";
  v79 = @"https://www.bing.com/asjson.aspx?query={searchTerms}&form=APIPH2&PC=APPL";
  v80 = @"https://www.bing.com/asjson.aspx?query={searchTerms}&form=APIPA2&PC=APPD";
  v58 = @"SuggestionsURLTemplateIPad";
  v59 = @"SuggestionsURLTemplateMac";
  v81 = @"https://www.bing.com/asjson.aspx?query={searchTerms}&form=APMCS2&PC=APMC";
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:21];

  v38[3] = v34;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D058;
  v62 = &unk_1F466D070;
  v41 = @"LocalizedName";
  v4 = _WBSLocalizedString();
  v5 = *MEMORY[0x1E69C9440];
  v63 = v4;
  v64 = v5;
  v42 = @"ParsecSearchIdentifier";
  v43 = @"ParsecSearchSuggestionIdentifier";
  v65 = *MEMORY[0x1E69C9438];
  v66 = &unk_1F466CA68;
  v44 = @"ParsecSearchEndpointType";
  v45 = @"ParsecSearchResultType";
  v67 = &unk_1F466CA80;
  v68 = &unk_1F466D088;
  v46 = @"PathPrefixes";
  v47 = @"ScriptingName";
  v69 = @"Baidu";
  v70 = &unk_1F466CA98;
  v48 = @"SearchEngineID";
  v49 = @"SearchEngineIdentifier";
  v71 = @"com.baidu.www";
  v50 = @"SearchURLTemplate";
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://m.baidu.com/s?from={%@}&word={searchTerms}", @"baiduTrackingCodeiPhone"];
  v72 = v6;
  v51 = @"SearchURLTemplateIPad";
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://www.baidu.com/s?ie=utf-8&wd={searchTerms}&tn={%@}", @"baiduTrackingCodeiPad"];
  v73 = v7;
  v52 = @"SearchURLTemplateMac";
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://www.baidu.com/s?wd={searchTerms}&tn={%@}&ie=utf-8", @"baiduTrackingCodeMac"];
  v74 = v8;
  v75 = @"Baidu";
  v53 = @"ShortName";
  v54 = @"SuggestionsURLTemplate";
  v76 = @"https://m.baidu.com/su?&from=wise_web&action=opensearch&ie=utf-8&wd={searchTerms}";
  v77 = @"https://www.baidu.com/su?&action=opensearch&ie=utf-8&wd={searchTerms}";
  v55 = @"SuggestionsURLTemplateIPad";
  v56 = @"SuggestionsURLTemplateMac";
  v78 = @"https://www.baidu.com/su?&action=opensearch&ie=utf-8&wd={searchTerms}";
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:18];

  v38[4] = v33;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D3D0;
  v62 = &unk_1F466D3E8;
  v41 = @"LocalizedName";
  v9 = _WBSLocalizedString();
  v10 = *MEMORY[0x1E69C9490];
  v63 = v9;
  v64 = v10;
  v42 = @"ParsecSearchIdentifier";
  v43 = @"ParsecSearchSuggestionIdentifier";
  v65 = v10;
  v66 = &unk_1F466CCC0;
  v44 = @"ParsecSearchEndpointType";
  v45 = @"ParsecSearchResultType";
  v67 = &unk_1F466CCD8;
  v68 = &unk_1F466D400;
  v46 = @"PathPrefixes";
  v47 = @"SafeSearchSuffix";
  v69 = @"&fyandex=1";
  v70 = &unk_1F466D850;
  v48 = @"SafeSearchURLQueryParameters";
  v49 = @"SafeSearchURLTemplateMac";
  v71 = @"https://yandex.ru/search?clid=1906725&text={searchTerms}&fyandex=1";
  v72 = @"Yandex";
  v50 = @"ScriptingName";
  v51 = @"SearchEngineID";
  v73 = &unk_1F466CD38;
  v74 = @"ru.yandex.www";
  v52 = @"SearchEngineIdentifier";
  v53 = @"SearchURLTemplate";
  v75 = @"https://yandex.ru/search/touch/?clid=1906591&text={searchTerms}";
  v76 = @"https://yandex.ru/search/pad/?clid=1906723&text={searchTerms}";
  v54 = @"SearchURLTemplateIPad";
  v77 = @"https://yandex.ru/search?clid=1906725&text={searchTerms}";
  v78 = @"Yandex";
  v55 = @"SearchURLTemplateMac";
  v56 = @"ShortName";
  v79 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_iphone&uil=ru&mob=1&part={searchTerms}";
  v80 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_ipad&uil=ru&mob=1&part={searchTerms}";
  v57 = @"SuggestionsURLTemplate";
  v58 = @"SuggestionsURLTemplateIPad";
  v59 = @"SuggestionsURLTemplateMac";
  v60 = @"UserRegions";
  v81 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari&part={searchTerms}";
  v82 = &unk_1F466D418;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:22];

  v38[5] = v32;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D430;
  v62 = &unk_1F466D448;
  v41 = @"LocalizedName";
  v11 = _WBSLocalizedString();
  v63 = v11;
  v64 = v10;
  v42 = @"ParsecSearchIdentifier";
  v43 = @"ParsecSearchSuggestionIdentifier";
  v65 = v10;
  v66 = &unk_1F466CCC0;
  v44 = @"ParsecSearchEndpointType";
  v45 = @"ParsecSearchResultType";
  v67 = &unk_1F466CCD8;
  v68 = &unk_1F466D460;
  v46 = @"PathPrefixes";
  v47 = @"SafeSearchSuffix";
  v69 = @"&fyandex=1";
  v70 = &unk_1F466D878;
  v48 = @"SafeSearchURLQueryParameters";
  v49 = @"SafeSearchURLTemplateMac";
  v71 = @"https://yandex.com.tr/search?clid=1906725&text={searchTerms}&fyandex=1";
  v72 = @"Yandex";
  v50 = @"ScriptingName";
  v51 = @"SearchEngineID";
  v73 = &unk_1F466CD50;
  v74 = @"tr.com.yandex.www";
  v52 = @"SearchEngineIdentifier";
  v53 = @"SearchURLTemplate";
  v75 = @"https://yandex.com.tr/search/touch/?clid=1906591&text={searchTerms}";
  v76 = @"https://yandex.com.tr/search/pad/?clid=1906723&text={searchTerms}";
  v54 = @"SearchURLTemplateIPad";
  v55 = @"SearchURLTemplateMac";
  v77 = @"https://yandex.com.tr/search?clid=1906725&text={searchTerms}";
  v78 = @"Yandex";
  v56 = @"ShortName";
  v57 = @"SuggestionsURLTemplate";
  v79 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_iphone&uil=tr&mob=1&part={searchTerms}";
  v80 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_ipad&uil=tr&mob=1&part={searchTerms}";
  v58 = @"SuggestionsURLTemplateIPad";
  v59 = @"SuggestionsURLTemplateMac";
  v60 = @"UserRegions";
  v81 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari&part={searchTerms}";
  v82 = &unk_1F466D478;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:22];

  v38[6] = v31;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D310;
  v62 = &unk_1F466D328;
  v41 = @"LocalizedName";
  v12 = _WBSLocalizedString();
  v63 = v12;
  v64 = v10;
  v42 = @"ParsecSearchIdentifier";
  v43 = @"ParsecSearchSuggestionIdentifier";
  v65 = v10;
  v66 = &unk_1F466CCC0;
  v44 = @"ParsecSearchEndpointType";
  v45 = @"ParsecSearchResultType";
  v67 = &unk_1F466CCD8;
  v68 = &unk_1F466D340;
  v46 = @"PathPrefixes";
  v47 = @"SafeSearchSuffix";
  v69 = @"&fyandex=1";
  v70 = &unk_1F466D800;
  v48 = @"SafeSearchURLQueryParameters";
  v49 = @"SafeSearchURLTemplateMac";
  v71 = @"https://yandex.by/search?clid=1906725&text={searchTerms}&fyandex=1";
  v72 = @"Yandex";
  v50 = @"ScriptingName";
  v51 = @"SearchEngineID";
  v73 = &unk_1F466CD08;
  v74 = @"by.yandex.www";
  v52 = @"SearchEngineIdentifier";
  v53 = @"SearchURLTemplate";
  v75 = @"https://yandex.by/search/touch/?clid=1906591&text={searchTerms}";
  v76 = @"https://yandex.by/search/pad/?clid=1906723&text={searchTerms}";
  v54 = @"SearchURLTemplateIPad";
  v55 = @"SearchURLTemplateMac";
  v77 = @"https://yandex.by/search?clid=1906725&text={searchTerms}";
  v78 = @"Yandex";
  v56 = @"ShortName";
  v57 = @"SuggestionsURLTemplate";
  v79 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_iphone&uil=be&mob=1&part={searchTerms}";
  v80 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_ipad&uil=be&mob=1&part={searchTerms}";
  v58 = @"SuggestionsURLTemplateIPad";
  v59 = @"SuggestionsURLTemplateMac";
  v60 = @"UserRegions";
  v81 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari&part={searchTerms}";
  v82 = &unk_1F466D358;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:22];

  v38[7] = v30;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D490;
  v62 = &unk_1F466D4A8;
  v41 = @"LocalizedName";
  v13 = _WBSLocalizedString();
  v63 = v13;
  v64 = v10;
  v42 = @"ParsecSearchIdentifier";
  v43 = @"ParsecSearchSuggestionIdentifier";
  v65 = v10;
  v66 = &unk_1F466CCC0;
  v44 = @"ParsecSearchEndpointType";
  v45 = @"ParsecSearchResultType";
  v67 = &unk_1F466CCD8;
  v68 = &unk_1F466D4C0;
  v46 = @"PathPrefixes";
  v47 = @"SafeSearchSuffix";
  v69 = @"&fyandex=1";
  v70 = &unk_1F466D8A0;
  v48 = @"SafeSearchURLQueryParameters";
  v49 = @"SafeSearchURLTemplateMac";
  v71 = @"https://yandex.ua/search?clid=1906725&text={searchTerms}&fyandex=1";
  v72 = @"Yandex";
  v50 = @"ScriptingName";
  v51 = @"SearchEngineID";
  v73 = &unk_1F466CD68;
  v74 = @"ua.yandex.www";
  v52 = @"SearchEngineIdentifier";
  v53 = @"SearchURLTemplate";
  v75 = @"https://yandex.ua/search/touch/?clid=1906591&text={searchTerms}";
  v76 = @"https://yandex.ua/search/pad/?clid=1906723&text={searchTerms}";
  v54 = @"SearchURLTemplateIPad";
  v55 = @"SearchURLTemplateMac";
  v77 = @"https://yandex.ua/search?clid=1906725&text={searchTerms}";
  v78 = @"Yandex";
  v56 = @"ShortName";
  v57 = @"SuggestionsURLTemplate";
  v79 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_iphone&uil=ua&mob=1&part={searchTerms}";
  v80 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_ipad&uil=ua&mob=1&part={searchTerms}";
  v58 = @"SuggestionsURLTemplateIPad";
  v59 = @"SuggestionsURLTemplateMac";
  v60 = @"UserRegions";
  v81 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari&part={searchTerms}";
  v82 = &unk_1F466D4D8;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:22];

  v38[8] = v29;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D370;
  v62 = &unk_1F466D388;
  v41 = @"LocalizedName";
  v14 = _WBSLocalizedString();
  v63 = v14;
  v64 = v10;
  v42 = @"ParsecSearchIdentifier";
  v43 = @"ParsecSearchSuggestionIdentifier";
  v65 = v10;
  v66 = &unk_1F466CCC0;
  v44 = @"ParsecSearchEndpointType";
  v45 = @"ParsecSearchResultType";
  v67 = &unk_1F466CCD8;
  v68 = &unk_1F466D3A0;
  v46 = @"PathPrefixes";
  v47 = @"SafeSearchSuffix";
  v69 = @"&fyandex=1";
  v70 = &unk_1F466D828;
  v48 = @"SafeSearchURLQueryParameters";
  v49 = @"SafeSearchURLTemplateMac";
  v71 = @"https://yandex.kz/search?clid=1906725&text={searchTerms}&fyandex=1";
  v72 = @"Yandex";
  v50 = @"ScriptingName";
  v51 = @"SearchEngineID";
  v73 = &unk_1F466CD20;
  v74 = @"kz.yandex.www";
  v52 = @"SearchEngineIdentifier";
  v53 = @"SearchURLTemplate";
  v75 = @"https://yandex.kz/search/touch/?clid=1906591&text={searchTerms}";
  v76 = @"https://yandex.kz/search/pad/?clid=1906723&text={searchTerms}";
  v54 = @"SearchURLTemplateIPad";
  v55 = @"SearchURLTemplateMac";
  v77 = @"https://yandex.kz/search?clid=1906725&text={searchTerms}";
  v78 = @"Yandex";
  v56 = @"ShortName";
  v57 = @"SuggestionsURLTemplate";
  v79 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_iphone&uil=kk&mob=1&part={searchTerms}";
  v80 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_ipad&uil=kk&mob=1&part={searchTerms}";
  v58 = @"SuggestionsURLTemplateIPad";
  v59 = @"SuggestionsURLTemplateMac";
  v60 = @"UserRegions";
  v81 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari&part={searchTerms}";
  v82 = &unk_1F466D3B8;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:22];

  v38[9] = v28;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D2C8;
  v62 = &unk_1F466D2E0;
  v41 = @"LocalizedName";
  v15 = _WBSLocalizedString();
  v63 = v15;
  v64 = v10;
  v42 = @"ParsecSearchIdentifier";
  v43 = @"ParsecSearchSuggestionIdentifier";
  v65 = v10;
  v66 = &unk_1F466CCC0;
  v44 = @"ParsecSearchEndpointType";
  v45 = @"ParsecSearchResultType";
  v67 = &unk_1F466CCD8;
  v68 = &unk_1F466D2F8;
  v46 = @"PathPrefixes";
  v47 = @"SafeSearchSuffix";
  v69 = @"&fyandex=1";
  v70 = &unk_1F466D7D8;
  v48 = @"SafeSearchURLQueryParameters";
  v49 = @"SafeSearchURLTemplateMac";
  v71 = @"https://yandex.com/search?clid=1906725&text={searchTerms}&fyandex=1";
  v72 = @"Yandex";
  v50 = @"ScriptingName";
  v51 = @"SearchEngineID";
  v73 = &unk_1F466CCF0;
  v74 = @"com.yandex.www";
  v52 = @"SearchEngineIdentifier";
  v53 = @"SearchURLTemplate";
  v75 = @"https://yandex.com/search/touch/?clid=1906591&text={searchTerms}";
  v76 = @"https://yandex.com/search/pad/?clid=1906723&text={searchTerms}";
  v54 = @"SearchURLTemplateIPad";
  v55 = @"SearchURLTemplateMac";
  v77 = @"https://yandex.com/search?clid=1906725&text={searchTerms}";
  v78 = @"Yandex";
  v56 = @"ShortName";
  v57 = @"SuggestionsURLTemplate";
  v79 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_iphone&uil=en&mob=1&part={searchTerms}";
  v80 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari_ipad&uil=en&mob=1&part={searchTerms}";
  v58 = @"SuggestionsURLTemplateIPad";
  v59 = @"SuggestionsURLTemplateMac";
  v81 = @"https://suggest.yandex.net/suggest-ff.cgi?srv=safari&part={searchTerms}";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:21];

  v38[10] = v27;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D0E8;
  v62 = &unk_1F466D100;
  v16 = *MEMORY[0x1E69C9460];
  v63 = *MEMORY[0x1E69C9468];
  v64 = v16;
  v65 = &unk_1F466CAF8;
  v66 = &unk_1F466CB10;
  v41 = @"ParsecSearchIdentifier";
  v42 = @"ParsecSearchSuggestionIdentifier";
  v45 = @"GroupIdentifierQueryStringKey";
  v46 = @"PathPrefixes";
  v43 = @"ParsecSearchEndpointType";
  v44 = @"ParsecSearchResultType";
  v67 = @"anon_safari_group";
  v68 = &unk_1F466D118;
  v47 = @"SafeSearchSuffix";
  v48 = @"SafeSearchURLQueryParameters";
  v69 = @"&kp=1";
  v70 = &unk_1F466D710;
  v49 = @"SafeSearchURLTemplateMac";
  v50 = @"ScriptingName";
  v71 = @"https://duckduckgo.com/?q={searchTerms}&t=osx&kp=1";
  v72 = @"DuckDuckGo";
  v51 = @"SearchEngineID";
  v52 = @"SearchEngineIdentifier";
  v73 = &unk_1F466CB28;
  v74 = @"com.duckduckgo";
  v53 = @"SearchURLTemplate";
  v54 = @"SearchURLTemplateIPad";
  v75 = @"https://duckduckgo.com/?q={searchTerms}&t=iphone";
  v76 = @"https://duckduckgo.com/?q={searchTerms}&t=ipad";
  v55 = @"SearchURLTemplateMac";
  v56 = @"ShortName";
  v77 = @"https://duckduckgo.com/?q={searchTerms}&t=osx";
  v78 = @"DuckDuckGo";
  v57 = @"SuggestionsURLTemplate";
  v58 = @"SuggestionsURLTemplateMac";
  v79 = @"https://duckduckgo.com/ac/?q={searchTerms}&type=list";
  v80 = @"https://duckduckgo.com/ac/?q={searchTerms}&type=list";
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:20];
  v38[11] = v26;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D1F0;
  v62 = &unk_1F466D208;
  v41 = @"LocalizedName";
  v17 = _WBSLocalizedString();
  v18 = *MEMORY[0x1E69C94B0];
  v63 = v17;
  v64 = v18;
  v42 = @"ParsecSearchIdentifier";
  v43 = @"ParsecSearchSuggestionIdentifier";
  v65 = *MEMORY[0x1E69C94A8];
  v66 = &unk_1F466CC18;
  v44 = @"ParsecSearchEndpointType";
  v45 = @"ParsecSearchResultType";
  v67 = &unk_1F466CC30;
  v68 = @"Sogou";
  v46 = @"ScriptingName";
  v47 = @"SearchEngineID";
  v69 = &unk_1F466CC48;
  v70 = @"com.sogou.www";
  v48 = @"SearchEngineIdentifier";
  v49 = @"SearchURLTemplate";
  v71 = @"https://m.sogou.com/web/sl?keyword={searchTerms}&v=5";
  v72 = @"https://www.sogou.com/web?query={searchTerms}&ie=utf8";
  v50 = @"SearchURLTemplateIPad";
  v51 = @"SearchURLTemplateMac";
  v73 = @"https://www.sogou.com/web?query={searchTerms}&ie=utf8";
  v74 = @"Sogou";
  v52 = @"ShortName";
  v53 = @"SuggestionsURLTemplate";
  v75 = @"https://m.sogou.com/sugg_json?type=addrbar&pr=web&key={searchTerms}&ofr=json&ie=utf-8";
  v76 = @"https://www.sogou.com/sugg_json?type=addrbar&pr=web&key={searchTerms}&ofr=json&ie=utf-8";
  v54 = @"SuggestionsURLTemplateIPad";
  v55 = @"SuggestionsURLTemplateMac";
  v77 = @"https://www.sogou.com/sugg_json?type=addrbar&pr=web&key={searchTerms}&ofr=json&ie=utf-8";
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:17];

  v38[12] = v19;
  v39 = @"HomepageURLs";
  v40 = @"HostSuffixes";
  v61 = &unk_1F466D1C0;
  v62 = &unk_1F466D1D8;
  v41 = @"LocalizedName";
  v20 = _WBSLocalizedString();
  v21 = *MEMORY[0x1E69C94A0];
  v63 = v20;
  v64 = v21;
  v42 = @"ParsecSearchIdentifier";
  v43 = @"ParsecSearchSuggestionIdentifier";
  v65 = *MEMORY[0x1E69C9498];
  v66 = &unk_1F466CBD0;
  v44 = @"ParsecSearchEndpointType";
  v45 = @"ParsecSearchResultType";
  v67 = &unk_1F466CBE8;
  v68 = @"Qihoo";
  v46 = @"ScriptingName";
  v47 = @"SearchEngineID";
  v69 = &unk_1F466CC00;
  v70 = @"com.qihoo.www";
  v48 = @"SearchEngineIdentifier";
  v49 = @"SearchURLTemplate";
  v71 = @"https://m.so.com/s?q={searchTerms}&src=home&srcg=safariwap_1";
  v72 = @"https://m.so.com/s?q={searchTerms}&src=home&srcg=safariwap_1";
  v50 = @"SearchURLTemplateIPad";
  v51 = @"SearchURLTemplateMac";
  v73 = @"https://www.so.com/s?q={searchTerms}&src=pclm&ls=safarimac";
  v74 = @"Qihoo";
  v52 = @"ShortName";
  v53 = @"SuggestionsURLTemplate";
  v54 = @"SuggestionsURLTemplateMac";
  v75 = @"https://m.sug.so.com/suggest?word={searchTerms}&encodein=utf-8&encodeout=utf-8&format=opensearch&srcg=safariwap_1";
  v76 = @"https://sug.so.360.cn/suggest?word={searchTerms}&encodein=utf-8&encodeout=utf-8&format=opensearch&srcg=safarimac";
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v39 count:16];

  v38[13] = v22;
  v23 = _WBSSearchProviderDefinitionEcosia();
  v38[14] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:15];
  v25 = WBSSearchProviderDefinitions_definitions;
  WBSSearchProviderDefinitions_definitions = v24;
}

id _WBSSearchProviderDefinitionGoogle()
{
  v8[23] = *MEMORY[0x1E69E9840];
  v7[0] = @"HomepageURLs";
  v7[1] = @"HostSuffixes";
  v8[0] = &unk_1F466D178;
  v8[1] = &unk_1F466D190;
  v7[2] = @"LocalizedName";
  v0 = _WBSLocalizedString();
  v1 = *MEMORY[0x1E69C9488];
  v8[2] = v0;
  v8[3] = v1;
  v7[3] = @"ParsecSearchIdentifier";
  v7[4] = @"ParsecSearchSuggestionIdentifier";
  v8[4] = *MEMORY[0x1E69C9480];
  v8[5] = &unk_1F466CB88;
  v7[5] = @"ParsecSearchEndpointType";
  v7[6] = @"ParsecSearchResultType";
  v8[6] = &unk_1F466CBA0;
  v8[7] = @"channel";
  v7[7] = @"GroupIdentifierQueryStringKey";
  v7[8] = @"PathPrefixes";
  v8[8] = &unk_1F466D1A8;
  v8[9] = @"&safe=active";
  v7[9] = @"SafeSearchSuffix";
  v7[10] = @"SafeSearchURLQueryParameters";
  v8[10] = &unk_1F466D760;
  v8[11] = @"https://www.google.com/search?client=safari&rls=en&q={searchTerms}&ie=UTF-8&oe=UTF-8&safe=active";
  v7[11] = @"SafeSearchURLTemplateMac";
  v7[12] = @"ScriptingName";
  v8[12] = @"Google";
  v8[13] = &unk_1F466CBB8;
  v7[13] = @"SearchEngineID";
  v7[14] = @"SearchEngineIdentifier";
  v8[14] = @"com.google.www";
  v8[15] = @"https://www.google.{topLevelDomain}/search?q={searchTerms}&ie=UTF-8&oe=UTF-8&hl={languageCode}&client=safari";
  v7[15] = @"SearchURLTemplate";
  v7[16] = @"SearchURLTemplateChina";
  v8[16] = @"http://www.google.{topLevelDomain}/search?q={searchTerms}&ie=UTF-8&oe=UTF-8&hl={languageCode}&client=safari";
  v8[17] = @"https://www.google.com/search?client=safari&rls=en&q={searchTerms}&ie=UTF-8&oe=UTF-8";
  v7[17] = @"SearchURLTemplateMac";
  v7[18] = @"SuggestionsURLTemplate";
  v8[18] = @"https://clients1.google.com/complete/search?json=t&nolabels=t&client=iphonesafari&q={searchTerms}";
  v8[19] = @"https://clients1.google.com/complete/search?client=safari&q={searchTerms}";
  v7[19] = @"SuggestionsURLTemplateMac";
  v7[20] = @"ShortName";
  v8[20] = @"Google";
  v7[21] = @"TopLevelDomains";
  v5[0] = &stru_1F4646D10;
  v5[1] = @"CN";
  v6[0] = @"com";
  v6[1] = @"cn";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v7[22] = @"UsesSearchTermsFromFragment";
  v8[21] = v2;
  v8[22] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:23];

  return v3;
}

id _WBSSearchProviderDefinitionYahoo()
{
  v8[24] = *MEMORY[0x1E69E9840];
  v7[0] = @"CarrierInfoTemplate";
  v7[1] = @"HomepageURLs";
  v8[0] = @"&pcarrier={carrierName}&pmcc={carrierCountryCode}&pmnc={carrierNetworkCode}";
  v8[1] = &unk_1F466D220;
  v8[2] = &unk_1F466D238;
  v7[2] = @"HostSuffixes";
  v7[3] = @"LocalizedName";
  v0 = _WBSLocalizedString();
  v1 = *MEMORY[0x1E69C94C0];
  v8[3] = v0;
  v8[4] = v1;
  v7[4] = @"ParsecSearchIdentifier";
  v7[5] = @"ParsecSearchSuggestionIdentifier";
  v8[5] = *MEMORY[0x1E69C94B8];
  v8[6] = &unk_1F466CC60;
  v7[6] = @"ParsecSearchEndpointType";
  v7[7] = @"ParsecSearchResultType";
  v8[7] = &unk_1F466CC78;
  v8[8] = @"safari_group";
  v7[8] = @"GroupIdentifierQueryStringKey";
  v7[9] = @"PathPrefixes";
  v8[9] = &unk_1F466D250;
  v8[10] = @"&vm=r";
  v7[10] = @"SafeSearchSuffix";
  v7[11] = @"SafeSearchURLQueryParameters";
  v8[11] = &unk_1F466D788;
  v8[12] = @"https://search.yahoo.com/search?ei=utf-8&fr=aaplw&p={searchTerms}&vm=r";
  v7[12] = @"SafeSearchURLTemplateMac";
  v7[13] = @"ScriptingName";
  v8[13] = @"Yahoo";
  v8[14] = &unk_1F466CC90;
  v7[14] = @"SearchEngineID";
  v7[15] = @"SearchEngineIdentifier";
  v8[15] = @"com.yahoo.www";
  v8[16] = @"https://{topLevelDomain}search.yahoo.com/search?p={searchTerms}&fr=iphone&.tsrc=apple";
  v7[16] = @"SearchURLTemplate";
  v7[17] = @"SearchURLTemplateIPad";
  v8[17] = @"https://{topLevelDomain}search.yahoo.com/search?p={searchTerms}&fr=ipad";
  v8[18] = @"https://search.yahoo.com/search?ei=utf-8&fr=aaplw&p={searchTerms}";
  v7[18] = @"SearchURLTemplateMac";
  v7[19] = @"ShortName";
  v8[19] = @"Yahoo!";
  v8[20] = @"https://{topLevelDomain}search.yahoo.com/sugg/safari?command={searchTerms}&appid=safarim&output=fxjson";
  v7[20] = @"SuggestionsURLTemplate";
  v7[21] = @"SuggestionsURLTemplateIPad";
  v8[21] = @"https://{topLevelDomain}search.yahoo.com/sugg/safari?command={searchTerms}&appid=safarit&output=fxjson";
  v8[22] = @"https://search.yahoo.com/sugg/safari?command={searchTerms}&appid=safarid&output=fxjson";
  v7[22] = @"SuggestionsURLTemplateMac";
  v7[23] = @"TopLevelDomains";
  v5[0] = &stru_1F4646D10;
  v5[1] = @"AE";
  v6[0] = &stru_1F4646D10;
  v6[1] = @"xa.";
  v5[2] = @"AR";
  v5[3] = @"AS";
  v6[2] = @"ar.";
  v6[3] = @"as.";
  v5[4] = @"AT";
  v5[5] = @"AU";
  v6[4] = @"at.";
  v6[5] = @"au.";
  v5[6] = @"AZ";
  v5[7] = @"BE";
  v6[6] = @"az.";
  v6[7] = @"be.";
  v5[8] = @"BH";
  v5[9] = @"BI";
  v6[8] = @"xa.";
  v6[9] = @"bi.";
  v5[10] = @"BR";
  v5[11] = @"CA";
  v6[10] = @"br.";
  v6[11] = @"ca.";
  v5[12] = @"CD";
  v5[13] = @"CG";
  v6[12] = @"cd.";
  v6[13] = @"cg.";
  v5[14] = @"CH";
  v5[15] = @"CL";
  v6[14] = @"ch.";
  v6[15] = @"cl.";
  v5[16] = @"CN";
  v5[17] = @"CO";
  v6[16] = @"cn.";
  v6[17] = @"co.";
  v5[18] = @"CR";
  v5[19] = @"DE";
  v6[18] = @"cr.";
  v6[19] = @"de.";
  v5[20] = @"DJ";
  v5[21] = @"DK";
  v6[20] = @"xa.";
  v6[21] = @"dk.";
  v5[22] = @"DO";
  v5[23] = @"DZ";
  v6[22] = @"do.";
  v6[23] = @"xa.";
  v5[24] = @"EG";
  v5[25] = @"EH";
  v6[24] = @"xa.";
  v6[25] = @"xa.";
  v5[26] = @"ER";
  v5[27] = @"ES";
  v6[26] = @"xa.";
  v6[27] = @"es.";
  v5[28] = @"FI";
  v5[29] = @"FJ";
  v6[28] = @"fi.";
  v6[29] = @"fj.";
  v5[30] = @"FR";
  v5[31] = @"GB";
  v6[30] = @"fr.";
  v6[31] = @"uk.";
  v5[32] = @"GL";
  v5[33] = @"GM";
  v6[32] = @"gl.";
  v6[33] = @"gm.";
  v5[34] = @"GR";
  v5[35] = @"HK";
  v6[34] = @"gr.";
  v6[35] = @"hk.";
  v5[36] = @"HN";
  v5[37] = @"HU";
  v6[36] = @"hn.";
  v6[37] = @"hu.";
  v5[38] = @"ID";
  v5[39] = @"IE";
  v6[38] = @"id.";
  v6[39] = @"ie.";
  v5[40] = @"IN";
  v5[41] = @"IQ";
  v6[40] = @"in.";
  v6[41] = @"xa.";
  v5[42] = @"IT";
  v5[43] = @"JO";
  v6[42] = @"it.";
  v6[43] = @"xa.";
  v5[44] = @"JP";
  v5[45] = @"KM";
  v6[44] = @"jp.";
  v6[45] = @"xa.";
  v5[46] = @"KR";
  v5[47] = @"KW";
  v6[46] = @"kr.";
  v6[47] = @"xa.";
  v5[48] = @"KZ";
  v5[49] = @"LB";
  v6[48] = @"kz.";
  v6[49] = @"xa.";
  v5[50] = @"LI";
  v5[51] = @"LT";
  v6[50] = @"li.";
  v6[51] = @"lt.";
  v5[52] = @"LU";
  v5[53] = @"LV";
  v6[52] = @"lu.";
  v6[53] = @"lv.";
  v5[54] = @"LY";
  v5[55] = @"MA";
  v6[54] = @"xa.";
  v6[55] = @"xa.";
  v5[56] = @"MO";
  v5[57] = @"MR";
  v6[56] = @"hk.";
  v6[57] = @"xa.";
  v5[58] = @"MT";
  v5[59] = @"MU";
  v6[58] = @"mt.";
  v6[59] = @"mu.";
  v5[60] = @"MW";
  v5[61] = @"MX";
  v6[60] = @"mw.";
  v6[61] = @"mx.";
  v5[62] = @"MY";
  v5[63] = @"NI";
  v6[62] = @"my.";
  v6[63] = @"ni.";
  v5[64] = @"NL";
  v6[64] = @"nl.";
  v5[65] = @"NO";
  v6[65] = @"no.";
  v5[66] = @"NP";
  v6[66] = @"np.";
  v5[67] = @"NZ";
  v6[67] = @"nz.";
  v5[68] = @"OM";
  v6[68] = @"xa.";
  v5[69] = @"PA";
  v6[69] = @"pa.";
  v5[70] = @"PE";
  v6[70] = @"pe.";
  v5[71] = @"PH";
  v6[71] = @"ph.";
  v5[72] = @"PK";
  v6[72] = @"pk.";
  v5[73] = @"PL";
  v6[73] = @"pl.";
  v5[74] = @"PR";
  v6[74] = @"pr.";
  v5[75] = @"PS";
  v6[75] = @"xa.";
  v5[76] = @"PT";
  v6[76] = @"pt.";
  v5[77] = @"PY";
  v6[77] = @"py.";
  v5[78] = @"QS";
  v6[78] = @"xa.";
  v5[79] = @"RO";
  v6[79] = @"ro.";
  v5[80] = @"RU";
  v6[80] = @"ru.";
  v5[81] = @"RW";
  v6[81] = @"rw.";
  v5[82] = @"SA";
  v6[82] = @"xa.";
  v5[83] = @"SD";
  v6[83] = @"xa.";
  v5[84] = @"SE";
  v6[84] = @"se.";
  v5[85] = @"SG";
  v6[85] = @"sg.";
  v5[86] = @"SV";
  v6[86] = @"sv.";
  v5[87] = @"SY";
  v6[87] = @"xa.";
  v5[88] = @"TD";
  v6[88] = @"xa.";
  v5[89] = @"TH";
  v6[89] = @"th.";
  v5[90] = @"TN";
  v6[90] = @"xa.";
  v5[91] = @"TR";
  v6[91] = @"tr.";
  v5[92] = @"TW";
  v6[92] = @"tw.";
  v5[93] = @"UA";
  v6[93] = @"ua.";
  v5[94] = @"UY";
  v6[94] = @"uy.";
  v5[95] = @"UZ";
  v6[95] = @"uz.";
  v5[96] = @"VE";
  v6[96] = @"ve.";
  v5[97] = @"VN";
  v6[97] = @"vn.";
  v5[98] = @"YE";
  v6[98] = @"xa.";
  v5[99] = @"ZA";
  v6[99] = @"za.";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:100];
  v8[23] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:24];

  return v3;
}

id _WBSSearchProviderDefinitionEcosia()
{
  v5[20] = *MEMORY[0x1E69E9840];
  v4[0] = @"HomepageURLs";
  v4[1] = @"HostSuffixes";
  v5[0] = &unk_1F466D130;
  v5[1] = &unk_1F466D148;
  v0 = *MEMORY[0x1E69C9478];
  v4[2] = @"ParsecSearchIdentifier";
  v4[3] = @"ParsecSearchSuggestionIdentifier";
  v1 = *MEMORY[0x1E69C9470];
  v5[2] = v0;
  v5[3] = v1;
  v4[4] = @"ParsecSearchEndpointType";
  v4[5] = @"ParsecSearchResultType";
  v5[4] = &unk_1F466CB40;
  v5[5] = &unk_1F466CB58;
  v4[6] = @"PathPrefixes";
  v4[7] = @"SafeSearchSuffix";
  v5[6] = &unk_1F466D160;
  v5[7] = @"&sfn=true";
  v4[8] = @"SafeSearchURLQueryParameters";
  v4[9] = @"SafeSearchURLTemplateMac";
  v5[8] = &unk_1F466D738;
  v5[9] = @"https://www.ecosia.org/search?q={searchTerms}&tts=st_asaf_macos&sfn=true";
  v4[10] = @"ScriptingName";
  v4[11] = @"SearchEngineID";
  v5[10] = @"Ecosia";
  v5[11] = &unk_1F466CB70;
  v4[12] = @"SearchEngineIdentifier";
  v4[13] = @"SearchURLTemplate";
  v5[12] = @"org.ecosia.www";
  v5[13] = @"https://www.ecosia.org/search?q={searchTerms}";
  v4[14] = @"SearchURLTemplateMac";
  v4[15] = @"SearchURLTemplateIPhone";
  v5[14] = @"https://www.ecosia.org/search?q={searchTerms}&tts=st_asaf_macos";
  v5[15] = @"https://www.ecosia.org/search?q={searchTerms}&tts=st_asaf_iphone";
  v4[16] = @"SearchURLTemplateIPad";
  v4[17] = @"ShortName";
  v5[16] = @"https://www.ecosia.org/search?q={searchTerms}&tts=st_asaf_ipad";
  v5[17] = @"Ecosia";
  v4[18] = @"SuggestionsURLTemplate";
  v4[19] = @"SuggestionsURLTemplateMac";
  v5[18] = @"https://ac.ecosia.org/autocomplete?q={searchTerms}&type=list";
  v5[19] = @"https://ac.ecosia.org/autocomplete?q={searchTerms}&type=list";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:20];

  return v2;
}

id queryKeyFromSearchTemplate(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v18 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x1E695E480], @"{searchTerms}", 0, 0, 0x8000100u);
  v2 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:v1];
  v3 = [v2 query];
  v4 = [v3 componentsSeparatedByString:@"&"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v17 = v1;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 rangeOfString:{@"=", v17}];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = v11;
          if (v11 < [v10 length] - 1)
          {
            v13 = [v10 substringFromIndex:v12 + 1];
            v14 = [v13 isEqualToString:v18];

            if (v14)
            {
              v15 = [v10 substringToIndex:v12];
              goto LABEL_13;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_13:
    v1 = v17;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void setUpScriptInjectionIfNecessary(WKUserContentController *a1)
{
  v2 = a1;
  if (+[WBSAutoFillJavaScriptInjectionController isAutoFillDrivenByUIProcess])
  {
    v1 = +[WBSAutoFillJavaScriptInjectionController sharedController];
    [v1 setUpScriptInjectionWithUserContentController:v2];
  }
}

void sub_1C69702E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id **std::unique_ptr<SafariShared::SuddenTerminationDisabler>::~unique_ptr[abi:sn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x1CCA51330]();
  }

  return a1;
}

void SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(id *this)
{
  SafariShared::SuddenTerminationDisabler::enableSuddenTermination(this);
}

void sub_1C697079C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C6970CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExtensions_log;
}

void WBSLoadBuiltInContentBlockersWithStore(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (WBSLoadBuiltInContentBlockersWithStore_onceToken != -1)
  {
    WBSLoadBuiltInContentBlockersWithStore_cold_1();
  }

  if (WBSLoadBuiltInContentBlockersWithStore_canLoadRuleListUsingWebPrivacy)
  {
    v5 = [getWPResourcesClass() sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __WBSLoadBuiltInContentBlockersWithStore_block_invoke_2;
    v6[3] = &unk_1E8288320;
    v7 = v4;
    [v5 loadTrackerBlockerRuleListForStore:v3 completionHandler:v6];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

id getWPResourcesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWPResourcesClass_softClass;
  v7 = getWPResourcesClass_softClass;
  if (!getWPResourcesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWPResourcesClass_block_invoke;
    v3[3] = &unk_1E8283D08;
    v3[4] = &v4;
    __getWPResourcesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C6972264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WBSLoadBuiltInContentBlockersWithStore_block_invoke()
{
  result = [getWPResourcesClass() instancesRespondToSelector:sel_loadTrackerBlockerRuleListForStore_completionHandler_];
  if (result)
  {
    WBSLoadBuiltInContentBlockersWithStore_canLoadRuleListUsingWebPrivacy = 1;
  }

  return result;
}

Class __getWPResourcesClass_block_invoke(uint64_t a1)
{
  if (!WebPrivacyLibraryCore_frameworkLibrary)
  {
    WebPrivacyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("WPResources");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWPResourcesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id SafariShared::WBSSQLiteDatabaseFetch<>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v3 query:v4];
  v6 = [v5 fetch];

  return v6;
}

id getMAAssetQueryClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getMAAssetQueryClass_softClass;
  v6 = getMAAssetQueryClass_softClass;
  if (!getMAAssetQueryClass_softClass)
  {
    MobileAssetLibraryCore();
    v4[3] = objc_getClass("MAAssetQuery");
    getMAAssetQueryClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1C697353C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MobileAssetLibraryCore()
{
  if (!MobileAssetLibraryCore_frameworkLibrary)
  {
    MobileAssetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return MobileAssetLibraryCore_frameworkLibrary;
}

uint64_t WBS_LOG_CHANNEL_PREFIXMobileAsset()
{
  if (WBS_LOG_CHANNEL_PREFIXMobileAsset_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXMobileAsset_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXMobileAsset_log;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id OUTLINED_FUNCTION_1_4(uint64_t a1, void *a2)
{

  return a2;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_7(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

void OUTLINED_FUNCTION_1_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_2_2(uint64_t a1, void *a2)
{

  return a2;
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_6(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_2(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = 1752392040;
  *(a2 + 12) = 2117;
  *(a2 + 14) = result;
  *(a2 + 22) = 2048;
  *(a2 + 24) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPrivacyReport()
{
  if (WBS_LOG_CHANNEL_PREFIXPrivacyReport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPrivacyReport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPrivacyReport_log;
}

void SafariShared::TranslatedFileURLProtocol::registerProtocol(void (**a1)(uint64_t))
{
  v15 = a1;
  {
    v2 = WTF::fastMalloc(8);
    *v2 = 0;
    SafariShared::TranslatedFileURLProtocol::registerProtocol(SafariShared::TranslatedFileURLProtocol::ProtocolInfo const*)::registeredProtocols = v2;
    goto LABEL_13;
  }

  v2 = SafariShared::TranslatedFileURLProtocol::registerProtocol(SafariShared::TranslatedFileURLProtocol::ProtocolInfo const*)::registeredProtocols;
  v3 = *SafariShared::TranslatedFileURLProtocol::registerProtocol(SafariShared::TranslatedFileURLProtocol::ProtocolInfo const*)::registeredProtocols;
  if (!*SafariShared::TranslatedFileURLProtocol::registerProtocol(SafariShared::TranslatedFileURLProtocol::ProtocolInfo const*)::registeredProtocols)
  {
LABEL_13:
    WTF::HashTable<SafariShared::TranslatedFileURLProtocol::ProtocolInfo const*,SafariShared::TranslatedFileURLProtocol::ProtocolInfo const*,WTF::IdentityExtractor,WTF::DefaultHash<SafariShared::TranslatedFileURLProtocol::ProtocolInfo const*>,WTF::HashTraits<SafariShared::TranslatedFileURLProtocol::ProtocolInfo const*>,WTF::HashTraits<SafariShared::TranslatedFileURLProtocol::ProtocolInfo const*>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v2, &v15, v14);
    v14[0] = 0;
    v14[1] = v15;
    memset(&v14[2], 0, 24);
    v14[5] = SafariShared::TranslatedFileURLProtocol::canHandleRequest;
    v14[6] = SafariShared::TranslatedFileURLProtocol::createCanonicalRequest;
    v14[7] = SafariShared::TranslatedFileURLProtocol::requestsAreCacheEquivalent;
    v14[8] = SafariShared::TranslatedFileURLProtocol::protocolInstanceForProtocol;
    v11 = CFURLProtocolRegisterImplementation();
    v12 = MEMORY[0x1E6985308];
    v13 = (*v15)(v11);
    [v12 registerSchemeForCustomProtocol:v13];

    return;
  }

  if (!a1)
  {
    SafariShared::TranslatedFileURLProtocol::registerProtocol();
  }

  if (a1 == -1)
  {
    SafariShared::TranslatedFileURLProtocol::registerProtocol();
  }

  v4 = *(v3 - 8);
  v5 = (a1 + ~(a1 << 32)) ^ ((a1 + ~(a1 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v3 + 8 * v8);
  if (v9 != a1)
  {
    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 8 * v8);
      ++v10;
      if (v9 == a1)
      {
        return;
      }
    }

    goto LABEL_13;
  }
}

__CFString *WBSStartPageSectionIdentifierTitle(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69C9668]] || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69C9670]) || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69C9678]) || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69C96A0]) || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69C96A8]) || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69C96B8]) || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69C9680]) || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69C96C0]) || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69C96B0]) || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69C96C8]))
  {
    v2 = _WBSLocalizedString();
  }

  else
  {
    v2 = &stru_1F4646D10;
  }

  return v2;
}

void ___ZL50trimPairOfParenthesesContainingOnlyDigitsAndSpacesP8NSString_block_invoke()
{
  v0 = objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"(（❨❪[");
  v1 = trimPairOfParenthesesContainingOnlyDigitsAndSpaces(NSString *)::leftParenthesisCharacterSet;
  trimPairOfParenthesesContainingOnlyDigitsAndSpaces(NSString *)::leftParenthesisCharacterSet = v0;

  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"）❩❫]"]);
  v3 = trimPairOfParenthesesContainingOnlyDigitsAndSpaces(NSString *)::rightParenthesisCharacterSet;
  trimPairOfParenthesesContainingOnlyDigitsAndSpaces(NSString *)::rightParenthesisCharacterSet = v2;
}

void sub_1C6975648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (v23)
  {
    free(v23);
  }

  if (v21)
  {
    free(v21);
  }

  _Unwind_Resume(a1);
}

Class __getSLAttributionViewClass_block_invoke(uint64_t a1)
{
  SocialLayerLibrary();
  result = objc_getClass("SLAttributionView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLAttributionViewClass_block_invoke_cold_1();
  }

  getSLAttributionViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getSLAttributionViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSLAttributionViewClass_softClass;
  v7 = getSLAttributionViewClass_softClass;
  if (!getSLAttributionViewClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSLAttributionViewClass_block_invoke;
    v3[3] = &unk_1E8283D08;
    v3[4] = &v4;
    __getSLAttributionViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C6975D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SocialLayerLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!SocialLayerLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __SocialLayerLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E8285730;
    v2 = 0;
    SocialLayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SocialLayerLibraryCore_frameworkLibrary)
  {
    SocialLayerLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

void sub_1C6975F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLHighlightCenterClass_block_invoke(uint64_t a1)
{
  SocialLayerLibrary();
  result = objc_getClass("SLHighlightCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLHighlightCenterClass_block_invoke_cold_1();
  }

  getSLHighlightCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t WBS_LOG_CHANNEL_PREFIXStartPage()
{
  if (WBS_LOG_CHANNEL_PREFIXStartPage_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXStartPage_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXStartPage_log;
}

void __WBSLoadBuiltInContentBlockersWithStore_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXBuiltInContentBlockers();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __WBSLoadBuiltInContentBlockersWithStore_block_invoke_2_cold_1(v7, v5);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void OUTLINED_FUNCTION_3_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_3_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1C697788C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SynapseLibraryCore()
{
  if (!SynapseLibraryCore_frameworkLibrary)
  {
    SynapseLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SynapseLibraryCore_frameworkLibrary;
}

void SynapseLibrary()
{
  v0 = 0;
  if (!SynapseLibraryCore())
  {
    SynapseLibrary_cold_1(&v0);
  }
}

Class __getSYFeatureEligibilityClass_block_invoke(uint64_t a1)
{
  SynapseLibrary();
  result = objc_getClass("SYFeatureEligibility");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSYFeatureEligibilityClass_block_invoke_cold_1();
  }

  getSYFeatureEligibilityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSYLinkContextClientClass_block_invoke(uint64_t a1)
{
  SynapseLibrary();
  result = objc_getClass("SYLinkContextClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSYLinkContextClientClass_block_invoke_cold_1();
  }

  getSYLinkContextClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C6977BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v15 - 64), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSYNotesActivationObserverClass_block_invoke(uint64_t a1)
{
  SynapseLibrary();
  result = objc_getClass("SYNotesActivationObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSYNotesActivationObserverClass_block_invoke_cold_1();
  }

  getSYNotesActivationObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C697822C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void *sub_1C6978340@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C697836C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D44F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C6978424@<X0>(void *a1@<X8>)
{
  result = sub_1C6A74530();
  *a1 = v3;
  return result;
}

uint64_t sub_1C697849C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C69784D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6978514()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6978554()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6978594()
{
  v1 = sub_1C6A743A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6978658()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4748);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C69786EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C6978754()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6978790()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C69787C8()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C6978824()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C697885C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6978894()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1C697A434(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1C697A770(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C697AE40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_1C697B740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void Init_DustEffect256_graph_DC680B38_F027_4C51_B1B0_557E92AAEFE7(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { FMOV            V1.4S, #1.0 }

  *&_Q1 = a1;
  DWORD1(_Q1) = *(a4 + 4);
  *a4 = _Q1;
}

double __vfx_script_DustEffect256_graph_DC680B38_F027_4C51_B1B0_557E92AAEFE7(double a1)
{
  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 24);
  __asm { FMOV            V0.4S, #1.0 }

  LODWORD(_Q0) = **(arguments_buffer_delayInitStub + 16);
  DWORD1(_Q0) = *(v2 + 4);
  *v2 = _Q0;
  return *&_Q0;
}

__n128 Update_DustEffect256_graph_949E61E3_E147_4B13_857E_B5CB57635D87(uint64_t a1, uint64_t a2, __int128 *a3, double *a4)
{
  v11 = *a3;
  v12 = *a4;
  vfx_script_clock_time_delayInitStub(*a4);
  *&v6 = v6;
  v10 = LODWORD(v6);
  vfx_script_clock_time_delayInitStub(v6);
  *&v8 = *&v8;
  *&v8 = *&v8 * 0.2;
  v7 = v11;
  DWORD2(v7) = v10;
  *a3 = v7;
  *(&v8 + 4) = *(&v12 + 4);
  *a4 = v8;
  result.n128_u64[0] = v8;
  result.n128_u32[2] = DWORD2(v8);
  return result;
}

__n128 __vfx_script_DustEffect256_graph_949E61E3_E147_4B13_857E_B5CB57635D87(double a1)
{
  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v9 = *v2;
  v10 = *v3;
  vfx_script_clock_time_delayInitStub(*v3);
  *&v4 = v4;
  v8 = LODWORD(v4);
  vfx_script_clock_time_delayInitStub(v4);
  *&v6 = *&v6;
  *&v6 = *&v6 * 0.2;
  v5 = v9;
  DWORD2(v5) = v8;
  *v2 = v5;
  *(&v6 + 4) = *(&v10 + 4);
  *v3 = v6;
  *(v2 + 3) = 1065353216;
  *(v3 + 3) = 1065353216;
  result.n128_u64[0] = v6;
  result.n128_u32[2] = DWORD2(v6);
  return result;
}

void __shouldShowAlternateNewsUniversalLinksFormatting_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.newscore"];
  shouldShowAlternateNewsUniversalLinksFormatting_shouldShowAlternateNewsUniversalLinksFormatting = [v0 BOOLForKey:@"show_alternate_universal_links_preference"];
}

void sub_1C6982C54(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id tertiaryGroupedBackgroundColor()
{
  if (tertiaryGroupedBackgroundColor_onceToken != -1)
  {
    tertiaryGroupedBackgroundColor_cold_1();
  }

  v1 = tertiaryGroupedBackgroundColor_tertiaryGroupBGColor;

  return v1;
}

void __tertiaryGroupedBackgroundColor_block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] safari_colorWithRGBColorComponents:&unk_1F466CFC8];
  v1 = tertiaryGroupedBackgroundColor_tertiaryGroupBGColor;
  tertiaryGroupedBackgroundColor_tertiaryGroupBGColor = v0;
}

void sub_1C698420C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __defaultConfiguration_block_invoke()
{
  v0 = [[WBSBookmarkFolderTouchIconConfiguration alloc] initFor3x3Layout];
  v1 = defaultConfiguration_configuration;
  defaultConfiguration_configuration = v0;
}

void sub_1C6985CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C6985F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C6986738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1C6986AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C6986FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C6987298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C69874C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C698770C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindString:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

uint64_t SafariShared::WBSSQLiteDatabaseExecuteWithParameterArray<NSString * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v18 = 0;
  v8 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6 error:&v18];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    v11 = 0;
    v12 = 0x100000000;
    while (v11 < [v7 count])
    {
      v13 = [v7 objectAtIndexedSubscript:v11];
      [v8 bindString:v13 atParameterIndex:v12 >> 32];

      v12 += 0x100000000;
      ++v11;
    }

    v14 = [v8 execute];
    [v8 invalidate];
    if ((v14 - 100) >= 2 && v14)
    {
      v17 = v10;
      [v5 reportErrorWithCode:v14 statement:objc_msgSend(v8 error:{"handle"), &v17}];
      v15 = v17;

      v10 = v15;
    }
  }

  else
  {
    v14 = [v9 code];
  }

  return v14;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 execute];
    [v7 invalidate];
    if ((v10 - 100) >= 2 && v10 != 0)
    {
      [v5 reportErrorWithCode:v10 statement:objc_msgSend(v7 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v12 = v8;
      *a2 = v9;
    }

    v10 = [v9 code];
  }

  return v10;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},double>(void *a1, void *a2, void *a3, void *a4, double *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},double>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},double>(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindDouble:2 atParameterIndex:*a3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong},double,BOOL,BOOL>(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v15 = a1;
  v16 = a3;
  v24 = 0;
  v17 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v15 query:v16 error:&v24];
  v18 = v24;
  v19 = v18;
  if (v17)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong},double,BOOL,BOOL>(v17, a4, a5, a6, a7, a8);
    v20 = [v17 execute];
    [v17 invalidate];
    if ((v20 - 100) >= 2 && v20 != 0)
    {
      [v15 reportErrorWithCode:v20 statement:objc_msgSend(v17 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v22 = v18;
      *a2 = v19;
    }

    v20 = [v19 code];
  }

  return v20;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong},double,BOOL,BOOL>(void *a1, void *a2, void *a3, double *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},double,BOOL,BOOL>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},double,BOOL,BOOL>(void *a1, void *a2, double *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,double,BOOL,BOOL>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,double,BOOL,BOOL>(void *a1, double *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v7 = a1;
  [v7 bindDouble:3 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,BOOL,BOOL>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,BOOL,BOOL>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = a1;
  [v5 bindInt:*a2 atParameterIndex:4];
  [v5 bindInt:*a3 atParameterIndex:5];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindString:*a4 atParameterIndex:1];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

id developerIdentifierFromComposedIdentifier(void *a1)
{
  v1 = a1;
  v2 = objc_msgSend(v1, "rangeOfString:", @"(");
  v3 = [v1 rangeOfString:@""]);
  v4 = v2 == 0x7FFFFFFFFFFFFFFFLL || v3 == 0x7FFFFFFFFFFFFFFFLL;
  if (v4 || v3 <= v2 + 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v1 substringWithRange:?];
  }

  return v5;
}

void sub_1C698C674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C698C980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C698CE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C698D108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id extensionsStatesDictionaryToUseForComparison(void *a1)
{
  v1 = extensionsStatesDictionaryToUseForComparison_once;
  v2 = a1;
  if (v1 != -1)
  {
    extensionsStatesDictionaryToUseForComparison_cold_1();
  }

  v3 = [v2 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_221];

  return v3;
}

void __filteredStateDictionaryForExtensionState_block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69C95E0];
  v6[0] = *MEMORY[0x1E69C95A8];
  v6[1] = v1;
  v2 = *MEMORY[0x1E69C9620];
  v6[2] = *MEMORY[0x1E69C9618];
  v6[3] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = filteredStateDictionaryForExtensionState_allowedKeys;
  filteredStateDictionaryForExtensionState_allowedKeys = v4;
}

void *__filteredStateDictionaryForExtensionState_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = filteredStateDictionaryForExtensionState_allowedKeys;
  v3 = a2;
  if ([v2 containsObject:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void __filteredStateDictionaryForEnabledState_block_invoke()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69C95E8];
  v5[0] = *MEMORY[0x1E69C95F0];
  v5[1] = v1;
  v5[2] = *MEMORY[0x1E69C9610];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = filteredStateDictionaryForEnabledState_allowedKeys;
  filteredStateDictionaryForEnabledState_allowedKeys = v3;
}

void *__filteredStateDictionaryForEnabledState_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = filteredStateDictionaryForEnabledState_allowedKeys;
  v3 = a2;
  if ([v2 containsObject:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void __saveCurrentDeviceTimeInterval_block_invoke()
{
  if ([MEMORY[0x1E69C8880] isInternalInstall] && (objc_msgSend(MEMORY[0x1E695E000], "safari_browserDefaults"), v0 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v0, "safari_numberForKey:", *MEMORY[0x1E69C91C8]), v1 = objc_claimAutoreleasedReturnValue(), v0, v1))
  {
    [v1 doubleValue];
    saveCurrentDeviceTimeInterval_saveCurrentDeviceTimeInterval = v2;
    v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __saveCurrentDeviceTimeInterval_block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    saveCurrentDeviceTimeInterval_saveCurrentDeviceTimeInterval = 0x40F5180000000000;
  }
}

void __pruneInactiveDevicesTimeInterval_block_invoke()
{
  if ([MEMORY[0x1E69C8880] isInternalInstall] && (objc_msgSend(MEMORY[0x1E695E000], "safari_browserDefaults"), v0 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v0, "safari_numberForKey:", *MEMORY[0x1E69C91B8]), v1 = objc_claimAutoreleasedReturnValue(), v0, v1))
  {
    [v1 doubleValue];
    pruneInactiveDevicesTimeInterval_pruneInactiveDevicesTimeInterval = v2;
    v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __pruneInactiveDevicesTimeInterval_block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    pruneInactiveDevicesTimeInterval_pruneInactiveDevicesTimeInterval = 0x40F5180000000000;
  }
}

void __timeIntervalBeforeAssumingDeviceHasBecomeInactive_block_invoke()
{
  if ([MEMORY[0x1E69C8880] isInternalInstall] && (objc_msgSend(MEMORY[0x1E695E000], "safari_browserDefaults"), v0 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v0, "safari_numberForKey:", *MEMORY[0x1E69C91D8]), v1 = objc_claimAutoreleasedReturnValue(), v0, v1))
  {
    [v1 doubleValue];
    timeIntervalBeforeAssumingDeviceHasBecomeInactive_timeIntervalBeforeAssumingDeviceHasBecomeInactive = v2;
    v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __timeIntervalBeforeAssumingDeviceHasBecomeInactive_block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    timeIntervalBeforeAssumingDeviceHasBecomeInactive_timeIntervalBeforeAssumingDeviceHasBecomeInactive = 0x4132750000000000;
  }
}

void __extensionDeviceDictionaryToUseForComparison_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = *MEMORY[0x1E69C95B0];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = extensionDeviceDictionaryToUseForComparison_ignoredKeys;
  extensionDeviceDictionaryToUseForComparison_ignoredKeys = v2;
}

void *__extensionDeviceDictionaryToUseForComparison_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = extensionDeviceDictionaryToUseForComparison_ignoredKeys;
  v5 = a3;
  if ([v4 containsObject:a2])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

void __extensionsStatesDictionaryToUseForComparison_block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69C9610];
  v11[0] = *MEMORY[0x1E69C95D8];
  v11[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = extensionsStatesDictionaryToUseForComparison_ignoredKeys;
  extensionsStatesDictionaryToUseForComparison_ignoredKeys = v3;

  v5 = MEMORY[0x1E695DFD8];
  v6 = *MEMORY[0x1E69C95E8];
  v10[0] = *MEMORY[0x1E69C95F0];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8 = [v5 setWithArray:v7];
  v9 = extensionsStatesDictionaryToUseForComparison_BOOLKeys;
  extensionsStatesDictionaryToUseForComparison_BOOLKeys = v8;
}

id __extensionsStatesDictionaryToUseForComparison_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([extensionsStatesDictionaryToUseForComparison_ignoredKeys containsObject:v4])
  {
    goto LABEL_2;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69C9628]])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v6 = 0;
      goto LABEL_13;
    }

    v7 = [v5 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_225];
  }

  else if ([extensionsStatesDictionaryToUseForComparison_BOOLKeys containsObject:v4])
  {
    if ([v5 BOOLValue])
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    v7 = v8;
  }

  else
  {
    v7 = v5;
  }

  v6 = v7;
LABEL_13:

  return v6;
}

id __extensionsStatesDictionaryToUseForComparison_block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_227];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __extensionsStatesDictionaryToUseForComparison_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([extensionsStatesDictionaryToUseForComparison_ignoredKeys containsObject:v4])
  {
    v6 = 0;
  }

  else
  {
    v7 = [extensionsStatesDictionaryToUseForComparison_BOOLKeys containsObject:v4];
    v8 = v5;
    if (v7)
    {
      if ([v5 BOOLValue])
      {
        v8 = v5;
      }

      else
      {
        v8 = 0;
      }
    }

    v6 = v8;
  }

  return v6;
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t getValidColorComponentAtIndexInArray(void *a1, uint64_t a2, double *a3)
{
  v4 = [a1 safari_numberAtIndex:a2];
  v5 = v4;
  if (v4 && (([v4 doubleValue], v6 >= 0.0) ? (v7 = v6 <= 1.0) : (v7 = 0), v7))
  {
    *a3 = v6;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1C698F394(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1C698F348);
  }

  _Unwind_Resume(a1);
}

void sub_1C6990F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKGlyphViewClass_block_invoke(uint64_t a1)
{
  if (!PassKitUIFoundationLibraryCore_frameworkLibrary)
  {
    PassKitUIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("PKGlyphView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKGlyphViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitUIFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitUIFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPKAddPassesViewControllerClass_block_invoke(uint64_t a1)
{
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("PKAddPassesViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKAddPassesViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C6991F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = WBSExtensionsController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C6992354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C69949D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1C699698C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void -[WBSExtensionsController _blockExtension:](WBSExtensionsController *self, SEL a2, id a3)
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [v4 identifier];
    objc_claimAutoreleasedReturnValue();
    [WBSExtensionsController _blockExtension:];
  }

  if ([v4 safari_isUnpackedExtension])
  {
    [(NSMutableSet *)self->_unpackedExtensions removeObject:v4];
    temporaryExtensionIdentifiers = self->_temporaryExtensionIdentifiers;
    v7 = [v4 identifier];
    [(NSMutableSet *)temporaryExtensionIdentifiers removeObject:v7];

    v8 = [(NSArray *)self->_allDiscoveredExtensions safari_arrayByRemovingObject:v4];
    allDiscoveredExtensions = self->_allDiscoveredExtensions;
    self->_allDiscoveredExtensions = v8;
  }

  v10 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:v4];
  [(WBSExtensionsController *)self _updateExtensionStateAfterExtensionWasRemovedWithComposedIdentifier:v10];

  blockedExtensions = self->_blockedExtensions;
  if (!blockedExtensions)
  {
    v12 = [MEMORY[0x1E695DFA8] set];
    v13 = self->_blockedExtensions;
    self->_blockedExtensions = v12;

    blockedExtensions = self->_blockedExtensions;
  }

  if (([(NSMutableSet *)blockedExtensions containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_blockedExtensions addObject:v4];
    [(WBSExtensionsController *)self _removeSafariExtensionDataForExtension:v4];
    extensions = self->_extensions;
    p_extensions = &self->_extensions;
    if ([(NSMutableArray *)extensions count])
    {
      v16 = [(NSMutableArray *)*p_extensions mutableCopy];
      [v16 removeObject:v4];
      objc_storeStrong(p_extensions, v16);
      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      [v17 postNotificationName:*MEMORY[0x1E69C92C0] object:v4];
    }
  }
}

void sub_1C69978A0(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1C69980A8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C699A318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  objc_destroyWeak((v23 + 40));

  objc_destroyWeak((v22 + 40));
  _Unwind_Resume(a1);
}

void sub_1C699B2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C699BE0C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1C699C0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1C699C62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a20, 8);

  _Unwind_Resume(a1);
}

void sub_1C699C92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a18);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C699D50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C699D718(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, ...)
{
  va_start(va, a11);

  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1C699E630(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C699E72C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1C699E89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_1C699E964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C699EA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

id -[WBSFaviconProvider _blockOperationForRequest:](WBSFaviconProvider *self, SEL a2, id a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__WBSFaviconProvider__blockOperationForRequest___block_invoke;
  v8[3] = &unk_1E8284480;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(v8);

  return v6;
}

void sub_1C699F538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_1C699FED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C69A062C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 56));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69A0BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C69A0E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C69A13F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  v40 = v38;

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);

  _Block_object_dispose((v39 - 160), 8);
  _Block_object_dispose((v39 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_1C69A19C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C69A1D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C69A20D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C69A3CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&>(v9, a3, a4);
  v10 = [v9 fetch];

  return v10;
}

void sub_1C69A5814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&,double,double &,double &,BOOL &>(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6, double *a7, double *a8, unsigned __int8 *a9)
{
  v16 = a1;
  v17 = a3;
  v25 = 0;
  v18 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v16 query:v17 error:&v25];
  v19 = v25;
  v20 = v19;
  if (v18)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&,double,double &,double &,BOOL &>(v18, a4, a5, a6, a7, a8, a9);
    v21 = [v18 execute];
    [v18 invalidate];
    if ((v21 - 100) >= 2 && v21 != 0)
    {
      [v16 reportErrorWithCode:v21 statement:objc_msgSend(v18 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v23 = v19;
      *a2 = v20;
    }

    v21 = [v20 code];
  }

  return v21;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&,double,double &,double &,BOOL &>(void *a1, void *a2, void *a3, double *a4, double *a5, double *a6, unsigned __int8 *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,double,double &,double &,BOOL &>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,double,double &,double &,BOOL &>(void *a1, void *a2, double *a3, double *a4, double *a5, unsigned __int8 *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,double,double &,double &,BOOL &>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,double,double &,double &,BOOL &>(void *a1, double *a2, double *a3, double *a4, unsigned __int8 *a5)
{
  v9 = a1;
  [v9 bindDouble:3 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,double &,double &,BOOL &>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,double &,double &,BOOL &>(void *a1, double *a2, double *a3, unsigned __int8 *a4)
{
  v7 = a1;
  [v7 bindDouble:4 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,double &,BOOL &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,double &,BOOL &>(void *a1, double *a2, unsigned __int8 *a3)
{
  v5 = a1;
  [v5 bindDouble:5 atParameterIndex:*a2];
  [v5 bindInt:*a3 atParameterIndex:6];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,NSString * {__strong}&>(void *a1, void *a2, void *a3, double *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,NSString * {__strong}&>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,NSString * {__strong}&>(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [v5 bindDouble:1 atParameterIndex:*a2];
  [v5 bindString:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&,double>(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6)
{
  v11 = a1;
  v12 = a3;
  v20 = 0;
  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v11 query:v12 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&,double>(v13, a4, a5, a6);
    v16 = [v13 execute];
    [v13 invalidate];
    if ((v16 - 100) >= 2 && v16 != 0)
    {
      [v11 reportErrorWithCode:v16 statement:objc_msgSend(v13 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v18 = v14;
      *a2 = v15;
    }

    v16 = [v15 code];
  }

  return v16;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&,double>(void *a1, void *a2, void *a3, double *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,double>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,double>(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:2];
  [v5 bindDouble:3 atParameterIndex:*a3];
}

void sub_1C69ADFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69AE27C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C69AF29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, char a28)
{
  objc_destroyWeak(v29);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v31 - 136), 8);
  objc_destroyWeak((v30 + 40));
  objc_sync_exit(v28);
  _Unwind_Resume(a1);
}

void sub_1C69B226C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C69B2654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C69B2870(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C69B2A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1C69B2F40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C69B32B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69B3BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69B42FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *keyForSource(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"bookmarks";
  }

  else
  {
    return off_1E82850F0[a1 - 1];
  }
}

uint64_t WBSUIStringFromRectHorizontalBounds(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = MEMORY[0x1E696AEC0];
  MinX = CGRectGetMinX(*&a1);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  return [v8 stringWithFormat:@"{%.*g, %.*g}", 15, *&MinX, 15, CGRectGetMaxX(v11)];
}

uint64_t WBSUIStringFromRectVerticalBounds(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = MEMORY[0x1E696AEC0];
  MinY = CGRectGetMinY(*&a1);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  return [v8 stringWithFormat:@"{%.*g, %.*g}", 15, *&MinY, 15, CGRectGetMaxY(v11)];
}

id WBSForYouLinkRecommendationSourceDownvoteActionTitle(uint64_t a1, id a2)
{
  if (a1 > 3)
  {
    if (a1 >= 8)
    {
      goto LABEL_6;
    }
  }

  else if (a1 < 0)
  {
    goto LABEL_6;
  }

  a2 = _WBSLocalizedString();
LABEL_6:

  return a2;
}

void sub_1C69B63F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C69B77A8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1C69B81C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  objc_destroyWeak((v54 + 64));
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a54, 8);
  objc_destroyWeak((v55 - 248));
  _Unwind_Resume(a1);
}

void removeLinkRecommendationsPassingTestWithReductionReason(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 count];
  [v5 safari_removeObjectsPassingTest:v7];

  if ([v5 count] != v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = 134218498;
      v12 = v8;
      v13 = 2048;
      v14 = [v5 count];
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Number of allowed recommendations reduced from %ld to %ld after removing %{public}@.", &v11, 0x20u);
    }
  }
}

id imageValidForPresentation(void *a1)
{
  v1 = a1;
  [v1 size];
  if (v2 <= 57.0 || ([v1 size], v3 <= 57.0))
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

void sub_1C69BA2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C69BC340(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C69BC53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69BC764(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id bestDateForSuggestion(void *a1)
{
  v1 = a1;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v1 documentDate], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = [v1 documentDate];
  }

  else
  {
    v4 = [v1 receivedAt];

    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = [v1 receivedAt];
  }

  v4 = v3;
LABEL_7:

  return v4;
}

double WBSRectCenteredWithinRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  MidX = CGRectGetMidX(*&a1);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  v15.origin.y = CGRectGetMidY(v14);
  v15.size.width = 0.0;
  v15.size.height = 0.0;
  v15.origin.x = MidX;
  return floor(COERCE_DOUBLE(CGRectInset(v15, a5 * -0.5, a6 * -0.5)));
}

double WBSSizeScaleAspectFillSize(double result, double a2, double a3, double a4)
{
  v4 = result / a2 / (a3 / a4);
  if (v4 <= 1.0)
  {
    return result / v4;
  }

  return result;
}

double WBSSizeScaleAspectFitSize(double result, double a2, double a3, double a4)
{
  v4 = result / a2 / (a3 / a4);
  if (v4 > 1.0)
  {
    return result / v4;
  }

  return result;
}

void *WBSURLForHighlight(void *a1)
{
  v1 = a1;
  v2 = [v1 resourceURL];
  v3 = [v2 host];
  v4 = [v3 safari_isCaseInsensitiveEqualToString:@"apple.news"];

  if (v4)
  {
    v5 = [v1 supplementaryData];
    v6 = [v5 objectForKey:@"com_apple_mobilesms_resolvedURL"];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v2;
  }

  v8 = v7;

  return v7;
}

uint64_t __SocialLayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SocialLayerLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WBSShouldApplyBackingForBackdropToImage(CGImage *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F138]);
  v10 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * Width, v9, 1u);
  v70.size.width = Width;
  v70.size.height = Height;
  v70.origin.x = 0.0;
  v70.origin.y = 0.0;
  CGContextDrawImage(v10, v70, a1);
  v53 = v10;
  Data = CGBitmapContextGetData(v10);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL39WBSShouldApplyBackingForBackdropToImageP7CGImageU13block_pointerFbdEU13block_pointerFbhhhhE_block_invoke;
  aBlock[3] = &__block_descriptor_48_e23_I56__0Q8Q16_24_32_40_48l;
  aBlock[4] = Data;
  aBlock[5] = Width;
  v12 = _Block_copy(aBlock);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = ___ZL39WBSShouldApplyBackingForBackdropToImageP7CGImageU13block_pointerFbdEU13block_pointerFbhhhhE_block_invoke_2;
  v63[3] = &unk_1E8285850;
  v13 = v12;
  v64 = v13;
  v14 = v6;
  v65 = v14;
  v67 = Width;
  v68 = Height;
  v15 = v5;
  v66 = v15;
  v16 = _Block_copy(v63);
  v62 = 0;
  v49 = Height + Width;
  v17 = malloc_type_malloc(16 * (Height + Width), 0x100004000313F17uLL);
  v51 = v15;
  v50 = v14;
  v54 = v13;
  if (Width)
  {
    v18 = 0;
    v19 = 0;
    v57 = Height;
    v59 = Width;
    v60 = Width;
    v20 = Height;
    v55 = Width;
    do
    {
      if (v62)
      {
        break;
      }

      if (Height)
      {
        v21 = 0;
        while ((v16[2](v16, v18, v21, 0, 1, &v62) & 1) == 0)
        {
          if (Height == ++v21)
          {
            goto LABEL_26;
          }
        }

        v22 = v19 + 1;
        v17[v19] = v21;
        if (v21 < v20)
        {
          v20 = v21;
        }

        if (v62)
        {
          ++v19;
        }

        else
        {
          v23 = v59;
          if (v18 >= v60)
          {
            v24 = v60;
          }

          else
          {
            v24 = v18;
          }

          if (v59 >= Width + ~v18)
          {
            v23 = Width + ~v18;
          }

          v59 = v23;
          v60 = v24;
          v25 = -1;
          v26 = Height - 1;
          do
          {
            if (v26 >= Height)
            {
              ++v19;
              goto LABEL_25;
            }

            v27 = v16[2](v16, v18, v26, 0, -1, &v62);
            ++v25;
            --v26;
          }

          while ((v27 & 1) == 0);
          v19 += 2;
          v17[v22] = v25;
          v28 = v57;
          if (v57 >= v25)
          {
            v28 = v25;
          }

          v57 = v28;
LABEL_25:
          Width = v55;
        }
      }

LABEL_26:
      ++v18;
    }

    while (v18 != Width);
  }

  else
  {
    v19 = 0;
    v59 = 0;
    v60 = 0;
    v20 = Height;
    v57 = Height;
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = ___ZL39WBSShouldApplyBackingForBackdropToImageP7CGImageU13block_pointerFbdEU13block_pointerFbhhhhE_block_invoke_3;
  v61[3] = &__block_descriptor_56_e5_v8__0l;
  v61[4] = v53;
  v61[5] = v9;
  v61[6] = v17;
  v56 = _Block_copy(v61);
  v29 = v60;
  if ((v62 & 1) != 0 || v20 == Height)
  {
    goto LABEL_57;
  }

  v30 = Height - v57;
  if (v20 >= v30)
  {
LABEL_58:
    if (v19)
    {
      v42 = v19 - 1;
      if (v19 != 1)
      {
        v44 = 0;
        v45 = 0.0;
        do
        {
          v45 = v45 + v17[v44++];
        }

        while (v19 != v44);
        v43 = v45 / v19;
        v46 = 0.0;
        v40 = v54;
        v41 = v51;
        v38 = v56;
        do
        {
          v47 = *v17++;
          v46 = v46 + ((v43 - v47) * (v43 - v47));
          --v19;
        }

        while (v19);
        if (sqrtf(v46 / v42) >= 1.25)
        {
          goto LABEL_70;
        }

        goto LABEL_63;
      }

      v43 = *v17;
    }

    else
    {
      v43 = 0.0;
    }

    v40 = v54;
    v41 = v51;
    v38 = v56;
LABEL_63:
    if (vcvtd_n_f64_u64(v49, 3uLL) * 0.5 >= v43)
    {
      v38[2](v38);
      v39 = 0;
      goto LABEL_71;
    }

LABEL_70:
    v38[2](v38);
    v39 = 1;
    goto LABEL_71;
  }

  v31 = Width - v59;
  v32 = Width + ~v59;
  v33 = v32 < v60 || v32 >= Width;
  v34 = v33;
  v52 = v34;
  while ((v62 & 1) == 0)
  {
    if (v29 < v31)
    {
      while ((v16[2](v16, v29, v20, 1, 0, &v62) & 1) == 0)
      {
        if (++v29 >= v31)
        {
          goto LABEL_46;
        }
      }

      v17[v19] = v29;
      if ((v62 | v34))
      {
        ++v19;
LABEL_46:
        v29 = v60;
        goto LABEL_55;
      }

      v58 = v19 + 1;
      v35 = Width;
      v36 = v31 - 2;
      v37 = v59;
      while ((v16[2](v16, v36 + 1, v20, -1, 0, &v62) & 1) == 0)
      {
        if (v36 >= v60)
        {
          ++v37;
          v33 = v36-- >= v35;
          if (!v33)
          {
            continue;
          }
        }

        ++v19;
        goto LABEL_54;
      }

      v19 += 2;
      v17[v58] = v37;
LABEL_54:
      Width = v35;
      v29 = v60;
      v34 = v52;
    }

LABEL_55:
    if (++v20 >= v30)
    {
      if ((v62 & 1) == 0)
      {
        goto LABEL_58;
      }

      break;
    }
  }

LABEL_57:
  v38 = v56;
  v56[2](v56);
  v39 = 0;
  v40 = v54;
  v41 = v51;
LABEL_71:

  return v39;
}

void sub_1C69C0698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

double WBSComputeAverageLuminance(CGImage *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v3 = data;
  v4 = CGBitmapContextCreate(data, 4uLL, 4uLL, 8uLL, 0x10uLL, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetInterpolationQuality(v4, kCGInterpolationMedium);
  CGContextSetBlendMode(v4, kCGBlendModeCopy);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 4.0;
  v16.size.height = 4.0;
  CGContextDrawImage(v4, v16, a1);
  CGContextRelease(v4);
  v8 = 0;
  v13 = 0;
  v12 = 0;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 3; ++j)
      {
        *(&v12 + j) += v3[j];
      }

      v3 += 4;
    }

    ++v8;
  }

  while (v8 != 4);
  LODWORD(v6) = HIDWORD(v12);
  LODWORD(v7) = v13;
  LODWORD(v5) = v12;
  return (v6 * 0.7152 + v7 * 0.2126 + v5 * 0.0722) / 4080.0;
}

void sub_1C69C1240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t ___ZL39WBSShouldApplyBackingForBackdropToImageP7CGImageU13block_pointerFbdEU13block_pointerFbhhhhE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  result = *(*(a1 + 32) + 4 * *(a1 + 40) * a3 + 4 * a2);
  if (a4)
  {
    *a4 = result;
  }

  if (a5)
  {
    *a5 = BYTE1(result);
  }

  if (a6)
  {
    *a6 = BYTE2(result);
  }

  if (a7)
  {
    *a7 = BYTE3(result);
  }

  return result;
}

uint64_t ___ZL39WBSShouldApplyBackingForBackdropToImageP7CGImageU13block_pointerFbdEU13block_pointerFbhhhhE_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  (*(a1[4] + 16))();
  if ((*(a1[5] + 16))())
  {
    return 0;
  }

  if ((a4 + a2) < a1[7] && (a5 + a3) < a1[8])
  {
    (*(a1[4] + 16))();
  }

  if (a6)
  {
    LOBYTE(v12) = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    v16 = (v13 * 0.7152 + v12 * 0.2126 + v14 * 0.0722) * (255.0 / 0x3FB27BB2FEC56D00uLL);
    *a6 = (*(a1[6] + 16))(v16);
  }

  return 1;
}

void ___ZL39WBSShouldApplyBackingForBackdropToImageP7CGImageU13block_pointerFbdEU13block_pointerFbhhhhE_block_invoke_3(uint64_t a1)
{
  CGContextRelease(*(a1 + 32));
  CGColorSpaceRelease(*(a1 + 40));
  v2 = *(a1 + 48);

  free(v2);
}

uint64_t ___ZL25_analyzeImageTransparencyP7CGImage_block_invoke_3(uint64_t a1)
{
  if (((*(*(a1 + 32) + 16))() & 1) != 0 || ((*(*(a1 + 32) + 16))() & 1) != 0 || !(*(*(a1 + 32) + 16))())
  {
    return 0;
  }

  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t ___ZL25_analyzeImageTransparencyP7CGImage_block_invoke_4(uint64_t a1)
{
  if (((*(*(a1 + 32) + 16))() & 1) != 0 || ((*(*(a1 + 32) + 16))() & 1) != 0 || !(*(*(a1 + 32) + 16))())
  {
    return 0;
  }

  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_1C69C1B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a29, 8);

  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v44 - 240), 8);

  _Block_object_dispose((v44 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1C69C308C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id get_SWCTrackingDomainInfoClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_SWCTrackingDomainInfoClass_softClass;
  v7 = get_SWCTrackingDomainInfoClass_softClass;
  if (!get_SWCTrackingDomainInfoClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_SWCTrackingDomainInfoClass_block_invoke;
    v3[3] = &unk_1E8283D08;
    v3[4] = &v4;
    __get_SWCTrackingDomainInfoClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C69C3790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SharedWebCredentialsLibraryCore()
{
  if (!SharedWebCredentialsLibraryCore_frameworkLibrary)
  {
    SharedWebCredentialsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SharedWebCredentialsLibraryCore_frameworkLibrary;
}

uint64_t __SharedWebCredentialsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SharedWebCredentialsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C69C3F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *scribbleElementsFromActions(void *a1)
{
  v1 = [a1 safari_mapObjectsUsingBlock:&__block_literal_global_287];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;

  return v3;
}

void sub_1C69C4620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69C48C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69C4D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C69C56BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1C69C6450(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C69C69C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69C6CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69C6F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69C78AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

WBSScribbleElement *__scribbleElementsFromActions_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSScribbleElement alloc] initWithContentBlockerAction:v2];

  return v3;
}

void sub_1C69C9A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WBSAnnotationStringForLockdownModeStatus(unint64_t a1, id a2)
{
  if (a1 <= 2)
  {
    a2 = _WBSLocalizedString();
  }

  return a2;
}

void sub_1C69CA9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose((v10 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C69CBB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69CBDE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C69CC210(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C69CC634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69CCD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69CD038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C69CD7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLPMetadataProviderClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibraryCore();
  result = objc_getClass("LPMetadataProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLPMetadataProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void LinkPresentationLibraryCore()
{
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __LinkPresentationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getLPImageClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibraryCore();
  result = objc_getClass("LPImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLPImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C69CEB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getMADownloadOptionsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getMADownloadOptionsClass_softClass;
  v6 = getMADownloadOptionsClass_softClass;
  if (!getMADownloadOptionsClass_softClass)
  {
    MobileAssetLibraryCore();
    v4[3] = objc_getClass("MADownloadOptions");
    getMADownloadOptionsClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1C69CEF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C69CF190(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id getASAttributeContentVersion()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getASAttributeContentVersionSymbolLoc_ptr;
  v7 = getASAttributeContentVersionSymbolLoc_ptr;
  if (!getASAttributeContentVersionSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getASAttributeContentVersionSymbolLoc_block_invoke;
    v3[3] = &unk_1E8283D08;
    v3[4] = &v4;
    __getASAttributeContentVersionSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getASAttributeContentVersion_cold_1();
  }

  v1 = *v0;

  return v1;
}

void sub_1C69CF568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMADownloadOptionsClass_block_invoke(uint64_t a1)
{
  MobileAssetLibraryCore();
  result = objc_getClass("MADownloadOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMADownloadOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileAssetLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileAssetLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMAAssetQueryClass_block_invoke(uint64_t a1)
{
  MobileAssetLibraryCore();
  result = objc_getClass("MAAssetQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMAAssetQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getASAttributeContentVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = MobileAssetLibraryCore();
  if (!v2)
  {
    __getASAttributeContentVersionSymbolLoc_block_invoke_cold_1(&v4);
  }

  result = dlsym(v2, "ASAttributeContentVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASAttributeContentVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMAAssetClass_block_invoke(uint64_t a1)
{
  MobileAssetLibraryCore();
  result = objc_getClass("MAAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMAAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C69D0F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C69D1CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C69D2008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C69D3730(_Unwind_Exception *a1)
{
  MEMORY[0x1CCA51330](v2, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_1C69D37A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<SafariShared::SuddenTerminationDisabler>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_1C69D39F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C6A4102C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C6A44010(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1C6A442F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C6A44924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C6A4506C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1C6A470C0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1C6A4774C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C6A47AC4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C6A47F2C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C6A4807C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1C6A481D8(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1C6A485DC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t WBSUserMediaPermissionToWKPermissionDecision(unint64_t a1)
{
  if (a1 > 4)
  {
    return 2;
  }

  else
  {
    return qword_1C6A85300[a1];
  }
}

uint64_t WBSUserMediaPermissionToWKPermissionDecisionCamera(unint64_t a1)
{
  if ((a1 & 0x20) != 0)
  {
    return 1;
  }

  else
  {
    return (a1 >> 3) & 2;
  }
}

uint64_t WBSUserMediaPermissionToWKPermissionDecisionMicrophone(char a1)
{
  if ((a1 & 4) != 0)
  {
    return 1;
  }

  else
  {
    return a1 & 2;
  }
}

void sub_1C6A48DBC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C6A49170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C6A49238(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t WBSIsiPad()
{
  if (WBSIsiPad::onceToken != -1)
  {
    WBSIsiPad_cold_1();
  }

  return WBSIsiPad::isiPad;
}

void __WBSIsiPad_block_invoke()
{
  v0 = [MEMORY[0x1E69C8860] currentDevice];
  WBSIsiPad::isiPad = [v0 deviceClass] == 3;
}

void sub_1C6A49F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Unwind_Resume(a1);
}

__CFString *classToClassString(objc_class *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (classToClassString(objc_class *,BOOL)::onceToken != -1)
  {
    classToClassString();
  }

  v4 = &classToClassString(objc_class *,BOOL)::classTypeToPluralClassString;
  if (!a2)
  {
    v4 = &classToClassString(objc_class *,BOOL)::classTypeToSingularClassString;
  }

  v5 = *v4;
  v6 = [v5 objectForKey:a1];
  if (!v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      v6 = @"unknown";
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([(objc_class *)a1 isSubclassOfClass:v11, v13])
          {
            v6 = [v7 objectForKey:v11];
            goto LABEL_17;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = @"unknown";
    }

LABEL_17:
  }

  return v6;
}

void sub_1C6A4A708(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C6A4A81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL18classToClassStringP10objc_classb_block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v1 = classToClassString(objc_class *,BOOL)::classTypeToSingularClassString;
  classToClassString(objc_class *,BOOL)::classTypeToSingularClassString = v0;

  [classToClassString(objc_class * BOOL):"setObject:forKey:" :{@"a BOOLean value", objc_opt_class()}classTypeToSingularClassString];
  [classToClassString(objc_class * BOOL):"setObject:forKey:" :{@"a number value", objc_opt_class()}classTypeToSingularClassString];
  [classToClassString(objc_class * BOOL):"setObject:forKey:" :{@"a string value", objc_opt_class()}classTypeToSingularClassString];
  [classToClassString(objc_class * BOOL):"setObject:forKey:" :{@"an array", objc_opt_class()}classTypeToSingularClassString];
  [classToClassString(objc_class * BOOL):"setObject:forKey:" :{@"an object", objc_opt_class()}classTypeToSingularClassString];
  v2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v3 = classToClassString(objc_class *,BOOL)::classTypeToPluralClassString;
  classToClassString(objc_class *,BOOL)::classTypeToPluralClassString = v2;

  [classToClassString(objc_class * BOOL):"setObject:forKey:" :{@"BOOLean values", objc_opt_class()}classTypeToPluralClassString];
  [classToClassString(objc_class * BOOL):"setObject:forKey:" :{@"number values", objc_opt_class()}classTypeToPluralClassString];
  [classToClassString(objc_class * BOOL):"setObject:forKey:" :{@"string values", objc_opt_class()}classTypeToPluralClassString];
  [classToClassString(objc_class * BOOL):"setObject:forKey:" :{@"arrays", objc_opt_class()}classTypeToPluralClassString];
  v4 = classToClassString(objc_class *,BOOL)::classTypeToPluralClassString;
  v5 = objc_opt_class();

  return [v4 setObject:@"objects" forKey:v5];
}

void sub_1C6A4AFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C6A4BA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *WBSWKStringForManifestDisplayMode(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E8289890[a1 - 1];
  }
}

uint64_t resolvedDisplayModeForURL(unint64_t a1, void *a2)
{
  v3 = [a2 host];
  v4 = [v3 lowercaseString];
  v5 = [v4 safari_stringByRemovingWwwDotPrefix];

  if ([MEMORY[0x1E695E0F0] containsObject:v5])
  {
    v6 = 2;
  }

  else
  {
    v7 = [&unk_1F466D6D0 containsObject:v5];
    if (a1 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = a1;
    }

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }
  }

  return v6;
}

void sub_1C6A4EF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C6A4F344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void Init_DustEffect254_graph_DC680B38_F027_4C51_B1B0_557E92AAEFE7(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { FMOV            V1.4S, #1.0 }

  *&_Q1 = a1;
  DWORD1(_Q1) = *(a4 + 4);
  *a4 = _Q1;
}

double __vfx_script_DustEffect254_graph_DC680B38_F027_4C51_B1B0_557E92AAEFE7(double a1)
{
  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 24);
  __asm { FMOV            V0.4S, #1.0 }

  LODWORD(_Q0) = **(arguments_buffer_delayInitStub + 16);
  DWORD1(_Q0) = *(v2 + 4);
  *v2 = _Q0;
  return *&_Q0;
}

__n128 Update_DustEffect254_graph_949E61E3_E147_4B13_857E_B5CB57635D87(uint64_t a1, uint64_t a2, __int128 *a3, double *a4)
{
  v11 = *a3;
  v12 = *a4;
  vfx_script_clock_time_delayInitStub(*a4);
  *&v6 = v6;
  v10 = LODWORD(v6);
  vfx_script_clock_time_delayInitStub(v6);
  *&v8 = *&v8;
  *&v8 = *&v8 * 0.2;
  v7 = v11;
  DWORD2(v7) = v10;
  *a3 = v7;
  *(&v8 + 4) = *(&v12 + 4);
  *a4 = v8;
  result.n128_u64[0] = v8;
  result.n128_u32[2] = DWORD2(v8);
  return result;
}

__n128 __vfx_script_DustEffect254_graph_949E61E3_E147_4B13_857E_B5CB57635D87(double a1)
{
  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v9 = *v2;
  v10 = *v3;
  vfx_script_clock_time_delayInitStub(*v3);
  *&v4 = v4;
  v8 = LODWORD(v4);
  vfx_script_clock_time_delayInitStub(v4);
  *&v6 = *&v6;
  *&v6 = *&v6 * 0.2;
  v5 = v9;
  DWORD2(v5) = v8;
  *v2 = v5;
  *(&v6 + 4) = *(&v10 + 4);
  *v3 = v6;
  *(v2 + 3) = 1065353216;
  *(v3 + 3) = 1065353216;
  result.n128_u64[0] = v6;
  result.n128_u32[2] = DWORD2(v6);
  return result;
}

void sub_1C6A5018C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WBSAutoFillValuesForFilling.init(frameAssociatedFormMetadata:controlIDsToValues:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C6A74710();

  v4 = [v2 initWithFrameAssociatedFormMetadata:a1 controlIDsToValues:v3];

  return v4;
}

id WBSAutoFillValuesForFilling.init(frameAssociatedFormMetadata:controlIDsToValues:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___WBSAutoFillValuesForFilling_frameAssociatedFormMetadata) = a1;
  *(v2 + OBJC_IVAR___WBSAutoFillValuesForFilling_controlIDsToValues) = a2;
  v4.super_class = WBSAutoFillValuesForFilling;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t WBSAutoFillValuesForFilling.description.getter()
{
  v1 = v0;
  sub_1C6A74AE0();
  MEMORY[0x1CCA50510](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_1C6A74C80();
  MEMORY[0x1CCA50510](v2);

  MEMORY[0x1CCA50510](0xD000000000000020, 0x80000001C6A9F400);
  v3 = [v0 frameAssociatedFormMetadata];
  v4 = [v3 description];
  v5 = sub_1C6A747B0();
  v7 = v6;

  MEMORY[0x1CCA50510](v5, v7);

  MEMORY[0x1CCA50510](0xD000000000000017, 0x80000001C6A9F430);
  v8 = [v1 controlIDsToValues];
  sub_1C6A74720();

  v9 = sub_1C6A74760();
  v11 = v10;

  MEMORY[0x1CCA50510](v9, v11);

  MEMORY[0x1CCA50510](62, 0xE100000000000000);
  return 0;
}

id WBSAutoFillValuesForFilling.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for WBSAutoFillValuesForFilling()
{
  result = qword_1EC1D4478;
  if (!qword_1EC1D4478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1D4478);
  }

  return result;
}

uint64_t sub_1C6A5245C(uint64_t a1, id *a2)
{
  result = sub_1C6A74790();
  *a2 = 0;
  return result;
}

uint64_t sub_1C6A524D4(uint64_t a1, id *a2)
{
  v3 = sub_1C6A747A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C6A52554@<X0>(uint64_t *a1@<X8>)
{
  sub_1C6A747B0();
  v2 = sub_1C6A74780();

  *a1 = v2;
  return result;
}

uint64_t sub_1C6A52598()
{
  v0 = sub_1C6A747B0();
  v1 = MEMORY[0x1CCA50530](v0);

  return v1;
}

uint64_t sub_1C6A525D4()
{
  sub_1C6A747B0();
  sub_1C6A747D0();
}

uint64_t sub_1C6A52628()
{
  sub_1C6A747B0();
  sub_1C6A74C50();
  sub_1C6A747D0();
  v0 = sub_1C6A74C70();

  return v0;
}

uint64_t sub_1C6A5269C()
{
  v1 = *v0;
  sub_1C6A74C50();
  MEMORY[0x1CCA50990](v1);
  return sub_1C6A74C70();
}

uint64_t sub_1C6A52710()
{
  v1 = *v0;
  sub_1C6A74C50();
  MEMORY[0x1CCA50990](v1);
  return sub_1C6A74C70();
}

uint64_t sub_1C6A52754()
{
  v0 = sub_1C6A747B0();
  v2 = v1;
  if (v0 == sub_1C6A747B0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C6A74C00();
  }

  return v5 & 1;
}

uint64_t sub_1C6A527F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C6A74780();

  *a1 = v2;
  return result;
}

uint64_t sub_1C6A52838@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C6A747B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C6A52864(uint64_t a1)
{
  v2 = sub_1C6A529B0(&qword_1EC1D44B8, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_1C6A529B0(&qword_1EC1D44C0, type metadata accessor for CIImageRepresentationOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6A529B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6A52A9C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id WBSAutoFillFrameAssociatedFormMetadata.init(frameInfo:formMetadata:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrameInfo:a1 formMetadata:a2];

  return v4;
}

id WBSAutoFillFrameAssociatedFormMetadata.init(frameInfo:formMetadata:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___WBSAutoFillFrameAssociatedFormMetadata_frameInfo) = a1;
  *(v2 + OBJC_IVAR___WBSAutoFillFrameAssociatedFormMetadata_formMetadata) = a2;
  v4.super_class = WBSAutoFillFrameAssociatedFormMetadata;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t WBSAutoFillFrameAssociatedFormMetadata.description.getter()
{
  v1 = v0;
  sub_1C6A74AE0();

  swift_getObjectType();
  v2 = sub_1C6A74C80();
  MEMORY[0x1CCA50510](v2);

  MEMORY[0x1CCA50510](0x49656D617266203BLL, 0xEE00203D206F666ELL);
  v3 = [v0 frameInfo];
  v4 = [v3 description];
  v5 = sub_1C6A747B0();
  v7 = v6;

  MEMORY[0x1CCA50510](v5, v7);

  MEMORY[0x1CCA50510](0xD000000000000011, 0x80000001C6A9F5D0);
  v8 = [v1 formMetadata];
  v9 = [v8 description];
  v10 = sub_1C6A747B0();
  v12 = v11;

  MEMORY[0x1CCA50510](v10, v12);

  MEMORY[0x1CCA50510](62, 0xE100000000000000);
  return 60;
}

WBSAutoFillFrameAssociatedFormMetadata __swiftcall WBSAutoFillFrameAssociatedFormMetadata.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.formMetadata = v3;
  result.frameInfo = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for WBSAutoFillFrameAssociatedFormMetadata()
{
  result = qword_1EC1D44E0;
  if (!qword_1EC1D44E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1D44E0);
  }

  return result;
}

uint64_t WBSFormsMetadataProvider.formsAndFrames()(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D44E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  v9 = a1;
  v10 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D44F0);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  return sub_1C6A74940();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C6A530E8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D44F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  if (![a2 formCount])
  {
    return sub_1C6A74910();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v7 + 32))(v14 + v12, v10, v6);
  *(v14 + v13) = v11;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1C6A5348C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6A53568;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [a2 enumerateFormsAndFramesUsingBlock_];
  _Block_release(v15);
}

id sub_1C6A53328(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4500);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  v19[1] = a1;
  v19[2] = a2;
  v14 = a2;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D44F8);
  sub_1C6A74900();
  (*(v11 + 8))(v13, v10);
  result = swift_beginAccess();
  v17 = *(a5 + 16);
  v18 = (v17 + 1);
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v18;
    result = [a6 formCount];
    if (v18 == result)
    {
      return sub_1C6A74910();
    }
  }

  return result;
}

id sub_1C6A5348C(void *a1, void *a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D44F8) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C6A53328(a1, a2, a3, v3 + v8, v10, v11);
}

void sub_1C6A53568(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(a2, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C6A53614()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C6A53670()
{
  v16 = sub_1C6A74560();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 4);
  v17 = *(v0 + 40);
  v5 = *(v0 + 10);
  v19 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4538);
  sub_1C6A74690();
  v6 = v18;
  if (!v18)
  {
    goto LABEL_17;
  }

  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) == v5)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  if (sub_1C6A74A20() != v5)
  {
LABEL_16:

LABEL_17:
    v14 = sub_1C6A74640();
    v13 = sub_1C6A55660(v14, v5);

    return v13;
  }

LABEL_4:
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  *&v19 = MEMORY[0x1E69E7CC0];
  result = sub_1C6A74B40();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1CCA50820](v8, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      if ((v17 & 1) == 0)
      {

        sub_1C6A749A0();
        v12 = sub_1C6A74590();
        sub_1C6A744B0();

        sub_1C6A74550();
        swift_getAtKeyPath();
        sub_1C6A54958(v4, 0);
        (*(v1 + 8))(v3, v16);
      }

      ++v8;
      v9 = v11;
      sub_1C6A74630();
      sub_1C6A74650();

      sub_1C6A74B20();
      sub_1C6A74B50();
      sub_1C6A74B60();
      sub_1C6A74B30();
    }

    while (v5 != v8);

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t WBSExtensionsOnboardingIconView.init()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4508);
  sub_1C6A74680();
  *a1 = v3;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_1F4646090;
  *(a1 + 56) = &unk_1F46460E0;
  *(a1 + 64) = xmmword_1C6A856B0;
  *(a1 + 80) = 6;
  *(a1 + 88) = sub_1C6A74610();
  type metadata accessor for WBSExtensionsOnboardingIconProvider();
  swift_initStaticObject();
  sub_1C6A5A830();
  result = sub_1C6A74680();
  *(a1 + 16) = v3;
  *(a1 + 24) = *(&v3 + 1);
  return result;
}

uint64_t WBSExtensionsOnboardingIconView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[3];
  v17[2] = v1[2];
  v17[3] = v3;
  v4 = v1[5];
  v17[4] = v1[4];
  v17[5] = v4;
  v5 = v1[1];
  v17[0] = *v1;
  v17[1] = v5;
  v6 = swift_allocObject();
  v7 = v1[3];
  *(v6 + 3) = v1[2];
  *(v6 + 4) = v7;
  v8 = v1[5];
  *(v6 + 5) = v1[4];
  *(v6 + 6) = v8;
  v9 = v1[1];
  *(v6 + 1) = *v1;
  *(v6 + 2) = v9;
  v10 = swift_allocObject();
  v11 = v1[3];
  v10[3] = v1[2];
  v10[4] = v11;
  v12 = v1[5];
  v10[5] = v1[4];
  v10[6] = v12;
  v13 = v1[1];
  v10[1] = *v1;
  v10[2] = v13;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4510) + 36));
  sub_1C6A74520();
  sub_1C6A54A00(v17, v16);
  sub_1C6A54A00(v17, v16);
  result = sub_1C6A748D0();
  *v14 = &unk_1C6A85720;
  v14[1] = v10;
  *a1 = sub_1C6A54964;
  a1[1] = v6;
  return result;
}

uint64_t sub_1C6A53B70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1C6A74510();
  v6 = *(a1 + 48);
  if (*(v6 + 16))
  {
    v7 = *(a1 + 64);
    v8 = v5 / (*(a1 + 80) - v7 * (*(a1 + 80) + -1.0));
    v9 = v8 + (1.0 - *(v6 + 32)) * v8 * 0.5;
    v10 = v7 * v9;
    v11 = *(a1 + 72) * v9;
    *a2 = sub_1C6A74580();
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4548);
    sub_1C6A53CA8(a1, (a2 + *(v12 + 44)), v10, v9, v11);
    sub_1C6A74510();
    sub_1C6A746C0();
    sub_1C6A74500();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4550);
    v13 = (a2 + *(result + 36));
    *v13 = v14;
    v13[1] = v15;
    v13[2] = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6A53CA8@<X0>(_OWORD *a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4558);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v45 - v10);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4560);
  v12 = MEMORY[0x1EEE9AC00](v46);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  *v11 = sub_1C6A74570();
  v11[1] = -a3;
  *(v11 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4568);
  v20 = a1[3];
  v50[2] = a1[2];
  v50[3] = v20;
  v21 = a1[5];
  v50[4] = a1[4];
  v50[5] = v21;
  v22 = a1[1];
  v50[0] = *a1;
  v50[1] = v22;
  v23 = *(sub_1C6A53670() + 16);

  v48 = 0;
  v49 = v23;
  swift_getKeyPath();
  v24 = swift_allocObject();
  v25 = a1[3];
  *(v24 + 48) = a1[2];
  *(v24 + 64) = v25;
  v26 = a1[5];
  *(v24 + 80) = a1[4];
  *(v24 + 96) = v26;
  v27 = a1[1];
  *(v24 + 16) = *a1;
  *(v24 + 32) = v27;
  *(v24 + 112) = a4;
  *(v24 + 120) = a5;
  sub_1C6A54A00(a1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4578);
  sub_1C6A54E90();
  sub_1C6A54F70();
  sub_1C6A746B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6A856C0;
  v29 = sub_1C6A745A0();
  *(inited + 32) = v29;
  v30 = sub_1C6A745B0();
  *(inited + 33) = v30;
  v31 = sub_1C6A745C0();
  sub_1C6A745C0();
  if (sub_1C6A745C0() != v29)
  {
    v31 = sub_1C6A745C0();
  }

  sub_1C6A745C0();
  if (sub_1C6A745C0() != v30)
  {
    v31 = sub_1C6A745C0();
  }

  sub_1C6A744F0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_1C6A55520(v11, v17, &qword_1EC1D4558);
  v40 = &v17[*(v46 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_1C6A55520(v17, v19, &qword_1EC1D4560);
  sub_1C6A55588(v19, v14);
  v41 = v47;
  *v47 = 0;
  *(v41 + 8) = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4650);
  sub_1C6A55588(v14, v41 + *(v42 + 48));
  v43 = v41 + *(v42 + 64);
  *v43 = 0;
  v43[8] = 1;
  sub_1C6A555F8(v19);
  return sub_1C6A555F8(v14);
}

uint64_t sub_1C6A540A4@<X0>(unint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>)
{
  v8 = sub_1C6A74600();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6A74660();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a2[3];
  v55 = a2[2];
  v56 = v17;
  v18 = a2[5];
  v57 = a2[4];
  v58 = v18;
  v19 = a2[1];
  v53 = *a2;
  v54 = v19;
  result = sub_1C6A53670();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v16 >= *(result + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v46 = v9;
  v47 = v8;

  (*(v13 + 104))(v15, *MEMORY[0x1E6981630], v12);
  v21 = sub_1C6A74670();

  (*(v13 + 8))(v15, v12);
  sub_1C6A746C0();
  result = sub_1C6A74500();
  v60 = 1;
  *&v59[6] = v53;
  *&v59[22] = v54;
  *&v59[38] = v55;
  v22 = *(a2 + 6);
  if (v16 >= *(v22 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v23 = *(v22 + 8 * v16 + 32);
  if (v16 >= *(a2 + 10) / 2)
  {
    sub_1C6A746F0();
  }

  else
  {
    sub_1C6A74700();
  }

  v26 = v24;
  v27 = v25;
  v52 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4538);
  sub_1C6A74690();
  if (v51)
  {
  }

  result = sub_1C6A746E0();
  v30 = *(a2 + 7);
  if (v16 >= *(v30 + 16))
  {
    goto LABEL_16;
  }

  v31 = v28;
  v32 = v29;
  v33 = *(v30 + 8 * v16 + 32);
  v48 = *v59;
  v49 = *&v59[16];
  *v50 = *&v59[32];
  *&v50[14] = *&v59[46];
  v34 = -0.5;
  if ((v16 & 1) == 0)
  {
    v34 = 0.5;
  }

  v35 = v34 * a4;
  (*(v46 + 104))(v11, *MEMORY[0x1E69814C8], v47);
  v36 = sub_1C6A74620();
  v37 = sub_1C6A746D0();
  v52 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4540);
  sub_1C6A74690();
  v38 = v49;
  *(a3 + 18) = v48;
  v39 = v51;
  v40 = *(a2 + 11);
  *a3 = v21;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 34) = v38;
  *(a3 + 50) = *v50;
  *(a3 + 64) = *&v50[14];
  *(a3 + 72) = v23;
  *(a3 + 80) = v23;
  *(a3 + 88) = v26;
  *(a3 + 96) = v27;
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + 104) = _Q0;
  *(a3 + 120) = v31;
  *(a3 + 128) = v32;
  *(a3 + 136) = v33;
  *(a3 + 144) = 0;
  *(a3 + 152) = v35;
  *(a3 + 160) = v36;
  *(a3 + 168) = 0x4000000000000000;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = v37;
  *(a3 + 200) = v39;
  *(a3 + 208) = v40;
}

uint64_t sub_1C6A5452C(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = sub_1C6A748C0();
  v1[9] = sub_1C6A748B0();
  type metadata accessor for WBSExtensionsOnboardingIconProvider();
  swift_initStaticObject();
  v2 = swift_task_alloc();
  v1[10] = v2;
  *v2 = v1;
  v2[1] = sub_1C6A545EC;

  return sub_1C6A5AA64();
}

uint64_t sub_1C6A545EC(uint64_t a1)
{
  *(*v1 + 88) = a1;

  v3 = sub_1C6A74870();

  return MEMORY[0x1EEE6DFA0](sub_1C6A54730, v3, v2);
}

uint64_t sub_1C6A54730()
{
  v1 = *(v0 + 88);

  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 56);
    *(v0 + 16) = *v3;
    *(v0 + 48) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4538);
    sub_1C6A746A0();
    v4 = v3[1];
    *(v0 + 96) = 1;
    *(v0 + 32) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4540);
    sub_1C6A746A0();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C6A54838@<X0>(uint64_t (**a1)@<X0>(uint64_t@<X8>)@<X8>)
{
  v3 = v1[3];
  v17[2] = v1[2];
  v17[3] = v3;
  v4 = v1[5];
  v17[4] = v1[4];
  v17[5] = v4;
  v5 = v1[1];
  v17[0] = *v1;
  v17[1] = v5;
  v6 = swift_allocObject();
  v7 = v1[3];
  *(v6 + 3) = v1[2];
  *(v6 + 4) = v7;
  v8 = v1[5];
  *(v6 + 5) = v1[4];
  *(v6 + 6) = v8;
  v9 = v1[1];
  *(v6 + 1) = *v1;
  *(v6 + 2) = v9;
  v10 = swift_allocObject();
  v11 = v1[3];
  v10[3] = v1[2];
  v10[4] = v11;
  v12 = v1[5];
  v10[5] = v1[4];
  v10[6] = v12;
  v13 = v1[1];
  v10[1] = *v1;
  v10[2] = v13;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4510) + 36));
  sub_1C6A74520();
  sub_1C6A54A00(v17, v16);
  sub_1C6A54A00(v17, v16);
  result = sub_1C6A748D0();
  *v14 = &unk_1C6A85848;
  v14[1] = v10;
  *a1 = sub_1C6A556F4;
  a1[1] = v6;
  return result;
}

uint64_t sub_1C6A54958(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C6A5496C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C6A556F0;

  return sub_1C6A5452C(v0 + 16);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1C6A54A7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6A54AC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C6A54B2C()
{
  result = qword_1EC1D4518;
  if (!qword_1EC1D4518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D4510);
    sub_1C6A554D8(&qword_1EC1D4520, &qword_1EC1D4528);
    sub_1C6A54C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D4518);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C6A54C2C()
{
  result = qword_1EC1D4530;
  if (!qword_1EC1D4530)
  {
    sub_1C6A74520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D4530);
  }

  return result;
}

uint64_t sub_1C6A54C84()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C6A54D18;

  return sub_1C6A5452C(v0 + 16);
}

uint64_t sub_1C6A54D18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm(uint64_t a1)
{

  sub_1C6A54958(*(v1 + 48), *(v1 + 56));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1C6A54E90()
{
  result = qword_1EC1D4580;
  if (!qword_1EC1D4580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D4570);
    sub_1C6A54F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D4580);
  }

  return result;
}

unint64_t sub_1C6A54F1C()
{
  result = qword_1EC1D4588;
  if (!qword_1EC1D4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D4588);
  }

  return result;
}

unint64_t sub_1C6A54F70()
{
  result = qword_1EC1D4590;
  if (!qword_1EC1D4590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D4578);
    sub_1C6A55028();
    sub_1C6A554D8(&qword_1EC1D4638, &qword_1EC1D4640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D4590);
  }

  return result;
}

unint64_t sub_1C6A55028()
{
  result = qword_1EC1D4598;
  if (!qword_1EC1D4598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D45A0);
    sub_1C6A550E0();
    sub_1C6A554D8(&qword_1EC1D4628, &qword_1EC1D4630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D4598);
  }

  return result;
}

unint64_t sub_1C6A550E0()
{
  result = qword_1EC1D45A8;
  if (!qword_1EC1D45A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D45B0);
    sub_1C6A5516C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D45A8);
  }

  return result;
}

unint64_t sub_1C6A5516C()
{
  result = qword_1EC1D45B8;
  if (!qword_1EC1D45B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D45C0);
    sub_1C6A551F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D45B8);
  }

  return result;
}

unint64_t sub_1C6A551F8()
{
  result = qword_1EC1D45C8;
  if (!qword_1EC1D45C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D45D0);
    sub_1C6A552B0();
    sub_1C6A554D8(&qword_1EC1D4618, &qword_1EC1D4620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D45C8);
  }

  return result;
}

unint64_t sub_1C6A552B0()
{
  result = qword_1EC1D45D8;
  if (!qword_1EC1D45D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D45E0);
    sub_1C6A5533C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D45D8);
  }

  return result;
}

unint64_t sub_1C6A5533C()
{
  result = qword_1EC1D45E8;
  if (!qword_1EC1D45E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D45F0);
    sub_1C6A553C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D45E8);
  }

  return result;
}

unint64_t sub_1C6A553C8()
{
  result = qword_1EC1D45F8;
  if (!qword_1EC1D45F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D4600);
    sub_1C6A55454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D45F8);
  }

  return result;
}

unint64_t sub_1C6A55454()
{
  result = qword_1EC1D4608;
  if (!qword_1EC1D4608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D4610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D4608);
  }

  return result;
}

uint64_t sub_1C6A554D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6A55520(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6A55588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6A555F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6A55660(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v2 = result;
    v4 = sub_1C6A74850();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v2;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v2;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C6A557D8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6A744E0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C6A744D0();
}

uint64_t sub_1C6A55850()
{
  v0 = sub_1C6A744E0();
  __swift_allocate_value_buffer(v0, qword_1EC1D5828);
  __swift_project_value_buffer(v0, qword_1EC1D5828);
  return sub_1C6A744D0();
}

uint64_t WBSAutoFillControlHandle.controlID.getter()
{
  v1 = *(v0 + OBJC_IVAR___WBSAutoFillControlHandle_controlID);

  return v1;
}

id WBSAutoFillControlHandle.init(frameHandle:formID:controlID:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C6A74780();

  v6 = [v4 initWithFrameHandle:a1 formID:a2 controlID:v5];

  return v6;
}

id WBSAutoFillControlHandle.init(frameHandle:formID:controlID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR___WBSAutoFillControlHandle_frameHandle) = a1;
  *(v4 + OBJC_IVAR___WBSAutoFillControlHandle_formID) = a2;
  v5 = (v4 + OBJC_IVAR___WBSAutoFillControlHandle_controlID);
  *v5 = a3;
  v5[1] = a4;
  v7.super_class = WBSAutoFillControlHandle;
  return objc_msgSendSuper2(&v7, sel_init);
}

id WBSAutoFillControlHandle.init(frameHandle:formMetadata:controlMetadata:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrameHandle:a1 formMetadata:a2 controlMetadata:a3];

  return v6;
}

id WBSAutoFillControlHandle.init(frameHandle:formMetadata:controlMetadata:)(void *a1, id a2, void *a3)
{
  v7 = [a2 uniqueID];
  result = [a3 uniqueID];
  if (result)
  {
    v9 = result;
    v10 = [v3 initWithFrameHandle:a1 formID:v7 controlID:result];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WBSAutoFillControlHandle.description.getter()
{
  v1 = v0;
  sub_1C6A74AE0();
  MEMORY[0x1CCA50510](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_1C6A74C80();
  MEMORY[0x1CCA50510](v2);

  MEMORY[0x1CCA50510](0xD000000000000010, 0x80000001C6A9F880);
  v3 = [v0 frameHandle];
  v4 = [v3 description];
  v5 = sub_1C6A747B0();
  v7 = v6;

  MEMORY[0x1CCA50510](v5, v7);

  MEMORY[0x1CCA50510](0x44496D726F66203BLL, 0xEB00000000203D20);
  [v1 formID];
  v8 = sub_1C6A74BE0();
  MEMORY[0x1CCA50510](v8);

  MEMORY[0x1CCA50510](0x6F72746E6F63203BLL, 0xEF22203D2044496CLL);
  v9 = [v1 controlID];
  v10 = sub_1C6A747B0();
  v12 = v11;

  MEMORY[0x1CCA50510](v10, v12);

  MEMORY[0x1CCA50510](15906, 0xE200000000000000);
  return 0;
}

uint64_t WBSAutoFillControlHandle.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1C6A56104(a1, v19);
  if (!v20)
  {
    sub_1C6A56174(v19);
    goto LABEL_10;
  }

  type metadata accessor for WBSAutoFillControlHandle(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v16 = 0;
    return v16 & 1;
  }

  sub_1C6A57054(0, &qword_1EC1D4678);
  v3 = v1;
  v4 = [v1 frameHandle];
  v5 = [v18 frameHandle];
  v6 = sub_1C6A749E0();

  if ((v6 & 1) == 0 || (v7 = [v3 formID], v7 != objc_msgSend(v18, sel_formID)))
  {

    goto LABEL_10;
  }

  v8 = [v3 controlID];
  v9 = sub_1C6A747B0();
  v11 = v10;

  v12 = [v18 controlID];
  v13 = sub_1C6A747B0();
  v15 = v14;

  if (v9 == v13 && v11 == v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1C6A74C00();
  }

  return v16 & 1;
}

uint64_t sub_1C6A56104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6A56174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WBSAutoFillControlHandle.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 frameHandle];
  v5 = [v2 formID];
  v6 = [v2 controlID];
  if (!v6)
  {
    sub_1C6A747B0();
    v6 = sub_1C6A74780();
  }

  v7 = [objc_allocWithZone(WBSAutoFillControlHandle) initWithFrameHandle:v4 formID:v5 controlID:v6];

  result = type metadata accessor for WBSAutoFillControlHandle(v8);
  a1[3] = result;
  *a1 = v7;
  return result;
}

id sub_1C6A56414(uint64_t a1)
{
  v1 = sub_1C6A56FF8(a1, v5);
  type metadata accessor for WBSAutoFillControlHandle(v1);
  swift_dynamicCast();
  v2 = [v4 frameHandle];

  return v2;
}

id sub_1C6A5648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  swift_unknownObjectRetain();
  v8 = v7(v10, a3, a4);
  __swift_destroy_boxed_opaque_existential_0(v10);

  return v8;
}

char *sub_1C6A5651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, uint64_t (*)(), uint64_t))
{
  sub_1C6A56FF8(a1, v33);
  sub_1C6A57054(0, &qword_1EC1D4690);
  swift_dynamicCast();
  v11 = v33[5];
  sub_1C6A5709C();
  v12 = v11;
  sub_1C6A74A80();
  if (!*(a5 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = sub_1C6A63EF8(v33);
  if ((v14 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = *(*(a5 + 56) + 8 * v13);

  sub_1C6A57104(v33);
  v6 = sub_1C6A567C8(v15);

  if (!(v6 >> 62))
  {
    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = a3;
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_17:

    v19 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v29 = swift_allocObject();
    *(v29 + 16) = v32;
    *(v29 + 24) = a4;

    a6(v12, v19, sub_1C6A57158, v29);
  }

LABEL_16:
  v16 = sub_1C6A74A20();
  v32 = a3;
  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_5:
  v33[0] = MEMORY[0x1E69E7CC0];
  result = sub_1C6A6382C(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v30 = a4;
    v31 = a6;
    v18 = 0;
    v19 = v33[0];
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1CCA50820](v18, v6);
      }

      else
      {
        v20 = *(v6 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = [v20 controlID];
      v23 = sub_1C6A747B0();
      v25 = v24;

      v33[0] = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1C6A6382C((v26 > 1), v27 + 1, 1);
        v19 = v33[0];
      }

      ++v18;
      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (v16 != v18);

    a6 = v31;
    a4 = v30;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6A567C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1C6A74B40();
    v4 = a1 + 32;
    do
    {
      v5 = sub_1C6A56FF8(v4, &v6);
      type metadata accessor for WBSAutoFillControlHandle(v5);
      swift_dynamicCast();
      sub_1C6A74B20();
      sub_1C6A74B50();
      sub_1C6A74B60();
      sub_1C6A74B30();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1C6A5689C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v11[3] = swift_getObjectType();
  v11[0] = a2;
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  swift_unknownObjectRetain();
  v7(v11, a3, sub_1C6A56F94, v9);

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_1C6A56A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C6A74820();
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1C6A57190;
  v13[3] = &block_descriptor_0;
  v10 = _Block_copy(v13);
  v11 = *(a5 + 16);

  v11(a5, a1, v9, v10);
  _Block_release(v10);
}

uint64_t sub_1C6A56B60(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id WBSAutoFillControlHandle.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void _sSo24WBSAutoFillControlHandleC14SafariSharedUIE29asynchronouslyEnumerateFrames2on4with5block17completionHandlerySo17OS_dispatch_queueC_SayABGySo08_WKFrameD0C_SaySSGyyctcyyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  type metadata accessor for WBSAutoFillControlHandle(a1);
  v11 = sub_1C6A74820();
  v25 = sub_1C6A56414;
  v26 = 0;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C6A5648C;
  v24 = &block_descriptor_8;
  v12 = _Block_copy(&v21);

  v13 = [v11 safari:v12 dictionaryOfArraysByMappingObjectsToKeysUsingBlock:?];

  _Block_release(v12);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4688);
    v14 = sub_1C6A74720();

    v15 = sub_1C6A74710();
    v16 = [v15 allKeys];
    if (v16)
    {
      v17 = v16;

      v18 = swift_allocObject();
      v18[2] = v14;
      v18[3] = a3;
      v18[4] = a4;
      v25 = sub_1C6A56F88;
      v26 = v18;
      v21 = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_1C6A5689C;
      v24 = &block_descriptor_14;
      v19 = _Block_copy(&v21);

      v25 = a5;
      v26 = a6;
      v21 = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_1C6A57190;
      v24 = &block_descriptor_17;
      v20 = _Block_copy(&v21);

      [v17 safari:a1 enumerateAsynchronouslyOnQueue:v19 enumerationBlock:v20 completionBlock:?];
      _Block_release(v20);
      _Block_release(v19);

      return;
    }
  }

  __break(1u);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C6A56FF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C6A57054(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1C6A5709C()
{
  result = qword_1EC1D4698;
  if (!qword_1EC1D4698)
  {
    sub_1C6A57054(255, &qword_1EC1D4690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D4698);
  }

  return result;
}

void sub_1C6A571B4(uint64_t a1, id a2)
{
  v3 = [a2 perform];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4748);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1C6A5F434;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6A5740C;
  aBlock[3] = &block_descriptor_1;
  v10 = _Block_copy(aBlock);

  [v3 addFinishBlock_];
  _Block_release(v10);
}

void *sub_1C6A57384(void *result, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4748);
    return sub_1C6A74880();
  }

  else if (result)
  {
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4748);
    return sub_1C6A74890();
  }

  return result;
}

void sub_1C6A5740C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1C6A57498(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C6A74C40();
  v6 = v5;
  if (qword_1EC1D4410 != -1)
  {
    swift_once();
  }

  v7 = sub_1C6A744E0();
  __swift_project_value_buffer(v7, qword_1EC1D5810);

  oslog = sub_1C6A744C0();
  v8 = sub_1C6A74990();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1C6A63264(a1, a2, &v13);
    *(v9 + 12) = 2082;
    v11 = sub_1C6A63264(v4, v6, &v13);

    *(v9 + 14) = v11;
    _os_log_impl(&dword_1C6968000, oslog, v8, "%s %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA51EA0](v10, -1, -1);
    MEMORY[0x1CCA51EA0](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t static WBSExtensionsOnboardingIconProvider.shared.getter()
{
  type metadata accessor for WBSExtensionsOnboardingIconProvider();

  return swift_initStaticObject();
}

unint64_t sub_1C6A576B4()
{
  v1 = *v0;
  strcpy(v23, "relationships");
  HIWORD(v23[1]) = -4864;
  sub_1C6A74A80();
  v2 = sub_1C6A74740();
  sub_1C6A57104(&v32);
  if (!v2)
  {
    return 0;
  }

  v23[0] = 0x7361766E6163;
  v23[1] = 0xE600000000000000;
  sub_1C6A74A80();
  v3 = sub_1C6A74740();

  sub_1C6A57104(&v32);
  if (!v3)
  {
    return 0;
  }

  v23[0] = 1635017060;
  v23[1] = 0xE400000000000000;
  sub_1C6A74A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46F8);
  v4 = sub_1C6A74750();

  result = sub_1C6A57104(&v32);
  v22 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      strcpy(v23, "relationships");
      HIWORD(v23[1]) = -4864;
      sub_1C6A74A80();
      v8 = sub_1C6A74740();
      result = sub_1C6A57104(&v32);
      if (v8)
      {
        strcpy(v23, "contents");
        BYTE1(v23[1]) = 0;
        WORD1(v23[1]) = 0;
        HIDWORD(v23[1]) = -402653184;
        sub_1C6A74A80();
        v9 = sub_1C6A74740();

        result = sub_1C6A57104(&v32);
        if (v9)
        {
          v23[0] = 1635017060;
          v23[1] = 0xE400000000000000;
          sub_1C6A74A80();
          v10 = sub_1C6A74750();

          sub_1C6A57104(&v32);

          if (v10)
          {
            break;
          }
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_11;
      }
    }

    v6 = v7;
  }

LABEL_11:
  v11 = *(v22 + 16);
  if (v6 == v11)
  {

    return 0;
  }

  if (v6 >= v11)
  {
    __break(1u);
    goto LABEL_25;
  }

  v23[0] = *(v22 + 32 + 8 * v6);
  result = sub_1C6A57CB8(&v32);
  v12 = v32;
  if (v32)
  {

    v13 = swift_allocObject();
    v13[2] = sub_1C6A58014;
    v13[3] = 0;
    v13[4] = v12;
    v13[5] = sub_1C6A57E40;
    v13[6] = 0;
    v13[7] = sub_1C6A5DD40;
    v13[8] = 0;
    v13[9] = sub_1C6A5DD50;
    v13[10] = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *&v24 = v12;
    *(&v24 + 1) = sub_1C6A57E40;
    *&v25 = 0;
    *(&v25 + 1) = sub_1C6A5DD40;
    *&v26 = 0;
    *(&v26 + 1) = sub_1C6A5F4D8;
    *&v27 = v13;
    *(&v27 + 1) = sub_1C6A5F54C;
    *&v28 = v14;
    *(&v28 + 1) = sub_1C6A5C730;
    v29 = 0;
    v30 = sub_1C6A5C794;
    v31 = 0;
    v52 = 0;
    v50 = v27;
    v51 = v28;
    v47 = v24;
    v48 = v25;
    v49 = v26;

    v15 = sub_1C6A5D50C();
    v16 = sub_1C6A5D6BC(v15, 6, *(v12 + 16));
    if (v17)
    {
      v18 = *(v12 + 16);
    }

    else
    {
      v18 = v16;
    }

    result = sub_1C6A5D50C();
    if (v18 >= result)
    {
      v19 = result;
      if ((result & 0x8000000000000000) == 0)
      {
        v20 = *(v12 + 16);
        if (v20 >= result && v20 >= v18)
        {

          sub_1C6A5F554(&v24, &qword_1EC1D4750);
          *&v32 = v12;
          *(&v32 + 1) = v12 + 32;
          v33 = v19;
          v34 = (2 * v18) | 1;
          v35 = sub_1C6A57E40;
          v36 = 0;
          v37 = sub_1C6A5DD40;
          v38 = 0;
          v39 = sub_1C6A5F4D8;
          v40 = v13;
          v41 = sub_1C6A5F54C;
          v42 = v14;
          v43 = sub_1C6A5C730;
          v44 = 0;
          v45 = sub_1C6A5C794;
          v46 = 0;
          sub_1C6A5F5B4(&v32, v23, &qword_1EC1D4758);
          v21 = sub_1C6A5DD64(&v32);
          sub_1C6A5F554(&v32, &qword_1EC1D4758);
          sub_1C6A5F554(&v32, &qword_1EC1D4758);
          return v21;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C6A57CB8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C6A74A80();
  v2 = sub_1C6A74740();
  result = sub_1C6A57104(v5);
  if (v2)
  {
    sub_1C6A74A80();
    v4 = sub_1C6A74740();

    result = sub_1C6A57104(v5);
    if (v4)
    {
      sub_1C6A74A80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46F8);
      v2 = sub_1C6A74750();

      result = sub_1C6A57104(v5);
    }

    else
    {
      v2 = 0;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C6A57E40@<X0>(uint64_t *a1@<X8>)
{
  sub_1C6A74A80();
  v2 = sub_1C6A74740();
  result = sub_1C6A57104(v6);
  if (!v2)
  {
    goto LABEL_5;
  }

  sub_1C6A74A80();
  v4 = sub_1C6A74740();

  result = sub_1C6A57104(v6);
  if (v4)
  {
    sub_1C6A74A80();
    v5 = sub_1C6A74740();

    result = sub_1C6A57104(v6);
    if (v5)
    {
      sub_1C6A74A80();
      v4 = sub_1C6A74740();

      result = sub_1C6A57104(v6);
      goto LABEL_6;
    }

LABEL_5:
    v4 = 0;
  }

LABEL_6:
  *a1 = v4;
  return result;
}

void sub_1C6A58014(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E698C9A8]);
  v3 = sub_1C6A74710();
  v4 = [v2 initWithDictionary_];

  *a1 = v4;
}

uint64_t sub_1C6A58098@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 URLWithSize:*MEMORY[0x1E698C668] cropStyle:*MEMORY[0x1E698C698] format:{256.0, 256.0}];
  if (v3)
  {
    v4 = v3;
    sub_1C6A74360();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C6A743A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1C6A58160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = sub_1C6A743A0();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v3[18] = *(v5 + 64);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46D0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4710);
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4718);
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4720);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6A58384, 0, 0);
}

uint64_t sub_1C6A58384(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = 0;
  v5 = *(v3 + 208);
  v43 = *(v3 + 200);
  v40 = (v5 + 48);
  v41 = (v5 + 56);
  v42 = *(v3 + 136);
  v6 = *(*(v3 + 120) + 16);
  v39 = v6;
  while (1)
  {
    if (v4 == v6)
    {
      v8 = 1;
      v9 = v6;
    }

    else
    {
      if (v4 >= v6)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return MEMORY[0x1EEE6D8C8](a1, a2, a3);
      }

      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_20;
      }

      v11 = *(v3 + 216);
      v10 = *(v3 + 224);
      v12 = *(v3 + 128);
      v13 = *(v3 + 120) + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v4;
      v14 = *(v43 + 48);
      *v11 = v4;
      (*(v42 + 16))(&v11[v14], v13, v12);
      sub_1C6A55520(v11, v10, &qword_1EC1D4718);
      v8 = 0;
    }

    v16 = *(v3 + 224);
    v15 = *(v3 + 232);
    v17 = *(v3 + 200);
    (*v41)(v16, v8, 1, v17);
    sub_1C6A55520(v16, v15, &qword_1EC1D4720);
    if ((*v40)(v15, 1, v17) == 1)
    {
      break;
    }

    v47 = v9;
    v18 = *(v3 + 232);
    v19 = *(v3 + 168);
    v20 = *(v3 + 152);
    v44 = v19;
    v21 = *(v3 + 128);
    v45 = *v18;
    v46 = *(v3 + 160);
    v22 = *(v43 + 48);
    v23 = sub_1C6A748F0();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v19, 1, 1, v23);
    v25 = *(v42 + 32);
    v25(v20, v18 + v22, v21);
    v26 = (*(v42 + 80) + 40) & ~*(v42 + 80);
    v27 = swift_allocObject();
    v27[2] = 0;
    v28 = v27 + 2;
    v27[3] = 0;
    v27[4] = v45;
    v25(v27 + v26, v20, v21);
    sub_1C6A5F5B4(v44, v46, &qword_1EC1D46D0);
    v29 = (*(v24 + 48))(v46, 1, v23);
    v30 = *(v3 + 160);
    if (v29 == 1)
    {
      sub_1C6A5F554(*(v3 + 160), &qword_1EC1D46D0);
      if (*v28)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1C6A748E0();
      (*(v24 + 8))(v30, v23);
      if (*v28)
      {
LABEL_11:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v31 = sub_1C6A74870();
        v33 = v32;
        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

    v31 = 0;
    v33 = 0;
LABEL_14:
    v4 = v47;
    v6 = v39;
    v34 = **(v3 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4700);
    v35 = v33 | v31;
    if (v33 | v31)
    {
      v35 = v3 + 48;
      *(v3 + 48) = 0;
      *(v3 + 56) = 0;
      *(v3 + 64) = v31;
      *(v3 + 72) = v33;
    }

    v7 = *(v3 + 168);
    *(v3 + 80) = 1;
    *(v3 + 88) = v35;
    *(v3 + 96) = v34;
    swift_task_create();

    a1 = sub_1C6A5F554(v7, &qword_1EC1D46D0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4728);
  sub_1C6A74960();
  *(v3 + 240) = MEMORY[0x1E69E7CC0];
  v36 = sub_1C6A5F288();
  v37 = swift_task_alloc();
  *(v3 + 248) = v37;
  *v37 = v3;
  v37[1] = sub_1C6A58868;
  a2 = *(v3 + 176);
  a1 = v3 + 16;
  a3 = v36;

  return MEMORY[0x1EEE6D8C8](a1, a2, a3);
}

uint64_t sub_1C6A58868()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    (*(v2[23] + 8))(v2[24], v2[22]);

    v3 = sub_1C6A58CE4;
  }

  else
  {
    v3 = sub_1C6A589A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6A589A0()
{
  v27 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *(v0 + 32);
    sub_1C6A5E820(v2, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 240);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1C6A5C4B4(0, v6[2] + 1, 1, *(v0 + 240));
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1C6A5C4B4((v7 > 1), v8 + 1, 1, v6);
    }

    sub_1C6A5F2EC(v3, v2, v4, v1);
    v6[2] = v8 + 1;
    v9 = &v6[3 * v8];
    v9[4] = v3;
    v9[5] = v2;
    v9[6] = v4;
    *(v0 + 240) = v6;
    v10 = sub_1C6A5F288();
    v11 = swift_task_alloc();
    *(v0 + 248) = v11;
    *v11 = v0;
    v11[1] = sub_1C6A58868;
    v12 = *(v0 + 176);

    return MEMORY[0x1EEE6D8C8](v0 + 16, v12, v10);
  }

  else
  {
    v13 = *(v0 + 256);
    v14 = *(v0 + 240);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_1C6A5F2EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
    v26 = v14;

    sub_1C6A5C8B0(&v26);
    if (v13)
    {
    }

    else
    {

      v15 = v26;
      v16 = v26[2];
      if (v16)
      {
        v26 = MEMORY[0x1E69E7CC0];
        sub_1C6A6384C(0, v16, 0);
        v17 = v26;
        v18 = v15 + 6;
        do
        {
          v19 = *(v18 - 1);
          v20 = *v18;
          sub_1C6A5E820(v19, *v18);
          v26 = v17;
          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            sub_1C6A6384C((v21 > 1), v22 + 1, 1);
            v17 = v26;
          }

          v18 += 3;
          v17[2] = v22 + 1;
          v23 = &v17[2 * v22];
          v23[4] = v19;
          v23[5] = v20;
          --v16;
        }

        while (v16);
      }

      else
      {

        v17 = MEMORY[0x1E69E7CC0];
      }

      **(v0 + 104) = v17;

      v24 = *(v0 + 8);

      return v24();
    }
  }
}

uint64_t sub_1C6A58CE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6A58D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C6A58DBC, 0, 0);
}

uint64_t sub_1C6A58DBC()
{
  **(v0 + 16) = *(v0 + 24);
  *(v0 + 40) = [objc_opt_self() sharedSession];
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C6A58E88;
  v2 = *(v0 + 32);

  return MEMORY[0x1EEDC6268](v2, 0);
}

uint64_t sub_1C6A58E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 56) = v3;

  if (v3)
  {
    v9 = sub_1C6A58FFC;
  }

  else
  {

    *(v8 + 64) = a3;
    *(v8 + 72) = a2;
    *(v8 + 80) = a1;
    v9 = sub_1C6A58FCC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C6A58FCC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  *(v2 + 8) = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  *(v2 + 24) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1C6A58FFC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6A59060()
{
  *(v1 + 56) = v0;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1C6A590F0;

  return sub_1C6A5ECBC();
}

uint64_t sub_1C6A590F0(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C6A591F0, 0, 0);
}

uint64_t sub_1C6A591F0()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = [*(v0 + 72) responseDataItems];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46F8);
  v4 = sub_1C6A74830();

  if (!*(v4 + 16))
  {

LABEL_10:
    if (qword_1EC1D4410 != -1)
    {
      swift_once();
    }

    v10 = sub_1C6A744E0();
    __swift_project_value_buffer(v10, qword_1EC1D5810);
    v11 = sub_1C6A744C0();
    v12 = sub_1C6A74990();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_16;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "AMS result for app store editorial list icon download did not contain any data";
LABEL_14:
    _os_log_impl(&dword_1C6968000, v11, v12, v14, v13, 2u);
    v15 = v13;
    goto LABEL_15;
  }

  v5 = sub_1C6A576B4();
  *(v0 + 80) = v5;

  if (!v5)
  {
    if (qword_1EC1D4410 != -1)
    {
      swift_once();
    }

    v17 = sub_1C6A744E0();
    __swift_project_value_buffer(v17, qword_1EC1D5810);
    v11 = sub_1C6A744C0();
    v12 = sub_1C6A74990();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_16;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Unable to parse icon URLs from AMS response";
    goto LABEL_14;
  }

  if (*(v5 + 16) == 6)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4700);
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *(v7 + 16) = v5;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4708);
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_1C6A59624;

    return MEMORY[0x1EEE6DD58](v0 + 40, v6, v8, 0, 0, &unk_1C6A85A48, v7, v6);
  }

  if (qword_1EC1D4410 != -1)
  {
    swift_once();
  }

  v18 = sub_1C6A744E0();
  __swift_project_value_buffer(v18, qword_1EC1D5810);

  v11 = sub_1C6A744C0();
  v19 = sub_1C6A74990();
  if (!os_log_type_enabled(v11, v19))
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_16;
  }

  v20 = swift_slowAlloc();
  *v20 = 134218240;
  *(v20 + 4) = 6;
  *(v20 + 12) = 2048;
  v21 = *(v5 + 16);

  *(v20 + 14) = v21;

  _os_log_impl(&dword_1C6968000, v11, v19, "Expected to parse %ld icon URLs from AMS response, but got %ld", v20, 0x16u);
  v15 = v20;
LABEL_15:
  MEMORY[0x1CCA51EA0](v15, -1, -1);
LABEL_16:

LABEL_17:
  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_1C6A59624()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1C6A597B0;
  }

  else
  {

    v2 = sub_1C6A59748;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6A59748()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C6A597B0()
{
  v1 = v0[13];
  v2 = v0[9];

  swift_getErrorValue();
  sub_1C6A57498(0xD00000000000002CLL, 0x80000001C6A9FB00);

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_1C6A5986C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1C6A59900;

  return sub_1C6A59060();
}

uint64_t sub_1C6A59900(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C6A59A00, 0, 0);
}

uint64_t sub_1C6A59A00()
{
  if (*(v0 + 40))
  {
    sub_1C6A5BDB4(*(v0 + 40));
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  **(v0 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C6A59A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C6A5F5B4(a3, v25 - v10, &qword_1EC1D46D0);
  v12 = sub_1C6A748F0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C6A5F554(v11, &qword_1EC1D46D0);
  }

  else
  {
    sub_1C6A748E0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C6A74870();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C6A747C0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4508);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1C6A5F554(a3, &qword_1EC1D46D0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C6A5F554(a3, &qword_1EC1D46D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4508);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C6A59D9C()
{
  v34[1] = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v28 = &v27 - v1;
  v2 = sub_1C6A743A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC1D4430 != -1)
  {
    swift_once();
  }

  v6 = off_1EC1D46B8;
  v7 = *(off_1EC1D46B8 + 2);
  if (v7)
  {
    v8 = objc_opt_self();
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = &v6[(*(v9 + 64) + 32) & ~*(v9 + 64)];
    v32 = *(v9 + 56);
    v33 = v10;
    v12 = (v9 - 8);
    v30 = "OnboardingExtensionIconCache";
    v31 = v9;
    v13 = &selRef__updateProgressForFinishingInitialContentExtraction;
    v10(v5, v11, v2);
    while (1)
    {
      v16 = [v8 v13[430]];
      sub_1C6A74370();
      v17 = sub_1C6A74780();

      v18 = [v16 fileExistsAtPath_];

      if (!v18)
      {
        goto LABEL_6;
      }

      v19 = [v8 v13[430]];
      v20 = sub_1C6A74340();
      v34[0] = 0;
      v21 = [v19 removeItemAtURL:v20 error:v34];

      if (!v21)
      {
        break;
      }

      v22 = *v12;
      v23 = v34[0];
      v22(v5, v2);
LABEL_7:
      v11 += v32;
      --v7;
      v13 = &selRef__updateProgressForFinishingInitialContentExtraction;
      if (!v7)
      {
        goto LABEL_12;
      }

      v33(v5, v11, v2);
    }

    v14 = v34[0];
    v15 = sub_1C6A74310();

    swift_willThrow();
    swift_getErrorValue();
    sub_1C6A57498(0xD000000000000024, v30 | 0x8000000000000000);

LABEL_6:
    (*v12)(v5, v2);
    goto LABEL_7;
  }

LABEL_12:
  v24 = sub_1C6A74440();
  v25 = v28;
  (*(*(v24 - 8) + 56))(v28, 1, 1, v24);
  sub_1C6A5E8C8(v25);
  *(v29 + 24) = 0;
}

uint64_t sub_1C6A5A128()
{
  v0 = sub_1C6A743A0();
  __swift_allocate_value_buffer(v0, qword_1EC1D46A0);
  __swift_project_value_buffer(v0, qword_1EC1D46A0);
  return sub_1C6A5A174();
}

uint64_t sub_1C6A5A174()
{
  v0 = sub_1C6A74330();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C6A743A0();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 safari_safariLibraryDirectory];

  sub_1C6A74360();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1D4910);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6A85940;
  *(v9 + 32) = 0x736568636143;
  *(v9 + 40) = 0xE600000000000000;
  v10 = [objc_opt_self() safari_safariApplicationPlatformBundleIdentifier];
  v11 = sub_1C6A747B0();
  v13 = v12;

  *(v9 + 48) = v11;
  *(v9 + 56) = v13;
  *(v9 + 64) = 0xD00000000000001CLL;
  *(v9 + 72) = 0x80000001C6A9FC30;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F58], v0);
  sub_1C6A5F61C();
  sub_1C6A74390();

  (*(v1 + 8))(v3, v0);
  return (*(v4 + 8))(v6, v16);
}

char *sub_1C6A5A418()
{
  result = sub_1C6A5A438();
  off_1EC1D46B8 = result;
  return result;
}

char *sub_1C6A5A438()
{
  v0 = sub_1C6A743A0();
  v26 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v2 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1E69E7CC0];
  v3 = 6;
  result = sub_1C6A6382C(0, 6, 0);
  v5 = 0;
  v6 = 1;
  v7 = v30;
  do
  {
    if (v5)
    {
      goto LABEL_18;
    }

    v8 = v0;
    v27 = v6;
    v28 = 1852793705;
    v29 = 0xE400000000000000;
    v9 = sub_1C6A74BE0();
    MEMORY[0x1CCA50510](v9);

    result = MEMORY[0x1CCA50510](1735290926, 0xE400000000000000);
    v10 = v28;
    v11 = v29;
    v30 = v7;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      result = sub_1C6A6382C((v12 > 1), v14, 1);
      v14 = v13 + 1;
      v7 = v30;
    }

    *(v7 + 16) = v14;
    v15 = v7 + 16 * v13;
    *(v15 + 32) = v10;
    *(v15 + 40) = v11;
    v5 = v6 == 6;
    if (v6 == 6)
    {
      v6 = 0;
    }

    else if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v0 = v8;
    --v3;
  }

  while (v3);
  v25 = v2;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1C6A6380C(0, v14, 0);
  v17 = v28;
  v18 = v25;
  v24[1] = v26 + 32;
  v19 = v13 + 1;
  v20 = v7 + 40;
  do
  {
    v21 = qword_1EC1D4428;

    if (v21 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_1EC1D46A0);
    sub_1C6A74350();

    v28 = v17;
    v23 = *(v17 + 16);
    v22 = *(v17 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1C6A6380C(v22 > 1, v23 + 1, 1);
      v17 = v28;
    }

    *(v17 + 16) = v23 + 1;
    (*(v26 + 32))(v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, v18, v8);
    v20 += 16;
    --v19;
  }

  while (v19);

  return v17;
}

uint64_t sub_1C6A5A730@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() safari_browserDefaults];
  v3 = sub_1C6A74780();
  v4 = [v2 safari:v3 dateForKey:?];

  if (v4)
  {
    sub_1C6A74410();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C6A74440();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

BOOL sub_1C6A5A830()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46C0);
  (MEMORY[0x1EEE9AC00])();
  v1 = &v15 - v0;
  v2 = sub_1C6A74440();
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  sub_1C6A5A730(v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1C6A5F554(v1, &qword_1EC1D46C0);
    return 0;
  }

  (*(v3 + 32))(v8, v1, v2);
  sub_1C6A74430();
  sub_1C6A743F0();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v6, v2);
  if (qword_1EC1D4420 != -1)
  {
    swift_once();
  }

  v12 = *&qword_1EC1D5840;
  v11(v8, v2);
  if (v10 >= v12)
  {
    return 0;
  }

  return sub_1C6A5E534();
}

uint64_t sub_1C6A5AA64()
{
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46C0);
  v1[13] = swift_task_alloc();
  v1[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46C8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4860);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46D0);
  v1[17] = swift_task_alloc();
  v2 = sub_1C6A743A0();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  sub_1C6A748C0();
  v1[21] = sub_1C6A748B0();
  v4 = sub_1C6A74870();
  v1[22] = v4;
  v1[23] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C6A5AC3C, v4, v3);
}

uint64_t sub_1C6A5AC3C()
{
  if (!sub_1C6A5A830())
  {
    goto LABEL_20;
  }

  v1 = v0[12];
  v2 = *(v1 + 3);
  if (v2)
  {
    goto LABEL_17;
  }

  if (qword_1EC1D4430 != -1)
  {
    goto LABEL_27;
  }

LABEL_4:
  v3 = off_1EC1D46B8;
  v4 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  v5 = *(off_1EC1D46B8 + 2);
  if (v5)
  {
    v28 = v0[19];
    v29 = (v28 + 8);
    v25 = v1;
    v26 = off_1EC1D46B8;
    v27 = v0;
    for (i = 0; ; ++i)
    {
      while (1)
      {
        if (i >= v3[2])
        {
          __break(1u);
LABEL_27:
          swift_once();
          goto LABEL_4;
        }

        (*(v28 + 16))(v0[20], v3 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * i, v0[18]);
        v7 = sub_1C6A743B0();
        v9 = v8;
        v1 = sub_1C6A743C0();
        v10 = CGDataProviderCreateWithCFData(v1);

        v11 = v0[20];
        v12 = v0[18];
        if (v10)
        {
          break;
        }

        sub_1C6A5E874(v7, v9);
        (*v29)(v11, v12);
LABEL_7:
        ++i;
        v3 = v26;
        v0 = v27;
        if (v5 == i)
        {
          v1 = v25;
          goto LABEL_16;
        }
      }

      v1 = CGImageCreateWithPNGDataProvider(v10, 0, 1, kCGRenderingIntentDefault);

      sub_1C6A5E874(v7, v9);
      v13 = (*v29)(v11, v12);
      if (!v1)
      {
        goto LABEL_7;
      }

      MEMORY[0x1CCA50540](v13);
      v3 = v26;
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C6A74840();
      }

      sub_1C6A74860();
      v4 = v30;
      v1 = v25;
      v0 = v27;
      if (v5 - 1 == i)
      {
        break;
      }
    }
  }

LABEL_16:
  *(v1 + 3) = v4;

  v2 = *(v1 + 3);
  if (v2)
  {
LABEL_17:

    v14 = v0[1];

    return v14(v2);
  }

  else
  {
LABEL_20:
    v0[24] = 0;
    v16 = v0[12];
    v17 = *(v16 + 16);
    v0[25] = v17;
    if (v17)
    {

      v18 = swift_task_alloc();
      v0[26] = v18;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4508);
      *v18 = v0;
      v18[1] = sub_1C6A5B158;
      v20 = v0 + 10;
    }

    else
    {
      v21 = v0[17];
      sub_1C6A59D9C();
      v22 = sub_1C6A748F0();
      (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v16;

      v17 = sub_1C6A59A88(0, 0, v21, &unk_1C6A85990, v23);
      v0[27] = v17;
      *(v16 + 16) = v17;

      v24 = swift_task_alloc();
      v0[28] = v24;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4508);
      *v24 = v0;
      v24[1] = sub_1C6A5B330;
      v20 = v0 + 8;
    }

    return MEMORY[0x1EEE6DA40](v20, v17, v19);
  }
}

uint64_t sub_1C6A5B158()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1C6A5B278, v3, v2);
}

uint64_t sub_1C6A5B278()
{

  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C6A5B330()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1C6A5B474, v3, v2);
}

uint64_t sub_1C6A5B474()
{

  v1 = v0[8];
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    v73 = v0;
    if (v1 >> 62)
    {
LABEL_31:
      if (sub_1C6A74A20() == 6)
      {
        v79 = sub_1C6A74A20();
        if (!v79)
        {
          v74 = MEMORY[0x1E69E7CC0];
          goto LABEL_36;
        }

        v81 = v1 & 0xC000000000000001;
LABEL_5:
        v3 = 0;
        name = *MEMORY[0x1E695F1C0];
        v77 = *MEMORY[0x1E695F910];
        v74 = MEMORY[0x1E69E7CC0];
        v4 = v2;
        do
        {
          v5 = v3;
          while (1)
          {
            if (v81)
            {
              v6 = MEMORY[0x1CCA50820](v5, v1);
            }

            else
            {
              if (v5 >= *(v2 + 16))
              {
                goto LABEL_30;
              }

              v6 = *(v1 + 8 * v5 + 32);
            }

            v7 = v6;
            v3 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              __break(1u);
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

            v8 = v1;
            v9 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
            v10 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
            DeviceRGB = [v10 colorSpace];
            if (!DeviceRGB)
            {
              DeviceRGB = CGColorSpaceCreateWithName(name);
              if (!DeviceRGB)
              {
                DeviceRGB = CGColorSpaceCreateDeviceRGB();
              }
            }

            v12 = DeviceRGB;
            type metadata accessor for CIImageRepresentationOption(0);
            sub_1C6A5E7C8();
            v13 = sub_1C6A74710();
            v0 = [v9 PNGRepresentationOfImage:v10 format:v77 colorSpace:v12 options:v13];

            if (v0)
            {
              break;
            }

            ++v5;
            v1 = v8;
            v2 = v4;
            if (v3 == v79)
            {
              goto LABEL_36;
            }
          }

          v14 = sub_1C6A743D0();
          v16 = v15;

          v17 = v16;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_1C6A5C2A4(0, *(v74 + 2) + 1, 1, v74);
          }

          v1 = v8;
          v19 = *(v74 + 2);
          v18 = *(v74 + 3);
          v0 = (v19 + 1);
          if (v19 >= v18 >> 1)
          {
            v74 = sub_1C6A5C2A4((v18 > 1), v19 + 1, 1, v74);
          }

          *(v74 + 2) = v0;
          v20 = &v74[16 * v19];
          *(v20 + 4) = v14;
          *(v20 + 5) = v17;
          v2 = v4;
        }

        while (v3 != v79);
LABEL_36:
        v28 = *(v74 + 2);
        if (v28 != 6)
        {
          v0 = v73;
          if (qword_1EC1D4410 != -1)
          {
            swift_once();
          }

          v33 = sub_1C6A744E0();
          __swift_project_value_buffer(v33, qword_1EC1D5810);

          v34 = sub_1C6A744C0();
          v35 = sub_1C6A74990();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 134218240;
            *(v36 + 4) = 6;
            *(v36 + 12) = 2048;
            *(v36 + 14) = v28;

            _os_log_impl(&dword_1C6968000, v34, v35, "Expected %ld icons, but received %ld", v36, 0x16u);
            MEMORY[0x1CCA51EA0](v36, -1, -1);
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          goto LABEL_56;
        }

        v0 = [objc_opt_self() defaultManager];
        v29 = v73;
        if (qword_1EC1D4428 != -1)
        {
LABEL_61:
          swift_once();
        }

        __swift_project_value_buffer(v29[18], qword_1EC1D46A0);
        v30 = sub_1C6A74340();
        v31 = [v0 safari:v30 ensureDirectoryExists:?];

        if (v31)
        {
          sub_1C6A74360();

          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        v71 = v1;
        v37 = v29[16];
        (*(v29[19] + 56))(v37, v32, 1, v29[18]);
        sub_1C6A5F554(v37, &qword_1EC1D4860);
        if (qword_1EC1D4430 != -1)
        {
          swift_once();
        }

        v38 = off_1EC1D46B8;
        if (*(off_1EC1D46B8 + 2))
        {
          v0 = v73;
          v39 = v73[15];
          v40 = v73[18];
          v41 = v73[19];
          v42 = *(v74 + 4);
          v43 = *(v74 + 5);
          v29 = v73[24];
          v45 = *(v41 + 16);
          v44 = v41 + 16;
          v46 = (*(v44 + 64) + 32) & ~*(v44 + 64);
          v78 = v73[14];
          v80 = *(v44 + 56);
          v47 = v39 + *(v78 + 48);
          *v39 = v42;
          v39[1] = v43;
          v70 = v46;
          v48 = &v38[v46];
          v82 = v38;
          v49 = v45;
          v45(v47, v48, v40);
          v51 = *v39;
          v50 = v39[1];
          sub_1C6A5E820(v42, v43);
          sub_1C6A743E0();
          v52 = *(v44 - 8);
          if (v29)
          {
            v1 = v71;
            v52(v47, v73[18]);
            sub_1C6A5E874(v51, v50);

            swift_getErrorValue();
            sub_1C6A57498(0xD000000000000035, 0x80000001C6A9FA30);

LABEL_56:
            v67 = v0[12];
            v26 = (v67 + 16);
            *(v67 + 24) = v1;

            goto LABEL_57;
          }

          namea = v39;
          v72 = *(v44 - 8);
          v52(v47, v73[18]);
          sub_1C6A5E874(v51, v50);
          v53 = v82;
          v54 = &v82[v80 + v70];
          v55 = (v74 + 56);
          v1 = 1;
          do
          {
            v56 = *(v53 + 2);
            if (v1 == v56)
            {
              break;
            }

            if (v1 >= v56)
            {
              __break(1u);
              goto LABEL_61;
            }

            v58 = *(v55 - 1);
            v57 = *v55;
            v0 = v73;
            v59 = v73[18];
            v60 = v73[15];
            v61 = v60 + *(v78 + 48);
            *v60 = v58;
            namea->info = v57;
            v49(v61, v54, v59);
            info = namea->info;
            v63 = v58;
            v64 = *v60;
            sub_1C6A5E820(v63, v57);
            v29 = 0;
            sub_1C6A743E0();
            ++v1;
            v55 += 2;
            v72(v61, v73[18]);
            sub_1C6A5E874(v64, info);
            v54 += v80;
            v53 = v82;
          }

          while (v1 != 6);
        }

        v0 = v73;
        v65 = v73[13];
        sub_1C6A74420();
        v66 = sub_1C6A74440();
        (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
        sub_1C6A5E8C8(v65);

        v1 = v71;
        goto LABEL_56;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 6)
    {
      v81 = v0[8] & 1;
      v79 = 6;
      goto LABEL_5;
    }

    v27 = v0[12];

    v1 = 0;
    v26 = (v27 + 16);
    goto LABEL_57;
  }

  if (qword_1EC1D4410 != -1)
  {
    swift_once();
  }

  v21 = sub_1C6A744E0();
  __swift_project_value_buffer(v21, qword_1EC1D5810);
  v22 = sub_1C6A744C0();
  v23 = sub_1C6A74990();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1C6968000, v22, v23, "Failed to download artwork", v24, 2u);
    MEMORY[0x1CCA51EA0](v24, -1, -1);
  }

  v25 = v0[12];

  v1 = 0;
  v26 = (v25 + 16);
LABEL_57:
  *v26 = 0;

  v68 = v0[1];

  return v68(v1);
}

void sub_1C6A5BDB4(uint64_t a1)
{
  v2 = [objc_opt_self() isSolariumEnabled];
  if (MEMORY[0x1E69A89F8])
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v4 = *(a1 + 16);
    if (!v4)
    {
      return;
    }

    v5 = 0;
    v6 = a1 + 40;
    v38 = a1 + 40;
    while (1)
    {
      v7 = (v6 + 16 * v5);
      for (i = v5; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
          goto LABEL_35;
        }

        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_36;
        }

        v9 = *(v7 - 1);
        v10 = *v7;
        sub_1C6A5E820(v9, *v7);
        v11 = sub_1C6A743C0();
        v12 = CGDataProviderCreateWithCFData(v11);

        if (v12)
        {
          break;
        }

        sub_1C6A5E874(v9, v10);
LABEL_10:
        v7 += 2;
        if (v5 == v4)
        {
          return;
        }
      }

      v13 = CGImageCreateWithPNGDataProvider(v12, 0, 1, kCGRenderingIntentDefault);
      sub_1C6A5E874(v9, v10);

      if (!v13)
      {
        goto LABEL_10;
      }

      MEMORY[0x1CCA50540]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C6A74840();
      }

      sub_1C6A74860();
      v6 = v38;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  v41 = MEMORY[0x1E69E7CC0];
  v14 = *(a1 + 16);
  swift_retain_n();
  if (v14)
  {
    v15 = 0;
    v16 = a1 + 40;
    v37 = v14;
    v36 = a1 + 40;
LABEL_21:
    v17 = (v16 + 16 * v15);
    v18 = v15;
    while (v18 < v14)
    {
      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_37;
      }

      v19 = *(v17 - 1);
      v20 = *v17;
      sub_1C6A5E820(v19, *v17);
      v21 = sub_1C6A743C0();
      v22 = CGDataProviderCreateWithCFData(v21);

      if (v22 && (v23 = CGImageCreateWithPNGDataProvider(v22, 0, 1, kCGRenderingIntentDefault), v22, v23))
      {
        v24 = [objc_opt_self() mainScreen];
        [v24 scale];
        v26 = v25;

        v27 = [objc_allocWithZone(MEMORY[0x1E69A8988]) initWithCGImage:v23 scale:v26];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46E8);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1C6A85950;
        *(v28 + 32) = v27;
        v29 = objc_allocWithZone(MEMORY[0x1E69A89F8]);
        sub_1C6A57054(0, &qword_1EC1D46F0);
        v39 = v27;
        v30 = sub_1C6A74820();

        v31 = [v29 initWithImages_];

        v32 = [objc_allocWithZone(MEMORY[0x1E69A8A38]) initWithSize:256.0 scale:{256.0, v26}];
        [v32 setShape_];
        [v32 setDrawBorder_];
        v33 = [v31 prepareImageForDescriptor_];
        v34 = [v33 CGImage];

        v14 = v37;
        v35 = sub_1C6A5E874(v19, v20);
        if (v34)
        {
          MEMORY[0x1CCA50540](v35);
          if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C6A74840();
          }

          sub_1C6A74860();
          v16 = v36;
          if (v15 != v37)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }
      }

      else
      {
        sub_1C6A5E874(v19, v20);
      }

      ++v18;
      v17 += 2;
      if (v15 == v14)
      {
        goto LABEL_32;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_32:
  }
}

uint64_t WBSExtensionsOnboardingIconProvider.deinit()
{

  return v0;
}

uint64_t WBSExtensionsOnboardingIconProvider.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

char *sub_1C6A5C2A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4788);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6A5C3B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1C6A5C4B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1D48C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4738);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6A5C5FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C6A5C794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4860);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C6A5F5B4(a1, &v10 - v5, &qword_1EC1D4860);
  v7 = sub_1C6A743A0();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6A5C8B0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6A65A5C(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1C6A74BD0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[3 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 3) = *v13;
          v13[5] = v13[2];
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 3;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4738);
      v7 = sub_1C6A74850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C6A5CA18(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C6A5CA18(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6A6423C(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1C6A5CFE0((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6A5C3B0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1C6A5C3B0((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_1C6A5CFE0((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}