@interface SKUIImagePlaceholder
- (SKUIImagePlaceholder)initWithBackgroundColor:(id)color borderColor:(id)borderColor borderWidth:(double)width cornerPathBlock:(id)block;
- (SKUIImagePlaceholder)initWithBackgroundColor:(id)color borderColor:(id)borderColor borderWidth:(double)width cornerRadius:(double)radius;
@end

@implementation SKUIImagePlaceholder

- (SKUIImagePlaceholder)initWithBackgroundColor:(id)color borderColor:(id)borderColor borderWidth:(double)width cornerRadius:(double)radius
{
  colorCopy = color;
  borderColorCopy = borderColor;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIImagePlaceholder initWithBackgroundColor:borderColor:borderWidth:cornerRadius:];
  }

  if (radius >= 0.00000011920929)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __SKUIImagePlaceholderCornerPathBlockCreate_block_invoke_2;
    aBlock[3] = &__block_descriptor_40_e53___UIBezierPath_40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    *&aBlock[4] = radius;
    v12 = _Block_copy(aBlock);
  }

  else if (width >= 0.00000011920929)
  {
    v12 = &__block_literal_global_55;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(SKUIImagePlaceholder *)self initWithBackgroundColor:colorCopy borderColor:borderColorCopy borderWidth:v12 cornerPathBlock:width];

  return v13;
}

- (SKUIImagePlaceholder)initWithBackgroundColor:(id)color borderColor:(id)borderColor borderWidth:(double)width cornerPathBlock:(id)block
{
  colorCopy = color;
  borderColorCopy = borderColor;
  blockCopy = block;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIImagePlaceholder initWithBackgroundColor:borderColor:borderWidth:cornerPathBlock:];
  }

  v19.receiver = self;
  v19.super_class = SKUIImagePlaceholder;
  v14 = [(SKUIImagePlaceholder *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_backgroundColor, color);
    objc_storeStrong(&v15->_borderColor, borderColor);
    v15->_borderWidth = width;
    v16 = [blockCopy copy];
    cornerPathBlock = v15->_cornerPathBlock;
    v15->_cornerPathBlock = v16;
  }

  return v15;
}

- (void)initWithBackgroundColor:borderColor:borderWidth:cornerRadius:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIImagePlaceholder initWithBackgroundColor:borderColor:borderWidth:cornerRadius:]";
}

- (void)initWithBackgroundColor:borderColor:borderWidth:cornerPathBlock:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIImagePlaceholder initWithBackgroundColor:borderColor:borderWidth:cornerPathBlock:]";
}

@end