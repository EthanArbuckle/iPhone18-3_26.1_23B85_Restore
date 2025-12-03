@interface SKUIProgrammedCardLayout
+ (BOOL)allowsViewElement:(id)element;
- (double)bottomInsetForLastViewElement:(id)element width:(double)width;
- (double)horizontalContentInset;
- (double)topInsetForViewElement:(id)element previousViewElement:(id)viewElement width:(double)width;
- (id)_fontForButton:(id)button;
- (id)_fontForLabel:(id)label;
- (id)_stringLayoutForViewElement:(id)element width:(double)width;
- (id)attributedStringForButton:(id)button;
- (id)attributedStringForLabel:(id)label;
- (int64_t)layoutStyle;
@end

@implementation SKUIProgrammedCardLayout

+ (BOOL)allowsViewElement:(id)element
{
  elementCopy = element;
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

  elementType = [elementCopy elementType];
  v13 = 1;
  if (elementType > 0x32 || ((1 << elementType) & 0x6000000001000) == 0)
  {
    v13 = elementType == 138;
  }

  return v13;
}

- (id)attributedStringForButton:(id)button
{
  buttonCopy = button;
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

  style = [buttonCopy style];
  v14 = SKUIViewElementAlignmentForStyle(style);

  if (v14)
  {
    v15 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v14);
  }

  else
  {
    v15 = 1;
  }

  buttonText = [buttonCopy buttonText];
  v17 = [(SKUIProgrammedCardLayout *)self _fontForButton:buttonCopy];
  style2 = [buttonCopy style];
  v19 = [buttonText attributedStringWithDefaultFont:v17 foregroundColor:0 textAlignment:v15 style:style2];

  return v19;
}

- (id)attributedStringForLabel:(id)label
{
  labelCopy = label;
  style = [labelCopy style];
  textAlignment = [style textAlignment];
  if (textAlignment)
  {
    v7 = SKUIViewElementNSTextAlignmentForIKElementAlignment(textAlignment);
  }

  else
  {
    v7 = 1;
  }

  layoutContext = [(SKUICardLayout *)self layoutContext];
  tintColor = [layoutContext tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v10)
  {
    if ([labelCopy labelViewStyle] == 5)
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
    }
    v10 = ;
  }

  text = [labelCopy text];
  v12 = [(SKUIProgrammedCardLayout *)self _fontForLabel:labelCopy];
  v13 = [text attributedStringWithDefaultFont:v12 foregroundColor:v10 textAlignment:v7 style:style];

  return v13;
}

- (double)bottomInsetForLastViewElement:(id)element width:(double)width
{
  elementCopy = element;
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

  v15 = [(SKUIProgrammedCardLayout *)self _stringLayoutForViewElement:elementCopy width:width];
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

- (double)topInsetForViewElement:(id)element previousViewElement:(id)viewElement width:(double)width
{
  elementCopy = element;
  viewElementCopy = viewElement;
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

  elementType = [elementCopy elementType];
  if ((elementType - 49) < 2)
  {
    v19 = 20.0;
  }

  else
  {
    if (elementType == 138)
    {
      v20 = [(SKUIProgrammedCardLayout *)self _fontForLabel:elementCopy];
    }

    else
    {
      v19 = 0.0;
      if (elementType != 12)
      {
        goto LABEL_12;
      }

      v20 = [(SKUIProgrammedCardLayout *)self _fontForButton:elementCopy];
    }

    v21 = v20;
    [v20 lineHeight];
    *&v22 = v22 + v22;
    v19 = roundf(*&v22);
  }

LABEL_12:
  v23 = [(SKUIProgrammedCardLayout *)self _stringLayoutForViewElement:elementCopy width:width];
  v24 = v23;
  if (v23)
  {
    [v23 firstBaselineOffset];
    *&v25 = v25;
    v19 = v19 - roundf(*&v25);
  }

  v26 = [(SKUIProgrammedCardLayout *)self _stringLayoutForViewElement:viewElementCopy width:width];

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

- (id)_fontForButton:(id)button
{
  buttonCopy = button;
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v5 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    v6 = SKUIViewElementFontWithStyle(buttonTitleStyle);
  }

  else
  {
    style = [buttonCopy style];
    v6 = SKUIViewElementFontWithStyle(style);
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

- (id)_fontForLabel:(id)label
{
  labelCopy = label;
  style = [labelCopy style];
  v5 = SKUIViewElementFontWithStyle(style);

  if (!v5)
  {
    labelViewStyle = [labelCopy labelViewStyle];
    v7 = 14.0;
    if (labelViewStyle == 5)
    {
      v7 = 20.0;
    }

    v5 = [MEMORY[0x277D74300] systemFontOfSize:v7];
  }

  return v5;
}

- (id)_stringLayoutForViewElement:(id)element width:(double)width
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  if (elementType == 138 || elementType == 12)
  {
    layoutContext = [(SKUICardLayout *)self layoutContext];
    labelLayoutCache = [layoutContext labelLayoutCache];
    v11 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end