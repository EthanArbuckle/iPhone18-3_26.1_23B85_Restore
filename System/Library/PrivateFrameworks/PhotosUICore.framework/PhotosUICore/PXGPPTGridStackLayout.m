@interface PXGPPTGridStackLayout
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)result;
- (PXGAssetDecorationInfo)assetDecorationInfoForAsset:(SEL)a3 atSpriteIndex:(id)a4 inLayout:(unsigned int)a5;
- (PXGPPTGridStackLayout)initWithSettings:(id)a3;
- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4;
- (void)_initializeBadgeInfos;
- (void)_initializeSelectedItems;
@end

@implementation PXGPPTGridStackLayout

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *off_1E7722000;
  v5 = *(off_1E7722000 + 1);
  v6 = *(off_1E7722000 + 2);
  v7 = *(off_1E7722000 + 3);
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (PXGAssetDecorationInfo)assetDecorationInfoForAsset:(SEL)a3 atSpriteIndex:(id)a4 inLayout:(unsigned int)a5
{
  v6 = &self[a5 % 0xC + 36];
  var1 = v6->var1;
  retstr->var0 = v6->var0;
  retstr->var1 = var1;
  *&retstr->var2 = *&v6->var2;
  return self;
}

- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4
{
  v5 = objc_alloc_init(off_1E7721600);
  [v5 setContentSource:self];
  [v5 setNumberOfColumns:self->_numberOfColumns];
  [v5 setNumberOfItems:self->_numberOfItemsPerSection];
  [v5 setMediaKind:5];
  [v5 setLazy:1];
  v6 = v5;
  decorated = self->_decorated;
  v8 = v6;
  if (decorated)
  {
    v8 = [[off_1E77215B0 alloc] initWithDecoratedLayout:v6];
  }

  return v8;
}

- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)result
{
  v5 = result.width / self->_numberOfColumns * self->_estimatedNumberOfRowsPerSection;
  result.height = v5;
  return result;
}

- (void)_initializeBadgeInfos
{
  v2 = 0;
  v3 = *off_1E7721C20;
  v4 = *(off_1E7721C20 + 1);
  p_count = &self->_assetBadgeInfos[0].count;
  v6 = *(off_1E7721C20 + 1);
  do
  {
    v7 = v3 | ((v2 & 1) == 0);
    v8 = 3 * ((1431655766 * v2) >> 32);
    if (v2 == v8)
    {
      v7 |= 2uLL;
    }

    if (v2 - v8 == 1)
    {
      v9 = 42.0;
    }

    else
    {
      v9 = v4;
    }

    if ((v2 & 3) == 0)
    {
      v7 |= 0x20uLL;
    }

    *(p_count - 2) = v7;
    *(p_count - 1) = v9;
    *p_count = v6;
    p_count += 4;
    ++v2;
  }

  while (v2 != 12);
}

- (void)_initializeSelectedItems
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v7 = v3;
  if (self->_numberOfItemsPerSection >= 1)
  {
    v4 = 0;
    do
    {
      [v7 addIndexesInRange:{v4, 4}];
      v3 = v7;
      v4 += 5;
    }

    while (v4 < self->_numberOfItemsPerSection);
  }

  v5 = [v3 copy];
  selectedItemsPerSection = self->_selectedItemsPerSection;
  self->_selectedItemsPerSection = v5;
}

- (PXGPPTGridStackLayout)initWithSettings:(id)a3
{
  v4 = a3;
  v5 = [(PXGStackLayout *)self init];
  if (v5)
  {
    v6 = [v4 numberOfSections];
    v5->_numberOfItemsPerSection = (v6 + [v4 numberOfItems] - 1) / v6;
    v5->_numberOfColumns = [v4 numberOfColumns];
    v5->_useAssetBadgeDecoration = [v4 useAssetBadgeDecoration];
    v7 = [v4 selectionDecorationStlye];
    v5->_selectionDecorationStyle = v7;
    v5->_decorated = v5->_useAssetBadgeDecoration || v7 != 0;
    v5->_estimatedNumberOfRowsPerSection = (v5->_numberOfItemsPerSection + v5->_numberOfColumns - 1) / v5->_numberOfColumns;
    v8 = [MEMORY[0x1E69DC888] blueColor];
    spriteColor = v5->_spriteColor;
    v5->_spriteColor = v8;

    [(PXGPPTGridStackLayout *)v5 _initializeSelectedItems];
    [(PXGPPTGridStackLayout *)v5 _initializeBadgeInfos];
    [(PXGStackLayout *)v5 setAxis:1];
    [(PXGStackLayout *)v5 setInterlayoutSpacing:50.0];
    [(PXGStackLayout *)v5 insertSublayoutProvider:v5 inRange:0, v6];
  }

  return v5;
}

@end