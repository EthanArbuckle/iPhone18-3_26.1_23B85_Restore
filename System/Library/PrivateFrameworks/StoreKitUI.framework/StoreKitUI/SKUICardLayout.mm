@interface SKUICardLayout
+ (BOOL)allowsViewElement:(id)element;
+ (SKUICardLayout)layoutWithCardViewElement:(id)element context:(id)context;
- (CGSize)sizeForViewElement:(id)element width:(double)width;
- (double)bottomInsetForLastViewElement:(id)element width:(double)width;
- (double)topInsetForViewElement:(id)element previousViewElement:(id)viewElement width:(double)width;
- (int64_t)layoutStyle;
@end

@implementation SKUICardLayout

+ (BOOL)allowsViewElement:(id)element
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUICardLayout *)v3 allowsViewElement:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 1;
}

+ (SKUICardLayout)layoutWithCardViewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUICardLayout *)v7 layoutWithCardViewElement:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v29 = 0;
  style = [elementCopy style];
  cardType = [style cardType];
  v17 = [cardType isEqualToString:@"programmed"];

  if (v17)
  {
    v18 = objc_opt_class();
    v27[3] = v18;
    if (!v18)
    {
      goto LABEL_10;
    }

LABEL_9:
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __52__SKUICardLayout_layoutWithCardViewElement_context___block_invoke;
    v25[3] = &unk_2781F8568;
    v25[4] = &v26;
    [elementCopy enumerateChildrenUsingBlock:v25];
    if (v27[3])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v27[3])
  {
    goto LABEL_9;
  }

LABEL_10:
  v27[3] = objc_opt_class();
LABEL_11:
  v19 = [elementCopy firstChildForElementType:7];

  v20 = objc_alloc_init(v27[3]);
  v21 = v20[1];
  v20[1] = elementCopy;
  v22 = elementCopy;

  v23 = v20[2];
  v20[2] = contextCopy;

  *(v20 + 24) = v19 != 0;
  _Block_object_dispose(&v26, 8);

  return v20;
}

uint64_t __52__SKUICardLayout_layoutWithCardViewElement_context___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(*(*(a1 + 32) + 8) + 24) allowsViewElement:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (double)bottomInsetForLastViewElement:(id)element width:(double)width
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICardLayout *)v5 bottomInsetForLastViewElement:v6 width:v7, v8, v9, v10, v11, v12];
      }
    }
  }

  result = 0.0;
  if (self->_hasBackground)
  {
    return 15.0;
  }

  return result;
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
        [(SKUICardLayout *)v2 layoutStyle:v3];
      }
    }
  }

  return 0;
}

- (CGSize)sizeForViewElement:(id)element width:(double)width
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUICardLayout *)v7 sizeForViewElement:v8 width:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  elementType = [elementCopy elementType];
  if (elementType <= 65)
  {
    if (elementType == 7)
    {
      v23 = [elementCopy firstChildForElementType:49];
      [(SKUIViewElementLayoutContext *)self->_layoutContext sizeForViewElement:v23 width:width];
      v21 = v24;
      v22 = v25;

      goto LABEL_21;
    }

    if (elementType == 50 && [(SKUICardViewElement *)self->_cardViewElement isAdCard])
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_20:
        v21 = 0.0;
        v22 = 5.0;
        goto LABEL_21;
      }

      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

      if (!userInterfaceIdiom)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_15;
  }

  if (elementType == 108)
  {
    v21 = *MEMORY[0x277CBF3A8];
    v22 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_21;
  }

  if (elementType != 66)
  {
LABEL_15:
    [(SKUIViewElementLayoutContext *)self->_layoutContext sizeForViewElement:elementCopy width:width];
    goto LABEL_16;
  }

  [SKUIHorizontalLockupView sizeThatFitsWidth:elementCopy viewElement:self->_layoutContext context:width];
LABEL_16:
  v21 = v19;
  v22 = v20;
LABEL_21:

  v26 = v21;
  v27 = v22;
  result.height = v27;
  result.width = v26;
  return result;
}

- (double)topInsetForViewElement:(id)element previousViewElement:(id)viewElement width:(double)width
{
  elementCopy = element;
  viewElementCopy = viewElement;
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !(v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT)))
  {
    if (viewElementCopy)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (self->_hasBackground)
    {
      v17 = 15.0;
    }

    else
    {
      v17 = 0.0;
    }

    goto LABEL_13;
  }

  [(SKUICardLayout *)v9 topInsetForViewElement:v10 previousViewElement:v11 width:v12, v13, v14, v15, v16];
  if (!viewElementCopy)
  {
    goto LABEL_10;
  }

LABEL_5:
  v17 = 12.0;
  if ([elementCopy elementType] != 131)
  {
    if ([viewElementCopy elementType] == 131)
    {
      v17 = 12.0;
    }

    else
    {
      v17 = 10.0;
    }
  }

LABEL_13:

  return v17;
}

@end