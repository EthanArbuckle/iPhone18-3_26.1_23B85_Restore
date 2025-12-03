@interface PUCopyLinkActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (void)performActivity;
@end

@implementation PUCopyLinkActivity

- (void)performActivity
{
  v10 = *MEMORY[0x1E69E9840];
  itemSourceController = [(PXActivity *)self itemSourceController];
  publishedURL = [itemSourceController publishedURL];

  v5 = PLSharingGetLog();
  v6 = v5;
  if (publishedURL)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      pl_redactedShareURL = [publishedURL pl_redactedShareURL];
      v8 = 138543362;
      v9 = pl_redactedShareURL;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Copy Link: Got moment share URL: %{public}@", &v8, 0xCu);
    }

    PXCopyURL();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Copy Link: Missing URL to copy", &v8, 2u);
    }
  }

  [(UIActivity *)self activityDidFinish:publishedURL != 0];
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemSourceController = [(PXActivity *)self itemSourceController];
  if ([itemSourceController shouldExcludeLivenessInAllItemSources] & 1) != 0 || (objc_msgSend(itemSourceController, "shouldExcludeCaptionInAllItemSources"))
  {
    v6 = 0;
  }

  else
  {
    v6 = [itemSourceController shouldExcludeAccessibilityDescriptionInAllItemSources] ^ 1;
  }

  assets = [itemSourceController assets];
  firstObject = [assets firstObject];
  photoLibrary = [firstObject photoLibrary];

  if (photoLibrary)
  {
    v10 = PXCMMHasSendAndReceiveCapabilities();
    LOBYTE(v11) = 0;
    if ([itemsCopy count] && v10)
    {
      itemSourceController2 = [(PXActivity *)self itemSourceController];
      v11 = [itemSourceController2 itemSourcesSupportMomentShareLinkCreation] & v6;
    }
  }

  else
  {
    v13 = PLSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = itemSourceController;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Copy Link: Photo library was nil, so returning NO for canPerform. Item source controller: %@", &v15, 0xCu);
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

@end