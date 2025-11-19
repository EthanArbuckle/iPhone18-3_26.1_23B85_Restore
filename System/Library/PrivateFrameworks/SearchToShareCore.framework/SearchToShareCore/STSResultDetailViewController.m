@interface STSResultDetailViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isFullscreen;
- (CGRect)contentFrameForBounds:(CGRect)a3 traitCollection:(id)a4;
- (CGSize)contentSize;
- (CGSize)providerIconSize;
- (NSString)providerName;
- (STSAnimatedImageInfo)thumbnailInfo;
- (STSResultDetailViewControllerDelegate)delegate;
- (UIImage)providerIcon;
- (UIImage)thumbnail;
- (void)detailViewDidTapProvider:(id)a3;
- (void)detailViewDidTapReportConcern:(id)a3;
- (void)detailViewDidTapSend:(id)a3;
- (void)loadView;
- (void)setContentSize:(CGSize)a3;
- (void)setIsFullscreen:(BOOL)a3;
- (void)setProviderIcon:(id)a3;
- (void)setProviderIconSize:(CGSize)a3;
- (void)setProviderName:(id)a3;
- (void)setSearchResult:(id)a3;
- (void)setUseBackgroundBlur:(BOOL)a3;
- (void)updateCustomContentWithView:(id)a3;
- (void)updateWithThumbnail:(id)a3 orThumbnailInfo:(id)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([(STSResultDetailViewController *)self modalPresentationStyle]== 6)
  {
    v8 = [(STSResultDetailViewController *)self view];
    [v8 setFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), width, height}];
  }

  [v7 animateAlongsideTransition:0 completion:0];
  v9.receiver = self;
  v9.super_class = STSResultDetailViewController;
  [(STSResultDetailViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)setUseBackgroundBlur:(BOOL)a3
{
  v3 = a3;
  v4 = [(STSResultDetailViewController *)self view];
  [v4 setUseBackgroundBlur:v3];
}

- (void)setContentSize:(CGSize)a3
{
  p_contentSize = &self->_contentSize;
  if (self->_contentSize.width != a3.width || self->_contentSize.height != a3.height)
  {
    p_contentSize->width = a3.width;
    self->_contentSize.height = a3.height;
    if ([(STSResultDetailViewController *)self isViewLoaded])
    {
      v6 = [(STSResultDetailViewController *)self view];
      [v6 setContentSize:{p_contentSize->width, p_contentSize->height}];
    }
  }
}

- (UIImage)thumbnail
{
  v2 = [(STSResultDetailViewController *)self view];
  v3 = [v2 thumbnail];

  return v3;
}

- (STSAnimatedImageInfo)thumbnailInfo
{
  v2 = [(STSResultDetailViewController *)self view];
  v3 = [v2 thumbnailInfo];

  return v3;
}

- (CGSize)providerIconSize
{
  v2 = [(STSResultDetailViewController *)self view];
  [v2 providerIconSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setProviderIconSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(STSResultDetailViewController *)self view];
  [v5 setProviderIconSize:{width, height}];
}

- (UIImage)providerIcon
{
  v2 = [(STSResultDetailViewController *)self view];
  v3 = [v2 providerIcon];

  return v3;
}

- (void)setProviderIcon:(id)a3
{
  v4 = a3;
  v5 = [(STSResultDetailViewController *)self view];
  [v5 setProviderIcon:v4];
}

- (NSString)providerName
{
  v2 = [(STSResultDetailViewController *)self view];
  v3 = [v2 providerName];

  return v3;
}

- (void)setProviderName:(id)a3
{
  v4 = a3;
  v5 = [(STSResultDetailViewController *)self view];
  [v5 setProviderName:v4];
}

- (BOOL)isFullscreen
{
  v2 = [(STSResultDetailViewController *)self view];
  v3 = [v2 isFullscreen];

  return v3;
}

- (void)setIsFullscreen:(BOOL)a3
{
  v3 = a3;
  v4 = [(STSResultDetailViewController *)self view];
  [v4 setIsFullscreen:v3];
}

- (void)setSearchResult:(id)a3
{
  v5 = a3;
  if (self->_searchResult != v5)
  {
    v15 = v5;
    objc_storeStrong(&self->_searchResult, a3);
    v6 = [(SFSearchResult *)self->_searchResult sts_userReportRequest];
    if (v6 && (v7 = v6, v8 = [(STSResultDetailViewController *)self numberOfReportedResults], v7, v8 <= 0x1E))
    {
      v9 = [(STSResultDetailViewController *)self view];
      [v9 setShowReportConcern:1];

      v10 = [(STSResultDetailViewController *)self view];
      v11 = [v10 reportConcernButton];
      v12 = [(STSResultDetailViewController *)self searchResult];
      v13 = [v12 sts_userReportRequest];
      v14 = [v13 affordanceText];
      [v11 setTitle:v14 forState:0];
    }

    else
    {
      v10 = [(STSResultDetailViewController *)self view];
      [v10 setShowReportConcern:0];
    }

    v5 = v15;
  }
}

- (void)updateWithThumbnail:(id)a3 orThumbnailInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STSResultDetailViewController *)self view];
  [v8 updateWithThumbnail:v7 orThumbnailInfo:v6];
}

- (void)updateCustomContentWithView:(id)a3
{
  v4 = a3;
  v5 = [(STSResultDetailViewController *)self view];
  [v5 setCustomContentView:v4];
}

- (CGRect)contentFrameForBounds:(CGRect)a3 traitCollection:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(STSResultDetailViewController *)self view];
  [v10 contentFrameForBounds:v9 traitCollection:{x, y, width, height}];
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

- (void)detailViewDidTapProvider:(id)a3
{
  v4 = [(STSResultDetailViewController *)self delegate];
  [v4 detailViewControllerDidSelectProviderLink:self];

  [(STSResultDetailViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)detailViewDidTapSend:(id)a3
{
  v4 = [(STSResultDetailViewController *)self delegate];
  [v4 detailViewControllerDidInsert:self];

  [(STSResultDetailViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)detailViewDidTapReportConcern:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [(STSResultDetailViewController *)self searchResult];
  v5 = [v4 sts_userReportRequest];

  v6 = MEMORY[0x277D75110];
  v7 = [v5 title];
  v8 = [v6 alertControllerWithTitle:v7 message:0 preferredStyle:0];

  v9 = MEMORY[0x277D750F8];
  v10 = [v5 dismissText];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke;
  v27[3] = &unk_279B8AC28;
  v11 = self;
  v27[4] = self;
  v12 = [v9 actionWithTitle:v10 style:1 handler:v27];
  [v8 addAction:v12];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v5 userReportOptions];
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
        v18 = [v17 name];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __63__STSResultDetailViewController_detailViewDidTapReportConcern___block_invoke_3;
        v22[3] = &unk_279B8AC70;
        v22[4] = v11;
        v22[5] = v17;
        v19 = [MEMORY[0x277D750F8] actionWithTitle:v18 style:0 handler:v22];
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
  v21[4] = v11;
  [(STSResultDetailViewController *)v11 presentViewController:v8 animated:1 completion:v21];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_allowCustomContentViewInteraction)
  {
    v5 = [a4 view];
    v6 = [(STSResultDetailViewController *)self view];
    v7 = [v6 customContentView];
    v8 = [v5 isEqual:v7] ^ 1;
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