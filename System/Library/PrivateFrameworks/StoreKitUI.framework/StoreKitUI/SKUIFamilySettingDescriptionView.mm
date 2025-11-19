@interface SKUIFamilySettingDescriptionView
+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5;
+ (void)requestLayoutForSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (id)_attributedStringForKey:(id)a3;
- (id)_attributedStringForViewState;
- (void)_layoutWithActivityIndicator;
- (void)_layoutWithLockup;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SKUIFamilySettingDescriptionView

+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIFamilySettingDescriptionView *)v5 prefetchResourcesForSettingDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIFamilySettingDescriptionView *)v4 preferredSizeForSettingDescription:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUIFamilySettingDescriptionView *)v5 requestLayoutForSettingDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIFamilySettingDescriptionView *)v6 sizeThatFitsWidth:v7 settingDescription:v8 context:v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v14 _scaledValueForValue:48.0];
  v16 = v15;

  v17 = a3;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  objc_storeStrong(&self->_layoutContext, a5);
  v7 = a3;
  v8 = [v7 viewState];

  [(SKUIFamilySettingDescriptionView *)self _setViewState:v8];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SKUIFamilySettingDescriptionView;
  [(SKUIFamilySettingDescriptionView *)&v4 layoutSubviews];
  viewState = self->_viewState;
  if ((viewState - 1) >= 3)
  {
    if (viewState == -1)
    {
      [(SKUIFamilySettingDescriptionView *)self _layoutWithActivityIndicator];
    }
  }

  else
  {
    [(SKUIFamilySettingDescriptionView *)self _layoutWithLockup];
  }
}

- (id)_attributedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(SKUISettingsFamilyViewElement *)self->_viewElement style];
  v6 = [(SKUIViewElementLayoutContext *)self->_layoutContext clientContext];
  v7 = v6;
  if (v6)
  {
    [v6 localizedStringForKey:v4 inTable:@"Settings"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:v4 inBundles:0 inTable:@"Settings"];
  }
  v8 = ;

  v9 = [v5 textShadow];
  v10 = [(SKUIFamilySettingDescriptionView *)self tintColor];
  v11 = SKUIViewElementPlainColorWithStyle(v5, v10);

  if (!v11)
  {
    v11 = [MEMORY[0x277D75348] blackColor];
  }

  v12 = SKUIViewElementFontWithStyle(v5);
  v13 = objc_alloc(MEMORY[0x277CBEAC0]);
  v14 = [v13 initWithObjectsAndKeys:{v11, *MEMORY[0x277D740C0], v12, *MEMORY[0x277D740A8], v9, *MEMORY[0x277D74138], 0}];
  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8 attributes:v14];

  return v15;
}

- (id)_attributedStringForViewState
{
  viewState = self->_viewState;
  v3 = @"SETTINGS_FAMILY_SETUP";
  if (viewState == 2)
  {
    v3 = @"SETTINGS_FAMILY_ADD";
  }

  if (viewState == 3)
  {
    v4 = @"SETTINGS_FAMILY_MANAGE";
  }

  else
  {
    v4 = v3;
  }

  v5 = [(SKUIFamilySettingDescriptionView *)self _attributedStringForKey:v4];

  return v5;
}

- (void)_layoutWithActivityIndicator
{
  [(UIImageView *)self->_iconImageView setHidden:1];
  [(UILabel *)self->_labelView setHidden:1];
  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
  if (!self->_activityIndicator)
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = v3;

    [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
    [(SKUIFamilySettingDescriptionView *)self addSubview:self->_activityIndicator];
  }

  [(SKUIFamilySettingDescriptionView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v9 = self->_activityIndicator;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);

  [(UIActivityIndicatorView *)v9 setCenter:MidX, MidY];
}

- (void)_layoutWithLockup
{
  [(UIImageView *)self->_iconImageView setHidden:0];
  [(UILabel *)self->_labelView setHidden:0];
  [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  [(SKUISettingDescriptionView *)self layoutMargins];
  v4 = v3;
  v36 = v5;
  [(SKUIFamilySettingDescriptionView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  iconImageView = self->_iconImageView;
  if (!iconImageView)
  {
    v15 = objc_alloc(MEMORY[0x277D755E8]);
    v16 = SKUIImageWithResourceName(@"familySharing");
    v17 = [v15 initWithImage:v16];
    v18 = self->_iconImageView;
    self->_iconImageView = v17;

    [(SKUIFamilySettingDescriptionView *)self addSubview:self->_iconImageView];
    iconImageView = self->_iconImageView;
  }

  v19 = [(UIImageView *)iconImageView image];
  [v19 size];
  v21 = v20;
  v23 = v22;

  v39.origin.x = v7;
  v39.origin.y = v9;
  v39.size.width = v11;
  v39.size.height = v13;
  v24 = floor((CGRectGetHeight(v39) - v23) * 0.5);
  [(UIImageView *)self->_iconImageView setFrame:v4, v24, v21, v23];
  labelView = self->_labelView;
  if (!labelView)
  {
    v26 = objc_alloc_init(MEMORY[0x277D756B8]);
    v27 = self->_labelView;
    self->_labelView = v26;

    [(UILabel *)self->_labelView _setTextColorFollowsTintColor:1];
    [(SKUIFamilySettingDescriptionView *)self addSubview:self->_labelView];
    labelView = self->_labelView;
  }

  v28 = [(SKUIFamilySettingDescriptionView *)self _attributedStringForViewState];
  [(UILabel *)labelView setAttributedText:v28];

  v37 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v40.origin.x = v4;
  v40.origin.y = v24;
  v40.size.width = v21;
  v40.size.height = v23;
  v29 = CGRectGetMaxX(v40) + 8.0;
  v41.origin.x = v7;
  v41.origin.y = v9;
  v41.size.width = v11;
  v41.size.height = v13;
  v30 = CGRectGetWidth(v41) - v29 - v36;
  [(UILabel *)self->_labelView sizeThatFits:v30, 1.79769313e308];
  v32 = v31;
  [v37 _scaledValueForValue:30.0];
  v34 = v33;
  [(UILabel *)self->_labelView _firstBaselineOffsetFromTop];
  [(UILabel *)self->_labelView setFrame:v29, v34 - v35, v30, v32];
}

@end