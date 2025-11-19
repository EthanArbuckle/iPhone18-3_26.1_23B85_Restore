@interface SKUIRedeemITunesPassLockup
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIRedeemITunesPassLockup)initWithITunesPassConfiguration:(id)a3 clientContext:(id)a4;
- (id)_attributedDescriptionString;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SKUIRedeemITunesPassLockup

- (SKUIRedeemITunesPassLockup)initWithITunesPassConfiguration:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemITunesPassLockup initWithITunesPassConfiguration:clientContext:];
  }

  v33.receiver = self;
  v33.super_class = SKUIRedeemITunesPassLockup;
  v9 = [(SKUIRedeemITunesPassLockup *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_configuration, a3);
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v10->_descriptionLabel;
    v10->_descriptionLabel = v11;

    v13 = v10->_descriptionLabel;
    v14 = [(SKUIRedeemITunesPassLockup *)v10 _attributedDescriptionString];
    [(UILabel *)v13 setAttributedText:v14];

    [(UILabel *)v10->_descriptionLabel setNumberOfLines:0];
    [(SKUIRedeemITunesPassLockup *)v10 addSubview:v10->_descriptionLabel];
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    horizontalSeparatorView = v10->_horizontalSeparatorView;
    v10->_horizontalSeparatorView = v15;

    v17 = v10->_horizontalSeparatorView;
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v17 setBackgroundColor:v18];

    [(SKUIRedeemITunesPassLockup *)v10 addSubview:v10->_horizontalSeparatorView];
    v19 = MEMORY[0x277D755B8];
    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 scale];
    v21 = [v19 _applicationIconImageForBundleIdentifier:@"com.apple.Passbook" format:2 scale:?];

    if (v21)
    {
      v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v21];
      iconImageView = v10->_iconImageView;
      v10->_iconImageView = v22;

      [(SKUIRedeemITunesPassLockup *)v10 addSubview:v10->_iconImageView];
    }

    v24 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v24;

    v26 = v10->_titleLabel;
    v27 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v26 setFont:v27];

    v28 = v10->_titleLabel;
    v29 = [v7 lockupTitle];
    [(UILabel *)v28 setText:v29];

    v30 = v10->_titleLabel;
    v31 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v30 setTextColor:v31];

    [(SKUIRedeemITunesPassLockup *)v10 addSubview:v10->_titleLabel];
  }

  return v10;
}

- (void)layoutSubviews
{
  [(SKUIRedeemITunesPassLockup *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_iconImageView frame];
  v7 = (v6 + -55.0) * 0.5;
  v8 = floorf(v7);
  [(UIImageView *)self->_iconImageView setFrame:0.0, v8, 55.0, 55.0];
  [(UIView *)self->_horizontalSeparatorView frame];
  v27.origin.x = 0.0;
  v27.origin.y = v8;
  v27.size.width = 55.0;
  v27.size.height = 55.0;
  v9 = CGRectGetMaxX(v27) + 15.0;
  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 scale];
  v12 = 1.0 / v11;

  [(UIView *)self->_horizontalSeparatorView setFrame:v9, v8, v12, 55.0];
  v13 = v9 + 15.0;
  v14 = v4 - (v9 + 15.0);
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel sizeThatFits:v14, 1.79769313e308];
  v16 = v15;
  v18 = v17;
  [(UILabel *)self->_descriptionLabel frame];
  [(UILabel *)self->_descriptionLabel sizeThatFits:v14, 1.79769313e308];
  v20 = v19;
  v22 = v21;
  *&v19 = (v6 - (v18 + 4.0 + v21)) * 0.5;
  v23 = floorf(*&v19);
  v28.origin.x = v13;
  v28.origin.y = v23;
  v28.size.width = v16;
  v28.size.height = v18;
  v24 = CGRectGetMaxY(v28) + 4.0;
  [(UILabel *)self->_titleLabel setFrame:v13, v23, v16, v18];
  descriptionLabel = self->_descriptionLabel;

  [(UILabel *)descriptionLabel setFrame:v13, v24, v20, v22];
}

- (void)setHighlighted:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SKUIRedeemITunesPassLockup;
  [(SKUIRedeemITunesPassLockup *)&v6 setHighlighted:a3];
  descriptionLabel = self->_descriptionLabel;
  v5 = [(SKUIRedeemITunesPassLockup *)self _attributedDescriptionString];
  [(UILabel *)descriptionLabel setAttributedText:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = a3.width + -55.0 + -30.0;
  [(UILabel *)self->_descriptionLabel sizeThatFits:v5, 1.79769313e308];
  v7 = v6;
  [(UILabel *)self->_titleLabel sizeThatFits:v5, 1.79769313e308];
  v9 = fmax(v7 + 4.0 + v8, 55.0);
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (id)_attributedDescriptionString
{
  v3 = [(SKUIITunesPassConfiguration *)self->_configuration lockupDescription];
  v24 = [(SKUIITunesPassConfiguration *)self->_configuration lockupLearnMoreLinkTitle];
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"ITUNES_PASS_EXPLANATION_LEARN_MORE_FORMAT" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_EXPLANATION_LEARN_MORE_FORMAT" inBundles:0 inTable:@"Redeem"];
  }
  v22 = ;
  v5 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@%@" error:0, v3, v24];
  v6 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v5];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:11.0];
  v8 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v9 = [v8 mutableCopy];

  [v9 setLineHeightMultiple:0.75];
  [v9 setMinimumLineHeight:15.0];
  [v6 addAttribute:*MEMORY[0x277D74118] value:v9 range:{0, objc_msgSend(v5, "length")}];
  v23 = v3;
  v10 = [v5 rangeOfString:v3];
  v12 = v11;
  v13 = *MEMORY[0x277D740A8];
  [v6 addAttribute:*MEMORY[0x277D740A8] value:v7 range:{v10, v11}];
  v14 = *MEMORY[0x277D740C0];
  v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
  [v6 addAttribute:v14 value:v15 range:{v10, v12}];

  v16 = [v5 rangeOfString:v24];
  v18 = v17;
  [v6 addAttribute:v13 value:v7 range:{v16, v17}];
  v19 = [(SKUIRedeemITunesPassLockup *)self tintColor];
  if ([(SKUIRedeemITunesPassLockup *)self isHighlighted])
  {
    v20 = [v19 colorWithAlphaComponent:0.2];

    v19 = v20;
  }

  [v6 addAttribute:v14 value:v19 range:{v16, v18}];

  return v6;
}

- (void)initWithITunesPassConfiguration:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemITunesPassLockup initWithITunesPassConfiguration:clientContext:]";
}

@end