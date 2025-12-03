@interface STSResultDetailViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)isFullscreen;
- (CGRect)contentFrameForBounds:(CGRect)bounds traitCollection:(id)collection;
- (CGSize)contentSize;
- (CGSize)providerIconSize;
- (NSString)providerName;
- (STSAnimatedImageInfo)thumbnailInfo;
- (STSResultDetailViewControllerDelegate)delegate;
- (UIImage)providerIcon;
- (UIImage)thumbnail;
- (void)detailViewDidTapProvider:(id)provider;
- (void)detailViewDidTapReportConcern:(id)concern;
- (void)detailViewDidTapSend:(id)send;
- (void)loadView;
- (void)setContentSize:(CGSize)size;
- (void)setIsFullscreen:(BOOL)fullscreen;
- (void)setProviderIcon:(id)icon;
- (void)setProviderIconSize:(CGSize)size;
- (void)setProviderName:(id)name;
- (void)setSearchResult:(id)result;
- (void)setUseBackgroundBlur:(BOOL)blur;
- (void)updateCustomContentWithView:(id)view;
- (void)updateWithThumbnail:(id)thumbnail orThumbnailInfo:(id)info;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation STSResultDetailViewController

- (void)loadView
{
  v3 = [STSResultDetailView alloc];
  v5 = [(STSResultDetailView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(STSResultDetailView *)v5 setDelegate:self];
  [(STSResultDetailView *)v5 setContentSize:self->_contentSize.width, self->_contentSize.height];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTap_];
  [v4 setDelegate:self];
  [(STSResultDetailView *)v5 addGestureRecognizer:v4];
  [(STSResultDetailViewController *)self setView:v5];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(STSResultDetailViewController *)self modalPresentationStyle]== 6)
  {
    view = [(STSResultDetailViewController *)self view];
    [view setFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), width, height}];
  }

  [coordinatorCopy animateAlongsideTransition:0 completion:0];
  v9.receiver = self;
  v9.super_class = STSResultDetailViewController;
  [(STSResultDetailViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)setUseBackgroundBlur:(BOOL)blur
{
  blurCopy = blur;
  view = [(STSResultDetailViewController *)self view];
  [view setUseBackgroundBlur:blurCopy];
}

- (void)setContentSize:(CGSize)size
{
  p_contentSize = &self->_contentSize;
  if (self->_contentSize.width != size.width || self->_contentSize.height != size.height)
  {
    p_contentSize->width = size.width;
    self->_contentSize.height = size.height;
    if ([(STSResultDetailViewController *)self isViewLoaded])
    {
      view = [(STSResultDetailViewController *)self view];
      [view setContentSize:{p_contentSize->width, p_contentSize->height}];
    }
  }
}

- (UIImage)thumbnail
{
  view = [(STSResultDetailViewController *)self view];
  thumbnail = [view thumbnail];

  return thumbnail;
}

- (STSAnimatedImageInfo)thumbnailInfo
{
  view = [(STSResultDetailViewController *)self view];
  thumbnailInfo = [view thumbnailInfo];

  return thumbnailInfo;
}

- (CGSize)providerIconSize
{
  view = [(STSResultDetailViewController *)self view];
  [view providerIconSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setProviderIconSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(STSResultDetailViewController *)self view];
  [view setProviderIconSize:{width, height}];
}

- (UIImage)providerIcon
{
  view = [(STSResultDetailViewController *)self view];
  providerIcon = [view providerIcon];

  return providerIcon;
}

- (void)setProviderIcon:(id)icon
{
  iconCopy = icon;
  view = [(STSResultDetailViewController *)self view];
  [view setProviderIcon:iconCopy];
}

- (NSString)providerName
{
  view = [(STSResultDetailViewController *)self view];
  providerName = [view providerName];

  return providerName;
}

- (void)setProviderName:(id)name
{
  nameCopy = name;
  view = [(STSResultDetailViewController *)self view];
  [view setProviderName:nameCopy];
}

- (BOOL)isFullscreen
{
  view = [(STSResultDetailViewController *)self view];
  isFullscreen = [view isFullscreen];

  return isFullscreen;
}

- (void)setIsFullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  view = [(STSResultDetailViewController *)self view];
  [view setIsFullscreen:fullscreenCopy];
}

- (void)setSearchResult:(id)result
{
  resultCopy = result;
  if (self->_searchResult != resultCopy)
  {
    v15 = resultCopy;
    objc_storeStrong(&self->_searchResult, result);
    sts_userReportRequest = [(SFSearchResult *)self->_searchResult sts_userReportRequest];
    if (sts_userReportRequest && (v7 = sts_userReportRequest, v8 = [(STSResultDetailViewController *)self numberOfReportedResults], v7, v8 <= 0x1E))
    {
      view = [(STSResultDetailViewController *)self view];
      [view setShowReportConcern:1];

      view2 = [(STSResultDetailViewController *)self view];
      reportConcernButton = [view2 reportConcernButton];
      searchResult = [(STSResultDetailViewController *)self searchResult];
      sts_userReportRequest2 = [searchResult sts_userReportRequest];
      affordanceText = [sts_userReportRequest2 affordanceText];
      [reportConcernButton setTitle:affordanceText forState:0];
    }

    else
    {
      view2 = [(STSResultDetailViewController *)self view];
      [view2 setShowReportConcern:0];
    }

    resultCopy = v15;
  }
}

- (void)updateWithThumbnail:(id)thumbnail orThumbnailInfo:(id)info
{
  infoCopy = info;
  thumbnailCopy = thumbnail;
  view = [(STSResultDetailViewController *)self view];
  [view updateWithThumbnail:thumbnailCopy orThumbnailInfo:infoCopy];
}

- (void)updateCustomContentWithView:(id)view
{
  viewCopy = view;
  view = [(STSResultDetailViewController *)self view];
  [view setCustomContentView:viewCopy];
}

- (CGRect)contentFrameForBounds:(CGRect)bounds traitCollection:(id)collection
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  collectionCopy = collection;
  view = [(STSResultDetailViewController *)self view];
  [view contentFrameForBounds:collectionCopy traitCollection:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)detailViewDidTapProvider:(id)provider
{
  delegate = [(STSResultDetailViewController *)self delegate];
  [delegate detailViewControllerDidSelectProviderLink:self];

  [(STSResultDetailViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)detailViewDidTapSend:(id)send
{
  delegate = [(STSResultDetailViewController *)self delegate];
  [delegate detailViewControllerDidInsert:self];

  [(STSResultDetailViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)detailViewDidTapReportConcern:(id)concern
{
  v29 = *MEMORY[0x277D85DE8];
  searchResult = [(STSResultDetailViewController *)self searchResult];
  sts_userReportRequest = [searchResult sts_userReportRequest];

  v6 = MEMORY[0x277D75110];
  title = [sts_userReportRequest title];
  v8 = [v6 alertControllerWithTitle:title message:0 preferredStyle:0];

  v9 = MEMORY[0x277D750F8];
  dismissText = [sts_userReportRequest dismissText];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke;
  v27[3] = &unk_279B8AC28;
  selfCopy = self;
  v27[4] = self;
  v12 = [v9 actionWithTitle:dismissText style:1 handler:v27];
  [v8 addAction:v12];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [sts_userReportRequest userReportOptions];
  v13 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        name = [v17 name];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke_3;
        v22[3] = &unk_279B8AC70;
        v22[4] = selfCopy;
        v22[5] = v17;
        v19 = [MEMORY[0x277D750F8] actionWithTitle:name style:0 handler:v22];
        [v8 addAction:v19];
      }

      v14 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v14);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke_6;
  v21[3] = &unk_279B8A988;
  v21[4] = selfCopy;
  [(STSResultDetailViewController *)selfCopy presentViewController:v8 animated:1 completion:v21];
}

void __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke_2;
  block[3] = &unk_279B8A988;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setShowReportConcern:1];

  v3 = [*(a1 + 32) view];
  v4 = [v3 reportConcernButton];
  v5 = [*(a1 + 32) searchResult];
  v6 = [v5 sts_userReportRequest];
  v7 = [v6 affordanceText];
  [v4 setTitle:v7 forState:0];

  v8 = [*(a1 + 32) view];
  v9 = [v8 reportConcernButton];
  [v9 sizeToFit];

  v10 = [*(a1 + 32) view];
  [v10 setNeedsLayout];
}

uint64_t __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke_4;
  block[3] = &unk_279B8A988;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 searchResult];
  [v2 detailViewControllerDidReportConcern:v3 result:v4 punchout:*(a1 + 40)];

  return [*(a1 + 32) dismissViewControllerAnimated:1 completion:&__block_literal_global];
}

void __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setShowReportConcern:1];

  v3 = [*(a1 + 32) view];
  [v3 updateReportConcernButtonTitle];
}

void __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setShowReportConcern:0];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->_allowCustomContentViewInteraction)
  {
    view = [touch view];
    view2 = [(STSResultDetailViewController *)self view];
    customContentView = [view2 customContentView];
    v8 = [view isEqual:customContentView] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (STSResultDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end