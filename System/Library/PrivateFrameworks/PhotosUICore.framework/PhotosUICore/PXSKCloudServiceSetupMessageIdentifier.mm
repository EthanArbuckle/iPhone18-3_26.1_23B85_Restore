@interface PXSKCloudServiceSetupMessageIdentifier
+ (NSString)addMusic;
+ (NSString)connect;
+ (NSString)join;
+ (NSString)playMusic;
@end

@implementation PXSKCloudServiceSetupMessageIdentifier

+ (NSString)playMusic
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSKCloudServiceSetupMessageIdentifierPlayMusicSymbolLoc_ptr;
  v11 = getSKCloudServiceSetupMessageIdentifierPlayMusicSymbolLoc_ptr;
  if (!getSKCloudServiceSetupMessageIdentifierPlayMusicSymbolLoc_ptr)
  {
    v3 = StoreKitLibrary();
    v9[3] = dlsym(v3, "SKCloudServiceSetupMessageIdentifierPlayMusic");
    getSKCloudServiceSetupMessageIdentifierPlayMusicSymbolLoc_ptr = v9[3];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SKCloudServiceSetupMessageIdentifier getSKCloudServiceSetupMessageIdentifierPlayMusic(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"StoreKit+PhotosUICore.m" lineNumber:29 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (NSString)addMusic
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSKCloudServiceSetupMessageIdentifierAddMusicSymbolLoc_ptr;
  v11 = getSKCloudServiceSetupMessageIdentifierAddMusicSymbolLoc_ptr;
  if (!getSKCloudServiceSetupMessageIdentifierAddMusicSymbolLoc_ptr)
  {
    v3 = StoreKitLibrary();
    v9[3] = dlsym(v3, "SKCloudServiceSetupMessageIdentifierAddMusic");
    getSKCloudServiceSetupMessageIdentifierAddMusicSymbolLoc_ptr = v9[3];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SKCloudServiceSetupMessageIdentifier getSKCloudServiceSetupMessageIdentifierAddMusic(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"StoreKit+PhotosUICore.m" lineNumber:28 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (NSString)connect
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSKCloudServiceSetupMessageIdentifierConnectSymbolLoc_ptr;
  v11 = getSKCloudServiceSetupMessageIdentifierConnectSymbolLoc_ptr;
  if (!getSKCloudServiceSetupMessageIdentifierConnectSymbolLoc_ptr)
  {
    v3 = StoreKitLibrary();
    v9[3] = dlsym(v3, "SKCloudServiceSetupMessageIdentifierConnect");
    getSKCloudServiceSetupMessageIdentifierConnectSymbolLoc_ptr = v9[3];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SKCloudServiceSetupMessageIdentifier getSKCloudServiceSetupMessageIdentifierConnect(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"StoreKit+PhotosUICore.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (NSString)join
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSKCloudServiceSetupMessageIdentifierJoinSymbolLoc_ptr;
  v11 = getSKCloudServiceSetupMessageIdentifierJoinSymbolLoc_ptr;
  if (!getSKCloudServiceSetupMessageIdentifierJoinSymbolLoc_ptr)
  {
    v3 = StoreKitLibrary();
    v9[3] = dlsym(v3, "SKCloudServiceSetupMessageIdentifierJoin");
    getSKCloudServiceSetupMessageIdentifierJoinSymbolLoc_ptr = v9[3];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SKCloudServiceSetupMessageIdentifier getSKCloudServiceSetupMessageIdentifierJoin(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"StoreKit+PhotosUICore.m" lineNumber:26 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

@end