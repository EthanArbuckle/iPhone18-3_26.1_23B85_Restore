@interface SKUIMenuBarTemplateShelfPageSectionConfiguration
- (CGSize)cellSizeForShelfViewElement:(id)element indexPath:(id)path numberOfShelfItems:(int64_t)items;
- (SKUIMenuBarTemplateShelfPageSectionConfiguration)initWithNumberOfIterations:(unint64_t)iterations;
- (id)_focusedViewElement;
- (id)cellForShelfViewElement:(id)element indexPath:(id)path;
- (id)effectiveViewElementForShelfItemViewElement:(id)element;
- (int64_t)numberOfSectionCells;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)registerReusableClassesForCollectionView:(id)view;
- (void)reloadShelfLayoutDataForShelfViewElement:(id)element withShelfItemViewElements:(id)elements requestCellLayouts:(BOOL)layouts numberOfShelfItems:(int64_t)items;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation SKUIMenuBarTemplateShelfPageSectionConfiguration

- (SKUIMenuBarTemplateShelfPageSectionConfiguration)initWithNumberOfIterations:(unint64_t)iterations
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuBarTemplateShelfPageSectionConfiguration initWithNumberOfIterations:];
  }

  v7.receiver = self;
  v7.super_class = SKUIMenuBarTemplateShelfPageSectionConfiguration;
  result = [(SKUIMenuBarTemplateShelfPageSectionConfiguration *)&v7 init];
  if (result)
  {
    if (iterations <= 1)
    {
      iterationsCopy = 1;
    }

    else
    {
      iterationsCopy = iterations;
    }

    result->_numberOfIterations = iterationsCopy;
  }

  return result;
}

- (id)effectiveViewElementForShelfItemViewElement:(id)element
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  elementCopy = element;
  SKUIZoomingShelfMenuBarGetValidationInfoForViewElement(elementCopy, v7);
  children = [elementCopy children];

  v5 = [children objectAtIndex:v8];

  return v5;
}

- (int64_t)numberOfSectionCells
{
  v3.receiver = self;
  v3.super_class = SKUIMenuBarTemplateShelfPageSectionConfiguration;
  return [(SKUIShelfPageSectionConfiguration *)&v3 numberOfSectionCells]+ 1;
}

- (id)cellForShelfViewElement:(id)element indexPath:(id)path
{
  elementCopy = element;
  pathCopy = path;
  v8 = [pathCopy item] + 1;
  if (v8 == [(SKUIMenuBarTemplateShelfPageSectionConfiguration *)self numberOfSectionCells])
  {
    pageSectionContext = [(SKUIShelfPageSectionConfiguration *)self pageSectionContext];
    collectionView = [pageSectionContext collectionView];
    v11 = [collectionView dequeueReusableCellWithReuseIdentifier:0x282802268 forIndexPath:pathCopy];

    _focusedViewElement = [(SKUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
    pageSectionContext2 = [(SKUIShelfPageSectionConfiguration *)self pageSectionContext];
    [pageSectionContext2 activePageWidth];
    v15 = v14;
    cellLayoutContext = [(SKUIShelfPageSectionConfiguration *)self cellLayoutContext];
    [v11 reloadWithViewElement:_focusedViewElement width:cellLayoutContext context:v15];

    fixedElementsCollectionViewCell = self->_fixedElementsCollectionViewCell;
    self->_fixedElementsCollectionViewCell = v11;

    v18 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SKUIMenuBarTemplateShelfPageSectionConfiguration;
    v18 = [(SKUIShelfPageSectionConfiguration *)&v20 cellForShelfViewElement:elementCopy indexPath:pathCopy];
  }

  return v18;
}

- (CGSize)cellSizeForShelfViewElement:(id)element indexPath:(id)path numberOfShelfItems:(int64_t)items
{
  elementCopy = element;
  pathCopy = path;
  v10 = [pathCopy item] + 1;
  if (v10 == [(SKUIMenuBarTemplateShelfPageSectionConfiguration *)self numberOfSectionCells])
  {
    pageSectionContext = [(SKUIShelfPageSectionConfiguration *)self pageSectionContext];
    [pageSectionContext activePageWidth];
    v13 = v12;

    _focusedViewElement = [(SKUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
    cellLayoutContext = [(SKUIShelfPageSectionConfiguration *)self cellLayoutContext];
    [SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell sizeThatFitsWidth:_focusedViewElement viewElement:cellLayoutContext context:v13];
    v17 = v16;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = SKUIMenuBarTemplateShelfPageSectionConfiguration;
    [(SKUIShelfPageSectionConfiguration *)&v25 cellSizeForShelfViewElement:elementCopy indexPath:pathCopy numberOfShelfItems:items];
    v13 = v18;
    v17 = v19;
    if ([(SKUIShelfPageSectionConfiguration *)self wantsZoomingShelfLayout])
    {
      [(SKUIShelfPageSectionConfiguration *)self zoomingShelfLayoutScaledItemWidth];
      v21 = v20;
      [(SKUIShelfPageSectionConfiguration *)self zoomingShelfLayoutItemWidth];
      v17 = v17 - (v21 - v22);
    }
  }

  v23 = v13;
  v24 = v17;
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v8.receiver = self;
  v8.super_class = SKUIMenuBarTemplateShelfPageSectionConfiguration;
  [(SKUIShelfPageSectionConfiguration *)&v8 collectionViewWillApplyLayoutAttributes:attributesCopy];
  indexPath = [attributesCopy indexPath];
  v6 = [indexPath item] + 1;
  numberOfSectionCells = [(SKUIMenuBarTemplateShelfPageSectionConfiguration *)self numberOfSectionCells];

  if (v6 == numberOfSectionCells)
  {
    [attributesCopy setZIndex:1];
  }
}

- (void)registerReusableClassesForCollectionView:(id)view
{
  v4.receiver = self;
  v4.super_class = SKUIMenuBarTemplateShelfPageSectionConfiguration;
  viewCopy = view;
  [(SKUIShelfPageSectionConfiguration *)&v4 registerReusableClassesForCollectionView:viewCopy];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:{0x282802268, v4.receiver, v4.super_class}];
}

- (void)reloadShelfLayoutDataForShelfViewElement:(id)element withShelfItemViewElements:(id)elements requestCellLayouts:(BOOL)layouts numberOfShelfItems:(int64_t)items
{
  layoutsCopy = layouts;
  v16.receiver = self;
  v16.super_class = SKUIMenuBarTemplateShelfPageSectionConfiguration;
  [(SKUIShelfPageSectionConfiguration *)&v16 reloadShelfLayoutDataForShelfViewElement:element withShelfItemViewElements:elements requestCellLayouts:layouts numberOfShelfItems:items];
  if (layoutsCopy)
  {
    _focusedViewElement = [(SKUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
    pageSectionContext = [(SKUIShelfPageSectionConfiguration *)self pageSectionContext];
    [pageSectionContext activePageWidth];
    v11 = v10;
    cellLayoutContext = [(SKUIShelfPageSectionConfiguration *)self cellLayoutContext];
    [SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell requestLayoutForViewElement:_focusedViewElement width:cellLayoutContext context:v11];

    cellLayoutContext2 = [(SKUIShelfPageSectionConfiguration *)self cellLayoutContext];
    labelLayoutCache = [cellLayoutContext2 labelLayoutCache];
    layoutCache = [labelLayoutCache layoutCache];
    [layoutCache commitLayoutRequests];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v22.receiver = self;
  v22.super_class = SKUIMenuBarTemplateShelfPageSectionConfiguration;
  [(SKUIShelfPageSectionConfiguration *)&v22 scrollViewDidScroll:scrollCopy];
  if ([(SKUIShelfPageSectionConfiguration *)self wantsZoomingShelfLayout])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      collectionViewLayout = [scrollCopy collectionViewLayout];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [collectionViewLayout menuBarFocusedItemIndexPathWithTransitionProgress:0];
        focusedIndex = self->_focusedIndex;
        if (focusedIndex != [v6 item])
        {
          self->_focusedIndex = [v6 item];
          _focusedViewElement = [(SKUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
          pageSectionContext = [(SKUIShelfPageSectionConfiguration *)self pageSectionContext];
          [pageSectionContext activePageWidth];
          v11 = v10;
          cellLayoutContext = [(SKUIShelfPageSectionConfiguration *)self cellLayoutContext];
          [SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell requestLayoutForViewElement:_focusedViewElement width:cellLayoutContext context:v11];

          cellLayoutContext2 = [(SKUIShelfPageSectionConfiguration *)self cellLayoutContext];
          labelLayoutCache = [cellLayoutContext2 labelLayoutCache];
          layoutCache = [labelLayoutCache layoutCache];
          [layoutCache commitLayoutRequests];

          fixedElementsCollectionViewCell = self->_fixedElementsCollectionViewCell;
          _focusedViewElement2 = [(SKUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
          pageSectionContext2 = [(SKUIShelfPageSectionConfiguration *)self pageSectionContext];
          [pageSectionContext2 activePageWidth];
          v20 = v19;
          cellLayoutContext3 = [(SKUIShelfPageSectionConfiguration *)self cellLayoutContext];
          [fixedElementsCollectionViewCell reloadWithViewElement:_focusedViewElement2 width:cellLayoutContext3 context:v20];
        }
      }
    }
  }
}

- (id)_focusedViewElement
{
  dataSource = [(SKUIShelfPageSectionConfiguration *)self dataSource];
  v4 = [dataSource shelfPageSectionConfiguration:self viewElementAtIndex:self->_focusedIndex];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  SKUIZoomingShelfMenuBarGetValidationInfoForViewElement(v4, &v8);
  children = [v4 children];
  v6 = [children objectAtIndex:v9];

  return v6;
}

- (void)initWithNumberOfIterations:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuBarTemplateShelfPageSectionConfiguration initWithNumberOfIterations:]";
}

@end