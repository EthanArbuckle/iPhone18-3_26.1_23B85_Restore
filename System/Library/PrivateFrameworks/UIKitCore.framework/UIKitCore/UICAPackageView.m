@interface UICAPackageView
@end

@implementation UICAPackageView

void __50___UICAPackageView__shouldCatchDecodingExceptions__block_invoke()
{
  v2 = _UIKitUserDefaults();
  v0 = [v2 objectForKey:@"UICatchCAPackageDecodingExceptions"];
  v1 = v0;
  if (v0)
  {
    _shouldCatchDecodingExceptions___shouldCatchDecodingExceptions = [v0 BOOLValue];
  }
}

void __85___UICAPackageView_loadPackageViewWithObject_publishedObjectViewClassMap_completion___block_invoke(uint64_t a1)
{
  v30[3] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85___UICAPackageView_loadPackageViewWithObject_publishedObjectViewClassMap_completion___block_invoke_2;
  aBlock[3] = &unk_1E712B9A0;
  v26 = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [MEMORY[0x1E6979518] activateBackground:1];
  if (*(a1 + 64) == 1)
  {
    v24 = 0;
    v3 = &v24;
    v4 = v2[2](v2, &v24);
  }

  else
  {
    v23 = 0;
    v4 = v2[2](v2, &v23);
    v3 = &v23;
  }

  v5 = *v3;
  [MEMORY[0x1E6979518] commit];
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85___UICAPackageView_loadPackageViewWithObject_publishedObjectViewClassMap_completion___block_invoke_3;
    block[3] = &unk_1E7118860;
    v22 = *(a1 + 56);
    v6 = v4;
    v19 = v6;
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v7 = v19;
  }

  else
  {
    v8 = [v5 domain];
    v9 = [v8 isEqual:@"CAARFileLoadingDomain"];

    if (v9)
    {
      v10 = v5;
    }

    else
    {
      v11 = MEMORY[0x1E696ABC0];
      if (v5)
      {
        v29 = *MEMORY[0x1E696AA08];
        v30[0] = v5;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        v10 = [v11 errorWithDomain:@"CAARFileLoadingDomain" code:950000 userInfo:v12];
      }

      else
      {
        v27 = *MEMORY[0x1E696A578];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'NSData' and 'NSURL' are the only valid input types (the argument was '%@')", objc_opt_class()];
        v28 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v10 = [v11 errorWithDomain:@"CAARFileLoadingDomain" code:950002 userInfo:v13];
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85___UICAPackageView_loadPackageViewWithObject_publishedObjectViewClassMap_completion___block_invoke_4;
    v15[3] = &unk_1E70F4A50;
    v14 = *(a1 + 48);
    v16 = v10;
    v17 = v14;
    v7 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v15);

    v6 = 0;
  }
}

id __85___UICAPackageView_loadPackageViewWithObject_publishedObjectViewClassMap_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E6979400] packageWithData:*(a1 + 32) type:*MEMORY[0x1E6979EF0] options:0 error:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [*(a1 + 32) path];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 pathExtension];
        v8 = *MEMORY[0x1E6979EF0];
        if (v7 && [v7 isEqualToString:@"ca"])
        {
          v9 = *MEMORY[0x1E6979EF8];

          v8 = v9;
        }
      }

      else
      {
        v8 = *MEMORY[0x1E6979EF0];
        v7 = 0;
      }

      v4 = [MEMORY[0x1E6979400] packageWithContentsOfURL:*(a1 + 32) type:v8 options:0 error:a2];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __85___UICAPackageView_loadPackageViewWithObject_publishedObjectViewClassMap_completion___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 56));
  v5 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  objc_storeStrong(v5 + 51, *(a1 + 32));
  v3 = [*(a1 + 56) _newViewHierarchyFrom:*(a1 + 32) publishedObjectViewClassMap:*(a1 + 40) into:v5];
  v4 = v5[52];
  v5[52] = v3;

  (*(*(a1 + 48) + 16))();
}

void __75___UICAPackageView__newViewHierarchyFrom_publishedObjectViewClassMap_into___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = CALayerGetSuperlayer();
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = CALayerGetDelegate();

  if (!v4)
  {
    v3 = _CreateViewForLayer(v5, *(a1 + 32));
    [*(a1 + 40) addObject:v3];
LABEL_2:
  }
}

@end