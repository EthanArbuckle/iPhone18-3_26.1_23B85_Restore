@interface TXRAssetCatalogMipFileAttributes
- (TXRAssetCatalogMipFileAttributes)init;
- (void)setFace:(unint64_t)face;
@end

@implementation TXRAssetCatalogMipFileAttributes

- (TXRAssetCatalogMipFileAttributes)init
{
  v5.receiver = self;
  v5.super_class = TXRAssetCatalogMipFileAttributes;
  v2 = [(TXRAssetCatalogFileAttributes *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TXRAssetCatalogMipFileAttributes *)v2 specifyAllFaces];
  }

  return v3;
}

- (void)setFace:(unint64_t)face
{
  if (face <= 5)
  {
    face = self->_face;
  }

  else
  {
    face = 5;
  }

  self->_face = face;
}

@end