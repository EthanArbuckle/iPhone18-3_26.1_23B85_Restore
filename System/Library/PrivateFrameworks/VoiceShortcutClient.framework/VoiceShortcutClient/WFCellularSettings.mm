@interface WFCellularSettings
+ (id)defaultSettings;
- (BOOL)cellularDataEnabledWithError:(id *)error;
- (BOOL)isCellularDataCapableWithError:(id *)error;
- (WFCellularSettings)init;
- (void)dealloc;
@end

@implementation WFCellularSettings

- (BOOL)isCellularDataCapableWithError:(id *)error
{
  v11 = 0;
  connection = [(WFCellularSettings *)self connection];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v5 = get_CTServerConnectionGetCellularDataSettingsSymbolLoc_ptr;
  v20 = get_CTServerConnectionGetCellularDataSettingsSymbolLoc_ptr;
  if (!get_CTServerConnectionGetCellularDataSettingsSymbolLoc_ptr)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __get_CTServerConnectionGetCellularDataSettingsSymbolLoc_block_invoke;
    v15 = &unk_1E7B02C60;
    v16 = &v17;
    v6 = CoreTelephonyLibrary();
    v18[3] = dlsym(v6, "_CTServerConnectionGetCellularDataSettings");
    get_CTServerConnectionGetCellularDataSettingsSymbolLoc_ptr = *(v16[1] + 24);
    v5 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v5)
  {
    v7 = (v5)(connection, &v11, 0, 0);
    if (error)
    {
      *error = WFNSErrorFromCTError(v7);
    }

    return v11 == 1;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CTError WF_CTServerConnectionGetCellularDataSettings(CTServerConnectionRef, Boolean *, Boolean *, Boolean *)"}];
    [currentHandler handleFailureInFunction:v10 file:@"WFCellularSettings.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (BOOL)cellularDataEnabledWithError:(id *)error
{
  v11 = 0;
  connection = [(WFCellularSettings *)self connection];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v5 = get_CTServerConnectionGetCellularDataIsEnabledSymbolLoc_ptr;
  v20 = get_CTServerConnectionGetCellularDataIsEnabledSymbolLoc_ptr;
  if (!get_CTServerConnectionGetCellularDataIsEnabledSymbolLoc_ptr)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __get_CTServerConnectionGetCellularDataIsEnabledSymbolLoc_block_invoke;
    v15 = &unk_1E7B02C60;
    v16 = &v17;
    v6 = CoreTelephonyLibrary();
    v18[3] = dlsym(v6, "_CTServerConnectionGetCellularDataIsEnabled");
    get_CTServerConnectionGetCellularDataIsEnabledSymbolLoc_ptr = *(v16[1] + 24);
    v5 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v5)
  {
    v7 = v5(connection, &v11);
    *error = WFNSErrorFromCTError(v7);
    return v11 == 1;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CTError WF_CTServerConnectionGetCellularDataIsEnabled(CTServerConnectionRef, Boolean *)"}];
    [currentHandler handleFailureInFunction:v10 file:@"WFCellularSettings.m" lineNumber:17 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (void)dealloc
{
  CFRelease(self->_connection);
  v3.receiver = self;
  v3.super_class = WFCellularSettings;
  [(WFCellularSettings *)&v3 dealloc];
}

- (WFCellularSettings)init
{
  v15.receiver = self;
  v15.super_class = WFCellularSettings;
  v2 = [(WFCellularSettings *)&v15 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_6;
  }

  v12[0] = 0;
  v13 = 0u;
  v14 = 0;
  v12[1] = v2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v4 = get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr;
  v24 = get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr;
  if (!get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __get_CTServerConnectionCreateWithIdentifierSymbolLoc_block_invoke;
    v19 = &unk_1E7B02C60;
    v20 = &v21;
    v5 = CoreTelephonyLibrary();
    v6 = dlsym(v5, "_CTServerConnectionCreateWithIdentifier");
    *(v20[1] + 24) = v6;
    get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr = *(v20[1] + 24);
    v4 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (v4)
  {
    v7 = (v4)(*MEMORY[0x1E695E480], @"com.apple.shortcuts", WFCoreTelephonyConnectionCallbackStub, v12);
    v3->_connection = CFRetain(v7);
    CFRelease(v7);
    v8 = v3;
LABEL_6:

    return v3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CTServerConnectionRef WF_CTServerConnectionCreateWithIdentifier(CFAllocatorRef, CFStringRef, CTServerConnectionCallback, _CTServerConnectionContext *)"}];
  [currentHandler handleFailureInFunction:v11 file:@"WFCellularSettings.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

+ (id)defaultSettings
{
  if (defaultSettings_onceToken != -1)
  {
    dispatch_once(&defaultSettings_onceToken, &__block_literal_global_9872);
  }

  v3 = defaultSettings_settings;

  return v3;
}

uint64_t __37__WFCellularSettings_defaultSettings__block_invoke()
{
  v0 = objc_alloc_init(WFCellularSettings);
  v1 = defaultSettings_settings;
  defaultSettings_settings = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end