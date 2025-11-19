@interface SKUIProgrammedCardLayout
+ (BOOL)allowsViewElement:(id)a3;
- (double)bottomInsetForLastViewElement:(id)a3 width:(double)a4;
- (double)horizontalContentInset;
- (double)topInsetForViewElement:(id)a3 previousViewElement:(id)a4 width:(double)a5;
- (id)_fontForButton:(id)a3;
- (id)_fontForLabel:(id)a3;
- (id)_stringLayoutForViewElement:(id)a3 width:(double)a4;
- (id)attributedStringForButton:(id)a3;
- (id)attributedStringForLabel:(id)a3;
- (int64_t)layoutStyle;
@end

@implementation SKUIProgrammedCardLayout

+ (BOOL)allowsViewElement:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIProgrammedCardLayout *)v4 allowsViewElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [v3 elementType];
  v13 = 1;
  if (v12 > 0x32 || ((1 << v12) & 0x6000000001000) == 0)
  {
    v13 = v12 == 138;
  }

  return v13;
}

- (id)attributedStringForButton:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProgrammedCardLayout *)v5 attributedStringForButton:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 style];
  v14 = SKUIViewElementAlignmentForStyle(v13);

  if (v14)
  {
    v15 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v14);
  }

  else
  {
    v15 = 1;
  }

  v16 = [v4 buttonText];
  v17 = [(SKUIProgrammedCardLayout *)self _fontForButton:v4];
  v18 = [v4 style];
  v19 = [v16 attributedStringWithDefaultFont:v17 foregroundColor:0 textAlignment:v15 style:v18];

  return v19;
}

- (id)attributedStringForLabel:(id)a3
{
  v4 = a3;
  v5 = [v4 style];
  v6 = [v5 textAlignment];
  if (v6)
  {
    v7 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v6);
  }

  else
  {
    v7 = 1;
  }

  v8 = [(SKUICardLayout *)self layoutContext];
  v9 = [v8 tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(v5, v9);

  if (!v10)
  {
    if ([v4 labelViewStyle] == 5)
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
    }
    v10 = ;
  }

  v11 = [v4 text];
  v12 = [(SKUIProgrammedCardLayout *)self _fontForLabel:v4];
  v13 = [v11 attributedStringWithDefaultFont:v12 foregroundColor:v10 textAlignment:v7 style:v5];

  return v13;
}

- (double)bottomInsetForLastViewElement:(id)a3 width:(double)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIProgrammedCardLayout *)v7 bottomInsetForLastViewElement:v8 width:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [(SKUIProgrammedCardLayout *)self _stringLayoutForViewElement:v6 width:a4];
  v16 = v15;
  if (v15)
  {
    [v15 boundingSize];
    v18 = v17;
    [v16 baselineOffset];
    *&v19 = v18 - v19;
    v20 = 30.0 - roundf(*&v19);
  }

  else
  {
    v20 = 30.0;
  }

  return v20;
}

- (double)horizontalContentInset
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIProgrammedCardLayout *)v2 horizontalContentInset:v3];
      }
    }
  }

  return 20.0;
}

- (int64_t)layoutStyle
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIProgrammedCardLayout *)v2 layoutStyle:v3];
      }
    }
  }

  return 1;
}

- (double)topInsetForViewElement:(id)a3 previousViewElement:(id)a4 width:(double)a5
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
        [(SKUIProgrammedCardLayout *)v10 topInsetForViewElement:v11 previousViewElement:v12 width:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [v8 elementType];
  if ((v18 - 49) < 2)
  {
    v19 = 20.0;
  }

  else
  {
    if (v18 == 138)
    {
      v20 = [(SKUIProgrammedCardLayout *)self _fontForLabel:v8];
    }

    else
    {
      v19 = 0.0;
      if (v18 != 12)
      {
        goto LABEL_12;
      }

      v20 = [(SKUIProgrammedCardLayout *)self _fontForButton:v8];
    }

    v21 = v20;
    [v20 lineHeight];
    *&v22 = v22 + v22;
    v19 = roundf(*&v22);
  }

LABEL_12:
  v23 = [(SKUIProgrammedCardLayout *)self _stringLayoutForViewElement:v8 width:a5];
  v24 = v23;
  if (v23)
  {
    [v23 firstBaselineOffset];
    *&v25 = v25;
    v19 = v19 - roundf(*&v25);
  }

  v26 = [(SKUIProgrammedCardLayout *)self _stringLayoutForViewElement:v9 width:a5];

  if (v26)
  {
    [v26 boundingSize];
    v28 = v27;
    [v26 baselineOffset];
    *&v29 = v28 - v29;
    v19 = v19 - roundf(*&v29);
  }

  return v19;
}

- (id)_fontForButton:(id)a3
{
  v3 = a3;
  v4 = [v3 buttonTitleStyle];
  v5 = v4;
  if (v4)
  {
    v6 = SKUIViewElementFontWithStyle(v4);
  }

  else
  {
    v7 = [v3 style];
    v6 = SKUIViewElementFontWithStyle(v7);
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  }

  v9 = v8;

  return v9;
}

- (id)_fontForLabel:(id)a3
{
  v3 = a3;
  v4 = [v3 style];
  v5 = SKUIViewElementFontWithStyle(v4);

  if (!v5)
  {
    v6 = [v3 labelViewStyle];
    v7 = 14.0;
    if (v6 == 5)
    {
      v7 = 20.0;
    }

    v5 = [MEMORY[0x277D74300] systemFontOfSize:v7];
  }

  return v5;
}

- (id)_stringLayoutForViewElement:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [v6 elementType];
  if (v7 == 138 || v7 == 12)
  {
    v9 = [(SKUICardLayout *)self layoutContext];
    v10 = [v9 labelLayoutCache];
    v11 = [v10 layoutForWidth:a4 viewElement:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end