@interface TXRAssetCatalogConfig
- (TXRAssetCatalogConfig)initWithTexture:(id)a3;
- (void)addFileAttributesForLevel:(unint64_t)a3;
- (void)addFileAttributesForLevel:(unint64_t)a3 face:(unint64_t)a4;
@end

@implementation TXRAssetCatalogConfig

- (TXRAssetCatalogConfig)initWithTexture:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TXRAssetCatalogConfig;
  v6 = [(TXRAssetCatalogConfig *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_texture, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    fileAttributesList = v7->_fileAttributesList;
    v7->_fileAttributesList = v8;

    v10 = objc_alloc_init(TXRAssetCatalogFileAttributes);
    baseFileAttributes = v7->_baseFileAttributes;
    v7->_baseFileAttributes = v10;
  }

  return v7;
}

- (void)addFileAttributesForLevel:(unint64_t)a3
{
  v9 = objc_alloc_init(TXRAssetCatalogMipFileAttributes);
  [(TXRAssetCatalogMipFileAttributes *)v9 setLevel:a3];
  v5 = [(NSMutableSet *)self->_fileAttributesList objectEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      if ([v7 level] == a3)
      {
        [(NSMutableSet *)self->_fileAttributesList removeObject:v7];
      }

      v8 = [v5 nextObject];

      v7 = v8;
    }

    while (v8);
  }

  [(NSMutableSet *)self->_fileAttributesList addObject:v9];
}

- (void)addFileAttributesForLevel:(unint64_t)a3 face:(unint64_t)a4
{
  v11 = objc_alloc_init(TXRAssetCatalogMipFileAttributes);
  [(TXRAssetCatalogMipFileAttributes *)v11 setLevel:a3];
  [(TXRAssetCatalogMipFileAttributes *)v11 setFace:a4];
  v7 = [(NSMutableSet *)self->_fileAttributesList objectEnumerator];
  v8 = [v7 nextObject];
  if (v8)
  {
    v9 = v8;
    do
    {
      if ([v9 level] == a3 && (objc_msgSend(v9, "face") == a4 || objc_msgSend(v9, "doesSpecifyAllFaces")))
      {
        [(NSMutableSet *)self->_fileAttributesList removeObject:v9];
      }

      v10 = [v7 nextObject];

      v9 = v10;
    }

    while (v10);
  }

  [(NSMutableSet *)self->_fileAttributesList addObject:v11];
}

@end