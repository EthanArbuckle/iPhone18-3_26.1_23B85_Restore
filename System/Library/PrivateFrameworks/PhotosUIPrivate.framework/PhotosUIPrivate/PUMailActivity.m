@interface PUMailActivity
+ (BOOL)allowedToModifyEmailAccounts;
+ (BOOL)canPerformActivityAsIndividualItemsInSourceController:(id)a3;
+ (BOOL)canPerformActivityWithTotalCount:(unint64_t)a3 assetMediaTypeCount:(PXAssetMediaTypeCount *)a4;
+ (BOOL)isMailDropEnabled;
+ (id)_expirationStringForMomentShare:(id)a3;
+ (id)_momentShareLinkActivityItemsForURL:(id)a3 momentShare:(id)a4;
+ (id)_momentShareLinkSubjectForMomentShare:(id)a3;
+ (id)_momentShareLinkTitleForMomentShare:(id)a3;
+ (void)openEmailAccountPrefs;
- (BOOL)_canPerformForIndividualAssetsWithActivityItems:(id)a3;
- (BOOL)_canPerformWithLink;
- (BOOL)_dismissActivityFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)_isMailDropEnabled;
- (BOOL)_momentShareLinkDidFail;
- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)_showTrimViewControllerIfNeededForVideoAsset:(id)a3;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (PUMailActivity)init;
- (PXActivityItemSourceController)itemSourceController;
- (id)activityViewController;
- (id)mailComposeViewController;
- (void)_cleanupRemaker;
- (void)_composeMailForVideo:(id)a3 trimmedFilePath:(id)a4;
- (void)_prepareWithMomentShareLink:(id)a3;
- (void)_pu_cleanup;
- (void)_remakeAndSendVideoAsset:(id)a3 withTrimStartTime:(double)a4 endTime:(double)a5;
- (void)_removeTempVideoRemakerFile;
- (void)_showTrimViewControllerForVideo:(id)a3 maximumTrimDuration:(double)a4 trimButtonTitle:(id)a5;
- (void)_transcodeAndSendVideo:(id)a3;
- (void)activityDidFinish:(BOOL)a3;
- (void)cancelRemaking;
- (void)dealloc;
- (void)editVideoViewController:(id)a3 didTrimVideoWithOptions:(id)a4;
- (void)editVideoViewControllerDidCancel:(id)a3;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
- (void)remakeVideoAsset:(id)a3 withTrimStartTime:(double)a4 endTime:(double)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (void)videoRemakerDidBeginRemaking:(id)a3;
- (void)videoRemakerDidEndRemaking:(id)a3 temporaryPath:(id)a4;
@end

@implementation PUMailActivity

- (PXActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_shouldTranscodeSingleVideo);

  return WeakRetained;
}

- (void)editVideoViewControllerDidCancel:(id)a3
{
  mailComposeViewController = self->super._mailComposeViewController;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PUMailActivity_editVideoViewControllerDidCancel___block_invoke;
  v4[3] = &unk_1E7B80DD0;
  v4[4] = self;
  [(MFMailComposeViewController *)mailComposeViewController dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __51__PUMailActivity_editVideoViewControllerDidCancel___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 216) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  *(v2 + 216) = 0;

  v4 = *(a1 + 32);

  return [v4 activityDidFinish:0];
}

- (void)editVideoViewController:(id)a3 didTrimVideoWithOptions:(id)a4
{
  mailComposeViewController = self->super._mailComposeViewController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PUMailActivity_editVideoViewController_didTrimVideoWithOptions___block_invoke;
  v13[3] = &unk_1E7B80DD0;
  v13[4] = self;
  v6 = a4;
  [(MFMailComposeViewController *)mailComposeViewController dismissViewControllerAnimated:1 completion:v13];
  v7 = [v6 objectForKey:*MEMORY[0x1E69DE9C0]];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v6 objectForKey:*MEMORY[0x1E69DE9B8]];

  [v10 doubleValue];
  v12 = v11;

  [(PUMailActivity *)self _remakeAndSendVideoAsset:self->_referenceViewController withTrimStartTime:v9 endTime:v12];
}

void __66__PUMailActivity_editVideoViewController_didTrimVideoWithOptions___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 216) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  *(v2 + 216) = 0;
}

- (void)activityDidFinish:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUMailActivity;
  [(UIActivity *)&v4 activityDidFinish:a3];
  [(PUMailActivity *)self _pu_cleanup];
}

- (void)performActivity
{
  if ([(PUMailActivity *)self _momentShareLinkDidFail])
  {
    v3 = PLSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_ERROR, "Share Sheet: Immediately failing Mail activity for missing Moment Share URL", buf, 2u);
    }

    [(PUMailActivity *)self activityDidFinish:0];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PUMailActivity;
    [(UIActivity *)&v4 performActivity];
  }
}

- (BOOL)_dismissActivityFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  if (BYTE4(self->_strongSelf) == 1)
  {
    v6 = 1;
    [(PHAsset *)self->_videoAssetBeingTrimmed dismissViewControllerAnimated:1 completion:a5];
    BYTE4(self->_strongSelf) = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PUMailActivity;
    return [(UIMailActivity *)&v8 _dismissActivityFromViewController:a3 animated:a4 completion:a5];
  }

  return v6;
}

- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v10 = a3;
  if (self->_strongSelf)
  {
    if ([getMFMailComposeViewControllerClass() canSendMail])
    {
      objc_storeStrong(&self->super._mailComposeViewController, a3);
      v11 = PLSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "Share Sheet: Mail Activity: Trimming and/or re-transcode single video to an acceptable attachment size...", v20, 2u);
      }

      v12 = [(PUMailActivity *)self itemSourceController];
      v13 = [v12 assets];
      if ([v13 count] == 1)
      {
        v14 = [v13 lastObject];
        if ([v14 isVideo])
        {
          v15 = [v13 lastObject];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v17 = [v15 pl_managedAsset];
      if (!v17)
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        [v19 handleFailureInMethod:a2 object:self file:@"PUMailActivity.m" lineNumber:685 description:@"expect single video"];
      }

      [(PUMailActivity *)self _transcodeAndSendVideo:v15];

      v16 = 1;
    }

    else
    {
      +[PUMailActivity openEmailAccountPrefs];
      v16 = 0;
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PUMailActivity;
    v16 = [(UIMailActivity *)&v21 _presentActivityOnViewController:v10 animated:v6 completion:a5];
  }

  return v16;
}

- (id)mailComposeViewController
{
  if ([(PUMailActivity *)self _momentShareLinkDidFail]|| (self->_strongSelf & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PUMailActivity;
    v3 = [(UIMailActivity *)&v5 mailComposeViewController];
  }

  return v3;
}

- (id)activityViewController
{
  if ([(PUMailActivity *)self _momentShareLinkDidFail])
  {
    v3 = 0;
  }

  else if (self->_strongSelf)
  {
    v3 = self->_videoAssetBeingTrimmed;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PUMailActivity;
    v3 = [(UIMailActivity *)&v5 activityViewController];
  }

  return v3;
}

- (void)prepareWithActivityItems:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUMailActivity *)self itemSourceController];
  v6 = [v5 publishedURL];

  if (v6)
  {
    v7 = [v5 publishedURL];
    [(PUMailActivity *)self _prepareWithMomentShareLink:v7];

LABEL_8:
    v11 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [(PUMailActivity *)self itemSourceController];
    v13 = [v12 assetItemSources];

    v14 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v21 + 1) + 8 * v17) asset];
          v19 = [v18 uuid];
          [v11 addObject:v19];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v15);
    }

    v20 = [(PUMailActivity *)self mailComposeViewController];
    [v20 setPhotoIDs:v11];

    goto LABEL_16;
  }

  if ((self->_strongSelf & 1) == 0)
  {
    v25.receiver = self;
    v25.super_class = PUMailActivity;
    [(UIMailActivity *)&v25 prepareWithActivityItems:v4];
    goto LABEL_8;
  }

  if (([getMFMailComposeViewControllerClass() canSendMail] & 1) == 0)
  {
    +[PUMailActivity openEmailAccountPrefs];
    goto LABEL_16;
  }

  v8 = objc_alloc_init(getMFMailComposeViewControllerClass());
  if (v8)
  {
    v9 = v8;
    [(PHAsset *)v8 setMailComposeDelegate:self];
    [(PHAsset *)self->_videoAssetBeingTrimmed setMailComposeDelegate:0];
    videoAssetBeingTrimmed = self->_videoAssetBeingTrimmed;
    self->_videoAssetBeingTrimmed = v9;

    goto LABEL_8;
  }

LABEL_16:
}

- (void)_prepareWithMomentShareLink:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    v17 = 0;
    v7 = [MEMORY[0x1E6978930] fetchLocalMomentShareFromShareURL:v4 error:&v17 options:v6];
    v8 = v17;
    if (!v7)
    {
      v9 = PLSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v4 pl_redactedShareURL];
        *buf = 138543618;
        v19 = v10;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Share Sheet: Mail activity failed to fetch moment share for URL: %{public}@ with error: %@", buf, 0x16u);
      }
    }

    v11 = [objc_opt_class() _momentShareLinkActivityItemsForURL:v4 momentShare:v7];
    v16.receiver = self;
    v16.super_class = PUMailActivity;
    [(UIMailActivity *)&v16 prepareWithActivityItems:v11];
    v12 = [objc_opt_class() _momentShareLinkSubjectForMomentShare:v7];
    v13 = [(PUMailActivity *)self mailComposeViewController];
    [v13 setSubject:v12];
  }

  else
  {
    v14 = PLSharingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Share Sheet: No Moment Share URL to prepare for Mail activity", buf, 2u);
    }

    v15.receiver = self;
    v15.super_class = PUMailActivity;
    [(UIMailActivity *)&v15 prepareWithActivityItems:MEMORY[0x1E695E0F0]];
  }
}

- (BOOL)_canPerformForIndividualAssetsWithActivityItems:(id)a3
{
  v22.receiver = self;
  v22.super_class = PUMailActivity;
  v4 = [(UIMailActivity *)&v22 canPerformWithActivityItems:a3];
  if (v4)
  {
    v5 = [(PUMailActivity *)self _isMailDropEnabled];
    v6 = [(PUMailActivity *)self itemSourceController];
    if (v5)
    {
      v7 = 0;
      LOBYTE(v8) = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v6 = [(PUMailActivity *)self itemSourceController];
  }

  v9 = [v6 assets];
  v10 = [v9 count];

  if (v10)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    *buf = 0u;
    v18 = 0u;
    if (v6)
    {
      [v6 requestAssetsMediaTypeCount];
    }

    v11 = objc_opt_class();
    v15[2] = v19;
    v15[3] = v20;
    v16 = v21;
    v15[0] = *buf;
    v15[1] = v18;
    v7 = 0;
    v8 = v4 & [v11 canPerformActivityWithTotalCount:v10 assetMediaTypeCount:v15];
    if (*&buf[8] == 1 && v10 == 1)
    {
      v7 = v18 == 0;
    }
  }

  else
  {
    v7 = 0;
    LOBYTE(v8) = 0;
  }

LABEL_12:
  if ([v6 shouldShareAsUnmodifiedOriginals])
  {
    LOBYTE(self->_strongSelf) = 0;
  }

  else
  {
    v12 = [v6 preferredExportFormat] != 1 && v7;
    LOBYTE(self->_strongSelf) = v12;
    if (v12)
    {
      v13 = PLSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "Share Sheet: Mail Activity: Single video being shared to Mail without Mail Drop; will attempt to re-transcode to an acceptable attachment size when sharing", buf, 2u);
      }
    }
  }

  return v8;
}

- (BOOL)_canPerformWithLink
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() _momentShareLinkPrompt];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6.receiver = self;
  v6.super_class = PUMailActivity;
  LOBYTE(self) = [(UIMailActivity *)&v6 canPerformWithActivityItems:v4];

  return self;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUMailActivity *)self itemSourceController];
  if ([v5 preferredPreparationType] == 1)
  {
    v6 = [(PUMailActivity *)self _canPerformWithLink];
  }

  else
  {
    v6 = [(PUMailActivity *)self _canPerformForIndividualAssetsWithActivityItems:v4];
    v7 = [v5 assets];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [MEMORY[0x1E69C33D8] sharedInstance];
      v10 = [v9 cmmShareSheetBehavior];

      v11 = [v5 assets];
      v12 = [v11 firstObject];
      v13 = [v12 photoLibrary];

      if (v13)
      {
        v14 = PXCMMHasSendAndReceiveCapabilities();
        if (v10 == 3)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v6 |= v15;
      }

      else
      {
        v16 = PLSharingGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = 138412290;
          v19 = v5;
          _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Mail Activity: Photo library was nil, so returning unable to determine if CMM is enabled. Item source controller: %@", &v18, 0xCu);
        }
      }
    }
  }

  return v6 & 1;
}

- (BOOL)_momentShareLinkDidFail
{
  v2 = [(PUMailActivity *)self itemSourceController];
  if ([v2 momentSharePublishAttempted])
  {
    v3 = [v2 publishedURL];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_composeMailForVideo:(id)a3 trimmedFilePath:(id)a4
{
  v6 = a4;
  v7 = self->_videoAssetBeingTrimmed;
  v8 = a3;
  [(PHAsset *)v7 setMailComposeDelegate:self];
  v9 = [v8 pl_managedAsset];

  v10 = [v9 pathForVideoFile];
  v11 = [v10 lastPathComponent];
  v12 = v11;
  if (v6)
  {
    v13 = [v11 stringByDeletingPathExtension];

    v14 = [v6 pathExtension];
    v12 = [v13 stringByAppendingPathExtension:v14];

    v10 = v6;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v10 options:1 error:0];
  v16 = MEMORY[0x1E6982C40];
  v17 = [v10 pathExtension];
  v18 = [v16 typeWithFilenameExtension:v17];

  v19 = [v18 preferredMIMEType];
  [(PHAsset *)v7 addAttachmentData:v15 mimeType:v19 fileName:v12];

  if (BYTE3(self->_strongSelf) == 1)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__PUMailActivity__composeMailForVideo_trimmedFilePath___block_invoke;
    v20[3] = &unk_1E7B80088;
    v20[4] = self;
    v21 = v7;
    [(PHAsset *)v21 _presentComposeInNewWindowWithCompletion:v20];
  }

  else
  {
    [(MFMailComposeViewController *)self->super._mailComposeViewController presentViewController:v7 animated:1 completion:0];
  }
}

uint64_t __55__PUMailActivity__composeMailForVideo_trimmedFilePath___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = PLSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_ERROR, "Share Sheet: Failed to present mail compose in new window. Presenting modally instead.", v4, 2u);
    }

    result = [*(*(v2 + 32) + 192) presentViewController:*(v2 + 40) animated:1 completion:0];
    *(*(v2 + 32) + 260) = 1;
  }

  return result;
}

- (void)videoRemakerDidEndRemaking:(id)a3 temporaryPath:(id)a4
{
  v5 = a4;
  if (-[PUMailActivity _remakerWasCancelled](self, "_remakerWasCancelled") || ![v5 length])
  {

    v5 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PUMailActivity_videoRemakerDidEndRemaking_temporaryPath___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __59__PUMailActivity_videoRemakerDidEndRemaking_temporaryPath___block_invoke(uint64_t a1)
{
  v2 = +[PUPhotoSharingManager sharedInstance];
  [v2 setRemaking:0];

  [*(a1 + 32) setTranscodedVideoFilePath:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = v3[30];
  if (v4)
  {
    (*(v4 + 16))(v3[30], *(a1 + 40));
    v3 = *(a1 + 32);
  }

  [v3 _cleanupRemaker];
  v5 = *(a1 + 32);
  v6 = *(v5 + 248);
  *(v5 + 248) = 0;
}

- (void)videoRemakerDidBeginRemaking:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PUMailActivity_videoRemakerDidBeginRemaking___block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __47__PUMailActivity_videoRemakerDidBeginRemaking___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 248), *(a1 + 32));
  v1 = +[PUPhotoSharingManager sharedInstance];
  [v1 setRemaking:1];
}

- (void)_removeTempVideoRemakerFile
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PUMailActivity *)self transcodedVideoFilePath];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [(PUMailActivity *)self transcodedVideoFilePath];
    v7 = [v5 fileURLWithPath:v6];

    if (v7)
    {
      v8 = PLShareSheetGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "[PUMailActivity] Removing temporary video remake file at URL: %{public}@", buf, 0xCu);
      }

      [(PUMailActivity *)self setTranscodedVideoFilePath:0];
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = 0;
      v10 = [v9 removeItemAtURL:v7 error:&v13];
      v11 = v13;

      if ((v10 & 1) == 0)
      {
        v12 = PLShareSheetGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v15 = v7;
          v16 = 2114;
          v17 = v11;
          _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "[PUMailActivity] Failed to clean up temporary video remake file at URL (%{public}@): %{public}@", buf, 0x16u);
        }
      }
    }
  }
}

- (void)_cleanupRemaker
{
  videoRemaker = self->_videoRemaker;
  self->_videoRemaker = 0;

  remakerProgressView = self->_remakerProgressView;
  self->_remakerProgressView = 0;
}

- (void)remakeVideoAsset:(id)a3 withTrimStartTime:(double)a4 endTime:(double)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__PUMailActivity_remakeVideoAsset_withTrimStartTime_endTime_progressHandler_completionHandler___block_invoke;
  v18[3] = &unk_1E7B79408;
  v18[4] = self;
  v19 = v12;
  v22 = a4;
  v23 = a5;
  v20 = v14;
  v21 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v14;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
}

void __95__PUMailActivity_remakeVideoAsset_withTrimStartTime_endTime_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanupRemaker];
  [*(a1 + 32) _setRemakerWasCancelled:0];
  [*(a1 + 32) _removeTempVideoRemakerFile];
  v2 = _Block_copy(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 240);
  *(v3 + 240) = v2;

  v10 = [*(a1 + 40) pl_managedAsset];
  v5 = [objc_alloc(MEMORY[0x1E69BE1E0]) initWithManagedAsset:v10 applyVideoAdjustments:1];
  v6 = *(a1 + 32);
  v7 = *(v6 + 232);
  *(v6 + 232) = v5;

  [*(*(a1 + 32) + 232) setDelegate:?];
  if (*(a1 + 64) > 0.0 || *(a1 + 72) > 0.0)
  {
    [*(*(a1 + 32) + 232) setTrimStartTime:?];
    [*(*(a1 + 32) + 232) setTrimEndTime:*(a1 + 72)];
  }

  v8 = [*(a1 + 40) descriptionProperties];
  v9 = [v8 accessibilityDescription];

  [*(*(a1 + 32) + 232) setCustomAccessibilityLabel:v9];
  [*(*(a1 + 32) + 232) setMode:2];
  [*(*(a1 + 32) + 232) setProgressHandler:*(a1 + 56)];
  [*(*(a1 + 32) + 232) setShouldExportToPhotoDataDirectory:1];
  [*(*(a1 + 32) + 232) remake];
}

- (void)_transcodeAndSendVideo:(id)a3
{
  v4 = a3;
  if (![(PUMailActivity *)self _showTrimViewControllerIfNeededForVideoAsset:?])
  {
    [(PUMailActivity *)self _remakeAndSendVideoAsset:v4 withTrimStartTime:0.0 endTime:0.0];
  }
}

- (void)cancelRemaking
{
  if (self->_remakerProgressView)
  {
    [(PUMailActivity *)self _setRemakerWasCancelled:1];
    remakerProgressView = self->_remakerProgressView;

    [(PLProgressView *)remakerProgressView cancel];
  }
}

- (void)_remakeAndSendVideoAsset:(id)a3 withTrimStartTime:(double)a4 endTime:(double)a5
{
  v8 = a3;
  [(PLUIEditVideoViewController *)self->_editVideoViewController removeFromSuperview];
  v9 = [objc_alloc(MEMORY[0x1E69BE1C0]) initWithFrame:{0.0, 0.0, 0.0, 45.0}];
  editVideoViewController = self->_editVideoViewController;
  self->_editVideoViewController = v9;

  v11 = [(PUMailActivity *)self itemSourceController];
  v12 = [v11 activityViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 mailActivity:self displayVideoRemakerProgressView:self->_editVideoViewController];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PUMailActivity__remakeAndSendVideoAsset_withTrimStartTime_endTime___block_invoke;
  v16[3] = &unk_1E7B7F9B0;
  v16[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PUMailActivity__remakeAndSendVideoAsset_withTrimStartTime_endTime___block_invoke_2;
  v14[3] = &unk_1E7B7C540;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [(PUMailActivity *)self remakeVideoAsset:v13 withTrimStartTime:v16 endTime:v14 progressHandler:a4 completionHandler:a5];
}

void __69__PUMailActivity__remakeAndSendVideoAsset_withTrimStartTime_endTime___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(*(a1 + 32) + 224) removeFromSuperview];
  v3 = *(a1 + 32);
  v4 = *(v3 + 224);
  *(v3 + 224) = 0;

  v5 = *(a1 + 32);
  if (v6)
  {
    [v5 _composeMailForVideo:*(a1 + 40) trimmedFilePath:v6];
  }

  else
  {
    [v5 activityDidFinish:0];
  }
}

- (BOOL)_showTrimViewControllerIfNeededForVideoAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 pl_managedAsset];
  [MEMORY[0x1E69BE7F0] durationForManagedAsset:v5 applyVideoAdjustments:1];
  v7 = v6;
  [MEMORY[0x1E69BE1E0] maximumDurationForTrimMode:2];
  v9 = v8;
  if (v7 > v8)
  {
    v10 = PLLocalizedFrameworkString();
    [(PUMailActivity *)self _showTrimViewControllerForVideo:v4 maximumTrimDuration:v10 trimButtonTitle:v9];
  }

  return v7 > v9;
}

- (void)_showTrimViewControllerForVideo:(id)a3 maximumTrimDuration:(double)a4 trimButtonTitle:(id)a5
{
  v8 = a3;
  mailComposeController = self->_mailComposeController;
  v10 = a5;
  [(MFMailComposeViewController *)mailComposeController setDelegate:0];
  referenceViewController = self->_referenceViewController;
  self->_referenceViewController = v8;
  v12 = v8;

  v20 = [(UIViewController *)v12 pl_managedAsset];
  v13 = [objc_alloc(MEMORY[0x1E69BE1D8]) initWithPhoto:v20 trimTitle:v10];

  [(MFMailComposeViewController *)v13 setDelegate:self];
  v14 = MEMORY[0x1E695DF20];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v16 = [v14 dictionaryWithObjectsAndKeys:{v15, *MEMORY[0x1E69DDE28], *MEMORY[0x1E695E4D0], *MEMORY[0x1E69DE9B0], *MEMORY[0x1E695E4D0], *MEMORY[0x1E69DE8D8], 0}];
  [(MFMailComposeViewController *)v13 setImagePickerOptions:v16];

  v17 = self->_mailComposeController;
  self->_mailComposeController = v13;
  v18 = v13;

  [(MFMailComposeViewController *)self->_mailComposeController setParentInPopoverException:1];
  v19 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v18];
  [(MFMailComposeViewController *)self->super._mailComposeViewController presentViewController:v19 animated:1 completion:0];
}

- (BOOL)_isMailDropEnabled
{
  v3 = [MEMORY[0x1E69C3A18] sharedInstance];
  v4 = [v3 disableMailDrop];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    if (BYTE1(self->_strongSelf) != 1)
    {
      BYTE2(self->_strongSelf) = [objc_opt_class() isMailDropEnabled];
      BYTE1(self->_strongSelf) = 1;
    }

    v5 = BYTE2(self->_strongSelf);
  }

  return v5 & 1;
}

- (void)dealloc
{
  [(PUMailActivity *)self _pu_cleanup];
  v3.receiver = self;
  v3.super_class = PUMailActivity;
  [(UIMailActivity *)&v3 dealloc];
}

- (void)_pu_cleanup
{
  mailComposeViewController = self->super._mailComposeViewController;
  self->super._mailComposeViewController = 0;

  [(PUMailActivity *)self _cleanupRemaker];
  [(PUMailActivity *)self _removeTempVideoRemakerFile];
  referenceViewController = self->_referenceViewController;
  self->_referenceViewController = 0;

  [(MFMailComposeViewController *)self->_mailComposeController setDelegate:0];
  mailComposeController = self->_mailComposeController;
  self->_mailComposeController = 0;

  [(PHAsset *)self->_videoAssetBeingTrimmed setMailComposeDelegate:0];
  videoAssetBeingTrimmed = self->_videoAssetBeingTrimmed;
  self->_videoAssetBeingTrimmed = 0;

  BYTE4(self->_strongSelf) = 0;
}

- (PUMailActivity)init
{
  v4.receiver = self;
  v4.super_class = PUMailActivity;
  v2 = [(UIMailActivity *)&v4 init];
  if (v2)
  {
    BYTE3(v2->_strongSelf) = [getMFMailComposeViewControllerClass() _canSendMailInNewScene];
  }

  return v2;
}

+ (void)openEmailAccountPrefs
{
  if (![a1 allowedToModifyEmailAccounts])
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Attempted to access restricted account settings" userInfo:0];
    objc_exception_throw(v3);
  }

  v2 = MEMORY[0x1E69C3B78];

  [v2 navigateToDestination:8 completion:0];
}

+ (BOOL)allowedToModifyEmailAccounts
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getMCProfileConnectionClass_softClass;
  v20 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getMCProfileConnectionClass_block_invoke;
    v15 = &unk_1E7B800F0;
    v16 = &v17;
    __getMCProfileConnectionClass_block_invoke(&v12);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = [v2 sharedConnection];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v5 = getMCFeatureAccountModificationAllowedSymbolLoc_ptr;
  v20 = getMCFeatureAccountModificationAllowedSymbolLoc_ptr;
  if (!getMCFeatureAccountModificationAllowedSymbolLoc_ptr)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getMCFeatureAccountModificationAllowedSymbolLoc_block_invoke;
    v15 = &unk_1E7B800F0;
    v16 = &v17;
    v6 = ManagedConfigurationLibrary();
    v7 = dlsym(v6, "MCFeatureAccountModificationAllowed");
    *(v16[1] + 24) = v7;
    getMCFeatureAccountModificationAllowedSymbolLoc_ptr = *(v16[1] + 24);
    v5 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v5)
  {
    v8 = [v4 effectiveBoolValueForSetting:*v5] != 2;

    return v8;
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMCFeatureAccountModificationAllowed(void)"];
    [v10 handleFailureInFunction:v11 file:@"PUMailActivity.m" lineNumber:63 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (BOOL)canPerformActivityAsIndividualItemsInSourceController:(id)a3
{
  v4 = a3;
  if ([a1 isMailDropEnabled])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 assets];
    v7 = [v6 count];

    if (v7)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      if (v4)
      {
        [v4 requestAssetsMediaTypeCount];
      }

      v8 = objc_opt_class();
      v10[2] = v14;
      v10[3] = v15;
      v11 = v16;
      v10[0] = v12;
      v10[1] = v13;
      v5 = [v8 canPerformActivityWithTotalCount:v7 assetMediaTypeCount:v10];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)canPerformActivityWithTotalCount:(unint64_t)a3 assetMediaTypeCount:(PXAssetMediaTypeCount *)a4
{
  var0 = a4->var0;
  var1 = a4->var1;
  v7 = [MEMORY[0x1E69C3A18] sharedInstance];
  v8 = [v7 maxMailPhotoLimit];

  if (v8)
  {
    v9 = var0 > v8;
  }

  else
  {
    v9 = 0;
  }

  v11 = !v9 && var1 < 2;
  if (var0)
  {
    v12 = var1 == 0;
  }

  else
  {
    v12 = 1;
  }

  return v12 && var1 + var0 >= a3 && v11;
}

+ (BOOL)isMailDropEnabled
{
  v2 = [MEMORY[0x1E69C3A18] sharedInstance];
  v3 = [v2 disableMailDrop];

  if (v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
  v6 = [v5 cachedPrimaryAppleAccount];
  v7 = v6;
  if (v6)
  {
    v4 = [v6 isEnabledForDataclass:*MEMORY[0x1E6959B58]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_momentShareLinkActivityItemsForURL:(id)a3 momentShare:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"PUMailActivity.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [objc_opt_class() _momentShareLinkPrompt];
  v11 = [v10 stringByAppendingString:@"\n"];

  PXScaledValueForTextStyleWithSymbolicTraits();
  v12 = [MEMORY[0x1E69DB878] systemFontOfSize:?];
  v29 = *MEMORY[0x1E69DB648];
  v30[0] = v12;
  v25 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v26 = v11;
  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v13];
  [v9 addObject:v14];
  v15 = v8;
  v16 = [objc_opt_class() _momentShareLinkTitleForMomentShare:v8];
  if (v16)
  {
    [v9 addObject:v16];
  }

  v27 = *MEMORY[0x1E69DB670];
  v28 = v7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v19 = [v7 absoluteString];
  v20 = [v18 initWithString:v19 attributes:v17];

  [v9 addObject:v20];
  v21 = [objc_opt_class() _expirationStringForMomentShare:v15];
  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F2AC6818];
    [v9 addObject:v22];
    [v9 addObject:v21];
  }

  return v9;
}

+ (id)_expirationStringForMomentShare:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 expiryDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 expiryDate];
    v7 = PXCMMStringForExpiryDate();

    PXScaledValueForTextStyleWithSymbolicTraits();
    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:?];
    v12 = *MEMORY[0x1E69DB648];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_momentShareLinkTitleForMomentShare:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    PXCMMTitleAndSubtitleForAssetCollection();
    v3 = 0;
    v4 = 0;
    if ([v3 length])
    {
      if (v4)
      {
        v5 = PXLocalizedString();
        v6 = PUStringWithValidatedFormat();
      }

      else
      {
        v6 = v3;
      }

      PXScaledValueForTextStyleWithSymbolicTraits();
      v8 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:?];
      v11 = *MEMORY[0x1E69DB648];
      v12[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_momentShareLinkSubjectForMomentShare:(id)a3
{
  v3 = a3;
  if (!v3 || (PXCMMTitleAndSubtitleForAssetCollection(), v4 = 0, 0, !v4))
  {
    v4 = PXLocalizedString();
  }

  return v4;
}

@end