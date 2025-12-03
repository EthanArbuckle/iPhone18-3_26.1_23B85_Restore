@interface PXCuratedLibraryAssetsSectionGeneratedLayout
- (CGRect)presentedKeyAssetRect;
- (CGRect)sectionRect;
- (PXCuratedLibraryAssetsSectionGeneratedLayout)init;
- (PXCuratedLibrarySectionGeometryDescriptor)presentedGeometryDescriptor;
- (void)enumerateHeroSpritesInRect:(CGRect)rect usingBlock:(id)block;
- (void)getSpriteZPosition:(float *)position clippingRect:(CGRect *)rect forSpriteKind:(int64_t)kind;
- (void)spritesDidUpdate;
@end

@implementation PXCuratedLibraryAssetsSectionGeneratedLayout

- (CGRect)presentedKeyAssetRect
{
  x = self->_presentedKeyAssetRect.origin.x;
  y = self->_presentedKeyAssetRect.origin.y;
  width = self->_presentedKeyAssetRect.size.width;
  height = self->_presentedKeyAssetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)enumerateHeroSpritesInRect:(CGRect)rect usingBlock:(id)block
{
  blockCopy = block;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsSectionGeneratedLayout.m" lineNumber:89 description:{@"Method %s is a responsibility of subclass %@", "-[PXCuratedLibraryAssetsSectionGeneratedLayout enumerateHeroSpritesInRect:usingBlock:]", v9}];

  abort();
}

- (CGRect)sectionRect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsSectionGeneratedLayout.m" lineNumber:85 description:{@"Method %s is a responsibility of subclass %@", "-[PXCuratedLibraryAssetsSectionGeneratedLayout sectionRect]", v6}];

  abort();
}

- (void)getSpriteZPosition:(float *)position clippingRect:(CGRect *)rect forSpriteKind:(int64_t)kind
{
  if (!kind)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (kind == 1)
  {
    v5 = -1093874483;
LABEL_5:
    *position = v5;
  }

  v6 = *(MEMORY[0x1E695F050] + 16);
  rect->origin = *MEMORY[0x1E695F050];
  rect->size = v6;
}

- (PXCuratedLibrarySectionGeometryDescriptor)presentedGeometryDescriptor
{
  [(PXCuratedLibraryAssetsSectionGeneratedLayout *)self sectionRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXCuratedLibraryAssetsSectionGeneratedLayout *)self presentedKeyAssetRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  presentedKeyAsset = [(PXCuratedLibraryAssetsSectionGeneratedLayout *)self presentedKeyAsset];
  v20 = [PXCuratedLibrarySectionGeometryDescriptor alloc];
  HIDWORD(v23) = *(off_1E7721FF0 + 3);
  *(&v23 + 4) = *(off_1E7721FF0 + 4);
  LODWORD(v23) = *off_1E7721FF0;
  v21 = [(PXCuratedLibrarySectionGeometryDescriptor *)v20 initWithSectionRect:presentedKeyAsset headerRect:v4 keyAssetRect:v6 headerCornerRadius:v8 headerAsset:v10, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v12, v14, v16, v18, v23];

  return v21;
}

- (void)spritesDidUpdate
{
  v44 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = PXCuratedLibraryAssetsSectionGeneratedLayout;
  [(PXGGeneratedLayout *)&v33 spritesDidUpdate];
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  generator = [(PXGGeneratedLayout *)self generator];
  keyItemIndex = [generator keyItemIndex];
  if (keyItemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(PXGItemsLayout *)self spriteIndexForItem:keyItemIndex];
    if (v11 != -1)
    {
      v32 = *off_1E7722008;
      v12 = *(off_1E7722028 + 1);
      v31[0] = *off_1E7722028;
      v31[1] = v12;
      v13 = *(off_1E7722048 + 7);
      v40 = *(off_1E7722048 + 6);
      v41 = v13;
      v14 = *(off_1E7722048 + 9);
      v42 = *(off_1E7722048 + 8);
      v43 = v14;
      v15 = *(off_1E7722048 + 3);
      v36 = *(off_1E7722048 + 2);
      v37 = v15;
      v16 = *(off_1E7722048 + 5);
      v38 = *(off_1E7722048 + 4);
      v39 = v16;
      v17 = *(off_1E7722048 + 1);
      v34 = *off_1E7722048;
      v35 = v17;
      v18 = *(off_1E7722040 + 1);
      v28 = *off_1E7722040;
      v29 = v18;
      v30 = *(off_1E7722040 + 4);
      [(PXCuratedLibraryAssetsSectionGeneratedLayout *)self copyLayoutForSpritesInRange:v11 | 0x100000000 entities:&v32 geometries:v31 styles:&v34 infos:&v28];
      PXRectWithCenterAndSize();
    }

    contentSource = [(PXCuratedLibraryAssetsSectionGeneratedLayout *)self contentSource];
    if (contentSource)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        px_descriptionForAssertionMessage = [contentSource px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsSectionGeneratedLayout.m" lineNumber:55 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.contentSource", v26, px_descriptionForAssertionMessage}];
      }

      v34 = 0u;
      v35 = 0u;
      [contentSource sectionIndexPath];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsSectionGeneratedLayout.m" lineNumber:55 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.contentSource", v23}];

      v34 = 0u;
      v35 = 0u;
    }

    *&v35 = [generator keyItemIndex];
    dataSource = [contentSource dataSource];
    v28 = v34;
    v29 = v35;
    v10 = [dataSource assetAtItemIndexPath:&v28];
  }

  [(PXCuratedLibraryAssetsSectionGeneratedLayout *)self setPresentedKeyAsset:v10];
  [(PXCuratedLibraryAssetsSectionGeneratedLayout *)self setPresentedKeyAssetRect:v4, v5, v6, v7];
}

- (PXCuratedLibraryAssetsSectionGeneratedLayout)init
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryAssetsSectionGeneratedLayout;
  result = [(PXGGeneratedLayout *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x1E695F050] + 16);
    result->_presentedKeyAssetRect.origin = *MEMORY[0x1E695F050];
    result->_presentedKeyAssetRect.size = v3;
  }

  return result;
}

@end