@interface SKUIHorizontalLockupView
+ (BOOL)_usesEditorialLayoutForLabelViewElement:(id)a3;
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (id)_attributedStringForOrdinal:(id)a3 context:(id)a4;
+ (void)_requestLayoutForViewElements:(id)a3 width:(double)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)_usesBackgroundWithAlpha;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)offerViewAnimateTransition:(id)a3;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (CGSize)_sizeViewsForColumn:(id)a3 toFitWidth:(double)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIHorizontalLockupView)initWithFrame:(CGRect)a3;
- (double)_dividerHeight:(id)a3;
- (id)_addFlipContainerViewWithFrontView:(id)a3 backView:(id)a4;
- (id)_columnForView:(id)a3;
- (id)_previewFrontView;
- (id)_previewMediaURL;
- (id)_previewProgressIndicator;
- (id)_viewElementForView:(id)a3;
- (id)preferredBackgroundColor;
- (id)viewForElementIdentifier:(id)a3;
- (void)_addConfirmationGradientForView:(id)a3;
- (void)_animateButton:(id)a3;
- (void)_audioPlayerStatusChangeNotification:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)_cancelConfirmationAction:(id)a3;
- (void)_expandEditorialForLabel:(id)a3;
- (void)_handlePlayButtonTap:(id)a3 element:(id)a4;
- (void)_layoutConfirmationGradientRelativeToItemOfferView:(id)a3 alpha:(double)a4;
- (void)_performDefaultActionForImage:(id)a3;
- (void)_resizeMetadataRelativeToItemOfferView:(id)a3;
- (void)_resolvePreviewStateAfterTransitionForFlipView:(id)a3;
- (void)_showConfirmationAction:(id)a3;
- (void)_tapGestureAction:(id)a3;
- (void)dealloc;
- (void)hidePreviewProgressAnimated:(BOOL)a3;
- (void)itemOfferButtonDidAnimateTransition:(id)a3;
- (void)itemOfferButtonWillAnimateTransition:(id)a3;
- (void)layoutSubviews;
- (void)mediaPlayer:(id)a3 itemStateChanged:(id)a4;
- (void)offerViewDidAnimateTransition:(id)a3;
- (void)offerViewWillAnimateTransition:(id)a3;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setBackgroundColor:(id)a3;
- (void)setContainerBackgroundImageForPlayButton:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setPerspectiveTargetView:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setVanishingPoint:(CGPoint)a3;
- (void)showPreviewProgressWithStatus:(id)a3 animated:(BOOL)a4;
- (void)togglePreviewPlaybackAnimated:(BOOL)a3;
@end

@implementation SKUIHorizontalLockupView

- (SKUIHorizontalLockupView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIHorizontalLockupView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIHorizontalLockupView;
  v16 = [(SKUIViewReuseView *)&v20 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElementViews = v16->_viewElementViews;
    v16->_viewElementViews = v17;
  }

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7FF18] object:0];
  [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer removeTarget:self action:0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIHorizontalLockupView;
  [(SKUIViewReuseView *)&v4 dealloc];
}

- (id)preferredBackgroundColor
{
  v3 = [(SKUILockupViewElement *)self->_lockupElement style];
  v4 = [v3 ikBackgroundColor];
  v5 = [v4 color];

  if (!v5)
  {
    if ([(SKUILockupViewElement *)self->_lockupElement lockupViewType]== 7)
    {
      v5 = [MEMORY[0x277D75348] colorWithWhite:0.109803922 alpha:0.72];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setPerspectiveTargetView:(id)a3
{
  objc_initWeak(&location, a3);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SKUIHorizontalLockupView_setPerspectiveTargetView___block_invoke;
  v4[3] = &unk_2781FC2A8;
  objc_copyWeak(&v5, &location);
  [(SKUIViewReuseView *)self enumerateExistingViewsForReuseIdentifier:0x28280C8C8 usingBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__SKUIHorizontalLockupView_setPerspectiveTargetView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setPerspectiveTargetView:WeakRetained];
}

- (void)setVanishingPoint:(CGPoint)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__SKUIHorizontalLockupView_setVanishingPoint___block_invoke;
  v3[3] = &__block_descriptor_48_e23_v32__0__UIView_8Q16_B24l;
  v4 = a3;
  [(SKUIViewReuseView *)self enumerateExistingViewsForReuseIdentifier:0x28280C8C8 usingBlock:v3];
}

- (void)hidePreviewProgressAnimated:(BOOL)a3
{
  previewState = self->_previewState;
  if (previewState)
  {
    self->_previewState = 3;
    v6 = self->_previewProgressIndicator;
    lastPlayerStatus = self->_lastPlayerStatus;
    self->_lastPlayerStatus = 0;

    previewProgressIndicator = self->_previewProgressIndicator;
    self->_previewProgressIndicator = 0;

    if (previewState == 2)
    {
      v9 = [(SKUIHorizontalLockupView *)self _previewFrontView];
      if (a3)
      {
        v10 = [(SKUIHorizontalLockupView *)self _addFlipContainerViewWithFrontView:v6 backView:v9];
        [v9 setHidden:0];
        objc_initWeak(&location, self);
        v11 = [MEMORY[0x277D75128] sharedApplication];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __56__SKUIHorizontalLockupView_hidePreviewProgressAnimated___block_invoke;
        v13[3] = &unk_2781F8230;
        v12 = v10;
        v14 = v12;
        objc_copyWeak(&v15, &location);
        [v11 _performBlockAfterCATransactionCommits:v13];

        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }

      else
      {
        self->_previewState = 0;
        [(SKUIPreviewProgressIndicator *)v6 removeFromSuperview];
        [(SKUIHorizontalLockupView *)self addSubview:v9];
        [(SKUIHorizontalLockupView *)self setNeedsLayout];
      }
    }
  }
}

void __56__SKUIHorizontalLockupView_hidePreviewProgressAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__SKUIHorizontalLockupView_hidePreviewProgressAnimated___block_invoke_2;
  v3[3] = &unk_2781FB310;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 flipToBackViewWithDuration:0x100000 options:v3 completionBlock:0.5];

  objc_destroyWeak(&v5);
}

void __56__SKUIHorizontalLockupView_hidePreviewProgressAnimated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resolvePreviewStateAfterTransitionForFlipView:*(a1 + 32)];
}

- (void)showPreviewProgressWithStatus:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_storeStrong(&self->_lastPlayerStatus, a3);
  previewState = self->_previewState;
  if (previewState)
  {
    if (previewState == 2)
    {
      [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator setHidden:0];
      [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator reloadWithPlayerStatus:v7 animated:v4];
    }
  }

  else
  {
    v9 = [(SKUIHorizontalLockupView *)self _previewFrontView];
    if (v9)
    {
      v10 = [(SKUIHorizontalLockupView *)self _previewProgressIndicator];
      v11 = v10;
      if (v4)
      {
        v12 = [(SKUIHorizontalLockupView *)self _addFlipContainerViewWithFrontView:v9 backView:v10];
        self->_previewState = 1;
        [v11 reloadWithPlayerStatus:v7 animated:1];
        objc_initWeak(&location, self);
        v13 = [MEMORY[0x277D75128] sharedApplication];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __67__SKUIHorizontalLockupView_showPreviewProgressWithStatus_animated___block_invoke_2;
        v16[3] = &unk_2781F8230;
        v14 = v12;
        v17 = v14;
        objc_copyWeak(&v18, &location);
        [v13 _performBlockAfterCATransactionCommits:v16];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        self->_previewState = 2;
        [v10 setEnabled:1];
        [(SKUIHorizontalLockupView *)self addSubview:v11];
        [(SKUIHorizontalLockupView *)self setNeedsLayout];
        v15 = [MEMORY[0x277D75128] sharedApplication];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __67__SKUIHorizontalLockupView_showPreviewProgressWithStatus_animated___block_invoke;
        v20[3] = &unk_2781F9570;
        v21 = v11;
        v22 = self;
        v23 = v4;
        [v15 _performBlockAfterCATransactionCommits:v20];

        v14 = v21;
      }
    }
  }
}

void __67__SKUIHorizontalLockupView_showPreviewProgressWithStatus_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__SKUIHorizontalLockupView_showPreviewProgressWithStatus_animated___block_invoke_3;
  v3[3] = &unk_2781FB310;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 flipToBackViewWithDuration:0x200000 options:v3 completionBlock:0.5];

  objc_destroyWeak(&v5);
}

void __67__SKUIHorizontalLockupView_showPreviewProgressWithStatus_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resolvePreviewStateAfterTransitionForFlipView:*(a1 + 32)];
}

- (void)togglePreviewPlaybackAnimated:(BOOL)a3
{
  v4 = [(SKUIHorizontalLockupView *)self _previewMediaURL];
  if (v4)
  {
    v12 = v4;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = [MEMORY[0x277D7FDA8] sessionManager];
    v7 = [v6 endSessionForURL:v12];
    if (v7)
    {
      [v5 removeObserver:self name:*MEMORY[0x277D7FF18] object:v7];
      [v7 stop];
      [(SKUIHorizontalLockupView *)self hidePreviewProgressAnimated:1];
    }

    else
    {
      v8 = [v6 stopAllAudioPlayerSessions];
      v9 = [v6 startSessionWithURL:v12];
      [v5 addObserver:self selector:sel__audioPlayerStatusChangeNotification_ name:*MEMORY[0x277D7FF18] object:v9];
      v10 = [(SKUIViewElement *)self->_lockupElement firstChildForElementType:90];
      [v9 setStoreItemIdentifier:{objc_msgSend(v10, "itemIdentifier")}];
      v11 = [v9 playerStatus];
      [(SKUIHorizontalLockupView *)self showPreviewProgressWithStatus:v11 animated:1];

      [v9 play];
    }

    v4 = v12;
  }
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__SKUIHorizontalLockupView_prefetchResourcesForViewElement_reason_context___block_invoke;
  v11[3] = &unk_2781F95A0;
  v9 = v8;
  v13 = &v15;
  v14 = a4;
  v12 = v9;
  [v7 enumerateChildrenUsingBlock:v11];
  LOBYTE(a4) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return a4;
}

uint64_t __75__SKUIHorizontalLockupView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 defaultItemWidthForViewElement:v7];
  [a1 sizeThatFitsWidth:v7 viewElement:v6 context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIHorizontalLockupView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [[SKUIHorizontalLockupLayout alloc] initWithLockup:v8 context:v9];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__40;
  v35 = __Block_byref_object_dispose__40;
  v36 = 0;
  v19 = [(SKUIHorizontalLockupLayout *)v18 columns];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __70__SKUIHorizontalLockupView_requestLayoutForViewElement_width_context___block_invoke;
  v26 = &unk_2781FCF18;
  v29 = a1;
  v30 = a4;
  v20 = v9;
  v27 = v20;
  v28 = &v31;
  [v19 enumerateObjectsUsingBlock:&v23];

  [(SKUIHorizontalLockupLayout *)v18 sizeColumnsToFitWidth:v20 context:a4, v23, v24, v25, v26];
  v21 = v32[5];
  if (v21)
  {
    v22 = [v21 childViewElements];
    [v32[5] size];
    [a1 _requestLayoutForViewElements:v22 width:v20 context:?];
  }

  _Block_object_dispose(&v31, 8);
}

void __70__SKUIHorizontalLockupView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 identifier];
  if (v3 <= 6)
  {
    if (((1 << v3) & 0x57) != 0)
    {
      v4 = *(a1 + 48);
      v5 = [v8 childViewElements];
      [v4 _requestLayoutForViewElements:v5 width:*(a1 + 32) context:*(a1 + 56)];
LABEL_4:

      goto LABEL_5;
    }

    if (v3 == 3)
    {
      v6 = *(*(a1 + 40) + 8);
      v7 = v8;
      v5 = *(v6 + 40);
      *(v6 + 40) = v7;
      goto LABEL_4;
    }
  }

LABEL_5:
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIHorizontalLockupView *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3010000000;
  v31 = &unk_215F8ACD7;
  v32 = a3;
  v33 = 0;
  v17 = [[SKUIHorizontalLockupLayout alloc] initWithLockup:v7 context:v8];
  [(SKUIHorizontalLockupLayout *)v17 sizeColumnsToFitWidth:v8 context:a3];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = [(SKUIHorizontalLockupLayout *)v17 columns];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__SKUIHorizontalLockupView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v23[3] = &unk_2781FCF40;
  v23[4] = &v24;
  v23[5] = &v28;
  [v18 enumerateObjectsUsingBlock:v23];

  v19 = v29[4];
  v20 = v25[3] + v29[5];
  v29[5] = v20;
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v28, 8);
  v21 = v19;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

void __66__SKUIHorizontalLockupView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 identifier] == 6)
  {
    [v3 size];
    v5 = v4;

    v6 = a1 + 32;
    v7 = 24;
  }

  else
  {
    v8 = *(a1 + 40);
    v6 = a1 + 40;
    v9 = *(*(v8 + 8) + 40);
    [v3 size];
    v5 = v10;

    if (v9 >= v5)
    {
      v5 = v9;
    }

    v7 = 40;
  }

  *(*(*v6 + 8) + v7) = v5;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  [(NSHashTable *)self->_artworkRelatedChildViewElementViews removeAllObjects];
  [(NSMapTable *)self->_cacheKeyToImageView removeAllObjects];
  [(NSMapTable *)self->_buyButtonDescriptorToButton removeAllObjects];
  [(NSHashTable *)self->_offerViews removeAllObjects];
  badge = self->_badge;
  self->_badge = 0;

  objc_storeStrong(&self->_lockupElement, a3);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  tappableViews = self->_tappableViews;
  self->_tappableViews = v12;

  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  [(SKUIGradientView *)self->_offerConfirmationGradientView removeFromSuperview];
  offerConfirmationGradientView = self->_offerConfirmationGradientView;
  self->_offerConfirmationGradientView = 0;

  playButton = self->_playButton;
  self->_playButton = 0;

  v16 = [[SKUIHorizontalLockupLayout alloc] initWithLockup:v9 context:v10];
  layout = self->_layout;
  self->_layout = v16;

  [(SKUIHorizontalLockupLayout *)self->_layout sizeColumnsToFitWidth:v10 context:a4];
  self->_useClearBackground = [(SKUIHorizontalLockupView *)self _usesBackgroundWithAlpha];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__40;
  v56 = __Block_byref_object_dispose__40;
  v57 = 0;
  v47 = v9;
  if ([v9 lockupViewType] == 7 || objc_msgSend(v9, "lockupViewType") == 6)
  {
    if (!self->_metadataBackgroundView)
    {
      v18 = objc_alloc_init(MEMORY[0x277D75D18]);
      metadataBackgroundView = self->_metadataBackgroundView;
      self->_metadataBackgroundView = v18;

      [(SKUIHorizontalLockupView *)self addSubview:self->_metadataBackgroundView];
    }

    v20 = [v9 style];
    v21 = [v20 ikBackgroundColor];
    v22 = [v21 color];

    if (!v22)
    {
      if ([v47 lockupViewType] == 7)
      {
        v22 = [MEMORY[0x277D75348] colorWithWhite:0.109803922 alpha:0.72];
      }

      else
      {
        v22 = 0;
      }
    }

    [(UIView *)self->_metadataBackgroundView setBackgroundColor:v22];
    self->_useClearBackground = 1;
  }

  else
  {
    [(UIView *)self->_metadataBackgroundView removeFromSuperview];
    v22 = self->_metadataBackgroundView;
    self->_metadataBackgroundView = 0;
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __64__SKUIHorizontalLockupView_reloadWithViewElement_width_context___block_invoke;
  v48[3] = &unk_2781FCF90;
  v48[4] = self;
  v51 = a4;
  v23 = v10;
  v49 = v23;
  v50 = &v52;
  [(SKUIViewReuseView *)self modifyUsingBlock:v48];
  if ([(NSMutableArray *)self->_tappableViews count]|| [(SKUILockupViewElement *)self->_lockupElement isSelectable])
  {
    tapGestureRecognizer = self->_tapGestureRecognizer;
    if (!tapGestureRecognizer)
    {
      v25 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapGestureAction_];
      v26 = self->_tapGestureRecognizer;
      self->_tapGestureRecognizer = v25;

      [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
      [(SKUIHorizontalLockupView *)self addGestureRecognizer:self->_tapGestureRecognizer];
      tapGestureRecognizer = self->_tapGestureRecognizer;
    }

    [(UITapGestureRecognizer *)tapGestureRecognizer setEnabled:1];
  }

  else
  {
    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:1];
    v43 = self->_tappableViews;
    self->_tappableViews = 0;
  }

  [(SKUIHorizontalLockupView *)self sendSubviewToBack:v53[5]];
  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  v28 = *MEMORY[0x277D7FF18];
  [v27 removeObserver:self name:*MEMORY[0x277D7FF18] object:0];
  v29 = [(SKUIHorizontalLockupView *)self _previewMediaURL];
  if (v29 && ([MEMORY[0x277D7FDA8] sessionManager], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "audioPlayerForURL:", v29), v31 = objc_claimAutoreleasedReturnValue(), v30, v31))
  {
    [v27 addObserver:self selector:sel__audioPlayerStatusChangeNotification_ name:v28 object:v31];
    v32 = [v31 playerStatus];
    [(SKUIHorizontalLockupView *)self showPreviewProgressWithStatus:v32 animated:0];
  }

  else
  {
    [(SKUIHorizontalLockupView *)self hidePreviewProgressAnimated:0];
    v31 = 0;
  }

  v33 = +[SKUIMediaPlayerInterface sharedInstance];
  [v33 removeObserver:self];

  v34 = self->_playButton;
  if (v34)
  {
    v35 = [(SKUIPlayButton *)v34 playItemIdentifier];

    if (v35)
    {
      v36 = +[SKUIMediaPlayerInterface sharedInstance];
      v37 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
      v38 = [v36 playerForItemWithIdentifier:v37];

      v39 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
      if ([v36 identifierIsOnDeck:v39])
      {
        v40 = [(SKUIPlayButtonControl *)self->_playButton isIndeterminate];

        if (!v40)
        {
          [(SKUIPlayButtonControl *)self->_playButton beginIndeterminateAnimation];
          [(SKUIPlayButtonControl *)self->_playButton showPlayIndicator:0];
LABEL_36:
          v45 = +[SKUIMediaPlayerInterface sharedInstance];
          [v45 addObserver:self];

          goto LABEL_37;
        }
      }

      else
      {
      }

      if (v38)
      {
        v41 = [v38 playerItem];
        v42 = [v41 playState];

        if ([(SKUIPlayButton *)self->_playButton showOnDemand])
        {
          [(SKUIPlayButton *)self->_playButton setHidden:0];
        }

        if (v42 <= 5 && ((1 << v42) & 0x31) != 0)
        {
          [(SKUIPlayButtonControl *)self->_playButton hideProgressAnimated:1];
        }

        else
        {
          v44 = [v38 playerItem];
          [v46 reloadWithItemStatus:v44 animated:0];

          [(SKUIPlayButtonControl *)self->_playButton showPlayIndicator:v42 == 3];
        }
      }

      else
      {
        [(SKUIPlayButtonControl *)self->_playButton hideProgressAnimated:1];
        if ([(SKUIPlayButton *)self->_playButton showOnDemand])
        {
          [(SKUIPlayButton *)self->_playButton setHidden:1];
        }
      }

      goto LABEL_36;
    }
  }

LABEL_37:

  _Block_object_dispose(&v52, 8);
}

void __64__SKUIHorizontalLockupView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 496) columns];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SKUIHorizontalLockupView_reloadWithViewElement_width_context___block_invoke_2;
  v11[3] = &unk_2781FCF68;
  v16 = *(a1 + 56);
  v5 = v3;
  v12 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v13 = v6;
  v14 = v7;
  v15 = *(a1 + 48);
  [v4 enumerateObjectsUsingBlock:v11];

  v8 = [*(*(a1 + 32) + 504) lockupViewType];
  v9 = *(a1 + 32);
  if (v8 == 5 || v9[576] == 1)
  {
    v10 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v10];
  }
}

void __64__SKUIHorizontalLockupView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 childViewElements];
  v65 = v3;
  [v3 size];
  v7 = v6;
  v69 = v4;
  if (v4 <= 6 && ((1 << v4) & 0x76) != 0)
  {
    v7 = *(a1 + 64);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v8)
  {
    v9 = v8;
    v71 = *v73;
    v67 = v4 - 1;
    v68 = v7;
    v10 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v73 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v72 + 1) + 8 * i);
        v13 = v12;
        v14 = [v13 elementType];
        v15 = v14;
        v16 = 0;
        if (v14 <= 61)
        {
          if (v14 > 31)
          {
            if (v14 <= 48)
            {
              if (v14 == 32)
              {
                v39 = v13;
                v17 = [*(a1 + 32) addDividerWithElement:v39 context:*(a1 + 40)];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([v39 dividerType] == 3)
                  {
                    [*(a1 + 48) _dividerHeight:v39];
                    [v17 setDividerSize:?];
                    v40 = 1;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  [v17 setDividerOrientation:v40];
                }

LABEL_99:
              }

              else
              {
                v17 = 0;
                v18 = 0;
                if (v14 != 48)
                {
                  goto LABEL_119;
                }

                v19 = [*(a1 + 32) addHeaderViewWithElement:v13 width:*(a1 + 40) context:v10];
LABEL_75:
                v17 = v19;
              }

              v25 = 0;
              v16 = 0;
              v18 = 0;
              goto LABEL_101;
            }

            if (v14 == 49)
            {
              goto LABEL_48;
            }

            if (v14 == 50)
            {
              goto LABEL_30;
            }

            v17 = 0;
            v18 = 0;
            if (v14 != 51)
            {
              goto LABEL_119;
            }

            v20 = [*(a1 + 32) addImageDeckViewWithElement:v13 width:*(a1 + 40) context:*(a1 + 64)];
            goto LABEL_77;
          }

          if (v14 <= 12)
          {
            if (v14 != 8)
            {
              v17 = 0;
              v18 = 0;
              if (v14 != 12)
              {
                goto LABEL_119;
              }

LABEL_30:
              v21 = v13;
              v22 = [*(a1 + 32) addButtonWithElement:v21 width:*(a1 + 40) context:v10];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_storeStrong((*(a1 + 48) + 536), v22);
              }

              [v22 addTarget:0 action:sel_skuiadvertising_advertSelectionEventShouldBeForwarded_ forControlEvents:64];
              [v22 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v22 setDelegate:*(a1 + 48)];
              }

              LODWORD(v23) = -0.5;
              [v22 setCharge:v23];
              v24 = v22;
              v17 = v24;
              if (v15 == 50)
              {
                v16 = v24;
              }

              else
              {
                v16 = 0;
              }

              if (v15 == 50)
              {
                v18 = 0;
              }

              else
              {
                v18 = v24;
              }

              if ([v21 isBigHitButton])
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v17 setBigHitInsets:{-10.0, 5.0, -10.0, -5.0}];
                }
              }

              if ([*(*(a1 + 48) + 504) isSelectable])
              {
                [*(*(a1 + 48) + 568) addObject:v17];
              }

              v25 = 0;
              goto LABEL_101;
            }

            v16 = [*(a1 + 32) addBadgeViewWithElement:v13 width:*(a1 + 40) context:v10];
            v36 = [v13 style];
            v37 = [v36 elementPosition];

            if (v37 == 7)
            {
              objc_storeStrong((*(a1 + 48) + 432), v12);
              v26 = [MEMORY[0x277D75348] clearColor];
              [v16 setBackgroundColor:v26];
              goto LABEL_86;
            }

            goto LABEL_87;
          }

          if (v14 != 13)
          {
            v17 = 0;
            v18 = 0;
            if (v14 != 29)
            {
              goto LABEL_119;
            }

LABEL_48:
            v16 = [*(a1 + 32) addImageViewWithElement:v13 context:*(a1 + 40)];
            v26 = [v13 ancestorElementMatchingPredicate:&__block_literal_global_42];
            v27 = v69;
            if (v26)
            {
LABEL_49:
              v28 = v16;
              if (v27 == 5)
              {
                objc_storeStrong((*(*(a1 + 56) + 8) + 40), v16);
              }
            }

            else
            {
              if (![v16 isUserInteractionEnabled] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || v69 == 5)
              {
                if ([*(*(a1 + 48) + 504) isSelectable])
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v47 = v16;
                    v48 = [v13 firstChildForElementType:12];
                    if ([v48 buttonViewType] && objc_msgSend(v48, "buttonViewType") == 12)
                    {
                      v49 = [v48 itmlID];
                      v66 = v47;
                      v50 = [v47 viewForElementIdentifier:v49];

                      if (v50)
                      {
                        [*(*(a1 + 48) + 568) addObject:v50];
                        [*(*(a1 + 48) + 584) setObject:v50 forKey:v48];
                      }

                      v27 = v69;
                      v47 = v66;
                    }
                  }
                }

                goto LABEL_49;
              }

              [*(*(a1 + 48) + 568) addObject:v16];
              v46 = v16;
            }

LABEL_86:

LABEL_87:
            v25 = 0;
            v18 = 0;
            v17 = v16;
            goto LABEL_101;
          }

          goto LABEL_65;
        }

        if (v14 > 137)
        {
          if (v14 > 143)
          {
            if (v14 == 144)
            {
              v19 = [*(a1 + 32) addTomatoRatingViewWithViewElement:v13 width:*(a1 + 40) context:v10];
              goto LABEL_75;
            }

            if (v14 != 152)
            {
              v17 = 0;
              v18 = 0;
              if (v14 != 154)
              {
                goto LABEL_119;
              }

              v20 = [*(a1 + 32) addImageGridViewWithElement:v13 width:*(a1 + 40) context:*(a1 + 64)];
              goto LABEL_77;
            }

            v38 = [*(a1 + 32) addImageViewWithVideoElement:v13 context:*(a1 + 40)];
            v16 = v38;
            v25 = 0;
LABEL_78:
            v18 = 0;
            v17 = v38;
            goto LABEL_101;
          }

          if (v14 == 138)
          {
            v39 = v13;
            v41 = [*(a1 + 40) maxWidthForElement:v39 withDefaultWidth:v68];
            v42 = [objc_opt_class() _usesEditorialLayoutForLabelViewElement:v39];
            v43 = v41;
            v44 = *(a1 + 32);
            v45 = *(a1 + 40);
            if (v42)
            {
              v17 = [v44 addTextViewWithElement:v39 width:v45 context:v43];
              if ([v17 isUserInteractionEnabled])
              {
                [*(*(a1 + 48) + 568) addObject:v17];
              }
            }

            else
            {
              v17 = [v44 addLabelViewWithElement:v39 width:v45 context:v43];
            }

            goto LABEL_99;
          }

          v17 = 0;
          v18 = 0;
          if (v14 != 141)
          {
            goto LABEL_119;
          }

LABEL_65:
          v34 = [*(a1 + 32) addButtonWithElement:v13 width:*(a1 + 40) context:v10];
          [v34 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:0x20000];
          [v34 addTarget:*(a1 + 48) action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
          [v34 addTarget:*(a1 + 48) action:sel__showConfirmationAction_ forControlEvents:0x40000];
          [v34 addTarget:0 action:sel_skuiadvertising_advertSelectionEventShouldBeForwarded_ forControlEvents:64];
          LODWORD(v35) = -1.0;
          [v34 setCharge:v35];
          [v34 setItemOfferDelegate:*(a1 + 48)];
          v17 = v34;
          v25 = 0;
          v16 = 0;
          v18 = v17;
          goto LABEL_101;
        }

        if (v14 <= 79)
        {
          if (v14 != 62)
          {
            v17 = 0;
            v18 = 0;
            if (v14 != 77)
            {
              goto LABEL_119;
            }

            v29 = [*(a1 + 32) addOfferViewWithViewElement:v13 width:*(a1 + 40) context:v10];
            [v29 setDelegate:*(a1 + 48)];
            if (v67 <= 1)
            {
              [v29 setMetadataPosition:0];
            }

            v25 = v29;
            if (v25)
            {
              v30 = *(*(a1 + 48) + 528);
              if (!v30)
              {
                v31 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
                v32 = *(a1 + 48);
                v33 = *(v32 + 528);
                *(v32 + 528) = v31;

                v30 = *(*(a1 + 48) + 528);
              }

              [v30 addObject:v25];
            }

            v16 = 0;
            v18 = 0;
            v17 = v25;
            goto LABEL_101;
          }

          v20 = [*(a1 + 32) addHorizontalListWithElement:v13 width:*(a1 + 40) context:v10];
LABEL_77:
          v38 = v20;
          v25 = v38;
          v16 = 0;
          goto LABEL_78;
        }

        if (v14 == 80)
        {
          v19 = [*(a1 + 32) addLabelViewWithOrdinalElement:v13 width:*(a1 + 40) context:v10];
          goto LABEL_75;
        }

        if (v14 != 90)
        {
          v17 = 0;
          v18 = 0;
          if (v14 != 135)
          {
            goto LABEL_119;
          }

          v19 = [*(a1 + 32) addStarRatingViewWithViewElement:v13 width:*(a1 + 40) context:v10];
          goto LABEL_75;
        }

        v17 = [*(a1 + 48) _previewProgressIndicator];
        [v17 setEnabled:0];
        [*(a1 + 32) addView:v17];
        v25 = 0;
        v16 = 0;
        v18 = 0;
        *(*(a1 + 48) + 552) = 2;
LABEL_101:
        if (v17)
        {
          [*(*(a1 + 48) + 584) setObject:v17 forKey:v13];
        }

        if (v18)
        {
          v51 = [v13 buyButtonDescriptor];
          if (v51)
          {
            v52 = *(*(a1 + 48) + 440);
            if (!v52)
            {
              v53 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:517 capacity:1];
              v54 = *(a1 + 48);
              v55 = *(v54 + 440);
              *(v54 + 440) = v53;

              v52 = *(*(a1 + 48) + 440);
            }

            [v52 setObject:v18 forKey:v51];
          }
        }

        if (v16)
        {
          v56 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v13];
          if (v56)
          {
            v57 = *(*(a1 + 48) + 480);
            if (!v57)
            {
              v58 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:1];
              v59 = *(a1 + 48);
              v60 = *(v59 + 480);
              *(v59 + 480) = v58;

              v57 = *(*(a1 + 48) + 480);
            }

            [v57 setObject:v16 forKey:v56];
          }
        }

        if (v25)
        {
          v61 = *(*(a1 + 48) + 424);
          if (!v61)
          {
            v62 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
            v63 = *(a1 + 48);
            v64 = *(v63 + 424);
            *(v63 + 424) = v62;

            v61 = *(*(a1 + 48) + 424);
          }

          [v61 addObject:v25];
        }

LABEL_119:
      }

      v9 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
    }

    while (v9);
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SKUIHorizontalLockupView *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  cacheKeyToImageView = self->_cacheKeyToImageView;
  v12 = [v9 cacheKey];
  v13 = [(NSMapTable *)cacheKeyToImageView objectForKey:v12];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 imageView];
      [(NSHashTable *)v14 setImage:v8];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v13 setImage:v8];
        goto LABEL_16;
      }

      v14 = [v9 cacheKey];
      [v13 setImage:v8 cacheKey:v14 context:v10];
    }

LABEL_15:

LABEL_16:
    v19 = 1;
    goto LABEL_17;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_artworkRelatedChildViewElementViews;
  v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
LABEL_6:
    v18 = 0;
    while (1)
    {
      if (*v22 != v17)
      {
        objc_enumerationMutation(v14);
      }

      if ([*(*(&v21 + 1) + 8 * v18) setImage:v8 forArtworkRequest:v9 context:{v10, v21}])
      {
        goto LABEL_15;
      }

      if (v16 == ++v18)
      {
        v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v19 = 0;
LABEL_17:

  return v19;
}

- (void)setContainerBackgroundImageForPlayButton:(id)a3
{
  playButton = self->_playButton;
  if (playButton)
  {
    LODWORD(v3) = 15.0;
    LODWORD(v4) = 15.0;
    [(SKUIPlayButtonControl *)playButton setBackgroundImageForBlurring:a3 withOffsetRight:v3 withOffsetBottom:v4];
  }
}

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v24 = [v9 clientContext];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = self->_buyButtonDescriptorToButton;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if ([v15 canPersonalizeUsingItemState:v8])
        {
          v22 = [(NSMapTable *)self->_buyButtonDescriptorToButton objectForKey:v15];
          v21 = v24;
          [v22 setValuesUsingBuyButtonDescriptor:v15 itemState:v8 clientContext:v24 animated:v5];

LABEL_20:
          [(SKUIHorizontalLockupView *)self setNeedsLayout];
          v20 = 1;
          goto LABEL_21;
        }
      }

      v12 = [(NSMapTable *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = self->_offerViews;
  v16 = [(NSMapTable *)v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v25 + 1) + 8 * j) updateWithItemState:v8 context:v9 animated:v5])
        {
          v21 = v24;
          goto LABEL_20;
        }
      }

      v17 = [(NSMapTable *)v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
  v21 = v24;
LABEL_21:

  return v20;
}

- (id)viewForElementIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_viewElementViews;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 itmlID];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = [(NSMapTable *)self->_viewElementViews objectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)layoutSubviews
{
  v60.receiver = self;
  v60.super_class = SKUIHorizontalLockupView;
  [(SKUIHorizontalLockupView *)&v60 layoutSubviews];
  if (([(SKUIGradientView *)self->_offerConfirmationGradientView isDescendantOfView:self]& 1) == 0)
  {
    [(SKUIHorizontalLockupView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(SKUILockupViewElement *)self->_lockupElement style];
    v12 = [v11 elementPosition];

    if (!v12)
    {
      v12 = 2 * ([(SKUILockupViewElement *)self->_lockupElement lockupViewType]== 6);
    }

    v31 = [(SKUIHorizontalLockupView *)self _previewFrontView];
    v32 = [(SKUIHorizontalLockupLayout *)self->_layout columns];
    v13 = [v32 count];
    v14 = malloc_type_malloc(16 * v13, 0x1000040451B5BE8uLL);
    v59[0] = 0;
    v59[1] = v59;
    left = self->_contentInset.left;
    v16 = v8 - left - self->_contentInset.right;
    v59[2] = 0x2020000000;
    *&v59[3] = v16;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v58 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = v16;
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x4010000000;
    v46[3] = &unk_215F8ACD7;
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v47 = *MEMORY[0x277CBF3A0];
    v48 = v17;
    v18 = [(SKUIHorizontalLockupLayout *)self->_layout columns];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __42__SKUIHorizontalLockupView_layoutSubviews__block_invoke;
    v45[3] = &unk_2781FCFB8;
    v45[9] = v4;
    v45[10] = v6;
    *&v45[11] = v8;
    v45[12] = v10;
    v45[4] = self;
    v45[5] = &v53;
    v45[6] = v59;
    v45[7] = &v49;
    v45[13] = v14;
    v45[14] = v13;
    v45[8] = v46;
    [v18 enumerateObjectsUsingBlock:v45];

    if (v54[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [v32 objectAtIndex:?];
      [(SKUIHorizontalLockupView *)self _sizeViewsForColumn:v19 toFitWidth:v50[3]];
      v21 = v20;

      v22 = &v14[16 * v54[3]];
      *v22 = v50[3];
      *(v22 + 1) = v21;
    }

    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    *&v44[3] = left;
    v23 = [(SKUIHorizontalLockupLayout *)self->_layout columns];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __42__SKUIHorizontalLockupView_layoutSubviews__block_invoke_2;
    v33[3] = &unk_2781FD008;
    v38 = v14;
    v39 = v12;
    v33[4] = self;
    v35 = v46;
    v36 = v44;
    v40 = v4;
    v41 = v6;
    v42 = v8;
    v43 = v10;
    v37 = v57;
    v24 = v31;
    v34 = v24;
    [v23 enumerateObjectsUsingBlock:v33];

    free(v14);
    if (self->_metadataBackgroundView)
    {
      [(SKUIHorizontalLockupView *)self bounds];
      [(UIView *)self->_metadataBackgroundView setFrame:v25 + self->_contentInset.left, v26 + self->_contentInset.top, v27 - (self->_contentInset.left + self->_contentInset.right), v28 - (self->_contentInset.top + self->_contentInset.bottom)];
      v29 = [(UIView *)self->_metadataBackgroundView subviews];
      v30 = [v29 firstObject];
      [(UIView *)self->_metadataBackgroundView bounds];
      [v30 setFrame:?];

      [(SKUIHorizontalLockupView *)self sendSubviewToBack:self->_metadataBackgroundView];
    }

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(v46, 8);
    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(v57, 8);
    _Block_object_dispose(v59, 8);
  }
}

void __42__SKUIHorizontalLockupView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v17 = a2;
  v5 = [v17 identifier];
  v6 = v5;
  if (v5 == 3)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    v7 = v17;
    goto LABEL_11;
  }

  v8 = (*(*(a1 + 48) + 8) + 24);
  if ((v5 - 5) < 2)
  {
    v8 = (a1 + 88);
  }

  [*(a1 + 32) _sizeViewsForColumn:v17 toFitWidth:*v8];
  v11 = v9;
  v12 = v10;
  if (v6 == 4)
  {
    [v17 size];
    if (v11 < v13)
    {
      v11 = v13;
    }

    v14 = *(a1 + 104) + 16 * a3;
    *v14 = v11;
    *(v14 + 8) = v12;
    v7 = v17;
  }

  else
  {
    v15 = (*(a1 + 104) + 16 * a3);
    *v15 = v9;
    *(v15 + 1) = v10;
    v7 = v17;
    if ((v6 - 7) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_11;
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) - v11;
LABEL_11:
  if (*(a1 + 112) - 1 > a3)
  {
    [*(*(a1 + 32) + 496) columnSpacingForColumnIdentifier:v6];
    v7 = v17;
    *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) - v16;
  }

  if (v6 == 6)
  {
    *(*(*(a1 + 64) + 8) + 32) = *(*(a1 + 32) + 456);
    *(*(*(a1 + 64) + 8) + 40) = *(*(a1 + 32) + 448);
    *(*(*(a1 + 64) + 8) + 48) = *(a1 + 88) - (*(*(a1 + 32) + 456) + *(*(a1 + 32) + 472));
    *(*(*(a1 + 64) + 8) + 56) = *(*(*(a1 + 64) + 8) + 48);
  }
}

void __42__SKUIHorizontalLockupView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = (*(a1 + 72) + 16 * a3);
  v7 = *v6;
  v8 = v6[1];
  v9 = [v5 identifier];
  v10 = v9;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0.0;
  v11 = *(a1 + 80);
  if (v11 != 3)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 448);
      v46 = v13;
      if (v9 == 3)
      {
        [*(v12 + 496) metadataColumnEdgeInsets];
        v14 = v44;
        v13 = v15 + v44[3];
        v44[3] = v13;
      }

      else
      {
        v14 = &v43;
      }

      v18 = *(*(*(a1 + 48) + 8) + 56) + v13;
    }

    else
    {
      v19 = *(*(a1 + 32) + 448);
      UIRoundToViewScale();
      v21 = v19 + v20;
      v14 = v44;
      v44[3] = v21;
      v18 = v21 + *(*(*(a1 + 48) + 8) + 56);
    }

    goto LABEL_10;
  }

  v16 = *(a1 + 32);
  v46 = *(a1 + 112) - *(v16 + 464) - v8;
  if (v9 == 3)
  {
    [*(v16 + 496) metadataColumnEdgeInsets];
    v14 = v44;
    v18 = v44[3] - v17;
LABEL_10:
    v14[3] = v18;
  }

  v22 = [v5 childViewElements];
  v23 = [v22 count];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __42__SKUIHorizontalLockupView_layoutSubviews__block_invoke_3;
  v32[3] = &unk_2781FCFE0;
  v32[4] = *(a1 + 32);
  v37 = v10;
  v38 = v7;
  v39 = v8;
  v24 = *(a1 + 56);
  v25 = v22;
  v26 = *(a1 + 104);
  v40 = *(a1 + 88);
  v41 = v26;
  v33 = v25;
  v36 = &v43;
  v42 = v23;
  *&v26 = *(a1 + 64);
  v30 = *(a1 + 40);
  *(&v26 + 1) = *(a1 + 48);
  v31 = v26;
  v27 = v30;
  *&v28 = v30;
  *(&v28 + 1) = v24;
  v35 = v31;
  v34 = v28;
  [v25 enumerateObjectsUsingBlock:v32];
  [*(*(a1 + 32) + 496) columnSpacingForColumnIdentifier:v10];
  *(*(*(a1 + 56) + 8) + 24) = v7 + v29 + *(*(*(a1 + 56) + 8) + 24);

  _Block_object_dispose(&v43, 8);
}

void __42__SKUIHorizontalLockupView_layoutSubviews__block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v75 = a2;
  v5 = [*(*(a1 + 32) + 584) objectForKey:?];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 88);
  if (v14 > 3)
  {
    if (v14 != 4)
    {
      if (v14 == 5)
      {
        if (*(*(*(a1 + 64) + 8) + 24) != 1)
        {
          goto LABEL_62;
        }

        v7 = *(*(a1 + 32) + 456);
      }

      else if (v14 == 6)
      {
        v22 = *(*(a1 + 72) + 8);
        SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v22[4], v22[5], v22[6], v22[7], *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136));
        [v5 setFrame:?];
        goto LABEL_62;
      }

      goto LABEL_26;
    }

LABEL_21:
    UIRoundToViewScale();
    v7 = v30;
    goto LABEL_26;
  }

  if ((v14 - 1) < 2)
  {
    v23 = [v75 style];
    v24 = [v23 elementPosition];

    if (v24 == 7 || v24 == 1)
    {
      v25 = [v75 style];
      [v25 elementPadding];
      v27 = v26;
    }

    else
    {
      v27 = *(MEMORY[0x277D768C8] + 24);
    }

    v7 = *(*(*(a1 + 56) + 8) + 24) + *(a1 + 96) - v11 - v27;
    goto LABEL_26;
  }

  if (!v14)
  {
    v28 = [*(*(a1 + 32) + 496) columns];
    v29 = [v28 count];

    v7 = *(*(*(a1 + 56) + 8) + 24);
    if (v29 > 1)
    {
      goto LABEL_26;
    }

    [*(a1 + 32) bounds];
    CGRectGetWidth(v80);
    goto LABEL_21;
  }

  if (v14 == 3)
  {
    v15 = *(*(*(a1 + 56) + 8) + 24);
    [*(*(a1 + 32) + 496) metadataColumnEdgeInsets];
    v7 = v15 + v16;
    if (a3)
    {
      v17 = [*(a1 + 40) objectAtIndexedSubscript:a3 - 1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [*(*(a1 + 32) + 584) objectForKey:v17];
        [v18 frame];
        v7 = v7 + CGRectGetWidth(v77) + 5.0;
        [v18 frame];
        v19 = CGRectGetWidth(v78) + 5.0;
        v79.origin.x = v7;
        v79.origin.y = v9;
        v79.size.width = v11;
        v79.size.height = v13;
        v20 = v19 + CGRectGetWidth(v79);
        v21 = *(a1 + 96);
        if (v20 > v21)
        {
          v11 = v11 - (v20 - v21);
        }
      }

      goto LABEL_27;
    }

LABEL_28:
    v31 = 1;
    goto LABEL_29;
  }

LABEL_26:
  if (!a3)
  {
    goto LABEL_28;
  }

LABEL_27:
  [*(*(a1 + 32) + 496) topPaddingForViewElement:v75];
  v31 = 0;
  *(*(*(a1 + 80) + 8) + 24) = v32 + *(*(*(a1 + 80) + 8) + 24);
LABEL_29:
  if (*(a1 + 88) == 3 && *(a1 + 144) - 1 == a3)
  {
    v33 = [v75 style];
    v34 = [v33 elementPosition];

    if ([*(*(a1 + 32) + 504) lockupViewType] != 6 || v34)
    {
      if (v34 == 3)
      {
LABEL_37:
        v37 = *(a1 + 32);
        v38 = *(a1 + 136) - *(v37 + 464);
        [*(v37 + 496) metadataColumnEdgeInsets];
        v40 = v38 - v39;
        v81.origin.x = v7;
        v81.origin.y = v9;
        v81.size.width = v11;
        v81.size.height = v13;
        *(*(*(a1 + 80) + 8) + 24) = v40 - CGRectGetHeight(v81);
      }
    }

    else
    {
      v35 = [v75 elementName];
      v36 = [v35 isEqualToString:@"description"];

      if (a3 > 2 || (v36 & 1) != 0)
      {
        goto LABEL_37;
      }
    }
  }

  v41 = [v75 style];
  v42 = [v41 elementPosition];

  v43 = *(a1 + 88);
  if (v43 == 1 && v42)
  {
    if (*(a1 + 144) == 1)
    {
      UIRoundToViewScale();
      v45 = v44;
      goto LABEL_52;
    }
  }

  else if (v43 != 1)
  {
    goto LABEL_51;
  }

  if (v42 <= 9)
  {
    if (((1 << v42) & 0xC4) == 0)
    {
      if (((1 << v42) & 0x308) == 0 || a3 + 1 != *(a1 + 144))
      {
        goto LABEL_51;
      }

      v46 = [v75 style];
      [v46 elementPadding];
      v48 = v47;

      v49 = CGRectGetMaxY(*(a1 + 112)) - *(*(a1 + 32) + 464);
      v82.origin.x = v7;
      v82.origin.y = v9;
      v82.size.width = v11;
      v82.size.height = v13;
      v50 = v49 - CGRectGetHeight(v82) - v48;
      goto LABEL_50;
    }

    if (v31)
    {
      v51 = [v75 style];
      [v51 elementPadding];
      v53 = v52;

      v50 = v53 + CGRectGetMinY(*(a1 + 112)) + *(*(a1 + 32) + 448);
LABEL_50:
      *(*(*(a1 + 80) + 8) + 24) = v50;
    }
  }

LABEL_51:
  v45 = *(*(*(a1 + 80) + 8) + 24);
LABEL_52:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v42 == 7)
  {
    v83.origin.x = v7;
    v83.origin.y = v45;
    v83.size.width = v11;
    v83.size.height = v13;
    v54 = CGRectGetHeight(v83) * 0.5;
    v45 = -floorf(v54);
    v55 = [v75 style];
    [v55 elementPadding];
    v57 = v56;

    v58 = *(a1 + 128);
    v84.origin.x = v7;
    v84.origin.y = v45;
    v84.size.width = v11;
    v84.size.height = v13;
    v59 = v57 + CGRectGetWidth(v84);
    v7 = v58 - floorf(v59);
  }

  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v7, v45, v11, v13, *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136));
  [v5 setFrame:?];
  if (*(a1 + 88) != 3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v85.origin.x = v7;
    v85.origin.y = v45;
    v85.size.width = v11;
    v85.size.height = v13;
    MaxY = CGRectGetMaxY(v85);
    [*(*(a1 + 32) + 496) bottomPaddingForViewElement:v75];
    *(*(*(a1 + 80) + 8) + 24) = MaxY + v61;
  }

  if (objc_opt_respondsToSelector())
  {
    v86.origin.x = v7;
    v86.origin.y = v45;
    v86.size.width = v11;
    v86.size.height = v13;
    v62 = -CGRectGetMinY(v86);
    v87.origin.x = v7;
    v87.origin.y = v45;
    v87.size.width = v11;
    v87.size.height = v13;
    Width = CGRectGetWidth(v87);
    v64 = 0.0;
    if (Width < 44.0)
    {
      v88.origin.x = v7;
      v88.origin.y = v45;
      v88.size.width = v11;
      v88.size.height = v13;
      v64 = (CGRectGetWidth(v88) + -44.0) * 0.5;
    }

    [v5 setHitRectInsets:{v62, v64, v62, v64}];
  }

LABEL_62:
  if (v5 == *(a1 + 48))
  {
    v65 = *(a1 + 32);
    v66 = *(v65 + 544);
    if (v66)
    {
      [*(v65 + 544) frame];
      v68 = v67;
      v70 = v69;
      UIRoundToViewScale();
      v72 = v71;
      UIRoundToViewScale();
      v73 = *(*(a1 + 32) + 544);
      SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v72, v74, v68, v70, *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136));
      [v73 setFrame:?];
    }

    [v5 setHidden:v66 != 0];
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SKUIHorizontalLockupView;
  [(SKUIHorizontalLockupView *)&v14 setSemanticContentAttribute:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(SKUIHorizontalLockupView *)self subviews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setSemanticContentAttribute:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if ([(SKUILockupViewElement *)self->_lockupElement lockupViewType]== 5 || self->_useClearBackground)
  {
    v5 = [MEMORY[0x277D75348] clearColor];
    v10.receiver = self;
    v10.super_class = SKUIHorizontalLockupView;
    [(SKUIViewReuseView *)&v10 setBackgroundColor:v5];
LABEL_4:

    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = SKUIHorizontalLockupView;
  [(SKUIViewReuseView *)&v9 setBackgroundColor:v4];
  playButton = self->_playButton;
  if (playButton && [(SKUIPlayButtonControl *)playButton backgroundType]== 2)
  {
    v5 = [(SKUIPlayButtonControl *)SKUIPlayButton blurColorForColor:v4];
    if (v5)
    {
      [(SKUIPlayButtonControl *)self->_playButton setControlColor:v5];
    }

    goto LABEL_4;
  }

LABEL_5:
  if (self->_badge)
  {
    v6 = [(NSMapTable *)self->_viewElementViews objectForKey:?];
    if (v6)
    {
      v7 = [MEMORY[0x277D75348] clearColor];
      [v6 setBackgroundColor:v7];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_215F8ACD7;
  width = a3.width;
  v14 = 0;
  v3 = [(SKUIHorizontalLockupLayout *)self->_layout columns];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SKUIHorizontalLockupView_sizeThatFits___block_invoke;
  v8[3] = &unk_2781FD030;
  v8[4] = &v9;
  [v3 enumerateObjectsUsingBlock:v8];

  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

uint64_t __41__SKUIHorizontalLockupView_sizeThatFits___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  result = [a2 size];
  if (v3 >= v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  *(*(*(a1 + 32) + 8) + 40) = v6;
  return result;
}

- (void)itemOfferButtonDidAnimateTransition:(id)a3
{
  if (([a3 isShowingConfirmation] & 1) == 0)
  {
    [(SKUIGradientView *)self->_offerConfirmationGradientView removeFromSuperview];
    offerConfirmationGradientView = self->_offerConfirmationGradientView;
    self->_offerConfirmationGradientView = 0;
  }
}

- (void)itemOfferButtonWillAnimateTransition:(id)a3
{
  v4 = a3;
  [(SKUIHorizontalLockupView *)self _animateButton:?];
  if ([(SKUIHorizontalLockupView *)self updateLayoutOnButtonConfirmation])
  {
    [(SKUIHorizontalLockupView *)self _resizeMetadataRelativeToItemOfferView:v4];
  }

  else
  {
    -[SKUIHorizontalLockupView _layoutConfirmationGradientRelativeToItemOfferView:alpha:](self, "_layoutConfirmationGradientRelativeToItemOfferView:alpha:", v4, [v4 isShowingConfirmation]);
  }
}

- (void)offerViewDidAnimateTransition:(id)a3
{
  if (([a3 isShowingConfirmation] & 1) == 0)
  {
    [(SKUIGradientView *)self->_offerConfirmationGradientView removeFromSuperview];
    offerConfirmationGradientView = self->_offerConfirmationGradientView;
    self->_offerConfirmationGradientView = 0;
  }
}

- (BOOL)offerViewAnimateTransition:(id)a3
{
  if (self->_offerConfirmationGradientView)
  {
    v4 = a3;
    [v4 frame];
    x = v15.origin.x;
    y = v15.origin.y;
    MaxX = CGRectGetMaxX(v15);
    [v4 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v9 = v8;
    v11 = v10;
    ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
    v13 = MaxX - v9;
    if (ShouldReverseLayoutDirection)
    {
      v13 = x;
    }

    [v4 setFrame:{v13, y, v9, v11}];
    [(SKUIHorizontalLockupView *)self _layoutConfirmationGradientRelativeToItemOfferView:v4 alpha:1.0];
  }

  return 0;
}

- (void)offerViewWillAnimateTransition:(id)a3
{
  v4 = a3;
  if (!-[SKUIHorizontalLockupView updateLayoutOnButtonConfirmation](self, "updateLayoutOnButtonConfirmation") && ![v4 metadataPosition])
  {
    [(SKUIHorizontalLockupView *)self _addConfirmationGradientForView:v4];
  }
}

- (void)mediaPlayer:(id)a3 itemStateChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  playButton = self->_playButton;
  if (playButton)
  {
    v9 = [(SKUIPlayButton *)playButton playItemIdentifier];
    v10 = [SKUIMediaPlayerInterface identifierMatches:v9 item:v7];

    if (v10)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__SKUIHorizontalLockupView_mediaPlayer_itemStateChanged___block_invoke;
      block[3] = &unk_2781F80C8;
      block[4] = self;
      v17 = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v11 = v17;
LABEL_7:

      goto LABEL_8;
    }

    if ([(SKUIPlayButtonControl *)self->_playButton isIndeterminate]|| [(SKUIPlayButtonControl *)self->_playButton showingProgress])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __57__SKUIHorizontalLockupView_mediaPlayer_itemStateChanged___block_invoke_2;
      v13[3] = &unk_2781F80C8;
      v14 = v7;
      v15 = self;
      dispatch_async(MEMORY[0x277D85CD0], v13);
      v11 = v14;
      goto LABEL_7;
    }

    if ([(SKUIPlayButton *)self->_playButton showOnDemand])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __57__SKUIHorizontalLockupView_mediaPlayer_itemStateChanged___block_invoke_3;
      v12[3] = &unk_2781F80F0;
      v12[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v12);
    }
  }

LABEL_8:
}

uint64_t __57__SKUIHorizontalLockupView_mediaPlayer_itemStateChanged___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 536) showOnDemand])
  {
    [*(*(a1 + 32) + 536) setHidden:0];
  }

  v2 = [*(a1 + 40) playState];
  v3 = *(*(a1 + 32) + 536);
  if ((v2 - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {

    return [v3 hideProgressAnimated:1];
  }

  else
  {
    [v3 reloadWithItemStatus:*(a1 + 40) animated:0];
    v4 = *(*(a1 + 32) + 536);

    return [v4 showPlayIndicator:v2 == 3];
  }
}

uint64_t __57__SKUIHorizontalLockupView_mediaPlayer_itemStateChanged___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) playState];
  if (result != 5)
  {
    [*(*(a1 + 40) + 536) hideProgressAnimated:0];
    result = [*(*(a1 + 40) + 536) showOnDemand];
    if (result)
    {
      v3 = *(*(a1 + 40) + 536);

      return [v3 setHidden:1];
    }
  }

  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  [v7 locationInView:self];
  tappableViews = self->_tappableViews;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SKUIHorizontalLockupView_gestureRecognizer_shouldReceiveTouch___block_invoke;
  v13[3] = &unk_2781FD058;
  v13[4] = &v14;
  v13[5] = v9;
  v13[6] = v10;
  [(NSMutableArray *)tappableViews enumerateObjectsUsingBlock:v13];
  if ([(SKUILockupViewElement *)self->_lockupElement isSelectable])
  {
    v11 = 1;
    *(v15 + 24) = 1;
  }

  else
  {
    v11 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);

  return v11 & 1;
}

BOOL __65__SKUIHorizontalLockupView_gestureRecognizer_shouldReceiveTouch___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 frame];
  result = CGRectContainsPoint(v7, *(a1 + 40));
  *a4 = result;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_buttonAction:(id)a3
{
  v20[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKUIHorizontalLockupView *)self _viewElementForView:v4];
  v6 = v5;
  if (self->_playButton == v4)
  {
    [SKUIHorizontalLockupView _handlePlayButtonTap:"_handlePlayButtonTap:element:" element:?];
  }

  else if (v5)
  {
    v7 = SKUICollectionViewCellForView(self);
    v8 = SKUICollectionViewForView(v7);
    v9 = [v8 delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v18 = [v8 indexPathForCell:v7];
      [v9 collectionView:v8 didConfirmButtonElement:v6 withClickInfo:0 forItemAtIndexPath:v18];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v4;
        v11 = MEMORY[0x277CBEB38];
        v19[0] = @"toggled";
        v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKUIPlayButton isToggled](v10, "isToggled")}];
        v20[0] = v12;
        v20[1] = v6;
        v19[1] = @"target";
        v19[2] = @"count";
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKUIPlayButton count](v10, "count")}];
        v20[2] = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
        v15 = [v11 dictionaryWithDictionary:v14];

        v16 = [(SKUIPlayButton *)v10 toggleItemIdentifier];

        if (v16)
        {
          v17 = [(SKUIPlayButton *)v10 toggleItemIdentifier];
          [v15 setObject:v17 forKey:@"toggleId"];
        }
      }

      else
      {
        v15 = 0;
      }

      [v6 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:v15 completionBlock:0];
    }
  }
}

- (void)_cancelConfirmationAction:(id)a3
{
  v4 = a3;
  [(SKUIHorizontalLockupView *)self bringSubviewToFront:v4];
  [v4 setShowingConfirmation:0 animated:1];
}

- (void)_showConfirmationAction:(id)a3
{
  v4 = a3;
  [(SKUIHorizontalLockupView *)self _addConfirmationGradientForView:v4];
  [v4 setShowingConfirmation:1 animated:1];
}

- (void)_tapGestureAction:(id)a3
{
  v4 = a3;
  [v4 locationInView:self];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__40;
  tappableViews = self->_tappableViews;
  v15 = __Block_byref_object_dispose__40;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__SKUIHorizontalLockupView__tapGestureAction___block_invoke;
  v10[3] = &unk_2781FD058;
  v10[5] = v6;
  v10[6] = v7;
  v10[4] = &v11;
  [(NSMutableArray *)tappableViews enumerateObjectsUsingBlock:v10];
  if (v12[5])
  {
    v8 = [(SKUIHorizontalLockupView *)self _viewElementForView:?];
    v9 = [v8 elementType];
    if (v9 > 49)
    {
      if (v9 != 50)
      {
        if (v9 == 138)
        {
          [(SKUIHorizontalLockupView *)self _expandEditorialForLabel:v8];
        }

        goto LABEL_14;
      }
    }

    else if (v9 != 12)
    {
      if (v9 == 49)
      {
        [(SKUIHorizontalLockupView *)self _performDefaultActionForImage:v8];
      }

      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUIHorizontalLockupView *)self _handlePlayButtonTap:v12[5] element:v8];
    }

    else
    {
      [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([(SKUILockupViewElement *)self->_lockupElement isSelectable])
  {
    [(SKUILockupViewElement *)self->_lockupElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

LABEL_15:
  _Block_object_dispose(&v11, 8);
}

void __46__SKUIHorizontalLockupView__tapGestureAction___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  [v19 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (objc_opt_respondsToSelector())
  {
    [v19 bigHitInsets];
    v8 = v8 + v15;
    v10 = v10 + v16;
    v12 = v12 - (v15 + v17);
    v14 = v14 - (v16 + v18);
  }

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  if (CGRectContainsPoint(v21, *(a1 + 40)))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_audioPlayerStatusChangeNotification:(id)a3
{
  v13 = a3;
  v4 = [(SKUIHorizontalLockupView *)self _previewMediaURL];
  v5 = [v13 object];
  v6 = [v5 URL];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = [v5 playerStatus];
    v9 = [v8 playerState];

    if ((v9 - 6) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = [v13 name];
      v12 = [v13 object];
      [v10 removeObserver:self name:v11 object:v12];

      [(SKUIHorizontalLockupView *)self hidePreviewProgressAnimated:1];
    }

    else
    {
      v10 = [v5 playerStatus];
      [(SKUIHorizontalLockupView *)self showPreviewProgressWithStatus:v10 animated:1];
    }
  }
}

- (void)_animateButton:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x4010000000;
  v23 = &unk_215F8ACD7;
  v24 = 0u;
  v25 = 0u;
  [v4 frame];
  *&v24 = v5;
  *(&v24 + 1) = v6;
  *&v25 = v7;
  *(&v25 + 1) = v8;
  MaxX = CGRectGetMaxX(v21[1]);
  [v4 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v10 = v21;
  v21[1].size.width = v11;
  v10[1].size.height = v12;
  v13 = [(SKUIHorizontalLockupView *)self _viewElementForView:v4];
  v14 = [(SKUIHorizontalLockupLayout *)self->_layout columns];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__SKUIHorizontalLockupView__animateButton___block_invoke;
  v16[3] = &unk_2781FD080;
  v15 = v13;
  v17 = v15;
  v18 = &v20;
  v19 = MaxX;
  [v14 enumerateObjectsUsingBlock:v16];

  [v4 setFrame:{v21[1].origin.x, v21[1].origin.y, v21[1].size.width, v21[1].size.height}];
  _Block_object_dispose(&v20, 8);
}

void __43__SKUIHorizontalLockupView__animateButton___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 childViewElements];
  v7 = [v6 containsObject:*(a1 + 32)];

  v8 = v9;
  if (v7)
  {
    if ([v9 identifier] == 1)
    {
      *(*(*(a1 + 40) + 8) + 32) = *(a1 + 48) - *(*(*(a1 + 40) + 8) + 48);
    }

    *a4 = 1;
    v8 = v9;
  }
}

+ (id)_attributedStringForButton:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIHorizontalLockupView _attributedStringForButton:context:];
  }

  v7 = [SKUIHorizontalLockupLayout fontForButtonViewElement:v5 context:v6];
  v8 = [v5 buttonTitleStyle];
  v9 = v8;
  if (!v8)
  {
    v9 = [v5 style];
  }

  v10 = [v6 tintColor];
  v11 = SKUIViewElementPlainColorWithStyle(v9, v10);

  if (!v8)
  {
  }

  if (!v11)
  {
    v12 = [v6 containerViewElementType] == 118;
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:dbl_215F3F9B0[v12]];
  }

  v13 = [v5 buttonText];
  v14 = [v5 style];
  v15 = [v13 attributedStringWithDefaultFont:v7 foregroundColor:v11 style:v14];

  return v15;
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIHorizontalLockupView *)v7 _attributedStringForLabel:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [SKUIHorizontalLockupLayout fontForLabelViewElement:v5 context:v6];
  v16 = [v5 style];
  v17 = [v6 tintColor];
  v18 = SKUIViewElementPlainColorWithStyle(v16, v17);

  if (!v18)
  {
    v19 = [v6 aggregateValueForKey:@"SKUIPreviewOverlayBackgroundStyleKey"];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 integerValue] == 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = [v5 labelViewStyle];
    if (v22 > 5)
    {
      v18 = 0;
      goto LABEL_21;
    }

    if (((1 << v22) & 0x1B) == 0)
    {
      if (v21)
      {
        [MEMORY[0x277D75348] blackColor];
      }

      else
      {
        [MEMORY[0x277D75348] whiteColor];
      }
      v25 = ;
      goto LABEL_20;
    }

    if ([v6 containerViewElementType] == 118)
    {
      v23 = 0.8;
      if (v21)
      {
LABEL_13:
        v24 = 0.0;
LABEL_19:
        v25 = [MEMORY[0x277D75348] colorWithWhite:v24 alpha:v23];
LABEL_20:
        v18 = v25;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v23 = 0.6;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    v24 = 1.0;
    goto LABEL_19;
  }

LABEL_22:
  v26 = [v5 text];
  v27 = [v5 style];
  v28 = [v26 attributedStringWithDefaultFont:v15 foregroundColor:v18 style:v27];

  return v28;
}

+ (id)_attributedStringForOrdinal:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIHorizontalLockupView _attributedStringForOrdinal:context:];
  }

  v7 = [SKUIHorizontalLockupLayout fontForOrdinalViewElement:v5 context:v6];
  v8 = [v5 style];
  v9 = [v6 tintColor];

  v10 = SKUIViewElementPlainColorWithStyle(v8, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  }

  v11 = [v5 text];
  v12 = [v11 attributedStringWithDefaultFont:v7 foregroundColor:v10];

  return v12;
}

- (void)_handlePlayButtonTap:(id)a3 element:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = +[SKUIMediaPlayerInterface sharedInstance];
  v7 = [v11 playItemIdentifier];
  v8 = [v6 isItemWithIdentifierActive:v7];

  if (v8)
  {
    v9 = [v11 playItemIdentifier];
    [v6 togglePlayStateForItemWithIdentifier:v9];
  }

  else if (v5)
  {
    v10 = [v11 playItemIdentifier];
    [v6 notifyWillChangeToItemWithItemIdentifer:v10];

    if (([v11 isIndeterminate] & 1) == 0)
    {
      [v11 beginIndeterminateAnimation];
    }

    [v5 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

+ (void)_requestLayoutForViewElements:(id)a3 width:(double)a4 context:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIHorizontalLockupView *)v10 _requestLayoutForViewElements:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [v9 labelLayoutCache];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = v8;
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    v32 = a1;
    do
    {
      v23 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v33 + 1) + 8 * v23);
        v25 = [v24 elementType];
        if (v25 <= 76)
        {
          if (v25 <= 48)
          {
            if (v25 == 8)
            {
              [v18 requestLayoutForBadge:v24 width:a4];
              goto LABEL_43;
            }

            if (v25 == 12)
            {
LABEL_32:
              v27 = [a1 _attributedStringForButton:v24 context:v9];
              [v18 requestLayoutForButton:v24 attributedString:v27 width:a4];
LABEL_38:

              goto LABEL_43;
            }

            if (v25 != 48)
            {
              goto LABEL_43;
            }

            v26 = SKUISectionHeaderView;
            goto LABEL_42;
          }

          switch(v25)
          {
            case '1':
              [SKUIAdornedImageView requestLayoutForViewElement:v24 width:v9 context:a4];
              break;
            case '3':
              break;
            case '>':
              v26 = SKUIHorizontalListView;
              goto LABEL_42;
            default:
              goto LABEL_43;
          }

          v26 = SKUIImageDeckView;
LABEL_42:
          [(__objc2_class *)v26 requestLayoutForViewElement:v24 width:v9 context:a4];
          goto LABEL_43;
        }

        if (v25 <= 137)
        {
          switch(v25)
          {
            case 77:
              v26 = SKUIOfferView;
              break;
            case 80:
              v27 = [a1 _attributedStringForOrdinal:v24 context:v9];
              [v18 requestLayoutForOrdinal:v24 attributedString:v27 width:a4];
              goto LABEL_38;
            case 135:
              v26 = SKUIStarRatingViewElementView;
              break;
            default:
              goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (v25 > 143)
        {
          if (v25 == 144)
          {
            v26 = SKUITomatoRatingView;
          }

          else
          {
            if (v25 != 154)
            {
              goto LABEL_43;
            }

            v26 = SKUIImageGridView;
          }

          goto LABEL_42;
        }

        if (v25 == 138)
        {
          v28 = v24;
          v29 = [v9 maxWidthForElement:v28 withDefaultWidth:a4];
          if ([a1 _usesEditorialLayoutForLabelViewElement:v28])
          {
            v30 = [v9 editorialLayoutForLabelElement:v28 width:v29];
            [v30 enqueueLayoutRequests];
          }

          else
          {
            v30 = [a1 _attributedStringForLabel:v28 context:v9];
            [v18 requestLayoutForLabel:v28 attributedString:v30 width:v29];
          }

          a1 = v32;
        }

        else if (v25 == 141)
        {
          goto LABEL_32;
        }

LABEL_43:
        ++v23;
      }

      while (v21 != v23);
      v31 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
      v21 = v31;
    }

    while (v31);
  }
}

+ (BOOL)_usesEditorialLayoutForLabelViewElement:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        [(SKUIHorizontalLockupView *)v4 _usesEditorialLayoutForLabelViewElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  if ([v3 numberOfLines] == 1)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v3 moreButtonTitle];
    v12 = [v13 length] != 0;
  }

  return v12;
}

- (void)_addConfirmationGradientForView:(id)a3
{
  v29[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 superview];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__40;
  v27 = __Block_byref_object_dispose__40;
  v28 = 0;
  v6 = [(SKUIHorizontalLockupView *)self _columnForView:v4];
  v7 = [v6 childViewElements];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__SKUIHorizontalLockupView__addConfirmationGradientForView___block_invoke;
  v20[3] = &unk_2781FC428;
  v20[4] = self;
  v22 = &v23;
  v8 = v5;
  v21 = v8;
  [v7 enumerateObjectsUsingBlock:v20];

  v9 = [(SKUIHorizontalLockupView *)self gradientColor];
  if (!v9)
  {
    v9 = [(UIView *)self skui_apparentBackgroundColor];
    if (!v9)
    {
      v9 = [MEMORY[0x277D75348] whiteColor];
    }
  }

  offerConfirmationGradientView = self->_offerConfirmationGradientView;
  if (!offerConfirmationGradientView)
  {
    v11 = [SKUIGradientView alloc];
    v12 = [(SKUIGradientView *)v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v13 = self->_offerConfirmationGradientView;
    self->_offerConfirmationGradientView = v12;

    v14 = [(SKUIGradientView *)self->_offerConfirmationGradientView layer];
    v15 = [v9 colorWithAlphaComponent:0.0];
    v16 = v15;
    v29[0] = [v15 CGColor];
    v17 = v9;
    v29[1] = [v9 CGColor];
    v18 = v9;
    v29[2] = [v9 CGColor];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v14 setColors:v19];

    [v14 setEndPoint:{1.0, 0.5}];
    [v14 setStartPoint:{0.0, 0.5}];

    offerConfirmationGradientView = self->_offerConfirmationGradientView;
  }

  [v8 insertSubview:offerConfirmationGradientView belowSubview:v24[5]];
  [(SKUIHorizontalLockupView *)self _layoutConfirmationGradientRelativeToItemOfferView:v4 alpha:0.0];

  _Block_object_dispose(&v23, 8);
}

void __60__SKUIHorizontalLockupView__addConfirmationGradientForView___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 584) objectForKey:a2];
  v4 = *(*(a1 + 48) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  v7 = v3;
  if (!v6)
  {
    objc_storeStrong(v5, v3);
    v3 = v7;
  }

  [*(a1 + 40) bringSubviewToFront:v3];
}

- (id)_addFlipContainerViewWithFrontView:(id)a3 backView:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v12 = [[SKUIInlineFlipContainerView alloc] initWithFrontView:v7 backView:v6];

  v13 = [MEMORY[0x277D75348] clearColor];
  [(SKUIInlineFlipContainerView *)v12 setBackgroundColor:v13];

  [v7 frame];
  v15 = v14;
  v17 = v16;

  [(SKUIInlineFlipContainerView *)v12 frame];
  [(SKUIInlineFlipContainerView *)v12 setFrame:v9 - v15, v11 - v17];
  [(SKUIHorizontalLockupView *)self addSubview:v12];

  return v12;
}

- (id)_columnForView:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__40;
  v17 = __Block_byref_object_dispose__40;
  v18 = 0;
  v5 = [(SKUIHorizontalLockupView *)self _viewElementForView:v4];
  v6 = [(SKUIHorizontalLockupLayout *)self->_layout columns];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__SKUIHorizontalLockupView__columnForView___block_invoke;
  v10[3] = &unk_2781FD0A8;
  v7 = v5;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __43__SKUIHorizontalLockupView__columnForView___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 childViewElements];
  v8 = [v7 containsObject:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (double)_dividerHeight:(id)a3
{
  v3 = [a3 style];
  v4 = [v3 itemHeight];

  if (v4)
  {
    [v4 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 10.0;
  }

  return v6;
}

- (void)_expandEditorialForLabel:(id)a3
{
  v8 = a3;
  v4 = SKUICollectionViewCellForView(self);
  v5 = SKUICollectionViewForView(v4);
  v6 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 indexPathForCell:v4];
    [v6 collectionView:v5 expandEditorialForLabelElement:v8 indexPath:v7];
  }
}

- (void)_layoutConfirmationGradientRelativeToItemOfferView:(id)a3 alpha:(double)a4
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (self->_offerConfirmationGradientView)
  {
    [a3 frame];
    v7 = v6;
    v9 = v8;
    [(SKUIGradientView *)self->_offerConfirmationGradientView frame];
    v11 = v10;
    v12 = [(SKUIGradientView *)self->_offerConfirmationGradientView superview];
    [v12 bounds];
    v14 = v13;

    v15 = v9 + 30.0;
    [(SKUIGradientView *)self->_offerConfirmationGradientView setAlpha:a4];
    [(SKUIGradientView *)self->_offerConfirmationGradientView setFrame:v7 + -30.0, v11, v15, v14];
    v16 = [(SKUIGradientView *)self->_offerConfirmationGradientView layer];
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:{30.0 / v15, &unk_2828D2C18}];
    v19[1] = v17;
    v19[2] = &unk_2828D2C30;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    [v16 setLocations:v18];
  }
}

- (void)_performDefaultActionForImage:(id)a3
{
  v4 = a3;
  v5 = self->_lockupElement;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SKUIHorizontalLockupView__performDefaultActionForImage___block_invoke;
  v8[3] = &unk_2781FD0D0;
  v9 = v5;
  v10 = self;
  v11 = v4;
  v6 = v4;
  v7 = v5;
  [v6 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v8];
}

void __58__SKUIHorizontalLockupView__performDefaultActionForImage___block_invoke(uint64_t a1, int a2, char a3)
{
  if (!a2 || (a3 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SKUIHorizontalLockupView__performDefaultActionForImage___block_invoke_2;
    block[3] = &unk_2781F8680;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = v4;
    v9 = v5;
    v10 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void *__58__SKUIHorizontalLockupView__performDefaultActionForImage___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(*(a1 + 40) + 504);
  if (v2 == result)
  {
    v4 = [result firstChildForElementType:90];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v4 = [v4 isEnabled];
      v5 = v6;
      if (v4)
      {
        v4 = [*(a1 + 48) isDescendentFromViewElement:v6];
        v5 = v6;
        if (v4)
        {
          v4 = [*(a1 + 40) togglePreviewPlaybackAnimated:1];
          v5 = v6;
        }
      }
    }

    return MEMORY[0x2821F96F8](v4, v5);
  }

  return result;
}

- (id)_previewFrontView
{
  v3 = [(SKUIViewElement *)self->_lockupElement firstChildForElementType:90];
  v4 = [v3 flattenedChildren];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [(NSMapTable *)self->_viewElementViews objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_previewMediaURL
{
  v2 = [(SKUIViewElement *)self->_lockupElement firstChildForElementType:90];
  v3 = [v2 mediaURLString];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_previewProgressIndicator
{
  if (!self->_previewProgressIndicator)
  {
    v3 = [[SKUIPreviewProgressIndicator alloc] initWithFrame:0.0, 0.0, 29.0, 29.0];
    previewProgressIndicator = self->_previewProgressIndicator;
    self->_previewProgressIndicator = v3;

    [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator addTarget:self action:sel__previewIndicatorAction_ forControlEvents:64];
    v5 = self->_previewProgressIndicator;
    v6 = [MEMORY[0x277D75348] clearColor];
    [(SKUIPreviewProgressIndicator *)v5 setBackgroundColor:v6];
  }

  v7 = [(SKUIViewElement *)self->_lockupElement firstChildForElementType:90];
  v8 = self->_previewProgressIndicator;
  v9 = [v7 style];
  v10 = SKUIViewElementPlainColorWithStyle(v9, 0);
  [(SKUIPreviewProgressIndicator *)v8 setTintColor:v10];

  v11 = self->_previewProgressIndicator;
  v12 = v11;

  return v11;
}

- (void)_resolvePreviewStateAfterTransitionForFlipView:(id)a3
{
  v4 = a3;
  previewState = self->_previewState;
  if (previewState == 3)
  {
    v25 = v4;
    [v4 removeFromSuperview];
    v23 = [(SKUIHorizontalLockupView *)self _previewFrontView];
    [(SKUIHorizontalLockupView *)self addSubview:v23];
    [(SKUIHorizontalLockupView *)self setNeedsLayout];
    self->_previewState = 0;

    v4 = v25;
  }

  else if (previewState == 1)
  {
    v24 = v4;
    [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator superview];
    [(SKUIHorizontalLockupView *)self convertRect:v14 fromView:v7, v9, v11, v13];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator setFrame:v16, v18, v20, v22];
    [(SKUIHorizontalLockupView *)self addSubview:self->_previewProgressIndicator];
    [v24 removeFromSuperview];
    [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator reloadWithPlayerStatus:self->_lastPlayerStatus animated:0];
    [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator setEnabled:1];
    v4 = v24;
    self->_previewState = 2;
  }
}

- (void)_resizeMetadataRelativeToItemOfferView:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKUIHorizontalLockupView *)self _columnForView:v4];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [(SKUIHorizontalLockupLayout *)self->_layout columns];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v7)
  {
LABEL_22:

    goto LABEL_23;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v36;
  while (2)
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v36 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v35 + 1) + 8 * v11);
      if ([v13 isEqual:v5])
      {
        v9 = v12;
        goto LABEL_11;
      }

      v9 = [v13 childViewElements];

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_11:

  if (v9)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v9;
    v14 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v6);
          }

          v18 = [(NSMapTable *)self->_viewElementViews objectForKey:*(*(&v31 + 1) + 8 * i), v31];
          [v18 frame];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          [v4 frame];
          v44.origin.x = v27;
          v44.origin.y = v28;
          v44.size.width = v29;
          v44.size.height = v30;
          v42.origin.x = v20;
          v42.origin.y = v22;
          v42.size.width = v24;
          v42.size.height = v26;
          v43 = CGRectIntersection(v42, v44);
          if (!CGRectIsNull(v43))
          {
            [v18 frame];
            [v18 setFrame:?];
          }
        }

        v15 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v15);
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (CGSize)_sizeViewsForColumn:(id)a3 toFitWidth:(double)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v22 = &unk_215F8ACD7;
  v23 = *MEMORY[0x277CBF3A8];
  v7 = [v6 childViewElements];
  v8 = [v7 count];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__SKUIHorizontalLockupView__sizeViewsForColumn_toFitWidth___block_invoke;
  v14[3] = &unk_2781FD0F8;
  v14[4] = self;
  v17 = a4;
  v9 = v6;
  v15 = v9;
  v16 = &v19;
  v18 = v8;
  [v7 enumerateObjectsUsingBlock:v14];
  v10 = v20[4];
  v11 = v20[5];

  _Block_object_dispose(&v19, 8);
  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

void __59__SKUIHorizontalLockupView__sizeViewsForColumn_toFitWidth___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v20 = a2;
  v5 = [*(*(a1 + 32) + 584) objectForKey:?];
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  [v5 sizeThatFits:{*(a1 + 56), 1.79769313e308}];
  v10 = v9;
  if (v8 >= *(a1 + 56))
  {
    v11 = *(a1 + 56);
  }

  else
  {
    v11 = v8;
  }

  v12 = v6;
  v13 = v7;
  v22 = CGRectIntegral(*(&v10 - 3));
  width = v22.size.width;
  height = v22.size.height;
  [v5 setFrame:{v22.origin.x, v22.origin.y}];
  if ([*(a1 + 40) identifier] != 3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 48) + 8) + 40) = height + *(*(*(a1 + 48) + 8) + 40);
    if (*(a1 + 64) - 1 > a3)
    {
      [*(*(a1 + 32) + 496) bottomPaddingForViewElement:v20];
      *(*(*(a1 + 48) + 8) + 40) = v16 + *(*(*(a1 + 48) + 8) + 40);
    }

    if (a3)
    {
      [*(*(a1 + 32) + 496) topPaddingForViewElement:v20];
      *(*(*(a1 + 48) + 8) + 40) = v17 + *(*(*(a1 + 48) + 8) + 40);
    }
  }

  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 32);
  if (v19 < width)
  {
    v19 = width;
  }

  *(v18 + 32) = v19;
}

- (BOOL)_usesBackgroundWithAlpha
{
  v7 = 0;
  v8 = 0;
  v5 = 0.0;
  v6 = 0;
  v2 = [(SKUIHorizontalLockupView *)self backgroundColor];
  v3 = [v2 getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];

  return v3 && v5 < 1.0 && v5 != 0.0;
}

- (id)_viewElementForView:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_viewElementViews;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_viewElementViews objectForKey:v10, v14];

        if (v11 == v4)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (void)_attributedStringForButton:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIHorizontalLockupView _attributedStringForButton:context:]";
}

+ (void)_attributedStringForOrdinal:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIHorizontalLockupView _attributedStringForOrdinal:context:]";
}

@end