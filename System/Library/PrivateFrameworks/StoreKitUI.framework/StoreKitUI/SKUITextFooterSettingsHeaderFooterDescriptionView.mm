@interface SKUITextFooterSettingsHeaderFooterDescriptionView
+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)description reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context;
+ (id)_concatenateTextFromLabelElements:(id)elements;
+ (id)_labelWithLabelElements:(id)elements;
+ (void)requestLayoutForSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (void)layoutSubviews;
- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SKUITextFooterSettingsHeaderFooterDescriptionView

+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITextFooterSettingsHeaderFooterDescriptionView *)v4 preferredSizeForSettingsHeaderFooterDescription:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)description reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITextFooterSettingsHeaderFooterDescriptionView *)v5 prefetchResourcesForSettingsHeaderFooterDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (void)requestLayoutForSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUITextFooterSettingsHeaderFooterDescriptionView *)v5 requestLayoutForSettingsHeaderFooterDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context
{
  descriptionCopy = description;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUITextFooterSettingsHeaderFooterDescriptionView *)v8 sizeThatFitsWidth:v9 settingsHeaderFooterDescription:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  viewElement = [descriptionCopy viewElement];
  v17 = [objc_opt_class() _labelElementsFromViewElement:viewElement];
  v18 = [self _labelWithLabelElements:v17];
  v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [v18 setFont:v19];
  [v18 sizeThatFits:{width, 1.0}];
  v21 = v20;
  v23 = v22;
  [v18 setFrame:{0.0, 0.0, v20, v22}];
  [v19 _scaledValueForValue:16.0];
  v25 = v24;
  [v18 _firstLineBaselineFrameOriginY];
  v27 = v23 + v25 - v26;

  v28 = v21;
  v29 = v27;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUITextFooterSettingsHeaderFooterDescriptionView *)v7 reloadWithSettingsHeaderFooterDescription:v8 width:v9 context:v10, v11, v12, v13, v14];
      }
    }
  }

  viewElement = [descriptionCopy viewElement];
  viewElement = self->_viewElement;
  self->_viewElement = viewElement;

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

  [(SKUITextFooterSettingsHeaderFooterDescriptionView *)self addSubview:self->_label];
  [(SKUITextFooterSettingsHeaderFooterDescriptionView *)self setNeedsLayout];
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITextFooterSettingsHeaderFooterDescriptionView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUITextFooterSettingsHeaderFooterDescriptionView *)v3 layoutSubviews:v4];
      }
    }
  }

  v30.receiver = self;
  v30.super_class = SKUITextFooterSettingsHeaderFooterDescriptionView;
  [(SKUITextFooterSettingsHeaderFooterDescriptionView *)&v30 layoutSubviews];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [(UILabel *)self->_label setFont:v11];
  [(SKUITextFooterSettingsHeaderFooterDescriptionView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(SKUITextFooterSettingsHeaderFooterDescriptionView *)self layoutMargins];
  v21 = v20;
  v23 = v22;
  v31.origin.x = v13;
  v31.origin.y = v15;
  v31.size.width = v17;
  v31.size.height = v19;
  v24 = CGRectGetWidth(v31) - v21 - v23;
  [(UILabel *)self->_label sizeThatFits:v24, 1.0];
  v26 = v25;
  [v11 _scaledValueForValue:16.0];
  v28 = v27;
  [(UILabel *)self->_label _firstBaselineOffsetFromTop];
  [(UILabel *)self->_label setFrame:v21, v28 - v29, v24, v26];
}

+ (id)_concatenateTextFromLabelElements:(id)elements
{
  v19 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = elementsCopy;
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

        text = [*(*(&v14 + 1) + 8 * i) text];
        string = [text string];

        [v4 addObject:string];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 componentsJoinedByString:@"\n"];

  return v12;
}

+ (id)_labelWithLabelElements:(id)elements
{
  v4 = MEMORY[0x277D756B8];
  elementsCopy = elements;
  v6 = objc_alloc_init(v4);
  [v6 setNumberOfLines:0];
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  [v6 setTextColor:v7];

  v8 = [self _concatenateTextFromLabelElements:elementsCopy];

  [v6 setText:v8];

  return v6;
}

@end