@interface _PXPhotosSearchBodyCollectionSectionLayout
- (_PXPhotosSearchBodyCollectionSectionLayout)init;
- (id)axSpriteIndexes;
- (id)axSpriteIndexesInRect:(CGRect)a3;
- (void)referenceSizeDidChange;
@end

@implementation _PXPhotosSearchBodyCollectionSectionLayout

- (id)axSpriteIndexesInRect:(CGRect)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v3;
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v2;
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = _PXPhotosSearchBodyCollectionSectionLayout;
  [(PXGSingleViewLayout *)&v3 referenceSizeDidChange];
  [(_PXPhotosSearchBodyCollectionSectionLayout *)self referenceSize];
  [(PXPhotosSearchBodyContainerInfo *)self->_containerInfo setContainerSize:?];
}

- (_PXPhotosSearchBodyCollectionSectionLayout)init
{
  v6.receiver = self;
  v6.super_class = _PXPhotosSearchBodyCollectionSectionLayout;
  v2 = [(PXGSingleViewLayout *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXPhotosSearchBodyContainerInfo);
    containerInfo = v2->_containerInfo;
    v2->_containerInfo = v3;
  }

  return v2;
}

@end