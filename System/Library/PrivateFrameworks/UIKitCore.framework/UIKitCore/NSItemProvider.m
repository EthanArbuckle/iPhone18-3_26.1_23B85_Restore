@interface NSItemProvider
- (void)_generateFileURLDataForCachingFileAtURL:(void *)a3 typeIdentifier:(void *)a4 completionHandler:;
@end

@implementation NSItemProvider

id __99__NSItemProvider_UIKitAdditions__registerFileProviderItemForTypeIdentifier_visibility_loadHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__NSItemProvider_UIKitAdditions__registerFileProviderItemForTypeIdentifier_visibility_loadHandler___block_invoke_2;
  v10[3] = &unk_1E7119DA0;
  v11 = v4;
  v6 = *(v5 + 16);
  v7 = v4;
  v8 = v6(v5, v10);

  return v8;
}

void __99__NSItemProvider_UIKitAdditions__registerFileProviderItemForTypeIdentifier_visibility_loadHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (!v9 || a3)
  {
    v8 = *(a1 + 32);
    v5 = [MEMORY[0x1E696ACA8] resultWithError:a3];
    (*(v8 + 16))(v8, v5);
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69BC828]) initWithFPItem:v9];
    v6 = [v5 nsURLWrapper];
    v7 = [MEMORY[0x1E696ACA8] resultWithData:0 urlWrapper:v6 cleanupHandler:0 error:0];
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __66__NSItemProvider_UIKitAdditions___highestFidelityClassForLoading___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastObject];
  v6 = [v4 lastObject];

  v7 = [v5 compare:v6];
  return v7;
}

void __80__NSItemProvider_UIKitAdditions___loadObjectOfClass_userInfo_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  v9 = v6;
  if (v5 && !v6)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(a1 + 64);
      v12 = *(a1 + 40);
      v19 = 0;
      v13 = &v19;
      v14 = [v10 newObjectOfClass:v11 fromData:v5 ofType:v12 outError:&v19];
    }

    else
    {
      if (*(a1 + 72) != 1)
      {
        v8 = 0;
        v9 = 0;
        goto LABEL_8;
      }

      v15 = *(a1 + 64);
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = 0;
      v13 = &v18;
      v14 = [v15 _objectWithItemProviderData:v5 typeIdentifier:v16 userInfo:v17 error:&v18];
    }

    v8 = v14;
    v9 = *v13;
  }

LABEL_8:
  (*(*(a1 + 56) + 16))();
}

void __78__NSItemProvider_UIKitAdditions_Internal___addFileURLRepresentationIfPossible__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [MEMORY[0x1E6982C40] _typeWithIdentifier:a2 allowUndeclared:1];
  if ([v6 conformsToType:*MEMORY[0x1E6983030]])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

id __112__NSItemProvider_UIKitAdditions_Internal___addFileURLRepresentationForOpenInPlaceWithTypeIdentifier_visibility___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __112__NSItemProvider_UIKitAdditions_Internal___addFileURLRepresentationForOpenInPlaceWithTypeIdentifier_visibility___block_invoke_2;
    v8[3] = &unk_1E7119E60;
    v9 = v5;
    v10 = WeakRetained;
    v11 = v3;
    v6 = [WeakRetained loadInPlaceFileRepresentationForTypeIdentifier:v9 completionHandler:v8];
  }

  else
  {
    (*(v3 + 2))(v3, 0, 0);
    v6 = 0;
  }

  return v6;
}

void __112__NSItemProvider_UIKitAdditions_Internal___addFileURLRepresentationForOpenInPlaceWithTypeIdentifier_visibility___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      v10 = [*MEMORY[0x1E6982DB8] identifier];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __112__NSItemProvider_UIKitAdditions_Internal___addFileURLRepresentationForOpenInPlaceWithTypeIdentifier_visibility___block_invoke_108;
      v18[3] = &unk_1E7106558;
      v19 = v9;
      v20 = *(a1 + 48);
      v11 = v9;
      v12 = [v11 loadDataWithTypeIdentifier:v10 forItemProviderCompletionHandler:v18];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        *buf = 138543362;
        v22 = v17;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not load item provider file representation for type “%{public}@” in place. Falling back to copying.", buf, 0xCu);
      }

      [(NSItemProvider *)*(a1 + 40) _generateFileURLDataForCachingFileAtURL:v7 typeIdentifier:*(a1 + 32) completionHandler:*(a1 + 48)];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not load item provider file representation for type “%{public}@”. Error: %{public}@", buf, 0x16u);
    }

    v13 = *(a1 + 48);
    v14 = *(v13 + 16);
    v15 = v8;
    v14(v13, 0, v15);
  }
}

- (void)_generateFileURLDataForCachingFileAtURL:(void *)a3 typeIdentifier:(void *)a4 completionHandler:
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (qword_1ED49FB88 != -1)
    {
      dispatch_once(&qword_1ED49FB88, &__block_literal_global_113_3);
    }

    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__147;
    v53 = __Block_byref_object_dispose__147;
    v54 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = __Block_byref_object_copy__147;
    v47[4] = __Block_byref_object_dispose__147;
    v48 = 0;
    v10 = qword_1ED49FB78;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__NSItemProvider_UIKitAdditions_Internal___generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___block_invoke_118;
    block[3] = &unk_1E7119F08;
    v45 = v47;
    block[4] = a1;
    v11 = v8;
    v44 = v11;
    v46 = &v49;
    dispatch_sync(v10, block);
    v12 = v50[5];
    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Returning cached url for sharing: %@", buf, 0xCu);
      }
    }

    else if (v7)
    {
      v13 = _UITemporaryFolderURL(@"com.apple.uikit.itemprovider.temporary");
      if (v13)
      {
        v14 = [v7 lastPathComponent];
        v15 = [v13 URLByAppendingPathComponent:v14];

        if (v15 && !_UICloneFile(v7, v15))
        {
          objc_storeStrong(v50 + 5, v15);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v13;
            _os_log_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Caching temporary files for sharing at %@", buf, 0xCu);
          }

          v17 = qword_1ED49FB78;
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __116__NSItemProvider_UIKitAdditions_Internal___generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___block_invoke_124;
          v39[3] = &unk_1E7119EB8;
          v41 = v47;
          v42 = &v49;
          v40 = v11;
          dispatch_sync(v17, v39);
          v18 = dispatch_get_global_queue(9, 0);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v56 = __Block_byref_object_copy__125;
          v57 = __Block_byref_object_dispose__126;
          v58 = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __116__NSItemProvider_UIKitAdditions_Internal___generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___block_invoke_127;
          aBlock[3] = &unk_1E7119F08;
          v37 = v47;
          v38 = buf;
          v35 = v18;
          v36 = v13;
          v19 = v18;
          v20 = _Block_copy(aBlock);
          v21 = _Block_copy(v20);
          v22 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v21;

          v23 = dispatch_time(0, (*&qword_1ED49FB80 * 1000000000.0));
          dispatch_after(v23, v19, v20);

          _Block_object_dispose(buf, 8);
          v16 = v40;
        }

        else
        {
          v16 = [MEMORY[0x1E696AC08] defaultManager];
          [v16 removeItemAtURL:v13 error:0];
        }
      }
    }

    v24 = v50[5];
    if (v24)
    {
      v33 = 0;
      v25 = [v24 ui_issueReadSandboxExtensionWithError:&v33];
      v26 = v33;
      if (v26 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = v50[5];
        *buf = 138412546;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot issue sandbox extension to temporary file at %@ Error: %@. Sharing anwyay.", buf, 0x16u);
      }

      v27 = v50[5];
      v28 = [*MEMORY[0x1E6982DB8] identifier];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __116__NSItemProvider_UIKitAdditions_Internal___generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___block_invoke_129;
      v31[3] = &unk_1E7119F30;
      v32 = v9;
      v29 = [v27 loadDataWithTypeIdentifier:v28 forItemProviderCompletionHandler:v31];
    }

    else
    {
      (*(v9 + 2))(v9, 0, 0);
    }

    _Block_object_dispose(v47, 8);
    _Block_object_dispose(&v49, 8);
  }
}

void __112__NSItemProvider_UIKitAdditions_Internal___addFileURLRepresentationForOpenInPlaceWithTypeIdentifier_visibility___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  LODWORD(v5) = [v5 startAccessingSecurityScopedResource];
  (*(*(a1 + 40) + 16))();

  if (v5)
  {
    v8 = *(a1 + 32);

    [v8 stopAccessingSecurityScopedResource];
  }
}

void __116__NSItemProvider_UIKitAdditions_Internal___generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("UIKit file url representation cache queue", v0);
  v2 = qword_1ED49FB78;
  qword_1ED49FB78 = v1;

  v3 = _UIKitUserDefaults();
  v8 = [v3 objectForKey:@"TemporaryFileURLCacheDeletionTimeInterval"];

  v4 = v8;
  v5 = 0x4072C00000000000;
  if (v8)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v8;
    if (isKindOfClass)
    {
      [v8 doubleValue];
      v4 = v8;
      v5 = v7;
    }
  }

  qword_1ED49FB80 = v5;
}

void __116__NSItemProvider_UIKitAdditions_Internal___generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___block_invoke_118(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), &_generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___cacheStateKey);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (!v5)
  {
    v6 = objc_opt_new();
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    objc_setAssociatedObject(*(a1 + 32), &_generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___cacheStateKey, *(*(*(a1 + 48) + 8) + 40), 0x301);
    v5 = *(*(*(a1 + 48) + 8) + 40);
  }

  v13 = [v5 typeIdentifier];
  if ([v13 isEqualToString:*(a1 + 40)])
  {
    v9 = [*(*(*(a1 + 48) + 8) + 40) url];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:*&qword_1ED49FB80];
    [*(*(*(a1 + 48) + 8) + 40) setExpirationDate:v12];
  }
}

uint64_t __116__NSItemProvider_UIKitAdditions_Internal___generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___block_invoke_124(void *a1)
{
  [*(*(a1[5] + 8) + 40) setUrl:*(*(a1[6] + 8) + 40)];
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 40);

  return [v3 setTypeIdentifier:v2];
}

void __116__NSItemProvider_UIKitAdditions_Internal___generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___block_invoke_127(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v2 = qword_1ED49FB78;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__NSItemProvider_UIKitAdditions_Internal___generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___block_invoke_2;
  block[3] = &unk_1E7119EE0;
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  v8 = &v9;
  v6 = *(a1 + 40);
  dispatch_sync(v2, block);
  if (*(v10 + 24) == 1)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    [v3 removeItemAtURL:*(a1 + 40) error:0];
  }

  _Block_object_dispose(&v9, 8);
}

void __116__NSItemProvider_UIKitAdditions_Internal___generateFileURLDataForCachingFileAtURL_typeIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 48) + 8) + 40) expirationDate];
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    if (v4 > 0.0)
    {
      if (*(*(*(a1 + 56) + 8) + 40))
      {
        v5 = dispatch_time(0, (v4 * 1000000000.0));
        dispatch_after(v5, *(a1 + 32), *(*(*(a1 + 56) + 8) + 40));
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Deleting temporary files for sharing at %@", &v7, 0xCu);
    }

    [*(*(*(a1 + 48) + 8) + 40) setUrl:0];
    [*(*(*(a1 + 48) + 8) + 40) setTypeIdentifier:0];
    [*(*(*(a1 + 48) + 8) + 40) setExpirationDate:0];
  }
}

id __131__NSItemProvider_UIKitAdditions_Internal___addFileURLRepresentationByCopyingAndCachingRepresentationWithTypeIdentifier_visibility___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __131__NSItemProvider_UIKitAdditions_Internal___addFileURLRepresentationByCopyingAndCachingRepresentationWithTypeIdentifier_visibility___block_invoke_2;
    v9[3] = &unk_1E7119F58;
    v9[4] = WeakRetained;
    v10 = v6;
    v11 = v3;
    v7 = [v5 loadFileRepresentationForTypeIdentifier:v10 completionHandler:v9];
  }

  else
  {
    (*(v3 + 2))(v3, 0, 0);
    v7 = 0;
  }

  return v7;
}

@end