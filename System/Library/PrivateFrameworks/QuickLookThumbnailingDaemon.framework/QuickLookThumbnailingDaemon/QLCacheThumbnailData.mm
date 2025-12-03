@interface QLCacheThumbnailData
- (BOOL)setState:(unint64_t)state changedState:(BOOL *)changedState;
- (CGRect)contentRect;
- (QLCacheThumbnailData)initWithCacheId:(unint64_t)id fileIdentifier:(id)identifier version:(id)version size:(float)size iconMode:(BOOL)mode iconVariant:(int64_t)variant interpolationQuality:(int)quality hitCount:(unint64_t)self0 lastHitDate:(id)self1 bitmapFormat:(id)self2 bitmapData:(id)self3 metadata:(id)self4 flavor:(int)self5 contentRect:(CGRect)self6 badgeType:(unint64_t)self7 externalGeneratorDataHash:(unint64_t)self8;
- (QLCacheThumbnailData)initWithCacheId:(unint64_t)id thumbnailRequest:(id)request size:(float)size badgeType:(unint64_t)type;
- (QLCacheThumbnailData)initWithCacheId:(unint64_t)id thumbnailRequest:(id)request size:(float)size bitmapFormat:(id)format bitmapData:(id)data metadata:(id)metadata flavor:(int)flavor contentRect:(CGRect)self0 badgeType:(unint64_t)self1;
- (QLCacheThumbnailData)initWithUnsavedDataForThumbnailRequest:(id)request size:(float)size bitmapFormat:(id)format bitmapData:(id)data reservationInfo:(id)info metadata:(id)metadata reservationInfo:(id)reservationInfo flavor:(int)self0 contentRect:(CGRect)self1 badgeType:(unint64_t)self2;
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

- (QLCacheThumbnailData)initWithCacheId:(unint64_t)id fileIdentifier:(id)identifier version:(id)version size:(float)size iconMode:(BOOL)mode iconVariant:(int64_t)variant interpolationQuality:(int)quality hitCount:(unint64_t)self0 lastHitDate:(id)self1 bitmapFormat:(id)self2 bitmapData:(id)self3 metadata:(id)self4 flavor:(int)self5 contentRect:(CGRect)self6 badgeType:(unint64_t)self7 externalGeneratorDataHash:(unint64_t)self8
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  identifierCopy = identifier;
  versionCopy = version;
  dateCopy = date;
  formatCopy = format;
  dataCopy = data;
  metadataCopy = metadata;
  v41.receiver = self;
  v41.super_class = QLCacheThumbnailData;
  v30 = [(QLCacheThumbnailData *)&v41 init];
  v31 = v30;
  if (v30)
  {
    v30->_cacheId = id;
    objc_storeStrong(&v30->_fileIdentifier, identifier);
    objc_storeStrong(&v31->_version, version);
    v31->_size = size;
    v31->_iconMode = mode;
    v31->_interpolationQuality = quality;
    v31->_iconVariant = variant;
    v31->_badgeType = type;
    v31->_hitCount = count;
    objc_storeStrong(&v31->_lastHitDate, date);
    objc_storeStrong(&v31->_bitmapFormat, format);
    objc_storeStrong(&v31->_bitmapData, data);
    objc_storeStrong(&v31->_metadata, metadata);
    v31->_flavor = flavor;
    v31->_contentRect.origin.x = x;
    v31->_contentRect.origin.y = y;
    v31->_contentRect.size.width = width;
    v31->_contentRect.size.height = height;
    v31->_externalGeneratorDataHash = hash;
    v32 = dispatch_queue_create("quicklookd.thumbnail", 0);
    queue = v31->_queue;
    v31->_queue = v32;

    v31->_state = id != 0;
  }

  return v31;
}

- (QLCacheThumbnailData)initWithCacheId:(unint64_t)id thumbnailRequest:(id)request size:(float)size bitmapFormat:(id)format bitmapData:(id)data metadata:(id)metadata flavor:(int)flavor contentRect:(CGRect)self0 badgeType:(unint64_t)self1
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  metadataCopy = metadata;
  dataCopy = data;
  formatCopy = format;
  requestCopy = request;
  fileIdentifier = [requestCopy fileIdentifier];
  v37FileIdentifier = [fileIdentifier fileIdentifier];
  fileIdentifier2 = [requestCopy fileIdentifier];
  version = [fileIdentifier2 version];
  iconMode = [requestCopy iconMode];
  iconVariant = [requestCopy iconVariant];
  interpolationQuality = [requestCopy interpolationQuality];
  externalThumbnailGeneratorDataHash = [requestCopy externalThumbnailGeneratorDataHash];

  LODWORD(v32) = flavor;
  *&v29 = size;
  v30 = [(QLCacheThumbnailData *)self initWithCacheId:id fileIdentifier:v37FileIdentifier version:version size:iconMode iconMode:iconVariant iconVariant:interpolationQuality interpolationQuality:v29 hitCount:x lastHitDate:y bitmapFormat:width bitmapData:height metadata:0 flavor:0 contentRect:formatCopy badgeType:dataCopy externalGeneratorDataHash:metadataCopy, v32, type, externalThumbnailGeneratorDataHash];

  return v30;
}

- (QLCacheThumbnailData)initWithCacheId:(unint64_t)id thumbnailRequest:(id)request size:(float)size badgeType:(unint64_t)type
{
  requestCopy = request;
  v11 = objc_opt_new();
  *&v12 = size;
  type = [(QLCacheThumbnailData *)self initWithCacheId:id thumbnailRequest:requestCopy size:v11 bitmapFormat:0 bitmapData:0 metadata:0 flavor:v12 contentRect:*MEMORY[0x277CBF3A0] badgeType:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), type];

  return type;
}

- (QLCacheThumbnailData)initWithUnsavedDataForThumbnailRequest:(id)request size:(float)size bitmapFormat:(id)format bitmapData:(id)data reservationInfo:(id)info metadata:(id)metadata reservationInfo:(id)reservationInfo flavor:(int)self0 contentRect:(CGRect)self1 badgeType:(unint64_t)self2
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  infoCopy = info;
  reservationInfoCopy = reservationInfo;
  *&v25 = size;
  type = [(QLCacheThumbnailData *)self initWithCacheId:0 thumbnailRequest:request size:format bitmapFormat:data bitmapData:metadata metadata:flavor flavor:v25 contentRect:x badgeType:y, width, height, type];
  v27 = type;
  if (type)
  {
    objc_storeStrong(&type->_bitmapDataToValidate, info);
    objc_storeStrong(&v27->_metadataToValidate, reservationInfo);
  }

  return v27;
}

- (BOOL)setState:(unint64_t)state changedState:(BOOL *)changedState
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
  v7[6] = changedState;
  v7[7] = state;
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