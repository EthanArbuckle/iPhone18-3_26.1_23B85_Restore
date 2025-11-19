@interface UISaveToCameraRollSaveItemsController
@end

@implementation UISaveToCameraRollSaveItemsController

void __58___UISaveToCameraRollSaveItemsController_beginSavingItem___block_invoke(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__4;
  v11[4] = __Block_byref_object_dispose__4;
  v12 = 0;
  v2 = *(a1 + 32);
  obj = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2 options:1 error:&obj];
  objc_storeStrong(&v12, obj);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58___UISaveToCameraRollSaveItemsController_beginSavingItem___block_invoke_124;
  v6[3] = &unk_1E71FAF58;
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v9 = v11;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  _Block_object_dispose(v11, 8);
}

uint64_t __58___UISaveToCameraRollSaveItemsController_beginSavingItem___block_invoke_124(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];

    return [v2 _saveImageData:?];
  }

  else
  {
    v4 = *(*(a1[6] + 8) + 40);
    if (!v4)
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
      v6 = *(a1[6] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(a1[6] + 8) + 40);
    }

    v8 = a1[5];

    return [v8 _didCompleteSavingItem:0 error:v4 contextInfo:0];
  }
}

@end