@interface NCDigestMosaicFeaturedNotificationsContainerView
- (BOOL)_shouldShowImageAttachments;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGRect)_sizingBoundsForLargeFeaturedViewInRect:(CGRect)a3;
- (CGRect)_sizingBoundsForMediumFeaturedViewInRect:(CGRect)a3;
- (CGRect)_sizingBoundsForSmallFeaturedViewInRect:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_overlapMarginForLargeFeaturedView;
- (id)_newFeaturedNotificationViewForContentProvider:(id)a3 contentViewStyle:(unint64_t)a4 showImageAttachment:(BOOL)a5;
- (id)_newNotificationSeamlessContentViewForContentProvider:(id)a3;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (unint64_t)_contentViewStyleForIndex:(unint64_t)a3;
- (void)_configureNotificationContentView:(id)a3 withContentProvider:(id)a4 showImageAttachment:(BOOL)a5 contentViewStyle:(unint64_t)a6;
- (void)_layoutLargeFeaturedView:(id)a3;
- (void)_layoutMediumFeaturedView:(id)a3;
- (void)_layoutSmallFeaturedView:(id)a3;
- (void)layoutSubviews;
- (void)setFeaturedNotificationContentProviders:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)updateContent;
@end

@implementation NCDigestMosaicFeaturedNotificationsContainerView

- (void)setFeaturedNotificationContentProviders:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (BSEqualArrays())
  {
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self updateContent];
  }

  else
  {
    objc_storeStrong(&self->_featuredNotificationContentProviders, a3);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_notificationViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v16 + 1) + 8 * v10++) removeFromSuperview];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    notificationViews = self->_notificationViews;
    self->_notificationViews = v11;

    v13 = [(NCDigestMosaicFeaturedNotificationsContainerView *)self _shouldShowImageAttachments];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__NCDigestMosaicFeaturedNotificationsContainerView_setFeaturedNotificationContentProviders___block_invoke;
    v14[3] = &unk_278373040;
    v14[4] = self;
    v15 = v13;
    [v5 enumerateObjectsUsingBlock:v14];
  }
}

void __92__NCDigestMosaicFeaturedNotificationsContainerView_setFeaturedNotificationContentProviders___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [*(a1 + 32) _contentViewStyleForIndex:a3];
  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 40);
  }

  v7 = [*(a1 + 32) _isDisplayingRichFeaturedNotifications];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 _newFeaturedNotificationViewForContentProvider:v11 contentViewStyle:v5 showImageAttachment:v6 & 1];
  }

  else
  {
    v9 = [v8 _newNotificationSeamlessContentViewForContentProvider:v11];
  }

  v10 = v9;
  [*(*(a1 + 32) + 416) addObject:v9];
  [*(a1 + 32) addSubview:v10];
}

- (void)updateContent
{
  v3 = [(NSArray *)self->_featuredNotificationContentProviders count];
  if (v3 == [(NSMutableArray *)self->_notificationViews count])
  {
    v4 = [(NCDigestMosaicFeaturedNotificationsContainerView *)self _shouldShowImageAttachments];
    featuredNotificationContentProviders = self->_featuredNotificationContentProviders;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__NCDigestMosaicFeaturedNotificationsContainerView_updateContent__block_invoke;
    v7[3] = &unk_278373040;
    v7[4] = self;
    v8 = v4;
    [(NSArray *)featuredNotificationContentProviders enumerateObjectsUsingBlock:v7];
  }

  else
  {
    v6 = self->_featuredNotificationContentProviders;

    [(NCDigestMosaicFeaturedNotificationsContainerView *)self setFeaturedNotificationContentProviders:v6];
  }
}

void __65__NCDigestMosaicFeaturedNotificationsContainerView_updateContent__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 _contentViewStyleForIndex:a3];
  if (v7 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 40);
  }

  v9 = *(a1 + 32);
  v10 = [v9[52] objectAtIndex:a3];
  [v9 _configureNotificationContentView:v10 withContentProvider:v6 showImageAttachment:v8 & 1 contentViewStyle:v7];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(NCDigestMosaicFeaturedNotificationsContainerView *)self _isDisplayingRichFeaturedNotifications])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    notificationViews = self->_notificationViews;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__NCDigestMosaicFeaturedNotificationsContainerView_sizeThatFits___block_invoke;
    v13[3] = &unk_278373068;
    *&v13[6] = width;
    *&v13[7] = height;
    v13[4] = self;
    v13[5] = &v14;
    [(NSMutableArray *)notificationViews enumerateObjectsUsingBlock:v13];
    v7 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = [(NSMutableArray *)self->_notificationViews firstObject];
    v9 = v8;
    if (v8)
    {
      [v8 sizeThatFits:{width, height}];
      v7 = v10;
    }

    else
    {
      v7 = 0.0;
    }
  }

  v11 = width;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

void __65__NCDigestMosaicFeaturedNotificationsContainerView_sizeThatFits___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = a2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = [*(a1 + 32) _contentViewStyleForIndex:a3];
  if (v7)
  {
    if (v7 == 1)
    {
      [*(a1 + 32) _sizingBoundsForSmallFeaturedViewInRect:{0.0, 0.0, v6, v5}];
      v11 = v15;
      v13 = v16;
      v14 = 10.0;
    }

    else
    {
      v8 = v7 == 2;
      v9 = v23;
      if (!v8)
      {
        goto LABEL_11;
      }

      [*(a1 + 32) _sizingBoundsForLargeFeaturedViewInRect:{0.0, 0.0, v6, v5}];
      v11 = v10;
      v13 = v12;
      v14 = 20.0;
    }
  }

  else
  {
    [*(a1 + 32) _sizingBoundsForMediumFeaturedViewInRect:{0.0, 0.0, v6, v5}];
    v11 = v17;
    v13 = v18;
    v14 = 50.0;
  }

  [v23 sizeThatFits:{v11, v13}];
  v9 = v23;
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 24);
  v22 = v21 + v14;
  if (v20 < v22)
  {
    v20 = v22;
  }

  *(v19 + 24) = v20;
LABEL_11:
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NCDigestMosaicFeaturedNotificationsContainerView;
  [(NCDigestMosaicFeaturedNotificationsContainerView *)&v7 layoutSubviews];
  v3 = [(NCDigestMosaicFeaturedNotificationsContainerView *)self _isDisplayingRichFeaturedNotifications];
  notificationViews = self->_notificationViews;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__NCDigestMosaicFeaturedNotificationsContainerView_layoutSubviews__block_invoke;
    v6[3] = &unk_278373090;
    v6[4] = self;
    [(NSMutableArray *)notificationViews enumerateObjectsUsingBlock:v6];
  }

  else
  {
    v5 = [(NSMutableArray *)notificationViews firstObject];
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self bounds];
    [v5 setFrame:?];
  }
}

void __66__NCDigestMosaicFeaturedNotificationsContainerView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) _contentViewStyleForIndex:a3];
  if (!v5)
  {
    [*(a1 + 32) _layoutMediumFeaturedView:v8];
    goto LABEL_8;
  }

  if (v5 == 1)
  {
    [*(a1 + 32) _layoutSmallFeaturedView:v8];
    goto LABEL_8;
  }

  v6 = v5 == 2;
  v7 = v8;
  if (v6)
  {
    [*(a1 + 32) _layoutLargeFeaturedView:v8];
LABEL_8:
    v7 = v8;
  }
}

- (void)_layoutLargeFeaturedView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = v4;
    [v4 frame];
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self _sizingBoundsForLargeFeaturedViewInRect:?];
    [v15 sizeThatFits:{v13, v14}];
    if ([(NCDigestMosaicFeaturedNotificationsContainerView *)self _shouldReverseLayoutDirection])
    {
      v17.origin.x = v6;
      v17.origin.y = v8;
      v17.size.width = v10;
      v17.size.height = v12;
      CGRectGetMaxX(v17);
    }

    UIRectIntegralWithScale();
    [v15 setFrame:?];
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self _overlapMarginForLargeFeaturedView];
    [v15 setHorizontalMarginForContentOverlap:?];
    v4 = v15;
  }
}

- (void)_layoutMediumFeaturedView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = v4;
    [v4 frame];
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self _sizingBoundsForMediumFeaturedViewInRect:?];
    [v15 sizeThatFits:{v13, v14}];
    [(NSMutableArray *)self->_notificationViews count];
    if (([(NCDigestMosaicFeaturedNotificationsContainerView *)self _shouldReverseLayoutDirection]& 1) == 0)
    {
      v17.origin.x = v6;
      v17.origin.y = v8;
      v17.size.width = v10;
      v17.size.height = v12;
      CGRectGetMaxX(v17);
    }

    UIRectIntegralWithScale();
    [v15 setFrame:?];
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self bringSubviewToFront:v15];
    v4 = v15;
  }
}

- (void)_layoutSmallFeaturedView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v21 = v4;
    [v4 frame];
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self bounds];
    v6 = v5;
    v8 = v7;
    v19 = v10;
    v20 = v9;
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self _sizingBoundsForSmallFeaturedViewInRect:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v21 sizeThatFits:{v15, v17}];
    v23.origin.x = v12;
    v23.origin.y = v14;
    v23.size.width = v16;
    v23.size.height = v18;
    CGRectGetWidth(v23);
    if (([(NCDigestMosaicFeaturedNotificationsContainerView *)self _shouldReverseLayoutDirection]& 1) == 0)
    {
      v24.origin.y = v19;
      v24.origin.x = v20;
      v24.size.width = v6;
      v24.size.height = v8;
      CGRectGetMaxX(v24);
    }

    UIRectIntegralWithScale();
    [v21 setFrame:?];
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self bringSubviewToFront:v21];
    v4 = v21;
  }
}

- (id)_newFeaturedNotificationViewForContentProvider:(id)a3 contentViewStyle:(unint64_t)a4 showImageAttachment:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [NCDigestMosaicFeaturedNotificationContentView alloc];
  v10 = [(NCNotificationListBaseContentView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(NCDigestMosaicFeaturedNotificationContentView *)v10 setContentViewStyle:a4];
  v11 = 0.0;
  if (a4 == 2)
  {
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self _overlapMarginForLargeFeaturedView];
  }

  [(NCDigestMosaicFeaturedNotificationContentView *)v10 setHorizontalMarginForContentOverlap:v11];
  v12 = [v8 notificationRequest];
  v13 = [v12 sectionIdentifier];
  [(NCDigestMosaicFeaturedNotificationContentView *)v10 setSectionIdentifier:v13];

  [(NCDigestMosaicFeaturedNotificationContentView *)v10 setUserInteractionEnabled:0];
  v14 = [(NCDigestMosaicFeaturedNotificationContentView *)v10 layer];
  [v14 setShadowColor:CGColorGetConstantColor(*MEMORY[0x277CBF3B8])];
  [v14 setShadowRadius:20.0];
  LODWORD(v15) = 1041865114;
  [v14 setShadowOpacity:v15];
  [v14 setShadowOffset:{0.0, 10.0}];
  [(NCDigestMosaicFeaturedNotificationsContainerView *)self _configureNotificationContentView:v10 withContentProvider:v8 showImageAttachment:v5 contentViewStyle:a4];

  return v10;
}

- (id)_newNotificationSeamlessContentViewForContentProvider:(id)a3
{
  v4 = a3;
  v5 = [NCNotificationSeamlessContentView alloc];
  v6 = [(NCNotificationSeamlessContentView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(NCNotificationSeamlessContentView *)v6 setThumbnailAlignedWithSecondaryText:1];
  [(NCNotificationSeamlessContentView *)v6 setHorizontalMarginPaddingDisabled:1];
  [(NCNotificationSeamlessContentView *)v6 setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];
  [(NCDigestMosaicFeaturedNotificationsContainerView *)self _configureNotificationContentView:v6 withContentProvider:v4 showImageAttachment:1 contentViewStyle:2];

  return v6;
}

- (void)_configureNotificationContentView:(id)a3 withContentProvider:(id)a4 showImageAttachment:(BOOL)a5 contentViewStyle:(unint64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (a6 == 1 && [v11 appNotificationCount])
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = NCUserNotificationsUIKitFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"NOTIFICATION_DIGEST_FEATURED_COUNT_TEXT" value:&stru_282FE84F8 table:0];
    v16 = [v13 localizedStringWithFormat:v15, objc_msgSend(v12, "appNotificationCount"), 0];
  }

  else
  {
    v16 = [v12 primaryText];
  }

  [v10 setPrimaryText:v16];
  v17 = [v12 primarySubtitleText];
  [v10 setPrimarySubtitleText:v17];

  v18 = [v12 secondaryText];
  [v10 setSecondaryText:v18];

  v19 = [v12 notificationRequest];
  v20 = [v19 subordinateIconRecipe];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v23 = [v12 notificationRequest];
    v22 = [v23 iconRecipe];
  }

  v24 = [NCBadgedIconDescription alloc];
  v25 = [v12 notificationRequest];
  v26 = [v25 topLevelSectionIdentifier];
  v27 = [(NCBadgedIconDescription *)v24 initWithBundleIdentifier:v26 prominentIconDescription:v22 subordinateIconRecipe:0 badgeText:0];

  [v10 setBadgedIconDescription:v27];
  [v10 setAlpha:1.0];
  if (v7)
  {
    v28 = [v12 thumbnail];
    [v10 setThumbnail:v28];

    if ([(NCDigestMosaicFeaturedNotificationsContainerView *)self _isDisplayingRichFeaturedNotifications])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 imageAttachmentSizeRatio];
        v30 = v29;
      }

      else
      {
        v30 = 0.666666667;
      }

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __143__NCDigestMosaicFeaturedNotificationsContainerView__configureNotificationContentView_withContentProvider_showImageAttachment_contentViewStyle___block_invoke;
      v31[3] = &unk_2783730B8;
      v32 = v10;
      v33 = self;
      [v12 fetchFeaturedAttachmentImageWithSizeRatio:v31 completion:v30];
    }
  }

  [(NCDigestMosaicFeaturedNotificationsContainerView *)self setNeedsLayout];
}

uint64_t __143__NCDigestMosaicFeaturedNotificationsContainerView__configureNotificationContentView_withContentProvider_showImageAttachment_contentViewStyle___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setThumbnail:a2];
  v3 = *(a1 + 40);

  return [v3 setNeedsLayout];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = UIContentSizeCategoryCompareToCategory(v4, self->_preferredContentSizeCategory);
  if (v5)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, v4);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_notificationViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) adjustForContentSizeCategoryChange];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(NCDigestMosaicFeaturedNotificationsContainerView *)self setNeedsLayout];
  }

  return v5 != NSOrderedSame;
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider)
  {
    v4 = strokeVisualStylingProvider;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCDigestMosaicFeaturedNotificationsContainerView;
    v4 = [(NCDigestMosaicFeaturedNotificationsContainerView *)&v6 visualStylingProviderForCategory:a3];
  }

  return v4;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v7 = a3;
  if (self->_strokeVisualStylingProvider != v7)
  {
    objc_storeStrong(&self->_strokeVisualStylingProvider, a3);
    if (![(NCDigestMosaicFeaturedNotificationsContainerView *)self _isDisplayingRichFeaturedNotifications])
    {
      notificationViews = self->_notificationViews;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __89__NCDigestMosaicFeaturedNotificationsContainerView_setVisualStylingProvider_forCategory___block_invoke;
      v9[3] = &unk_2783730E0;
      v11 = a4;
      v10 = v7;
      [(NSMutableArray *)notificationViews enumerateObjectsUsingBlock:v9];
    }
  }
}

void __89__NCDigestMosaicFeaturedNotificationsContainerView_setVisualStylingProvider_forCategory___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 requiredVisualStyleCategories];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    [v6 setVisualStylingProvider:*(a1 + 32) forCategory:*(a1 + 40)];
  }
}

- (BOOL)_shouldShowImageAttachments
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = [(NCDigestMosaicFeaturedNotificationsContainerView *)self _isDisplayingRichFeaturedNotifications];

    if (v4)
    {
      featuredNotificationContentProviders = self->_featuredNotificationContentProviders;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __79__NCDigestMosaicFeaturedNotificationsContainerView__shouldShowImageAttachments__block_invoke;
      v8[3] = &unk_278373108;
      v8[4] = &v9;
      [(NSArray *)featuredNotificationContentProviders enumerateObjectsUsingBlock:v8];
    }
  }

  else
  {
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __79__NCDigestMosaicFeaturedNotificationsContainerView__shouldShowImageAttachments__block_invoke(uint64_t result, void *a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    v3 = result;
    if (*(*(*(result + 32) + 8) + 24))
    {
      result = [a2 hasAttachmentImage];
      *(*(*(v3 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

- (unint64_t)_contentViewStyleForIndex:(unint64_t)a3
{
  if (a3)
  {
    return a3 != 1;
  }

  else
  {
    return 2;
  }
}

- (CGRect)_sizingBoundsForLargeFeaturedViewInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CGRectGetWidth(a3) * 0.65;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = CGRectGetHeight(v12);
  v9 = 0.0;
  v10 = 0.0;
  v11 = v7;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)_sizingBoundsForMediumFeaturedViewInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CGRectGetWidth(a3) * 0.45;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = CGRectGetHeight(v12);
  v9 = 0.0;
  v10 = 0.0;
  v11 = v7;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)_sizingBoundsForSmallFeaturedViewInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = dbl_21E946890[[v7 userInterfaceIdiom] == 1];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetWidth(v14) * v8;

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetHeight(v15);
  v11 = 0.0;
  v12 = 0.0;
  v13 = v9;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)_overlapMarginForLargeFeaturedView
{
  v3 = [(NSArray *)self->_featuredNotificationContentProviders count];
  result = 0.0;
  if (v3 >= 2)
  {
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self bounds];
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self _sizingBoundsForLargeFeaturedViewInRect:?];
    Width = CGRectGetWidth(v19);
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self bounds];
    [(NCDigestMosaicFeaturedNotificationsContainerView *)self _sizingBoundsForMediumFeaturedViewInRect:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if ([(NSArray *)self->_featuredNotificationContentProviders count]>= 3)
    {
      v14 = 12.0;
    }

    else
    {
      v14 = 0.0;
    }

    [(NCDigestMosaicFeaturedNotificationsContainerView *)self bounds];
    v15 = CGRectGetWidth(v20) - v14;
    v21.origin.x = v7;
    v21.origin.y = v9;
    v21.size.width = v11;
    v21.size.height = v13;
    v16 = v15 - CGRectGetWidth(v21);
    v22.origin.x = v7;
    v22.origin.y = v9;
    v22.size.width = v11;
    v22.size.height = v13;
    v17 = CGRectGetWidth(v22);
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.height = 0.0;
    v23.size.width = Width;
    MaxX = CGRectGetMaxX(v23);
    v24.origin.y = 0.0;
    v24.size.height = 0.0;
    v24.origin.x = v16;
    v24.size.width = v17;
    return MaxX - CGRectGetMinX(v24) + -8.0;
  }

  return result;
}

@end