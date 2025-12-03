@interface TUAvailableDevicesHelper
+ (void)getAvailableDevicesForAccountID:(id)d operatingSystem:(id)system model:(id)model minimumMajorVersion:(int)version completion:(id)completion;
@end

@implementation TUAvailableDevicesHelper

+ (void)getAvailableDevicesForAccountID:(id)d operatingSystem:(id)system model:(id)model minimumMajorVersion:(int)version completion:(id)completion
{
  v26[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  completionCopy = completion;
  v13 = MEMORY[0x1E698DD68];
  systemCopy = system;
  dCopy = d;
  v16 = objc_alloc_init(v13);
  [v16 setAltDSID:dCopy];

  v26[0] = systemCopy;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v16 setOperatingSystems:v17];

  v18 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __113__TUAvailableDevicesHelper_getAvailableDevicesForAccountID_operatingSystem_model_minimumMajorVersion_completion___block_invoke;
  v22[3] = &unk_1E7425E28;
  versionCopy = version;
  v23 = modelCopy;
  v24 = completionCopy;
  v19 = completionCopy;
  v20 = modelCopy;
  [v18 deviceListWithContext:v16 completion:v22];

  v21 = *MEMORY[0x1E69E9840];
}

void __113__TUAvailableDevicesHelper_getAvailableDevicesForAccountID_operatingSystem_model_minimumMajorVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 deviceList];
  v4 = MEMORY[0x1E696AE18];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __113__TUAvailableDevicesHelper_getAvailableDevicesForAccountID_operatingSystem_model_minimumMajorVersion_completion___block_invoke_2;
  v10 = &unk_1E7425E00;
  v12 = *(a1 + 48);
  v11 = *(a1 + 32);
  v5 = [v4 predicateWithBlock:&v7];
  v6 = [v3 filteredArrayUsingPredicate:{v5, v7, v8, v9, v10}];

  (*(*(a1 + 40) + 16))();
}

uint64_t __113__TUAvailableDevicesHelper_getAvailableDevicesForAccountID_operatingSystem_model_minimumMajorVersion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 operatingSystemVersion];
  v5 = [v4 componentsSeparatedByString:@"."];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [v6 integerValue] >= *(a1 + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 model];
  v9 = [v8 hasPrefix:*(a1 + 32)];

  return v9 & v7;
}

@end