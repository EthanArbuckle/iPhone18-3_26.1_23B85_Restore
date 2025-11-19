@interface SKUIReviewsFacebookView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIReviewsFacebookView)initWithClientContext:(id)a3;
- (UIEdgeInsets)contentInsets;
- (id)_composedStringForNames:(id)a3 userLiked:(BOOL)a4;
- (void)_reloadFriendNamesLabel;
- (void)_reloadLikeButtonState;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setFriendNames:(id)a3;
- (void)setUserLiked:(BOOL)a3;
@end

@implementation SKUIReviewsFacebookView

- (SKUIReviewsFacebookView)initWithClientContext:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReviewsFacebookView initWithClientContext:];
  }

  v40.receiver = self;
  v40.super_class = SKUIReviewsFacebookView;
  v6 = [(SKUIReviewsFacebookView *)&v40 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v8;

    v10 = v7->_titleLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UILabel *)v10 setFont:v11];

    v12 = v7->_titleLabel;
    if (v5)
    {
      [v5 localizedStringForKey:@"REVIEWS_FACEBOOK_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v13 = ;
    [(UILabel *)v12 setText:v13];

    v14 = v7->_titleLabel;
    v15 = [(SKUIColorScheme *)v7->_colorScheme secondaryTextColor];
    if (v15)
    {
      [(UILabel *)v14 setTextColor:v15];
    }

    else
    {
      v16 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)v14 setTextColor:v16];
    }

    [(SKUIReviewsFacebookView *)v7 addSubview:v7->_titleLabel];
    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    friendsLabel = v7->_friendsLabel;
    v7->_friendsLabel = v17;

    [(UILabel *)v7->_friendsLabel setNumberOfLines:5];
    v19 = v7->_friendsLabel;
    v20 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v19 setBackgroundColor:v20];

    [(SKUIReviewsFacebookView *)v7 addSubview:v7->_friendsLabel];
    [(SKUIReviewsFacebookView *)v7 _reloadFriendNamesLabel];
    v21 = objc_alloc_init(MEMORY[0x277D75220]);
    likeButton = v7->_likeButton;
    v7->_likeButton = v21;

    v23 = v7->_likeButton;
    v24 = [(SKUIColorScheme *)v7->_colorScheme secondaryTextColor];
    if (v24)
    {
      [(UIButton *)v23 setTitleColor:v24 forState:0];
    }

    else
    {
      v25 = [(SKUIReviewsFacebookView *)v7 tintColor];
      [(UIButton *)v23 setTitleColor:v25 forState:0];
    }

    [(UIButton *)v7->_likeButton setShowsTouchWhenHighlighted:1];
    v26 = [(UIButton *)v7->_likeButton titleLabel];
    v27 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [v26 setFont:v27];

    [(SKUIReviewsFacebookView *)v7 addSubview:v7->_likeButton];
    [(SKUIReviewsFacebookView *)v7 _reloadLikeButtonState];
    v28 = objc_alloc(MEMORY[0x277D755E8]);
    v29 = MEMORY[0x277D755B8];
    v30 = SKUIBundle();
    v31 = [v29 imageNamed:@"ProductViewReviewsFacebookIcon" inBundle:v30];
    v32 = [v28 initWithImage:v31];
    logoImageView = v7->_logoImageView;
    v7->_logoImageView = v32;

    [(SKUIReviewsFacebookView *)v7 addSubview:v7->_logoImageView];
    v34 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v7->_separatorView;
    v7->_separatorView = v34;

    v36 = v7->_separatorView;
    v37 = [(SKUIColorScheme *)v7->_colorScheme primaryTextColor];
    if (v37)
    {
      [(UIView *)v36 setBackgroundColor:v37];
    }

    else
    {
      v38 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
      [(UIView *)v36 setBackgroundColor:v38];
    }

    [(SKUIReviewsFacebookView *)v7 addSubview:v7->_separatorView];
  }

  return v7;
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v15 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    titleLabel = self->_titleLabel;
    v7 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v7)
    {
      [(UILabel *)titleLabel setTextColor:v7];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:v8];
    }

    separatorView = self->_separatorView;
    v10 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v10)
    {
      [(UIView *)separatorView setBackgroundColor:v10];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
      [(UIView *)separatorView setBackgroundColor:v11];
    }

    likeButton = self->_likeButton;
    v13 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v13)
    {
      [(UIButton *)likeButton setTitleColor:v13 forState:0];
    }

    else
    {
      v14 = [(SKUIReviewsFacebookView *)self tintColor];
      [(UIButton *)likeButton setTitleColor:v14 forState:0];
    }

    [(SKUIReviewsFacebookView *)self _reloadFriendNamesLabel];
    v5 = v15;
  }
}

- (void)setFriendNames:(id)a3
{
  if (self->_friendNames != a3)
  {
    v4 = [a3 copy];
    friendNames = self->_friendNames;
    self->_friendNames = v4;

    [(SKUIReviewsFacebookView *)self _reloadFriendNamesLabel];
  }
}

- (void)setUserLiked:(BOOL)a3
{
  if (self->_userLiked != a3)
  {
    self->_userLiked = a3;
    [(SKUIReviewsFacebookView *)self _reloadLikeButtonState];
    [(SKUIReviewsFacebookView *)self _reloadFriendNamesLabel];

    [(SKUIReviewsFacebookView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUIReviewsFacebookView *)self bounds];
  v47 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(UIImageView *)self->_logoImageView frame];
  v45 = v10;
  titleLabel = self->_titleLabel;
  v12 = 15.0;
  v13 = 15.0;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeToFit];
    [(UILabel *)self->_titleLabel frame];
    v15 = v14;
    v16 = self->_titleLabel;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, 11.0, v7 + -30.0, v14, v47, v5, v7, v9);
    [(UILabel *)v16 setFrame:?];
    v49.origin.x = 15.0;
    v49.origin.y = 11.0;
    v49.size.width = v7 + -30.0;
    v49.size.height = v15;
    v13 = CGRectGetMaxY(v49) + -4.0 + 10.0;
  }

  logoImageView = self->_logoImageView;
  if (logoImageView)
  {
    [(UIImageView *)logoImageView frame];
    v19 = v18;
    v21 = v20;
    v22 = self->_logoImageView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, v13, v18, v20, v47, v5, v7, v9);
    [(UIImageView *)v22 setFrame:?];
    v50.origin.x = 15.0;
    v50.origin.y = v13;
    v50.size.width = v19;
    v50.size.height = v21;
    v12 = CGRectGetMaxX(v50) + 10.0;
  }

  v23 = v7 + -15.0;
  likeButton = self->_likeButton;
  v25 = v7 + -15.0;
  if (likeButton)
  {
    v26 = [(UIButton *)likeButton imageForState:0];
    [(UIButton *)self->_likeButton sizeToFit];
    [(UIButton *)self->_likeButton frame];
    v46 = v9;
    v27 = v5;
    v29 = v28;
    v30 = [(UIButton *)self->_likeButton titleLabel];
    [v30 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v32 = v31;
    [v26 size];
    v34 = v32 + v33 + 6.0;

    v35 = (v45 - v29) * 0.5;
    v36 = v13 + roundf(v35);
    v37 = self->_likeButton;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v23 - v34, v36, v34, v29, v47, v27, v7, v46);
    [(UIButton *)v37 setFrame:?];
    v51.origin.x = v23 - v34;
    v51.origin.y = v36;
    v51.size.width = v34;
    v51.size.height = v29;
    v5 = v27;
    v9 = v46;
    v25 = CGRectGetMinX(v51) + -7.0;
  }

  if (self->_friendsLabel)
  {
    [(SKUIReviewsFacebookView *)self bringSubviewToFront:?];
    [(UILabel *)self->_friendsLabel frame];
    [(UILabel *)self->_friendsLabel sizeThatFits:v25 - v12, 1.79769313e308];
    friendsLabel = self->_friendsLabel;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v12, v13 + -5.0, v39, v9 - v13 + -15.0 + 5.0 + 3.0, v47, v5, v7, v9);
    [(UILabel *)friendsLabel setFrame:?];
  }

  separatorView = self->_separatorView;
  if (separatorView)
  {
    [(UIView *)separatorView frame];
    v41 = [MEMORY[0x277D759A0] mainScreen];
    [v41 scale];
    v43 = 1.0 / v42;

    v44 = self->_separatorView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, v9 - v43, v23, v43, v47, v5, v7, v9);

    [(UIView *)v44 setFrame:?];
  }
}

- (void)setBackgroundColor:(id)a3
{
  likeButton = self->_likeButton;
  v5 = a3;
  [(UIButton *)likeButton setBackgroundColor:v5];
  [(UIImageView *)self->_logoImageView setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIReviewsFacebookView;
  [(SKUIReviewsFacebookView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeThatFits:a3.width, a3.height];
    v8 = v7 + -4.0 + -4.0 + 10.0 + 30.0;
  }

  else
  {
    v8 = 30.0;
  }

  v10 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  logoImageView = self->_logoImageView;
  v12 = v9;
  v13 = *MEMORY[0x277CBF3A8];
  if (logoImageView)
  {
    [(UIImageView *)logoImageView frame];
    v13 = v14;
    v12 = v15 + 2.0;
  }

  likeButton = self->_likeButton;
  if (likeButton)
  {
    v17 = [(UIButton *)likeButton titleLabel];
    [v17 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v19 = v18;
    v9 = v20;

    v21 = [(UIButton *)self->_likeButton imageForState:0];
    [v21 size];
    v10 = v19 + v22 + 6.0;
  }

  friendsLabel = self->_friendsLabel;
  if (friendsLabel)
  {
    [(UILabel *)friendsLabel sizeThatFits:width + -30.0 - v13 + -10.0 + -7.0 - v10, height];
    v25 = v24 + -5.0 + -3.0;
  }

  else
  {
    v25 = 0.0;
  }

  if (v12 >= v25)
  {
    v25 = v12;
  }

  if (v25 < v9)
  {
    v25 = v9;
  }

  v26 = v8 + v25;
  v27 = width;
  result.height = v26;
  result.width = v27;
  return result;
}

- (id)_composedStringForNames:(id)a3 userLiked:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 count];
  v8 = v7;
  if (!v4)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        clientContext = self->_clientContext;
        if (clientContext)
        {
          [(SKUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_FACEBOOK_TWO_FRIENDS_LIKE" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_TWO_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
        }
        v15 = ;
        v25 = MEMORY[0x277CCACA8];
        v26 = [v6 objectAtIndex:0];
        goto LABEL_50;
      }

      if (v7 == 3)
      {
        v12 = self->_clientContext;
        if (v12)
        {
          [(SKUIClientContext *)v12 localizedStringForKey:@"REVIEWS_FACEBOOK_THREE_FRIENDS_LIKE" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_THREE_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
        }
        v15 = ;
        v34 = MEMORY[0x277CCACA8];
        v17 = [v6 objectAtIndex:0];
        v28 = [v6 objectAtIndex:1];
        v30 = [v6 objectAtIndex:2];
        [v34 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@%@%@" error:0, v17, v28, v30];
        v33 = LABEL_43:;
LABEL_44:

LABEL_51:
        goto LABEL_52;
      }
    }

    else
    {
      if (!v7)
      {
        v9 = self->_clientContext;
        if (v9)
        {
          v10 = @"REVIEWS_FACEBOOK_FIRST_LIKE";
          goto LABEL_26;
        }

        v27 = @"REVIEWS_FACEBOOK_FIRST_LIKE";
LABEL_46:
        v21 = [SKUIClientContext localizedStringForKey:v27 inBundles:0 inTable:@"ProductPage"];
        goto LABEL_47;
      }

      if (v7 == 1)
      {
        v11 = self->_clientContext;
        if (v11)
        {
          [(SKUIClientContext *)v11 localizedStringForKey:@"REVIEWS_FACEBOOK_ONE_FRIEND_LIKES" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_ONE_FRIEND_LIKES" inBundles:0 inTable:@"ProductPage"];
        }
        v15 = ;
        v23 = MEMORY[0x277CCACA8];
        v24 = [v6 objectAtIndex:0];
        goto LABEL_40;
      }
    }

    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v15 setNumberStyle:1];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:v8 - 2];
    v17 = [v15 stringFromNumber:v19];

    v20 = self->_clientContext;
    if (v20)
    {
      [(SKUIClientContext *)v20 localizedStringForKey:@"REVIEWS_FACEBOOK_MANY_FRIENDS_LIKE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_MANY_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
    }
    v28 = ;
    v31 = MEMORY[0x277CCACA8];
    v30 = [v6 objectAtIndex:0];
    v32 = [v6 objectAtIndex:1];
    v33 = [v31 stringWithValidatedFormat:v28 validFormatSpecifiers:@"%@%@%@" error:0, v30, v32, v17];

    goto LABEL_44;
  }

  if (v7 == 2)
  {
    v14 = self->_clientContext;
    if (v14)
    {
      [(SKUIClientContext *)v14 localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_TWO_FRIENDS_LIKE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_TWO_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
    }
    v15 = ;
    v25 = MEMORY[0x277CCACA8];
    v26 = [v6 firstObject];
LABEL_50:
    v17 = v26;
    v28 = [v6 objectAtIndex:1];
    v33 = [v25 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@%@" error:0, v17, v28];
    goto LABEL_51;
  }

  if (v7 != 1)
  {
    if (!v7)
    {
      v9 = self->_clientContext;
      if (v9)
      {
        v10 = @"REVIEWS_FACEBOOK_YOU_LIKE";
LABEL_26:
        v21 = [(SKUIClientContext *)v9 localizedStringForKey:v10 inTable:@"ProductPage"];
LABEL_47:
        v33 = v21;
        goto LABEL_53;
      }

      v27 = @"REVIEWS_FACEBOOK_YOU_LIKE";
      goto LABEL_46;
    }

    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v15 setNumberStyle:1];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v8 - 1];
    v17 = [v15 stringFromNumber:v16];

    v18 = self->_clientContext;
    if (v18)
    {
      [(SKUIClientContext *)v18 localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_MANY_FRIENDS_LIKE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_MANY_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
    }
    v28 = ;
    v29 = MEMORY[0x277CCACA8];
    v30 = [v6 firstObject];
    [v29 stringWithValidatedFormat:v28 validFormatSpecifiers:@"%@%@" error:0, v30, v17, v36];
    goto LABEL_43;
  }

  v13 = self->_clientContext;
  if (v13)
  {
    [(SKUIClientContext *)v13 localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_ONE_FRIEND_LIKE" inTable:@"ProductPage"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_ONE_FRIEND_LIKE" inBundles:0 inTable:@"ProductPage"];
  }
  v15 = ;
  v23 = MEMORY[0x277CCACA8];
  v24 = [v6 firstObject];
LABEL_40:
  v17 = v24;
  v33 = [v23 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v24];
LABEL_52:

LABEL_53:

  return v33;
}

- (void)_reloadFriendNamesLabel
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D74240]);
  [v3 setMaximumLineHeight:16.0];
  [v3 setMinimumLineHeight:16.0];
  [v3 setLineBreakMode:4];
  v13[0] = *MEMORY[0x277D740A8];
  v4 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v5 = *MEMORY[0x277D74118];
  v14[0] = v4;
  v14[1] = v3;
  v6 = *MEMORY[0x277D740C0];
  v13[1] = v5;
  v13[2] = v6;
  v7 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.800000012];
  }

  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!v7)
  {
  }

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = [(SKUIReviewsFacebookView *)self _composedStringForNames:self->_friendNames userLiked:self->_userLiked];
  v12 = [v10 initWithString:v11 attributes:v9];

  [(UILabel *)self->_friendsLabel setAttributedText:v12];
  [(SKUIReviewsFacebookView *)self setNeedsLayout];
}

- (void)_reloadLikeButtonState
{
  likeButton = self->_likeButton;
  if (self->_userLiked)
  {
    [(UIButton *)self->_likeButton setImage:0 forState:0];
    v4 = self->_likeButton;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_FACEBOOK_UNLIKE_BUTTON" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_UNLIKE_BUTTON" inBundles:0 inTable:@"ProductPage"];
    }
    v11 = ;
    [(UIButton *)v4 setTitle:v11 forState:0];

    v12 = self->_likeButton;
    v13 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v15 = *(MEMORY[0x277D768C8] + 16);
    v16 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    v6 = MEMORY[0x277D755B8];
    v7 = SKUIBundle();
    v8 = [v6 imageNamed:@"ProductViewReviewsFacebookLikeIcon" inBundle:v7];
    [(UIButton *)likeButton setImage:v8 forState:0];

    v9 = self->_likeButton;
    v10 = self->_clientContext;
    if (v10)
    {
      [(SKUIClientContext *)v10 localizedStringForKey:@"REVIEWS_FACEBOOK_LIKE_BUTTON" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_LIKE_BUTTON" inBundles:0 inTable:@"ProductPage"];
    }
    v17 = ;
    [(UIButton *)v9 setTitle:v17 forState:0];

    ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
    v13 = 0.0;
    v14 = 6.0;
    if (ShouldReverseLayoutDirection)
    {
      v16 = 6.0;
    }

    else
    {
      v16 = 0.0;
    }

    if (ShouldReverseLayoutDirection)
    {
      v14 = 0.0;
    }

    v12 = self->_likeButton;
    v15 = 0.0;
  }

  [(UIButton *)v12 setTitleEdgeInsets:v13, v14, v15, v16];

  [(SKUIReviewsFacebookView *)self setNeedsLayout];
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

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReviewsFacebookView initWithClientContext:]";
}

@end