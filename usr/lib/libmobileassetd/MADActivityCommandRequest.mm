@interface MADActivityCommandRequest
- (id)initForClient:(id)client requestingAction:(id)action;
- (void)associateAbsoluteId:(id)id;
- (void)associateAllowDifferences:(id)differences;
- (void)associateAssetId:(id)id;
- (void)associateAssetIdsToPreserve:(id)preserve;
- (void)associateAssetState:(int64_t)state;
- (void)associateAssetType:(id)type;
- (void)associateAssetTypesList:(id)list;
- (void)associateBaseUrl:(id)url;
- (void)associateCleanupInFlightDownloads:(BOOL)downloads;
- (void)associateClientExtractorData:(id)data ofLength:(unint64_t)length;
- (void)associateConnectionIdentifier:(id)identifier;
- (void)associateDoNotBlockBeforeFirstUnlock:(BOOL)unlock;
- (void)associateDoNotBlockOnNetworkStatus:(BOOL)status;
- (void)associateDownloadConfig:(id)config;
- (void)associateDownloadOptions:(id)options;
- (void)associateDownloadSize:(unint64_t)size;
- (void)associateGCOverrideDays:(unint64_t)days;
- (void)associateNotificationInterval:(unint64_t)interval;
- (void)associatePallasAudience:(id)audience;
- (void)associatePallasEnabled:(BOOL)enabled;
- (void)associatePallasUrl:(id)url;
- (void)associatePurpose:(id)purpose;
- (void)associateQueryParams:(id)params;
- (void)associateRelativeUrl:(id)url;
- (void)associateServerUrl:(id)url;
- (void)associateUnarchiveSize:(int64_t)size;
@end

@implementation MADActivityCommandRequest

- (id)initForClient:(id)client requestingAction:(id)action
{
  clientCopy = client;
  actionCopy = action;
  v28.receiver = self;
  v28.super_class = MADActivityCommandRequest;
  v9 = [(MADActivityCommandRequest *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientName, client);
    objc_storeStrong(&v10->_action, action);
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

- (void)associateAssetType:(id)type
{
  typeCopy = type;
  assetType = [(MADActivityCommandRequest *)self assetType];

  if (!assetType)
  {
    [(MADActivityCommandRequest *)self setAssetType:typeCopy];
  }
}

- (void)associateAssetId:(id)id
{
  idCopy = id;
  assetId = [(MADActivityCommandRequest *)self assetId];

  if (!assetId)
  {
    [(MADActivityCommandRequest *)self setAssetId:idCopy];
  }
}

- (void)associateDoNotBlockBeforeFirstUnlock:(BOOL)unlock
{
  unlockCopy = unlock;
  if (![(MADActivityCommandRequest *)self doNotBlockBeforeFirstUnlock])
  {

    [(MADActivityCommandRequest *)self setDoNotBlockBeforeFirstUnlock:unlockCopy];
  }
}

- (void)associateDoNotBlockOnNetworkStatus:(BOOL)status
{
  statusCopy = status;
  if (![(MADActivityCommandRequest *)self doNotBlockOnNetworkStatus])
  {

    [(MADActivityCommandRequest *)self setDoNotBlockOnNetworkStatus:statusCopy];
  }
}

- (void)associateQueryParams:(id)params
{
  paramsCopy = params;
  queryParams = [(MADActivityCommandRequest *)self queryParams];

  if (!queryParams)
  {
    [(MADActivityCommandRequest *)self setQueryParams:paramsCopy];
  }
}

- (void)associateRelativeUrl:(id)url
{
  urlCopy = url;
  relativeUrl = [(MADActivityCommandRequest *)self relativeUrl];

  if (!relativeUrl)
  {
    [(MADActivityCommandRequest *)self setRelativeUrl:urlCopy];
  }
}

- (void)associateDownloadOptions:(id)options
{
  optionsCopy = options;
  downloadOptions = [(MADActivityCommandRequest *)self downloadOptions];

  if (!downloadOptions)
  {
    [(MADActivityCommandRequest *)self setDownloadOptions:optionsCopy];
  }
}

- (void)associateDownloadSize:(unint64_t)size
{
  if (![(MADActivityCommandRequest *)self downloadSize])
  {

    [(MADActivityCommandRequest *)self setDownloadSize:size];
  }
}

- (void)associateNotificationInterval:(unint64_t)interval
{
  if (![(MADActivityCommandRequest *)self notificationInterval])
  {

    [(MADActivityCommandRequest *)self setNotificationInterval:interval];
  }
}

- (void)associateDownloadConfig:(id)config
{
  configCopy = config;
  downloadConfig = [(MADActivityCommandRequest *)self downloadConfig];

  if (!downloadConfig)
  {
    [(MADActivityCommandRequest *)self setDownloadConfig:configCopy];
  }
}

- (void)associateAssetTypesList:(id)list
{
  listCopy = list;
  assetTypesList = [(MADActivityCommandRequest *)self assetTypesList];

  if (!assetTypesList)
  {
    [(MADActivityCommandRequest *)self setAssetTypesList:listCopy];
  }
}

- (void)associateAssetState:(int64_t)state
{
  if (![(MADActivityCommandRequest *)self assetState])
  {

    [(MADActivityCommandRequest *)self setAssetState:state];
  }
}

- (void)associateAssetIdsToPreserve:(id)preserve
{
  preserveCopy = preserve;
  assetIdsToPreserve = [(MADActivityCommandRequest *)self assetIdsToPreserve];

  if (!assetIdsToPreserve)
  {
    [(MADActivityCommandRequest *)self setAssetIdsToPreserve:preserveCopy];
  }
}

- (void)associatePallasEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (![(MADActivityCommandRequest *)self pallasEnabled])
  {

    [(MADActivityCommandRequest *)self setPallasEnabled:enabledCopy];
  }
}

- (void)associateServerUrl:(id)url
{
  urlCopy = url;
  serverUrl = [(MADActivityCommandRequest *)self serverUrl];

  if (!serverUrl)
  {
    [(MADActivityCommandRequest *)self setServerUrl:urlCopy];
  }
}

- (void)associatePallasUrl:(id)url
{
  urlCopy = url;
  pallasUrl = [(MADActivityCommandRequest *)self pallasUrl];

  if (!pallasUrl)
  {
    [(MADActivityCommandRequest *)self setPallasUrl:urlCopy];
  }
}

- (void)associatePallasAudience:(id)audience
{
  audienceCopy = audience;
  pallasAudience = [(MADActivityCommandRequest *)self pallasAudience];

  if (!pallasAudience)
  {
    [(MADActivityCommandRequest *)self setPallasAudience:audienceCopy];
  }
}

- (void)associateUnarchiveSize:(int64_t)size
{
  if (![(MADActivityCommandRequest *)self unarchiveSize])
  {

    [(MADActivityCommandRequest *)self setUnarchiveSize:size];
  }
}

- (void)associateGCOverrideDays:(unint64_t)days
{
  if (![(MADActivityCommandRequest *)self gcOverrideDays])
  {

    [(MADActivityCommandRequest *)self setGcOverrideDays:days];
  }
}

- (void)associateCleanupInFlightDownloads:(BOOL)downloads
{
  downloadsCopy = downloads;
  if (![(MADActivityCommandRequest *)self cleanupInFlightDownloads])
  {

    [(MADActivityCommandRequest *)self setCleanupInFlightDownloads:downloadsCopy];
  }
}

- (void)associateConnectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  connectionIdentifier = [(MADActivityCommandRequest *)self connectionIdentifier];

  if (!connectionIdentifier)
  {
    [(MADActivityCommandRequest *)self setConnectionIdentifier:identifierCopy];
  }
}

- (void)associatePurpose:(id)purpose
{
  purposeCopy = purpose;
  purpose = [(MADActivityCommandRequest *)self purpose];

  if (!purpose)
  {
    [(MADActivityCommandRequest *)self setPurpose:purposeCopy];
  }
}

- (void)associateBaseUrl:(id)url
{
  urlCopy = url;
  baseUrl = [(MADActivityCommandRequest *)self baseUrl];

  if (!baseUrl)
  {
    [(MADActivityCommandRequest *)self setBaseUrl:urlCopy];
  }
}

- (void)associateClientExtractorData:(id)data ofLength:(unint64_t)length
{
  dataCopy = data;
  clientExtractorData = [(MADActivityCommandRequest *)self clientExtractorData];

  if (!clientExtractorData)
  {
    [(MADActivityCommandRequest *)self setClientExtractorData:dataCopy];
    [(MADActivityCommandRequest *)self setClientExtractorLen:length];
  }
}

- (void)associateAbsoluteId:(id)id
{
  idCopy = id;
  absoluteId = [(MADActivityCommandRequest *)self absoluteId];

  if (!absoluteId)
  {
    [(MADActivityCommandRequest *)self setAbsoluteId:idCopy];
  }
}

- (void)associateAllowDifferences:(id)differences
{
  differencesCopy = differences;
  allowDifferences = [(MADActivityCommandRequest *)self allowDifferences];

  if (!allowDifferences)
  {
    [(MADActivityCommandRequest *)self setAllowDifferences:differencesCopy];
  }
}

@end