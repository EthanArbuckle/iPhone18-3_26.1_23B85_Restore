@interface PXSKCloudServiceSetupAction
+ (NSString)subscribe;
@end

@implementation PXSKCloudServiceSetupAction

+ (NSString)subscribe
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSKCloudServiceSetupActionSubscribeSymbolLoc_ptr;
  v11 = getSKCloudServiceSetupActionSubscribeSymbolLoc_ptr;
  if (!getSKCloudServiceSetupActionSubscribeSymbolLoc_ptr)
  {
    v3 = StoreKitLibrary();
    v9[3] = dlsym(v3, "SKCloudServiceSetupActionSubscribe");
    getSKCloudServiceSetupActionSubscribeSymbolLoc_ptr = v9[3];
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
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SKCloudServiceSetupAction getSKCloudServiceSetupActionSubscribe(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"StoreKit+PhotosUICore.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

@end