@interface SKUISettingsTableHeaderFooterView
- (void)displaySettingsHeaderFooterDescriptionView:(id)view;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SKUISettingsTableHeaderFooterView

- (void)displaySettingsHeaderFooterDescriptionView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISettingsTableHeaderFooterView *)v5 displaySettingsHeaderFooterDescriptionView:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  settingsHeaderFooterDescriptionView = self->_settingsHeaderFooterDescriptionView;
  self->_settingsHeaderFooterDescriptionView = viewCopy;
  v14 = viewCopy;

  contentView = [(SKUISettingsTableHeaderFooterView *)self contentView];
  [contentView addSubview:self->_settingsHeaderFooterDescriptionView];

  [(SKUISettingsTableHeaderFooterView *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUISettingsTableHeaderFooterView *)v3 prepareForReuse:v4];
      }
    }
  }

  [(SKUISettingsHeaderFooterDescriptionView *)self->_settingsHeaderFooterDescriptionView removeFromSuperview];
  settingsHeaderFooterDescriptionView = self->_settingsHeaderFooterDescriptionView;
  self->_settingsHeaderFooterDescriptionView = 0;
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUISettingsTableHeaderFooterView *)v3 layoutSubviews:v4];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUISettingsTableHeaderFooterView;
  [(SKUISettingsTableHeaderFooterView *)&v20 layoutSubviews];
  contentView = [(SKUISettingsTableHeaderFooterView *)self contentView];
  [contentView bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [(SKUISettingsTableHeaderFooterView *)self layoutMargins];
  [(SKUISettingsHeaderFooterDescriptionView *)self->_settingsHeaderFooterDescriptionView setLayoutMargins:?];
  [(SKUISettingsHeaderFooterDescriptionView *)self->_settingsHeaderFooterDescriptionView setFrame:v13, v15, v17, v19];
}

@end