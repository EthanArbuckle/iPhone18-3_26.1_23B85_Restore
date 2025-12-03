@interface SKUIRedeemCameraLandingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIRedeemCameraLandingView)initWithClientContext:(id)context;
- (void)layoutSubviews;
- (void)setSpacingStyle:(int64_t)style;
@end

@implementation SKUIRedeemCameraLandingView

- (SKUIRedeemCameraLandingView)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemCameraLandingView initWithClientContext:];
  }

  v50.receiver = self;
  v50.super_class = SKUIRedeemCameraLandingView;
  v5 = [(SKUIRedeemCameraLandingView *)&v50 init];
  if (v5)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 imageNamed:@"RedemptionCardArtworkCobra" inBundle:v7];

    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    imageView = v5->_imageView;
    v5->_imageView = v9;

    [(SKUIRedeemCameraLandingView *)v5 addSubview:v5->_imageView];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    headerLabel = v5->_headerLabel;
    v5->_headerLabel = v11;

    v13 = v5->_headerLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v13 setBackgroundColor:whiteColor];

    v15 = v5->_headerLabel;
    v16 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
    [(UILabel *)v15 setFont:v16];

    [(UILabel *)v5->_headerLabel setNumberOfLines:0];
    v17 = v5->_headerLabel;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v17 setTextColor:blackColor];

    [(UILabel *)v5->_headerLabel setTextAlignment:1];
    v19 = MGCopyAnswer();
    v20 = [SKUIRedeemViewControllerLegacy redeemRequiresNationalId:contextCopy];
    integerValue = [v19 integerValue];
    switch(integerValue)
    {
      case 1:
        v22 = v5->_headerLabel;
        v23 = @"CAMERA_REDEEM_PROMPT_IPHONE";
        v24 = @"CAMERA_REDEEM_PROMPT_IPHONE_CN";
        break;
      case 2:
        v22 = v5->_headerLabel;
        v23 = @"CAMERA_REDEEM_PROMPT_IPOD";
        v24 = @"CAMERA_REDEEM_PROMPT_IPOD_CN";
        break;
      case 3:
        v22 = v5->_headerLabel;
        v23 = @"CAMERA_REDEEM_PROMPT_IPAD";
        v24 = @"CAMERA_REDEEM_PROMPT_IPAD_CN";
        break;
      default:
LABEL_19:
        [(SKUIRedeemCameraLandingView *)v5 addSubview:v5->_headerLabel];
        v27 = objc_alloc_init(MEMORY[0x277D756B8]);
        bodyLabel = v5->_bodyLabel;
        v5->_bodyLabel = v27;

        v29 = v5->_bodyLabel;
        if (v20)
        {
          v30 = @"CAMERA_REDEEM_CARD_DESCRIPTION_CN";
        }

        else
        {
          v30 = @"CAMERA_REDEEM_CARD_DESCRIPTION";
        }

        if (contextCopy)
        {
          [contextCopy localizedStringForKey:v30 inTable:@"Redeem"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:v30 inBundles:0 inTable:@"Redeem"];
        }
        v31 = ;
        [(UILabel *)v29 setText:v31];

        v32 = v5->_bodyLabel;
        v33 = MEMORY[0x277D74300];
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        v36 = 14.0;
        if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          v36 = 16.0;
        }

        v37 = [v33 systemFontOfSize:v36];
        [(UILabel *)v32 setFont:v37];

        v38 = v5->_bodyLabel;
        v39 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
        [(UILabel *)v38 setTextColor:v39];

        [(UILabel *)v5->_bodyLabel setNumberOfLines:0];
        [(UILabel *)v5->_bodyLabel setTextAlignment:1];
        v40 = v5->_bodyLabel;
        whiteColor2 = [MEMORY[0x277D75348] whiteColor];
        [(UILabel *)v40 setBackgroundColor:whiteColor2];

        [(SKUIRedeemCameraLandingView *)v5 addSubview:v5->_bodyLabel];
        v42 = [MEMORY[0x277D75220] buttonWithType:1];
        button = v5->_button;
        v5->_button = v42;

        v44 = v5->_button;
        if (contextCopy)
        {
          [contextCopy localizedStringForKey:@"CAMERA_REDEEM_USE_CAMERA_BUTTON" inTable:@"Redeem"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_USE_CAMERA_BUTTON" inBundles:0 inTable:@"Redeem"];
        }
        v45 = ;
        [(UIButton *)v44 setTitle:v45 forState:0];

        titleLabel = [(UIButton *)v5->_button titleLabel];
        v47 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [titleLabel setFont:v47];

        [(UIButton *)v5->_button sizeToFit];
        [(SKUIRedeemCameraLandingView *)v5 addSubview:v5->_button];
        whiteColor3 = [MEMORY[0x277D75348] whiteColor];
        [(SKUIRedeemCameraLandingView *)v5 setBackgroundColor:whiteColor3];

        [(SKUIRedeemCameraLandingView *)v5 setClipsToBounds:1];
        goto LABEL_31;
    }

    if (v20)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    if (contextCopy)
    {
      [contextCopy localizedStringForKey:v25 inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:v25 inBundles:0 inTable:@"Redeem"];
    }
    v26 = ;
    [(UILabel *)v22 setText:v26];

    goto LABEL_19;
  }

LABEL_31:

  return v5;
}

- (void)setSpacingStyle:(int64_t)style
{
  if (self->_spacingStyle != style)
  {
    self->_spacingStyle = style;
    [(SKUIRedeemCameraLandingView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUIRedeemCameraLandingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = v3 + -30.0;
  [(UILabel *)self->_headerLabel frame];
  [(UILabel *)self->_headerLabel sizeThatFits:v7, 1.79769313e308];
  v56 = v8;
  v10 = v9;
  [(UILabel *)self->_bodyLabel frame];
  [(UILabel *)self->_bodyLabel sizeThatFits:v7, 1.79769313e308];
  v58 = v11;
  [(UIButton *)self->_button frame];
  v57 = v12;
  v14 = v13;
  [(UIImageView *)self->_imageView frame];
  v16 = v15;
  v18 = v17;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v21 = 55.0;
  }

  else
  {
    v21 = 25.0;
    if (self->_spacingStyle == 1)
    {
      v21 = 15.0;
    }
  }

  v22 = v10 + v18 + v21;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v25 = 11.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v25 = 13.0;
    if (self->_spacingStyle == 1)
    {
      v25 = 8.0;
    }
  }

  v26 = v58 + v22 + v25;
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v29 = 36.0;
  }

  else
  {
    v29 = 16.0;
    if (self->_spacingStyle == 1)
    {
      v29 = 7.0;
    }
  }

  v30 = (v6 - (v14 + v26 + v29)) * 0.5;
  v31 = floorf(v30);
  v32 = (v4 - v16) * 0.5;
  v33 = floorf(v32);
  [(UIImageView *)self->_imageView setFrame:v33, v31, v16, v18];
  v60.origin.x = v33;
  v60.origin.y = v31;
  v60.size.width = v16;
  v60.size.height = v18;
  MaxY = CGRectGetMaxY(v60);
  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

  if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v37 = 55.0;
  }

  else
  {
    v37 = 25.0;
    if (self->_spacingStyle == 1)
    {
      v37 = 15.0;
    }
  }

  v38 = MaxY + v37;
  v39 = (v4 - v56) * 0.5;
  v40 = floorf(v39);
  [(UILabel *)self->_headerLabel setFrame:v40, v38, v56, v10];
  v61.origin.x = v40;
  v61.origin.y = v38;
  v61.size.width = v56;
  v61.size.height = v10;
  v41 = CGRectGetMaxY(v61);
  currentDevice5 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom5 = [currentDevice5 userInterfaceIdiom];

  v44 = 11.0;
  if ((userInterfaceIdiom5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v44 = 13.0;
    if (self->_spacingStyle == 1)
    {
      v44 = 8.0;
    }
  }

  v45 = v41 + v44;
  v46 = (v4 - v7) * 0.5;
  v47 = floorf(v46);
  [(UILabel *)self->_bodyLabel setFrame:v47, v45, v7, v58];
  v62.origin.x = v47;
  v62.origin.y = v45;
  v62.size.width = v7;
  v62.size.height = v58;
  v48 = CGRectGetMaxY(v62);
  currentDevice6 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom6 = [currentDevice6 userInterfaceIdiom];

  if ((userInterfaceIdiom6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v51 = 36.0;
  }

  else
  {
    v51 = 16.0;
    if (self->_spacingStyle == 1)
    {
      v51 = 7.0;
    }
  }

  v52 = v48 + v51;
  v53 = (v4 - v57) * 0.5;
  button = self->_button;
  v55 = floorf(v53);

  [(UIButton *)button setFrame:v55, v52];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UILabel *)self->_bodyLabel frame];
  [(UIButton *)self->_button frame];
  v6 = v5;
  [(UILabel *)self->_headerLabel frame];
  [(UIImageView *)self->_imageView frame];
  v8 = v7;
  [(UILabel *)self->_bodyLabel sizeThatFits:width + -30.0, 1.79769313e308];
  v10 = v9;
  [(UILabel *)self->_headerLabel sizeThatFits:width + -30.0, 1.79769313e308];
  v12 = v11;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v15 = 55.0;
  }

  else if (self->_spacingStyle == 1)
  {
    v15 = 15.0;
  }

  else
  {
    v15 = 25.0;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v18 = 11.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    if (self->_spacingStyle == 1)
    {
      v18 = 8.0;
    }

    else
    {
      v18 = 13.0;
    }
  }

  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v21 = 36.0;
  }

  else
  {
    v21 = 16.0;
    if (self->_spacingStyle == 1)
    {
      v21 = 7.0;
    }
  }

  v22 = v6 + v10 + v12 + v8 + v15 + v18 + v21;
  v23 = width;
  result.height = v22;
  result.width = v23;
  return result;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemCameraLandingView initWithClientContext:]";
}

@end