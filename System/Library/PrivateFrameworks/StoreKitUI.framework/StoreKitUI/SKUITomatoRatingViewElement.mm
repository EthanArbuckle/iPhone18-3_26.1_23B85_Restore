@interface SKUITomatoRatingViewElement
- (SKUITomatoRatingViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUITomatoRatingViewElement

- (SKUITomatoRatingViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITomatoRatingViewElement initWithDOMElement:parent:elementFactory:];
  }

  v24.receiver = self;
  v24.super_class = SKUITomatoRatingViewElement;
  v11 = [(SKUIViewElement *)&v24 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"value"];
    [v12 floatValue];
    v11->_tomatoRating = v13;

    v14 = [elementCopy getAttribute:@"freshness"];
    if ([v14 length])
    {
      if (![v14 isEqualToString:@"certified"])
      {
        if ([v14 isEqualToString:@"fresh"])
        {
          goto LABEL_13;
        }

        if ([v14 isEqualToString:@"rotten"])
        {
          goto LABEL_15;
        }

LABEL_17:
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __72__SKUITomatoRatingViewElement_initWithDOMElement_parent_elementFactory___block_invoke;
        v22[3] = &unk_2781FA390;
        v18 = v11;
        v23 = v18;
        v19 = [(IKTextParser *)SKUIViewElementText textWithDOMElement:elementCopy usingParseBlock:v22];
        ratingText = v18->_ratingText;
        v18->_ratingText = v19;

        goto LABEL_18;
      }
    }

    else
    {
      v15 = [elementCopy getAttribute:@"certified"];
      bOOLValue = [v15 BOOLValue];

      if (!bOOLValue)
      {
        if (v11->_tomatoRating >= 0.6)
        {
LABEL_13:
          v17 = 1;
LABEL_16:
          v11->_freshness = v17;
          goto LABEL_17;
        }

LABEL_15:
        v17 = 2;
        goto LABEL_16;
      }
    }

    v11->_freshness = 0;
    goto LABEL_17;
  }

LABEL_18:

  return v11;
}

id __72__SKUITomatoRatingViewElement_initWithDOMElement_parent_elementFactory___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!_block_invoke_sRatingFormatter)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v7 = _block_invoke_sRatingFormatter;
    _block_invoke_sRatingFormatter = v6;

    [_block_invoke_sRatingFormatter setNumberStyle:3];
    [_block_invoke_sRatingFormatter setMaximumFractionDigits:0];
  }

  *a4 = 0;
  v8 = objc_alloc(MEMORY[0x277CCABB0]);
  LODWORD(v9) = *(*(a1 + 32) + 288);
  v10 = [v8 initWithFloat:v9];
  v11 = [_block_invoke_sRatingFormatter stringFromNumber:v10];

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SKUITomatoRatingViewElement;
  v5 = [(SKUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_freshness = [(SKUITomatoRatingViewElement *)elementCopy freshness];
    [(SKUITomatoRatingViewElement *)elementCopy tomatoRating];
    self->_tomatoRating = v7;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITomatoRatingViewElement initWithDOMElement:parent:elementFactory:]";
}

@end