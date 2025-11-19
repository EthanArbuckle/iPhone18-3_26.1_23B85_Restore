@interface UIApplicationModalProgressController
@end

@implementation UIApplicationModalProgressController

void __55___UIApplicationModalProgressController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_1060;
  _MergedGlobals_1060 = v1;
}

uint64_t __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 32) cancel];
  (*(*(a1 + 40) + 16))();
  result = *(*(*(a1 + 56) + 8) + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setUrlProgress:a2];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = *(a1 + 32);
  v3 = _Block_copy(aBlock);

  return v3;
}

void __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_5;
  block[3] = &unk_1E7104880;
  v4 = *(a1 + 80);
  v12 = v3;
  v17 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = *(a1 + 48);
  v7 = *(&v10 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v14 = v10;
  v13 = v8;
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_5(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    [v2 floatValue];
    v10 = [MEMORY[0x1E696AAF0] stringFromByteCount:(v3 * a1[11]) countStyle:0];
    v4 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:a1[5], v10, a1[6]];
    v5 = a1[7];
    v6 = a1[8];
    v7 = [v5 urlProgress];
    [v5 reconfigureWithTitle:v6 message:v4 progress:v7 buttonTitle:a1[9] dismissalHandler:a1[10]];
  }

  else
  {
    v8 = a1[7];
    v9 = a1[8];
    v10 = [v8 urlProgress];
    [v8 reconfigureWithTitle:v9 message:0 progress:? buttonTitle:? dismissalHandler:?];
  }
}

void __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) finishObserving];
  [*(a1 + 40) setUrlProgress:0];
  [MEMORY[0x1E696AE38] _removeSubscriber:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_7(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__56;
  v20[4] = __Block_byref_object_dispose__57;
  v21 = 0;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_58;
    v12[3] = &unk_1E7104920;
    v18 = *(a1 + 96);
    v6 = *(a1 + 64);
    v12[4] = *(a1 + 56);
    v13 = v6;
    v14 = *(a1 + 72);
    v17 = *(a1 + 80);
    v15 = v2;
    v16 = *(a1 + 32);
    v19 = v20;
    [v3 coordinateReadingItemAtURL:v5 options:0 writingItemAtURL:v4 options:0 error:0 byAccessor:v12];
  }

  else
  {
    [*(a1 + 40) coordinateReadingItemAtURL:*(a1 + 48) options:0x20000 error:0 byAccessor:&__block_literal_global_160];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_4_69;
  block[3] = &unk_1E7104968;
  block[4] = *(a1 + 56);
  v8 = *(a1 + 88);
  v7 = v8;
  v10 = v8;
  v11 = *(a1 + 104);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v20, 8);
}

void __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_2_59;
    block[3] = &unk_1E71048F8;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v20 = *(a1 + 88);
    block[4] = v7;
    v17 = v8;
    v18 = *(a1 + 48);
    v19 = *(a1 + 72);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    [*(a1 + 56) removeItemAtURL:*(a1 + 64) error:0];
    v9 = *(a1 + 56);
    v10 = [*(a1 + 64) URLByDeletingLastPathComponent];
    v11 = *(*(a1 + 96) + 8);
    obj = *(v11 + 40);
    LODWORD(v9) = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&obj];
    objc_storeStrong((v11 + 40), obj);

    if (v9)
    {
      v12 = *(a1 + 56);
      v13 = *(*(a1 + 96) + 8);
      v14 = *(v13 + 40);
      [v12 copyItemAtURL:v5 toURL:v6 error:&v14];
      objc_storeStrong((v13 + 40), v14);
    }
  }
}

void __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_2_59(uint64_t a1)
{
  v2 = *(*(*(a1 + 64) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = _UIKitBundle();
  v4 = [v3 localizedStringForKey:@"Copying..." value:@"Copying…" table:@"Localizable"];

  [*(a1 + 32) reconfigureWithTitle:*(a1 + 40) message:v4 progress:0 buttonTitle:*(a1 + 48) dismissalHandler:*(a1 + 56)];
}

uint64_t __115___UIApplicationModalProgressController_displayForDownloadingURL_copyToURL_sourceViewController_completionHandler___block_invoke_4_69(uint64_t a1)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) hideAfterMinimumUptimeWithDismissalHandler:0];
    (*(*(a1 + 40) + 16))();
  }

  result = *(*(*(a1 + 56) + 8) + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end