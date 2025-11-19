@interface SKUIDefaultCardLayout
- (double)topInsetForViewElement:(id)a3 previousViewElement:(id)a4 width:(double)a5;
- (id)attributedStringForButton:(id)a3;
- (id)attributedStringForLabel:(id)a3;
@end

@implementation SKUIDefaultCardLayout

- (id)attributedStringForButton:(id)a3
{
  v3 = a3;
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

  v12 = [v3 buttonTitleStyle];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v3 style];
  }

  v15 = v14;

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

  v19 = [v3 buttonText];
  v20 = [v19 attributedStringWithDefaultFont:v16 foregroundColor:0 textAlignment:v18 style:v15];

  return v20;
}

- (id)attributedStringForLabel:(id)a3
{
  v4 = a3;
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

  v13 = [v4 style];
  v14 = SKUIViewElementFontWithStyle(v13);
  v15 = [(SKUICardLayout *)self layoutContext];
  v16 = [v15 tintColor];
  v17 = SKUIViewElementPlainColorWithStyle(v13, v16);

  v18 = SKUIViewElementAlignmentForStyle(v13);
  if (v18)
  {
    v19 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v18);
  }

  else
  {
    v19 = 1;
  }

  v20 = [v4 labelViewStyle];
  if (v20 <= 5)
  {
    if (((1 << v20) & 0x1B) != 0)
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

      v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
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

      v21 = [MEMORY[0x277D75348] blackColor];
    }

    v17 = v21;
  }

LABEL_21:
  v22 = [v4 text];
  v23 = [v22 attributedStringWithDefaultFont:v14 foregroundColor:v17 textAlignment:v19];

  return v23;
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
        [(SKUIDefaultCardLayout *)v10 topInsetForViewElement:v11 previousViewElement:v12 width:v13, v14, v15, v16, v17];
      }
    }
  }

  if ([v9 elementType] == 66)
  {
    v18 = [MEMORY[0x277D759A0] mainScreen];
    [v18 bounds];
    v20 = v19;
    v22 = v21;

    if (v22 < v20)
    {
      v22 = v20;
    }

    v23 = 12.0;
    if ([v8 elementType] != 131 && objc_msgSend(v9, "elementType") != 131)
    {
      v23 = 20.0;
      if (v22 <= 736.0)
      {
        v24 = [v8 parent];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v23 = 12.0, ([v24 isAdCard] & 1) == 0))
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
    [(SKUICardLayout *)&v27 topInsetForViewElement:v8 previousViewElement:v9 width:a5];
    v23 = v25;
  }

  return v23;
}

@end