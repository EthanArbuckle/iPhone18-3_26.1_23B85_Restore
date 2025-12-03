@interface SKUIReviewsFacebookViewController
- (SKUIReviewsFacebookViewControllerDelegate)delegate;
- (void)_changeStatusToUserLiked:(BOOL)liked;
- (void)_reloadFacebookView;
- (void)_toggleLike:(id)like;
- (void)dealloc;
- (void)loadView;
- (void)setFacebookLikeStatus:(id)status;
@end

@implementation SKUIReviewsFacebookViewController

- (void)dealloc
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIReviewsFacebookViewController *)v3 dealloc:v4];
      }
    }
  }

  likeToggleButton = [(SKUIReviewsFacebookView *)self->_facebookView likeToggleButton];
  [likeToggleButton removeTarget:self action:0 forControlEvents:4095];

  v12.receiver = self;
  v12.super_class = SKUIReviewsFacebookViewController;
  [(SKUIReviewsFacebookViewController *)&v12 dealloc];
}

- (void)setFacebookLikeStatus:(id)status
{
  statusCopy = status;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIReviewsFacebookViewController *)v5 setFacebookLikeStatus:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_facebookLikeStatus != statusCopy)
  {
    v13 = [(SKUIFacebookLikeStatus *)statusCopy copy];
    facebookLikeStatus = self->_facebookLikeStatus;
    self->_facebookLikeStatus = v13;

    [(SKUIReviewsFacebookViewController *)self _reloadFacebookView];
  }
}

- (void)loadView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIReviewsFacebookViewController *)v3 loadView:v4];
      }
    }
  }

  facebookView = self->_facebookView;
  if (!facebookView)
  {
    v12 = [[SKUIReviewsFacebookView alloc] initWithClientContext:self->_clientContext];
    v13 = self->_facebookView;
    self->_facebookView = v12;

    likeToggleButton = [(SKUIReviewsFacebookView *)self->_facebookView likeToggleButton];
    [likeToggleButton addTarget:self action:sel__toggleLike_ forControlEvents:64];

    [(SKUIReviewsFacebookViewController *)self _reloadFacebookView];
    facebookView = self->_facebookView;
  }

  [(SKUIReviewsFacebookViewController *)self setView:facebookView];
}

- (void)_toggleLike:(id)like
{
  likeCopy = like;
  isUserLiked = [(SKUIFacebookLikeStatus *)self->_facebookLikeStatus isUserLiked];
  v6 = isUserLiked;
  v7 = !isUserLiked;
  [(SKUIReviewsFacebookViewController *)self _changeStatusToUserLiked:v7];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__SKUIReviewsFacebookViewController__toggleLike___block_invoke;
  aBlock[3] = &unk_2781FDE28;
  objc_copyWeak(&v16, &location);
  v17 = v7;
  v8 = _Block_copy(aBlock);
  v9 = SKUISocialFramework();
  v10 = [SKUIWeakLinkedClassForString(&cfstr_Slfacebooksess.isa v9)];
  [(SKUIFacebookLikeStatus *)self->_facebookLikeStatus URL];
  if (v6)
    v11 = {;
    [v10 unlikeURL:v11 completion:v8];
  }

  else
    v11 = {;
    [v10 likeURL:v11 completion:v8];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 reviewsFacebookViewControllerDidChange:self];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __49__SKUIReviewsFacebookViewController__toggleLike___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __49__SKUIReviewsFacebookViewController__toggleLike___block_invoke_2;
    v3[3] = &unk_2781FDE00;
    objc_copyWeak(&v4, (a1 + 32));
    v5 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v3);
    objc_destroyWeak(&v4);
  }
}

void __49__SKUIReviewsFacebookViewController__toggleLike___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _changeStatusToUserLiked:(*(a1 + 40) & 1) == 0];
}

- (void)_changeStatusToUserLiked:(BOOL)liked
{
  likedCopy = liked;
  v5 = [(SKUIFacebookLikeStatus *)self->_facebookLikeStatus copy];
  [v5 setUserLiked:likedCopy];
  [(SKUIReviewsFacebookViewController *)self setFacebookLikeStatus:v5];
}

- (void)_reloadFacebookView
{
  facebookView = self->_facebookView;
  friendNames = [(SKUIFacebookLikeStatus *)self->_facebookLikeStatus friendNames];
  [(SKUIReviewsFacebookView *)facebookView setFriendNames:friendNames];

  v5 = self->_facebookView;
  isUserLiked = [(SKUIFacebookLikeStatus *)self->_facebookLikeStatus isUserLiked];

  [(SKUIReviewsFacebookView *)v5 setUserLiked:isUserLiked];
}

- (SKUIReviewsFacebookViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end