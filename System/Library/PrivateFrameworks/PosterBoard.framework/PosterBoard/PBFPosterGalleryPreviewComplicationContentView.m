@interface PBFPosterGalleryPreviewComplicationContentView
- (BOOL)_isComplicationSnapshotRequestOurs:(id)a3;
- (CGRect)_scaledFrameForElements:(unint64_t)a3;
- (PBFPosterGalleryPreviewComplicationContentView)initWithFrame:(CGRect)a3;
- (double)_contentScaleForWidgetGridViewController;
- (double)_cornerRadiusForComplicationSnapshotRequest:(id)a3;
- (id)_imageViewForComplication:(id)a3 snapshotRequest:(id)a4;
- (id)_layoutController;
- (id)_placeImageViewForSubtitleComplication:(id)a3 withSuperview:(id)a4 snapshotRequest:(id)a5;
- (id)customImageViewControllerForIconView:(id)a3;
- (id)pbf_displayContext;
- (void)_enumerateImageViewsForComplicationSnapshotRequest:(id)a3 usingBlock:(id)a4;
- (void)_stopUsingComplicationImageView:(id)a3;
- (void)_updatePreviewWithComplicationImage:(id)a3 error:(id)a4 complicationSnapshotRequest:(id)a5 posterPreview:(id)a6;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareComplicationPreviewWithGenerator:(id)a3;
- (void)prepareForReuse;
- (void)setComplicationImage:(id)a3 forComplicationSnapshotRequest:(id)a4;
- (void)setLayoutOrientation:(int64_t)a3;
- (void)setPosterPreview:(id)a3;
@end

@implementation PBFPosterGalleryPreviewComplicationContentView

- (PBFPosterGalleryPreviewComplicationContentView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = PBFPosterGalleryPreviewComplicationContentView;
  v3 = [(PBFPosterGalleryPreviewComplicationContentView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    models = v3->_models;
    v3->_models = v4;

    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    inlineComplicationContainerView = v3->_inlineComplicationContainerView;
    v3->_inlineComplicationContainerView = v6;

    v8 = objc_alloc(MEMORY[0x277D3EE70]);
    v9 = MEMORY[0x277CBEBF8];
    v10 = [v8 initWithComplicationDescriptors:MEMORY[0x277CBEBF8] iconLayout:0 type:0];
    [(NSMutableArray *)v3->_models bs_safeAddObject:v10];
    v11 = [objc_alloc(MEMORY[0x277D3EE80]) initWithModel:v10 iconViewProvider:v3];
    widgetGridViewController = v3->_widgetGridViewController;
    v3->_widgetGridViewController = v11;

    v13 = [objc_alloc(MEMORY[0x277D3EE70]) initWithComplicationDescriptors:v9 iconLayout:0 type:1];
    [(NSMutableArray *)v3->_models bs_safeAddObject:v13];
    v14 = [objc_alloc(MEMORY[0x277D3EE80]) initWithModel:v13 iconViewProvider:v3];
    sidebarWidgetGridViewController = v3->_sidebarWidgetGridViewController;
    v3->_sidebarWidgetGridViewController = v14;
  }

  return v3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  [(PRWidgetGridViewController *)self->_widgetGridViewController invalidate];
  [(PRWidgetGridViewController *)self->_sidebarWidgetGridViewController invalidate];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_models;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_models removeAllObjects];
  v8.receiver = self;
  v8.super_class = PBFPosterGalleryPreviewComplicationContentView;
  [(PBFPosterGalleryPreviewComplicationContentView *)&v8 dealloc];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PBFPosterGalleryPreviewComplicationContentView;
  [(PBFPosterGalleryPreviewComplicationContentView *)&v4 didMoveToWindow];
  v3 = [(PBFPosterGalleryPreviewComplicationContentView *)self _layoutController];
  [(PBFPosterGalleryPreviewComplicationContentView *)self setNeedsLayout];
}

- (id)pbf_displayContext
{
  v6.receiver = self;
  v6.super_class = PBFPosterGalleryPreviewComplicationContentView;
  v3 = [(UIView *)&v6 pbf_displayContext];
  v4 = [v3 displayContextWithUpdatedInterfaceOrientation:{-[PBFPosterGalleryPreviewComplicationContentView layoutOrientation](self, "layoutOrientation")}];

  return v4;
}

- (void)setLayoutOrientation:(int64_t)a3
{
  if (self->_layoutOrientation != a3)
  {
    if (BSInterfaceOrientationIsLandscape())
    {
      v5 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
      [v5 removeFromSuperview];

      v6 = [(BSUIVibrancyEffectView *)self->_vibrancyEffectView contentView];
      v7 = [(PRWidgetGridViewController *)self->_sidebarWidgetGridViewController view];
      [v6 addSubview:v7];
    }

    else
    {
      v8 = [(BSUIVibrancyEffectView *)self->_vibrancyEffectView contentView];
      v9 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
      [v8 addSubview:v9];

      v6 = [(PRWidgetGridViewController *)self->_sidebarWidgetGridViewController view];
      [v6 removeFromSuperview];
    }

    layoutController = self->_layoutController;
    self->_layoutController = 0;

    self->_layoutOrientation = a3;
    [(PBFPosterGalleryPreviewComplicationContentView *)self invalidateIntrinsicContentSize];

    [(PBFPosterGalleryPreviewComplicationContentView *)self setNeedsLayout];
  }
}

- (void)setPosterPreview:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_posterPreview != v5)
  {
    [(PBFPosterGalleryPreviewComplicationContentView *)self prepareForReuse];
    [(PBFPosterGalleryPreviewComplicationContentView *)self setContentMode:3];
    objc_storeStrong(&self->_posterPreview, a3);
    v6 = [(PBFPosterPreview *)v5 subtitleComplication];
    if (v6)
    {
      v7 = [PBFComplicationSnapshotRequest requestForComplicationLookupInfo:v6];
      inlineComplicationSnapshotRequest = self->_inlineComplicationSnapshotRequest;
      self->_inlineComplicationSnapshotRequest = v7;

      v9 = [(PBFPosterGalleryPreviewComplicationContentView *)self _placeImageViewForSubtitleComplication:v6 withSuperview:self->_inlineComplicationContainerView snapshotRequest:self->_inlineComplicationSnapshotRequest];
    }

    v51 = v6;
    v10 = [(PBFPosterPreview *)v5 suggestedComplications];
    v11 = [v10 bs_mapNoNulls:&__block_literal_global_14];

    p_widgetGridViewController = &self->_widgetGridViewController;
    v12 = [(PRWidgetGridViewController *)self->_widgetGridViewController model];
    [v12 setComplicationDescriptors:v11 iconLayout:0];

    v52 = v5;
    v13 = [(PBFPosterPreview *)v5 suggestedLandscapeComplications];
    v14 = [v13 bs_mapNoNulls:&__block_literal_global_14];

    p_sidebarWidgetGridViewController = &self->_sidebarWidgetGridViewController;
    v15 = [(PRWidgetGridViewController *)self->_sidebarWidgetGridViewController model];
    [v15 setComplicationDescriptors:v14 iconLayout:0];

    v49 = v14;
    v50 = v11;
    v16 = [v11 arrayByAddingObjectsFromArray:v14];
    v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    iconImageViewsByUniqueIdentifier = self->_iconImageViewsByUniqueIdentifier;
    v54 = self;
    self->_iconImageViewsByUniqueIdentifier = v17;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v16;
    v19 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v57;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v57 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v56 + 1) + 8 * i);
          v24 = [v23 widget];
          v25 = [MEMORY[0x277D3EE88] sharedInstance];
          v26 = [v25 systemMetricsForWidget:v24];

          v27 = [[PBFComplicationSnapshotRequest alloc] initWithWidget:v24 metrics:v26];
          [v55 addObject:v27];
          v28 = [(PBFPosterGalleryPreviewComplicationContentView *)v54 _imageViewForComplication:v23 snapshotRequest:v27];
          v29 = v54->_iconImageViewsByUniqueIdentifier;
          v30 = [v23 uniqueIdentifier];
          [(NSMutableDictionary *)v29 setObject:v28 forKeyedSubscript:v30];
        }

        v20 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v20);
    }

    v31 = [v55 copy];
    modularComplicationSnapshotRequests = v54->_modularComplicationSnapshotRequests;
    v54->_modularComplicationSnapshotRequests = v31;

    if (!v54->_vibrancyEffectView && [(PBFPosterGalleryPreviewComplicationContentView *)v54 _hasComplications])
    {
      v33 = objc_alloc(MEMORY[0x277CF0D98]);
      [(PBFPosterGalleryPreviewComplicationContentView *)v54 bounds];
      v34 = [v33 initWithFrame:?];
      vibrancyEffectView = v54->_vibrancyEffectView;
      v54->_vibrancyEffectView = v34;

      [(PBFPosterGalleryPreviewComplicationContentView *)v54 addSubview:v54->_vibrancyEffectView];
    }

    v36 = [(BSUIVibrancyEffectView *)v54->_vibrancyEffectView contentView];
    [v36 addSubview:v54->_inlineComplicationContainerView];

    LODWORD(v36) = BSInterfaceOrientationIsLandscape();
    v37 = [(BSUIVibrancyEffectView *)v54->_vibrancyEffectView contentView];
    v38 = p_widgetGridViewController;
    if (v36)
    {
      v38 = p_sidebarWidgetGridViewController;
    }

    v39 = [*v38 view];
    [v37 addSubview:v39];

    v5 = v52;
    if ([(NSArray *)v54->_modularComplicationSnapshotRequests count]|| v54->_inlineComplicationSnapshotRequest)
    {
      v40 = [(PBFPosterPreview *)v52 posterDescriptorLookupInfo];
      v41 = [v40 posterDescriptorExtension];
      v42 = [v41 posterExtensionBundle];

      v43 = v54->_vibrancyEffectView;
      v44 = [(PBFPosterPreview *)v52 titleStyleConfiguration];
      v45 = [v44 vibrancyConfigurationWithExtensionBundle:v42];
      [(BSUIVibrancyEffectView *)v43 setConfiguration:v45];

      [(BSUIVibrancyEffectView *)v54->_vibrancyEffectView setHidden:0];
    }

    else
    {
      [(BSUIVibrancyEffectView *)v54->_vibrancyEffectView setHidden:1];
    }

    [(PBFPosterGalleryPreviewComplicationContentView *)v54 setNeedsLayout];
    v46 = [(PBFPosterGalleryPreviewComplicationContentView *)v54 window];

    if (v46)
    {
      [(PBFPosterGalleryPreviewComplicationContentView *)v54 layoutIfNeeded];
    }
  }
}

id __67__PBFPosterGalleryPreviewComplicationContentView_setPosterPreview___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFA258];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 complicationExtensionBundleIdentifier];
  v6 = [v3 complicationContainingBundleIdentifier];
  v7 = [v4 initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:v6 deviceIdentifier:0];

  v8 = objc_alloc(MEMORY[0x277CFA358]);
  v9 = [v3 complicationWidgetKind];
  v10 = [v3 complicationWidgetFamily];
  v11 = [v10 unsignedIntegerValue];
  v12 = [v3 complicationIntent];

  v13 = [v8 initWithExtensionIdentity:v7 kind:v9 family:v11 intent:v12 activityIdentifier:0];
  v14 = objc_alloc(MEMORY[0x277D3EC78]);
  v15 = [MEMORY[0x277CCAD78] UUID];
  v16 = [v15 UUIDString];
  v17 = [v14 initWithUniqueIdentifier:v16 widget:v13];

  return v17;
}

- (void)prepareForReuse
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_posterPreview)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v3 = [(NSMutableArray *)self->_complicationImageViews copy];
    v4 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v29;
      do
      {
        v7 = 0;
        do
        {
          if (*v29 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(PBFPosterGalleryPreviewComplicationContentView *)self _stopUsingComplicationImageView:*(*(&v28 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v5);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [(NSMutableArray *)self->_unusedComplicationImageViews copy];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          v14 = [(PBFPosterGalleryPreviewComplicationContentView *)self reusableViewMap];
          [v14 recycleView:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)self->_unusedComplicationImageViews removeAllObjects];
    v15 = [(PRWidgetGridViewController *)self->_widgetGridViewController model];
    v16 = MEMORY[0x277CBEBF8];
    [v15 setComplicationDescriptors:MEMORY[0x277CBEBF8] iconLayout:0];

    v17 = [(PRWidgetGridViewController *)self->_sidebarWidgetGridViewController model];
    [v17 setComplicationDescriptors:v16 iconLayout:0];

    iconImageViewsByUniqueIdentifier = self->_iconImageViewsByUniqueIdentifier;
    self->_iconImageViewsByUniqueIdentifier = 0;

    imageViewsForComplicationSnapshotRequest = self->_imageViewsForComplicationSnapshotRequest;
    self->_imageViewsForComplicationSnapshotRequest = 0;

    imageViewForComplication = self->_imageViewForComplication;
    self->_imageViewForComplication = 0;

    modularComplicationSnapshotRequests = self->_modularComplicationSnapshotRequests;
    self->_modularComplicationSnapshotRequests = 0;

    inlineComplicationSnapshotRequest = self->_inlineComplicationSnapshotRequest;
    self->_inlineComplicationSnapshotRequest = 0;

    posterPreview = self->_posterPreview;
    self->_posterPreview = 0;
  }
}

- (void)setComplicationImage:(id)a3 forComplicationSnapshotRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PBFPosterGalleryPreviewComplicationContentView *)self _isComplicationSnapshotRequestOurs:v7])
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __102__PBFPosterGalleryPreviewComplicationContentView_setComplicationImage_forComplicationSnapshotRequest___block_invoke;
    v12 = &unk_2782C7FC8;
    v13 = v6;
    v14 = self;
    [(PBFPosterGalleryPreviewComplicationContentView *)self _enumerateImageViewsForComplicationSnapshotRequest:v7 usingBlock:&v9];
    [(NSMapTable *)self->_imageViewsForComplicationSnapshotRequest removeObjectForKey:v7, v9, v10, v11, v12];
    [(PBFPosterGalleryPreviewComplicationContentView *)self setNeedsLayout];
    v8 = [(PBFPosterGalleryPreviewComplicationContentView *)self window];

    if (v8)
    {
      [(PBFPosterGalleryPreviewComplicationContentView *)self layoutIfNeeded];
    }
  }
}

void __102__PBFPosterGalleryPreviewComplicationContentView_setComplicationImage_forComplicationSnapshotRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    [v3 setImage:v2];
    [v3 setHidden:0];
  }

  else
  {
    [*(a1 + 40) _stopUsingComplicationImageView:a2];
  }
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = PBFPosterGalleryPreviewComplicationContentView;
  [(PBFPosterGalleryPreviewComplicationContentView *)&v55 layoutSubviews];
  widgetGridViewController = self->_widgetGridViewController;
  [(PBFPosterGalleryPreviewComplicationContentView *)self _contentScaleForWidgetGridViewController];
  [(PRWidgetGridViewController *)widgetGridViewController setIconContentScale:?];
  if ([(PBFPosterPreview *)self->_posterPreview complicationsUseBottomLayout])
  {
    v4 = 32;
  }

  else
  {
    v4 = 8;
  }

  [(PBFPosterGalleryPreviewComplicationContentView *)self _scaledFrameForElements:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
  v54 = v10;
  [v13 setFrame:{v6, v8, v10, v12}];

  sidebarWidgetGridViewController = self->_sidebarWidgetGridViewController;
  [(PBFPosterGalleryPreviewComplicationContentView *)self _contentScaleForWidgetGridViewController];
  [(PRWidgetGridViewController *)sidebarWidgetGridViewController setIconContentScale:?];
  [(PBFPosterGalleryPreviewComplicationContentView *)self _scaledFrameForElements:16];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(PRWidgetGridViewController *)self->_sidebarWidgetGridViewController view];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(PBFPosterGalleryPreviewComplicationContentView *)self posterPreview];
  v25 = [v24 subtitleComplication];
  [(PBFPosterGalleryPreviewComplicationContentView *)self bounds];
  v28 = v26;
  v29 = v27;
  v52 = v31;
  v53 = v30;
  if (v25)
  {
    v49 = v27;
    v50 = v26;
    v51 = v6;
    v32 = [(NSMapTable *)self->_imageViewForComplication objectForKey:v25];
    [(PBFPosterGalleryPreviewComplicationContentView *)self _scaledFrameForElements:4];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [v32 setFrame:?];
    v56.origin.x = v34;
    v56.origin.y = v36;
    v56.size.width = v38;
    v56.size.height = v40;
    MaxY = 0.0;
    if (CGRectGetMaxY(v56) > 0.0)
    {
      v57.origin.x = v34;
      v57.origin.y = v36;
      v57.size.width = v38;
      v57.size.height = v40;
      MaxY = CGRectGetMaxY(v57);
    }

    v58.origin.x = v34;
    v58.origin.y = v36;
    v58.size.width = v38;
    v58.size.height = v40;
    MinY = 1.79769313e308;
    if (CGRectGetMinY(v58) < 1.79769313e308)
    {
      v59.origin.x = v34;
      v59.origin.y = v36;
      v59.size.width = v38;
      v59.size.height = v40;
      MinY = CGRectGetMinY(v59);
    }

    v28 = v50;
    v6 = v51;
    v29 = v49;
  }

  else
  {
    MaxY = 0.0;
    MinY = 1.79769313e308;
  }

  v60.origin.x = v6;
  v60.origin.y = v8;
  v60.size.width = v54;
  v60.size.height = v12;
  if (CGRectGetMaxY(v60) > MaxY)
  {
    v61.origin.x = v6;
    v61.origin.y = v8;
    v61.size.width = v54;
    v61.size.height = v12;
    MaxY = CGRectGetMaxY(v61);
  }

  v62.origin.x = v6;
  v62.origin.y = v8;
  v62.size.width = v54;
  v62.size.height = v12;
  if (CGRectGetMinY(v62) < MinY)
  {
    v63.origin.x = v6;
    v63.origin.y = v8;
    v63.size.width = v54;
    v63.size.height = v12;
    MinY = CGRectGetMinY(v63);
  }

  if ((BSInterfaceOrientationIsPortrait() & 1) != 0 || ([v24 suggestedLandscapeComplications], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "count"), v43, !v44))
  {
    v45 = MaxY - MinY;
    v46 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
    [v46 setFrame:{v6, v8 - MinY, v54, v12}];

    v47 = [(NSMapTable *)self->_imageViewForComplication objectForKey:v25];
    [(PBFPosterGalleryPreviewComplicationContentView *)self _scaledFrameForElements:4];
    [v47 setFrame:?];
  }

  else
  {
    MinY = v29;
    v45 = v52;
  }

  [(BSUIVibrancyEffectView *)self->_vibrancyEffectView setFrame:v28, MinY, v53, v45];
  inlineComplicationContainerView = self->_inlineComplicationContainerView;
  [(BSUIVibrancyEffectView *)self->_vibrancyEffectView bounds];
  [(UIView *)inlineComplicationContainerView setFrame:?];
}

- (void)_enumerateImageViewsForComplicationSnapshotRequest:(id)a3 usingBlock:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(NSMapTable *)self->_imageViewsForComplicationSnapshotRequest objectForKey:a3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6[2](v6, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)_imageViewForComplication:(id)a3 snapshotRequest:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableArray *)self->_unusedComplicationImageViews lastObject];
  if (v8)
  {
    v9 = v8;
    [(NSMutableArray *)self->_unusedComplicationImageViews removeLastObject];
    [v9 setHidden:0];
  }

  else
  {
    v10 = [(PBFPosterGalleryPreviewComplicationContentView *)self reusableViewMap];
    if (v10)
    {
      v11 = [(PBFPosterGalleryPreviewComplicationContentView *)self reusableViewMap];
      v12 = objc_opt_self();
      v9 = [v11 viewOfClass:v12];
    }

    else
    {
      v9 = objc_opt_new();
    }
  }

  complicationImageViews = self->_complicationImageViews;
  if (!complicationImageViews)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = self->_complicationImageViews;
    self->_complicationImageViews = v14;

    complicationImageViews = self->_complicationImageViews;
  }

  [(NSMutableArray *)complicationImageViews addObject:v9];
  imageViewForComplication = self->_imageViewForComplication;
  if (!imageViewForComplication)
  {
    v17 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:0];
    v18 = self->_imageViewForComplication;
    self->_imageViewForComplication = v17;

    imageViewForComplication = self->_imageViewForComplication;
  }

  [(NSMapTable *)imageViewForComplication setObject:v9 forKey:v6];
  v19 = [(NSMapTable *)self->_imageViewsForComplicationSnapshotRequest objectForKey:v7];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 arrayByAddingObject:v9];
  }

  else
  {
    v26[0] = v9;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  }

  imageViewsForComplicationSnapshotRequest = self->_imageViewsForComplicationSnapshotRequest;
  if (!imageViewsForComplicationSnapshotRequest)
  {
    v23 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v24 = self->_imageViewsForComplicationSnapshotRequest;
    self->_imageViewsForComplicationSnapshotRequest = v23;

    imageViewsForComplicationSnapshotRequest = self->_imageViewsForComplicationSnapshotRequest;
  }

  [(NSMapTable *)imageViewsForComplicationSnapshotRequest setObject:v21 forKey:v7];

  return v9;
}

- (id)_placeImageViewForSubtitleComplication:(id)a3 withSuperview:(id)a4 snapshotRequest:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PBFPosterGalleryPreviewComplicationContentView *)self _imageViewForComplication:a3 snapshotRequest:v8];
  [v9 addSubview:v10];

  v11 = [(PBFPosterGalleryPreviewComplicationContentView *)self window];

  if (v11)
  {
    [(PBFPosterGalleryPreviewComplicationContentView *)self _scaledFrameForElements:4];
    [v10 setFrame:?];
  }

  [v10 setClipsToBounds:1];
  v12 = [v10 layer];
  [(PBFPosterGalleryPreviewComplicationContentView *)self _cornerRadiusForComplicationSnapshotRequest:v8];
  v14 = v13;

  [v12 setCornerRadius:v14];

  return v10;
}

- (void)_stopUsingComplicationImageView:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setImage:0];
  [v4 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setHidden:1];
  unusedComplicationImageViews = self->_unusedComplicationImageViews;
  if (!unusedComplicationImageViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_unusedComplicationImageViews;
    self->_unusedComplicationImageViews = v6;

    unusedComplicationImageViews = self->_unusedComplicationImageViews;
  }

  [(NSMutableArray *)unusedComplicationImageViews addObject:v4];
  [(NSMutableArray *)self->_complicationImageViews removeObject:v4];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_imageViewForComplication;
  v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      v14 = [(NSMapTable *)self->_imageViewForComplication objectForKey:v13, v17];
      v15 = v14;
      if (v14 == v4)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMapTable *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    v16 = v13;

    if (!v16)
    {
      goto LABEL_15;
    }

    [(NSMapTable *)self->_imageViewForComplication removeObjectForKey:v16];
    v8 = v16;
  }

LABEL_14:

LABEL_15:
}

- (CGRect)_scaledFrameForElements:(unint64_t)a3
{
  v5 = [(PBFPosterGalleryPreviewComplicationContentView *)self pbf_displayContext];
  if (v5 && [(PBFPosterGalleryPreviewComplicationContentView *)self _hasComplications])
  {
    [v5 pbf_frame];
    v7 = v6;
    v9 = v8;
    [(PBFPosterGalleryPreviewComplicationContentView *)self bounds];
    v11 = v10;
    v13 = v12;
    v14 = [(PBFPosterGalleryPreviewComplicationContentView *)self traitCollection];
    [v14 displayScale];

    memset(&v37, 0, sizeof(v37));
    CGAffineTransformMakeScale(&v37, v11 / v7, v13 / v9);
    v15 = [(PBFPosterGalleryPreviewComplicationContentView *)self _layoutController];
    [v15 frameForElements:a3 withBoundingRect:{0.0, 0.0, v7, v9}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v36 = v37;
    v38.origin.x = v17;
    v38.origin.y = v19;
    v38.size.width = v21;
    v38.size.height = v23;
    CGRectApplyAffineTransform(v38, &v36);
    UIRectRoundToScale();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
  }

  else
  {
    v25 = *MEMORY[0x277CBF3A0];
    v27 = *(MEMORY[0x277CBF3A0] + 8);
    v29 = *(MEMORY[0x277CBF3A0] + 16);
    v31 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (double)_contentScaleForWidgetGridViewController
{
  v3 = [(PBFPosterGalleryPreviewComplicationContentView *)self pbf_displayContext];
  v4 = v3;
  if (v3)
  {
    [v3 pbf_frame];
    v6 = v5;
    [(PBFPosterGalleryPreviewComplicationContentView *)self bounds];
    v8 = v7 / v6;
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

- (double)_cornerRadiusForComplicationSnapshotRequest:(id)a3
{
  v4 = a3;
  v5 = [(PBFPosterGalleryPreviewComplicationContentView *)self pbf_displayContext];
  v6 = v5;
  if (v5)
  {
    [v5 pbf_frame];
    v8 = v7;
    [(PBFPosterGalleryPreviewComplicationContentView *)self bounds];
    v10 = v9 / v8;
    v11 = [v4 metrics];
    [v11 _effectiveCornerRadius];
    v13 = v12 * v10;
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (id)_layoutController
{
  v3 = [(PBFPosterGalleryPreviewComplicationContentView *)self pbf_displayContext];
  if (v3)
  {
    layoutController = self->_layoutController;
    if (!layoutController || (-[CSProminentLayoutController traitEnvironment](layoutController, "traitEnvironment"), v5 = objc_claimAutoreleasedReturnValue(), -[PBFPosterGalleryPreviewComplicationContentView window](self, "window"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, v5, (v7 & 1) == 0))
    {
      v8 = objc_alloc(MEMORY[0x277D02CF0]);
      v9 = [(PBFPosterGalleryPreviewComplicationContentView *)self window];
      v10 = [v8 initWithTraitEnvironment:v9];
      v11 = self->_layoutController;
      self->_layoutController = v10;
    }

    v12 = self->_layoutController;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_isComplicationSnapshotRequestOurs:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PBFComplicationSnapshotRequest *)self->_inlineComplicationSnapshotRequest isEqual:v4])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = self->_modularComplicationSnapshotRequests;
    v5 = [(NSArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v10 + 1) + 8 * i) isEqual:{v4, v10}])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [(NSArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

- (void)prepareComplicationPreviewWithGenerator:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v17 = a3;
  val = self;
  v19 = [(PBFPosterGalleryPreviewComplicationContentView *)self posterPreview];
  objc_initWeak(&location, self);
  v4 = [v19 suggestedComplications];
  if (![v4 count])
  {
    v5 = [v19 suggestedLandscapeComplications];
    if (![v5 count])
    {
      v15 = [v19 subtitleComplication];
      v16 = v15 == 0;

      if (v16)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v6 = [v17 preparedComplicationPreviewImagesForPreview:v19];
  if ([v6 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = [v6 keyEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = *v31;
      do
      {
        v10 = 0;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v30 + 1) + 8 * v10);
          objc_initWeak(&from, val);
          v12 = [v6 objectForKey:v11];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __90__PBFPosterGalleryPreviewComplicationContentView_prepareComplicationPreviewWithGenerator___block_invoke;
          v26[3] = &unk_2782C7FF0;
          objc_copyWeak(&v28, &from);
          v26[4] = v11;
          v27 = v19;
          v13 = [MEMORY[0x277D3EC60] mainThreadScheduler];
          [v12 addSuccessBlock:v26 scheduler:v13];

          objc_destroyWeak(&v28);
          objc_destroyWeak(&from);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__PBFPosterGalleryPreviewComplicationContentView_prepareComplicationPreviewWithGenerator___block_invoke_2;
  v23[3] = &unk_2782C8018;
  objc_copyWeak(&v25, &location);
  v14 = v19;
  v24 = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __90__PBFPosterGalleryPreviewComplicationContentView_prepareComplicationPreviewWithGenerator___block_invoke_4;
  v20[3] = &unk_2782C8040;
  objc_copyWeak(&v22, &location);
  v21 = v14;
  [v17 fetchComplicationPreviewImagesForPreview:v21 complicationSnapshotReceivedHandler:v23 errorHandler:v20 completion:0];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v25);

LABEL_15:
  objc_destroyWeak(&location);
}

void __90__PBFPosterGalleryPreviewComplicationContentView_prepareComplicationPreviewWithGenerator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updatePreviewWithComplicationImage:v3 error:0 complicationSnapshotRequest:*(a1 + 32) posterPreview:*(a1 + 40)];
}

void __90__PBFPosterGalleryPreviewComplicationContentView_prepareComplicationPreviewWithGenerator___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v10, (a1 + 40));
  v7 = v6;
  v8 = v5;
  v9 = *(a1 + 32);
  BSDispatchMain();

  objc_destroyWeak(&v10);
}

void __90__PBFPosterGalleryPreviewComplicationContentView_prepareComplicationPreviewWithGenerator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updatePreviewWithComplicationImage:*(a1 + 32) error:0 complicationSnapshotRequest:*(a1 + 40) posterPreview:*(a1 + 48)];
}

void __90__PBFPosterGalleryPreviewComplicationContentView_prepareComplicationPreviewWithGenerator___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v10, (a1 + 40));
  v7 = v6;
  v8 = v5;
  v9 = *(a1 + 32);
  BSDispatchMain();

  objc_destroyWeak(&v10);
}

void __90__PBFPosterGalleryPreviewComplicationContentView_prepareComplicationPreviewWithGenerator___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updatePreviewWithComplicationImage:0 error:*(a1 + 32) complicationSnapshotRequest:*(a1 + 40) posterPreview:*(a1 + 48)];
}

- (void)_updatePreviewWithComplicationImage:(id)a3 error:(id)a4 complicationSnapshotRequest:(id)a5 posterPreview:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v13)
  {
    [PBFPosterGalleryPreviewComplicationContentView _updatePreviewWithComplicationImage:a2 error:? complicationSnapshotRequest:? posterPreview:?];
  }

  v15 = v14;
  if (!v14)
  {
    [PBFPosterGalleryPreviewComplicationContentView _updatePreviewWithComplicationImage:a2 error:? complicationSnapshotRequest:? posterPreview:?];
  }

  if (self->_posterPreview == v14)
  {
    v16 = PBFLogGallery();
    v17 = v16;
    if (v12)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterGalleryPreviewComplicationContentView _updatePreviewWithComplicationImage:error:complicationSnapshotRequest:posterPreview:];
      }

      v18 = 0;
    }

    else
    {
      v18 = v11;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PBFPosterGalleryPreviewComplicationContentView _updatePreviewWithComplicationImage:error:complicationSnapshotRequest:posterPreview:];
        v18 = v11;
      }
    }

    [(PBFPosterGalleryPreviewComplicationContentView *)self setComplicationImage:v18 forComplicationSnapshotRequest:v13];
  }
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v5 = a3;
  [v5 setIconContentScalingEnabled:1];
  [v5 setDelegate:self];
}

- (id)customImageViewControllerForIconView:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PBFWidgetIconViewController);
  v6 = [v4 icon];

  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 leafIdentifier];

  v12 = [(NSMutableDictionary *)self->_iconImageViewsByUniqueIdentifier objectForKeyedSubscript:v11];
  [(PBFWidgetIconViewController *)v5 setIconImageView:v12];

  return v5;
}

- (void)_updatePreviewWithComplicationImage:error:complicationSnapshotRequest:posterPreview:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_21B526000, v0, OS_LOG_TYPE_ERROR, "Error laying out complications for poster preview '%{public}@': %{public}@", v1, 0x16u);
}

- (void)_updatePreviewWithComplicationImage:error:complicationSnapshotRequest:posterPreview:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_21B526000, v0, OS_LOG_TYPE_DEBUG, "Laying out poster preview complication request '%{public}@' for poster preview '%{public}@'", v1, 0x16u);
}

- (void)_updatePreviewWithComplicationImage:(const char *)a1 error:complicationSnapshotRequest:posterPreview:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterPreview"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFPosterGalleryPreviewComplicationContentView.m";
    v9 = 1024;
    v10 = 510;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_updatePreviewWithComplicationImage:(const char *)a1 error:complicationSnapshotRequest:posterPreview:.cold.4(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"complicationSnapshotRequest"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFPosterGalleryPreviewComplicationContentView.m";
    v9 = 1024;
    v10 = 509;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end