@interface SKUIProductPageHeaderView
- (SKUIProductPageHeaderView)initWithClientContext:(id)a3;
- (void)_cancelConfirmationAction:(id)a3;
- (void)_finishButtonAnimation;
- (void)_getBottomLayoutProperties:(id *)a3 origins:(double *)a4 height:(double *)a5 forWidth:(double)a6;
- (void)_getTopLayoutProperties:(id *)a3 origins:(double *)a4 height:(double *)a5 forWidth:(double)a6;
- (void)_reloadItemOfferButton:(BOOL)a3;
- (void)_showConfirmationAction:(id)a3;
- (void)contentRatingArtworkLoader:(id)a3 didLoadImage:(id)a4 forContentRating:(id)a5;
- (void)dealloc;
- (void)itemOfferButtonWillAnimateTransition:(id)a3;
- (void)layoutSubviews;
- (void)setAgeBandString:(id)a3;
- (void)setArtistName:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setContentRating:(id)a3;
- (void)setContentRatingArtworkLoader:(id)a3;
- (void)setEditorialBadge:(id)a3;
- (void)setHeaderImage:(id)a3;
- (void)setHeaderImageHeight:(double)a3;
- (void)setIconImage:(id)a3;
- (void)setInAppPurchasesString:(id)a3;
- (void)setItemOffer:(id)a3;
- (void)setItemOfferExplanationText:(id)a3;
- (void)setItemOfferExplanationTitle:(id)a3;
- (void)setItemState:(id)a3 animated:(BOOL)a4;
- (void)setNumberOfUserRatings:(int64_t)a3;
- (void)setRestricted:(BOOL)a3;
- (void)setSecondaryContentRating:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserRating:(double)a3;
- (void)sizeToFit;
@end

@implementation SKUIProductPageHeaderView

- (SKUIProductPageHeaderView)initWithClientContext:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageHeaderView initWithClientContext:];
  }

  v17.receiver = self;
  v17.super_class = SKUIProductPageHeaderView;
  v6 = [(SKUIProductPageHeaderView *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
    if (SKUIUserInterfaceIdiom(v7->_clientContext) == 1)
    {
      v8 = [MEMORY[0x277D755B8] kitImageNamed:@"UIButtonBarAction"];
      v9 = objc_alloc_init(MEMORY[0x277D75220]);
      shareButton = v7->_shareButton;
      v7->_shareButton = v9;

      LODWORD(v11) = -1.0;
      [(UIButton *)v7->_shareButton setCharge:v11];
      v12 = v7->_shareButton;
      v13 = [(SKUIColorScheme *)v7->_colorScheme secondaryTextColor];
      v14 = v13;
      if (!v13)
      {
        v14 = [(SKUIProductPageHeaderView *)v7 tintColor];
      }

      v15 = [v8 _flatImageWithColor:v14];
      [(UIButton *)v12 setImage:v15 forState:0];

      if (!v13)
      {
      }

      [(SKUIProductPageHeaderView *)v7 addSubview:v7->_shareButton];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(SKUIItemOfferButton *)self->_itemOfferButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  [(SKUIItemOfferButton *)self->_itemOfferButton setDelegate:0];
  contentRatingArtworkLoader = self->_contentRatingArtworkLoader;
  if (contentRatingArtworkLoader)
  {
    [(SKUIContentRatingArtworkResourceLoader *)contentRatingArtworkLoader removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = SKUIProductPageHeaderView;
  [(SKUIProductPageHeaderView *)&v4 dealloc];
}

- (void)setAgeBandString:(id)a3
{
  v19 = a3;
  v4 = [(SKUIProductPageHeaderView *)self ageBandString];
  v5 = [v19 isEqualToString:v4];

  v7 = v19;
  if ((v5 & 1) == 0)
  {
    ageBandLabel = self->_ageBandLabel;
    if (v19)
    {
      if (!ageBandLabel)
      {
        v9 = objc_alloc_init(MEMORY[0x277D756B8]);
        v10 = self->_ageBandLabel;
        self->_ageBandLabel = v9;

        v11 = self->_ageBandLabel;
        v12 = [(SKUIProductPageHeaderView *)self backgroundColor];
        [(UILabel *)v11 setBackgroundColor:v12];

        v13 = self->_ageBandLabel;
        v14 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
        [(UILabel *)v13 setFont:v14];

        v15 = self->_ageBandLabel;
        v16 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
        if (v16)
        {
          [(UILabel *)v15 setTextColor:v16];
        }

        else
        {
          v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.400000006];
          [(UILabel *)v15 setTextColor:v18];
        }

        [(SKUIProductPageHeaderView *)self addSubview:self->_ageBandLabel];
        ageBandLabel = self->_ageBandLabel;
        v7 = v19;
      }

      [(UILabel *)ageBandLabel setText:v7];
      [(UILabel *)self->_ageBandLabel sizeToFit];
    }

    else
    {
      [(UILabel *)ageBandLabel removeFromSuperview];
      v17 = self->_ageBandLabel;
      self->_ageBandLabel = 0;
    }

    v6 = [(SKUIProductPageHeaderView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v6);
}

- (void)setArtistName:(id)a3
{
  v19 = a3;
  v4 = [(SKUIProductPageHeaderView *)self artistName];
  if (v4 != v19 && ([v4 isEqualToString:v19] & 1) == 0)
  {
    artistButton = self->_artistButton;
    if (v19)
    {
      if (!artistButton)
      {
        v6 = [[SKUILinkButton alloc] initWithArrowStyle:1];
        v7 = self->_artistButton;
        self->_artistButton = &v6->super;

        v8 = self->_artistButton;
        if (self->_headerImageHeight == 0.0)
        {
          [(SKUIProductPageHeaderView *)self backgroundColor];
        }

        else
        {
          [MEMORY[0x277D75348] clearColor];
        }
        v10 = ;
        [(UIButton *)v8 setBackgroundColor:v10];

        v11 = [(UIButton *)self->_artistButton titleLabel];
        v12 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [v11 setFont:v12];

        v13 = self->_artistButton;
        v14 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
        if (v14)
        {
          [(UIButton *)v13 setTitleColor:v14 forState:0];
        }

        else
        {
          v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.800000012];
          [(UIButton *)v13 setTitleColor:v15 forState:0];
        }

        v16 = self->_artistButton;
        v17 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
        if (v17)
        {
          [(UIButton *)v16 setTitleColor:v17 forState:1];
        }

        else
        {
          v18 = [MEMORY[0x277D75348] blackColor];
          [(UIButton *)v16 setTitleColor:v18 forState:1];
        }

        [(SKUIProductPageHeaderView *)self addSubview:self->_artistButton];
        artistButton = self->_artistButton;
      }

      [UIButton setTitle:"setTitle:forState:" forState:?];
      [(SKUIProductPageHeaderView *)self addSubview:self->_artistButton];
    }

    else
    {
      [(UIButton *)artistButton removeFromSuperview];
      v9 = self->_artistButton;
      self->_artistButton = 0;
    }

    [(SKUIProductPageHeaderView *)self setNeedsLayout];
  }
}

- (void)setContentRatingArtworkLoader:(id)a3
{
  v5 = a3;
  contentRatingArtworkLoader = self->_contentRatingArtworkLoader;
  if (contentRatingArtworkLoader != v5)
  {
    v7 = v5;
    [(SKUIContentRatingArtworkResourceLoader *)contentRatingArtworkLoader removeObserver:self];
    objc_storeStrong(&self->_contentRatingArtworkLoader, a3);
    contentRatingArtworkLoader = [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader addObserver:self];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](contentRatingArtworkLoader, v5);
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v30 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    v6 = [(SKUIProductPageHeaderView *)self backgroundColor];
    [(SKUIProductPageHeaderView *)self setBackgroundColor:v6];

    artistButton = self->_artistButton;
    v8 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v8)
    {
      [(UIButton *)artistButton setTitleColor:v8 forState:0];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.800000012];
      [(UIButton *)artistButton setTitleColor:v9 forState:0];
    }

    inAppPurchasesLabel = self->_inAppPurchasesLabel;
    v11 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v11)
    {
      [(UILabel *)inAppPurchasesLabel setTextColor:v11];
    }

    else
    {
      v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.400000006];
      [(UILabel *)inAppPurchasesLabel setTextColor:v12];
    }

    ageBandLabel = self->_ageBandLabel;
    v14 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v14)
    {
      [(UILabel *)ageBandLabel setTextColor:v14];
    }

    else
    {
      v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.400000006];
      [(UILabel *)ageBandLabel setTextColor:v15];
    }

    titleLabel = self->_titleLabel;
    v17 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v17)
    {
      [(SKUIProductPageHeaderLabel *)titleLabel setTextColor:v17];
    }

    else
    {
      v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
      [(SKUIProductPageHeaderLabel *)titleLabel setTextColor:v18];
    }

    userRatingLabel = self->_userRatingLabel;
    v20 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v20)
    {
      [(UILabel *)userRatingLabel setTextColor:v20];
    }

    else
    {
      v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
      [(UILabel *)userRatingLabel setTextColor:v21];
    }

    editorialBadgeLabel = self->_editorialBadgeLabel;
    v23 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v23)
    {
      [(SKUIBadgeLabel *)editorialBadgeLabel setBackgroundColor:v23];
    }

    else
    {
      v24 = +[SKUIBadgeLabel defaultBackgroundColor];
      [(SKUIBadgeLabel *)editorialBadgeLabel setBackgroundColor:v24];
    }

    v25 = [MEMORY[0x277D755B8] kitImageNamed:@"UIButtonBarAction"];
    shareButton = self->_shareButton;
    v27 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    v28 = v27;
    if (!v27)
    {
      v28 = [(SKUIProductPageHeaderView *)self tintColor];
    }

    v29 = [v25 _flatImageWithColor:v28];
    [(UIButton *)shareButton setImage:v29 forState:0];

    if (!v27)
    {
    }

    v5 = v30;
  }
}

- (void)setContentRating:(id)a3
{
  v5 = a3;
  if (self->_contentRating != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_contentRating, a3);
    titleLabel = self->_titleLabel;
    v7 = [(SKUIItemContentRating *)self->_contentRating contentRatingName];
    [(SKUIProductPageHeaderLabel *)titleLabel setContentRating:v7];

    [(SKUIProductPageHeaderView *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setEditorialBadge:(id)a3
{
  v15 = a3;
  v4 = [(SKUIBadgeLabel *)self->_editorialBadgeLabel text];
  if (v4 != v15 && ([v4 isEqualToString:v15] & 1) == 0)
  {
    editorialBadgeLabel = self->_editorialBadgeLabel;
    if (v15)
    {
      if (!editorialBadgeLabel)
      {
        v6 = objc_alloc_init(SKUIBadgeLabel);
        v7 = self->_editorialBadgeLabel;
        self->_editorialBadgeLabel = v6;

        v8 = self->_editorialBadgeLabel;
        v9 = [(SKUIProductPageHeaderView *)self backgroundColor];
        if (v9)
        {
          [(SKUIBadgeLabel *)v8 setTextColor:v9];
        }

        else
        {
          v11 = +[SKUIBadgeLabel defaultTextColor];
          [(SKUIBadgeLabel *)v8 setTextColor:v11];
        }

        v12 = self->_editorialBadgeLabel;
        v13 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
        if (v13)
        {
          [(SKUIBadgeLabel *)v12 setBackgroundColor:v13];
        }

        else
        {
          v14 = +[SKUIBadgeLabel defaultBackgroundColor];
          [(SKUIBadgeLabel *)v12 setBackgroundColor:v14];
        }

        [(SKUIProductPageHeaderView *)self addSubview:self->_editorialBadgeLabel];
        editorialBadgeLabel = self->_editorialBadgeLabel;
      }

      [(SKUIBadgeLabel *)editorialBadgeLabel setText:?];
    }

    else
    {
      [(SKUIBadgeLabel *)editorialBadgeLabel removeFromSuperview];
      v10 = self->_editorialBadgeLabel;
      self->_editorialBadgeLabel = 0;
    }

    [(SKUIProductPageHeaderView *)self setNeedsLayout];
  }
}

- (void)setHeaderImage:(id)a3
{
  v12 = a3;
  v4 = [(UIImageView *)self->_headerImageView image];

  if (v4 != v12)
  {
    headerImageView = self->_headerImageView;
    if (v12)
    {
      if (!headerImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_headerImageView;
        self->_headerImageView = v7;

        v9 = self->_headerImageView;
        v10 = [(SKUIProductPageHeaderView *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:v10];

        [(SKUIProductPageHeaderView *)self addSubview:self->_headerImageView];
        headerImageView = self->_headerImageView;
      }

      [(UIImageView *)headerImageView setImage:?];
      [(UIImageView *)self->_headerImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)headerImageView removeFromSuperview];
      v11 = self->_headerImageView;
      self->_headerImageView = 0;
    }

    v5 = [(SKUIProductPageHeaderView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v5);
}

- (void)setHeaderImageHeight:(double)a3
{
  if (self->_headerImageHeight != a3)
  {
    self->_headerImageHeight = a3;
    [(SKUIProductPageHeaderView *)self setNeedsLayout];
  }
}

- (void)setIconImage:(id)a3
{
  v12 = a3;
  v4 = [(UIImageView *)self->_iconImageView image];

  if (v4 != v12)
  {
    iconImageView = self->_iconImageView;
    if (v12)
    {
      if (!iconImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_iconImageView;
        self->_iconImageView = v7;

        v9 = self->_iconImageView;
        if (self->_headerImageHeight == 0.0)
        {
          [(SKUIProductPageHeaderView *)self backgroundColor];
        }

        else
        {
          [MEMORY[0x277D75348] clearColor];
        }
        v11 = ;
        [(UIImageView *)v9 setBackgroundColor:v11];

        [(SKUIProductPageHeaderView *)self addSubview:self->_iconImageView];
        iconImageView = self->_iconImageView;
      }

      [(UIImageView *)iconImageView setImage:?];
      [(UIImageView *)self->_iconImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)iconImageView removeFromSuperview];
      v10 = self->_iconImageView;
      self->_iconImageView = 0;
    }

    v5 = [(SKUIProductPageHeaderView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v5);
}

- (void)setInAppPurchasesString:(id)a3
{
  v16 = a3;
  v4 = [(UILabel *)self->_inAppPurchasesLabel text];
  if (v4 != v16 && ([v4 isEqualToString:v16] & 1) == 0)
  {
    inAppPurchasesLabel = self->_inAppPurchasesLabel;
    if (v16)
    {
      if (!inAppPurchasesLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_inAppPurchasesLabel;
        self->_inAppPurchasesLabel = v6;

        v8 = self->_inAppPurchasesLabel;
        v9 = [(SKUIProductPageHeaderView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_inAppPurchasesLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_inAppPurchasesLabel;
        v13 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
        if (v13)
        {
          [(UILabel *)v12 setTextColor:v13];
        }

        else
        {
          v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.400000006];
          [(UILabel *)v12 setTextColor:v15];
        }

        [(SKUIProductPageHeaderView *)self addSubview:self->_inAppPurchasesLabel];
        inAppPurchasesLabel = self->_inAppPurchasesLabel;
      }

      [(UILabel *)inAppPurchasesLabel setText:?];
      [(UILabel *)self->_inAppPurchasesLabel sizeToFit];
    }

    else
    {
      [(UILabel *)inAppPurchasesLabel removeFromSuperview];
      v14 = self->_inAppPurchasesLabel;
      self->_inAppPurchasesLabel = 0;
    }

    [(SKUIProductPageHeaderView *)self setNeedsLayout];
  }
}

- (void)setItemOffer:(id)a3
{
  v5 = a3;
  if (self->_itemOffer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_itemOffer, a3);
    [(SKUIProductPageHeaderView *)self _reloadItemOfferButton:0];
    v5 = v6;
  }
}

- (void)setItemOfferExplanationText:(id)a3
{
  v17 = a3;
  v4 = [(UILabel *)self->_itemOfferExplanationLabel text];
  v5 = [v4 isEqualToString:v17];

  if ((v5 & 1) == 0)
  {
    itemOfferExplanationLabel = self->_itemOfferExplanationLabel;
    v7 = v17;
    if (v17)
    {
      if (!itemOfferExplanationLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_itemOfferExplanationLabel;
        self->_itemOfferExplanationLabel = v8;

        v10 = self->_itemOfferExplanationLabel;
        v11 = [(SKUIProductPageHeaderView *)self backgroundColor];
        [(UILabel *)v10 setBackgroundColor:v11];

        v12 = self->_itemOfferExplanationLabel;
        v13 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
        [(UILabel *)v12 setFont:v13];

        v14 = self->_itemOfferExplanationLabel;
        v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
        [(UILabel *)v14 setTextColor:v15];

        [(SKUIProductPageHeaderView *)self addSubview:self->_itemOfferExplanationLabel];
        v7 = v17;
        itemOfferExplanationLabel = self->_itemOfferExplanationLabel;
      }

      [(UILabel *)itemOfferExplanationLabel setText:v7];
      [(SKUIProductPageHeaderView *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)itemOfferExplanationLabel removeFromSuperview];
      v16 = self->_itemOfferExplanationLabel;
      self->_itemOfferExplanationLabel = 0;
    }
  }
}

- (void)setItemOfferExplanationTitle:(id)a3
{
  v17 = a3;
  v4 = [(UILabel *)self->_itemOfferExplanationTitleLabel text];
  v5 = [v4 isEqualToString:v17];

  if ((v5 & 1) == 0)
  {
    itemOfferExplanationTitleLabel = self->_itemOfferExplanationTitleLabel;
    v7 = v17;
    if (v17)
    {
      if (!itemOfferExplanationTitleLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_itemOfferExplanationTitleLabel;
        self->_itemOfferExplanationTitleLabel = v8;

        v10 = self->_itemOfferExplanationTitleLabel;
        v11 = [(SKUIProductPageHeaderView *)self backgroundColor];
        [(UILabel *)v10 setBackgroundColor:v11];

        v12 = self->_itemOfferExplanationTitleLabel;
        v13 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
        [(UILabel *)v12 setFont:v13];

        v14 = self->_itemOfferExplanationTitleLabel;
        v15 = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)v14 setTextColor:v15];

        [(SKUIProductPageHeaderView *)self addSubview:self->_itemOfferExplanationTitleLabel];
        v7 = v17;
        itemOfferExplanationTitleLabel = self->_itemOfferExplanationTitleLabel;
      }

      [(UILabel *)itemOfferExplanationTitleLabel setText:v7];
      [(SKUIProductPageHeaderView *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)itemOfferExplanationTitleLabel removeFromSuperview];
      v16 = self->_itemOfferExplanationTitleLabel;
      self->_itemOfferExplanationTitleLabel = 0;
    }
  }
}

- (void)setItemState:(id)a3 animated:(BOOL)a4
{
  if (self->_itemState != a3)
  {
    v4 = a4;
    v6 = [a3 copy];
    itemState = self->_itemState;
    self->_itemState = v6;

    [(SKUIProductPageHeaderView *)self _reloadItemOfferButton:v4];
  }
}

- (void)setNumberOfUserRatings:(int64_t)a3
{
  if (self->_numberOfUserRatings == a3 && self->_userRatingLabel)
  {
    return;
  }

  self->_numberOfUserRatings = a3;
  if (!self->_userRatingLabel)
  {
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    userRatingLabel = self->_userRatingLabel;
    self->_userRatingLabel = v10;

    v12 = self->_userRatingLabel;
    v13 = [(SKUIProductPageHeaderView *)self backgroundColor];
    [(UILabel *)v12 setBackgroundColor:v13];

    v14 = self->_userRatingLabel;
    v15 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(UILabel *)v14 setFont:v15];

    v16 = self->_userRatingLabel;
    v17 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v17)
    {
      [(UILabel *)v16 setTextColor:v17];
    }

    else
    {
      v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
      [(UILabel *)v16 setTextColor:v18];
    }

    [(SKUIProductPageHeaderView *)self addSubview:self->_userRatingLabel];
    if (self->_numberOfUserRatings)
    {
      goto LABEL_5;
    }

LABEL_10:
    v19 = self->_userRatingLabel;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"NO_RATINGS"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"NO_RATINGS" inBundles:0];
    }
    v4 = ;
    [(UILabel *)v19 setText:v4];
    goto LABEL_14;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v4 setNumberStyle:1];
  v5 = self->_userRatingLabel;
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfUserRatings];
  v8 = [v4 stringFromNumber:v7];
  v9 = [v6 stringWithFormat:@"(%@)", v8];
  [(UILabel *)v5 setText:v9];

LABEL_14:

  [(SKUIProductPageHeaderView *)self setNeedsLayout];
}

- (void)setRestricted:(BOOL)a3
{
  if (self->_restricted != a3)
  {
    self->_restricted = a3;
    [(SKUIProductPageHeaderView *)self _reloadItemOfferButton:0];
  }
}

- (void)setTitle:(id)a3
{
  v18 = a3;
  v4 = [(SKUIProductPageHeaderLabel *)self->_titleLabel text];
  if (v4 != v18 && ([v4 isEqualToString:v18] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v18)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(SKUIProductPageHeaderLabel);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        [(SKUIProductPageHeaderLabel *)self->_titleLabel setIsPad:SKUIUserInterfaceIdiom(self->_clientContext) == 1];
        v8 = self->_titleLabel;
        if (self->_headerImageHeight == 0.0)
        {
          [(SKUIProductPageHeaderView *)self backgroundColor];
        }

        else
        {
          [MEMORY[0x277D75348] clearColor];
        }
        v10 = ;
        [(SKUIProductPageHeaderLabel *)v8 setBackgroundColor:v10];

        v11 = self->_titleLabel;
        v12 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v12)
        {
          [(SKUIProductPageHeaderLabel *)v11 setRatingColor:v12];
        }

        else
        {
          v13 = [MEMORY[0x277D75348] colorWithWhite:0.62745098 alpha:1.0];
          [(SKUIProductPageHeaderLabel *)v11 setRatingColor:v13];
        }

        v14 = self->_titleLabel;
        v15 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v15)
        {
          [(SKUIProductPageHeaderLabel *)v14 setTextColor:v15];
        }

        else
        {
          v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
          [(SKUIProductPageHeaderLabel *)v14 setTextColor:v16];
        }

        [(SKUIProductPageHeaderView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(SKUIProductPageHeaderLabel *)titleLabel setText:?];
      v17 = self->_titleLabel;
      v9 = [(SKUIProductPageHeaderView *)self contentRatingName];
      [(SKUIProductPageHeaderLabel *)v17 setContentRating:v9];
    }

    else
    {
      [(SKUIProductPageHeaderLabel *)titleLabel removeFromSuperview];
      v9 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIProductPageHeaderView *)self setNeedsLayout];
  }
}

- (void)setSecondaryContentRating:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader cachedImageForContentRating:v4 withClientContext:self->_clientContext];
  v6 = v5;
  if (v5)
  {
    titleLabel = self->_titleLabel;
    v9[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(SKUIProductPageHeaderLabel *)titleLabel setSecondaryContentRatingImages:v8];

    [(SKUIProductPageHeaderView *)self setNeedsLayout];
  }

  else
  {
    [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader loadImageForContentRating:v4 clientContent:self->_clientContext reason:1];
  }
}

- (void)setUserRating:(double)a3
{
  if (self->_userRating != a3 || !self->_userRatingStarsView)
  {
    self->_userRating = a3;
    if (!self->_userRatingStarsView)
    {
      v4 = objc_alloc_init(MEMORY[0x277D755E8]);
      userRatingStarsView = self->_userRatingStarsView;
      self->_userRatingStarsView = v4;

      v6 = self->_userRatingStarsView;
      v7 = [(SKUIProductPageHeaderView *)self backgroundColor];
      [(UIImageView *)v6 setBackgroundColor:v7];

      [(SKUIProductPageHeaderView *)self addSubview:self->_userRatingStarsView];
    }

    v10 = [SKUIRatingStarsCache cacheWithProperties:1];
    v8 = self->_userRatingStarsView;
    v9 = [v10 ratingStarsImageForRating:self->_userRating];
    [(UIImageView *)v8 setImage:v9];

    [(UIImageView *)self->_userRatingStarsView sizeToFit];
  }
}

- (void)layoutSubviews
{
  v106 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIItemOfferButton *)self->_itemOfferButton layer];
  v4 = [v3 animationKeys];
  v5 = [v4 count];

  if (v5)
  {
    self->_needsLayoutAfterButtonAnimation = 1;
    return;
  }

  [(SKUIProductPageHeaderView *)self bounds];
  v7 = v6;
  v8 = SKUIUserInterfaceIdiom(self->_clientContext) == 1;
  if (self->_headerImageView)
  {
    [(SKUIProductPageHeaderView *)self sendSubviewToBack:?];
    [(UIImageView *)self->_headerImageView sizeToFit];
    [(UIImageView *)self->_headerImageView frame];
    [(UIImageView *)self->_headerImageView setFrame:0.0, 0.0];
  }

  headerImageHeight = self->_headerImageHeight;
  v10 = 0.0;
  v11 = headerImageHeight + 0.0 + 15.0;
  iconImageView = self->_iconImageView;
  if (iconImageView)
  {
    [(UIImageView *)iconImageView frame];
    v14 = v13;
    v16 = v15;
    [(UIImageView *)self->_iconImageView setFrame:15.0, headerImageHeight + 0.0 + 15.0];
    v107.origin.x = 15.0;
    v107.origin.y = headerImageHeight + 0.0 + 15.0;
    v107.size.width = v14;
    v107.size.height = v16;
    v10 = CGRectGetMaxX(v107) + 15.0;
  }

  v17 = v7 + -15.0;
  shareButton = self->_shareButton;
  v19 = MEMORY[0x277CBF390];
  MinX = v7 + -15.0;
  if (shareButton)
  {
    [(UIButton *)shareButton frame];
    [(UIButton *)self->_shareButton sizeThatFits:*(v19 + 16), *(v19 + 24)];
    v22 = v21;
    v24 = v23;
    v25 = v17 - v21;
    [(UIButton *)self->_shareButton setFrame:v17 - v21, headerImageHeight + 0.0 + 15.0, v21, v23];
    v108.origin.x = v25;
    v108.origin.y = headerImageHeight + 0.0 + 15.0;
    v108.size.width = v22;
    v108.size.height = v24;
    MinX = CGRectGetMinX(v108);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  memset(v93, 0, sizeof(v93));
  v83 = v93;
  v92 = 0.0;
  v90 = 0u;
  v91 = 0u;
  v81 = 0.0;
  v82 = &v90;
  v26 = MinX - v10;
  [(SKUIProductPageHeaderView *)self _getTopLayoutProperties:&v83 origins:&v82 height:&v81 forWidth:MinX - v10];
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(SKUIProductPageHeaderLabel *)titleLabel setFrame:v10, v11 + *&v90, v93[0]];
  }

  artistButton = self->_artistButton;
  if (artistButton)
  {
    [(UIButton *)artistButton setFrame:v10, v11 + *(&v90 + 1), v94];
  }

  editorialBadgeLabel = self->_editorialBadgeLabel;
  if (editorialBadgeLabel)
  {
    [(SKUIBadgeLabel *)editorialBadgeLabel setFrame:v10, v11 + *&v91, v97];
  }

  inAppPurchasesLabel = self->_inAppPurchasesLabel;
  if (inAppPurchasesLabel)
  {
    [(UILabel *)inAppPurchasesLabel setFrame:v10, v11 + *(&v91 + 1), v100];
  }

  v31 = dbl_215F3FAA0[v8];
  ageBandLabel = self->_ageBandLabel;
  if (ageBandLabel)
  {
    [(UILabel *)ageBandLabel setFrame:v10, v11 + v92, v103];
  }

  v33 = v31 + headerImageHeight;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  memset(v86, 0, sizeof(v86));
  v83 = v86;
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v82 = v84;
  v80 = 0.0;
  [(SKUIProductPageHeaderView *)self _getBottomLayoutProperties:&v83 origins:&v82 height:&v80 forWidth:v26];
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    v34 = v11 + v81;
    v35 = SKUIUserInterfaceIdiom(self->_clientContext);
    v36 = 7.0;
    if (v35 == 1)
    {
      v36 = 11.0;
    }

    goto LABEL_37;
  }

  v37 = v81 + v80;
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    v38 = 11.0;
  }

  else
  {
    v38 = 7.0;
  }

  v39 = v37 + v38;
  v40 = SKUIUserInterfaceIdiom(self->_clientContext);
  v41 = 100.0;
  if (v40 == 1)
  {
    v41 = 170.0;
  }

  if (v39 >= v41)
  {
    v43 = v11 + v81;
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v44 = 11.0;
    }

    else
    {
      v44 = 7.0;
    }

    v33 = v80 + v43 + v44;
    v34 = v11 + v81;
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v36 = 11.0;
    }

    else
    {
      v36 = 7.0;
    }

LABEL_37:
    v42 = v34 + v36;
    goto LABEL_38;
  }

  v42 = v33 - v80;
LABEL_38:
  if (self->_userRatingLabel)
  {
    userRatingStarsView = self->_userRatingStarsView;
    v46 = v10;
    if (userRatingStarsView)
    {
      v47 = [(UIImageView *)userRatingStarsView isHidden];
      v46 = v10;
      if ((v47 & 1) == 0)
      {
        [(UIImageView *)self->_userRatingStarsView frame];
        [(UIImageView *)self->_userRatingStarsView setFrame:v10, v42 + *(v84 + 1) + 2.0];
        [(UIImageView *)self->_userRatingStarsView frame];
        v46 = v10 + v48 + 3.0;
      }
    }

    [(UILabel *)self->_userRatingLabel setFrame:v46, v42 + *(v84 + 1), v87];
  }

  itemOfferButton = self->_itemOfferButton;
  if (itemOfferButton)
  {
    [(SKUIItemOfferButton *)itemOfferButton frame];
    v51 = v50;
    v53 = v52;
    v54 = v33 - v52;
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v55 = v10;
    }

    else
    {
      v55 = v7 - v51 + -15.0;
    }
  }

  else
  {
    v55 = *MEMORY[0x277CBF3A0];
    v54 = *(MEMORY[0x277CBF3A0] + 8);
    v51 = *(MEMORY[0x277CBF3A0] + 16);
    v53 = *(MEMORY[0x277CBF3A0] + 24);
  }

  itemOfferExplanationTitleLabel = self->_itemOfferExplanationTitleLabel;
  if (itemOfferExplanationTitleLabel && self->_itemOfferExplanationLabel)
  {
    v78 = v33;
    v79 = v17;
    v57 = *(v19 + 16);
    v58 = *(v19 + 24);
    [(UILabel *)itemOfferExplanationTitleLabel sizeThatFits:v57, v58];
    rect = v59;
    v61 = v60;
    [(UILabel *)self->_itemOfferExplanationLabel sizeThatFits:v57, v58];
    v77 = v62;
    v63 = v61 + v62;
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      if (self->_itemOfferButton)
      {
        v109.origin.x = v55;
        v109.origin.y = v54;
        v109.size.width = v51;
        v109.size.height = v53;
        v10 = CGRectGetMaxX(v109) + 8.0;
      }

      v64 = v78 - v63;
      v65 = v79;
    }

    else
    {
      v10 = 15.0;
      v64 = v78 + 15.0;
      v66 = self->_itemOfferButton;
      v67 = (v63 - v53) * 0.5;
      v68 = v78 + 15.0 + floorf(v67);
      if (v66)
      {
        v54 = v68;
      }

      v65 = v79;
      if (v66)
      {
        v65 = v55 + -8.0;
      }
    }

    v110.origin.x = v10;
    v110.origin.y = v64;
    v110.size.width = rect;
    v110.size.height = v61;
    v69 = v65 - v10;
    [(UILabel *)self->_itemOfferExplanationLabel setFrame:v10, CGRectGetMaxY(v110), v69, v77];
    [(UILabel *)self->_itemOfferExplanationTitleLabel setFrame:v10, v64, v69, v61];
  }

  [(SKUIItemOfferButton *)self->_itemOfferButton setFrame:v55, v54, v51, v53];
  userRatingLabel = self->_userRatingLabel;
  if (userRatingLabel)
  {
    [(UILabel *)userRatingLabel frame];
    x = v111.origin.x;
    y = v111.origin.y;
    height = v111.size.height;
    v113.origin.x = v55;
    v113.origin.y = v54;
    v113.size.width = v51;
    v113.size.height = v53;
    if (CGRectIntersectsRect(v111, v113))
    {
      [(SKUIItemOfferButton *)self->_itemOfferButton layoutSizeThatFits:*(v19 + 16), *(v19 + 24)];
      v75 = v74;
      v112.origin.x = v55;
      v112.origin.y = v54;
      v112.size.width = v51;
      v112.size.height = v53;
      [(UILabel *)self->_userRatingLabel setFrame:x, y, CGRectGetMaxX(v112) - v75 + -5.0 - x, height];
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SKUIProductPageHeaderView;
  [(SKUIProductPageHeaderView *)&v13 setBackgroundColor:v4];
  artistButton = self->_artistButton;
  if (self->_headerImageHeight == 0.0)
  {
    [(SKUIProductPageHeaderView *)self backgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v6 = ;
  [(UIButton *)artistButton setBackgroundColor:v6];

  iconImageView = self->_iconImageView;
  if (self->_headerImageHeight == 0.0)
  {
    [(SKUIProductPageHeaderView *)self backgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v8 = ;
  [(UIImageView *)iconImageView setBackgroundColor:v8];

  titleLabel = self->_titleLabel;
  if (self->_headerImageHeight == 0.0)
  {
    [(SKUIProductPageHeaderView *)self backgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v10 = ;
  [(SKUIProductPageHeaderLabel *)titleLabel setBackgroundColor:v10];

  [(UILabel *)self->_ageBandLabel setBackgroundColor:v4];
  [(UILabel *)self->_inAppPurchasesLabel setBackgroundColor:v4];
  [(SKUIItemOfferButton *)self->_itemOfferButton setBackgroundColor:v4];
  [(UILabel *)self->_itemOfferExplanationLabel setBackgroundColor:v4];
  [(UILabel *)self->_itemOfferExplanationTitleLabel setBackgroundColor:v4];
  [(UILabel *)self->_userRatingLabel setBackgroundColor:v4];
  [(UIImageView *)self->_userRatingStarsView setBackgroundColor:v4];
  editorialBadgeLabel = self->_editorialBadgeLabel;
  if (v4)
  {
    [(SKUIBadgeLabel *)editorialBadgeLabel setTextColor:v4];
  }

  else
  {
    v12 = +[SKUIBadgeLabel defaultTextColor];
    [(SKUIBadgeLabel *)editorialBadgeLabel setTextColor:v12];
  }
}

- (void)sizeToFit
{
  v39 = *MEMORY[0x277D85DE8];
  [(SKUIProductPageHeaderView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v7 + -30.0;
  iconImageView = self->_iconImageView;
  if (iconImageView)
  {
    [(UIImageView *)iconImageView frame];
    v9 = v9 - (v11 + 15.0);
  }

  shareButton = self->_shareButton;
  if (shareButton)
  {
    [(UIButton *)shareButton sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    v9 = v9 - v13;
  }

  memset(v38, 0, sizeof(v38));
  v32 = v38;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v30 = 0.0;
  v31 = v36;
  [(SKUIProductPageHeaderView *)self _getTopLayoutProperties:&v32 origins:&v31 height:&v30 forWidth:v9];
  memset(v35, 0, sizeof(v35));
  v32 = v35;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v31 = v33;
  v29 = 0.0;
  [(SKUIProductPageHeaderView *)self _getBottomLayoutProperties:&v32 origins:&v31 height:&v29 forWidth:v9];
  headerImageHeight = self->_headerImageHeight;
  v15 = v30 + 7.0 + v29;
  v16 = SKUIUserInterfaceIdiom(self->_clientContext);
  v17 = 100.0;
  if (v16 == 1)
  {
    v17 = 170.0;
  }

  if (v15 >= v17)
  {
    v19 = v29 + v30 + 15.0 + 7.0 + 5.0;
  }

  else
  {
    v18 = SKUIUserInterfaceIdiom(self->_clientContext);
    v19 = 120.0;
    if (v18 == 1)
    {
      v19 = 190.0;
    }
  }

  v20 = headerImageHeight + v19;
  if (self->_itemOfferExplanationLabel && self->_itemOfferExplanationTitleLabel && SKUIUserInterfaceIdiom(self->_clientContext) != 1)
  {
    v21 = *(MEMORY[0x277CBF390] + 16);
    v22 = *(MEMORY[0x277CBF390] + 24);
    [(UILabel *)self->_itemOfferExplanationTitleLabel sizeThatFits:v21, v22];
    v24 = v23 + 0.0;
    [(UILabel *)self->_itemOfferExplanationLabel sizeThatFits:v21, v22];
    v26 = v24 + v25;
    itemOfferButton = self->_itemOfferButton;
    if (itemOfferButton)
    {
      [(SKUIItemOfferButton *)itemOfferButton frame];
      if (v26 < v28)
      {
        v26 = v28;
      }
    }

    v20 = v20 + v26 + 15.0;
  }

  [(SKUIProductPageHeaderView *)self setFrame:v4, v6, v8, v20];
}

- (void)itemOfferButtonWillAnimateTransition:(id)a3
{
  [(SKUIItemOfferButton *)self->_itemOfferButton frame];
  v5 = v4;
  v7 = v6;
  [(SKUIItemOfferButton *)self->_itemOfferButton sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
  v9 = v8;
  v11 = v10;
  if (SKUIUserInterfaceIdiom(self->_clientContext))
  {
    if (self->_itemOfferExplanationLabel && self->_itemOfferExplanationTitleLabel)
    {
      [(SKUIProductPageHeaderView *)self bounds];
      v13 = v12;
      [(UILabel *)self->_itemOfferExplanationLabel frame];
      v15 = v14;
      v17 = v16;
      v31 = v18;
      v33.origin.x = v5;
      v33.origin.y = v7;
      v33.size.width = v9;
      v33.size.height = v11;
      v19 = CGRectGetMaxX(v33) + 8.0;
      v20 = v13 + -15.0;
      if (v13 + -15.0 - v19 >= v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = v13 + -15.0 - v19;
      }

      [(UILabel *)self->_itemOfferExplanationLabel setFrame:v19, v15, v21, v31];
      [(UILabel *)self->_itemOfferExplanationTitleLabel frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v34.origin.x = v5;
      v34.origin.y = v7;
      v34.size.width = v9;
      v34.size.height = v11;
      v28 = CGRectGetMaxX(v34) + 8.0;
      if (v20 - v28 >= v25)
      {
        v29 = v25;
      }

      else
      {
        v29 = v20 - v28;
      }

      [(UILabel *)self->_itemOfferExplanationTitleLabel setFrame:v28, v23, v29, v27];
    }
  }

  else
  {
    [(SKUIProductPageHeaderView *)self bounds];
    v5 = v30 - v9 + -15.0;
  }

  [(SKUIItemOfferButton *)self->_itemOfferButton setFrame:v5, v7, v9, v11];

  [(SKUIProductPageHeaderView *)self performSelector:sel__finishButtonAnimation withObject:0 afterDelay:1.0];
}

- (void)contentRatingArtworkLoader:(id)a3 didLoadImage:(id)a4 forContentRating:(id)a5
{
  v11 = *MEMORY[0x277D85DE8];
  titleLabel = self->_titleLabel;
  v10 = a4;
  v7 = MEMORY[0x277CBEA60];
  v8 = a4;
  v9 = [v7 arrayWithObjects:&v10 count:1];
  [(SKUIProductPageHeaderLabel *)titleLabel setSecondaryContentRatingImages:v9, v10, v11];

  [(SKUIProductPageHeaderView *)self setNeedsLayout];
}

- (void)_cancelConfirmationAction:(id)a3
{
  [(SKUIProductPageHeaderView *)self bringSubviewToFront:self->_itemOfferButton];
  itemOfferButton = self->_itemOfferButton;

  [(SKUIItemOfferButton *)itemOfferButton setShowingConfirmation:0 animated:1];
}

- (void)_showConfirmationAction:(id)a3
{
  [(SKUIProductPageHeaderView *)self bringSubviewToFront:self->_itemOfferButton];
  itemOfferButton = self->_itemOfferButton;

  [(SKUIItemOfferButton *)itemOfferButton setShowingConfirmation:1 animated:1];
}

- (void)_finishButtonAnimation
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  if (self->_needsLayoutAfterButtonAnimation)
  {
    self->_needsLayoutAfterButtonAnimation = 0;

    [(SKUIProductPageHeaderView *)self setNeedsLayout];
  }
}

- (void)_reloadItemOfferButton:(BOOL)a3
{
  if (self->_itemOffer && (v4 = a3, ![(SKUIProductPageHeaderView *)self isRestricted]))
  {
    itemOfferButton = self->_itemOfferButton;
    if (!itemOfferButton)
    {
      v7 = [SKUIItemOfferButton itemOfferButtonWithAppearance:0];
      v8 = self->_itemOfferButton;
      self->_itemOfferButton = v7;

      [(SKUIItemOfferButton *)self->_itemOfferButton addTarget:self action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
      [(SKUIItemOfferButton *)self->_itemOfferButton addTarget:self action:sel__showConfirmationAction_ forControlEvents:0x40000];
      v9 = self->_itemOfferButton;
      v10 = [(SKUIProductPageHeaderView *)self backgroundColor];
      [(SKUIItemOfferButton *)v9 setBackgroundColor:v10];

      LODWORD(v11) = -1.0;
      [(SKUIItemOfferButton *)self->_itemOfferButton setCharge:v11];
      [(SKUIItemOfferButton *)self->_itemOfferButton setDelegate:self];
      [(SKUIProductPageHeaderView *)self addSubview:self->_itemOfferButton];
      itemOfferButton = self->_itemOfferButton;
    }

    if ([(SKUIItemOfferButton *)itemOfferButton setValuesUsingItemOffer:self->_itemOffer itemState:self->_itemState clientContext:self->_clientContext animated:v4])
    {
      [(SKUIItemOfferButton *)self->_itemOfferButton sizeToFit];

      [(SKUIProductPageHeaderView *)self setNeedsLayout];
    }
  }

  else
  {
    [(SKUIItemOfferButton *)self->_itemOfferButton setDelegate:0];
    [(SKUIItemOfferButton *)self->_itemOfferButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
    [(SKUIItemOfferButton *)self->_itemOfferButton removeFromSuperview];
    v5 = self->_itemOfferButton;
    self->_itemOfferButton = 0;
  }
}

- (void)_getTopLayoutProperties:(id *)a3 origins:(double *)a4 height:(double *)a5 forWidth:(double)a6
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    v12 = *a3;
    [(SKUIProductPageHeaderLabel *)titleLabel sizeThatFits:a6, 1.79769313e308];
    *v12 = v13;
    *(v12 + 1) = v14;
    *(v12 + 1) = xmmword_215F3FAB0;
    *(v12 + 4) = 0x4022000000000000;
    *(v12 + 40) = 1;
  }

  artistButton = self->_artistButton;
  if (artistButton)
  {
    v16 = *a3;
    [(UIButton *)artistButton sizeThatFits:a6, 1.79769313e308];
    *(v16 + 6) = v17;
    *(v16 + 7) = v18;
    *(v16 + 4) = xmmword_215F3FAC0;
    *(v16 + 10) = 0x401C000000000000;
    *(v16 + 88) = 1;
  }

  editorialBadgeLabel = self->_editorialBadgeLabel;
  if (editorialBadgeLabel)
  {
    v20 = *a3;
    [(SKUIBadgeLabel *)editorialBadgeLabel sizeThatFits:a6, 1.79769313e308];
    *(v20 + 12) = v21;
    *(v20 + 13) = v22;
    *(v20 + 14) = 0;
    *(v20 + 15) = 0;
    *(v20 + 16) = 0x401C000000000000;
    *(v20 + 136) = 1;
  }

  inAppPurchasesLabel = self->_inAppPurchasesLabel;
  __asm { FMOV            V0.2D, #3.0 }

  v41 = _Q0;
  if (inAppPurchasesLabel)
  {
    v29 = *a3;
    [(UILabel *)inAppPurchasesLabel sizeThatFits:a6, 1.79769313e308];
    *(v29 + 18) = v30;
    *(v29 + 19) = v31;
    *(v29 + 10) = v41;
    *(v29 + 22) = 0x401C000000000000;
    *(v29 + 184) = 1;
  }

  ageBandLabel = self->_ageBandLabel;
  if (ageBandLabel)
  {
    v33 = *a3;
    [(UILabel *)ageBandLabel sizeThatFits:a6, 1.79769313e308];
    v35 = v34;
    v37 = v36;
    v38 = SKUIUserInterfaceIdiom(self->_clientContext);
    v39 = 7.0;
    *(v33 + 24) = v35;
    *(v33 + 25) = v37;
    if (v38 == 1)
    {
      v39 = 11.0;
    }

    *(v33 + 13) = v41;
    *(v33 + 28) = v39;
    *(v33 + 232) = 0;
  }

  v40 = *a3;

  SKUIGetLayoutProperties(v40, 5, a4, a5);
}

- (void)_getBottomLayoutProperties:(id *)a3 origins:(double *)a4 height:(double *)a5 forWidth:(double)a6
{
  if (self->_userRatingLabel)
  {
    numberOfUserRatings = self->_numberOfUserRatings;
    userRatingStarsView = self->_userRatingStarsView;
    if (numberOfUserRatings)
    {
      [(UIImageView *)userRatingStarsView setHidden:0];
      [(UIImageView *)self->_userRatingStarsView frame];
      v14 = v13 + 3.0;
    }

    else
    {
      [(UIImageView *)userRatingStarsView setHidden:1];
      v14 = 0.0;
    }

    v16 = a6 - v14;
    [(UILabel *)self->_userRatingLabel sizeThatFits:v16, 1.79769313e308];
    v15 = *a3;
    if (v16 < v17)
    {
      v17 = v16;
    }

    *(v15 + 6) = v17;
    *(v15 + 7) = v18;
    *(v15 + 8) = 0x4000000000000000;
    *(v15 + 9) = 0;
    *(v15 + 10) = 0;
    *(v15 + 88) = 1;
  }

  else
  {
    v15 = *a3;
  }

  SKUIGetLayoutProperties(v15, 5, a4, a5);
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageHeaderView initWithClientContext:]";
}

@end