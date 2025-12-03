@interface WFAssistantServicesWrapper
+ (BOOL)isPersistentSiriAvailable;
@end

@implementation WFAssistantServicesWrapper

+ (BOOL)isPersistentSiriAvailable
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getAFIsPersistentSiriAvailableSymbolLoc_ptr;
  v10 = getAFIsPersistentSiriAvailableSymbolLoc_ptr;
  if (!getAFIsPersistentSiriAvailableSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getAFIsPersistentSiriAvailableSymbolLoc_block_invoke;
    v6[3] = &unk_1E837FAC0;
    v6[4] = &v7;
    __getAFIsPersistentSiriAvailableSymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (v2)
  {
    return v2();
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_AFIsPersistentSiriAvailable(void)"];
  [currentHandler handleFailureInFunction:v5 file:@"WFAssistantServicesWrapper.m" lineNumber:14 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

@end