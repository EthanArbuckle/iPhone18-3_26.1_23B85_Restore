@interface SKUIEditorialCardLayout
- (CGSize)primaryLockupSize;
- (SKUIEditorialCardLayout)initWithCard:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SKUIEditorialCardLayout

- (SKUIEditorialCardLayout)initWithCard:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialCardLayout initWithCard:width:context:];
  }

  v26.receiver = self;
  v26.super_class = SKUIEditorialCardLayout;
  v10 = [(SKUIEditorialCardLayout *)&v26 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    allLockups = v10->_allLockups;
    v10->_allLockups = v11;

    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__SKUIEditorialCardLayout_initWithCard_width_context___block_invoke;
    v21[3] = &unk_2781FBE08;
    v13 = v9;
    v22 = v13;
    v24 = v25;
    v14 = v10;
    v23 = v14;
    [v8 enumerateChildrenUsingBlock:v21];
    v15 = [(NSMutableArray *)v10->_allLockups count];
    primaryLockup = v14->_primaryLockup;
    if (primaryLockup)
    {
      [SKUIVerticalLockupView preferredSizeForViewElement:primaryLockup context:v13];
      v14->_primaryLockupSize.width = v17;
      v14->_primaryLockupSize.height = v18;
      a4 = a4 - (v17 + 15.0);
      --v15;
    }

    if (v15 >= 1)
    {
      v19 = (a4 + (v15 - 1) * -15.0) / v15;
      v14->_secondaryLockupWidth = floorf(v19);
    }

    _Block_object_dispose(v25, 8);
  }

  return v10;
}

void __54__SKUIEditorialCardLayout_initWithCard_width_context___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 elementType] == 66)
  {
    v4 = [v10 firstChildForElementType:49];
    v5 = [v10 firstChildForElementType:152];
    v6 = v5;
    v7 = v4;
    if (v4 || (v7 = v5) != 0)
    {
      [*(a1 + 32) sizeForViewElement:v7 width:0.0];
      if (v8 > 0.00000011920929)
      {
        v9 = *(*(a1 + 48) + 8);
        if (v8 > *(v9 + 24))
        {
          *(v9 + 24) = v8;
          objc_storeStrong((*(a1 + 40) + 16), a2);
        }
      }
    }

    [*(*(a1 + 40) + 8) addObject:v10];
  }
}

- (CGSize)primaryLockupSize
{
  width = self->_primaryLockupSize.width;
  height = self->_primaryLockupSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithCard:width:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialCardLayout initWithCard:width:context:]";
}

@end