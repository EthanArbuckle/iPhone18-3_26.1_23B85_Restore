@interface PUMailActivity
+ (BOOL)allowedToModifyEmailAccounts;
+ (BOOL)canPerformActivityAsIndividualItemsInSourceController:(id)controller;
+ (BOOL)canPerformActivityWithTotalCount:(unint64_t)count assetMediaTypeCount:(PXAssetMediaTypeCount *)typeCount;
+ (BOOL)isMailDropEnabled;
+ (id)_expirationStringForMomentShare:(id)share;
+ (id)_momentShareLinkActivityItemsForURL:(id)l momentShare:(id)share;
+ (id)_momentShareLinkSubjectForMomentShare:(id)share;
+ (id)_momentShareLinkTitleForMomentShare:(id)share;
+ (void)openEmailAccountPrefs;
- (BOOL)_canPerformForIndividualAssetsWithActivityItems:(id)items;
- (BOOL)_canPerformWithLink;
- (BOOL)_dismissActivityFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)_isMailDropEnabled;
- (BOOL)_momentShareLinkDidFail;
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)_showTrimViewControllerIfNeededForVideoAsset:(id)asset;
- (BOOL)canPerformWithActivityItems:(id)items;
- (PUMailActivity)init;
- (PXActivityItemSourceController)itemSourceController;
- (id)activityViewController;
- (id)mailComposeViewController;
- (void)_cleanupRemaker;
- (void)_composeMailForVideo:(id)video trimmedFilePath:(id)path;
- (void)_prepareWithMomentShareLink:(id)link;
- (void)_pu_cleanup;
- (void)_remakeAndSendVideoAsset:(id)asset withTrimStartTime:(double)time endTime:(double)endTime;
- (void)_removeTempVideoRemakerFile;
- (void)_showTrimViewControllerForVideo:(id)video maximumTrimDuration:(double)duration trimButtonTitle:(id)title;
- (void)_transcodeAndSendVideo:(id)video;
- (void)activityDidFinish:(BOOL)finish;
- (void)cancelRemaking;
- (void)dealloc;
- (void)editVideoViewController:(id)controller didTrimVideoWithOptions:(id)options;
- (void)editVideoViewControllerDidCancel:(id)cancel;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
- (void)remakeVideoAsset:(id)asset withTrimStartTime:(double)time endTime:(double)endTime progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)videoRemakerDidBeginRemaking:(id)remaking;
- (void)videoRemakerDidEndRemaking:(id)remaking temporaryPath:(id)path;
@end

@implementation PUMailActivity

- (PXActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_shouldTranscodeSingleVideo);

  return WeakRetained;
}

- (void)editVideoViewControllerDidCancel:(id)cancel
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

- (void)editVideoViewController:(id)controller didTrimVideoWithOptions:(id)options
{
  mailComposeViewController = self->super._mailComposeViewController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PUMailActivity_editVideoViewController_didTrimVideoWithOptions___block_invoke;
  v13[3] = &unk_1E7B80DD0;
  v13[4] = self;
  optionsCopy = options;
  [(MFMailComposeViewController *)mailComposeViewController dismissViewControllerAnimated:1 completion:v13];
  v7 = [optionsCopy objectForKey:*MEMORY[0x1E69DE9C0]];
  [v7 doubleValue];
  v9 = v8;

  v10 = [optionsCopy objectForKey:*MEMORY[0x1E69DE9B8]];

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

- (void)activityDidFinish:(BOOL)finish
{
  v4.receiver = self;
  v4.super_class = PUMailActivity;
  [(UIActivity *)&v4 activityDidFinish:finish];
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

- (BOOL)_dismissActivityFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  if (BYTE4(self->_strongSelf) == 1)
  {
    v6 = 1;
    [(PHAsset *)self->_videoAssetBeingTrimmed dismissViewControllerAnimated:1 completion:completion];
    BYTE4(self->_strongSelf) = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PUMailActivity;
    return [(UIMailActivity *)&v8 _dismissActivityFromViewController:controller animated:animated completion:completion];
  }

  return v6;
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (self->_strongSelf)
  {
    if ([getMFMailComposeViewControllerClass() canSendMail])
    {
      objc_storeStrong(&self->super._mailComposeViewController, controller);
      v11 = PLSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "Share Sheet: Mail Activity: Trimming and/or re-transcode single video to an acceptable attachment size...", v20, 2u);
      }

      itemSourceController = [(PUMailActivity *)self itemSourceController];
      assets = [itemSourceController assets];
      if ([assets count] == 1)
      {
        lastObject = [assets lastObject];
        if ([lastObject isVideo])
        {
          lastObject2 = [assets lastObject];
        }

        else
        {
          lastObject2 = 0;
        }
      }

      else
      {
        lastObject2 = 0;
      }

      pl_managedAsset = [lastObject2 pl_managedAsset];
      if (!pl_managedAsset)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUMailActivity.m" lineNumber:685 description:@"expect single video"];
      }

      [(PUMailActivity *)self _transcodeAndSendVideo:lastObject2];

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
    v16 = [(UIMailActivity *)&v21 _presentActivityOnViewController:controllerCopy animated:animatedCopy completion:completion];
  }

  return v16;
}

- (id)mailComposeViewController
{
  if ([(PUMailActivity *)self _momentShareLinkDidFail]|| (self->_strongSelf & 1) != 0)
  {
    mailComposeViewController = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PUMailActivity;
    mailComposeViewController = [(UIMailActivity *)&v5 mailComposeViewController];
  }

  return mailComposeViewController;
}

- (id)activityViewController
{
  if ([(PUMailActivity *)self _momentShareLinkDidFail])
  {
    activityViewController = 0;
  }

  else if (self->_strongSelf)
  {
    activityViewController = self->_videoAssetBeingTrimmed;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PUMailActivity;
    activityViewController = [(UIMailActivity *)&v5 activityViewController];
  }

  return activityViewController;
}

- (void)prepareWithActivityItems:(id)items
{
  v27 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemSourceController = [(PUMailActivity *)self itemSourceController];
  publishedURL = [itemSourceController publishedURL];

  if (publishedURL)
  {
    publishedURL2 = [itemSourceController publishedURL];
    [(PUMailActivity *)self _prepareWithMomentShareLink:publishedURL2];

LABEL_8:
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    itemSourceController2 = [(PUMailActivity *)self itemSourceController];
    assetItemSources = [itemSourceController2 assetItemSources];

    v14 = [assetItemSources countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(assetItemSources);
          }

          asset = [*(*(&v21 + 1) + 8 * v17) asset];
          uuid = [asset uuid];
          [array addObject:uuid];

          ++v17;
        }

        while (v15 != v17);
        v15 = [assetItemSources countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v15);
    }

    mailComposeViewController = [(PUMailActivity *)self mailComposeViewController];
    [mailComposeViewController setPhotoIDs:array];

    goto LABEL_16;
  }

  if ((self->_strongSelf & 1) == 0)
  {
    v25.receiver = self;
    v25.super_class = PUMailActivity;
    [(UIMailActivity *)&v25 prepareWithActivityItems:itemsCopy];
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

- (void)_prepareWithMomentShareLink:(id)link
{
  v22 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  if (linkCopy)
  {
    mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    librarySpecificFetchOptions = [mEMORY[0x1E69789A8] librarySpecificFetchOptions];

    v17 = 0;
    v7 = [MEMORY[0x1E6978930] fetchLocalMomentShareFromShareURL:linkCopy error:&v17 options:librarySpecificFetchOptions];
    v8 = v17;
    if (!v7)
    {
      v9 = PLSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        pl_redactedShareURL = [linkCopy pl_redactedShareURL];
        *buf = 138543618;
        v19 = pl_redactedShareURL;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Share Sheet: Mail activity failed to fetch moment share for URL: %{public}@ with error: %@", buf, 0x16u);
      }
    }

    v11 = [objc_opt_class() _momentShareLinkActivityItemsForURL:linkCopy momentShare:v7];
    v16.receiver = self;
    v16.super_class = PUMailActivity;
    [(UIMailActivity *)&v16 prepareWithActivityItems:v11];
    v12 = [objc_opt_class() _momentShareLinkSubjectForMomentShare:v7];
    mailComposeViewController = [(PUMailActivity *)self mailComposeViewController];
    [mailComposeViewController setSubject:v12];
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

- (BOOL)_canPerformForIndividualAssetsWithActivityItems:(id)items
{
  v22.receiver = self;
  v22.super_class = PUMailActivity;
  v4 = [(UIMailActivity *)&v22 canPerformWithActivityItems:items];
  if (v4)
  {
    _isMailDropEnabled = [(PUMailActivity *)self _isMailDropEnabled];
    itemSourceController = [(PUMailActivity *)self itemSourceController];
    if (_isMailDropEnabled)
    {
      v7 = 0;
      LOBYTE(v8) = 1;
      goto LABEL_12;
    }
  }

  else
  {
    itemSourceController = [(PUMailActivity *)self itemSourceController];
  }

  assets = [itemSourceController assets];
  v10 = [assets count];

  if (v10)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    *buf = 0u;
    v18 = 0u;
    if (itemSourceController)
    {
      [itemSourceController requestAssetsMediaTypeCount];
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
  if ([itemSourceController shouldShareAsUnmodifiedOriginals])
  {
    LOBYTE(self->_strongSelf) = 0;
  }

  else
  {
    v12 = [itemSourceController preferredExportFormat] != 1 && v7;
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
  _momentShareLinkPrompt = [objc_opt_class() _momentShareLinkPrompt];
  v7[0] = _momentShareLinkPrompt;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6.receiver = self;
  v6.super_class = PUMailActivity;
  LOBYTE(self) = [(UIMailActivity *)&v6 canPerformWithActivityItems:v4];

  return self;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemSourceController = [(PUMailActivity *)self itemSourceController];
  if ([itemSourceController preferredPreparationType] == 1)
  {
    _canPerformWithLink = [(PUMailActivity *)self _canPerformWithLink];
  }

  else
  {
    _canPerformWithLink = [(PUMailActivity *)self _canPerformForIndividualAssetsWithActivityItems:itemsCopy];
    assets = [itemSourceController assets];
    v8 = [assets count];

    if (v8)
    {
      mEMORY[0x1E69C33D8] = [MEMORY[0x1E69C33D8] sharedInstance];
      cmmShareSheetBehavior = [mEMORY[0x1E69C33D8] cmmShareSheetBehavior];

      assets2 = [itemSourceController assets];
      firstObject = [assets2 firstObject];
      photoLibrary = [firstObject photoLibrary];

      if (photoLibrary)
      {
        v14 = PXCMMHasSendAndReceiveCapabilities();
        if (cmmShareSheetBehavior == 3)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        _canPerformWithLink |= v15;
      }

      else
      {
        v16 = PLSharingGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = 138412290;
          v19 = itemSourceController;
          _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Mail Activity: Photo library was nil, so returning unable to determine if CMM is enabled. Item source controller: %@", &v18, 0xCu);
        }
      }
    }
  }

  return _canPerformWithLink & 1;
}

- (BOOL)_momentShareLinkDidFail
{
  itemSourceController = [(PUMailActivity *)self itemSourceController];
  if ([itemSourceController momentSharePublishAttempted])
  {
    publishedURL = [itemSourceController publishedURL];
    v4 = publishedURL == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_composeMailForVideo:(id)video trimmedFilePath:(id)path
{
  pathCopy = path;
  v7 = self->_videoAssetBeingTrimmed;
  videoCopy = video;
  [(PHAsset *)v7 setMailComposeDelegate:self];
  pl_managedAsset = [videoCopy pl_managedAsset];

  pathForVideoFile = [pl_managedAsset pathForVideoFile];
  lastPathComponent = [pathForVideoFile lastPathComponent];
  v12 = lastPathComponent;
  if (pathCopy)
  {
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    pathExtension = [pathCopy pathExtension];
    v12 = [stringByDeletingPathExtension stringByAppendingPathExtension:pathExtension];

    pathForVideoFile = pathCopy;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:pathForVideoFile options:1 error:0];
  v16 = MEMORY[0x1E6982C40];
  pathExtension2 = [pathForVideoFile pathExtension];
  v18 = [v16 typeWithFilenameExtension:pathExtension2];

  preferredMIMEType = [v18 preferredMIMEType];
  [(PHAsset *)v7 addAttachmentData:v15 mimeType:preferredMIMEType fileName:v12];

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

- (void)videoRemakerDidEndRemaking:(id)remaking temporaryPath:(id)path
{
  pathCopy = path;
  if (-[PUMailActivity _remakerWasCancelled](self, "_remakerWasCancelled") || ![pathCopy length])
  {

    pathCopy = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PUMailActivity_videoRemakerDidEndRemaking_temporaryPath___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = pathCopy;
  v6 = pathCopy;
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

- (void)videoRemakerDidBeginRemaking:(id)remaking
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
  transcodedVideoFilePath = [(PUMailActivity *)self transcodedVideoFilePath];
  v4 = [transcodedVideoFilePath length];

  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    transcodedVideoFilePath2 = [(PUMailActivity *)self transcodedVideoFilePath];
    v7 = [v5 fileURLWithPath:transcodedVideoFilePath2];

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
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v13 = 0;
      v10 = [defaultManager removeItemAtURL:v7 error:&v13];
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

- (void)remakeVideoAsset:(id)asset withTrimStartTime:(double)time endTime:(double)endTime progressHandler:(id)handler completionHandler:(id)completionHandler
{
  assetCopy = asset;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__PUMailActivity_remakeVideoAsset_withTrimStartTime_endTime_progressHandler_completionHandler___block_invoke;
  v18[3] = &unk_1E7B79408;
  v18[4] = self;
  v19 = assetCopy;
  timeCopy = time;
  endTimeCopy = endTime;
  v20 = completionHandlerCopy;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = assetCopy;
  v17 = completionHandlerCopy;
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

- (void)_transcodeAndSendVideo:(id)video
{
  videoCopy = video;
  if (![(PUMailActivity *)self _showTrimViewControllerIfNeededForVideoAsset:?])
  {
    [(PUMailActivity *)self _remakeAndSendVideoAsset:videoCopy withTrimStartTime:0.0 endTime:0.0];
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

- (void)_remakeAndSendVideoAsset:(id)asset withTrimStartTime:(double)time endTime:(double)endTime
{
  assetCopy = asset;
  [(PLUIEditVideoViewController *)self->_editVideoViewController removeFromSuperview];
  v9 = [objc_alloc(MEMORY[0x1E69BE1C0]) initWithFrame:{0.0, 0.0, 0.0, 45.0}];
  editVideoViewController = self->_editVideoViewController;
  self->_editVideoViewController = v9;

  itemSourceController = [(PUMailActivity *)self itemSourceController];
  activityViewController = [itemSourceController activityViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityViewController mailActivity:self displayVideoRemakerProgressView:self->_editVideoViewController];
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
  v15 = assetCopy;
  v13 = assetCopy;
  [(PUMailActivity *)self remakeVideoAsset:v13 withTrimStartTime:v16 endTime:v14 progressHandler:time completionHandler:endTime];
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

- (BOOL)_showTrimViewControllerIfNeededForVideoAsset:(id)asset
{
  assetCopy = asset;
  pl_managedAsset = [assetCopy pl_managedAsset];
  [MEMORY[0x1E69BE7F0] durationForManagedAsset:pl_managedAsset applyVideoAdjustments:1];
  v7 = v6;
  [MEMORY[0x1E69BE1E0] maximumDurationForTrimMode:2];
  v9 = v8;
  if (v7 > v8)
  {
    v10 = PLLocalizedFrameworkString();
    [(PUMailActivity *)self _showTrimViewControllerForVideo:assetCopy maximumTrimDuration:v10 trimButtonTitle:v9];
  }

  return v7 > v9;
}

- (void)_showTrimViewControllerForVideo:(id)video maximumTrimDuration:(double)duration trimButtonTitle:(id)title
{
  videoCopy = video;
  mailComposeController = self->_mailComposeController;
  titleCopy = title;
  [(MFMailComposeViewController *)mailComposeController setDelegate:0];
  referenceViewController = self->_referenceViewController;
  self->_referenceViewController = videoCopy;
  v12 = videoCopy;

  pl_managedAsset = [(UIViewController *)v12 pl_managedAsset];
  v13 = [objc_alloc(MEMORY[0x1E69BE1D8]) initWithPhoto:pl_managedAsset trimTitle:titleCopy];

  [(MFMailComposeViewController *)v13 setDelegate:self];
  v14 = MEMORY[0x1E695DF20];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
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
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  disableMailDrop = [mEMORY[0x1E69C3A18] disableMailDrop];

  if (disableMailDrop)
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
  if (![self allowedToModifyEmailAccounts])
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
  sharedConnection = [v2 sharedConnection];
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
    v8 = [sharedConnection effectiveBoolValueForSetting:*v5] != 2;

    return v8;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMCFeatureAccountModificationAllowed(void)"];
    [currentHandler handleFailureInFunction:v11 file:@"PUMailActivity.m" lineNumber:63 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (BOOL)canPerformActivityAsIndividualItemsInSourceController:(id)controller
{
  controllerCopy = controller;
  if ([self isMailDropEnabled])
  {
    v5 = 1;
  }

  else
  {
    assets = [controllerCopy assets];
    v7 = [assets count];

    if (v7)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      if (controllerCopy)
      {
        [controllerCopy requestAssetsMediaTypeCount];
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

+ (BOOL)canPerformActivityWithTotalCount:(unint64_t)count assetMediaTypeCount:(PXAssetMediaTypeCount *)typeCount
{
  var0 = typeCount->var0;
  var1 = typeCount->var1;
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  maxMailPhotoLimit = [mEMORY[0x1E69C3A18] maxMailPhotoLimit];

  if (maxMailPhotoLimit)
  {
    v9 = var0 > maxMailPhotoLimit;
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

  return v12 && var1 + var0 >= count && v11;
}

+ (BOOL)isMailDropEnabled
{
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  disableMailDrop = [mEMORY[0x1E69C3A18] disableMailDrop];

  if (disableMailDrop)
  {
    return 0;
  }

  pl_sharedAccountStore = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [pl_sharedAccountStore cachedPrimaryAppleAccount];
  v7 = cachedPrimaryAppleAccount;
  if (cachedPrimaryAppleAccount)
  {
    v4 = [cachedPrimaryAppleAccount isEnabledForDataclass:*MEMORY[0x1E6959B58]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_momentShareLinkActivityItemsForURL:(id)l momentShare:(id)share
{
  v30[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  shareCopy = share;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUMailActivity.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  array = [MEMORY[0x1E695DF70] array];
  _momentShareLinkPrompt = [objc_opt_class() _momentShareLinkPrompt];
  v11 = [_momentShareLinkPrompt stringByAppendingString:@"\n"];

  PXScaledValueForTextStyleWithSymbolicTraits();
  v12 = [MEMORY[0x1E69DB878] systemFontOfSize:?];
  v29 = *MEMORY[0x1E69DB648];
  v30[0] = v12;
  v25 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v26 = v11;
  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v13];
  [array addObject:v14];
  v15 = shareCopy;
  v16 = [objc_opt_class() _momentShareLinkTitleForMomentShare:shareCopy];
  if (v16)
  {
    [array addObject:v16];
  }

  v27 = *MEMORY[0x1E69DB670];
  v28 = lCopy;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  absoluteString = [lCopy absoluteString];
  v20 = [v18 initWithString:absoluteString attributes:v17];

  [array addObject:v20];
  v21 = [objc_opt_class() _expirationStringForMomentShare:v15];
  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F2AC6818];
    [array addObject:v22];
    [array addObject:v21];
  }

  return array;
}

+ (id)_expirationStringForMomentShare:(id)share
{
  v13[1] = *MEMORY[0x1E69E9840];
  shareCopy = share;
  v4 = shareCopy;
  if (shareCopy && ([shareCopy expiryDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    expiryDate = [v4 expiryDate];
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

+ (id)_momentShareLinkTitleForMomentShare:(id)share
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (share)
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

+ (id)_momentShareLinkSubjectForMomentShare:(id)share
{
  shareCopy = share;
  if (!shareCopy || (PXCMMTitleAndSubtitleForAssetCollection(), v4 = 0, 0, !v4))
  {
    v4 = PXLocalizedString();
  }

  return v4;
}

@end