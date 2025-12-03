@interface PXThumbnailCacheEntry
- (PHAssetResourceTableDataSpecification)dataSpec;
- (PXThumbnailCacheEntry)initWithObjectID:(id)d dataSpec:(const PHAssetResourceTableDataSpecification *)spec data:(id)data;
@end

@implementation PXThumbnailCacheEntry

- (PHAssetResourceTableDataSpecification)dataSpec
{
  v3 = *&self[1].bytesPerRow;
  *&retstr->width = *&self->kind;
  *&retstr->dataHeight = v3;
  return self;
}

- (PXThumbnailCacheEntry)initWithObjectID:(id)d dataSpec:(const PHAssetResourceTableDataSpecification *)spec data:(id)data
{
  dCopy = d;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = PXThumbnailCacheEntry;
  v11 = [(PXThumbnailCacheEntry *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_objectID, d);
    v13 = *&spec->width;
    *&v12->_dataSpec.dataHeight = *&spec->dataHeight;
    *&v12->_dataSpec.width = v13;
    objc_storeStrong(&v12->_data, data);
  }

  return v12;
}

@end