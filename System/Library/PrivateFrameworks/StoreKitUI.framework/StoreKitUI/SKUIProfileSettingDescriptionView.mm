@interface SKUIProfileSettingDescriptionView
+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5;
+ (void)requestLayoutForSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)hasDisclosureChevron;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SKUIProfileSettingDescriptionView

+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProfileSettingDescriptionView *)v5 prefetchResourcesForSettingDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUIProfileSettingDescriptionView *)v4 preferredSizeForSettingDescription:v5 context:v6, v7, v8, v9, v10, v11];
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
      [(SKUIProfileSettingDescriptionView *)v5 requestLayoutForSettingDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUIProfileSettingDescriptionView *)v6 sizeThatFitsWidth:v7 settingDescription:v8 context:v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = *MEMORY[0x277D76918];
  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:v14];
  [v15 _scaledValueForValue:36.0];
  v19 = v18 + 0.0;
  [v16 _scaledValueForValue:16.0];
  v21 = v19 + v20;
  [v17 _scaledValueForValue:20.0];
  v23 = v21 + v22;

  v24 = a3;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (BOOL)hasDisclosureChevron
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProfileSettingDescriptionView *)v3 hasDisclosureChevron:v4];
      }
    }
  }

  return self->_hasDisclosureChevron;
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIProfileSettingDescriptionView *)v7 reloadWithSettingDescription:v8 width:v9 context:v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = v6;
  v16 = [v15 viewElement];
  v17 = [v16 firstChildForElementType:29];
  self->_hasDisclosureChevron = v17 != 0;

  if (!self->_handleLabel)
  {
    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    handleLabel = self->_handleLabel;
    self->_handleLabel = v18;

    v20 = self->_handleLabel;
    v21 = [MEMORY[0x277D75348] grayColor];
    [(UILabel *)v20 setColor:v21];

    [(SKUIProfileSettingDescriptionView *)self addSubview:self->_handleLabel];
  }

  v22 = [v15 handle];
  v23 = v22;
  if (v22 && [v22 length])
  {
    [(UILabel *)self->_handleLabel setHidden:0];
    v24 = self->_handleLabel;
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", v23];
    [(UILabel *)v24 setText:v25];
  }

  else
  {
    [(UILabel *)self->_handleLabel setHidden:1];
  }

  nameLabel = self->_nameLabel;
  if (!nameLabel)
  {
    v27 = objc_alloc_init(MEMORY[0x277D756B8]);
    v28 = self->_nameLabel;
    self->_nameLabel = v27;

    v29 = self->_nameLabel;
    v30 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v29 setColor:v30];

    [(SKUIProfileSettingDescriptionView *)self addSubview:self->_nameLabel];
    nameLabel = self->_nameLabel;
  }

  v31 = [v15 name];
  [(UILabel *)nameLabel setText:v31];

  imageView = self->_imageView;
  if (!imageView)
  {
    v33 = objc_alloc_init(SKUIImageView);
    v34 = self->_imageView;
    self->_imageView = v33;

    [(SKUIProfileSettingDescriptionView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  v35 = [v15 photo];
  [(SKUIImageView *)imageView setImage:v35];
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProfileSettingDescriptionView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
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
        [(SKUIProfileSettingDescriptionView *)v3 layoutSubviews:v4];
      }
    }
  }

  v41.receiver = self;
  v41.super_class = SKUIProfileSettingDescriptionView;
  [(SKUIProfileSettingDescriptionView *)&v41 layoutSubviews];
  [(SKUISettingDescriptionView *)self layoutMargins];
  v12 = v11;
  v14 = v13;
  [(SKUIProfileSettingDescriptionView *)self bounds];
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  v19 = floor((CGRectGetHeight(v42) + -56.0) * 0.5);
  imageView = self->_imageView;
  SKUIRectByApplyingUserInterfaceLayoutDirectionInRect(v12, v19, 56.0, 56.0, x, y, width, height);
  [(SKUIImageView *)imageView setFrame:?];
  v43.origin.x = v12;
  v43.origin.y = v19;
  v43.size.width = 56.0;
  v43.size.height = 56.0;
  v21 = CGRectGetMaxX(v43) + 8.0;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v22 = CGRectGetWidth(v44) - v21 - v14;
  v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_nameLabel setFont:v23];
  [(UILabel *)self->_nameLabel sizeThatFits:v22, 1.0];
  v25 = v24;
  if ([(UILabel *)self->_handleLabel isHidden])
  {
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v26 = CGRectGetHeight(v45);
    nameLabel = self->_nameLabel;
    SKUIRectByApplyingUserInterfaceLayoutDirectionInRect(v21, floor((v26 - v25) * 0.5), v22, v25, x, y, width, height);
    [(UILabel *)nameLabel setFrame:?];
  }

  else
  {
    [v23 _scaledValueForValue:36.0];
    v29 = v28;
    [(UILabel *)self->_nameLabel _firstBaselineOffsetFromTop];
    v31 = self->_nameLabel;
    SKUIRectByApplyingUserInterfaceLayoutDirectionInRect(v21, v29 - v30, v22, v25, x, y, width, height);
    [(UILabel *)v31 setFrame:?];
    v32 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
    [(UILabel *)self->_handleLabel setFont:v32];
    [(UILabel *)self->_handleLabel sizeThatFits:v22, 1.0];
    v34 = v33;
    [v32 _scaledValueForValue:16.0];
    v36 = v35;
    [(UILabel *)self->_nameLabel _lastLineBaselineFrameOriginY];
    v38 = v36 + v37;
    [(UILabel *)self->_handleLabel _firstBaselineOffsetFromTop];
    handleLabel = self->_handleLabel;
    SKUIRectByApplyingUserInterfaceLayoutDirectionInRect(v21, v38 - v39, v22, v34, x, y, width, height);
    [(UILabel *)handleLabel setFrame:?];
  }
}

@end