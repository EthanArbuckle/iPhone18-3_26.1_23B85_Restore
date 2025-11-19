@interface SKUITracklistLockupCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForOrdinal:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (SKUITracklistLockupCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)_addFlipContainerViewWithFrontView:(id)a3 backView:(id)a4;
- (id)_previewColumnView;
- (id)_previewMediaURL;
- (id)viewForElementIdentifier:(id)a3;
- (void)_audioPlayerStatusChangeNotification:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)_enumerateViewElementViewsUsingBlock:(id)a3;
- (void)_layoutConfirmationGradientRelativeToView:(id)a3 alpha:(double)a4;
- (void)_resolvePreviewStateAfterTransitionForFlipView:(id)a3;
- (void)_showConfirmationAction:(id)a3;
- (void)dealloc;
- (void)hidePreviewProgressAnimated:(BOOL)a3;
- (void)itemOfferButtonDidAnimateTransition:(id)a3;
- (void)itemOfferButtonWillAnimateTransition:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)showPreviewProgressWithStatus:(id)a3 animated:(BOOL)a4;
- (void)togglePreviewPlaybackAnimated:(BOOL)a3;
@end

@implementation SKUITracklistLockupCollectionViewCell

- (SKUITracklistLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUITracklistLockupCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v25.receiver = self;
  v25.super_class = SKUITracklistLockupCollectionViewCell;
  v16 = [(SKUIViewReuseCollectionViewCell *)&v25 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    columnViewsByIndex = v16->_columnViewsByIndex;
    v16->_columnViewsByIndex = v17;

    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v16->_separatorView;
    v16->_separatorView = v19;

    v21 = v16->_separatorView;
    v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v21 setBackgroundColor:v22];

    v23 = [(SKUITracklistLockupCollectionViewCell *)v16 contentView];
    [v23 addSubview:v16->_separatorView];
  }

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7FF18] object:0];

  v4.receiver = self;
  v4.super_class = SKUITracklistLockupCollectionViewCell;
  [(SKUIViewReuseCollectionViewCell *)&v4 dealloc];
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
      v9 = [(SKUITracklistLockupCollectionViewCell *)self _previewColumnView];
      if (a3)
      {
        v10 = [(SKUITracklistLockupCollectionViewCell *)self _addFlipContainerViewWithFrontView:v6 backView:v9];
        [v9 setHidden:0];
        objc_initWeak(&location, self);
        v11 = [MEMORY[0x277D75128] sharedApplication];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __69__SKUITracklistLockupCollectionViewCell_hidePreviewProgressAnimated___block_invoke;
        v14[3] = &unk_2781F8230;
        v12 = v10;
        v15 = v12;
        objc_copyWeak(&v16, &location);
        [v11 _performBlockAfterCATransactionCommits:v14];

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }

      else
      {
        self->_previewState = 0;
        [(SKUIPreviewProgressIndicator *)v6 removeFromSuperview];
        v13 = [(SKUITracklistLockupCollectionViewCell *)self contentView];
        [v13 addSubview:v9];

        [(SKUITracklistLockupCollectionViewCell *)self setNeedsLayout];
      }
    }
  }
}

void __69__SKUITracklistLockupCollectionViewCell_hidePreviewProgressAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__SKUITracklistLockupCollectionViewCell_hidePreviewProgressAnimated___block_invoke_2;
  v3[3] = &unk_2781FB310;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 flipToBackViewWithDuration:0x100000 options:v3 completionBlock:0.5];

  objc_destroyWeak(&v5);
}

void __69__SKUITracklistLockupCollectionViewCell_hidePreviewProgressAnimated___block_invoke_2(uint64_t a1)
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
      [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator reloadWithPlayerStatus:v7 animated:v4];
    }
  }

  else
  {
    v9 = [(SKUITracklistLockupCollectionViewCell *)self _previewColumnView];
    if (v9)
    {
      v10 = [[SKUIPreviewProgressIndicator alloc] initWithFrame:0.0, 0.0, 29.0, 29.0];
      previewProgressIndicator = self->_previewProgressIndicator;
      self->_previewProgressIndicator = v10;

      v12 = self->_previewProgressIndicator;
      v13 = [MEMORY[0x277D75348] clearColor];
      [(SKUIPreviewProgressIndicator *)v12 setBackgroundColor:v13];

      [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator setEnabled:0];
      v14 = [(SKUITracklistLockupCollectionViewCell *)self _previewControlViewElement];
      v15 = [v14 style];
      v16 = SKUIViewElementPlainColorWithStyle(v15, 0);

      [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator setTintColor:v16];
      if (v4)
      {
        v17 = [(SKUITracklistLockupCollectionViewCell *)self _addFlipContainerViewWithFrontView:v9 backView:self->_previewProgressIndicator];
        self->_previewState = 1;
        [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator reloadWithPlayerStatus:v7 animated:1];
        objc_initWeak(&location, self);
        v18 = [MEMORY[0x277D75128] sharedApplication];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __80__SKUITracklistLockupCollectionViewCell_showPreviewProgressWithStatus_animated___block_invoke_2;
        v22[3] = &unk_2781F8230;
        v19 = v17;
        v23 = v19;
        objc_copyWeak(&v24, &location);
        [v18 _performBlockAfterCATransactionCommits:v22];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      else
      {
        self->_previewState = 2;
        v20 = [(SKUITracklistLockupCollectionViewCell *)self contentView];
        [v20 addSubview:self->_previewProgressIndicator];

        [(SKUITracklistLockupCollectionViewCell *)self setNeedsLayout];
        v21 = [MEMORY[0x277D75128] sharedApplication];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __80__SKUITracklistLockupCollectionViewCell_showPreviewProgressWithStatus_animated___block_invoke;
        v26[3] = &unk_2781FC228;
        v26[4] = self;
        v27 = v4;
        [v21 _performBlockAfterCATransactionCommits:v26];
      }
    }
  }
}

void __80__SKUITracklistLockupCollectionViewCell_showPreviewProgressWithStatus_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__SKUITracklistLockupCollectionViewCell_showPreviewProgressWithStatus_animated___block_invoke_3;
  v3[3] = &unk_2781FB310;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 flipToBackViewWithDuration:0x200000 options:v3 completionBlock:0.5];

  objc_destroyWeak(&v5);
}

void __80__SKUITracklistLockupCollectionViewCell_showPreviewProgressWithStatus_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resolvePreviewStateAfterTransitionForFlipView:*(a1 + 32)];
}

- (void)togglePreviewPlaybackAnimated:(BOOL)a3
{
  v4 = [(SKUITracklistLockupCollectionViewCell *)self _previewMediaURL];
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
      [(SKUITracklistLockupCollectionViewCell *)self hidePreviewProgressAnimated:1];
    }

    else
    {
      v8 = [v6 stopAllAudioPlayerSessions];
      v9 = [v6 startSessionWithURL:v12];
      [v5 addObserver:self selector:sel__audioPlayerStatusChangeNotification_ name:*MEMORY[0x277D7FF18] object:v9];
      v10 = [(SKUITracklistLockupCollectionViewCell *)self _previewControlViewElement];
      [v9 setStoreItemIdentifier:{objc_msgSend(v10, "itemIdentifier")}];
      v11 = [v9 playerStatus];
      [(SKUITracklistLockupCollectionViewCell *)self showPreviewProgressWithStatus:v11 animated:1];

      [v9 play];
    }

    v4 = v12;
  }
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUITracklistLockupCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__SKUITracklistLockupCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke;
  v20[3] = &unk_2781F95A0;
  v17 = v8;
  v22 = &v24;
  v23 = a4;
  v21 = v17;
  [v7 enumerateChildrenUsingBlock:v20];
  v18 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return v18;
}

void __88__SKUITracklistLockupCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 8)
  {
    *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | [*(a1 + 32) loadImageForBadgeElement:v3 reason:*(a1 + 48)]) & 1;
  }
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITracklistLockupCollectionViewCell *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
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
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUITracklistLockupCollectionViewCell *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [v9 aggregateValueForKey:0x282806108];
  v19 = [v9 labelLayoutCache];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __83__SKUITracklistLockupCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v23[3] = &unk_2781FE130;
  v27 = a4;
  v24 = v19;
  v25 = v8;
  v26 = v9;
  v28 = a1;
  v20 = v9;
  v21 = v8;
  v22 = v19;
  [v18 enumerateColumnsForTrack:v21 usingBlock:v23];
}

void __83__SKUITracklistLockupCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [a2 width];
  v7 = v6;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = [v13 elementType];
        if (v14 <= 79)
        {
          if (v14 != 8)
          {
            if (v14 != 12)
            {
              goto LABEL_17;
            }

LABEL_13:
            v15 = SKUITracklistAttributedStringForButton(v14, v13, *(a1 + 48));
            [*(a1 + 32) requestLayoutForButton:v13 attributedString:v15 width:v7];
LABEL_16:

            goto LABEL_17;
          }

          [*(a1 + 32) requestLayoutForBadge:v13 width:*(a1 + 56)];
        }

        else
        {
          switch(v14)
          {
            case 80:
              v15 = [*(a1 + 64) _attributedStringForOrdinal:v13 context:*(a1 + 48)];
              [*(a1 + 32) requestLayoutForOrdinal:v13 attributedString:v15 width:v7];
              goto LABEL_16;
            case 138:
              v15 = SKUITracklistAttributedStringForLabel(*(a1 + 40), v13, *(a1 + 48));
              [*(a1 + 32) requestLayoutForLabel:v13 attributedString:v15 width:v7];
              goto LABEL_16;
            case 141:
              goto LABEL_13;
          }
        }

LABEL_17:
        ++v12;
      }

      while (v10 != v12);
      v16 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v10 = v16;
    }

    while (v16);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUITracklistLockupCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3010000000;
  v31 = &unk_215F8ACD7;
  v33 = *(MEMORY[0x277CBF3A8] + 8);
  v32 = a3;
  v17 = [v8 aggregateValueForKey:0x282806108];
  v18 = [v8 labelLayoutCache];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __79__SKUITracklistLockupCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v25[3] = &unk_2781FE158;
  v19 = v18;
  v26 = v19;
  v27 = &v28;
  [v17 enumerateColumnsForTrack:v7 usingBlock:v25];
  v21 = v29[4];
  v20 = v29[5];
  if (v20 <= 32.0)
  {
    v22 = 44.0;
  }

  else
  {
    v22 = v20 + 20.0;
  }

  v29[5] = v22;

  _Block_object_dispose(&v28, 8);
  v23 = v21;
  v24 = v22;
  result.height = v24;
  result.width = v23;
  return result;
}

void __79__SKUITracklistLockupCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  if ([v8 columnIdentifier] == 4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([v15 elementType] == 138)
          {
            v16 = *(a1 + 32);
            [v8 width];
            [v16 estimatedSizeForLabel:v15 width:?];
            *(*(*(a1 + 40) + 8) + 40) = v17 + *(*(*(a1 + 40) + 8) + 40);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    *a5 = 1;
  }
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(NSMapTable *)self->_buyButtonDescriptorToButton removeAllObjects];
  v10 = [v9 aggregateValueForKey:0x282806108];
  columnData = self->_columnData;
  self->_columnData = v10;

  objc_storeStrong(&self->_track, a3);
  [(NSMutableDictionary *)self->_columnViewsByIndex removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  [(SKUIGradientView *)self->_offerConfirmationGradientView removeFromSuperview];
  offerConfirmationGradientView = self->_offerConfirmationGradientView;
  self->_offerConfirmationGradientView = 0;

  v13 = [v8 style];
  v14 = [v13 ikBorderColor];
  v15 = [v14 color];

  v16 = [v13 dividerType];
  v17 = [v16 isEqualToString:@"none"];

  if (!v17)
  {
    separatorView = self->_separatorView;
    if (v15)
    {
      [(UIView *)self->_separatorView setBackgroundColor:v15];
    }

    else
    {
      v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)separatorView setBackgroundColor:v19];
    }
  }

  [(UIView *)self->_separatorView setHidden:v17];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __77__SKUITracklistLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v28[3] = &unk_2781F8450;
  v28[4] = self;
  v20 = v8;
  v29 = v20;
  v21 = v9;
  v30 = v21;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v28];
  v22 = [MEMORY[0x277CCAB98] defaultCenter];
  v23 = *MEMORY[0x277D7FF18];
  [v22 removeObserver:self name:*MEMORY[0x277D7FF18] object:0];
  v24 = [(SKUITracklistLockupCollectionViewCell *)self _previewMediaURL];
  if (v24 && ([MEMORY[0x277D7FDA8] sessionManager], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "audioPlayerForURL:", v24), v26 = objc_claimAutoreleasedReturnValue(), v25, v26))
  {
    [v22 addObserver:self selector:sel__audioPlayerStatusChangeNotification_ name:v23 object:v26];
    v27 = [v26 playerStatus];
    [(SKUITracklistLockupCollectionViewCell *)self showPreviewProgressWithStatus:v27 animated:0];
  }

  else
  {
    [(SKUITracklistLockupCollectionViewCell *)self hidePreviewProgressAnimated:0];
  }
}

void __77__SKUITracklistLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 832);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SKUITracklistLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2;
  v9[3] = &unk_2781FE180;
  v10 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v5 enumerateColumnsForTrack:v4 usingBlock:v9];
}

void __77__SKUITracklistLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = v6;
  [v6 width];
  v10 = v9;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    v15 = v10;
    v38 = v11;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        if ([v17 elementType] == 90)
        {
          v18 = [v17 flattenedChildren];
          v19 = [v18 firstObject];

          v17 = v19;
        }

        v20 = [v17 elementType];
        if (v20 > 49)
        {
          if (v20 > 137)
          {
            if (v20 == 138)
            {
              v21 = [*(a1 + 32) addLabelViewWithElement:v17 width:*(a1 + 40) context:v15];
              goto LABEL_33;
            }

            if (v20 != 141)
            {
              goto LABEL_43;
            }

LABEL_22:
            v22 = [*(a1 + 32) addButtonWithElement:v17 width:*(a1 + 40) context:v15];
            [v22 addTarget:*(a1 + 48) action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
            [v22 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:0x20000];
            [v22 addTarget:*(a1 + 48) action:sel__showConfirmationAction_ forControlEvents:0x40000];
            LODWORD(v23) = -0.5;
            [v22 setCharge:v23];
            [v22 setItemOfferDelegate:*(a1 + 48)];
            if (v22)
            {
              v24 = [v17 buyButtonDescriptor];
              if (v24)
              {
                v25 = *(*(a1 + 48) + 824);
                if (!v25)
                {
                  v26 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:517 capacity:1];
                  v27 = *(a1 + 48);
                  v28 = *(v27 + 824);
                  *(v27 + 824) = v26;

                  v25 = *(*(a1 + 48) + 824);
                }

                [v25 setObject:v22 forKey:v24];
                v11 = v38;
              }
            }

            goto LABEL_34;
          }

          if (v20 != 50)
          {
            if (v20 != 80)
            {
              goto LABEL_43;
            }

            v21 = [*(a1 + 32) addLabelViewWithOrdinalElement:v17 width:*(a1 + 40) context:v15];
LABEL_33:
            v22 = v21;
LABEL_34:
            [v8 addObject:v22];
LABEL_42:

            goto LABEL_43;
          }

LABEL_28:
          v29 = [*(a1 + 32) addButtonWithElement:v17 width:*(a1 + 40) context:v15];
          [v29 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
          [v8 addObject:v29];
          if ([v17 elementType] == 50)
          {
            v22 = v29;
          }

          else
          {
            v22 = 0;
          }

          if (v22)
          {
LABEL_37:
            v30 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v17];
            if (v30)
            {
              v31 = *(*(a1 + 48) + 848);
              if (!v31)
              {
                v32 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
                v33 = *(a1 + 48);
                v34 = *(v33 + 848);
                *(v33 + 848) = v32;

                v31 = *(*(a1 + 48) + 848);
              }

              [v31 setObject:v30 forKey:v22];
              v11 = v38;
            }

            goto LABEL_42;
          }

          goto LABEL_43;
        }

        if (v20 > 11)
        {
          if (v20 != 12)
          {
            if (v20 == 13)
            {
              goto LABEL_22;
            }

            goto LABEL_43;
          }

          goto LABEL_28;
        }

        if (v20 != 8)
        {
          if (v20 != 9)
          {
            goto LABEL_43;
          }

          v21 = [*(a1 + 32) addBarRatingWithElement:v17 width:*(a1 + 40) context:v15];
          goto LABEL_33;
        }

        v22 = [*(a1 + 32) addBadgeViewWithElement:v17 width:*(a1 + 40) context:v15];
        [v8 addObject:v22];
        if (v22)
        {
          goto LABEL_37;
        }

LABEL_43:
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v13);
  }

  v35 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a4];
  [*(*(a1 + 48) + 840) setObject:v8 forKey:v35];
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a4 requestIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = v8;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15, v22];
        v17 = [v9 requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v15 imageView];
            v8 = v22;
            [v20 setImage:v22];
          }

          else
          {
            v8 = v22;
            [v15 setImage:v22];
          }

          v19 = 1;
          goto LABEL_16;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v19 = 0;
    v8 = v22;
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = self->_buyButtonDescriptorToButton;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (SKUIIKViewElementTypeIsButton([v15 elementType]) && (objc_msgSend(v15, "canPersonalizeUsingItemState:", v8) & 1) != 0)
        {
          v17 = [(NSMapTable *)self->_buyButtonDescriptorToButton objectForKey:v15];
          v18 = [v9 clientContext];
          [v17 setValuesUsingBuyButtonDescriptor:v15 itemState:v8 clientContext:v18 animated:v5];

          [(SKUITracklistLockupCollectionViewCell *)self setNeedsLayout];
          v16 = 1;
          goto LABEL_12;
        }
      }

      v12 = [(NSMapTable *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (id)viewForElementIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__58;
  v15 = __Block_byref_object_dispose__58;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SKUITracklistLockupCollectionViewCell_viewForElementIdentifier___block_invoke;
  v8[3] = &unk_2781FE1A8;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SKUITracklistLockupCollectionViewCell *)self _enumerateViewElementViewsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __66__SKUITracklistLockupCollectionViewCell_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v8 = [a2 itmlID];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SKUITracklistLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v22 layoutSubviews];
  v3 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[SKUITracklistLockupCollectionViewCell semanticContentAttribute](self, "semanticContentAttribute")}];
  v4 = [(SKUITracklistLockupCollectionViewCell *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  [(SKUITracklistColumnData *)self->_columnData leftEdgeInset];
  v21[3] = v13;
  v14 = [(SKUITracklistColumnData *)self->_columnData columns];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__SKUITracklistLockupCollectionViewCell_layoutSubviews__block_invoke;
  v19[3] = &unk_2781FE220;
  v19[6] = v6;
  v19[7] = v8;
  *&v19[8] = v10;
  *&v19[9] = v12;
  v19[4] = self;
  v19[5] = v21;
  v20 = v3 == 0;
  [v14 enumerateObjectsUsingBlock:v19];
  v15 = [MEMORY[0x277D759A0] mainScreen];
  [v15 scale];
  v17 = v16;

  [(SKUITracklistColumnData *)self->_columnData leftEdgeInset];
  [(UIView *)self->_separatorView setFrame:v18, v12 - 1.0 / v17, v10 - v18];

  _Block_object_dispose(v21, 8);
}

void __55__SKUITracklistLockupCollectionViewCell_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  v7 = [*(*(a1 + 32) + 840) objectForKey:v6];
  [v5 width];
  v9 = v8;
  if ([v7 count])
  {
    v10 = malloc_type_malloc(32 * [v7 count], 0x1000040E0EAB150uLL);
    if (v10)
    {
      v11 = v10;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __55__SKUITracklistLockupCollectionViewCell_layoutSubviews__block_invoke_2;
      v42[3] = &unk_2781FE1D0;
      *&v42[6] = v9;
      v42[7] = 0x7FEFFFFFFFFFFFFFLL;
      v42[4] = &v43;
      v42[5] = v10;
      [v7 enumerateObjectsUsingBlock:v42];
      v12 = (*(a1 + 72) - v44[3]) * 0.5;
      v41[0] = 0;
      v41[1] = v41;
      *&v12 = v12;
      v41[2] = 0x2020000000;
      *&v41[3] = floorf(*&v12);
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __55__SKUITracklistLockupCollectionViewCell_layoutSubviews__block_invoke_3;
      v32 = &unk_2781FE1F8;
      v36 = v11;
      v34 = v41;
      v13 = v5;
      v14 = *(a1 + 40);
      v33 = v13;
      v35 = v14;
      v37 = v9;
      v40 = *(a1 + 80);
      v15 = *(a1 + 64);
      v38 = *(a1 + 48);
      v39 = v15;
      [v7 enumerateObjectsUsingBlock:&v29];
      if ([v13 showsPreviewControl])
      {
        v16 = [v7 firstObject];
        v17 = v16;
        if (*(*(a1 + 32) + 872))
        {
          [v16 frame];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          [*(*(a1 + 32) + 872) frame];
          [*(*(a1 + 32) + 872) setFrame:{v19 + (v23 - v26) * 0.5, v21 + (v25 - v27) * 0.5}];
          [v17 setHidden:1];
        }

        else
        {
          [v16 setHidden:0];
        }
      }

      free(v11);

      _Block_object_dispose(v41, 8);
      _Block_object_dispose(&v43, 8);
    }
  }

  [*(*(a1 + 32) + 832) interColumnSpacing];
  *(*(*(a1 + 40) + 8) + 24) = v9 + v28 + *(*(*(a1 + 40) + 8) + 24);
}

double __55__SKUITracklistLockupCollectionViewCell_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (*(a1 + 40) + 32 * a3);
  v6 = a2;
  [v6 frame];
  *v5 = v7;
  v5[1] = v8;
  v5[2] = v9;
  v5[3] = v10;
  v11 = *(a1 + 40) + 32 * a3;
  [v6 sizeThatFits:{*(a1 + 48), *(a1 + 56)}];
  v13 = v12;
  v15 = v14;

  *(v11 + 16) = v13;
  *(v11 + 24) = v15;
  v16 = *(a1 + 48);
  v17 = *(a1 + 40) + 32 * a3;
  v18 = *(v17 + 24);
  v19 = *(v17 + 16);
  v20 = ceilf(v19);
  if (v16 >= v20)
  {
    v16 = v20;
  }

  *(v17 + 16) = v16;
  v21 = *(*(a1 + 32) + 8);
  result = v18 + *(v21 + 24);
  *(v21 + 24) = result;
  return result;
}

void __55__SKUITracklistLockupCollectionViewCell_layoutSubviews__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  *(*(a1 + 56) + 32 * a3 + 8) = *(*(*(a1 + 40) + 8) + 24);
  v5 = [*(a1 + 32) contentAlignment];
  if (v5 > 2)
  {
    if ((v5 - 3) >= 2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v6 = *(a1 + 56);
    v8 = *(*(*(a1 + 48) + 8) + 24);
    *(v6 + 32 * a3) = v8;
    goto LABEL_11;
  }

  switch(v5)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v6 = *(a1 + 56);
      v7 = (v6 + 32 * a3);
      v9 = (*(a1 + 64) - v7[2]) * 0.5;
      v8 = *(*(*(a1 + 48) + 8) + 24) + floorf(v9);
      goto LABEL_9;
    case 2:
      v6 = *(a1 + 56);
      v7 = (v6 + 32 * a3);
      v8 = *(*(*(a1 + 48) + 8) + 24) + *(a1 + 64) - v7[2];
LABEL_9:
      *v7 = v8;
      goto LABEL_11;
  }

LABEL_10:
  v6 = *(a1 + 56);
  v8 = *(v6 + 32 * a3);
LABEL_11:
  v10 = (v6 + 32 * a3);
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[3];
  if ((*(a1 + 104) & 1) == 0)
  {
    Width = CGRectGetWidth(*(a1 + 72));
    v18.origin.x = v8;
    v18.origin.y = v11;
    v18.size.width = v12;
    v18.size.height = v13;
    v15 = Width - CGRectGetWidth(v18);
    v19.origin.x = v8;
    v19.origin.y = v11;
    v19.size.width = v12;
    v19.size.height = v13;
    v8 = v15 - CGRectGetMinX(v19);
  }

  [v16 setFrame:{v8, v11, v12, v13}];
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxY(*(*(a1 + 56) + 32 * a3));
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
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3010000000;
  v24 = 0;
  v25 = 0;
  v23 = &unk_215F8ACD7;
  [v4 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v24 = v13;
  v25 = v14;
  v15 = [v4 isShowingConfirmation];
  if ((v15 & 1) == 0)
  {
    v16 = [(SKUITracklistColumnData *)self->_columnData columns];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__SKUITracklistLockupCollectionViewCell_itemOfferButtonWillAnimateTransition___block_invoke;
    v17[3] = &unk_2781FE248;
    v17[4] = self;
    v18 = v4;
    v19 = &v20;
    [v16 enumerateObjectsUsingBlock:v17];
  }

  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  [v4 setFrame:{CGRectGetMaxX(v26) - v21[4], v8, v21[4], v21[5]}];
  [(SKUITracklistLockupCollectionViewCell *)self _layoutConfirmationGradientRelativeToView:v4 alpha:v15];
  _Block_object_dispose(&v20, 8);
}

void __78__SKUITracklistLockupCollectionViewCell_itemOfferButtonWillAnimateTransition___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = *(a1[4] + 840);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [v7 objectForKey:v8];

  if ([v9 containsObject:a1[5]])
  {
    v10 = *(*(a1[6] + 8) + 32);
    [v12 width];
    if (v10 < v11)
    {
      v11 = v10;
    }

    *(*(a1[6] + 8) + 32) = v11;
    *a4 = 1;
  }
}

- (void)_buttonAction:(id)a3
{
  v4 = a3;
  columnViewsByIndex = self->_columnViewsByIndex;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SKUITracklistLockupCollectionViewCell__buttonAction___block_invoke;
  v7[3] = &unk_2781FE270;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(NSMutableDictionary *)columnViewsByIndex enumerateKeysAndObjectsUsingBlock:v7];
}

void __55__SKUITracklistLockupCollectionViewCell__buttonAction___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [a3 indexOfObjectIdenticalTo:*(a1 + 32)];
  v8 = v14;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [*(*(a1 + 40) + 832) viewElementsForTrack:*(*(a1 + 40) + 896) columnIndex:{objc_msgSend(v14, "integerValue")}];
    v10 = [v9 objectAtIndex:v7];
    v11 = SKUICollectionViewForView(*(a1 + 40));
    v12 = [v11 delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v11 indexPathForCell:*(a1 + 40)];
      [v12 collectionView:v11 didConfirmButtonElement:v10 withClickInfo:0 forItemAtIndexPath:v13];
    }

    else
    {
      [v10 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }

    *a4 = 1;

    v8 = v14;
  }
}

- (void)_showConfirmationAction:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 superview];
  [v5 bringSubviewToFront:v4];
  offerConfirmationGradientView = self->_offerConfirmationGradientView;
  if (!offerConfirmationGradientView)
  {
    v7 = [SKUIGradientView alloc];
    v8 = [(SKUIGradientView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v9 = self->_offerConfirmationGradientView;
    self->_offerConfirmationGradientView = v8;

    v10 = [(SKUITracklistLockupCollectionViewCell *)self backgroundColor];
    v11 = [(SKUIGradientView *)self->_offerConfirmationGradientView layer];
    v12 = [v10 colorWithAlphaComponent:0.0];
    v14[0] = [v12 CGColor];
    v14[1] = [v10 CGColor];
    v14[2] = [v10 CGColor];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    [v11 setColors:v13];

    [v11 setEndPoint:{1.0, 0.5}];
    [v11 setStartPoint:{0.0, 0.5}];

    offerConfirmationGradientView = self->_offerConfirmationGradientView;
  }

  [v5 insertSubview:offerConfirmationGradientView belowSubview:v4];
  [(SKUITracklistLockupCollectionViewCell *)self _layoutConfirmationGradientRelativeToView:v4 alpha:0.0];
  [v4 setShowingConfirmation:1 animated:1];
}

- (void)_audioPlayerStatusChangeNotification:(id)a3
{
  v13 = a3;
  v4 = [(SKUITracklistLockupCollectionViewCell *)self _previewMediaURL];
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

      [(SKUITracklistLockupCollectionViewCell *)self hidePreviewProgressAnimated:1];
    }

    else
    {
      v10 = [v5 playerStatus];
      [(SKUITracklistLockupCollectionViewCell *)self showPreviewProgressWithStatus:v10 animated:1];
    }
  }
}

+ (id)_attributedStringForOrdinal:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = SKUIFontLimitedPreferredFontForTextStyle(20, 5);
  }

  v9 = [v6 tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  }

  v11 = [v5 text];
  v12 = [v11 attributedStringWithDefaultFont:v8 foregroundColor:v10];

  return v12;
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
  v18 = [(SKUITracklistLockupCollectionViewCell *)self contentView];
  [v18 addSubview:v12];

  return v12;
}

- (void)_enumerateViewElementViewsUsingBlock:(id)a3
{
  v4 = a3;
  columnData = self->_columnData;
  track = self->_track;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SKUITracklistLockupCollectionViewCell__enumerateViewElementViewsUsingBlock___block_invoke;
  v8[3] = &unk_2781FE2C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(SKUITracklistColumnData *)columnData enumerateColumnsForTrack:track usingBlock:v8];
}

void __78__SKUITracklistLockupCollectionViewCell__enumerateViewElementViewsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [[v8 alloc] initWithUnsignedInteger:a4];
  v11 = [*(*(a1 + 32) + 840) objectForKey:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__SKUITracklistLockupCollectionViewCell__enumerateViewElementViewsUsingBlock___block_invoke_2;
  v14[3] = &unk_2781FE298;
  v12 = *(a1 + 40);
  v15 = v11;
  v16 = v12;
  v17 = a5;
  v13 = v11;
  [v9 enumerateObjectsUsingBlock:v14];
}

void __78__SKUITracklistLockupCollectionViewCell__enumerateViewElementViewsUsingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = 0;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v10 = [v8 objectAtIndex:a3];
  (*(v7 + 16))(v7, v9, v10, &v12);

  v11 = v12;
  **(a1 + 48) = v12;
  *a4 = v11;
}

- (void)_layoutConfirmationGradientRelativeToView:(id)a3 alpha:(double)a4
{
  v22[3] = *MEMORY[0x277D85DE8];
  if (self->_offerConfirmationGradientView)
  {
    [a3 frame];
    v7 = v6;
    v9 = v8;
    [(SKUIGradientView *)self->_offerConfirmationGradientView frame];
    v11 = v10;
    v12 = v7 + -30.0;
    v13 = v9 + 30.0;
    separatorView = self->_separatorView;
    if (separatorView)
    {
      [(UIView *)separatorView frame];
      v16 = v15;
    }

    else
    {
      v17 = [(SKUIGradientView *)self->_offerConfirmationGradientView superview];
      [v17 bounds];
      v16 = v18;
    }

    [(SKUIGradientView *)self->_offerConfirmationGradientView setAlpha:a4];
    [(SKUIGradientView *)self->_offerConfirmationGradientView setFrame:v12, v11, v13, v16];
    v19 = [(SKUIGradientView *)self->_offerConfirmationGradientView layer];
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:{30.0 / v13, &unk_2828D2D38}];
    v22[1] = v20;
    v22[2] = &unk_2828D2D50;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    [v19 setLocations:v21];
  }
}

- (id)_previewColumnView
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__58;
  v11 = __Block_byref_object_dispose__58;
  v12 = 0;
  v3 = [(SKUITracklistColumnData *)self->_columnData columns];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SKUITracklistLockupCollectionViewCell__previewColumnView__block_invoke;
  v6[3] = &unk_2781FE2E8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __59__SKUITracklistLockupCollectionViewCell__previewColumnView__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 showsPreviewControl])
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
    v7 = [*(*(a1 + 32) + 840) objectForKey:v11];
    v8 = [v7 firstObject];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (id)_previewMediaURL
{
  v2 = [(SKUITracklistLockupCollectionViewCell *)self _previewControlViewElement];
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

- (void)_resolvePreviewStateAfterTransitionForFlipView:(id)a3
{
  v25 = a3;
  v4 = [(SKUITracklistLockupCollectionViewCell *)self contentView];
  previewState = self->_previewState;
  if (previewState == 3)
  {
    [v25 removeFromSuperview];
    v23 = [(SKUITracklistLockupCollectionViewCell *)self _previewColumnView];
    v24 = [(SKUITracklistLockupCollectionViewCell *)self contentView];
    [v24 addSubview:v23];

    [(SKUITracklistLockupCollectionViewCell *)self setNeedsLayout];
    self->_previewState = 0;
  }

  else if (previewState == 1)
  {
    [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator superview];
    [v4 convertRect:v14 fromView:{v7, v9, v11, v13}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator setFrame:v16, v18, v20, v22];
    [v4 addSubview:self->_previewProgressIndicator];
    [v25 removeFromSuperview];
    [(SKUIPreviewProgressIndicator *)self->_previewProgressIndicator reloadWithPlayerStatus:self->_lastPlayerStatus animated:0];
    self->_previewState = 2;
  }
}

@end