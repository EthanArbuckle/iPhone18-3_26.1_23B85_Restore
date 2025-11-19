@interface PUCopyLinkActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (void)performActivity;
@end

@implementation PUCopyLinkActivity

- (void)performActivity
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(PXActivity *)self itemSourceController];
  v4 = [v3 publishedURL];

  v5 = PLSharingGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 pl_redactedShareURL];
      v8 = 138543362;
      v9 = v7;
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

  [(UIActivity *)self activityDidFinish:v4 != 0];
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXActivity *)self itemSourceController];
  if ([v5 shouldExcludeLivenessInAllItemSources] & 1) != 0 || (objc_msgSend(v5, "shouldExcludeCaptionInAllItemSources"))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 shouldExcludeAccessibilityDescriptionInAllItemSources] ^ 1;
  }

  v7 = [v5 assets];
  v8 = [v7 firstObject];
  v9 = [v8 photoLibrary];

  if (v9)
  {
    v10 = PXCMMHasSendAndReceiveCapabilities();
    LOBYTE(v11) = 0;
    if ([v4 count] && v10)
    {
      v12 = [(PXActivity *)self itemSourceController];
      v11 = [v12 itemSourcesSupportMomentShareLinkCreation] & v6;
    }
  }

  else
  {
    v13 = PLSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Copy Link: Photo library was nil, so returning NO for canPerform. Item source controller: %@", &v15, 0xCu);
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

@end