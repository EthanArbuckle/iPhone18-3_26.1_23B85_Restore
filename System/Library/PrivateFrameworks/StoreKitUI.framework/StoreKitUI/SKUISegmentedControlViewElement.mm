@interface SKUISegmentedControlViewElement
- (NSArray)segmentItemTitles;
- (SKUISegmentedControlViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)initialSelectedItemIndex;
- (void)_enumerateItemElementsUsingBlock:(id)block;
- (void)dispatchEventOfType:(unint64_t)type forItemAtIndex:(int64_t)index;
@end

@implementation SKUISegmentedControlViewElement

- (SKUISegmentedControlViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUISegmentedControlViewElement initWithDOMElement:parent:elementFactory:];
  }

  v17.receiver = self;
  v17.super_class = SKUISegmentedControlViewElement;
  v11 = [(SKUIViewElement *)&v17 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"maxItems"];
    integerValue = [v12 integerValue];

    if (integerValue < 1)
    {
      v14 = -1;
    }

    else
    {
      v14 = integerValue;
    }

    v11->_maximumNumberOfVisibleItems = v14;
    v15 = [elementCopy getAttribute:@"moreLabel"];
    if ([v15 length])
    {
      objc_storeStrong(&v11->_moreListTitle, v15);
    }
  }

  return v11;
}

- (void)dispatchEventOfType:(unint64_t)type forItemAtIndex:(int64_t)index
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SKUISegmentedControlViewElement_dispatchEventOfType_forItemAtIndex___block_invoke;
  v4[3] = &__block_descriptor_48_e36_v32__0__SKUIItemViewElement_8Q16_B24l;
  v4[4] = index;
  v4[5] = type;
  [(SKUISegmentedControlViewElement *)self _enumerateItemElementsUsingBlock:v4];
}

uint64_t __70__SKUISegmentedControlViewElement_dispatchEventOfType_forItemAtIndex___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    result = [a2 dispatchEventOfType:*(result + 40) canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    *a4 = 1;
  }

  return result;
}

- (int64_t)initialSelectedItemIndex
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SKUISegmentedControlViewElement_initialSelectedItemIndex__block_invoke;
  v4[3] = &unk_2781FCC18;
  v4[4] = &v5;
  [(SKUISegmentedControlViewElement *)self _enumerateItemElementsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __59__SKUISegmentedControlViewElement_initialSelectedItemIndex__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isSelected];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (NSArray)segmentItemTitles
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SKUISegmentedControlViewElement_segmentItemTitles__block_invoke;
  v6[3] = &unk_2781FCC40;
  v4 = array;
  v7 = v4;
  [(SKUISegmentedControlViewElement *)self _enumerateItemElementsUsingBlock:v6];

  return v4;
}

void __52__SKUISegmentedControlViewElement_segmentItemTitles__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 itemText];
  v4 = [v3 string];

  [*(a1 + 32) addObject:v4];
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SKUISegmentedControlViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_maximumNumberOfVisibleItems = [(SKUISegmentedControlViewElement *)elementCopy maximumNumberOfVisibleItems];
    moreListTitle = [(SKUISegmentedControlViewElement *)elementCopy moreListTitle];
    moreListTitle = self->_moreListTitle;
    self->_moreListTitle = moreListTitle;
  }

  return v6;
}

- (void)_enumerateItemElementsUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__SKUISegmentedControlViewElement__enumerateItemElementsUsingBlock___block_invoke;
  v6[3] = &unk_2781FC588;
  v5 = blockCopy;
  v7 = v5;
  v8 = v9;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __68__SKUISegmentedControlViewElement__enumerateItemElementsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 elementType] == 59)
  {
    v3 = [v5 itemText];
    v4 = [v3 string];

    if (v4)
    {
      (*(*(a1 + 32) + 16))();
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISegmentedControlViewElement initWithDOMElement:parent:elementFactory:]";
}

@end