@interface PUMessageActivity
+ (BOOL)canPerformActivityAsIndividualItemsInSourceController:(id)a3;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (PXActivityItemSourceController)itemSourceController;
- (id)activityViewController;
- (void)_prepareWithMomentShareLink:(id)a3;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation PUMessageActivity

- (PXActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);

  return WeakRetained;
}

- (void)performActivity
{
  v3 = [(PUMessageActivity *)self itemSourceController];
  if ([v3 momentSharePublishAttempted] && (objc_msgSend(v3, "publishedURL"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Share Sheet: Immediately failing Message activity for missing moment share URL", buf, 2u);
    }

    [(UIActivity *)self activityDidFinish:0];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PUMessageActivity;
    [(UIActivity *)&v6 performActivity];
  }
}

- (id)activityViewController
{
  v3 = [(PUMessageActivity *)self itemSourceController];
  if ([v3 momentSharePublishAttempted] && (objc_msgSend(v3, "publishedURL"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Share Sheet: Failed to get anything to share to Messages. Skipping compose presentation", buf, 2u);
    }

    v5 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PUMessageActivity;
    v5 = [(UIMessageActivity *)&v8 activityViewController];
  }

  return v5;
}

- (void)prepareWithActivityItems:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUMessageActivity *)self itemSourceController];
  v6 = [v5 publishedURL];

  if (v6)
  {
    v7 = [v5 publishedURL];
    [(PUMessageActivity *)self _prepareWithMomentShareLink:v7];
  }

  else
  {
    v22.receiver = self;
    v22.super_class = PUMessageActivity;
    [(UIMessageActivity *)&v22 prepareWithActivityItems:v4];
  }

  v8 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(PUMessageActivity *)self itemSourceController];
  v10 = [v9 assetItemSources];

  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) asset];
        v16 = [v15 uuid];
        [v8 addObject:v16];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [(UIMessageActivity *)self messageComposeViewController];
  [v17 setPhotoIDs:v8];
}

- (void)_prepareWithMomentShareLink:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (PXCMMSupportsLiveBubbles())
    {
      v5 = PXMessageForMomentShareURL();
      if (v5)
      {
        v6 = v5;
        v18.receiver = self;
        v18.super_class = PUMessageActivity;
        [(UIMessageActivity *)&v18 prepareWithActivityItems:MEMORY[0x1E695E0F0]];
        v7 = PLSharingGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v4 pl_redactedShareURL];
          *buf = 138543362;
          v21 = v8;
          _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Share Sheet: Staging Live Bubble for moment share URL: %{public}@", buf, 0xCu);
        }

        v9 = [(UIMessageActivity *)self messageComposeViewController];
        [v9 setMessage:v6];

        goto LABEL_16;
      }

      v11 = PLSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v4 pl_redactedShareURL];
        *buf = 138543362;
        v21 = v12;
        v13 = "Share Sheet: Unable to create MSMessage for URL: %{public}@. Falling back to plain link";
        v14 = v11;
        v15 = OS_LOG_TYPE_ERROR;
        goto LABEL_14;
      }
    }

    else
    {
      v11 = PLSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 pl_redactedShareURL];
        *buf = 138543362;
        v21 = v12;
        v13 = "Share Sheet: Live Bubbles not supported. Sending moment share URL as text: %{public}@";
        v14 = v11;
        v15 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
        _os_log_impl(&dword_1B36F3000, v14, v15, v13, buf, 0xCu);
      }
    }

    v19 = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v17.receiver = self;
    v17.super_class = PUMessageActivity;
    [(UIMessageActivity *)&v17 prepareWithActivityItems:v6];
LABEL_16:

    goto LABEL_17;
  }

  v10 = PLSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Share Sheet: Missing URL to share via Messages", buf, 2u);
  }

  v16.receiver = self;
  v16.super_class = PUMessageActivity;
  [(UIMessageActivity *)&v16 prepareWithActivityItems:MEMORY[0x1E695E0F0]];
LABEL_17:
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PUMessageActivity;
  if (![(UIMessageActivity *)&v19 canPerformWithActivityItems:a3])
  {
    return 0;
  }

  v4 = [(PUMessageActivity *)self itemSourceController];
  v5 = [v4 assets];
  v6 = [v5 firstObject];
  v7 = [v6 photoLibrary];

  if (v7)
  {
    v8 = PXCMMHasSendAndReceiveCapabilities();
  }

  else
  {
    v10 = PLSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v5 count];
      *buf = 138412546;
      v21 = v4;
      v22 = 2048;
      v23 = v11;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Share Sheet: PUMessageActivity had a nil photo library from itemSourceController: %@, number of assets: %lu", buf, 0x16u);
    }

    v8 = 0;
  }

  v12 = [v4 itemSourcesSupportMomentShareLinkCreation];
  v13 = [v4 shouldUseMomentShareLinkInMessagesIfThresholdMet];
  if (PLCPLIsExceedingPrimarySyncQuota())
  {
    v14 = PLSharingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "Share Sheet: User's account is exceeding CPL quota, but still showing Messages as an iCloud Link option, so we can show a proper error message if they choose it.", buf, 2u);
    }
  }

  v15 = [MEMORY[0x1E69C33D8] sharedInstance];
  v16 = [v15 cmmShareSheetBehavior];

  if (v16 == 3)
  {
    v17 = 1;
  }

  else
  {
    v17 = v13;
  }

  if (v8 & v12) == 1 && (v17)
  {
    v9 = 1;
  }

  else
  {
    v9 = [objc_opt_class() canPerformActivityAsIndividualItemsInSourceController:v4];
  }

  return v9;
}

+ (BOOL)canPerformActivityAsIndividualItemsInSourceController:(id)a3
{
  v3 = a3;
  v4 = [v3 assetItemSources];
  v5 = [v4 count];

  v6 = [v3 preferredPreparationType];
  v7 = [MEMORY[0x1E69C3A18] sharedInstance];
  v8 = [v7 maxMessagesAssetLimit];

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  return v9 || v5 <= v8;
}

@end