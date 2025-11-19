@interface PGSearchThumbnailMomentAssetPairUUID
- (PGSearchThumbnailMomentAssetPairUUID)initWithAssetUUID:(id)a3 momentUUID:(id)a4;
- (PGSearchThumbnailMomentAssetPairUUID)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PGSearchThumbnailMomentAssetPairUUID

- (void)encodeWithCoder:(id)a3
{
  assetUUID = self->_assetUUID;
  v5 = a3;
  [v5 encodeObject:assetUUID forKey:@"assetUUID"];
  [v5 encodeObject:self->_momentUUID forKey:@"momentUUID"];
}

- (PGSearchThumbnailMomentAssetPairUUID)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PGSearchThumbnailMomentAssetPairUUID;
  v5 = [(PGSearchThumbnailMomentAssetPairUUID *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetUUID"];
    assetUUID = v5->_assetUUID;
    v5->_assetUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"momentUUID"];
    momentUUID = v5->_momentUUID;
    v5->_momentUUID = v8;
  }

  return v5;
}

- (PGSearchThumbnailMomentAssetPairUUID)initWithAssetUUID:(id)a3 momentUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGSearchThumbnailMomentAssetPairUUID;
  v9 = [(PGSearchThumbnailMomentAssetPairUUID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetUUID, a3);
    objc_storeStrong(&v10->_momentUUID, a4);
  }

  return v10;
}

@end