@interface QLDiskCacheAllThumbnailPerFileEnumerator
- (QLDiskCacheAllThumbnailPerFileEnumerator)initWithDiskCache:(id)cache fileIdentifier:(id)identifier;
- (id)nextThumbnailData;
- (void)_createNewCacheIndexDatabaseEnumeratorWithFileIdentifier:(id)identifier;
@end

@implementation QLDiskCacheAllThumbnailPerFileEnumerator

- (QLDiskCacheAllThumbnailPerFileEnumerator)initWithDiskCache:(id)cache fileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = [(QLDiskCacheEnumerator *)self initWithDiskCache:cache];
  if (v8)
  {
    v9 = objc_alloc_init(QLCacheBlobInfo);
    bitmapDataBlobInfo = v8->_bitmapDataBlobInfo;
    v8->_bitmapDataBlobInfo = v9;

    v11 = objc_alloc_init(QLCacheBlobInfo);
    metadataBlobInfo = v8->_metadataBlobInfo;
    v8->_metadataBlobInfo = v11;

    objc_storeStrong(&v8->_fileIdentifier, identifier);
  }

  return v8;
}

- (void)_createNewCacheIndexDatabaseEnumeratorWithFileIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBEB38];
  identifierCopy = identifier;
  v10 = objc_alloc_init(v4);
  v6 = [[QLCacheIndexFileRequest alloc] initWithFileIdentifier:identifierCopy];
  [v10 setObject:v6 forKeyedSubscript:identifierCopy];

  indexDatabase = [(QLDiskCache *)self->super._diskCache indexDatabase];
  v8 = [indexDatabase queryCacheForFileRequests:v10];
  cacheIndexDatabaseEnumerator = self->_cacheIndexDatabaseEnumerator;
  self->_cacheIndexDatabaseEnumerator = v8;
}

- (id)nextThumbnailData
{
  if (!self->_cacheIndexDatabaseEnumerator)
  {
    [(QLDiskCacheAllThumbnailPerFileEnumerator *)self _createNewCacheIndexDatabaseEnumeratorWithFileIdentifier:self->_fileIdentifier];
  }

  thumbnailData = self->_thumbnailData;
  self->_thumbnailData = 0;

  bitmapDataBlobInfo = self->_bitmapDataBlobInfo;
  self->_bitmapDataBlobInfo = 0;

  metadataBlobInfo = self->_metadataBlobInfo;
  self->_metadataBlobInfo = 0;

  if ([(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator nextThumbnailInfo])
  {
    bitmapDataBlobInfo = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator bitmapDataBlobInfo];
    v7 = [bitmapDataBlobInfo length];

    if (v7)
    {
      bitmapDataBlobInfo2 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator bitmapDataBlobInfo];
      v9 = self->_bitmapDataBlobInfo;
      self->_bitmapDataBlobInfo = bitmapDataBlobInfo2;

      metadataBlobInfo = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator metadataBlobInfo];
      v11 = self->_metadataBlobInfo;
      self->_metadataBlobInfo = metadataBlobInfo;

      blobDatabase = [(QLDiskCache *)self->super._diskCache blobDatabase];
      bitmapDataBlobInfo3 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator bitmapDataBlobInfo];
      v14 = [blobDatabase copyBlobWithInfo:bitmapDataBlobInfo3];
      bitmapData = self->_bitmapData;
      self->_bitmapData = v14;

      blobDatabase2 = [(QLDiskCache *)self->super._diskCache blobDatabase];
      metadataBlobInfo2 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator metadataBlobInfo];
      v18 = [blobDatabase2 copyBlobWithInfo:metadataBlobInfo2];
      metadata = self->_metadata;
      self->_metadata = v18;

      v62 = [QLCacheThumbnailData alloc];
      cacheId = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator cacheId];
      fileIdentifier = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator fileIdentifier];
      [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator size];
      v22 = v21;
      v58 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator iconMode]!= 0;
      iconVariant = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator iconVariant];
      interpolationQuality = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator interpolationQuality];
      hitCount = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator hitCount];
      lastHitDate = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator lastHitDate];
      bitmapFormat = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator bitmapFormat];
      v25 = self->_bitmapData;
      v26 = self->_metadata;
      flavor = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator flavor];
      [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator contentRect];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      badgeType = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator badgeType];
      externalGeneratorDataHash = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator externalGeneratorDataHash];
      LODWORD(v54) = flavor;
      LODWORD(v38) = v22;
      v39 = [(QLCacheThumbnailData *)v62 initWithCacheId:cacheId fileIdentifier:fileIdentifier version:0 size:v58 iconMode:iconVariant iconVariant:interpolationQuality interpolationQuality:v38 hitCount:v29 lastHitDate:v31 bitmapFormat:v33 bitmapData:v35 metadata:hitCount flavor:lastHitDate contentRect:bitmapFormat badgeType:v25 externalGeneratorDataHash:v26, v54, badgeType, externalGeneratorDataHash];
      v40 = self->_thumbnailData;
      self->_thumbnailData = v39;
    }

    else
    {
      v63 = [QLCacheThumbnailData alloc];
      cacheId2 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator cacheId];
      fileIdentifier = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator fileIdentifier];
      [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator size];
      v42 = v41;
      v59 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator iconMode]!= 0;
      iconVariant2 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator iconVariant];
      interpolationQuality2 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator interpolationQuality];
      badgeType2 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator badgeType];
      externalGeneratorDataHash2 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator externalGeneratorDataHash];
      hitCount2 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator hitCount];
      lastHitDate2 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator lastHitDate];
      LODWORD(v49) = v42;
      v50 = [(QLCacheThumbnailData *)v63 initWithCacheId:cacheId2 fileIdentifier:fileIdentifier version:0 size:v59 iconMode:iconVariant2 iconVariant:interpolationQuality2 interpolationQuality:v49 badgeType:badgeType2 externalGeneratorDataHash:externalGeneratorDataHash2 hitCount:hitCount2 lastHitDate:lastHitDate2];
      v51 = self->_thumbnailData;
      self->_thumbnailData = v50;
    }
  }

  else
  {
    fileIdentifier = self->_thumbnailData;
    self->_thumbnailData = 0;
  }

  v52 = self->_thumbnailData;

  return v52;
}

@end