@interface SKUIGiftItemView
- (CGSize)_imageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIGiftItemView)initWithStyle:(int64_t)style item:(id)item clientContext:(id)context;
- (SKUIItemArtworkContext)artworkContext;
- (SKUIItemOfferButton)itemOfferButton;
- (UIEdgeInsets)_imageEdgeInsets;
- (double)_paddingLeading;
- (double)_paddingTrailing;
- (id)_newLabel;
- (id)_subtitleColor;
- (id)_titleColor;
- (id)_userRatingColor;
- (void)_enumerateMetadataViewsUsingBlock:(id)block;
- (void)_itemOfferConfirmAction:(id)action;
- (void)_reloadItemState:(BOOL)state;
- (void)_reloadSubtitles;
- (void)_reloadUserRatingViews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setArtistName:(id)name;
- (void)setBackgroundColor:(id)color;
- (void)setCategoryName:(id)name;
- (void)setItemImage:(id)image;
- (void)setItemState:(id)state animated:(BOOL)animated;
- (void)setNumberOfUserRatings:(int64_t)ratings;
- (void)setPrice:(id)price;
- (void)setTheme:(id)theme;
- (void)setTitle:(id)title;
- (void)setUserRating:(float)rating;
@end

@implementation SKUIGiftItemView

- (SKUIGiftItemView)initWithStyle:(int64_t)style item:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftItemView initWithStyle:item:clientContext:];
  }

  v15.receiver = self;
  v15.super_class = SKUIGiftItemView;
  v11 = [(SKUIGiftItemView *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_item, item);
    v12->_itemStyle = style;
    objc_storeStrong(&v12->_clientContext, context);
    [(SKUIGiftItemView *)v12 _reloadUserRatingViews];
    [(SKUIGiftItemView *)v12 _reloadItemState:0];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v12->_leftToRight = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 0;
  }

  return v12;
}

- (void)dealloc
{
  [(SKUIItemOfferButton *)self->_itemOfferButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIGiftItemView;
  [(SKUIGiftItemView *)&v3 dealloc];
}

- (SKUIItemArtworkContext)artworkContext
{
  v3 = objc_alloc_init(SKUIItemArtworkContext);
  itemStyle = self->_itemStyle;
  if ((itemStyle - 2) < 2)
  {
    v10 = +[SKUIStyledImageDataConsumer giftResultIconConsumer];
    [(SKUIItemArtworkContext *)v3 setIconConsumer:v10];

    v11 = +[SKUIStyledImageDataConsumer giftResultProductImageConsumer];
    [(SKUIItemArtworkContext *)v3 setNewsstandConsumer:v11];

    v9 = +[SKUIProductImageDataConsumer giftResultConsumer];
  }

  else if (itemStyle == 1)
  {
    v12 = +[SKUIStyledImageDataConsumer giftThemeIconConsumer];
    [(SKUIItemArtworkContext *)v3 setIconConsumer:v12];

    v13 = +[SKUIStyledImageDataConsumer giftThemeProductImageConsumer];
    [(SKUIItemArtworkContext *)v3 setNewsstandConsumer:v13];

    v14 = +[SKUIProductImageDataConsumer giftThemePosterConsumer];
    [(SKUIItemArtworkContext *)v3 setPosterConsumer:v14];

    v15 = +[SKUIProductImageDataConsumer giftThemeLetterboxConsumer];
    [(SKUIItemArtworkContext *)v3 setLetterboxConsumer:v15];

    v9 = +[SKUIProductImageDataConsumer giftThemeConsumer];
  }

  else
  {
    if (itemStyle)
    {
      goto LABEL_8;
    }

    v5 = +[SKUIStyledImageDataConsumer roomIconConsumer];
    [(SKUIItemArtworkContext *)v3 setIconConsumer:v5];

    v6 = +[SKUIStyledImageDataConsumer giftComposeProductImageConsumer];
    [(SKUIItemArtworkContext *)v3 setNewsstandConsumer:v6];

    v7 = +[SKUIProductImageDataConsumer giftComposePosterConsumer];
    [(SKUIItemArtworkContext *)v3 setPosterConsumer:v7];

    v8 = +[SKUIProductImageDataConsumer giftComposeLetterboxConsumer];
    [(SKUIItemArtworkContext *)v3 setLetterboxConsumer:v8];

    v9 = +[SKUIProductImageDataConsumer giftComposeConsumer];
  }

  v16 = v9;
  [(SKUIItemArtworkContext *)v3 setGeneralConsumer:v9];

LABEL_8:

  return v3;
}

- (SKUIItemOfferButton)itemOfferButton
{
  itemOfferButton = self->_itemOfferButton;
  if (!itemOfferButton)
  {
    v4 = objc_alloc_init(SKUIItemOfferButton);
    v5 = self->_itemOfferButton;
    self->_itemOfferButton = v4;

    v6 = self->_itemOfferButton;
    backgroundColor = [(SKUIGiftItemView *)self backgroundColor];
    [(SKUIItemOfferButton *)v6 setBackgroundColor:backgroundColor];

    [(SKUIItemOfferButton *)self->_itemOfferButton addTarget:self action:sel__itemOfferConfirmAction_ forControlEvents:0x20000];
    [(SKUIGiftItemView *)self addSubview:self->_itemOfferButton];
    itemOfferButton = self->_itemOfferButton;
  }

  return itemOfferButton;
}

- (void)setArtistName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (self->_artistName != nameCopy)
  {
    v8 = nameCopy;
    nameCopy = [nameCopy isEqualToString:?];
    v5 = v8;
    if ((nameCopy & 1) == 0)
    {
      v6 = [v8 copy];
      artistName = self->_artistName;
      self->_artistName = v6;

      nameCopy = [(SKUIGiftItemView *)self _reloadSubtitles];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](nameCopy, v5);
}

- (void)setCategoryName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (self->_categoryName != nameCopy)
  {
    v8 = nameCopy;
    nameCopy = [nameCopy isEqualToString:?];
    v5 = v8;
    if ((nameCopy & 1) == 0)
    {
      v6 = [v8 copy];
      categoryName = self->_categoryName;
      self->_categoryName = v6;

      nameCopy = [(SKUIGiftItemView *)self _reloadSubtitles];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](nameCopy, v5);
}

- (void)setItemImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_itemImageView image];

  if (image != imageCopy)
  {
    itemImageView = self->_itemImageView;
    if (imageCopy)
    {
      if (!itemImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_itemImageView;
        self->_itemImageView = v7;

        v9 = self->_itemImageView;
        backgroundColor = [(SKUIGiftItemView *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:backgroundColor];

        [(SKUIGiftItemView *)self addSubview:self->_itemImageView];
        itemImageView = self->_itemImageView;
      }

      [(UIImageView *)itemImageView setImage:?];
      [(UIImageView *)self->_itemImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)itemImageView removeFromSuperview];
      v11 = self->_itemImageView;
      self->_itemImageView = 0;
    }

    setNeedsLayout = [(SKUIGiftItemView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](setNeedsLayout);
}

- (void)setItemState:(id)state animated:(BOOL)animated
{
  if (self->_itemState != state)
  {
    animatedCopy = animated;
    v6 = [state copy];
    itemState = self->_itemState;
    self->_itemState = v6;

    [(SKUIGiftItemView *)self _reloadItemState:animatedCopy];
  }
}

- (void)setNumberOfUserRatings:(int64_t)ratings
{
  if (self->_numberOfUserRatings != ratings)
  {
    self->_numberOfUserRatings = ratings;
    [(SKUIGiftItemView *)self _reloadUserRatingViews];
  }
}

- (void)setPrice:(id)price
{
  priceCopy = price;
  v5 = priceCopy;
  if (self->_price != priceCopy)
  {
    v8 = priceCopy;
    priceCopy = [priceCopy isEqualToString:?];
    v5 = v8;
    if ((priceCopy & 1) == 0)
    {
      v6 = [v8 copy];
      price = self->_price;
      self->_price = v6;

      priceCopy = [(SKUIGiftItemView *)self _reloadSubtitles];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](priceCopy, v5);
}

- (void)setTheme:(id)theme
{
  if (self->_theme != theme)
  {
    v4 = [theme copy];
    theme = self->_theme;
    self->_theme = v4;

    _subtitleColor = [(SKUIGiftItemView *)self _subtitleColor];
    [(UILabel *)self->_subtitleLabel1 setTextColor:_subtitleColor];
    [(UILabel *)self->_subtitleLabel2 setTextColor:_subtitleColor];
    _titleColor = [(SKUIGiftItemView *)self _titleColor];
    [(UILabel *)self->_titleLabel setTextColor:_titleColor];
    [(UILabel *)self->_userRatingCountLabel setTextColor:_titleColor];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SKUIGiftItemView *)self title];
  if (title != titleCopy && ([titleCopy isEqualToString:title] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (!titleCopy)
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v13 = self->_titleLabel;
      self->_titleLabel = 0;

LABEL_17:
      [(SKUIGiftItemView *)self setNeedsLayout];
      goto LABEL_18;
    }

    if (titleLabel)
    {
LABEL_16:
      [(UILabel *)titleLabel setText:?];
      goto LABEL_17;
    }

    _newLabel = [(SKUIGiftItemView *)self _newLabel];
    v7 = self->_titleLabel;
    self->_titleLabel = _newLabel;

    v8 = self->_titleLabel;
    _titleColor = [(SKUIGiftItemView *)self _titleColor];
    [(UILabel *)v8 setTextColor:_titleColor];

    itemStyle = self->_itemStyle;
    if ((itemStyle - 2) < 2)
    {
      v14 = self->_titleLabel;
      v15 = MEMORY[0x277D74300];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v18 = 16.0;
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v18 = 24.0;
      }

      v19 = v15;
    }

    else
    {
      if (itemStyle != 1)
      {
        if (!itemStyle)
        {
          v11 = self->_titleLabel;
          v12 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
          [(UILabel *)v11 setFont:v12];
        }

        goto LABEL_15;
      }

      v14 = self->_titleLabel;
      v19 = MEMORY[0x277D74300];
      v18 = 15.0;
    }

    v20 = [v19 systemFontOfSize:v18];
    [(UILabel *)v14 setFont:v20];

    [(UILabel *)self->_titleLabel setNumberOfLines:2];
LABEL_15:
    [(SKUIGiftItemView *)self addSubview:self->_titleLabel];
    titleLabel = self->_titleLabel;
    goto LABEL_16;
  }

LABEL_18:
}

- (void)setUserRating:(float)rating
{
  if (self->_userRating != rating)
  {
    self->_userRating = rating;
    [(SKUIGiftItemView *)self _reloadUserRatingViews];
  }
}

- (void)layoutSubviews
{
  [(SKUIGiftItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  leftToRight = [(SKUIGiftItemView *)self leftToRight];
  [(SKUIGiftItemView *)self _paddingTrailing];
  v69 = v4;
  if (leftToRight)
  {
    v9 = v4 - v8;
  }

  else
  {
    v9 = v8;
  }

  itemOfferButton = self->_itemOfferButton;
  if (itemOfferButton)
  {
    [(SKUIItemOfferButton *)itemOfferButton frame];
    v9 = v9 - v11;
  }

  [(SKUIGiftItemView *)self _imageSize];
  v13 = v12;
  rect = v14;
  [(SKUIGiftItemView *)self _imageEdgeInsets];
  v16 = v15;
  v68 = v17;
  v19 = v18;
  v21 = v20;
  leftToRight2 = [(SKUIGiftItemView *)self leftToRight];
  [(SKUIGiftItemView *)self _paddingLeading];
  v24 = v23;
  if (!leftToRight2)
  {
    v25 = v69 - v23;
    [(UIImageView *)self->_itemImageView frame];
    if (v25 - v26 == 0.0)
    {
      v24 = v13;
    }

    else
    {
      v24 = v25 - v26;
    }
  }

  v27 = v16 + (v6 - v16 - v19 - rect) * 0.5;
  v28 = floorf(v27);
  itemImageView = self->_itemImageView;
  if (itemImageView)
  {
    [(UIImageView *)itemImageView frame];
    v13 = v30;
    v32 = (rect - v31) * 0.5;
    [(UIImageView *)self->_itemImageView setFrame:v24, v28 + floorf(v32)];
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x3010000000;
  v80 = &unk_215F8ACD7;
  v81 = *MEMORY[0x277CBF348];
  if ([(SKUIGiftItemView *)self leftToRight])
  {
    v82.origin.x = v24;
    v82.origin.y = v28;
    v82.size.width = v13;
    v82.size.height = rect;
    v33 = v21 + CGRectGetMaxX(v82);
  }

  else
  {
    [(SKUIGiftItemView *)self _paddingTrailing];
  }

  v34 = v78;
  v78[4] = v33;
  v34[5] = v28;
  [(UILabel *)self->_titleLabel frame];
  v36 = v35;
  v37 = v78[4];
  [(SKUIGiftItemView *)self _paddingLeading];
  v39 = v38;
  [(SKUIGiftItemView *)self _paddingTrailing];
  v41 = v40;
  leftToRight3 = [(SKUIGiftItemView *)self leftToRight];
  v43 = v68;
  if (leftToRight3)
  {
    v43 = v21;
  }

  v44 = v69 - v39 - v41 - v13 - v43;
  [(UILabel *)self->_titleLabel sizeThatFits:v44, 1.79769313e308];
  v46 = v45;
  [(UILabel *)self->_titleLabel setFrame:v37, v36, v44, v45];
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __34__SKUIGiftItemView_layoutSubviews__block_invoke;
  v72[3] = &unk_2781FB360;
  v72[4] = &v73;
  [(SKUIGiftItemView *)self _enumerateMetadataViewsUsingBlock:v72];
  v47 = (rect - v74[3]) * 0.5;
  v78[5] = v28 + floorf(v47);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __34__SKUIGiftItemView_layoutSubviews__block_invoke_2;
  v71[3] = &unk_2781FB388;
  v71[4] = self;
  v71[5] = &v77;
  *&v71[6] = v9;
  *&v71[7] = v44;
  *&v71[8] = v37;
  *&v71[9] = v36;
  *&v71[10] = v44;
  *&v71[11] = v46;
  [(SKUIGiftItemView *)self _enumerateMetadataViewsUsingBlock:v71];
  if (self->_userRatingCountLabel)
  {
    [(UIImageView *)self->_starRatingImageView frame];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    [(UILabel *)self->_userRatingCountLabel frame];
    v57 = v56;
    if ([(SKUIGiftItemView *)self leftToRight])
    {
      v83.origin.x = v49;
      v83.origin.y = v51;
      v83.size.width = v53;
      v83.size.height = v55;
      v58 = CGRectGetMaxX(v83) + 3.0;
      v59 = v9 - v58;
      v9 = v58;
    }

    else
    {
      v59 = v49 + -3.0;
    }

    v60 = (v55 - v57) * 0.5;
    [(UILabel *)self->_userRatingCountLabel setFrame:v9, v51 + floorf(v60) + -1.0, v59, v57];
  }

  v61 = self->_itemOfferButton;
  if (v61)
  {
    [(SKUIItemOfferButton *)v61 frame];
    v63 = v62;
    v65 = v64;
    if ([(SKUIGiftItemView *)self leftToRight])
    {
      [(SKUIGiftItemView *)self _paddingTrailing];
      v67 = v69 - v66 - v63;
    }

    else
    {
      [(SKUIGiftItemView *)self _paddingTrailing];
    }

    [(SKUIItemOfferButton *)self->_itemOfferButton setFrame:v67, (rect - v65) * 0.5 + v28, v63, v65];
  }

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
}

double __34__SKUIGiftItemView_layoutSubviews__block_invoke(uint64_t a1, void *a2, double a3)
{
  [a2 frame];
  v6 = *(*(a1 + 32) + 8);
  result = *(v6 + 24) + v5 + a3;
  *(v6 + 24) = result;
  return result;
}

void __34__SKUIGiftItemView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  [v15 frame];
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = v9[61];
  v14 = [v9 leftToRight];
  if (v13 == v15)
  {
    if ((v14 & 1) == 0)
    {
      v12 = *(a1 + 64) + *(a1 + 80) - v6;
    }
  }

  else if (v14)
  {
    v6 = *(a1 + 48) - v12;
  }

  else
  {
    v6 = *(a1 + 56);
  }

  [v15 setFrame:{v12, v11, v6, v8}];
  v17.origin.x = v12;
  v17.origin.y = v11;
  v17.size.width = v6;
  v17.size.height = v8;
  *(*(*(a1 + 40) + 8) + 40) = CGRectGetMaxY(v17) + a3;
}

- (void)setBackgroundColor:(id)color
{
  itemImageView = self->_itemImageView;
  colorCopy = color;
  [(UIImageView *)itemImageView setBackgroundColor:colorCopy];
  [(SKUIItemOfferButton *)self->_itemOfferButton setBackgroundColor:colorCopy];
  [(UIImageView *)self->_starRatingImageView setBackgroundColor:colorCopy];
  [(UILabel *)self->_subtitleLabel1 setBackgroundColor:colorCopy];
  [(UILabel *)self->_subtitleLabel2 setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_userRatingCountLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIGiftItemView;
  [(SKUIGiftItemView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(SKUIGiftItemView *)self _imageEdgeInsets:fits.width];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUIGiftItemView *)self _imageSize];
  v12 = v11;
  v14 = v13;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  [(SKUIGiftItemView *)self _paddingTrailing];
  v16 = v15;
  [(SKUIGiftItemView *)self _paddingLeading];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __33__SKUIGiftItemView_sizeThatFits___block_invoke;
  v23[3] = &unk_2781FB3B0;
  *&v23[5] = width - v16 - v17 - v12 - v10;
  v23[4] = &v24;
  [(SKUIGiftItemView *)self _enumerateMetadataViewsUsingBlock:v23];
  v18 = v25[3];
  if (v14 >= v18)
  {
    v18 = v14;
  }

  v19 = v8 + v6 + v18;
  v20 = ceilf(v19);
  _Block_object_dispose(&v24, 8);
  v21 = width;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

double __33__SKUIGiftItemView_sizeThatFits___block_invoke(uint64_t a1, void *a2, double a3)
{
  [a2 sizeThatFits:{*(a1 + 40), 1.79769313e308}];
  v6 = *(*(a1 + 32) + 8);
  result = v5 + a3 + *(v6 + 24);
  *(v6 + 24) = result;
  return result;
}

- (void)_itemOfferConfirmAction:(id)action
{
  v5 = +[SKUIItemStateCenter defaultCenter];
  v4 = [v5 performActionForItem:self->_item clientContext:self->_clientContext];
}

- (void)_enumerateMetadataViewsUsingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v14[0] = self->_titleLabel;
  v14[1] = self->_subtitleLabel1;
  v5 = self->_subtitleLabel2;
  v15 = v5;
  v16 = 0;
  v12 = xmmword_215F3F030;
  v13 = unk_215F3F040;
  itemStyle = self->_itemStyle;
  if (itemStyle == 3 || itemStyle == 2)
  {
    *(&v12 + 1) = 0x4010000000000000;
    v15 = self->_starRatingImageView;
  }

  else if (!itemStyle)
  {
    *&v13 = 0x4010000000000000;
    v16 = self->_starRatingImageView;
  }

  v7 = 0;
  v8 = 0;
  v11 = 0;
  do
  {
    v9 = v14[v8];
    if (v9)
    {
      blockCopy[2](blockCopy, v9, &v11, *(&v12 + v8));
      v7 = v11;
    }

    if (v8 > 2)
    {
      break;
    }

    ++v8;
  }

  while ((v7 & 1) == 0);
  for (i = 3; i != -1; --i)
  {
  }
}

- (UIEdgeInsets)_imageEdgeInsets
{
  itemStyle = self->_itemStyle;
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 16);
  if (itemStyle == 2)
  {
    v5 = 30.0;
  }

  else
  {
    v5 = *(MEMORY[0x277D768C8] + 16);
  }

  if (itemStyle == 1)
  {
    v6 = 5.0;
  }

  else
  {
    v4 = v5;
    v6 = *MEMORY[0x277D768C8];
  }

  if (itemStyle)
  {
    v7 = v4;
  }

  else
  {
    v7 = 30.0;
  }

  if (itemStyle)
  {
    v8 = 9.0;
  }

  else
  {
    v8 = 8.0;
  }

  if (itemStyle)
  {
    v3 = v6;
  }

  v9 = v8;
  result.right = v9;
  result.bottom = v7;
  result.left = v8;
  result.top = v3;
  return result;
}

- (CGSize)_imageSize
{
  artworkContext = [(SKUIGiftItemView *)self artworkContext];
  [artworkContext imageSizeForItem:self->_item];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)_newLabel
{
  v2 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v2 setTextAlignment:4];
  orangeColor = [MEMORY[0x277D75348] orangeColor];
  [v2 setBackgroundColor:orangeColor];

  return v2;
}

- (double)_paddingLeading
{
  result = 0.0;
  if (!self->_itemStyle)
  {
    return 15.0;
  }

  return result;
}

- (double)_paddingTrailing
{
  result = 0.0;
  if (!self->_itemStyle)
  {
    return 15.0;
  }

  return result;
}

- (void)_reloadItemState:(BOOL)state
{
  if (self->_itemStyle == 3)
  {
    stateCopy = state;
    if ([(SKUIItemState *)self->_itemState state])
    {
      state = [(SKUIItemState *)self->_itemState state];
      [(SKUIItemOfferButton *)self->_itemOfferButton setHidden:state == 8];
      if (state != 8)
      {
        itemOfferButton = [(SKUIGiftItemView *)self itemOfferButton];
        [(SKUIItemOfferButton *)self->_itemOfferButton setValuesUsingItemOffer:0 itemState:self->_itemState clientContext:self->_clientContext animated:stateCopy];
        [(SKUIItemOfferButton *)self->_itemOfferButton sizeToFit];
      }
    }

    else
    {
      [(SKUIItemOfferButton *)self->_itemOfferButton setHidden:1];
    }

    [(SKUIGiftItemView *)self setNeedsLayout];
  }
}

- (void)_reloadSubtitles
{
  itemStyle = self->_itemStyle;
  if (itemStyle > 1)
  {
    if (itemStyle == 2)
    {
      v4 = 0;
      v6 = 416;
    }

    else
    {
      v25 = 0;
      v4 = 0;
      if (itemStyle != 3)
      {
        goto LABEL_13;
      }

      v4 = 0;
      v6 = 408;
    }

    v7 = *(&self->super.super.super.isa + v6);
    v25 = v7;
  }

  else
  {
    if (itemStyle)
    {
      v25 = 0;
      v4 = 0;
      if (itemStyle != 1)
      {
        goto LABEL_13;
      }

      v25 = self->_artistName;
      v5 = 416;
    }

    else
    {
      v25 = self->_categoryName;
      v5 = 480;
    }

    v7 = *(&self->super.super.super.isa + v5);
    v4 = v7;
  }

  v8 = v7;
  itemStyle = self->_itemStyle;
LABEL_13:
  if (itemStyle > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277D74300] systemFontOfSize:dbl_215F3F050[itemStyle]];
  }

  text = [(UILabel *)self->_subtitleLabel2 text];
  if (v25 != text && ![(NSString *)v4 isEqualToString:text])
  {
    subtitleLabel2 = self->_subtitleLabel2;
    if (v25)
    {
      if (!subtitleLabel2)
      {
        _newLabel = [(SKUIGiftItemView *)self _newLabel];
        v13 = self->_subtitleLabel2;
        self->_subtitleLabel2 = _newLabel;

        [(UILabel *)self->_subtitleLabel2 setFont:v9];
        v14 = self->_subtitleLabel2;
        _subtitleColor = [(SKUIGiftItemView *)self _subtitleColor];
        [(UILabel *)v14 setTextColor:_subtitleColor];

        [(SKUIGiftItemView *)self addSubview:self->_subtitleLabel2];
        subtitleLabel2 = self->_subtitleLabel2;
      }

      [(UILabel *)subtitleLabel2 setText:v4];
      [(UILabel *)self->_subtitleLabel2 sizeToFit];
    }

    else
    {
      [(UILabel *)subtitleLabel2 removeFromSuperview];
      v16 = self->_subtitleLabel2;
      self->_subtitleLabel2 = 0;
    }
  }

  text2 = [(UILabel *)self->_subtitleLabel1 text];

  if (v25 != text2 && ![(NSString *)v25 isEqualToString:text2])
  {
    subtitleLabel1 = self->_subtitleLabel1;
    v19 = v25;
    if (v25)
    {
      if (!subtitleLabel1)
      {
        _newLabel2 = [(SKUIGiftItemView *)self _newLabel];
        v21 = self->_subtitleLabel1;
        self->_subtitleLabel1 = _newLabel2;

        [(UILabel *)self->_subtitleLabel1 setFont:v9];
        v22 = self->_subtitleLabel1;
        _subtitleColor2 = [(SKUIGiftItemView *)self _subtitleColor];
        [(UILabel *)v22 setTextColor:_subtitleColor2];

        [(SKUIGiftItemView *)self addSubview:self->_subtitleLabel1];
        v19 = v25;
        subtitleLabel1 = self->_subtitleLabel1;
      }

      v25 = v19;
      [(UILabel *)subtitleLabel1 setText:v19];
      [(UILabel *)self->_subtitleLabel1 sizeToFit];
    }

    else
    {
      [(UILabel *)subtitleLabel1 removeFromSuperview];
      v24 = self->_subtitleLabel1;
      self->_subtitleLabel1 = 0;
    }
  }
}

- (void)_reloadUserRatingViews
{
  if (self->_numberOfUserRatings < 1 || self->_itemStyle == 1)
  {
    [(UILabel *)self->_userRatingCountLabel removeFromSuperview];
    userRatingCountLabel = self->_userRatingCountLabel;
    self->_userRatingCountLabel = 0;

    [(UIImageView *)self->_starRatingImageView removeFromSuperview];
    starRatingImageView = self->_starRatingImageView;
    self->_starRatingImageView = 0;
  }

  else
  {
    if (!self->_userRatingCountLabel)
    {
      _newLabel = [(SKUIGiftItemView *)self _newLabel];
      v6 = self->_userRatingCountLabel;
      self->_userRatingCountLabel = _newLabel;

      v7 = self->_userRatingCountLabel;
      v8 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
      [(UILabel *)v7 setFont:v8];

      v9 = self->_userRatingCountLabel;
      _userRatingColor = [(SKUIGiftItemView *)self _userRatingColor];
      [(UILabel *)v9 setTextColor:_userRatingColor];

      [(SKUIGiftItemView *)self addSubview:self->_userRatingCountLabel];
    }

    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v11 setNumberStyle:1];
    [v11 setUsesGroupingSeparator:0];
    v12 = self->_userRatingCountLabel;
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfUserRatings];
    v15 = [v11 stringFromNumber:v14];
    v16 = [v13 stringWithFormat:@"(%@)", v15];
    [(UILabel *)v12 setText:v16];

    [(UILabel *)self->_userRatingCountLabel sizeToFit];
    if (!self->_starRatingImageView)
    {
      v17 = objc_alloc_init(MEMORY[0x277D755E8]);
      v18 = self->_starRatingImageView;
      self->_starRatingImageView = v17;

      v19 = self->_starRatingImageView;
      backgroundColor = [(SKUIGiftItemView *)self backgroundColor];
      [(UIImageView *)v19 setBackgroundColor:backgroundColor];

      [(UIImageView *)self->_starRatingImageView setContentMode:7];
      [(SKUIGiftItemView *)self addSubview:self->_starRatingImageView];
    }

    starRatingImageView = [SKUIRatingStarsCache cacheWithProperties:1];
    v21 = self->_starRatingImageView;
    v22 = [starRatingImageView ratingStarsImageForRating:self->_userRating];
    [(UIImageView *)v21 setImage:v22];

    [(UIImageView *)self->_starRatingImageView sizeToFit];
  }

  [(SKUIGiftItemView *)self setNeedsLayout];
}

- (id)_subtitleColor
{
  theme = self->_theme;
  if (theme)
  {
    [(SKUIGiftTheme *)theme bodyTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] _secondaryLabelColor];
  }
  v3 = ;

  return v3;
}

- (id)_titleColor
{
  theme = self->_theme;
  if (theme)
  {
    [(SKUIGiftTheme *)theme primaryTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] _labelColor];
  }
  v3 = ;

  return v3;
}

- (id)_userRatingColor
{
  theme = self->_theme;
  if (theme)
  {
    [(SKUIGiftTheme *)theme primaryTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] _secondaryLabelColor];
  }
  v3 = ;

  return v3;
}

- (void)initWithStyle:item:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftItemView initWithStyle:item:clientContext:]";
}

@end