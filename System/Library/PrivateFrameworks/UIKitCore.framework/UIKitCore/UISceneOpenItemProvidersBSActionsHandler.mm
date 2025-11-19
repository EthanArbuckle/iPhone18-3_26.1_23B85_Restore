@interface UISceneOpenItemProvidersBSActionsHandler
@end

@implementation UISceneOpenItemProvidersBSActionsHandler

uint64_t __116___UISceneOpenItemProvidersBSActionsHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __116___UISceneOpenItemProvidersBSActionsHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (v6)
    {
      [v6 setObject:v10 forKey:v5];
    }

    else
    {
      v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v10 forKey:v5];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

uint64_t __107___UISceneOpenItemProvidersBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_2;
  v9[3] = &unk_1E7118728;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v6;
  v12 = *(a1 + 48);
  v13 = a4;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *MEMORY[0x1E69636D0];
  v7 = [v5 handlerRank];
  LODWORD(v6) = [v6 isEqualToString:v7];

  if (v6)
  {
    v8 = [v5 typeIdentifiers];
    v9 = [v8 arrayByExcludingObjectsInArray:*(a1 + 32)];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_3;
    v13[3] = &unk_1E7118700;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = v10;
    v15 = v11;
    v16 = a3;
    v17 = v12;
    [v9 enumerateObjectsUsingBlock:v13];
  }
}

void __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:a2];
  v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(a1 + 32)];
  if (v8 && [v6 conformsToType:v8])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
    v7 = *(a1 + 48);
    **(a1 + 56) = 1;
    *v7 = 1;
    *a4 = 1;
  }
}

void __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_5;
  v9[3] = &unk_1E7118728;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v6;
  v12 = *(a1 + 48);
  v13 = a4;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 typeIdentifiers];
  v6 = [v5 arrayByExcludingObjectsInArray:*(a1 + 32)];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_6;
  v10[3] = &unk_1E7118700;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = v7;
  v12 = v8;
  v13 = a3;
  v14 = v9;
  [v6 enumerateObjectsUsingBlock:v10];
}

void __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
    v6 = *(a1 + 48);
    **(a1 + 56) = 1;
    *v6 = 1;
    *a4 = 1;
  }
}

void __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_8;
  v9[3] = &unk_1E7118728;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v6;
  v12 = *(a1 + 48);
  v13 = a4;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 typeIdentifiers];
  v6 = [v5 arrayByExcludingObjectsInArray:*(a1 + 32)];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_9;
  v10[3] = &unk_1E7118700;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = v7;
  v12 = v8;
  v13 = a3;
  v14 = v9;
  [v6 enumerateObjectsUsingBlock:v10];
}

void __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:a2];
  v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(a1 + 32)];
  if (v8 && [v6 conformsToType:v8])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
    v7 = *(a1 + 48);
    **(a1 + 56) = 1;
    *v7 = 1;
    *a4 = 1;
  }
}

void __123___UISceneOpenItemProvidersBSActionsHandler_URLContextsFetchedFromItemProviders_collectionIdentifier_contentOwner_payload___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__140;
  v29 = __Block_byref_object_dispose__140;
  v9 = v7;
  v30 = v9;
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
    v11 = v26[5];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __123___UISceneOpenItemProvidersBSActionsHandler_URLContextsFetchedFromItemProviders_collectionIdentifier_contentOwner_payload___block_invoke_2;
    v18[3] = &unk_1E7118778;
    v24 = a3;
    v19 = *(a1 + 32);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v22 = &v25;
    v14 = *(a1 + 64);
    v23 = *(a1 + 88);
    v15 = *(a1 + 72);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v20 = v17;
    v21 = v16;
    [v10 coordinateReadingItemAtURL:v11 options:1 error:0 byAccessor:v18];
  }

  dispatch_group_leave(*(a1 + 80));
  _Block_object_dispose(&v25, 8);
}

void __123___UISceneOpenItemProvidersBSActionsHandler_URLContextsFetchedFromItemProviders_collectionIdentifier_contentOwner_payload___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 96))
  {
    goto LABEL_12;
  }

  v3 = MEMORY[0x1E696AC08];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = [v4 path];

  v7 = [v6 lastPathComponent];
  v8 = [v7 pathExtension];

  v9 = [*(a1 + 32) _sanitizedSuggestedName];
  v10 = [v9 pathExtension];
  if ([v8 length])
  {
    if (([v10 isEqualToString:v8] & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([v10 length])
  {
    v11 = v10;

    v8 = v11;
LABEL_7:
    v12 = [v9 stringByDeletingPathExtension];

    v9 = v12;
  }

LABEL_8:
  v13 = [*(a1 + 40) uniqueFileNameWithStakedClaims:*(a1 + 48) hint:v9 extension:v8];

  [*(a1 + 48) addObject:v13];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dropped Document Session %@", *(a1 + 56)];
  v15 = NSTemporaryDirectory();
  v16 = [v15 stringByAppendingPathComponent:v14];

  [v5 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:0];
  v17 = [v16 stringByAppendingPathComponent:v13];
  if (v17)
  {
    [v5 removeItemAtPath:v17 error:0];
    v24 = 0;
    [v5 copyItemAtPath:v6 toPath:v17 error:&v24];
    v18 = v24;
  }

  else
  {
    v18 = 0;
  }

  v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17];
  v20 = *(*(a1 + 80) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

LABEL_12:
  v22 = [*(a1 + 40) openURLOptionsFromBasePayload:*(a1 + 64) sourceProcessHandle:0 dragContentOwner:*(a1 + 88)];
  v23 = [[UIOpenURLContext alloc] initWithURL:*(*(*(a1 + 80) + 8) + 40) options:v22];
  [*(a1 + 72) addObject:v23];
}

void __80___UISceneOpenItemProvidersBSActionsHandler_itemCollectionFromDragContinuation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  v7 = a3;
  [*(*(*(a1 + 32) + 8) + 40) setDataProviderEndpoint:v7];
}

@end