@interface SKUISizeValue
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (SKUISizeValue)initWithSize:(CGSize)a3;
- (id)description;
- (void)unionWithSize:(CGSize)a3;
@end

@implementation SKUISizeValue

- (SKUISizeValue)initWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUISizeValue initWithSize:];
  }

  v7.receiver = self;
  v7.super_class = SKUISizeValue;
  result = [(SKUISizeValue *)&v7 init];
  if (result)
  {
    result->_height = height;
    result->_width = width;
  }

  return result;
}

- (CGSize)size
{
  width = self->_width;
  height = self->_height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)unionWithSize:(CGSize)a3
{
  v3 = vcvtq_f64_s64(*&self->_height);
  width = a3.width;
  *&self->_height = vcvtq_s64_f64(vbslq_s8(vcgtq_f64(*&a3.height, v3), *&a3.height, v3));
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SKUISizeValue;
  v4 = [(SKUISizeValue *)&v8 description];
  [(SKUISizeValue *)self size];
  v5 = NSStringFromCGSize(v10);
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_width == v4[2] && self->_height == v4[1];

  return v6;
}

- (void)initWithSize:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISizeValue initWithSize:]";
}

@end