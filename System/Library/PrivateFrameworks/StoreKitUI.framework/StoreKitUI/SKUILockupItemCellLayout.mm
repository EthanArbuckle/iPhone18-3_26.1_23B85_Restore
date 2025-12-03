@interface SKUILockupItemCellLayout
+ (CGSize)videoThumbnailSizeForVideo:(id)video clientContext:(id)context;
+ (double)heightForLockupComponent:(id)component clientContext:(id)context;
+ (double)heightForLockupStyle:(SKUILockupStyle *)style item:(id)item editorial:(id)editorial clientContext:(id)context;
- (BOOL)_isItemOfferHidden;
- (CGRect)_layoutIconImageView;
- (CGSize)imageBoundingSize;
- (CGSize)videoThumbnailSize;
- (SKUILockupItemCellLayout)initWithCollectionViewCell:(id)cell;
- (SKUILockupItemCellLayout)initWithParentView:(id)view;
- (SKUILockupItemCellLayout)initWithTableViewCell:(id)cell;
- (UIEdgeInsets)contentInsets;
- (id)_itemOfferTextLabel;
- (void)_beginVideoPlaybackAction:(id)action;
- (void)_initSKUILockupItemCellLayout;
- (void)_layoutHorizontal;
- (void)_layoutVertical;
- (void)dealloc;
- (void)layoutForItemOfferChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
- (void)setClientContext:(id)context;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setIconImage:(id)image;
- (void)setImageBoundingSize:(CGSize)size;
- (void)setItemOfferStyle:(int64_t)style;
- (void)setLayoutStyle:(int64_t)style;
- (void)setTitle:(id)title;
- (void)setVerticalAlignment:(int64_t)alignment;
- (void)setVideoThumbnailImage:(id)image;
- (void)setVideoThumbnailSize:(CGSize)size;
- (void)setVisibleFields:(unint64_t)fields;
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
  contentView = [(SKUICellLayout *)self contentView];
  [contentView addSubview:self->_metadataView];
}

- (SKUILockupItemCellLayout)initWithCollectionViewCell:(id)cell
{
  v6.receiver = self;
  v6.super_class = SKUILockupItemCellLayout;
  v3 = [(SKUICellLayout *)&v6 initWithCollectionViewCell:cell];
  v4 = v3;
  if (v3)
  {
    [(SKUILockupItemCellLayout *)v3 _initSKUILockupItemCellLayout];
  }

  return v4;
}

- (SKUILockupItemCellLayout)initWithParentView:(id)view
{
  v6.receiver = self;
  v6.super_class = SKUILockupItemCellLayout;
  v3 = [(SKUICellLayout *)&v6 initWithParentView:view];
  v4 = v3;
  if (v3)
  {
    [(SKUILockupItemCellLayout *)v3 _initSKUILockupItemCellLayout];
  }

  return v4;
}

- (SKUILockupItemCellLayout)initWithTableViewCell:(id)cell
{
  v6.receiver = self;
  v6.super_class = SKUILockupItemCellLayout;
  v3 = [(SKUICellLayout *)&v6 initWithTableViewCell:cell];
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

+ (double)heightForLockupComponent:(id)component clientContext:(id)context
{
  componentCopy = component;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUILockupItemCellLayout *)v8 heightForLockupComponent:v9 clientContext:v10, v11, v12, v13, v14, v15];
        if (componentCopy)
        {
          goto LABEL_5;
        }

LABEL_7:
        memset(v21, 0, sizeof(v21));
        goto LABEL_8;
      }
    }
  }

  if (!componentCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  [componentCopy lockupStyle];
LABEL_8:
  item = [componentCopy item];
  editorial = [componentCopy editorial];
  [self heightForLockupStyle:v21 item:item editorial:editorial clientContext:contextCopy];
  v19 = v18;

  return v19;
}

+ (double)heightForLockupStyle:(SKUILockupStyle *)style item:(id)item editorial:(id)editorial clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
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

  [SKUILockupMetadataView maximumHeightWithVisibleFields:style->visibleFields];
  v21 = v20;
  SKUILockupImageSizeForLockupSize(style->artworkSize, [itemCopy itemKind]);
  visibleFields = style->visibleFields;
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
    videos = [itemCopy videos];
    firstObject = [videos firstObject];
    [self videoThumbnailSizeForVideo:firstObject clientContext:contextCopy];
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

  layoutStyle = style->layoutStyle;
  if (layoutStyle > 1)
  {
    v38 = v24 + v26;
    if (layoutStyle != 2)
    {
      v39 = v21 + v38;
      v29 = v27 + v39;
      if (editorial)
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

+ (CGSize)videoThumbnailSizeForVideo:(id)video clientContext:(id)context
{
  videoCopy = video;
  contextCopy = context;
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

  if (SKUIUserInterfaceIdiom(contextCopy) == 1)
  {
    v15 = 0x406BA00000000000;
    v16 = 0x4064C00000000000;
  }

  else
  {
    artworks = [videoCopy artworks];
    largestArtwork = [artworks largestArtwork];

    v16 = 0x4066800000000000;
    if (largestArtwork && ([largestArtwork size], v19 < v20))
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

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  [(SKUILockupMetadataView *)self->_metadataView setColoringWithColorScheme:schemeCopy];
  primaryTextColor = [schemeCopy primaryTextColor];
  itemOfferNoticeLabel = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  v7 = itemOfferNoticeLabel;
  if (primaryTextColor)
  {
    [itemOfferNoticeLabel setTextColor:primaryTextColor];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v7 setTextColor:v8];
  }

  v9.receiver = self;
  v9.super_class = SKUILockupItemCellLayout;
  [(SKUICellLayout *)&v9 setColoringWithColorScheme:schemeCopy];
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setImageBoundingSize:(CGSize)size
{
  if (self->_imageBoundingSize.width != size.width || self->_imageBoundingSize.height != size.height)
  {
    self->_imageBoundingSize = size;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setItemOfferStyle:(int64_t)style
{
  if (self->_itemOfferStyle != style)
  {
    self->_itemOfferStyle = style;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  [(SKUILockupMetadataView *)self->_metadataView setTitle:title];

  [(SKUICellLayout *)self setNeedsLayout];
}

- (void)setVerticalAlignment:(int64_t)alignment
{
  if (self->_verticalAlignment != alignment)
  {
    self->_verticalAlignment = alignment;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setVideoThumbnailImage:(id)image
{
  imageCopy = image;
  videoThumbnailImage = [(SKUILockupItemCellLayout *)self videoThumbnailImage];

  if (videoThumbnailImage != imageCopy)
  {
    videoThumbnailView = self->_videoThumbnailView;
    if (imageCopy)
    {
      if (!videoThumbnailView)
      {
        v7 = objc_alloc_init(SKUIEmbeddedMediaView);
        v8 = self->_videoThumbnailView;
        self->_videoThumbnailView = v7;

        [(SKUIEmbeddedMediaView *)self->_videoThumbnailView addTarget:self action:sel__beginVideoPlaybackAction_ forControlEvents:64];
        v9 = self->_videoThumbnailView;
        parentCellView = [(SKUICellLayout *)self parentCellView];
        backgroundColor = [parentCellView backgroundColor];
        [(SKUIEmbeddedMediaView *)v9 setBackgroundColor:backgroundColor];

        [(SKUIEmbeddedMediaView *)self->_videoThumbnailView setEnabled:self->_playsInlineVideo];
        [(SKUIEmbeddedMediaView *)self->_videoThumbnailView setMediaType:2];
        [(SKUIEmbeddedMediaView *)self->_videoThumbnailView setShowsThumbnailReflection:0];
        [(SKUIEmbeddedMediaView *)self->_videoThumbnailView setThumbnailContentMode:6];
        contentView = [(SKUICellLayout *)self contentView];
        [contentView addSubview:self->_videoThumbnailView];

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

    setNeedsLayout = [(SKUICellLayout *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](setNeedsLayout);
}

- (void)setVideoThumbnailSize:(CGSize)size
{
  if (self->_videoThumbnailSize.width != size.width || self->_videoThumbnailSize.height != size.height)
  {
    self->_videoThumbnailSize = size;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setVisibleFields:(unint64_t)fields
{
  if ([(SKUILockupMetadataView *)self->_metadataView visibleFields]!= fields)
  {
    [(SKUILockupMetadataView *)self->_metadataView setVisibleFields:fields];
    [(SKUIItemCellLayout *)self setDisplaysItemOfferButton:([(SKUILockupItemCellLayout *)self visibleFields]& 0x104) != 0];

    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)layoutForItemOfferChange
{
  contentView = [(SKUICellLayout *)self contentView];
  [contentView bounds];
  v5 = v4;
  v31 = v6;

  itemOfferButton = [(SKUIItemCellLayout *)self itemOfferButton];
  [itemOfferButton frame];
  v8 = v7;
  v10 = v9;
  [itemOfferButton sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v12 = v11;
  v14 = v13;
  itemOfferNoticeLabel = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  if ([itemOfferNoticeLabel isHidden])
  {
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);

    itemOfferNoticeLabel = 0;
    v18 = v14;
  }

  else
  {
    [itemOfferNoticeLabel frame];
    [itemOfferNoticeLabel sizeThatFits:{v12 + 10.0, 1.79769313e308}];
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
      iconImageView = [(SKUIItemCellLayout *)self iconImageView];
      [iconImageView frame];
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
  [itemOfferButton setFrame:{v8, v10, v12, v14}];
  [itemOfferNoticeLabel setFrame:{v29, v30, v16, v17}];
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

- (void)setBackgroundColor:(id)color
{
  itemOfferTextLabel = self->_itemOfferTextLabel;
  colorCopy = color;
  [(UILabel *)itemOfferTextLabel setBackgroundColor:colorCopy];
  [(SKUILockupMetadataView *)self->_metadataView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUILockupItemCellLayout;
  [(SKUIItemCellLayout *)&v6 setBackgroundColor:colorCopy];
}

- (void)setClientContext:(id)context
{
  metadataView = self->_metadataView;
  contextCopy = context;
  [(SKUILockupMetadataView *)metadataView setClientContext:contextCopy];
  v6.receiver = self;
  v6.super_class = SKUILockupItemCellLayout;
  [(SKUICellLayout *)&v6 setClientContext:contextCopy];
}

- (void)setIconImage:(id)image
{
  v5.receiver = self;
  v5.super_class = SKUILockupItemCellLayout;
  [(SKUIItemCellLayout *)&v5 setIconImage:image];
  iconImageView = [(SKUIItemCellLayout *)self iconImageView];
  [iconImageView setContentMode:11];
}

- (void)_beginVideoPlaybackAction:(id)action
{
  parentCellView = [(SKUICellLayout *)self parentCellView];
  v3 = SKUICollectionViewForView(parentCellView);
  delegate = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate itemCollectionView:v3 didTapVideoForCollectionViewCell:parentCellView];
  }
}

- (BOOL)_isItemOfferHidden
{
  if (![(SKUIItemCellLayout *)self displaysItemOfferButton]|| ([(SKUILockupItemCellLayout *)self visibleFields]& 0x104) == 0)
  {
    return 1;
  }

  itemOffer = [(SKUIItemCellLayout *)self itemOffer];
  if (itemOffer)
  {
    isRestricted = [(SKUIItemCellLayout *)self isRestricted];
  }

  else
  {
    isRestricted = 1;
  }

  return isRestricted;
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
    parentCellView = [(SKUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(UILabel *)v6 setBackgroundColor:backgroundColor];

    v9 = self->_itemOfferTextLabel;
    v10 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v9 setFont:v10];

    v11 = self->_itemOfferTextLabel;
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v11 setTextColor:v12];

    contentView = [(SKUICellLayout *)self contentView];
    [contentView addSubview:self->_itemOfferTextLabel];

    itemOfferTextLabel = self->_itemOfferTextLabel;
  }

  return itemOfferTextLabel;
}

- (void)_layoutHorizontal
{
  contentView = [(SKUICellLayout *)self contentView];
  [contentView bounds];
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

  _isItemOfferHidden = [(SKUILockupItemCellLayout *)self _isItemOfferHidden];
  itemOfferButton = [(SKUIItemCellLayout *)self itemOfferButton];
  v18 = MEMORY[0x277CBF3A0];
  v19 = *MEMORY[0x277CBF3A0];
  v20 = *(MEMORY[0x277CBF3A0] + 16);
  v21 = *(MEMORY[0x277CBF3A0] + 24);
  v114 = itemOfferButton;
  if (_isItemOfferHidden || self->_itemOfferStyle)
  {
    [itemOfferButton setHidden:1];

    v22 = self->_itemOfferTextLabel;
    if (_isItemOfferHidden)
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
    if (itemOfferButton)
    {
      [itemOfferButton frame];
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
    _itemOfferTextLabel = [(SKUILockupItemCellLayout *)self _itemOfferTextLabel];

    [_itemOfferTextLabel setHidden:0];
    itemOffer = [(SKUIItemCellLayout *)self itemOffer];
    buttonText = [itemOffer buttonText];
    [_itemOfferTextLabel setText:buttonText];

    [_itemOfferTextLabel frame];
    [_itemOfferTextLabel sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v104 = left;
    v105 = v30;
    v102 = v31;
    v23 = v31;
    goto LABEL_15;
  }

LABEL_14:
  [(UILabel *)v22 setHidden:1];

  _itemOfferTextLabel = 0;
  v102 = v21;
  v104 = v19;
  v105 = v20;
LABEL_15:
  v32 = *(v18 + 8);
  itemOfferNoticeLabel = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  v99 = v15;
  if ([itemOfferNoticeLabel isHidden])
  {

    itemOfferNoticeLabel = 0;
  }

  else if (itemOfferNoticeLabel)
  {
    [itemOfferNoticeLabel frame];
    v19 = v36;
    v32 = v37;
    v38 = v112;
    if (v115 || (v38 = v105, _itemOfferTextLabel))
    {
      [itemOfferNoticeLabel sizeThatFits:{v38 + 10.0, 1.79769313e308}];
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
    if (_isItemOfferHidden)
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
  if (_isItemOfferHidden)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (self->_itemOfferStyle == 1)
  {
    metadataView = self->_metadataView;
    itemOffer2 = [(SKUIItemCellLayout *)self itemOffer];
    buttonText2 = [itemOffer2 buttonText];
    [(SKUILockupMetadataView *)metadataView setItemOfferString:buttonText2];

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
    if (!itemOfferNoticeLabel)
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
  if (itemOfferNoticeLabel)
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
    primaryTextColor = [(SKUILockupMetadataView *)self->_metadataView primaryTextColor];
    if (primaryTextColor)
    {
      [itemOfferNoticeLabel setTextColor:primaryTextColor];
    }

    else
    {
      v95 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [itemOfferNoticeLabel setTextColor:v95];
    }

    v19 = v87 + v91;
    v32 = MaxY + 3.0;

    v14 = v85;
    left = v84;
  }

LABEL_66:
  iconImageView = [(SKUIItemCellLayout *)self iconImageView];
  [iconImageView setFrame:{v14, v108.f64[0], v99, rect}];

  [v115 setFrame:{v106, v57, v112, v111}];
  [itemOfferNoticeLabel setFrame:{v19, v32, v103, v98}];
  [_itemOfferTextLabel setFrame:{v104, v58, v105, v102}];
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
  iconImageView = [(SKUIItemCellLayout *)self iconImageView];
  [iconImageView frame];
  if (([(SKUILockupItemCellLayout *)self visibleFields]& 2) != 0)
  {
    top = self->_contentInsets.top;
    left = self->_contentInsets.left;
    width = self->_imageBoundingSize.width;
    height = self->_imageBoundingSize.height;
    [iconImageView setFrame:{left, top, width, height}];
    [iconImageView setHidden:{-[SKUIItemCellLayout isIconImageHidden](self, "isIconImageHidden")}];
  }

  else
  {
    [iconImageView setHidden:1];
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
  contentView = [(SKUICellLayout *)self contentView];
  [contentView bounds];
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
  itemOfferButton = [(SKUIItemCellLayout *)self itemOfferButton];
  _isItemOfferHidden = [(SKUILockupItemCellLayout *)self _isItemOfferHidden];
  v21 = *MEMORY[0x277CBF3A0];
  v22 = *(MEMORY[0x277CBF3A0] + 16);
  v23 = *(MEMORY[0x277CBF3A0] + 24);
  if (_isItemOfferHidden || self->_itemOfferStyle)
  {
    [itemOfferButton setHidden:1];

    v24 = self->_itemOfferTextLabel;
    if (_isItemOfferHidden)
    {
      itemOfferButton = 0;
      v56 = v21;
      v57 = v23;
      v59 = v22;
      goto LABEL_14;
    }

    itemOfferButton = 0;
    v56 = v21;
    v57 = v23;
    v59 = v22;
  }

  else
  {
    [itemOfferButton setHidden:0];
    [itemOfferButton frame];
    v59 = v25;
    v56 = self->_contentInsets.left;
    v57 = v26;
    v19 = v19 + v26 + 3.0;
    v24 = self->_itemOfferTextLabel;
  }

  if (self->_itemOfferStyle == 2)
  {
    _itemOfferTextLabel = [(SKUILockupItemCellLayout *)self _itemOfferTextLabel];

    [_itemOfferTextLabel setHidden:0];
    itemOffer = [(SKUIItemCellLayout *)self itemOffer];
    buttonText = [itemOffer buttonText];
    [_itemOfferTextLabel setText:buttonText];

    [_itemOfferTextLabel frame];
    v21 = self->_contentInsets.left;
    [_itemOfferTextLabel sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v58 = v30;
    v53 = v31;
    v19 = v19 + v31 + 3.0;
    goto LABEL_15;
  }

LABEL_14:
  [(UILabel *)v24 setHidden:1];

  _itemOfferTextLabel = 0;
  v53 = v23;
  v58 = v22;
LABEL_15:
  itemOfferNoticeLabel = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  if ([itemOfferNoticeLabel isHidden])
  {
    v52 = v23;

    itemOfferNoticeLabel = 0;
    goto LABEL_24;
  }

  if (!itemOfferNoticeLabel)
  {
    v52 = v23;
    goto LABEL_24;
  }

  [itemOfferNoticeLabel frame];
  if (itemOfferButton)
  {
    v35 = 10.0;
    v36 = v59;
LABEL_23:
    [itemOfferNoticeLabel sizeThatFits:{v36 + v35, 1.79769313e308}];
    v22 = v37;
    v52 = v38;
    goto LABEL_24;
  }

  if (_itemOfferTextLabel)
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
  if (itemOfferNoticeLabel)
  {
    v44 = v56;
    if (itemOfferButton)
    {
      v45 = v42;
    }

    else
    {
      v44 = v21;
      v45 = v43;
    }

    v46 = v59;
    if (!itemOfferButton)
    {
      v46 = v58;
    }

    v47 = v57;
    if (!itemOfferButton)
    {
      v47 = v53;
    }

    v48 = (v46 - v22) * 0.5;
    [itemOfferNoticeLabel setFrame:{v44 + floorf(v48), CGRectGetMaxY(*&v44) + 3.0, v22, v52}];
    primaryTextColor = [(SKUILockupMetadataView *)self->_metadataView primaryTextColor];
    if (primaryTextColor)
    {
      [itemOfferNoticeLabel setTextColor:primaryTextColor];
    }

    else
    {
      v50 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [itemOfferNoticeLabel setTextColor:v50];
    }
  }

  iconImageView = [(SKUIItemCellLayout *)self iconImageView];
  [iconImageView setFrame:{v40, v63, v62, rect}];

  [itemOfferButton setFrame:{v56, v42, v59, v57}];
  [_itemOfferTextLabel setFrame:{v21, v43, v58, v53}];
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