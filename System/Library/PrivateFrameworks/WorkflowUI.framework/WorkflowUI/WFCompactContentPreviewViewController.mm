@interface WFCompactContentPreviewViewController
- (BOOL)containsImageOrMediaThumbnail;
- (BOOL)contentAllowsScrolling;
- (UIActivityIndicatorView)indicatorView;
- (UIView)sourceViewForQuickLook;
- (WFCompactContentPreviewViewControllerDelegate)delegate;
- (double)contentHeightForWidth:(double)width;
- (id)_fileThumbnailViewControllerForContentItem:(id)item;
- (void)_getTypeSpecificThumbnailViewControllerForContentItem:(id)item completionHandler:(id)handler;
- (void)getThumbnailViewControllerForContentItem:(id)item completionHandler:(id)handler;
- (void)invalidateContentSize;
- (void)loadView;
- (void)setContentItem:(id)item completionHandler:(id)handler;
- (void)viewDidLayoutSubviews;
@end

@implementation WFCompactContentPreviewViewController

- (UIActivityIndicatorView)indicatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorView);

  return WeakRetained;
}

- (WFCompactContentPreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)containsImageOrMediaThumbnail
{
  thumbnailViewController = [(WFCompactContentPreviewViewController *)self thumbnailViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    thumbnailViewController2 = [(WFCompactContentPreviewViewController *)self thumbnailViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_getTypeSpecificThumbnailViewControllerForContentItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if (![MEMORY[0x277CBEBD0] universalPreviewsEnabled] || !objc_msgSend(itemCopy, "conformsToContentItemPreviewProviding"))
  {
    if ([itemCopy isMemberOfClass:objc_opt_class()])
    {
      v8 = [(WFCompactContentPreviewViewController *)self _fileThumbnailViewControllerForContentItem:itemCopy];
      goto LABEL_6;
    }

    if ([itemCopy preferredDisplayStyle] == 1)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke;
      v33[3] = &unk_279EE7CD0;
      v34 = itemCopy;
      v35 = handlerCopy;
      [v34 getObjectRepresentation:v33 forClass:objc_opt_class()];

      v10 = v34;
    }

    else
    {
      preferredObjectType = [itemCopy preferredObjectType];
      v12 = [preferredObjectType isEqualToClass:getPHAssetClass()];

      if (v12)
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_193;
        v30[3] = &unk_279EE7D70;
        v31 = itemCopy;
        v32 = handlerCopy;
        [v31 getObjectRepresentation:v30 forClass:getPHAssetClass()];

        v10 = v31;
      }

      else
      {
        preferredObjectType2 = [itemCopy preferredObjectType];
        if ([preferredObjectType2 isEqualToClass:objc_opt_class()])
        {
        }

        else
        {
          preferredFileType = [itemCopy preferredFileType];
          ownedTypes = [MEMORY[0x277CFC208] ownedTypes];
          v16 = [preferredFileType conformsToTypes:ownedTypes];

          if (!v16)
          {
            preferredFileType2 = [itemCopy preferredFileType];
            v18 = [preferredFileType2 conformsToUTType:*MEMORY[0x277CE1DB0]];

            if (v18)
            {
              v24[0] = MEMORY[0x277D85DD0];
              v24[1] = 3221225472;
              v24[2] = __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_206;
              v24[3] = &unk_279EE7DE8;
              v25 = itemCopy;
              v26 = handlerCopy;
              [v25 getFileRepresentation:v24 forType:0];

              v10 = v25;
            }

            else
            {
              preferredFileType3 = [itemCopy preferredFileType];
              v20 = [preferredFileType3 conformsToUTType:*MEMORY[0x277CE1E20]];

              if (!v20)
              {
                (*(handlerCopy + 2))(handlerCopy, 0);
                goto LABEL_16;
              }

              v21[0] = MEMORY[0x277D85DD0];
              v21[1] = 3221225472;
              v21[2] = __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_3_211;
              v21[3] = &unk_279EE7E10;
              v22 = itemCopy;
              v23 = handlerCopy;
              [v22 getObjectRepresentation:v21 forClass:objc_opt_class()];

              v10 = v22;
            }

            goto LABEL_15;
          }
        }

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_204;
        v27[3] = &unk_279EE7D98;
        v28 = itemCopy;
        v29 = handlerCopy;
        [v28 getObjectRepresentation:v27 forClass:objc_opt_class()];

        v10 = v28;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v8 = [[WFCompactPreviewThumbnailViewController alloc] initWithContentItem:itemCopy];
LABEL_6:
  v9 = v8;
  (*(handlerCopy + 2))(handlerCopy, v8);

LABEL_16:
}

void __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = *(a1 + 40);
    v9 = [[WFCompactMapThumbnailViewController alloc] initWithCLPlacemark:v6];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    v10 = getWFDialogLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[WFCompactContentPreviewViewController _getTypeSpecificThumbnailViewControllerForContentItem:completionHandler:]_block_invoke";
      v14 = 2114;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEFAULT, "%s Failed to get a CLPlacemark representation for content: %{public}@, %@", &v12, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_193(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v13 = getWFDialogLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 136315650;
      v31 = "[WFCompactContentPreviewViewController _getTypeSpecificThumbnailViewControllerForContentItem:completionHandler:]_block_invoke";
      v32 = 2114;
      v33 = v14;
      v34 = 2112;
      v35 = v9;
      v15 = "%s Failed to get a PHAsset representation for content: %{public}@, %@";
      v16 = v13;
      v17 = OS_LOG_TYPE_DEFAULT;
      v18 = 32;
LABEL_17:
      _os_log_impl(&dword_274719000, v16, v17, v15, buf, v18);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v10 = [v7 playbackStyle];
  if ((v10 - 1) < 3)
  {
    v19 = [v7 pixelWidth];
    v20 = [v7 pixelHeight];
    if (v19 && v20)
    {
      v21 = v19 / v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_194;
      aBlock[3] = &unk_279EE7D20;
      v29 = *(a1 + 32);
      v22 = _Block_copy(aBlock);
      v23 = *(a1 + 40);
      v24 = [[WFCompactImageThumbnailViewController alloc] initWithAspectRatio:v22 imageGenerator:v21];
      (*(v23 + 16))(v23, v24);

      v12 = v29;
      goto LABEL_10;
    }

    v13 = getWFDialogLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v31 = "[WFCompactContentPreviewViewController _getTypeSpecificThumbnailViewControllerForContentItem:completionHandler:]_block_invoke";
      v32 = 2112;
      v33 = v7;
      v15 = "%s Photo had a size of zero: %@";
      goto LABEL_16;
    }

LABEL_18:

    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  if ((v10 - 4) >= 2)
  {
    if (v10)
    {
      goto LABEL_19;
    }

    v13 = getWFDialogLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v31 = "[WFCompactContentPreviewViewController _getTypeSpecificThumbnailViewControllerForContentItem:completionHandler:]_block_invoke";
      v32 = 2112;
      v33 = v7;
      v15 = "%s PHAsset has an unsupported playback style: %@";
LABEL_16:
      v16 = v13;
      v17 = OS_LOG_TYPE_FAULT;
      v18 = 22;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v11 = *(a1 + 32);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_3;
  v25[3] = &unk_279EE7D48;
  v26 = v11;
  v27 = *(a1 + 40);
  [v26 getObjectRepresentation:v25 forClass:objc_opt_class()];

  v12 = v26;
LABEL_10:

LABEL_19:
}

void __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_204(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a2)
  {
    v7 = [MEMORY[0x277CE65B0] playerItemWithAsset:a2];
    v8 = *(a1 + 40);
    v9 = [[WFCompactMediaThumbnailViewController alloc] initWithAVPlayerItem:v7];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    v10 = getWFDialogLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[WFCompactContentPreviewViewController _getTypeSpecificThumbnailViewControllerForContentItem:completionHandler:]_block_invoke";
      v14 = 2114;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEFAULT, "%s Failed to get an AVAsset representation for content: %{public}@, %@", &v12, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_206(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v13 = getWFDialogLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 136315650;
      v22 = "[WFCompactContentPreviewViewController _getTypeSpecificThumbnailViewControllerForContentItem:completionHandler:]_block_invoke";
      v23 = 2114;
      v24 = v14;
      v25 = 2112;
      v26 = v6;
      v15 = "%s Failed to get a file representation for image: %{public}@, %@";
      v16 = v13;
      v17 = OS_LOG_TYPE_DEFAULT;
      v18 = 32;
LABEL_9:
      _os_log_impl(&dword_274719000, v16, v17, v15, buf, v18);
    }

LABEL_10:

    (*(*(a1 + 40) + 16))();
    goto LABEL_11;
  }

  WFImageSizeFromFile();
  if (v7 == 0.0 || v8 == 0.0)
  {
    v13 = getWFDialogLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v22 = "[WFCompactContentPreviewViewController _getTypeSpecificThumbnailViewControllerForContentItem:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = v5;
      v15 = "%s Image had a size of zero: %@";
      v16 = v13;
      v17 = OS_LOG_TYPE_FAULT;
      v18 = 22;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_207;
  aBlock[3] = &unk_279EE7D20;
  v9 = v7 / v8;
  v20 = v5;
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 40);
  v12 = [[WFCompactImageThumbnailViewController alloc] initWithAspectRatio:v10 imageGenerator:v9];
  (*(v11 + 16))(v11, v12);

LABEL_11:
}

void __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_3_211(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if ([v6 length])
  {
    v8 = *(a1 + 40);
    v9 = [[WFCompactTextThumbnailViewController alloc] initWithString:v6];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    v10 = getWFDialogLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[WFCompactContentPreviewViewController _getTypeSpecificThumbnailViewControllerForContentItem:completionHandler:]_block_invoke_3";
      v14 = 2114;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEFAULT, "%s Failed to get a NSString representation for content: %{public}@, %@", &v12, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_207(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) wfType];
  v6 = v3;
  v5 = v3;
  WFAsyncTransformedImageFromImage();
}

void __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_2_208(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D79FC8];
  v6 = [a2 mappedData];
  v4 = [v3 imageWithData:v6 scale:1.0];
  v5 = [v4 UIImage];
  (*(v2 + 16))(v2, v5);
}

void __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_194(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_2;
  v10[3] = &unk_279EE7CF8;
  v11 = v7;
  v9 = v7;
  [v8 getThumbnail:v10 ofSize:{a3, a4}];
}

void __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = *(a1 + 40);
    v9 = [[WFCompactMediaThumbnailViewController alloc] initWithAVPlayerItem:v6];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    v10 = getWFDialogLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[WFCompactContentPreviewViewController _getTypeSpecificThumbnailViewControllerForContentItem:completionHandler:]_block_invoke_3";
      v14 = 2114;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEFAULT, "%s Failed to get an AVPlayerItem representation for content: %{public}@, %@", &v12, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __113__WFCompactContentPreviewViewController__getTypeSpecificThumbnailViewControllerForContentItem_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UIImage];
  (*(v2 + 16))(v2, v3);
}

- (id)_fileThumbnailViewControllerForContentItem:(id)item
{
  v14 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = getWFDialogLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[WFCompactContentPreviewViewController _fileThumbnailViewControllerForContentItem:]";
    v12 = 2114;
    v13 = itemCopy;
    _os_log_impl(&dword_274719000, v4, OS_LOG_TYPE_DEFAULT, "%s Showing content with a file thumbnail: %{public}@", &v10, 0x16u);
  }

  v5 = [WFCompactFileThumbnailViewController alloc];
  preferredFileType = [itemCopy preferredFileType];
  name = [itemCopy name];
  v8 = [(WFCompactFileThumbnailViewController *)v5 initWithFileType:preferredFileType filename:name];

  return v8;
}

- (void)getThumbnailViewControllerForContentItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__WFCompactContentPreviewViewController_getThumbnailViewControllerForContentItem_completionHandler___block_invoke;
  v10[3] = &unk_279EE7CA8;
  v10[4] = self;
  v11 = itemCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = itemCopy;
  [(WFCompactContentPreviewViewController *)self _getTypeSpecificThumbnailViewControllerForContentItem:v9 completionHandler:v10];
}

void __100__WFCompactContentPreviewViewController_getThumbnailViewControllerForContentItem_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [*(a1 + 32) _fileThumbnailViewControllerForContentItem:*(a1 + 40)];
  }

  v4 = v3;
  (*(*(a1 + 48) + 16))();
}

- (BOOL)contentAllowsScrolling
{
  thumbnailViewController = [(WFCompactContentPreviewViewController *)self thumbnailViewController];
  if (thumbnailViewController)
  {
    thumbnailViewController2 = [(WFCompactContentPreviewViewController *)self thumbnailViewController];
    v5 = [thumbnailViewController2 preferredContentMode] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIView)sourceViewForQuickLook
{
  thumbnailViewController = [(WFCompactContentPreviewViewController *)self thumbnailViewController];
  view = [thumbnailViewController view];

  return view;
}

- (void)setContentItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCompactContentPreviewViewController.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"contentItem"}];
  }

  [(WFCompactContentPreviewViewController *)self loadViewIfNeeded];
  [(WFCompactThumbnailViewController *)self->_thumbnailViewController willMoveToParentViewController:0];
  view = [(WFCompactThumbnailViewController *)self->_thumbnailViewController view];
  [view removeFromSuperview];

  [(WFCompactThumbnailViewController *)self->_thumbnailViewController removeFromParentViewController];
  thumbnailViewController = self->_thumbnailViewController;
  self->_thumbnailViewController = 0;

  objc_storeStrong(&self->_contentItem, item);
  indicatorView = [(WFCompactContentPreviewViewController *)self indicatorView];
  [indicatorView startAnimating];

  [(WFCompactContentPreviewViewController *)self invalidateContentSize];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__WFCompactContentPreviewViewController_setContentItem_completionHandler___block_invoke;
  v16[3] = &unk_279EE7C80;
  objc_copyWeak(&v19, &location);
  v13 = itemCopy;
  v17 = v13;
  v14 = handlerCopy;
  v18 = v14;
  [(WFCompactContentPreviewViewController *)self getThumbnailViewControllerForContentItem:v13 completionHandler:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __74__WFCompactContentPreviewViewController_setContentItem_completionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__WFCompactContentPreviewViewController_setContentItem_completionHandler___block_invoke_2;
  v6[3] = &unk_279EE7C58;
  objc_copyWeak(&v10, a1 + 6);
  v7 = a1[4];
  v4 = a1[5];
  v8 = v3;
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v10);
}

void __74__WFCompactContentPreviewViewController_setContentItem_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained contentItem];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) contentHeightLikelyToChange];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__WFCompactContentPreviewViewController_setContentItem_completionHandler___block_invoke_3;
    v7[3] = &unk_279EE8C58;
    v7[4] = WeakRetained;
    v8 = *(a1 + 40);
    (*(v5 + 16))(v5, v6, v7);
  }
}

void __74__WFCompactContentPreviewViewController_setContentItem_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) indicatorView];
  [v2 stopAnimating];

  [*(a1 + 40) setDelegate:*(a1 + 32)];
  [*(a1 + 32) setThumbnailViewController:*(a1 + 40)];
  [*(a1 + 32) addChildViewController:*(a1 + 40)];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) view];
  [v4 bounds];
  [v3 contentHeightForWidth:v5];
  v7 = v6;

  v8 = [*(a1 + 32) delegate];
  [v8 targetHeightForAnimatingPreviewViewController:*(a1 + 32) toProposedHeight:v7];
  v10 = v9;

  v11 = [*(a1 + 32) view];
  [v11 bounds];
  v13 = v12;

  v14 = [*(a1 + 40) view];
  [v14 setAlpha:0.0];
  [v14 setFrame:{0.0, 0.0, v13, v10}];
  v15 = [*(a1 + 32) view];
  [v15 addSubview:v14];

  [*(a1 + 40) didMoveToParentViewController:*(a1 + 32)];
  [v14 layoutIfNeeded];
  v16 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__WFCompactContentPreviewViewController_setContentItem_completionHandler___block_invoke_4;
  v18[3] = &unk_279EE8A78;
  v19 = v14;
  v17 = v14;
  [v16 animateWithDuration:v18 animations:0.400000006];
  [*(a1 + 32) invalidateContentSize];
}

- (void)invalidateContentSize
{
  delegate = [(WFCompactContentPreviewViewController *)self delegate];
  [delegate previewViewControllerDidInvalidateSize:self];
}

- (double)contentHeightForWidth:(double)width
{
  thumbnailViewController = [(WFCompactContentPreviewViewController *)self thumbnailViewController];

  if (!thumbnailViewController)
  {
    return 150.0;
  }

  thumbnailViewController2 = [(WFCompactContentPreviewViewController *)self thumbnailViewController];
  [thumbnailViewController2 contentHeightForWidth:width];
  v8 = v7;

  return v8;
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = WFCompactContentPreviewViewController;
  [(WFCompactContentPreviewViewController *)&v14 viewDidLayoutSubviews];
  view = [(WFCompactContentPreviewViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  thumbnailViewController = [(WFCompactContentPreviewViewController *)self thumbnailViewController];
  view2 = [thumbnailViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)loadView
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = WFCompactContentPreviewViewController;
  [(WFCompactContentPreviewViewController *)&v15 loadView];
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(WFCompactContentPreviewViewController *)self view];
  [view addSubview:v3];

  [(WFCompactContentPreviewViewController *)self setIndicatorView:v3];
  [v3 startAnimating];
  v14 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v3 centerXAnchor];
  view2 = [(WFCompactContentPreviewViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v16[0] = v8;
  centerYAnchor = [v3 centerYAnchor];
  view3 = [(WFCompactContentPreviewViewController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v14 activateConstraints:v13];
}

@end