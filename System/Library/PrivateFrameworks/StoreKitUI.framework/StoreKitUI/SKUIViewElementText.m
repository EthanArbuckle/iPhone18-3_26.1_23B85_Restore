@interface SKUIViewElementText
- (id)attributedStringWithDefaultFont:(id)a3 foregroundColor:(id)a4;
- (id)attributedStringWithDefaultFont:(id)a3 foregroundColor:(id)a4 style:(id)a5;
- (id)attributedStringWithDefaultFont:(id)a3 foregroundColor:(id)a4 textAlignment:(int64_t)a5;
- (id)attributedStringWithDefaultFont:(id)a3 foregroundColor:(id)a4 textAlignment:(int64_t)a5 style:(id)a6;
@end

@implementation SKUIViewElementText

- (id)attributedStringWithDefaultFont:(id)a3 foregroundColor:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v16 = [(SKUIViewElementText *)self attributedStringWithDefaultFont:v6 foregroundColor:v7 textAlignment:0];

  return v16;
}

- (id)attributedStringWithDefaultFont:(id)a3 foregroundColor:(id)a4 textAlignment:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
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

  v18 = [(SKUIViewElementText *)self attributedStringWithDefaultFont:v8 foregroundColor:v9 textAlignment:a5 style:0];

  return v18;
}

- (id)attributedStringWithDefaultFont:(id)a3 foregroundColor:(id)a4 style:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v19 = [(IKTextParser *)self attributedStringWithFont:v8 foregroundColor:v9 textAlignment:0 style:v10];

  return v19;
}

- (id)attributedStringWithDefaultFont:(id)a3 foregroundColor:(id)a4 textAlignment:(int64_t)a5 style:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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

  v21 = [(IKTextParser *)self attributedStringWithFont:v10 foregroundColor:v11 textAlignment:a5 style:v12];

  return v21;
}

@end