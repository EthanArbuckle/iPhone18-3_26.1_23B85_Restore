@interface QLCacheThumbnailData
- (BOOL)setState:(unint64_t)a3 changedState:(BOOL *)a4;
- (CGRect)contentRect;
- (QLCacheThumbnailData)initWithCacheId:(unint64_t)a3 fileIdentifier:(id)a4 version:(id)a5 size:(float)a6 iconMode:(BOOL)a7 iconVariant:(int64_t)a8 interpolationQuality:(int)a9 hitCount:(unint64_t)a10 lastHitDate:(id)a11 bitmapFormat:(id)a12 bitmapData:(id)a13 metadata:(id)a14 flavor:(int)a15 contentRect:(CGRect)a16 badgeType:(unint64_t)a17 externalGeneratorDataHash:(unint64_t)a18;
- (QLCacheThumbnailData)initWithCacheId:(unint64_t)a3 thumbnailRequest:(id)a4 size:(float)a5 badgeType:(unint64_t)a6;
- (QLCacheThumbnailData)initWithCacheId:(unint64_t)a3 thumbnailRequest:(id)a4 size:(float)a5 bitmapFormat:(id)a6 bitmapData:(id)a7 metadata:(id)a8 flavor:(int)a9 contentRect:(CGRect)a10 badgeType:(unint64_t)a11;
- (QLCacheThumbnailData)initWithUnsavedDataForThumbnailRequest:(id)a3 size:(float)a4 bitmapFormat:(id)a5 bitmapData:(id)a6 reservationInfo:(id)a7 metadata:(id)a8 reservationInfo:(id)a9 flavor:(int)a10 contentRect:(CGRect)a11 badgeType:(unint64_t)a12;
- (void)dealloc;
@end

@implementation QLCacheThumbnailData

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = QLCacheThumbnailData;
  [(QLCacheThumbnailData *)&v2 dealloc];
}

- (QLCacheThumbnailData)initWithCacheId:(unint64_t)a3 fileIdentifier:(id)a4 version:(id)a5 size:(float)a6 iconMode:(BOOL)a7 iconVariant:(int64_t)a8 interpolationQuality:(int)a9 hitCount:(unint64_t)a10 lastHitDate:(id)a11 bitmapFormat:(id)a12 bitmapData:(id)a13 metadata:(id)a14 flavor:(int)a15 contentRect:(CGRect)a16 badgeType:(unint64_t)a17 externalGeneratorDataHash:(unint64_t)a18
{
  height = a16.size.height;
  width = a16.size.width;
  y = a16.origin.y;
  x = a16.origin.x;
  v26 = a4;
  v27 = a5;
  v28 = a11;
  v39 = a12;
  v38 = a13;
  v29 = a14;
  v41.receiver = self;
  v41.super_class = QLCacheThumbnailData;
  v30 = [(QLCacheThumbnailData *)&v41 init];
  v31 = v30;
  if (v30)
  {
    v30->_cacheId = a3;
    objc_storeStrong(&v30->_fileIdentifier, a4);
    objc_storeStrong(&v31->_version, a5);
    v31->_size = a6;
    v31->_iconMode = a7;
    v31->_interpolationQuality = a9;
    v31->_iconVariant = a8;
    v31->_badgeType = a17;
    v31->_hitCount = a10;
    objc_storeStrong(&v31->_lastHitDate, a11);
    objc_storeStrong(&v31->_bitmapFormat, a12);
    objc_storeStrong(&v31->_bitmapData, a13);
    objc_storeStrong(&v31->_metadata, a14);
    v31->_flavor = a15;
    v31->_contentRect.origin.x = x;
    v31->_contentRect.origin.y = y;
    v31->_contentRect.size.width = width;
    v31->_contentRect.size.height = height;
    v31->_externalGeneratorDataHash = a18;
    v32 = dispatch_queue_create("quicklookd.thumbnail", 0);
    queue = v31->_queue;
    v31->_queue = v32;

    v31->_state = a3 != 0;
  }

  return v31;
}

- (QLCacheThumbnailData)initWithCacheId:(unint64_t)a3 thumbnailRequest:(id)a4 size:(float)a5 bitmapFormat:(id)a6 bitmapData:(id)a7 metadata:(id)a8 flavor:(int)a9 contentRect:(CGRect)a10 badgeType:(unint64_t)a11
{
  height = a10.size.height;
  width = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  v33 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a4;
  v37 = [v21 fileIdentifier];
  v22 = [v37 fileIdentifier];
  v23 = [v21 fileIdentifier];
  v24 = [v23 version];
  v25 = [v21 iconMode];
  v26 = [v21 iconVariant];
  v27 = [v21 interpolationQuality];
  v28 = [v21 externalThumbnailGeneratorDataHash];

  LODWORD(v32) = a9;
  *&v29 = a5;
  v30 = [(QLCacheThumbnailData *)self initWithCacheId:a3 fileIdentifier:v22 version:v24 size:v25 iconMode:v26 iconVariant:v27 interpolationQuality:v29 hitCount:x lastHitDate:y bitmapFormat:width bitmapData:height metadata:0 flavor:0 contentRect:v20 badgeType:v19 externalGeneratorDataHash:v33, v32, a11, v28];

  return v30;
}

- (QLCacheThumbnailData)initWithCacheId:(unint64_t)a3 thumbnailRequest:(id)a4 size:(float)a5 badgeType:(unint64_t)a6
{
  v10 = a4;
  v11 = objc_opt_new();
  *&v12 = a5;
  v13 = [(QLCacheThumbnailData *)self initWithCacheId:a3 thumbnailRequest:v10 size:v11 bitmapFormat:0 bitmapData:0 metadata:0 flavor:v12 contentRect:*MEMORY[0x277CBF3A0] badgeType:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), a6];

  return v13;
}

- (QLCacheThumbnailData)initWithUnsavedDataForThumbnailRequest:(id)a3 size:(float)a4 bitmapFormat:(id)a5 bitmapData:(id)a6 reservationInfo:(id)a7 metadata:(id)a8 reservationInfo:(id)a9 flavor:(int)a10 contentRect:(CGRect)a11 badgeType:(unint64_t)a12
{
  height = a11.size.height;
  width = a11.size.width;
  y = a11.origin.y;
  x = a11.origin.x;
  v29 = a7;
  v24 = a9;
  *&v25 = a4;
  v26 = [(QLCacheThumbnailData *)self initWithCacheId:0 thumbnailRequest:a3 size:a5 bitmapFormat:a6 bitmapData:a8 metadata:a10 flavor:v25 contentRect:x badgeType:y, width, height, a12];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_bitmapDataToValidate, a7);
    objc_storeStrong(&v27->_metadataToValidate, a9);
  }

  return v27;
}

- (BOOL)setState:(unint64_t)a3 changedState:(BOOL *)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__QLCacheThumbnailData_setState_changedState___block_invoke;
  v7[3] = &unk_279ADD488;
  v7[6] = a4;
  v7[7] = a3;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __46__QLCacheThumbnailData_setState_changedState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *v2 = 1;
  }

  v3 = *(a1 + 56);
  result = [*(a1 + 32) state];
  if (v3 == result)
  {
    v5 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (v5)
    {
      *v5 = 0;
    }
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6 == 1 || v6 == 2)
    {
      result = [*(a1 + 32) state];
      if (!result)
      {
        *(*(a1 + 32) + 16) = *(a1 + 56);
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

@end