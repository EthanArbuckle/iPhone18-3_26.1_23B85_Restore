@interface NSExtension
@end

@implementation NSExtension

void __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_2;
    block[3] = &unk_1E7106FB0;
    block[4] = *(a1 + 32);
    v8 = &v16;
    v9 = v5;
    v20 = *(a1 + 64);
    v10 = *(a1 + 56);
    v16 = v9;
    v19 = v10;
    v11 = &v17;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_33;
    v12[3] = &unk_1E70FCE28;
    v12[4] = *(a1 + 32);
    v8 = &v13;
    v13 = v6;
    v11 = &v14;
    v14 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

void __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [[_UIRemoteViewService alloc] initWithExtension:*(a1 + 32) andContextToken:*(a1 + 40)];
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = [v4 infoDictionary];
  v6 = [v5 objectForKey:@"NSExtension"];
  v7 = v6;
  if (v3 == 1)
  {
    v8 = [v6 objectForKey:@"NSExtensionHostAccessoryViewControllerClass"];

    if (!v8)
    {
      v9 = [v4 infoDictionary];
      v8 = [v9 objectForKey:@"NSExtensionHostAccessoryViewControllerClass"];

      if (!v8)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"NSExtension accessory was requested, but no host class was specified. NSExtension: %@", *(a1 + 32)}];
        goto LABEL_16;
      }

LABEL_8:
      v11 = NSClassFromString(v8);
      v12 = 0;
      if (!v11)
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v12)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

LABEL_7:

    goto LABEL_8;
  }

  v8 = [v6 objectForKey:@"NSExtensionViewControllerHostClass"];

  if (v8)
  {
    goto LABEL_7;
  }

  v10 = [v4 infoDictionary];
  v8 = [v10 objectForKey:@"NSExtensionHostViewControllerClass"];

  if (v8)
  {
    goto LABEL_7;
  }

  v19 = [v4 infoDictionary];
  v20 = [v19 objectForKey:@"NSExtension"];
  v8 = [v20 objectForKey:@"NSExtensionHostViewControllerClass"];

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_16:
  v11 = objc_opt_class();
  v8 = 0;
  v12 = 1;
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_17:
  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  v22 = v21;
  v23 = @"_UIRemoteViewController";
  if (!v12)
  {
    v23 = v8;
  }

  [v21 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"NSExtension_UIKitAdditions.m" lineNumber:78 description:{@"Unable to instantiate class named %@ for host connection!", v23}];

  if ((v12 & 1) == 0)
  {
LABEL_10:
    if (([v11 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"NSExtension_UIKitAdditions.m" lineNumber:79 description:{@"Class %@ is not a subclass of _UIRemoteViewController!", v8}];
    }
  }

LABEL_12:
  v13 = *(__UILogGetCategoryCachedImpl("ViewServices", &NSExtensionHostAccessoryViewControllerClass_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    *buf = 138543874;
    v29 = v14;
    v30 = 2114;
    v31 = v15;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Request completed for extension: %{public}@; contextToken: %{public}@, creating remote view controller with host class %{public}@", buf, 0x20u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_29;
  v25[3] = &unk_1E7106F88;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v25[4] = *(a1 + 32);
  v26 = v16;
  v27 = *(a1 + 56);
  v18 = [v11 requestViewControllerWithService:v2 traitCollection:v17 connectionHandler:v25];
}

void __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_initWeak(&location, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_2_30;
    v9[3] = &unk_1E71006F0;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    objc_copyWeak(&v11, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v9);
    (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), v5, 0, v8);
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) cancelExtensionRequestWithIdentifier:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }
}

void __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_2_30(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_3;
  v4[3] = &unk_1E71006F0;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v2;
  objc_copyWeak(&v6, (a1 + 48));
  v3 = [*(a1 + 32) _extensionContextForUUID:*(a1 + 40)];
  [v3 _setRequestCleanUpBlock:v4];

  objc_destroyWeak(&v6);
}

void __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_4;
  block[3] = &unk_1E71006F0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  objc_copyWeak(&v5, (a1 + 48));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
}

void __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_4(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("ViewServices", &NSExtensionHostAccessoryViewControllerClass_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = objc_loadWeakRetained((a1 + 48));
    if (v5)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
    }

    else
    {
      v9 = @"(nil)";
    }

    *buf = 138543874;
    v13 = v4;
    v14 = 2114;
    v15 = v3;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Disconnecting remote view controller for extension invalidation: %{public}@; contextToken: %{public}@, rvc: %{public}@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = [WeakRetained disconnect];
}

uint64_t __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke_33(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("ViewServices", &NSExtensionHostAccessoryViewControllerClass_block_invoke_3___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Request completed for extension: %{public}@; with error: %{public}@", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

@end