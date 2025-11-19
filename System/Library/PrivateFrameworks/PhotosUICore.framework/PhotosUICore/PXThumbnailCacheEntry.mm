@interface PXThumbnailCacheEntry
- (PHAssetResourceTableDataSpecification)dataSpec;
- (PXThumbnailCacheEntry)initWithObjectID:(id)a3 dataSpec:(const PHAssetResourceTableDataSpecification *)a4 data:(id)a5;
@end

@implementation PXThumbnailCacheEntry

- (PHAssetResourceTableDataSpecification)dataSpec
{
  v3 = *&self[1].bytesPerRow;
  *&retstr->width = *&self->kind;
  *&retstr->dataHeight = v3;
  return self;
}

- (PXThumbnailCacheEntry)initWithObjectID:(id)a3 dataSpec:(const PHAssetResourceTableDataSpecification *)a4 data:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PXThumbnailCacheEntry;
  v11 = [(PXThumbnailCacheEntry *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_objectID, a3);
    v13 = *&a4->width;
    *&v12->_dataSpec.dataHeight = *&a4->dataHeight;
    *&v12->_dataSpec.width = v13;
    objc_storeStrong(&v12->_data, a5);
  }

  return v12;
}

@end