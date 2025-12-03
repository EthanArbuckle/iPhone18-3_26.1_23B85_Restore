@interface SKUIViewElementText
- (id)attributedStringWithDefaultFont:(id)font foregroundColor:(id)color;
- (id)attributedStringWithDefaultFont:(id)font foregroundColor:(id)color style:(id)style;
- (id)attributedStringWithDefaultFont:(id)font foregroundColor:(id)color textAlignment:(int64_t)alignment;
- (id)attributedStringWithDefaultFont:(id)font foregroundColor:(id)color textAlignment:(int64_t)alignment style:(id)style;
@end

@implementation SKUIViewElementText

- (id)attributedStringWithDefaultFont:(id)font foregroundColor:(id)color
{
  fontCopy = font;
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIViewElementText *)v8 attributedStringWithDefaultFont:v9 foregroundColor:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [(SKUIViewElementText *)self attributedStringWithDefaultFont:fontCopy foregroundColor:colorCopy textAlignment:0];

  return v16;
}

- (id)attributedStringWithDefaultFont:(id)font foregroundColor:(id)color textAlignment:(int64_t)alignment
{
  fontCopy = font;
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewElementText *)v10 attributedStringWithDefaultFont:v11 foregroundColor:v12 textAlignment:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewElementText *)self attributedStringWithDefaultFont:fontCopy foregroundColor:colorCopy textAlignment:alignment style:0];

  return v18;
}

- (id)attributedStringWithDefaultFont:(id)font foregroundColor:(id)color style:(id)style
{
  fontCopy = font;
  colorCopy = color;
  styleCopy = style;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        [(SKUIViewElementText *)v11 attributedStringWithDefaultFont:v12 foregroundColor:v13 style:v14, v15, v16, v17, v18];
      }
    }
  }

  v19 = [(IKTextParser *)self attributedStringWithFont:fontCopy foregroundColor:colorCopy textAlignment:0 style:styleCopy];

  return v19;
}

- (id)attributedStringWithDefaultFont:(id)font foregroundColor:(id)color textAlignment:(int64_t)alignment style:(id)style
{
  fontCopy = font;
  colorCopy = color;
  styleCopy = style;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        [(SKUIViewElementText *)v13 attributedStringWithDefaultFont:v14 foregroundColor:v15 textAlignment:v16 style:v17, v18, v19, v20];
      }
    }
  }

  v21 = [(IKTextParser *)self attributedStringWithFont:fontCopy foregroundColor:colorCopy textAlignment:alignment style:styleCopy];

  return v21;
}

@end