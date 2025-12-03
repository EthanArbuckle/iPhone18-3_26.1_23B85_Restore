@interface SSMutableURLRequestProperties
- (void)setAdditionalMetrics:(id)metrics;
- (void)setAllowedRetryCount:(int64_t)count;
- (void)setAllowsBootstrapCellularData:(BOOL)data;
- (void)setCachePolicy:(unint64_t)policy;
- (void)setClientAuditBundleIdentifier:(id)identifier;
- (void)setClientAuditTokenData:(id)data;
- (void)setClientIdentifier:(id)identifier;
- (void)setExpectedContentLength:(int64_t)length;
- (void)setHTTPBody:(id)body;
- (void)setHTTPBodyStream:(id)stream;
- (void)setHTTPHeaders:(id)headers;
- (void)setHTTPMethod:(id)method;
- (void)setITunesStoreRequest:(BOOL)request;
- (void)setKBSyncType:(int64_t)type;
- (void)setLargeDownload:(BOOL)download;
- (void)setMachineDataStyle:(int64_t)style;
- (void)setMultiPartFormDataWithDictionary:(id)dictionary;
- (void)setNetworkServiceType:(unint64_t)type;
- (void)setRequestParameters:(id)parameters;
- (void)setRequiresCellularDataNetwork:(BOOL)network;
- (void)setRequiresExtendedValidationCertificates:(BOOL)certificates;
- (void)setRequiresExternal:(BOOL)external;
- (void)setRequiresHTTPS:(BOOL)s;
- (void)setShouldAddKBSyncData:(BOOL)data;
- (void)setShouldDecodeResponse:(BOOL)response;
- (void)setShouldDisableCellular:(BOOL)cellular;
- (void)setShouldDisableCellularFallback:(BOOL)fallback;
- (void)setShouldDisableReversePush:(BOOL)push;
- (void)setShouldDisableReversePushSampling:(BOOL)sampling;
- (void)setShouldProcessProtocol:(BOOL)protocol;
- (void)setShouldSendSecureToken:(BOOL)token;
- (void)setShouldSetCookies:(BOOL)cookies;
- (void)setTimeoutInterval:(double)interval;
- (void)setURL:(id)l;
- (void)setURLBagKey:(id)key;
- (void)setURLBagType:(int64_t)type;
- (void)setURLBagURLBlock:(id)block;
- (void)setURLs:(id)ls;
- (void)setUserAgentComponents:(id)components;
- (void)setValue:(id)value forHTTPHeaderField:(id)field;
- (void)setValue:(id)value forRequestParameter:(id)parameter;
@end

@implementation SSMutableURLRequestProperties

- (void)setAdditionalMetrics:(id)metrics
{
  metricsCopy = metrics;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SSMutableURLRequestProperties_setAdditionalMetrics___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = metricsCopy;
  v6 = metricsCopy;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setAllowedRetryCount:(int64_t)count
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SSMutableURLRequestProperties_setAllowedRetryCount___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = count;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setCachePolicy:(unint64_t)policy
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SSMutableURLRequestProperties_setCachePolicy___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = policy;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SSMutableURLRequestProperties_setClientIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __53__SSMutableURLRequestProperties_setClientIdentifier___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 56) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;
  }
}

- (void)setExpectedContentLength:(int64_t)length
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SSMutableURLRequestProperties_setExpectedContentLength___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = length;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setHTTPBody:(id)body
{
  bodyCopy = body;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SSMutableURLRequestProperties_setHTTPBody___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = bodyCopy;
  v6 = bodyCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __45__SSMutableURLRequestProperties_setHTTPBody___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 80) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;
  }
}

- (void)setHTTPHeaders:(id)headers
{
  headersCopy = headers;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SSMutableURLRequestProperties_setHTTPHeaders___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = headersCopy;
  v6 = headersCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __48__SSMutableURLRequestProperties_setHTTPHeaders___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 96) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    *(v5 + 96) = v4;
  }
}

- (void)setHTTPMethod:(id)method
{
  methodCopy = method;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SSMutableURLRequestProperties_setHTTPMethod___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = methodCopy;
  v6 = methodCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __47__SSMutableURLRequestProperties_setHTTPMethod___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 104) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 104);
    *(v5 + 104) = v4;
  }
}

- (void)setITunesStoreRequest:(BOOL)request
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SSMutableURLRequestProperties_setITunesStoreRequest___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  requestCopy = request;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setMachineDataStyle:(int64_t)style
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SSMutableURLRequestProperties_setMachineDataStyle___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = style;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setNetworkServiceType:(unint64_t)type
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SSMutableURLRequestProperties_setNetworkServiceType___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = type;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setRequestParameters:(id)parameters
{
  parametersCopy = parameters;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SSMutableURLRequestProperties_setRequestParameters___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = parametersCopy;
  v6 = parametersCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __54__SSMutableURLRequestProperties_setRequestParameters___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 152) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 152);
    *(v5 + 152) = v4;
  }
}

- (void)setShouldDisableCellular:(BOOL)cellular
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SSMutableURLRequestProperties_setShouldDisableCellular___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  cellularCopy = cellular;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldDisableCellularFallback:(BOOL)fallback
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__SSMutableURLRequestProperties_setShouldDisableCellularFallback___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  fallbackCopy = fallback;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldDisableReversePush:(BOOL)push
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__SSMutableURLRequestProperties_setShouldDisableReversePush___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  pushCopy = push;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldDisableReversePushSampling:(BOOL)sampling
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__SSMutableURLRequestProperties_setShouldDisableReversePushSampling___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  samplingCopy = sampling;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setTimeoutInterval:(double)interval
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SSMutableURLRequestProperties_setTimeoutInterval___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  *&v4[5] = interval;
  dispatch_sync(dispatchQueue, v4);
}

double __52__SSMutableURLRequestProperties_setTimeoutInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 176) = result;
  return result;
}

- (void)setURLBagKey:(id)key
{
  keyCopy = key;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SSMutableURLRequestProperties_setURLBagKey___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __46__SSMutableURLRequestProperties_setURLBagKey___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 184) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 184);
    *(v5 + 184) = v4;
  }
}

- (void)setURL:(id)l
{
  v4 = MEMORY[0x1E695DEC8];
  lCopy = l;
  v6 = [[v4 alloc] initWithObjects:{lCopy, 0}];

  [(SSMutableURLRequestProperties *)self setURLs:v6];
}

- (void)setUserAgentComponents:(id)components
{
  componentsCopy = components;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SSMutableURLRequestProperties_setUserAgentComponents___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = componentsCopy;
  v6 = componentsCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __56__SSMutableURLRequestProperties_setUserAgentComponents___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 216) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 216);
    *(v5 + 216) = v4;
  }
}

- (void)setValue:(id)value forHTTPHeaderField:(id)field
{
  valueCopy = value;
  fieldCopy = field;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SSMutableURLRequestProperties_setValue_forHTTPHeaderField___block_invoke;
  block[3] = &unk_1E84AC078;
  block[4] = self;
  v12 = valueCopy;
  v13 = fieldCopy;
  v9 = fieldCopy;
  v10 = valueCopy;
  dispatch_sync(dispatchQueue, block);
}

void __61__SSMutableURLRequestProperties_setValue_forHTTPHeaderField___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 96) mutableCopy];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v3 = a1[5];
  v4 = a1[6];
  v8 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:v4];
  }

  else
  {
    [v2 removeObjectForKey:v4];
  }

  v5 = [v8 copy];
  v6 = a1[4];
  v7 = *(v6 + 96);
  *(v6 + 96) = v5;
}

- (void)setValue:(id)value forRequestParameter:(id)parameter
{
  valueCopy = value;
  parameterCopy = parameter;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SSMutableURLRequestProperties_setValue_forRequestParameter___block_invoke;
  block[3] = &unk_1E84AC078;
  block[4] = self;
  v12 = valueCopy;
  v13 = parameterCopy;
  v9 = parameterCopy;
  v10 = valueCopy;
  dispatch_sync(dispatchQueue, block);
}

void __62__SSMutableURLRequestProperties_setValue_forRequestParameter___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 152) mutableCopy];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v3 = a1[5];
  v4 = a1[6];
  v8 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:v4];
  }

  else
  {
    [v2 removeObjectForKey:v4];
  }

  v5 = [v8 copy];
  v6 = a1[4];
  v7 = *(v6 + 152);
  *(v6 + 152) = v5;
}

- (void)setAllowsBootstrapCellularData:(BOOL)data
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__SSMutableURLRequestProperties_setAllowsBootstrapCellularData___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  dataCopy = data;
  dispatch_async(dispatchQueue, v4);
}

- (void)setHTTPBodyStream:(id)stream
{
  streamCopy = stream;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SSMutableURLRequestProperties_setHTTPBodyStream___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = streamCopy;
  v6 = streamCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __51__SSMutableURLRequestProperties_setHTTPBodyStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 88);
  v4 = (v2 + 88);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

- (void)setKBSyncType:(int64_t)type
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSMutableURLRequestProperties_setKBSyncType___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = type;
  dispatch_async(dispatchQueue, v4);
}

- (void)setLargeDownload:(BOOL)download
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SSMutableURLRequestProperties_setLargeDownload___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  downloadCopy = download;
  dispatch_async(dispatchQueue, v4);
}

- (void)setMultiPartFormDataWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v6 = uUID;
  if (uUID)
  {
    uUIDString = [uUID UUIDString];
    if (uUIDString)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"multipart/form-data; boundary=%@", uUIDString];
      v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __68__SSMutableURLRequestProperties_setMultiPartFormDataWithDictionary___block_invoke;
      v13[3] = &unk_1E84AFAA0;
      v14 = v9;
      v10 = uUIDString;
      v15 = v10;
      v11 = v9;
      [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v13];
      [v11 appendFormat:@"--%@--", v10];
      v12 = [v11 dataUsingEncoding:4];
      [(SSMutableURLRequestProperties *)self setHTTPBody:v12];

      [(SSMutableURLRequestProperties *)self setHTTPMethod:@"POST"];
      [(SSMutableURLRequestProperties *)self setValue:v8 forHTTPHeaderField:@"Content-Type"];
    }
  }
}

void __68__SSMutableURLRequestProperties_setMultiPartFormDataWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a3;
  v7 = a2;
  [v5 appendFormat:@"--%@\r\n", v6];
  [*(a1 + 32) appendFormat:@"Content-Disposition: form-data; name=%@\r\n\r\n", v7];

  [*(a1 + 32) appendFormat:@"%@\r\n", v8];
}

- (void)setRequiresCellularDataNetwork:(BOOL)network
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__SSMutableURLRequestProperties_setRequiresCellularDataNetwork___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  networkCopy = network;
  dispatch_async(dispatchQueue, v4);
}

- (void)setRequiresExtendedValidationCertificates:(BOOL)certificates
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__SSMutableURLRequestProperties_setRequiresExtendedValidationCertificates___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  certificatesCopy = certificates;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setRequiresExternal:(BOOL)external
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SSMutableURLRequestProperties_setRequiresExternal___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  externalCopy = external;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setRequiresHTTPS:(BOOL)s
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SSMutableURLRequestProperties_setRequiresHTTPS___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  sCopy = s;
  dispatch_async(dispatchQueue, v4);
}

- (void)setShouldAddKBSyncData:(BOOL)data
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SSMutableURLRequestProperties_setShouldAddKBSyncData___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  dataCopy = data;
  dispatch_async(dispatchQueue, v4);
}

- (void)setShouldDecodeResponse:(BOOL)response
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__SSMutableURLRequestProperties_setShouldDecodeResponse___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  responseCopy = response;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldProcessProtocol:(BOOL)protocol
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SSMutableURLRequestProperties_setShouldProcessProtocol___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  protocolCopy = protocol;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldSendSecureToken:(BOOL)token
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SSMutableURLRequestProperties_setShouldSendSecureToken___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  tokenCopy = token;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldSetCookies:(BOOL)cookies
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SSMutableURLRequestProperties_setShouldSetCookies___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  cookiesCopy = cookies;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setClientAuditBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SSMutableURLRequestProperties_setClientAuditBundleIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __64__SSMutableURLRequestProperties_setClientAuditBundleIdentifier___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 40) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)setClientAuditTokenData:(id)data
{
  dataCopy = data;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSMutableURLRequestProperties_setClientAuditTokenData___block_invoke;
  v7[3] = &unk_1E84AC028;
  v8 = dataCopy;
  selfCopy = self;
  v6 = dataCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __57__SSMutableURLRequestProperties_setClientAuditTokenData___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 48);
  v3 = (v2 + 48);
  if (v1 != v4)
  {
    objc_storeStrong(v3, v1);
  }
}

- (void)setURLBagType:(int64_t)type
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSMutableURLRequestProperties_setURLBagType___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = type;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setURLBagURLBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SSMutableURLRequestProperties_setURLBagURLBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __51__SSMutableURLRequestProperties_setURLBagURLBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 200) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 200);
    *(v5 + 200) = v4;
  }
}

- (void)setURLs:(id)ls
{
  lsCopy = ls;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SSMutableURLRequestProperties_setURLs___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = lsCopy;
  v6 = lsCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __41__SSMutableURLRequestProperties_setURLs___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 208) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 208);
    *(v5 + 208) = v4;
  }
}

@end