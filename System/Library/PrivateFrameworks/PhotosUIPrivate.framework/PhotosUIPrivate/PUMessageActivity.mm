@interface PUMessageActivity
+ (BOOL)canPerformActivityAsIndividualItemsInSourceController:(id)controller;
- (BOOL)canPerformWithActivityItems:(id)items;
- (PXActivityItemSourceController)itemSourceController;
- (id)activityViewController;
- (void)_prepareWithMomentShareLink:(id)link;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation PUMessageActivity

- (PXActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);

  return WeakRetained;
}

- (void)performActivity
{
  itemSourceController = [(PUMessageActivity *)self itemSourceController];
  if ([itemSourceController momentSharePublishAttempted] && (objc_msgSend(itemSourceController, "publishedURL"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
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
  itemSourceController = [(PUMessageActivity *)self itemSourceController];
  if ([itemSourceController momentSharePublishAttempted] && (objc_msgSend(itemSourceController, "publishedURL"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Share Sheet: Failed to get anything to share to Messages. Skipping compose presentation", buf, 2u);
    }

    activityViewController = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PUMessageActivity;
    activityViewController = [(UIMessageActivity *)&v8 activityViewController];
  }

  return activityViewController;
}

- (void)prepareWithActivityItems:(id)items
{
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemSourceController = [(PUMessageActivity *)self itemSourceController];
  publishedURL = [itemSourceController publishedURL];

  if (publishedURL)
  {
    publishedURL2 = [itemSourceController publishedURL];
    [(PUMessageActivity *)self _prepareWithMomentShareLink:publishedURL2];
  }

  else
  {
    v22.receiver = self;
    v22.super_class = PUMessageActivity;
    [(UIMessageActivity *)&v22 prepareWithActivityItems:itemsCopy];
  }

  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  itemSourceController2 = [(PUMessageActivity *)self itemSourceController];
  assetItemSources = [itemSourceController2 assetItemSources];

  v11 = [assetItemSources countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(assetItemSources);
        }

        asset = [*(*(&v18 + 1) + 8 * v14) asset];
        uuid = [asset uuid];
        [array addObject:uuid];

        ++v14;
      }

      while (v12 != v14);
      v12 = [assetItemSources countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v12);
  }

  messageComposeViewController = [(UIMessageActivity *)self messageComposeViewController];
  [messageComposeViewController setPhotoIDs:array];
}

- (void)_prepareWithMomentShareLink:(id)link
{
  v22 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  if (linkCopy)
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
          pl_redactedShareURL = [linkCopy pl_redactedShareURL];
          *buf = 138543362;
          v21 = pl_redactedShareURL;
          _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Share Sheet: Staging Live Bubble for moment share URL: %{public}@", buf, 0xCu);
        }

        messageComposeViewController = [(UIMessageActivity *)self messageComposeViewController];
        [messageComposeViewController setMessage:v6];

        goto LABEL_16;
      }

      v11 = PLSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        pl_redactedShareURL2 = [linkCopy pl_redactedShareURL];
        *buf = 138543362;
        v21 = pl_redactedShareURL2;
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
        pl_redactedShareURL2 = [linkCopy pl_redactedShareURL];
        *buf = 138543362;
        v21 = pl_redactedShareURL2;
        v13 = "Share Sheet: Live Bubbles not supported. Sending moment share URL as text: %{public}@";
        v14 = v11;
        v15 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
        _os_log_impl(&dword_1B36F3000, v14, v15, v13, buf, 0xCu);
      }
    }

    v19 = linkCopy;
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

- (BOOL)canPerformWithActivityItems:(id)items
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PUMessageActivity;
  if (![(UIMessageActivity *)&v19 canPerformWithActivityItems:items])
  {
    return 0;
  }

  itemSourceController = [(PUMessageActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  firstObject = [assets firstObject];
  photoLibrary = [firstObject photoLibrary];

  if (photoLibrary)
  {
    v8 = PXCMMHasSendAndReceiveCapabilities();
  }

  else
  {
    v10 = PLSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [assets count];
      *buf = 138412546;
      v21 = itemSourceController;
      v22 = 2048;
      v23 = v11;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Share Sheet: PUMessageActivity had a nil photo library from itemSourceController: %@, number of assets: %lu", buf, 0x16u);
    }

    v8 = 0;
  }

  itemSourcesSupportMomentShareLinkCreation = [itemSourceController itemSourcesSupportMomentShareLinkCreation];
  shouldUseMomentShareLinkInMessagesIfThresholdMet = [itemSourceController shouldUseMomentShareLinkInMessagesIfThresholdMet];
  if (PLCPLIsExceedingPrimarySyncQuota())
  {
    v14 = PLSharingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "Share Sheet: User's account is exceeding CPL quota, but still showing Messages as an iCloud Link option, so we can show a proper error message if they choose it.", buf, 2u);
    }
  }

  mEMORY[0x1E69C33D8] = [MEMORY[0x1E69C33D8] sharedInstance];
  cmmShareSheetBehavior = [mEMORY[0x1E69C33D8] cmmShareSheetBehavior];

  if (cmmShareSheetBehavior == 3)
  {
    v17 = 1;
  }

  else
  {
    v17 = shouldUseMomentShareLinkInMessagesIfThresholdMet;
  }

  if (v8 & itemSourcesSupportMomentShareLinkCreation) == 1 && (v17)
  {
    v9 = 1;
  }

  else
  {
    v9 = [objc_opt_class() canPerformActivityAsIndividualItemsInSourceController:itemSourceController];
  }

  return v9;
}

+ (BOOL)canPerformActivityAsIndividualItemsInSourceController:(id)controller
{
  controllerCopy = controller;
  assetItemSources = [controllerCopy assetItemSources];
  v5 = [assetItemSources count];

  preferredPreparationType = [controllerCopy preferredPreparationType];
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  maxMessagesAssetLimit = [mEMORY[0x1E69C3A18] maxMessagesAssetLimit];

  if (preferredPreparationType)
  {
    v9 = 1;
  }

  else
  {
    v9 = maxMessagesAssetLimit == 0;
  }

  return v9 || v5 <= maxMessagesAssetLimit;
}

@end