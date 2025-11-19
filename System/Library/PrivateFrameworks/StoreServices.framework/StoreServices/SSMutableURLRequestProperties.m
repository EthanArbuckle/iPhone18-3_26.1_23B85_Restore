@interface SSMutableURLRequestProperties
- (void)setAdditionalMetrics:(id)a3;
- (void)setAllowedRetryCount:(int64_t)a3;
- (void)setAllowsBootstrapCellularData:(BOOL)a3;
- (void)setCachePolicy:(unint64_t)a3;
- (void)setClientAuditBundleIdentifier:(id)a3;
- (void)setClientAuditTokenData:(id)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setExpectedContentLength:(int64_t)a3;
- (void)setHTTPBody:(id)a3;
- (void)setHTTPBodyStream:(id)a3;
- (void)setHTTPHeaders:(id)a3;
- (void)setHTTPMethod:(id)a3;
- (void)setITunesStoreRequest:(BOOL)a3;
- (void)setKBSyncType:(int64_t)a3;
- (void)setLargeDownload:(BOOL)a3;
- (void)setMachineDataStyle:(int64_t)a3;
- (void)setMultiPartFormDataWithDictionary:(id)a3;
- (void)setNetworkServiceType:(unint64_t)a3;
- (void)setRequestParameters:(id)a3;
- (void)setRequiresCellularDataNetwork:(BOOL)a3;
- (void)setRequiresExtendedValidationCertificates:(BOOL)a3;
- (void)setRequiresExternal:(BOOL)a3;
- (void)setRequiresHTTPS:(BOOL)a3;
- (void)setShouldAddKBSyncData:(BOOL)a3;
- (void)setShouldDecodeResponse:(BOOL)a3;
- (void)setShouldDisableCellular:(BOOL)a3;
- (void)setShouldDisableCellularFallback:(BOOL)a3;
- (void)setShouldDisableReversePush:(BOOL)a3;
- (void)setShouldDisableReversePushSampling:(BOOL)a3;
- (void)setShouldProcessProtocol:(BOOL)a3;
- (void)setShouldSendSecureToken:(BOOL)a3;
- (void)setShouldSetCookies:(BOOL)a3;
- (void)setTimeoutInterval:(double)a3;
- (void)setURL:(id)a3;
- (void)setURLBagKey:(id)a3;
- (void)setURLBagType:(int64_t)a3;
- (void)setURLBagURLBlock:(id)a3;
- (void)setURLs:(id)a3;
- (void)setUserAgentComponents:(id)a3;
- (void)setValue:(id)a3 forHTTPHeaderField:(id)a4;
- (void)setValue:(id)a3 forRequestParameter:(id)a4;
@end

@implementation SSMutableURLRequestProperties

- (void)setAdditionalMetrics:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SSMutableURLRequestProperties_setAdditionalMetrics___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setAllowedRetryCount:(int64_t)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SSMutableURLRequestProperties_setAllowedRetryCount___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setCachePolicy:(unint64_t)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SSMutableURLRequestProperties_setCachePolicy___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setClientIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SSMutableURLRequestProperties_setClientIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setExpectedContentLength:(int64_t)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SSMutableURLRequestProperties_setExpectedContentLength___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setHTTPBody:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SSMutableURLRequestProperties_setHTTPBody___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setHTTPHeaders:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SSMutableURLRequestProperties_setHTTPHeaders___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setHTTPMethod:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SSMutableURLRequestProperties_setHTTPMethod___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setITunesStoreRequest:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SSMutableURLRequestProperties_setITunesStoreRequest___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setMachineDataStyle:(int64_t)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SSMutableURLRequestProperties_setMachineDataStyle___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setNetworkServiceType:(unint64_t)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SSMutableURLRequestProperties_setNetworkServiceType___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setRequestParameters:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SSMutableURLRequestProperties_setRequestParameters___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setShouldDisableCellular:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SSMutableURLRequestProperties_setShouldDisableCellular___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldDisableCellularFallback:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__SSMutableURLRequestProperties_setShouldDisableCellularFallback___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldDisableReversePush:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__SSMutableURLRequestProperties_setShouldDisableReversePush___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldDisableReversePushSampling:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__SSMutableURLRequestProperties_setShouldDisableReversePushSampling___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setTimeoutInterval:(double)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SSMutableURLRequestProperties_setTimeoutInterval___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

double __52__SSMutableURLRequestProperties_setTimeoutInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 176) = result;
  return result;
}

- (void)setURLBagKey:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SSMutableURLRequestProperties_setURLBagKey___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setURL:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [[v4 alloc] initWithObjects:{v5, 0}];

  [(SSMutableURLRequestProperties *)self setURLs:v6];
}

- (void)setUserAgentComponents:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SSMutableURLRequestProperties_setUserAgentComponents___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setValue:(id)a3 forHTTPHeaderField:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SSMutableURLRequestProperties_setValue_forHTTPHeaderField___block_invoke;
  block[3] = &unk_1E84AC078;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)setValue:(id)a3 forRequestParameter:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SSMutableURLRequestProperties_setValue_forRequestParameter___block_invoke;
  block[3] = &unk_1E84AC078;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)setAllowsBootstrapCellularData:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__SSMutableURLRequestProperties_setAllowsBootstrapCellularData___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setHTTPBodyStream:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SSMutableURLRequestProperties_setHTTPBodyStream___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setKBSyncType:(int64_t)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSMutableURLRequestProperties_setKBSyncType___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setLargeDownload:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SSMutableURLRequestProperties_setLargeDownload___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setMultiPartFormDataWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 UUIDString];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"multipart/form-data; boundary=%@", v7];
      v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __68__SSMutableURLRequestProperties_setMultiPartFormDataWithDictionary___block_invoke;
      v13[3] = &unk_1E84AFAA0;
      v14 = v9;
      v10 = v7;
      v15 = v10;
      v11 = v9;
      [v4 enumerateKeysAndObjectsUsingBlock:v13];
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

- (void)setRequiresCellularDataNetwork:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__SSMutableURLRequestProperties_setRequiresCellularDataNetwork___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setRequiresExtendedValidationCertificates:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__SSMutableURLRequestProperties_setRequiresExtendedValidationCertificates___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setRequiresExternal:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SSMutableURLRequestProperties_setRequiresExternal___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setRequiresHTTPS:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SSMutableURLRequestProperties_setRequiresHTTPS___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setShouldAddKBSyncData:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SSMutableURLRequestProperties_setShouldAddKBSyncData___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setShouldDecodeResponse:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__SSMutableURLRequestProperties_setShouldDecodeResponse___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldProcessProtocol:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SSMutableURLRequestProperties_setShouldProcessProtocol___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldSendSecureToken:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SSMutableURLRequestProperties_setShouldSendSecureToken___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldSetCookies:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SSMutableURLRequestProperties_setShouldSetCookies___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setClientAuditBundleIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SSMutableURLRequestProperties_setClientAuditBundleIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setClientAuditTokenData:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSMutableURLRequestProperties_setClientAuditTokenData___block_invoke;
  v7[3] = &unk_1E84AC028;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)setURLBagType:(int64_t)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSMutableURLRequestProperties_setURLBagType___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setURLBagURLBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SSMutableURLRequestProperties_setURLBagURLBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setURLs:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SSMutableURLRequestProperties_setURLs___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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