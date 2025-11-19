@interface PXSKCloudServiceSetupOptionsKey
+ (NSString)action;
+ (NSString)affiliateToken;
+ (NSString)campaignToken;
+ (NSString)iTunesItemIdentifier;
+ (NSString)messageIdentifier;
@end

@implementation PXSKCloudServiceSetupOptionsKey

+ (NSString)messageIdentifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSKCloudServiceSetupOptionsMessageIdentifierKeySymbolLoc_ptr;
  v11 = getSKCloudServiceSetupOptionsMessageIdentifierKeySymbolLoc_ptr;
  if (!getSKCloudServiceSetupOptionsMessageIdentifierKeySymbolLoc_ptr)
  {
    v3 = StoreKitLibrary();
    v9[3] = dlsym(v3, "SKCloudServiceSetupOptionsMessageIdentifierKey");
    getSKCloudServiceSetupOptionsMessageIdentifierKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SKCloudServiceSetupOptionsKey getSKCloudServiceSetupOptionsMessageIdentifierKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"StoreKit+PhotosUICore.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (NSString)campaignToken
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSKCloudServiceSetupOptionsCampaignTokenKeySymbolLoc_ptr;
  v11 = getSKCloudServiceSetupOptionsCampaignTokenKeySymbolLoc_ptr;
  if (!getSKCloudServiceSetupOptionsCampaignTokenKeySymbolLoc_ptr)
  {
    v3 = StoreKitLibrary();
    v9[3] = dlsym(v3, "SKCloudServiceSetupOptionsCampaignTokenKey");
    getSKCloudServiceSetupOptionsCampaignTokenKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SKCloudServiceSetupOptionsKey getSKCloudServiceSetupOptionsCampaignTokenKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"StoreKit+PhotosUICore.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (NSString)affiliateToken
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSKCloudServiceSetupOptionsAffiliateTokenKeySymbolLoc_ptr;
  v11 = getSKCloudServiceSetupOptionsAffiliateTokenKeySymbolLoc_ptr;
  if (!getSKCloudServiceSetupOptionsAffiliateTokenKeySymbolLoc_ptr)
  {
    v3 = StoreKitLibrary();
    v9[3] = dlsym(v3, "SKCloudServiceSetupOptionsAffiliateTokenKey");
    getSKCloudServiceSetupOptionsAffiliateTokenKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SKCloudServiceSetupOptionsKey getSKCloudServiceSetupOptionsAffiliateTokenKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"StoreKit+PhotosUICore.m" lineNumber:20 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (NSString)iTunesItemIdentifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSKCloudServiceSetupOptionsITunesItemIdentifierKeySymbolLoc_ptr;
  v11 = getSKCloudServiceSetupOptionsITunesItemIdentifierKeySymbolLoc_ptr;
  if (!getSKCloudServiceSetupOptionsITunesItemIdentifierKeySymbolLoc_ptr)
  {
    v3 = StoreKitLibrary();
    v9[3] = dlsym(v3, "SKCloudServiceSetupOptionsITunesItemIdentifierKey");
    getSKCloudServiceSetupOptionsITunesItemIdentifierKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SKCloudServiceSetupOptionsKey getSKCloudServiceSetupOptionsITunesItemIdentifierKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"StoreKit+PhotosUICore.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (NSString)action
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSKCloudServiceSetupOptionsActionKeySymbolLoc_ptr;
  v11 = getSKCloudServiceSetupOptionsActionKeySymbolLoc_ptr;
  if (!getSKCloudServiceSetupOptionsActionKeySymbolLoc_ptr)
  {
    v3 = StoreKitLibrary();
    v9[3] = dlsym(v3, "SKCloudServiceSetupOptionsActionKey");
    getSKCloudServiceSetupOptionsActionKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SKCloudServiceSetupOptionsKey getSKCloudServiceSetupOptionsActionKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"StoreKit+PhotosUICore.m" lineNumber:18 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

@end