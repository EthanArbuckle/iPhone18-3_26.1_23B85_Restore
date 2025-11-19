@interface SKUILockupItemCellLayout
+ (CGSize)videoThumbnailSizeForVideo:(id)a3 clientContext:(id)a4;
+ (double)heightForLockupComponent:(id)a3 clientContext:(id)a4;
+ (double)heightForLockupStyle:(SKUILockupStyle *)a3 item:(id)a4 editorial:(id)a5 clientContext:(id)a6;
- (BOOL)_isItemOfferHidden;
- (CGRect)_layoutIconImageView;
- (CGSize)imageBoundingSize;
- (CGSize)videoThumbnailSize;
- (SKUILockupItemCellLayout)initWithCollectionViewCell:(id)a3;
- (SKUILockupItemCellLayout)initWithParentView:(id)a3;
- (SKUILockupItemCellLayout)initWithTableViewCell:(id)a3;
- (UIEdgeInsets)contentInsets;
- (id)_itemOfferTextLabel;
- (void)_beginVideoPlaybackAction:(id)a3;
- (void)_initSKUILockupItemCellLayout;
- (void)_layoutHorizontal;
- (void)_layoutVertical;
- (void)dealloc;
- (void)layoutForItemOfferChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
- (void)setClientContext:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setIconImage:(id)a3;
- (void)setImageBoundingSize:(CGSize)a3;
- (void)setItemOfferStyle:(int64_t)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setTitle:(id)a3;
- (void)setVerticalAlignment:(int64_t)a3;
- (void)setVideoThumbnailImage:(id)a3;
- (void)setVideoThumbnailSize:(CGSize)a3;
- (void)setVisibleFields:(unint64_t)a3;
@end

@implementation SKUILockupItemCellLayout

- (void)_initSKUILockupItemCellLayout
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUILockupItemCellLayout *)v3 _initSKUILockupItemCellLayout:v4];
      }
    }
  }

  v11 = objc_alloc_init(SKUILockupMetadataView);
  metadataView = self->_metadataView;
  self->_metadataView = v11;

  v13 = self->_metadataView;
  v14 = SKUILockupStyleDefault(v16);
  [(SKUILockupMetadataView *)v13 setVisibleFields:v17, v14];
  v15 = [(SKUICellLayout *)self contentView];
  [v15 addSubview:self->_metadataView];
}

- (SKUILockupItemCellLayout)initWithCollectionViewCell:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKUILockupItemCellLayout;
  v3 = [(SKUICellLayout *)&v6 initWithCollectionViewCell:a3];
  v4 = v3;
  if (v3)
  {
    [(SKUILockupItemCellLayout *)v3 _initSKUILockupItemCellLayout];
  }

  return v4;
}

- (SKUILockupItemCellLayout)initWithParentView:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKUILockupItemCellLayout;
  v3 = [(SKUICellLayout *)&v6 initWithParentView:a3];
  v4 = v3;
  if (v3)
  {
    [(SKUILockupItemCellLayout *)v3 _initSKUILockupItemCellLayout];
  }

  return v4;
}

- (SKUILockupItemCellLayout)initWithTableViewCell:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKUILockupItemCellLayout;
  v3 = [(SKUICellLayout *)&v6 initWithTableViewCell:a3];
  v4 = v3;
  if (v3)
  {
    [(SKUILockupItemCellLayout *)v3 _initSKUILockupItemCellLayout];
  }

  return v4;
}

- (void)dealloc
{
  [(SKUIEmbeddedMediaView *)self->_videoThumbnailView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUILockupItemCellLayout;
  [(SKUIItemCellLayout *)&v3 dealloc];
}

+ (double)heightForLockupComponent:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUILockupItemCellLayout *)v8 heightForLockupComponent:v9 clientContext:v10, v11, v12, v13, v14, v15];
        if (v6)
        {
          goto LABEL_5;
        }

LABEL_7:
        memset(v21, 0, sizeof(v21));
        goto LABEL_8;
      }
    }
  }

  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_5:
  [v6 lockupStyle];
LABEL_8:
  v16 = [v6 item];
  v17 = [v6 editorial];
  [a1 heightForLockupStyle:v21 item:v16 editorial:v17 clientContext:v7];
  v19 = v18;

  return v19;
}

+ (double)heightForLockupStyle:(SKUILockupStyle *)a3 item:(id)a4 editorial:(id)a5 clientContext:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v12)
      {
        [(SKUILockupItemCellLayout *)v12 heightForLockupStyle:v13 item:v14 editorial:v15 clientContext:v16, v17, v18, v19];
      }
    }
  }

  [SKUILockupMetadataView maximumHeightWithVisibleFields:a3->visibleFields];
  v21 = v20;
  SKUILockupImageSizeForLockupSize(a3->artworkSize, [v10 itemKind]);
  visibleFields = a3->visibleFields;
  if ((visibleFields & 2) != 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v25 = 0.0;
  if ((visibleFields & 2) != 0)
  {
    v26 = 11.0;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = 58.0;
  if ((visibleFields & 4) == 0)
  {
    v27 = 0.0;
  }

  if ((visibleFields & 0x400) != 0)
  {
    v32 = [v10 videos];
    v33 = [v32 firstObject];
    [a1 videoThumbnailSizeForVideo:v33 clientContext:v11];
    v35 = v34;

    v36 = v35 + 10.0;
    if (v21 >= v24)
    {
      v27 = v21;
    }

    else
    {
      v27 = v24;
    }

    goto LABEL_26;
  }

  layoutStyle = a3->layoutStyle;
  if (layoutStyle > 1)
  {
    v38 = v24 + v26;
    if (layoutStyle != 2)
    {
      v39 = v21 + v38;
      v29 = v27 + v39;
      if (a5)
      {
        v29 = v39;
      }

      v31 = layoutStyle == 3;
      goto LABEL_31;
    }

    v36 = v21 + v38;
LABEL_26:
    v37 = v27 + v36;
    goto LABEL_34;
  }

  v29 = v21 + v27;
  if (v29 < v24)
  {
    v29 = v24;
  }

  if (v21 >= v24)
  {
    v30 = v21;
  }

  else
  {
    v30 = v24;
  }

  if (layoutStyle == 1)
  {
    v25 = v30;
  }

  v31 = layoutStyle == 0;
LABEL_31:
  if (v31)
  {
    v37 = v29;
  }

  else
  {
    v37 = v25;
  }

LABEL_34:

  return v37;
}

+ (CGSize)videoThumbnailSizeForVideo:(id)a3 clientContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUILockupItemCellLayout *)v7 videoThumbnailSizeForVideo:v8 clientContext:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  if (SKUIUserInterfaceIdiom(v6) == 1)
  {
    v15 = 0x406BA00000000000;
    v16 = 0x4064C00000000000;
  }

  else
  {
    v17 = [v5 artworks];
    v18 = [v17 largestArtwork];

    v16 = 0x4066800000000000;
    if (v18 && ([v18 size], v19 < v20))
    {
      v15 = 0x4066800000000000;
      v16 = 0x4074000000000000;
    }

    else
    {
      v15 = 0x4074000000000000;
    }
  }

  v21 = *&v15;
  v22 = *&v16;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
  [(SKUILockupMetadataView *)self->_metadataView setColoringWithColorScheme:v4];
  v5 = [v4 primaryTextColor];
  v6 = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  v7 = v6;
  if (v5)
  {
    [v6 setTextColor:v5];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v7 setTextColor:v8];
  }

  v9.receiver = self;
  v9.super_class = SKUILockupItemCellLayout;
  [(SKUICellLayout *)&v9 setColoringWithColorScheme:v4];
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setImageBoundingSize:(CGSize)a3
{
  if (self->_imageBoundingSize.width != a3.width || self->_imageBoundingSize.height != a3.height)
  {
    self->_imageBoundingSize = a3;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setItemOfferStyle:(int64_t)a3
{
  if (self->_itemOfferStyle != a3)
  {
    self->_itemOfferStyle = a3;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  [(SKUILockupMetadataView *)self->_metadataView setTitle:a3];

  [(SKUICellLayout *)self setNeedsLayout];
}

- (void)setVerticalAlignment:(int64_t)a3
{
  if (self->_verticalAlignment != a3)
  {
    self->_verticalAlignment = a3;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setVideoThumbnailImage:(id)a3
{
  v14 = a3;
  v4 = [(SKUILockupItemCellLayout *)self videoThumbnailImage];

  if (v4 != v14)
  {
    videoThumbnailView = self->_videoThumbnailView;
    if (v14)
    {
      if (!videoThumbnailView)
      {
        v7 = objc_alloc_init(SKUIEmbeddedMediaView);
        v8 = self->_videoThumbnailView;
        self->_videoThumbnailView = v7;

        [(SKUIEmbeddedMediaView *)self->_videoThumbnailView addTarget:self action:sel__beginVideoPlaybackAction_ forControlEvents:64];
        v9 = self->_videoThumbnailView;
        v10 = [(SKUICellLayout *)self parentCellView];
        v11 = [v10 backgroundColor];
        [(SKUIEmbeddedMediaView *)v9 setBackgroundColor:v11];

        [(SKUIEmbeddedMediaView *)self->_videoThumbnailView setEnabled:self->_playsInlineVideo];
        [(SKUIEmbeddedMediaView *)self->_videoThumbnailView setMediaType:2];
        [(SKUIEmbeddedMediaView *)self->_videoThumbnailView setShowsThumbnailReflection:0];
        [(SKUIEmbeddedMediaView *)self->_videoThumbnailView setThumbnailContentMode:6];
        v12 = [(SKUICellLayout *)self contentView];
        [v12 addSubview:self->_videoThumbnailView];

        videoThumbnailView = self->_videoThumbnailView;
      }

      [(SKUIEmbeddedMediaView *)videoThumbnailView setThumbnailImage:?];
    }

    else
    {
      [(SKUIEmbeddedMediaView *)videoThumbnailView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      [(SKUIEmbeddedMediaView *)self->_videoThumbnailView removeFromSuperview];
      v13 = self->_videoThumbnailView;
      self->_videoThumbnailView = 0;
    }

    v5 = [(SKUICellLayout *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v5);
}

- (void)setVideoThumbnailSize:(CGSize)a3
{
  if (self->_videoThumbnailSize.width != a3.width || self->_videoThumbnailSize.height != a3.height)
  {
    self->_videoThumbnailSize = a3;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setVisibleFields:(unint64_t)a3
{
  if ([(SKUILockupMetadataView *)self->_metadataView visibleFields]!= a3)
  {
    [(SKUILockupMetadataView *)self->_metadataView setVisibleFields:a3];
    [(SKUIItemCellLayout *)self setDisplaysItemOfferButton:([(SKUILockupItemCellLayout *)self visibleFields]& 0x104) != 0];

    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)layoutForItemOfferChange
{
  v3 = [(SKUICellLayout *)self contentView];
  [v3 bounds];
  v5 = v4;
  v31 = v6;

  v32 = [(SKUIItemCellLayout *)self itemOfferButton];
  [v32 frame];
  v8 = v7;
  v10 = v9;
  [v32 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v12 = v11;
  v14 = v13;
  v15 = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  if ([v15 isHidden])
  {
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);

    v15 = 0;
    v18 = v14;
  }

  else
  {
    [v15 frame];
    [v15 sizeThatFits:{v12 + 10.0, 1.79769313e308}];
    v16 = v19;
    v17 = v20;
    v18 = v14 + v20 + 3.0;
  }

  if (self->_layoutStyle == 1)
  {
    v8 = v5 - self->_contentInsets.right - v12;
    if (self->_verticalAlignment == 1)
    {
      v21 = (v31 - v18) * 0.5;
      v10 = floorf(v21);
    }

    else
    {
      v22 = [(SKUIItemCellLayout *)self iconImageView];
      [v22 frame];
      v24 = v23;

      [(SKUILockupMetadataView *)self->_metadataView frame];
      if (v24 >= v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      v27 = (v26 - v18) * 0.5;
      v10 = self->_contentInsets.top + floorf(v27);
    }
  }

  v28 = (v12 - v16) * 0.5;
  v29 = v8 + floorf(v28);
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  v30 = CGRectGetMaxY(v34) + 3.0;
  [v32 setFrame:{v8, v10, v12, v14}];
  [v15 setFrame:{v29, v30, v16, v17}];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SKUILockupItemCellLayout;
  [(SKUICellLayout *)&v4 layoutSubviews];
  layoutStyle = self->_layoutStyle;
  if (layoutStyle - 2 < 2)
  {
    [(SKUILockupItemCellLayout *)self _layoutVertical];
  }

  else if (layoutStyle <= 1)
  {
    [(SKUILockupItemCellLayout *)self _layoutHorizontal];
  }
}

- (void)prepareForReuse
{
  [(SKUIEmbeddedMediaView *)self->_videoThumbnailView endPlaybackAnimated:0];
  v3.receiver = self;
  v3.super_class = SKUILockupItemCellLayout;
  [(SKUIItemCellLayout *)&v3 prepareForReuse];
}

- (void)setBackgroundColor:(id)a3
{
  itemOfferTextLabel = self->_itemOfferTextLabel;
  v5 = a3;
  [(UILabel *)itemOfferTextLabel setBackgroundColor:v5];
  [(SKUILockupMetadataView *)self->_metadataView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUILockupItemCellLayout;
  [(SKUIItemCellLayout *)&v6 setBackgroundColor:v5];
}

- (void)setClientContext:(id)a3
{
  metadataView = self->_metadataView;
  v5 = a3;
  [(SKUILockupMetadataView *)metadataView setClientContext:v5];
  v6.receiver = self;
  v6.super_class = SKUILockupItemCellLayout;
  [(SKUICellLayout *)&v6 setClientContext:v5];
}

- (void)setIconImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUILockupItemCellLayout;
  [(SKUIItemCellLayout *)&v5 setIconImage:a3];
  v4 = [(SKUIItemCellLayout *)self iconImageView];
  [v4 setContentMode:11];
}

- (void)_beginVideoPlaybackAction:(id)a3
{
  v5 = [(SKUICellLayout *)self parentCellView];
  v3 = SKUICollectionViewForView(v5);
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 itemCollectionView:v3 didTapVideoForCollectionViewCell:v5];
  }
}

- (BOOL)_isItemOfferHidden
{
  if (![(SKUIItemCellLayout *)self displaysItemOfferButton]|| ([(SKUILockupItemCellLayout *)self visibleFields]& 0x104) == 0)
  {
    return 1;
  }

  v3 = [(SKUIItemCellLayout *)self itemOffer];
  if (v3)
  {
    v4 = [(SKUIItemCellLayout *)self isRestricted];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_itemOfferTextLabel
{
  itemOfferTextLabel = self->_itemOfferTextLabel;
  if (!itemOfferTextLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_itemOfferTextLabel;
    self->_itemOfferTextLabel = v4;

    v6 = self->_itemOfferTextLabel;
    v7 = [(SKUICellLayout *)self parentCellView];
    v8 = [v7 backgroundColor];
    [(UILabel *)v6 setBackgroundColor:v8];

    v9 = self->_itemOfferTextLabel;
    v10 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v9 setFont:v10];

    v11 = self->_itemOfferTextLabel;
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v11 setTextColor:v12];

    v13 = [(SKUICellLayout *)self contentView];
    [v13 addSubview:self->_itemOfferTextLabel];

    itemOfferTextLabel = self->_itemOfferTextLabel;
  }

  return itemOfferTextLabel;
}

- (void)_layoutHorizontal
{
  v3 = [(SKUICellLayout *)self contentView];
  [v3 bounds];
  v109 = v4;
  v100 = v5;
  v97 = v6;
  v107 = v7;

  p_contentInsets = &self->_contentInsets;
  left = self->_contentInsets.left;
  [(SKUILockupItemCellLayout *)self _layoutIconImageView];
  v14 = v10;
  v15 = v12;
  rect = v13;
  if (v12 > 0.00000011920929)
  {
    left = CGRectGetMaxX(*&v10) + 13.0;
  }

  v16 = [(SKUILockupItemCellLayout *)self _isItemOfferHidden];
  v17 = [(SKUIItemCellLayout *)self itemOfferButton];
  v18 = MEMORY[0x277CBF3A0];
  v19 = *MEMORY[0x277CBF3A0];
  v20 = *(MEMORY[0x277CBF3A0] + 16);
  v21 = *(MEMORY[0x277CBF3A0] + 24);
  v114 = v17;
  if (v16 || self->_itemOfferStyle)
  {
    [v17 setHidden:1];

    v22 = self->_itemOfferTextLabel;
    if (v16)
    {
      v115 = 0;
      v23 = 0.0;
      v106 = v19;
      v111 = v21;
      v112 = v20;
      goto LABEL_14;
    }

    v24 = 0;
    v23 = 0.0;
    v106 = v19;
    v111 = v21;
    v112 = v20;
  }

  else
  {
    if (v17)
    {
      [v17 frame];
      v111 = v26;
      v112 = v25;
      v106 = left;
      v23 = v26;
    }

    else
    {
      v23 = 0.0;
      v111 = *(MEMORY[0x277CBF3A0] + 24);
      v112 = *(MEMORY[0x277CBF3A0] + 16);
      v106 = *MEMORY[0x277CBF3A0];
    }

    v22 = self->_itemOfferTextLabel;
    v24 = v114;
  }

  v115 = v24;
  if (self->_itemOfferStyle == 2)
  {
    v27 = [(SKUILockupItemCellLayout *)self _itemOfferTextLabel];

    [v27 setHidden:0];
    v28 = [(SKUIItemCellLayout *)self itemOffer];
    v29 = [v28 buttonText];
    [v27 setText:v29];

    [v27 frame];
    [v27 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v104 = left;
    v105 = v30;
    v102 = v31;
    v23 = v31;
    goto LABEL_15;
  }

LABEL_14:
  [(UILabel *)v22 setHidden:1];

  v27 = 0;
  v102 = v21;
  v104 = v19;
  v105 = v20;
LABEL_15:
  v32 = *(v18 + 8);
  v33 = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  v99 = v15;
  if ([v33 isHidden])
  {

    v33 = 0;
  }

  else if (v33)
  {
    [v33 frame];
    v19 = v36;
    v32 = v37;
    v38 = v112;
    if (v115 || (v38 = v105, v27))
    {
      [v33 sizeThatFits:{v38 + 10.0, 1.79769313e308}];
      v20 = v39;
      v21 = v40;
    }

    else
    {
      v20 = v34;
      v21 = v35;
    }

    v23 = v23 + v21 + 3.0;
  }

  v117.origin.x = v109;
  v117.origin.y = v100;
  v117.size.width = v97;
  v117.size.height = v107;
  v41 = CGRectGetMaxX(v117) - self->_contentInsets.right;
  top = p_contentInsets->top;
  verticalAlignment = self->_verticalAlignment;
  if (([(SKUILockupItemCellLayout *)self visibleFields]& 0x400) != 0)
  {
    videoThumbnailView = self->_videoThumbnailView;
    if (videoThumbnailView)
    {
      width = self->_videoThumbnailSize.width;
      v45 = self->_contentInsets.left;
      v46 = (v41 - v45 - width) * 0.5;
      [(SKUIEmbeddedMediaView *)videoThumbnailView setFrame:v45 + floorf(v46), top, width, self->_videoThumbnailSize.height];
    }

    verticalAlignment = 0;
    top = p_contentInsets->top + self->_videoThumbnailSize.height + 10.0;
  }

  if (self->_layoutStyle != 1)
  {
LABEL_29:
    if (v16)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v115)
  {
    v106 = v41 - v112;
    [v115 layoutSizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v41 = v41 - v47 + -10.0;
    goto LABEL_29;
  }

  v104 = v41 - v105;
  v41 = v41 - v105 + -10.0;
  if (v16)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (self->_itemOfferStyle == 1)
  {
    metadataView = self->_metadataView;
    v49 = [(SKUIItemCellLayout *)self itemOffer];
    v50 = [v49 buttonText];
    [(SKUILockupMetadataView *)metadataView setItemOfferString:v50];

    goto LABEL_34;
  }

LABEL_33:
  [(SKUILockupMetadataView *)self->_metadataView setItemOfferString:0];
LABEL_34:
  [(SKUILockupMetadataView *)self->_metadataView frame];
  [(SKUILockupMetadataView *)self->_metadataView sizeThatFits:v41 - left, 1.79769313e308];
  v53 = v52;
  v54 = v51;
  v103 = v20;
  v98 = v21;
  v110 = v51;
  if (self->_layoutStyle == 1)
  {
    if (verticalAlignment == 1)
    {
      v55.f64[0] = rect;
      v55.f64[1] = v54;
      v56 = vsubq_f64(vdupq_lane_s64(*&v107, 0), v55);
      *v55.f64 = (v107 - v23) * 0.5;
      v57 = floorf(*v55.f64);
      v58 = ceilf(*v55.f64);
      __asm { FMOV            V1.2D, #0.5 }

      v64 = vcvtq_f64_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(v56, _Q1))));
    }

    else
    {
      if (rect >= v51)
      {
        *&v69 = rect;
      }

      else
      {
        *&v69 = v51;
      }

      v70 = (*&v69 - v23) * 0.5;
      v57 = top + floorf(v70);
      v58 = top + ceilf(v70);
      v71.f64[0] = rect;
      v71.f64[1] = v54;
      v72 = vsubq_f64(vdupq_lane_s64(v69, 0), v71);
      __asm { FMOV            V1.2D, #0.5 }

      v64 = vaddq_f64(vdupq_lane_s64(*&top, 0), vcvtq_f64_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(v72, _Q1)))));
    }

    v108 = v64;
    if (!v33)
    {
      goto LABEL_66;
    }

    goto LABEL_52;
  }

  v65 = v111 + 3.0 + v51;
  if (!v115)
  {
    v65 = v51;
  }

  if (verticalAlignment == 1)
  {
    v66.f64[0] = rect;
    v66.f64[1] = v65;
    __asm { FMOV            V1.2D, #0.5 }

    v68 = vcvtq_f64_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(vsubq_f64(vdupq_lane_s64(*&v107, 0), v66), _Q1))));
  }

  else
  {
    v74.f64[0] = rect;
    if (rect >= v65)
    {
      *&v75 = rect;
    }

    else
    {
      *&v75 = v65;
    }

    v74.f64[1] = v65;
    v76 = vsubq_f64(vdupq_lane_s64(v75, 0), v74);
    __asm { FMOV            V1.2D, #0.5 }

    v78 = vcvtq_f64_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(v76, _Q1))));
    v79 = vld1q_dup_f64(&p_contentInsets->top);
    v68 = vaddq_f64(v79, v78);
  }

  v108 = v68;
  v80 = v68.f64[1];
  v68.f64[0] = left;
  v81 = v68.f64[1];
  v82 = v53;
  v83 = v54;
  v57 = CGRectGetMaxY(*v68.f64) + 3.0;
  v118.origin.x = left;
  v118.origin.y = v80;
  v118.size.width = v53;
  v118.size.height = v110;
  v58 = CGRectGetMaxY(v118) + 3.0;
  if (v33)
  {
LABEL_52:
    v84 = left;
    v85 = v14;
    v86 = v105;
    if (v115)
    {
      v87 = v106;
    }

    else
    {
      v87 = v104;
    }

    if (v115)
    {
      v88 = v57;
    }

    else
    {
      v88 = v58;
    }

    if (v115)
    {
      v86 = v112;
    }

    v89 = v102;
    if (v115)
    {
      v89 = v111;
    }

    v90 = (v86 - v103) * 0.5;
    v91 = floorf(v90);
    v92 = v87;
    MaxY = CGRectGetMaxY(*(&v86 - 2));
    v94 = [(SKUILockupMetadataView *)self->_metadataView primaryTextColor];
    if (v94)
    {
      [v33 setTextColor:v94];
    }

    else
    {
      v95 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [v33 setTextColor:v95];
    }

    v19 = v87 + v91;
    v32 = MaxY + 3.0;

    v14 = v85;
    left = v84;
  }

LABEL_66:
  v96 = [(SKUIItemCellLayout *)self iconImageView];
  [v96 setFrame:{v14, v108.f64[0], v99, rect}];

  [v115 setFrame:{v106, v57, v112, v111}];
  [v33 setFrame:{v19, v32, v103, v98}];
  [v27 setFrame:{v104, v58, v105, v102}];
  [(SKUILockupMetadataView *)self->_metadataView frame];
  v120.size.height = v110;
  v120.origin.x = left;
  v120.origin.y = v108.f64[1];
  v120.size.width = v53;
  if (!CGRectEqualToRect(v119, v120))
  {
    [(SKUILockupMetadataView *)self->_metadataView setFrame:left, v108.f64[1], v53, v110];
    [(SKUILockupMetadataView *)self->_metadataView setNeedsDisplay];
  }
}

- (CGRect)_layoutIconImageView
{
  v3 = [(SKUIItemCellLayout *)self iconImageView];
  [v3 frame];
  if (([(SKUILockupItemCellLayout *)self visibleFields]& 2) != 0)
  {
    top = self->_contentInsets.top;
    left = self->_contentInsets.left;
    width = self->_imageBoundingSize.width;
    height = self->_imageBoundingSize.height;
    [v3 setFrame:{left, top, width, height}];
    [v3 setHidden:{-[SKUIItemCellLayout isIconImageHidden](self, "isIconImageHidden")}];
  }

  else
  {
    [v3 setHidden:1];
    left = *MEMORY[0x277CBF3A0];
    top = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v8 = left;
  v9 = top;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_layoutVertical
{
  v3 = [(SKUICellLayout *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(SKUILockupItemCellLayout *)self _layoutIconImageView];
  v10 = v9;
  v62 = v12;
  v63 = v11;
  v13 = 11.0;
  rect = v8;
  if (v8 <= 0.00000011920929)
  {
    v14 = v8;
  }

  else
  {
    v14 = v8 + 11.0;
  }

  if (v8 <= 0.00000011920929)
  {
    v13 = 0.0;
  }

  v54 = v13;
  [(SKUILockupMetadataView *)self->_metadataView frame];
  left = self->_contentInsets.left;
  [(SKUILockupMetadataView *)self->_metadataView sizeThatFits:v5 - self->_contentInsets.right - left, 1.79769313e308];
  v60 = v16;
  v18 = v17;
  v19 = v14 + v17;
  v64 = [(SKUIItemCellLayout *)self itemOfferButton];
  v20 = [(SKUILockupItemCellLayout *)self _isItemOfferHidden];
  v21 = *MEMORY[0x277CBF3A0];
  v22 = *(MEMORY[0x277CBF3A0] + 16);
  v23 = *(MEMORY[0x277CBF3A0] + 24);
  if (v20 || self->_itemOfferStyle)
  {
    [v64 setHidden:1];

    v24 = self->_itemOfferTextLabel;
    if (v20)
    {
      v64 = 0;
      v56 = v21;
      v57 = v23;
      v59 = v22;
      goto LABEL_14;
    }

    v64 = 0;
    v56 = v21;
    v57 = v23;
    v59 = v22;
  }

  else
  {
    [v64 setHidden:0];
    [v64 frame];
    v59 = v25;
    v56 = self->_contentInsets.left;
    v57 = v26;
    v19 = v19 + v26 + 3.0;
    v24 = self->_itemOfferTextLabel;
  }

  if (self->_itemOfferStyle == 2)
  {
    v27 = [(SKUILockupItemCellLayout *)self _itemOfferTextLabel];

    [v27 setHidden:0];
    v28 = [(SKUIItemCellLayout *)self itemOffer];
    v29 = [v28 buttonText];
    [v27 setText:v29];

    [v27 frame];
    v21 = self->_contentInsets.left;
    [v27 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v58 = v30;
    v53 = v31;
    v19 = v19 + v31 + 3.0;
    goto LABEL_15;
  }

LABEL_14:
  [(UILabel *)v24 setHidden:1];

  v27 = 0;
  v53 = v23;
  v58 = v22;
LABEL_15:
  v32 = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  if ([v32 isHidden])
  {
    v52 = v23;

    v32 = 0;
    goto LABEL_24;
  }

  if (!v32)
  {
    v52 = v23;
    goto LABEL_24;
  }

  [v32 frame];
  if (v64)
  {
    v35 = 10.0;
    v36 = v59;
LABEL_23:
    [v32 sizeThatFits:{v36 + v35, 1.79769313e308}];
    v22 = v37;
    v52 = v38;
    goto LABEL_24;
  }

  if (v27)
  {
    v35 = 10.0;
    v36 = v58;
    goto LABEL_23;
  }

  v22 = v33;
  v52 = v34;
LABEL_24:
  if (self->_verticalAlignment == 1)
  {
    v39 = (v7 - v19) * 0.5;
    v63 = floorf(v39);
  }

  v40 = v10;
  v66.origin.x = v10;
  v66.size.width = v62;
  v66.origin.y = v63;
  v66.size.height = rect;
  v41 = v54 + CGRectGetMaxY(v66);
  v67.origin.x = left;
  v67.origin.y = v41;
  v67.size.width = v60;
  v67.size.height = v18;
  v42 = CGRectGetMaxY(v67) + 3.0;
  v55 = v18;
  v68.origin.x = left;
  v68.origin.y = v41;
  v68.size.width = v60;
  v68.size.height = v18;
  v43 = CGRectGetMaxY(v68) + 3.0;
  if (v32)
  {
    v44 = v56;
    if (v64)
    {
      v45 = v42;
    }

    else
    {
      v44 = v21;
      v45 = v43;
    }

    v46 = v59;
    if (!v64)
    {
      v46 = v58;
    }

    v47 = v57;
    if (!v64)
    {
      v47 = v53;
    }

    v48 = (v46 - v22) * 0.5;
    [v32 setFrame:{v44 + floorf(v48), CGRectGetMaxY(*&v44) + 3.0, v22, v52}];
    v49 = [(SKUILockupMetadataView *)self->_metadataView primaryTextColor];
    if (v49)
    {
      [v32 setTextColor:v49];
    }

    else
    {
      v50 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [v32 setTextColor:v50];
    }
  }

  v51 = [(SKUIItemCellLayout *)self iconImageView];
  [v51 setFrame:{v40, v63, v62, rect}];

  [v64 setFrame:{v56, v42, v59, v57}];
  [v27 setFrame:{v21, v43, v58, v53}];
  [(SKUILockupMetadataView *)self->_metadataView frame];
  v70.origin.x = left;
  v70.origin.y = v41;
  v70.size.width = v60;
  v70.size.height = v55;
  if (!CGRectEqualToRect(v69, v70))
  {
    [(SKUILockupMetadataView *)self->_metadataView setFrame:left, v41, v60, v55];
    [(SKUILockupMetadataView *)self->_metadataView setNeedsDisplay];
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)imageBoundingSize
{
  width = self->_imageBoundingSize.width;
  height = self->_imageBoundingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)videoThumbnailSize
{
  width = self->_videoThumbnailSize.width;
  height = self->_videoThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end