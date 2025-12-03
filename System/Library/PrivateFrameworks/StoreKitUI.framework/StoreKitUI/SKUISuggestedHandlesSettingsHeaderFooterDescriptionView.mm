@interface SKUISuggestedHandlesSettingsHeaderFooterDescriptionView
+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)description reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context;
+ (id)_helpLabelWithDescription:(id)description forWidth:(double)width;
+ (void)requestLayoutForSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (void)_buttonAction:(id)action;
- (void)layoutSubviews;
- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SKUISuggestedHandlesSettingsHeaderFooterDescriptionView

+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)description reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)v5 prefetchResourcesForSettingsHeaderFooterDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)v4 preferredSizeForSettingsHeaderFooterDescription:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)v5 requestLayoutForSettingsHeaderFooterDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)v8 sizeThatFitsWidth:v9 settingsHeaderFooterDescription:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = descriptionCopy;
  suggestedHandles = [v16 suggestedHandles];
  v18 = [suggestedHandles count];

  v19 = *MEMORY[0x277D769E0];
  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v20 _scaledValueForValue:30.0];
  v22 = v21;
  v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:v19];
  [v23 _scaledValueForValue:22.0];
  v25 = v24;
  v26 = [self _helpLabelWithDescription:v16 forWidth:width];

  [v26 _firstLineBaselineFrameOriginY];
  v28 = v25 - v27;
  [v26 _lastLineBaselineFrameOriginY];
  v30 = v28 + v29 + v22 * v18;

  widthCopy = width;
  v32 = v30;
  result.height = v32;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)v8 reloadWithSettingsHeaderFooterDescription:v9 width:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  description = self->_description;
  self->_description = descriptionCopy;
  v17 = descriptionCopy;

  v18 = [objc_opt_class() _helpLabelWithDescription:self->_description forWidth:width];
  label = self->_label;
  self->_label = v18;

  [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)self addSubview:self->_label];
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  buttons = self->_buttons;
  self->_buttons = v20;

  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  suggestedHandles = [(SKUISuggestedHandlesSettingsHeaderFooterDescription *)self->_description suggestedHandles];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __115__SKUISuggestedHandlesSettingsHeaderFooterDescriptionView_reloadWithSettingsHeaderFooterDescription_width_context___block_invoke;
  v25[3] = &unk_2781F82D0;
  v26 = v22;
  selfCopy = self;
  v24 = v22;
  [suggestedHandles enumerateObjectsUsingBlock:v25];
}

void __115__SKUISuggestedHandlesSettingsHeaderFooterDescriptionView_reloadWithSettingsHeaderFooterDescription_width_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D75220];
  v6 = a2;
  v11 = [v5 buttonWithType:1];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", v6];

  [v11 setTitle:v7 forState:0];
  v8 = [MEMORY[0x277D75348] systemPinkColor];
  [v11 setTitleColor:v8 forState:0];

  v9 = [v11 titleLabel];
  [v9 setFont:*(a1 + 32)];

  v10 = [v11 titleLabel];
  [v10 setTextAlignment:0];

  [v11 setTag:a3];
  [v11 addTarget:*(a1 + 40) action:sel__buttonAction_ forControlEvents:64];
  [*(*(a1 + 40) + 408) addObject:v11];
  [*(a1 + 40) addSubview:v11];
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
        [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)v3 layoutSubviews:v4];
      }
    }
  }

  v41.receiver = self;
  v41.super_class = SKUISuggestedHandlesSettingsHeaderFooterDescriptionView;
  [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)&v41 layoutSubviews];
  [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(SKUISuggestedHandlesSettingsHeaderFooterDescriptionView *)self layoutMargins];
  v37 = v20;
  v38 = v19;
  v22 = v21;
  v24 = v23;
  v42.origin.x = v12;
  v42.origin.y = v14;
  v42.size.width = v16;
  v42.size.height = v18;
  v25 = CGRectGetWidth(v42) - v22 - v24;
  v26 = *MEMORY[0x277D769E0];
  v27 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v27 _scaledValueForValue:22.0];
  v29 = v28;
  [(UILabel *)self->_label _firstBaselineOffsetFromTop];
  v31 = v29 - v30;
  [(UILabel *)self->_label sizeThatFits:v25, 1.0];
  [(UILabel *)self->_label setFrame:v22, v31, v25, v32];
  v33 = [MEMORY[0x277D74300] preferredFontForTextStyle:v26];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  [(UILabel *)self->_label _lastLineBaselineFrameOriginY];
  v40[3] = v34;
  [v33 _scaledValueForValue:30.0];
  buttons = self->_buttons;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __73__SKUISuggestedHandlesSettingsHeaderFooterDescriptionView_layoutSubviews__block_invoke;
  v39[3] = &unk_278200B88;
  v39[4] = v40;
  v39[5] = v36;
  *&v39[6] = v12;
  *&v39[7] = v14;
  *&v39[8] = v16;
  *&v39[9] = v18;
  v39[10] = v38;
  *&v39[11] = v22;
  v39[12] = v37;
  *&v39[13] = v24;
  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v39];
  _Block_object_dispose(v40, 8);
}

void __73__SKUISuggestedHandlesSettingsHeaderFooterDescriptionView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40) + *(*(*(a1 + 32) + 8) + 24);
  v3 = a2;
  v8 = [v3 titleLabel];
  [v8 _firstBaselineOffsetFromTop];
  v5 = v4;
  [v3 sizeThatFits:{CGRectGetWidth(*(a1 + 48)), 1.0}];
  [v3 setFrame:{*(a1 + 88), *(*(*(a1 + 32) + 8) + 24) - v5, v6, v7}];
}

- (void)_buttonAction:(id)action
{
  v4 = [action tag];
  description = self->_description;

  [(SKUISuggestedHandlesSettingsHeaderFooterDescription *)description selectedHandleAtIndex:v4];
}

+ (id)_helpLabelWithDescription:(id)description forWidth:(double)width
{
  v5 = MEMORY[0x277D756B8];
  descriptionCopy = description;
  v7 = objc_alloc_init(v5);
  helpText = [descriptionCopy helpText];

  [v7 setText:helpText];
  [v7 setNumberOfLines:0];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v7 setFont:v9];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v7 setColor:systemGrayColor];

  [v7 sizeThatFits:{width, 1.0}];
  [v7 setFrame:{0.0, 0.0, width, v11}];

  return v7;
}

@end