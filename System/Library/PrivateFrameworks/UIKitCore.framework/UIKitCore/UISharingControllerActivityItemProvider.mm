@interface UISharingControllerActivityItemProvider
@end

@implementation UISharingControllerActivityItemProvider

uint64_t __110___UISharingControllerActivityItemProvider_registerCloudKitShareWithPreparationHandler_allowedSharingOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __110___UISharingControllerActivityItemProvider_registerCloudKitShareWithPreparationHandler_allowedSharingOptions___block_invoke_3;
  v8[3] = &unk_1E712CA90;
  v4 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v8);

  return 0;
}

void __110___UISharingControllerActivityItemProvider_registerCloudKitShareWithPreparationHandler_allowedSharingOptions___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && v8)
  {
    v11 = [v8 setupInfo];
    v12 = [v11 copy];

    v13 = [v12 containerOptions];
    v14 = [v13 applicationBundleIdentifierOverrideForContainerAccess];

    if (!v14)
    {
      v15 = [v12 containerOptions];
      v16 = [v8 primaryIdentifier];
      [v15 setApplicationBundleIdentifierOverride:v16];
    }

    v17 = [objc_alloc(getCKPreSharingContextClass()) initWithShare:v7 containerSetupInfo:v12 allowedOptions:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();

    goto LABEL_10;
  }

  v18 = *(a1 + 40);
  v19 = v9;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v20 = getCKXPCSuitableErrorSymbolLoc_ptr;
  v28 = getCKXPCSuitableErrorSymbolLoc_ptr;
  if (!getCKXPCSuitableErrorSymbolLoc_ptr)
  {
    v21 = CloudKitLibrary();
    v26[3] = dlsym(v21, "CKXPCSuitableError");
    getCKXPCSuitableErrorSymbolLoc_ptr = v26[3];
    v20 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (v20)
  {
    v22 = v20(v19);

    (*(v18 + 16))(v18, 0, v22);
LABEL_10:

    return;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSError *_CKXPCSuitableError(NSError * _Nullable __strong)"];
  [v23 handleFailureInFunction:v24 file:@"UICloudSharingController.m" lineNumber:67 description:{@"%s", dlerror()}];

  __break(1u);
}

@end