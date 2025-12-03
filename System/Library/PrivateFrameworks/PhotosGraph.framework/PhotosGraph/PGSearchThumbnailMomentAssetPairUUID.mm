@interface PGSearchThumbnailMomentAssetPairUUID
- (PGSearchThumbnailMomentAssetPairUUID)initWithAssetUUID:(id)d momentUUID:(id)iD;
- (PGSearchThumbnailMomentAssetPairUUID)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PGSearchThumbnailMomentAssetPairUUID

- (void)encodeWithCoder:(id)coder
{
  assetUUID = self->_assetUUID;
  coderCopy = coder;
  [coderCopy encodeObject:assetUUID forKey:@"assetUUID"];
  [coderCopy encodeObject:self->_momentUUID forKey:@"momentUUID"];
}

- (PGSearchThumbnailMomentAssetPairUUID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PGSearchThumbnailMomentAssetPairUUID;
  v5 = [(PGSearchThumbnailMomentAssetPairUUID *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetUUID"];
    assetUUID = v5->_assetUUID;
    v5->_assetUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"momentUUID"];
    momentUUID = v5->_momentUUID;
    v5->_momentUUID = v8;
  }

  return v5;
}

- (PGSearchThumbnailMomentAssetPairUUID)initWithAssetUUID:(id)d momentUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PGSearchThumbnailMomentAssetPairUUID;
  v9 = [(PGSearchThumbnailMomentAssetPairUUID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetUUID, d);
    objc_storeStrong(&v10->_momentUUID, iD);
  }

  return v10;
}

@end