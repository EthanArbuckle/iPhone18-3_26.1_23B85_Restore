@interface SKUIButtonFooterSettingsHeaderFooterDescriptionView
+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)description reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context;
+ (id)_buttonWithButtonElement:(id)element;
+ (void)requestLayoutForSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (void)_buttonTapped:(id)tapped;
- (void)_reloadWithButtonElement:(id)element context:(id)context;
- (void)layoutSubviews;
- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SKUIButtonFooterSettingsHeaderFooterDescriptionView

+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)v4 preferredSizeForSettingsHeaderFooterDescription:v5 context:v6, v7, v8, v9, v10, v11];
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
        [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)v5 prefetchResourcesForSettingsHeaderFooterDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
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
      [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)v5 requestLayoutForSettingsHeaderFooterDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)v8 sizeThatFitsWidth:v9 settingsHeaderFooterDescription:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  viewElement = [descriptionCopy viewElement];
  v17 = [viewElement firstChildForElementType:12];
  v18 = [self _buttonWithButtonElement:v17];
  titleLabel = [v18 titleLabel];
  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [titleLabel setFont:v20];
  [titleLabel sizeThatFits:{width, 1.0}];
  v22 = v21;
  v24 = v23;
  [titleLabel setFrame:{0.0, 0.0, v21, v23}];
  [v20 _scaledValueForValue:20.0];
  v26 = v25;
  [titleLabel _firstLineBaselineFrameOriginY];
  v28 = v24 + v26 - v27;

  v29 = v22;
  v30 = v28;
  result.height = v30;
  result.width = v29;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)v9 reloadWithSettingsHeaderFooterDescription:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  viewElement = [descriptionCopy viewElement];
  viewElement = self->_viewElement;
  self->_viewElement = viewElement;

  v19 = [(SKUIViewElement *)self->_viewElement firstChildForElementType:12];
  buttonElement = self->_buttonElement;
  self->_buttonElement = v19;

  button = self->_button;
  if (button)
  {
    [(UIButton *)button removeFromSuperview];
    v22 = self->_button;
    self->_button = 0;
  }

  v23 = [objc_opt_class() _buttonWithButtonElement:self->_buttonElement];
  v24 = self->_button;
  self->_button = v23;

  [(UIButton *)self->_button addTarget:self action:sel__buttonTapped_ forControlEvents:64];
  style = [(SKUIButtonViewElement *)self->_buttonElement style];
  ikColor = [style ikColor];
  tintColor = [contextCopy tintColor];

  v28 = SKUIViewElementPlainColorWithIKColor(ikColor, tintColor);

  [(UIButton *)self->_button setTitleColor:v28 forState:0];
  v29 = self->_button;
  v30 = [v28 colorWithAlphaComponent:0.2];
  [(UIButton *)v29 setTitleColor:v30 forState:1];

  [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)self addSubview:self->_button];
  [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)self setNeedsLayout];
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
        [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)v3 layoutSubviews:v4];
      }
    }
  }

  v31.receiver = self;
  v31.super_class = SKUIButtonFooterSettingsHeaderFooterDescriptionView;
  [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)&v31 layoutSubviews];
  titleLabel = [(UIButton *)self->_button titleLabel];
  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [titleLabel setFont:v12];
  [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)self layoutMargins];
  v22 = v21;
  v24 = v23;
  v32.origin.x = v14;
  v32.origin.y = v16;
  v32.size.width = v18;
  v32.size.height = v20;
  v25 = CGRectGetWidth(v32) - v22 - v24;
  [titleLabel sizeThatFits:{v25, 1.0}];
  v27 = v26;
  [v12 _scaledValueForValue:20.0];
  v29 = v28;
  [titleLabel _firstBaselineOffsetFromTop];
  [(UIButton *)self->_button setFrame:v22, v29 - v30, v25, v27];
}

- (void)_buttonTapped:(id)tapped
{
  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"headerFooterButton", @"identifier", 0}];
  [(SKUIButtonViewElement *)self->_buttonElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:v4 completionBlock:0];
}

+ (id)_buttonWithButtonElement:(id)element
{
  v3 = MEMORY[0x277D75220];
  elementCopy = element;
  v5 = objc_alloc_init(v3);
  buttonText = [elementCopy buttonText];

  string = [buttonText string];

  [v5 setTitle:string forState:0];
  tintColor = [v5 tintColor];
  [v5 setTitleColor:tintColor forState:0];

  return v5;
}

- (void)_reloadWithButtonElement:(id)element context:(id)context
{
  elementCopy = element;
  objc_storeStrong(&self->_buttonElement, element);
  contextCopy = context;
  button = self->_button;
  if (button)
  {
    [(UIButton *)button removeFromSuperview];
    v9 = self->_button;
    self->_button = 0;
  }

  v10 = [objc_opt_class() _buttonWithButtonElement:elementCopy];
  v11 = self->_button;
  self->_button = v10;

  [(UIButton *)self->_button addTarget:self action:sel__buttonTapped_ forControlEvents:64];
  style = [elementCopy style];
  ikColor = [style ikColor];
  tintColor = [contextCopy tintColor];

  v15 = SKUIViewElementPlainColorWithIKColor(ikColor, tintColor);

  [(UIButton *)self->_button setTitleColor:v15 forState:0];
  v16 = self->_button;
  v17 = [v15 colorWithAlphaComponent:0.2];
  [(UIButton *)v16 setTitleColor:v17 forState:1];

  [(SKUIButtonFooterSettingsHeaderFooterDescriptionView *)self addSubview:self->_button];
}

@end