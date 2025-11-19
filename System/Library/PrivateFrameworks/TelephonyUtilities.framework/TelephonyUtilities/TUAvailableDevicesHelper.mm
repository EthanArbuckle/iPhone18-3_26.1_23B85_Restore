@interface TUAvailableDevicesHelper
+ (void)getAvailableDevicesForAccountID:(id)a3 operatingSystem:(id)a4 model:(id)a5 minimumMajorVersion:(int)a6 completion:(id)a7;
@end

@implementation TUAvailableDevicesHelper

+ (void)getAvailableDevicesForAccountID:(id)a3 operatingSystem:(id)a4 model:(id)a5 minimumMajorVersion:(int)a6 completion:(id)a7
{
  v26[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a7;
  v13 = MEMORY[0x1E698DD68];
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(v13);
  [v16 setAltDSID:v15];

  v26[0] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v16 setOperatingSystems:v17];

  v18 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __113__TUAvailableDevicesHelper_getAvailableDevicesForAccountID_operatingSystem_model_minimumMajorVersion_completion___block_invoke;
  v22[3] = &unk_1E7425E28;
  v25 = a6;
  v23 = v11;
  v24 = v12;
  v19 = v12;
  v20 = v11;
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