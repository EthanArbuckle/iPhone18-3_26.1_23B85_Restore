@interface SKUITextHeaderSettingsHeaderFooterDescriptionView
+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingsHeaderFooterDescription:(id)a4 context:(id)a5;
+ (id)_concatenateTextFromLabelElements:(id)a3;
+ (id)_labelWithLabelElements:(id)a3;
+ (void)requestLayoutForSettingsHeaderFooterDescription:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (void)layoutSubviews;
- (void)reloadWithSettingsHeaderFooterDescription:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SKUITextHeaderSettingsHeaderFooterDescriptionView

+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)a3 context:(id)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)v4 preferredSizeForSettingsHeaderFooterDescription:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)v5 prefetchResourcesForSettingsHeaderFooterDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (void)requestLayoutForSettingsHeaderFooterDescription:(id)a3 width:(double)a4 context:(id)a5
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)v5 requestLayoutForSettingsHeaderFooterDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 settingsHeaderFooterDescription:(id)a4 context:(id)a5
{
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)v8 sizeThatFitsWidth:v9 settingsHeaderFooterDescription:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [v7 viewElement];
  v17 = [objc_opt_class() _labelElementsFromViewElement:v16];
  v18 = [a1 _labelWithLabelElements:v17];
  v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [v18 setFont:v19];
  [v18 sizeThatFits:{a3, 1.0}];
  v21 = v20;
  v23 = v22;
  [v18 setFrame:{0.0, 0.0, v20, v22}];
  [v19 _scaledValueForValue:8.0];
  v25 = v24;
  [v18 _lastLineBaselineFrameOriginY];
  v27 = v23 + v25 - (v23 - v26);

  v28 = v21;
  v29 = v27;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)v7 reloadWithSettingsHeaderFooterDescription:v8 width:v9 context:v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [v6 viewElement];
  viewElement = self->_viewElement;
  self->_viewElement = v15;

  v17 = [objc_opt_class() _labelElementsFromViewElement:self->_viewElement];
  label = self->_label;
  if (label)
  {
    [(UILabel *)label removeFromSuperview];
    v19 = self->_label;
    self->_label = 0;
  }

  v20 = [objc_opt_class() _labelWithLabelElements:v17];
  v21 = self->_label;
  self->_label = v20;

  [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)self addSubview:self->_label];
  [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)self setNeedsLayout];
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
        [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)v3 layoutSubviews:v4];
      }
    }
  }

  v34.receiver = self;
  v34.super_class = SKUITextHeaderSettingsHeaderFooterDescriptionView;
  [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)&v34 layoutSubviews];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [(UILabel *)self->_label setFont:v11];
  [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(SKUITextHeaderSettingsHeaderFooterDescriptionView *)self layoutMargins];
  v21 = v20;
  v23 = v22;
  v35.origin.x = v13;
  v35.origin.y = v15;
  v35.size.width = v17;
  v35.size.height = v19;
  v24 = CGRectGetWidth(v35) - v21 - v23;
  [(UILabel *)self->_label sizeThatFits:v24, 1.0];
  v26 = v25;
  [v11 _scaledValueForValue:8.0];
  v28 = v27;
  [(UILabel *)self->_label _baselineOffsetFromBottom];
  v30 = v28 - v29;
  v36.origin.x = v13;
  v36.origin.y = v15;
  v36.size.width = v17;
  v36.size.height = v19;
  Height = CGRectGetHeight(v36);
  label = self->_label;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v21, Height - v30 - v26, v24, v26, v13, v15, v17, v19);
  [(UILabel *)label setFrame:?];
  if (storeShouldReverseLayoutDirection())
  {
    v33 = 2;
  }

  else
  {
    v33 = 0;
  }

  [(UILabel *)self->_label setTextAlignment:v33];
}

+ (id)_concatenateTextFromLabelElements:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) text];
        v11 = [v10 string];

        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 componentsJoinedByString:@"\n"];

  return v12;
}

+ (id)_labelWithLabelElements:(id)a3
{
  v4 = MEMORY[0x277D756B8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setNumberOfLines:0];
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  [v6 setTextColor:v7];

  v8 = [a1 _concatenateTextFromLabelElements:v5];

  [v6 setText:v8];

  return v6;
}

@end