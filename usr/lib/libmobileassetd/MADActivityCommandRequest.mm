@interface MADActivityCommandRequest
- (id)initForClient:(id)a3 requestingAction:(id)a4;
- (void)associateAbsoluteId:(id)a3;
- (void)associateAllowDifferences:(id)a3;
- (void)associateAssetId:(id)a3;
- (void)associateAssetIdsToPreserve:(id)a3;
- (void)associateAssetState:(int64_t)a3;
- (void)associateAssetType:(id)a3;
- (void)associateAssetTypesList:(id)a3;
- (void)associateBaseUrl:(id)a3;
- (void)associateCleanupInFlightDownloads:(BOOL)a3;
- (void)associateClientExtractorData:(id)a3 ofLength:(unint64_t)a4;
- (void)associateConnectionIdentifier:(id)a3;
- (void)associateDoNotBlockBeforeFirstUnlock:(BOOL)a3;
- (void)associateDoNotBlockOnNetworkStatus:(BOOL)a3;
- (void)associateDownloadConfig:(id)a3;
- (void)associateDownloadOptions:(id)a3;
- (void)associateDownloadSize:(unint64_t)a3;
- (void)associateGCOverrideDays:(unint64_t)a3;
- (void)associateNotificationInterval:(unint64_t)a3;
- (void)associatePallasAudience:(id)a3;
- (void)associatePallasEnabled:(BOOL)a3;
- (void)associatePallasUrl:(id)a3;
- (void)associatePurpose:(id)a3;
- (void)associateQueryParams:(id)a3;
- (void)associateRelativeUrl:(id)a3;
- (void)associateServerUrl:(id)a3;
- (void)associateUnarchiveSize:(int64_t)a3;
@end

@implementation MADActivityCommandRequest

- (id)initForClient:(id)a3 requestingAction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = MADActivityCommandRequest;
  v9 = [(MADActivityCommandRequest *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientName, a3);
    objc_storeStrong(&v10->_action, a4);
    assetType = v10->_assetType;
    v10->_assetType = 0;

    assetId = v10->_assetId;
    v10->_assetId = 0;

    v10->_returnTypes = 0;
    *&v10->_doNotBlockBeforeFirstUnlock = 0;
    relativeUrl = v10->_relativeUrl;
    v10->_relativeUrl = 0;

    downloadOptions = v10->_downloadOptions;
    v10->_downloadOptions = 0;

    v10->_downloadSize = 0;
    v10->_notificationInterval = 0;
    downloadConfig = v10->_downloadConfig;
    v10->_downloadConfig = 0;

    assetTypesList = v10->_assetTypesList;
    v10->_assetTypesList = 0;

    assetIdsToPreserve = v10->_assetIdsToPreserve;
    v10->_assetState = 0;
    v10->_assetIdsToPreserve = 0;

    v10->_pallasEnabled = 0;
    serverUrl = v10->_serverUrl;
    v10->_serverUrl = 0;

    pallasUrl = v10->_pallasUrl;
    v10->_pallasUrl = 0;

    pallasAudience = v10->_pallasAudience;
    v10->_pallasAudience = 0;

    absoluteId = v10->_absoluteId;
    v10->_absoluteId = 0;

    v10->_cleanupInFlightDownloads = 0;
    v10->_unarchiveSize = 0;
    v10->_gcOverrideDays = 0;
    connectionIdentifier = v10->_connectionIdentifier;
    v10->_connectionIdentifier = 0;

    purpose = v10->_purpose;
    v10->_purpose = 0;

    baseUrl = v10->_baseUrl;
    v10->_baseUrl = 0;

    clientExtractorData = v10->_clientExtractorData;
    v10->_clientExtractorData = 0;

    allowDifferences = v10->_allowDifferences;
    v10->_clientExtractorLen = 0;
    v10->_allowDifferences = 0;
  }

  return v10;
}

- (void)associateAssetType:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self assetType];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setAssetType:v5];
  }
}

- (void)associateAssetId:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self assetId];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setAssetId:v5];
  }
}

- (void)associateDoNotBlockBeforeFirstUnlock:(BOOL)a3
{
  v3 = a3;
  if (![(MADActivityCommandRequest *)self doNotBlockBeforeFirstUnlock])
  {

    [(MADActivityCommandRequest *)self setDoNotBlockBeforeFirstUnlock:v3];
  }
}

- (void)associateDoNotBlockOnNetworkStatus:(BOOL)a3
{
  v3 = a3;
  if (![(MADActivityCommandRequest *)self doNotBlockOnNetworkStatus])
  {

    [(MADActivityCommandRequest *)self setDoNotBlockOnNetworkStatus:v3];
  }
}

- (void)associateQueryParams:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self queryParams];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setQueryParams:v5];
  }
}

- (void)associateRelativeUrl:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self relativeUrl];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setRelativeUrl:v5];
  }
}

- (void)associateDownloadOptions:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self downloadOptions];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setDownloadOptions:v5];
  }
}

- (void)associateDownloadSize:(unint64_t)a3
{
  if (![(MADActivityCommandRequest *)self downloadSize])
  {

    [(MADActivityCommandRequest *)self setDownloadSize:a3];
  }
}

- (void)associateNotificationInterval:(unint64_t)a3
{
  if (![(MADActivityCommandRequest *)self notificationInterval])
  {

    [(MADActivityCommandRequest *)self setNotificationInterval:a3];
  }
}

- (void)associateDownloadConfig:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self downloadConfig];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setDownloadConfig:v5];
  }
}

- (void)associateAssetTypesList:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self assetTypesList];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setAssetTypesList:v5];
  }
}

- (void)associateAssetState:(int64_t)a3
{
  if (![(MADActivityCommandRequest *)self assetState])
  {

    [(MADActivityCommandRequest *)self setAssetState:a3];
  }
}

- (void)associateAssetIdsToPreserve:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self assetIdsToPreserve];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setAssetIdsToPreserve:v5];
  }
}

- (void)associatePallasEnabled:(BOOL)a3
{
  v3 = a3;
  if (![(MADActivityCommandRequest *)self pallasEnabled])
  {

    [(MADActivityCommandRequest *)self setPallasEnabled:v3];
  }
}

- (void)associateServerUrl:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self serverUrl];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setServerUrl:v5];
  }
}

- (void)associatePallasUrl:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self pallasUrl];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setPallasUrl:v5];
  }
}

- (void)associatePallasAudience:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self pallasAudience];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setPallasAudience:v5];
  }
}

- (void)associateUnarchiveSize:(int64_t)a3
{
  if (![(MADActivityCommandRequest *)self unarchiveSize])
  {

    [(MADActivityCommandRequest *)self setUnarchiveSize:a3];
  }
}

- (void)associateGCOverrideDays:(unint64_t)a3
{
  if (![(MADActivityCommandRequest *)self gcOverrideDays])
  {

    [(MADActivityCommandRequest *)self setGcOverrideDays:a3];
  }
}

- (void)associateCleanupInFlightDownloads:(BOOL)a3
{
  v3 = a3;
  if (![(MADActivityCommandRequest *)self cleanupInFlightDownloads])
  {

    [(MADActivityCommandRequest *)self setCleanupInFlightDownloads:v3];
  }
}

- (void)associateConnectionIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self connectionIdentifier];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setConnectionIdentifier:v5];
  }
}

- (void)associatePurpose:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self purpose];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setPurpose:v5];
  }
}

- (void)associateBaseUrl:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self baseUrl];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setBaseUrl:v5];
  }
}

- (void)associateClientExtractorData:(id)a3 ofLength:(unint64_t)a4
{
  v7 = a3;
  v6 = [(MADActivityCommandRequest *)self clientExtractorData];

  if (!v6)
  {
    [(MADActivityCommandRequest *)self setClientExtractorData:v7];
    [(MADActivityCommandRequest *)self setClientExtractorLen:a4];
  }
}

- (void)associateAbsoluteId:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self absoluteId];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setAbsoluteId:v5];
  }
}

- (void)associateAllowDifferences:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityCommandRequest *)self allowDifferences];

  if (!v4)
  {
    [(MADActivityCommandRequest *)self setAllowDifferences:v5];
  }
}

@end