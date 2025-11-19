@interface SKUISettingsTableViewCell
- (SKUISettingsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)displaySettingDescriptionView:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SKUISettingsTableViewCell

- (SKUISettingsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsTableViewCell initWithStyle:reuseIdentifier:];
  }

  v10.receiver = self;
  v10.super_class = SKUISettingsTableViewCell;
  v7 = [(SKUISettingsTableViewCell *)&v10 initWithStyle:a3 reuseIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v7->_hasDisclosureChevron = 0;
  }

  return v8;
}

- (void)displaySettingDescriptionView:(id)a3
{
  v4 = a3;
  self->_hasDisclosureChevron = [(SKUISettingDescriptionView *)v4 hasDisclosureChevron];
  settingDescriptionView = self->_settingDescriptionView;
  self->_settingDescriptionView = v4;
  v6 = v4;

  v7 = [(SKUISettingsTableViewCell *)self contentView];
  [v7 addSubview:self->_settingDescriptionView];

  [(SKUISettingsTableViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  [(SKUISettingDescriptionView *)self->_settingDescriptionView removeFromSuperview];
  settingDescriptionView = self->_settingDescriptionView;
  self->_settingDescriptionView = 0;

  self->_hasDisclosureChevron = 0;
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = SKUISettingsTableViewCell;
  [(SKUISettingsTableViewCell *)&v37 layoutSubviews];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 userInterfaceLayoutDirection];

  v5 = [(SKUISettingsTableViewCell *)self contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(SKUISettingsTableViewCell *)self layoutMargins];
  v16 = v14;
  v18 = v17;
  v19 = v15;
  v21 = v20;
  if (self->_hasDisclosureChevron)
  {
    v35 = v15;
    v36 = v14;
    v22 = SKUIImageWithResourceName(@"chevronRight");
    v23 = [v22 imageFlippedForRightToLeftLayoutDirection];

    if (!self->_disclosureChevron)
    {
      v24 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v23];
      disclosureChevron = self->_disclosureChevron;
      self->_disclosureChevron = v24;

      v26 = self->_disclosureChevron;
      v27 = [MEMORY[0x277D75348] colorWithWhite:0.674509804 alpha:1.0];
      [(UIImageView *)v26 setTintColor:v27];

      v28 = [(SKUISettingsTableViewCell *)self contentView];
      [v28 addSubview:self->_disclosureChevron];
    }

    [v23 size];
    v30 = v29;
    v32 = v31;
    v34 = v21;
    if (v4)
    {
      v33 = v18;
    }

    else
    {
      v38.origin.x = v7;
      v38.origin.y = v9;
      v38.size.width = v11;
      v38.size.height = v13;
      v33 = CGRectGetWidth(v38) - v30 - v21;
    }

    v39.origin.x = v7;
    v39.origin.y = v9;
    v39.size.width = v11;
    v39.size.height = v13;
    [(UIImageView *)self->_disclosureChevron setFrame:v33, (CGRectGetHeight(v39) - v32) * 0.5, v30, v32];
    [(UIImageView *)self->_disclosureChevron setHidden:0];

    v19 = v35;
    v16 = v36;
    v21 = v34;
  }

  else
  {
    [(UIImageView *)self->_disclosureChevron setHidden:1];
  }

  [(SKUISettingDescriptionView *)self->_settingDescriptionView setLayoutMargins:v16, v18, v19, v21];
  [(SKUISettingDescriptionView *)self->_settingDescriptionView setFrame:v7, v9, v11, v13];
}

- (void)setBackgroundColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKUISettingsTableViewCell;
  [(SKUISettingsTableViewCell *)&v3 setBackgroundColor:a3];
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsTableViewCell initWithStyle:reuseIdentifier:]";
}

@end