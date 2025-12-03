@interface TXRAssetCatalogConfig
- (TXRAssetCatalogConfig)initWithTexture:(id)texture;
- (void)addFileAttributesForLevel:(unint64_t)level;
- (void)addFileAttributesForLevel:(unint64_t)level face:(unint64_t)face;
@end

@implementation TXRAssetCatalogConfig

- (TXRAssetCatalogConfig)initWithTexture:(id)texture
{
  textureCopy = texture;
  v13.receiver = self;
  v13.super_class = TXRAssetCatalogConfig;
  v6 = [(TXRAssetCatalogConfig *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_texture, texture);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    fileAttributesList = v7->_fileAttributesList;
    v7->_fileAttributesList = v8;

    v10 = objc_alloc_init(TXRAssetCatalogFileAttributes);
    baseFileAttributes = v7->_baseFileAttributes;
    v7->_baseFileAttributes = v10;
  }

  return v7;
}

- (void)addFileAttributesForLevel:(unint64_t)level
{
  v9 = objc_alloc_init(TXRAssetCatalogMipFileAttributes);
  [(TXRAssetCatalogMipFileAttributes *)v9 setLevel:level];
  objectEnumerator = [(NSMutableSet *)self->_fileAttributesList objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    do
    {
      if ([v7 level] == level)
      {
        [(NSMutableSet *)self->_fileAttributesList removeObject:v7];
      }

      nextObject2 = [objectEnumerator nextObject];

      v7 = nextObject2;
    }

    while (nextObject2);
  }

  [(NSMutableSet *)self->_fileAttributesList addObject:v9];
}

- (void)addFileAttributesForLevel:(unint64_t)level face:(unint64_t)face
{
  v11 = objc_alloc_init(TXRAssetCatalogMipFileAttributes);
  [(TXRAssetCatalogMipFileAttributes *)v11 setLevel:level];
  [(TXRAssetCatalogMipFileAttributes *)v11 setFace:face];
  objectEnumerator = [(NSMutableSet *)self->_fileAttributesList objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    do
    {
      if ([v9 level] == level && (objc_msgSend(v9, "face") == face || objc_msgSend(v9, "doesSpecifyAllFaces")))
      {
        [(NSMutableSet *)self->_fileAttributesList removeObject:v9];
      }

      nextObject2 = [objectEnumerator nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }

  [(NSMutableSet *)self->_fileAttributesList addObject:v11];
}

@end