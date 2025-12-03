@interface SKUIDefaultCardLayout
- (double)topInsetForViewElement:(id)element previousViewElement:(id)viewElement width:(double)width;
- (id)attributedStringForButton:(id)button;
- (id)attributedStringForLabel:(id)label;
@end

@implementation SKUIDefaultCardLayout

- (id)attributedStringForButton:(id)button
{
  buttonCopy = button;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIDefaultCardLayout *)v4 attributedStringForButton:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v13 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [buttonCopy style];
  }

  v15 = style;

  v16 = SKUIViewElementFontWithStyle(v15);
  if (!v16)
  {
    v16 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  }

  v17 = SKUIViewElementAlignmentForStyle(v15);
  if (v17)
  {
    v18 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v17);
  }

  else
  {
    v18 = 1;
  }

  buttonText = [buttonCopy buttonText];
  v20 = [buttonText attributedStringWithDefaultFont:v16 foregroundColor:0 textAlignment:v18 style:v15];

  return v20;
}

- (id)attributedStringForLabel:(id)label
{
  labelCopy = label;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDefaultCardLayout *)v5 attributedStringForLabel:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  style = [labelCopy style];
  v14 = SKUIViewElementFontWithStyle(style);
  layoutContext = [(SKUICardLayout *)self layoutContext];
  tintColor = [layoutContext tintColor];
  v17 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  v18 = SKUIViewElementAlignmentForStyle(style);
  if (v18)
  {
    v19 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v18);
  }

  else
  {
    v19 = 1;
  }

  labelViewStyle = [labelCopy labelViewStyle];
  if (labelViewStyle <= 5)
  {
    if (((1 << labelViewStyle) & 0x1B) != 0)
    {
      if (v14)
      {
        if (v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        if (v17)
        {
          goto LABEL_21;
        }
      }

      blackColor = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    }

    else
    {
      if (v14)
      {
        if (v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        if (v17)
        {
          goto LABEL_21;
        }
      }

      blackColor = [MEMORY[0x277D75348] blackColor];
    }

    v17 = blackColor;
  }

LABEL_21:
  text = [labelCopy text];
  v23 = [text attributedStringWithDefaultFont:v14 foregroundColor:v17 textAlignment:v19];

  return v23;
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
        [(SKUIDefaultCardLayout *)v10 topInsetForViewElement:v11 previousViewElement:v12 width:v13, v14, v15, v16, v17];
      }
    }
  }

  if ([viewElementCopy elementType] == 66)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v20 = v19;
    v22 = v21;

    if (v22 < v20)
    {
      v22 = v20;
    }

    v23 = 12.0;
    if ([elementCopy elementType] != 131 && objc_msgSend(viewElementCopy, "elementType") != 131)
    {
      v23 = 20.0;
      if (v22 <= 736.0)
      {
        parent = [elementCopy parent];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v23 = 12.0, ([parent isAdCard] & 1) == 0))
        {
          if (v22 <= 568.0)
          {
            v23 = 10.0;
          }

          else
          {
            v23 = 15.0;
          }
        }
      }
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SKUIDefaultCardLayout;
    [(SKUICardLayout *)&v27 topInsetForViewElement:elementCopy previousViewElement:viewElementCopy width:width];
    v23 = v25;
  }

  return v23;
}

@end