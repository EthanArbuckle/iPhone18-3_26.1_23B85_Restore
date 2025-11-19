@interface UIDocumentActivityDownloadOperation
@end

@implementation UIDocumentActivityDownloadOperation

void __44___UIDocumentActivityDownloadOperation_main__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 256));
  if (!WeakRetained)
  {
    v3 = +[_UIApplicationModalProgressController sharedInstance];
    goto LABEL_5;
  }

  v3 = [_UIApplicationModalProgressController instanceForScene:WeakRetained];
  v4 = [WeakRetained traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [WeakRetained keyWindow];
  v7 = [v6 rootViewController];

LABEL_6:
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 248);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44___UIDocumentActivityDownloadOperation_main__block_invoke_2;
  v11[3] = &unk_1E70F3C60;
  v11[4] = v9;
  v12 = v8;
  [v3 displayForDownloadingURL:v10 sourceViewController:v7 completionHandler:v11];
}

uint64_t __44___UIDocumentActivityDownloadOperation_main__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) cancel];
    v3 = *(v2 + 40);

    return [v3 cancel];
  }

  return result;
}

@end