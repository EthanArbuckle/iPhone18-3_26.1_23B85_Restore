@interface SSURLRequestProperties
- (BOOL)allowsBootstrapCellularData;
- (BOOL)canBeResolved;
- (BOOL)isEqual:(id)a3;
- (BOOL)isITunesStoreRequest;
- (BOOL)isLargeDownload;
- (BOOL)requiresCellularDataNetwork;
- (BOOL)requiresExtendedValidationCertificates;
- (BOOL)requiresExternal;
- (BOOL)requiresHTTPS;
- (BOOL)shouldAddKBSyncData;
- (BOOL)shouldDecodeResponse;
- (BOOL)shouldDisableCellular;
- (BOOL)shouldDisableCellularFallback;
- (BOOL)shouldDisableReversePush;
- (BOOL)shouldDisableReversePushSampling;
- (BOOL)shouldProcessProtocol;
- (BOOL)shouldSendSecureToken;
- (BOOL)shouldSetCookies;
- (NSArray)URLs;
- (NSArray)userAgentComponents;
- (NSData)HTTPBody;
- (NSData)clientAuditTokenData;
- (NSDictionary)HTTPHeaders;
- (NSDictionary)additionalMetrics;
- (NSDictionary)requestParameters;
- (NSInputStream)HTTPBodyStream;
- (NSString)HTTPMethod;
- (NSString)URLBagKey;
- (NSString)clientAuditBundleIdentifier;
- (NSString)clientBundleIdentifier;
- (NSString)clientIdentifier;
- (NSString)description;
- (NSURL)URL;
- (SSURLRequestProperties)initWithCoder:(id)a3;
- (SSURLRequestProperties)initWithURL:(id)a3;
- (SSURLRequestProperties)initWithURLRequest:(id)a3;
- (SSURLRequestProperties)initWithXPCEncoding:(id)a3;
- (double)timeoutInterval;
- (id)URLBagURLBlock;
- (id)_initCommon;
- (id)copyURLRequest;
- (id)copyXPCEncoding;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)KBSyncType;
- (int64_t)URLBagType;
- (int64_t)allowedRetryCount;
- (int64_t)expectedContentLength;
- (int64_t)machineDataStyle;
- (unint64_t)cachePolicy;
- (unint64_t)networkServiceType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSURLRequestProperties

- (id)_initCommon
{
  v6.receiver = self;
  v6.super_class = SSURLRequestProperties;
  v2 = [(SSURLRequestProperties *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.storeservices.SSURLRequestProperties", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

void __40__SSURLRequestProperties_copyURLRequest__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAllHTTPHeaderFields:*(*(a1 + 40) + 96)];
  [*(a1 + 32) setCachePolicy:*(*(a1 + 40) + 32)];
  [*(a1 + 32) setHTTPBody:*(*(a1 + 40) + 80)];
  [*(a1 + 32) setHTTPBodyStream:*(*(a1 + 40) + 88)];
  [*(a1 + 32) setHTTPMethod:*(*(a1 + 40) + 104)];
  [*(a1 + 32) setNetworkServiceType:*(*(a1 + 40) + 144)];
  v2 = *(*(a1 + 40) + 176);
  v3 = 10.0;
  if (v2 >= 10.0)
  {
    v3 = *(*(a1 + 40) + 176);
  }

  v4 = v2 < 2.22044605e-16;
  v5 = 60.0;
  if (!v4)
  {
    v5 = v3;
  }

  [*(a1 + 32) setTimeoutInterval:v5];
  if ([*(*(a1 + 40) + 208) count])
  {
    v6 = *(a1 + 32);
    v7 = [*(*(a1 + 40) + 208) objectAtIndex:0];
    [v6 setURL:v7];
  }
}

- (id)copyURLRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD68]);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__SSURLRequestProperties_copyURLRequest__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(dispatchQueue, v8);
  v6 = v5;

  return v6;
}

- (SSURLRequestProperties)initWithURL:(id)a3
{
  v4 = a3;
  v5 = [(SSURLRequestProperties *)self initWithURLRequest:0];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v4, 0}];
    urls = v5->_urls;
    v5->_urls = v6;
  }

  return v5;
}

- (SSURLRequestProperties)initWithURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(SSURLRequestProperties *)self _initCommon];
  v6 = v5;
  if (v5)
  {
    v5->_allowedRetryCount = -1;
    v5->_requiresExtendedValidationCertificates = -1;
    v5->_shouldDecodeResponse = 1;
    v5->_shouldSetCookies = 1;
    if (v4)
    {
      v5->_cachePolicy = [v4 cachePolicy];
      v7 = [v4 HTTPBody];
      httpBody = v6->_httpBody;
      v6->_httpBody = v7;

      v9 = [v4 HTTPBodyStream];
      httpBodyStream = v6->_httpBodyStream;
      v6->_httpBodyStream = v9;

      v11 = [v4 allHTTPHeaderFields];
      httpHeaders = v6->_httpHeaders;
      v6->_httpHeaders = v11;

      v13 = [v4 HTTPMethod];
      httpMethod = v6->_httpMethod;
      v6->_httpMethod = v13;

      [v4 timeoutInterval];
      v6->_timeoutInterval = v15;
      v16 = objc_alloc(MEMORY[0x1E695DEC8]);
      v17 = [v4 URL];
      v18 = [v16 initWithObjects:{v17, 0}];
      urls = v6->_urls;
      v6->_urls = v18;
    }

    else
    {
      v5->_cachePolicy = 0;
      v20 = v5->_httpMethod;
      v5->_httpMethod = @"GET";

      v6->_timeoutInterval = 60.0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(SSURLRequestProperties *)a2 encodeWithCoder:?];
  }

  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SSURLRequestProperties_encodeWithCoder___block_invoke;
  v8[3] = &unk_1E84AC028;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(dispatchQueue, v8);
}

uint64_t __42__SSURLRequestProperties_encodeWithCoder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 8) forKey:@"additionalMetrics"];
  [*(a1 + 32) encodeInteger:*(*(a1 + 40) + 16) forKey:@"retry"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 24) forKey:@"btstrpcll"];
  [*(a1 + 32) encodeInteger:*(*(a1 + 40) + 32) forKey:@"cache"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 40) forKey:@"srcappid"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 48) forKey:@"srcapp"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 56) forKey:@"client"];
  [*(a1 + 32) encodeInt64:*(*(a1 + 40) + 72) forKey:@"exclen"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 80) forKey:@"body"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 96) forKey:@"headers"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 104) forKey:@"method"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 112) forKey:@"itunes"];
  [*(a1 + 32) encodeInt64:*(*(a1 + 40) + 120) forKey:@"kbsynctype"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 128) forKey:@"large"];
  [*(a1 + 32) encodeInteger:*(*(a1 + 40) + 136) forKey:@"mds"];
  [*(a1 + 32) encodeInteger:*(*(a1 + 40) + 144) forKey:@"srvtype"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 152) forKey:@"params"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 160) forKey:@"reqcell"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 161) != 0 forKey:@"requireev"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 162) forKey:@"requireext"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 163) forKey:@"requireHTTPS"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 164) forKey:@"decode"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 166) forKey:@"nocell"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 165) forKey:@"disablecell"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 167) forKey:@"disableReversePush"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 168) forKey:@"disableReversePushSampling"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 169) forKey:@"procptcl"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 170) forKey:@"sectok"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 171) forKey:@"cookies"];
  [*(a1 + 32) encodeDouble:@"timeout" forKey:*(*(a1 + 40) + 176)];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 184) forKey:@"bagkey"];
  [*(a1 + 32) encodeInteger:*(*(a1 + 40) + 192) forKey:@"bagtype"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 208) forKey:@"urls"];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 216);

  return [v2 encodeObject:v3 forKey:@"uacomps"];
}

- (SSURLRequestProperties)initWithCoder:(id)a3
{
  v53[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(SSURLRequestProperties *)a2 initWithCoder:?];
  }

  v6 = [(SSURLRequestProperties *)self _initCommon];
  if (!v6)
  {
    goto LABEL_28;
  }

  if (![v5 containsValueForKey:@"properties"])
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v7 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v16 = [v5 decodeObjectOfClasses:v7 forKey:@"additionalMetrics"];
    v17 = *(v6 + 1);
    *(v6 + 1) = v16;

    *(v6 + 24) = [v5 decodeBoolForKey:@"btstrpcll"];
    v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"srcappid"];
    v19 = *(v6 + 5);
    *(v6 + 5) = v18;

    v20 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"srcapp"];
    v21 = *(v6 + 6);
    *(v6 + 6) = v20;

    v22 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"client"];
    v23 = *(v6 + 7);
    *(v6 + 7) = v22;

    v24 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    v25 = *(v6 + 10);
    *(v6 + 10) = v24;

    v26 = MEMORY[0x1E695DFD8];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v28 = [v26 setWithArray:v27];
    v29 = [v5 decodeObjectOfClasses:v28 forKey:@"headers"];
    v30 = *(v6 + 12);
    *(v6 + 12) = v29;

    v31 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"method"];
    v32 = *(v6 + 13);
    *(v6 + 13) = v31;

    *(v6 + 112) = [v5 decodeBoolForKey:@"itunes"];
    *(v6 + 128) = [v5 decodeBoolForKey:@"large"];
    *(v6 + 17) = [v5 decodeIntegerForKey:@"mds"];
    *(v6 + 18) = [v5 decodeIntegerForKey:@"srvtype"];
    *(v6 + 160) = [v5 decodeBoolForKey:@"reqcell"];
    *(v6 + 161) = [v5 decodeBoolForKey:@"requireev"];
    *(v6 + 162) = [v5 decodeBoolForKey:@"requireext"];
    *(v6 + 163) = [v5 decodeBoolForKey:@"requireHTTPS"];
    *(v6 + 164) = [v5 decodeBoolForKey:@"decode"];
    *(v6 + 166) = [v5 decodeBoolForKey:@"nocell"];
    *(v6 + 165) = [v5 decodeBoolForKey:@"disablecell"];
    *(v6 + 167) = [v5 decodeBoolForKey:@"disableReversePush"];
    *(v6 + 168) = [v5 decodeBoolForKey:@"disableReversePushSampling"];
    *(v6 + 169) = [v5 decodeBoolForKey:@"procptcl"];
    *(v6 + 170) = [v5 decodeBoolForKey:@"sectok"];
    *(v6 + 171) = [v5 decodeBoolForKey:@"cookies"];
    [v5 decodeDoubleForKey:@"timeout"];
    *(v6 + 22) = v33;
    v34 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"bagkey"];
    v35 = *(v6 + 23);
    *(v6 + 23) = v34;

    *(v6 + 24) = [v5 decodeIntegerForKey:@"bagtype"];
    v36 = [v5 decodeObjectOfClasses:v7 forKey:@"uacomps"];
    v37 = *(v6 + 27);
    *(v6 + 27) = v36;

    if ([v5 containsValueForKey:@"retryCount"])
    {
      v38 = @"retryCount";
    }

    else
    {
      v38 = @"retry";
    }

    *(v6 + 2) = [v5 decodeIntegerForKey:v38];
    if ([v5 containsValueForKey:@"cachePolicy"])
    {
      v39 = @"cachePolicy";
    }

    else
    {
      v39 = @"cache";
    }

    *(v6 + 4) = [v5 decodeIntegerForKey:v39];
    if ([v5 containsValueForKey:@"expectedlength"])
    {
      v40 = [v5 decodeIntegerForKey:@"expectedlength"];
    }

    else
    {
      v40 = [v5 decodeInt64ForKey:@"exclen"];
    }

    *(v6 + 9) = v40;
    if ([v5 containsValueForKey:@"kbsync"])
    {
      v42 = [v5 decodeBoolForKey:@"kbsync"];
    }

    else
    {
      v42 = [v5 decodeInt64ForKey:@"kbsynctype"];
    }

    *(v6 + 15) = v42;
    if ([v5 containsValueForKey:@"query"])
    {
      v43 = @"query";
    }

    else
    {
      v43 = @"params";
    }

    v44 = [v5 decodeObjectOfClasses:v7 forKey:v43];
    v45 = *(v6 + 19);
    *(v6 + 19) = v44;

    if ([v5 containsValueForKey:@"urls"])
    {
      v46 = MEMORY[0x1E695DFD8];
      v47 = objc_opt_class();
      v48 = objc_opt_class();
      v49 = [v46 setWithObjects:{v47, v48, objc_opt_class(), 0}];
      v50 = [v5 decodeObjectOfClasses:v49 forKey:@"urls"];
    }

    else
    {
      v49 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
      v50 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v49, 0}];
    }

    v51 = *(v6 + 26);
    *(v6 + 26) = v50;

    goto LABEL_27;
  }

  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"properties"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v6 + 1, *(v7 + 8));
    *(v6 + 2) = *(v7 + 16);
    *(v6 + 24) = *(v7 + 24);
    *(v6 + 4) = *(v7 + 32);
    objc_storeStrong(v6 + 5, *(v7 + 40));
    objc_storeStrong(v6 + 6, *(v7 + 48));
    objc_storeStrong(v6 + 7, *(v7 + 56));
    *(v6 + 9) = *(v7 + 72);
    objc_storeStrong(v6 + 10, *(v7 + 80));
    objc_storeStrong(v6 + 11, *(v7 + 88));
    objc_storeStrong(v6 + 12, *(v7 + 96));
    objc_storeStrong(v6 + 13, *(v7 + 104));
    *(v6 + 112) = *(v7 + 112);
    *(v6 + 15) = *(v7 + 120);
    *(v6 + 128) = *(v7 + 128);
    *(v6 + 17) = *(v7 + 136);
    *(v6 + 18) = *(v7 + 144);
    objc_storeStrong(v6 + 19, *(v7 + 152));
    *(v6 + 160) = *(v7 + 160);
    *(v6 + 161) = *(v7 + 161);
    *(v6 + 162) = *(v7 + 162);
    *(v6 + 163) = *(v7 + 163);
    *(v6 + 164) = *(v7 + 164);
    *(v6 + 165) = *(v7 + 165);
    *(v6 + 166) = *(v7 + 166);
    *(v6 + 167) = *(v7 + 167);
    *(v6 + 168) = *(v7 + 168);
    *(v6 + 169) = *(v7 + 169);
    *(v6 + 170) = *(v7 + 170);
    *(v6 + 171) = *(v7 + 171);
    *(v6 + 22) = *(v7 + 176);
    objc_storeStrong(v6 + 23, *(v7 + 184));
    *(v6 + 24) = *(v7 + 192);
    v8 = MEMORY[0x1DA6DFBB0](*(v7 + 200));
    v9 = *(v6 + 25);
    *(v6 + 25) = v8;

    objc_storeStrong(v6 + 26, *(v7 + 208));
    objc_storeStrong(v6 + 27, *(v7 + 216));
LABEL_27:

LABEL_28:
    v41 = v6;
    goto LABEL_29;
  }

  v41 = 0;
LABEL_29:

  return v41;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24;
  v13 = __Block_byref_object_dispose__24;
  v14 = [(SSURLRequestProperties *)+[SSMutableURLRequestProperties allocWithZone:](SSMutableURLRequestProperties _initCommon];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SSURLRequestProperties_mutableCopyWithZone___block_invoke;
  block[3] = &unk_1E84AFA78;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(dispatchQueue, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __46__SSURLRequestProperties_mutableCopyWithZone___block_invoke(void *a1)
{
  objc_storeStrong((*(*(a1[5] + 8) + 40) + 8), *(a1[4] + 8));
  *(*(*(a1[5] + 8) + 40) + 16) = *(a1[4] + 16);
  *(*(*(a1[5] + 8) + 40) + 24) = *(a1[4] + 24);
  *(*(*(a1[5] + 8) + 40) + 32) = *(a1[4] + 32);
  v2 = [*(a1[4] + 40) copyWithZone:a1[6]];
  v3 = *(*(a1[5] + 8) + 40);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 48) copyWithZone:a1[6]];
  v6 = *(*(a1[5] + 8) + 40);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  v8 = [*(a1[4] + 56) copyWithZone:a1[6]];
  v9 = *(*(a1[5] + 8) + 40);
  v10 = *(v9 + 56);
  *(v9 + 56) = v8;

  *(*(*(a1[5] + 8) + 40) + 72) = *(a1[4] + 72);
  v11 = [*(a1[4] + 80) copyWithZone:a1[6]];
  v12 = *(*(a1[5] + 8) + 40);
  v13 = *(v12 + 80);
  *(v12 + 80) = v11;

  objc_storeStrong((*(*(a1[5] + 8) + 40) + 88), *(a1[4] + 88));
  v14 = [*(a1[4] + 96) copyWithZone:a1[6]];
  v15 = *(*(a1[5] + 8) + 40);
  v16 = *(v15 + 96);
  *(v15 + 96) = v14;

  v17 = [*(a1[4] + 104) copyWithZone:a1[6]];
  v18 = *(*(a1[5] + 8) + 40);
  v19 = *(v18 + 104);
  *(v18 + 104) = v17;

  *(*(*(a1[5] + 8) + 40) + 112) = *(a1[4] + 112);
  *(*(*(a1[5] + 8) + 40) + 120) = *(a1[4] + 120);
  *(*(*(a1[5] + 8) + 40) + 128) = *(a1[4] + 128);
  *(*(*(a1[5] + 8) + 40) + 136) = *(a1[4] + 136);
  *(*(*(a1[5] + 8) + 40) + 144) = *(a1[4] + 144);
  v20 = [*(a1[4] + 152) copyWithZone:a1[6]];
  v21 = *(*(a1[5] + 8) + 40);
  v22 = *(v21 + 152);
  *(v21 + 152) = v20;

  *(*(*(a1[5] + 8) + 40) + 160) = *(a1[4] + 160);
  *(*(*(a1[5] + 8) + 40) + 161) = *(a1[4] + 161);
  *(*(*(a1[5] + 8) + 40) + 162) = *(a1[4] + 162);
  *(*(*(a1[5] + 8) + 40) + 163) = *(a1[4] + 163);
  *(*(*(a1[5] + 8) + 40) + 164) = *(a1[4] + 164);
  *(*(*(a1[5] + 8) + 40) + 165) = *(a1[4] + 165);
  *(*(*(a1[5] + 8) + 40) + 166) = *(a1[4] + 166);
  *(*(*(a1[5] + 8) + 40) + 167) = *(a1[4] + 167);
  *(*(*(a1[5] + 8) + 40) + 168) = *(a1[4] + 168);
  *(*(*(a1[5] + 8) + 40) + 169) = *(a1[4] + 169);
  *(*(*(a1[5] + 8) + 40) + 170) = *(a1[4] + 170);
  *(*(*(a1[5] + 8) + 40) + 171) = *(a1[4] + 171);
  *(*(*(a1[5] + 8) + 40) + 176) = *(a1[4] + 176);
  v23 = [*(a1[4] + 184) copyWithZone:a1[6]];
  v24 = *(*(a1[5] + 8) + 40);
  v25 = *(v24 + 184);
  *(v24 + 184) = v23;

  *(*(*(a1[5] + 8) + 40) + 192) = *(a1[4] + 192);
  v26 = [*(a1[4] + 200) copyWithZone:a1[6]];
  v27 = *(*(a1[5] + 8) + 40);
  v28 = *(v27 + 200);
  *(v27 + 200) = v26;

  v29 = [*(a1[4] + 208) copyWithZone:a1[6]];
  v30 = *(*(a1[5] + 8) + 40);
  v31 = *(v30 + 208);
  *(v30 + 208) = v29;

  v32 = [*(a1[4] + 216) copyWithZone:a1[6]];
  v33 = *(*(a1[5] + 8) + 40);
  v34 = *(v33 + 216);
  *(v33 + 216) = v32;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SSURLRequestProperties_copyXPCEncoding__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(dispatchQueue, v8);
  v6 = v5;

  return v6;
}

uint64_t __41__SSURLRequestProperties_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetObject(*(a1 + 32), "33", *(*(a1 + 40) + 8));
  xpc_dictionary_set_int64(*(a1 + 32), "0", *(*(a1 + 40) + 16));
  xpc_dictionary_set_BOOL(*(a1 + 32), "27", *(*(a1 + 40) + 24));
  xpc_dictionary_set_int64(*(a1 + 32), "1", *(*(a1 + 40) + 32));
  SSXPCDictionarySetObject(*(a1 + 32), "25", *(*(a1 + 40) + 40));
  SSXPCDictionarySetObject(*(a1 + 32), "2", *(*(a1 + 40) + 48));
  SSXPCDictionarySetObject(*(a1 + 32), "3", *(*(a1 + 40) + 56));
  xpc_dictionary_set_int64(*(a1 + 32), "5", *(*(a1 + 40) + 72));
  SSXPCDictionarySetObject(*(a1 + 32), "6", *(*(a1 + 40) + 80));
  SSXPCDictionarySetObject(*(a1 + 32), "7", *(*(a1 + 40) + 96));
  SSXPCDictionarySetObject(*(a1 + 32), "8", *(*(a1 + 40) + 104));
  xpc_dictionary_set_BOOL(*(a1 + 32), "9", *(*(a1 + 40) + 112));
  xpc_dictionary_set_int64(*(a1 + 32), "28", *(*(a1 + 40) + 120));
  xpc_dictionary_set_BOOL(*(a1 + 32), "24", *(*(a1 + 40) + 128));
  xpc_dictionary_set_int64(*(a1 + 32), "30", *(*(a1 + 40) + 136));
  xpc_dictionary_set_int64(*(a1 + 32), "12", *(*(a1 + 40) + 144));
  SSXPCDictionarySetObject(*(a1 + 32), "13", *(*(a1 + 40) + 152));
  xpc_dictionary_set_BOOL(*(a1 + 32), "29", *(*(a1 + 40) + 160));
  xpc_dictionary_set_BOOL(*(a1 + 32), "15", *(*(a1 + 40) + 161) != 0);
  xpc_dictionary_set_BOOL(*(a1 + 32), "31", *(*(a1 + 40) + 162));
  xpc_dictionary_set_BOOL(*(a1 + 32), "26", *(*(a1 + 40) + 163));
  xpc_dictionary_set_BOOL(*(a1 + 32), "4", *(*(a1 + 40) + 164));
  xpc_dictionary_set_BOOL(*(a1 + 32), "11", *(*(a1 + 40) + 165));
  xpc_dictionary_set_BOOL(*(a1 + 32), "10", *(*(a1 + 40) + 166));
  xpc_dictionary_set_BOOL(*(a1 + 32), "32", *(*(a1 + 40) + 167));
  xpc_dictionary_set_BOOL(*(a1 + 32), "34", *(*(a1 + 40) + 168));
  xpc_dictionary_set_BOOL(*(a1 + 32), "14", *(*(a1 + 40) + 169));
  xpc_dictionary_set_BOOL(*(a1 + 32), "23", *(*(a1 + 40) + 170));
  xpc_dictionary_set_BOOL(*(a1 + 32), "17", *(*(a1 + 40) + 171));
  xpc_dictionary_set_double(*(a1 + 32), "18", *(*(a1 + 40) + 176));
  SSXPCDictionarySetObject(*(a1 + 32), "19", *(*(a1 + 40) + 184));
  xpc_dictionary_set_int64(*(a1 + 32), "20", *(*(a1 + 40) + 192));
  SSXPCDictionarySetObject(*(a1 + 32), "22", *(*(a1 + 40) + 216));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 208);

  return SSXPCDictionarySetObject(v2, "21", v3);
}

- (SSURLRequestProperties)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v6 = [(SSURLRequestProperties *)self _initCommon];
    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = objc_opt_class();
    v9 = SSXPCDictionaryCopyObjectWithClass(v5, "33", v8);
    additionalMetrics = v6->_additionalMetrics;
    v6->_additionalMetrics = v9;

    v6->_allowedRetryCount = xpc_dictionary_get_int64(v5, "0");
    v6->_allowsBootstrapCellularData = xpc_dictionary_get_BOOL(v5, "27");
    v6->_cachePolicy = xpc_dictionary_get_int64(v5, "1");
    v11 = objc_opt_class();
    v12 = SSXPCDictionaryCopyObjectWithClass(v5, "25", v11);
    clientAuditBundleIdentifier = v6->_clientAuditBundleIdentifier;
    v6->_clientAuditBundleIdentifier = v12;

    v14 = objc_opt_class();
    v15 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v14);
    clientAuditTokenData = v6->_clientAuditTokenData;
    v6->_clientAuditTokenData = v15;

    v17 = objc_opt_class();
    v18 = SSXPCDictionaryCopyObjectWithClass(v5, "3", v17);
    clientIdentifier = v6->_clientIdentifier;
    v6->_clientIdentifier = v18;

    v6->_expectedContentLength = xpc_dictionary_get_int64(v5, "5");
    v20 = objc_opt_class();
    v21 = SSXPCDictionaryCopyObjectWithClass(v5, "6", v20);
    httpBody = v6->_httpBody;
    v6->_httpBody = v21;

    v23 = objc_opt_class();
    v24 = SSXPCDictionaryCopyObjectWithClass(v5, "7", v23);
    httpHeaders = v6->_httpHeaders;
    v6->_httpHeaders = v24;

    v26 = objc_opt_class();
    v27 = SSXPCDictionaryCopyObjectWithClass(v5, "8", v26);
    httpMethod = v6->_httpMethod;
    v6->_httpMethod = v27;

    v6->_isITunesStoreRequest = xpc_dictionary_get_BOOL(v5, "9");
    v6->_kbsyncType = xpc_dictionary_get_int64(v5, "28");
    v6->_largeDownload = xpc_dictionary_get_BOOL(v5, "24");
    v6->_machineDataStyle = xpc_dictionary_get_int64(v5, "30");
    v6->_networkServiceType = xpc_dictionary_get_int64(v5, "12");
    v29 = objc_opt_class();
    v30 = SSXPCDictionaryCopyObjectWithClass(v5, "13", v29);
    requestParameters = v6->_requestParameters;
    v6->_requestParameters = v30;

    v6->_requiresCellularDataNetwork = xpc_dictionary_get_BOOL(v5, "29");
    v6->_requiresExtendedValidationCertificates = xpc_dictionary_get_BOOL(v5, "15");
    v6->_requiresExternal = xpc_dictionary_get_BOOL(v5, "31");
    v6->_requiresHTTPS = xpc_dictionary_get_BOOL(v5, "26");
    v6->_shouldDecodeResponse = xpc_dictionary_get_BOOL(v5, "4");
    v6->_shouldDisableCellular = xpc_dictionary_get_BOOL(v5, "11");
    v6->_shouldDisableCellularFallback = xpc_dictionary_get_BOOL(v5, "10");
    v6->_shouldDisableReversePush = xpc_dictionary_get_BOOL(v5, "32");
    v6->_shouldDisableReversePushSampling = xpc_dictionary_get_BOOL(v5, "34");
    v6->_shouldProcessProtocol = xpc_dictionary_get_BOOL(v5, "14");
    v6->_shouldSendSecureToken = xpc_dictionary_get_BOOL(v5, "23");
    v6->_shouldSetCookies = xpc_dictionary_get_BOOL(v5, "17");
    v6->_timeoutInterval = xpc_dictionary_get_double(v5, "18");
    v32 = objc_opt_class();
    v33 = SSXPCDictionaryCopyObjectWithClass(v5, "19", v32);
    urlBagKey = v6->_urlBagKey;
    v6->_urlBagKey = v33;

    v6->_urlBagType = xpc_dictionary_get_int64(v5, "20");
    v35 = objc_opt_class();
    v36 = SSXPCDictionaryCopyObjectWithClass(v5, "22", v35);
    userAgentComponents = v6->_userAgentComponents;
    v6->_userAgentComponents = v36;

    self = xpc_dictionary_get_value(v5, "21");
    v38 = objc_opt_class();
    v39 = SSXPCCreateNSArrayFromXPCEncodedArray(self, v38);
    urls = v6->_urls;
    v6->_urls = v39;
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

- (NSDictionary)additionalMetrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSURLRequestProperties_additionalMetrics__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)allowedRetryCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSURLRequestProperties_allowedRetryCount__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__SSURLRequestProperties_allowedRetryCount__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(v2 + 16);
  if (v3 == -1)
  {
    result = [*(v2 + 104) caseInsensitiveCompare:@"post"];
    v4 = *(*(v1 + 40) + 8);
    if (result)
    {
      *(v4 + 24) = 6;
    }

    else
    {
      *(v4 + 24) = 0;
    }
  }

  else
  {
    *(*(*(result + 40) + 8) + 24) = v3;
  }

  return result;
}

- (unint64_t)cachePolicy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SSURLRequestProperties_cachePolicy__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)clientIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SSURLRequestProperties_clientIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)expectedContentLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SSURLRequestProperties_expectedContentLength__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSData)HTTPBody
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSURLRequestProperties_HTTPBody__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSDictionary)HTTPHeaders
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SSURLRequestProperties_HTTPHeaders__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)HTTPMethod
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SSURLRequestProperties_HTTPMethod__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isITunesStoreRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SSURLRequestProperties_isITunesStoreRequest__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __46__SSURLRequestProperties_isITunesStoreRequest__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = (*(v1 + 112) & 1) != 0 || *(v1 + 184) != 0;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (int64_t)machineDataStyle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SSURLRequestProperties_machineDataStyle__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)networkServiceType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 3;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SSURLRequestProperties_networkServiceType__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSDictionary)requestParameters
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSURLRequestProperties_requestParameters__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)shouldProcessProtocol
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SSURLRequestProperties_shouldProcessProtocol__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldSendSecureToken
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SSURLRequestProperties_shouldSendSecureToken__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldSetCookies
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SSURLRequestProperties_shouldSetCookies__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)clientAuditBundleIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SSURLRequestProperties_clientAuditBundleIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSData)clientAuditTokenData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SSURLRequestProperties_clientAuditTokenData__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)clientBundleIdentifier
{
  v3 = [(SSURLRequestProperties *)self clientAuditBundleIdentifier];
  if (![v3 length])
  {
    v4 = [(SSURLRequestProperties *)self clientAuditTokenData:0];
    v5 = [v4 length];

    if (v5 == 32)
    {
      v6 = [(SSURLRequestProperties *)self clientAuditTokenData];
      [v6 getBytes:&v9 length:32];

      v7 = CPCopyBundleIdentifierFromAuditToken();
      v3 = v7;
    }
  }

  return v3;
}

- (double)timeoutInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x404E000000000000;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SSURLRequestProperties_timeoutInterval__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __41__SSURLRequestProperties_timeoutInterval__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 176);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)URLBagKey
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SSURLRequestProperties_URLBagKey__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSURL)URL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__SSURLRequestProperties_URL__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__SSURLRequestProperties_URL__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) count];
  if (v2)
  {
    v2 = [*(*(a1 + 32) + 208) objectAtIndex:0];
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)userAgentComponents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__SSURLRequestProperties_userAgentComponents__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = SSURLRequestProperties;
  v4 = [(SSURLRequestProperties *)&v10 description];
  v5 = [(SSURLRequestProperties *)self URLs];
  v6 = [(SSURLRequestProperties *)self requestParameters];
  v7 = [(SSURLRequestProperties *)self HTTPHeaders];
  v8 = [v3 stringWithFormat:@"%@: URLs: %@ Parameters: %@; Headers: %@", v4, v5, v6, v7];;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[SSURLRequestProperties allowedRetryCount](self, "allowedRetryCount"), v5 == [v4 allowedRetryCount]) && (v6 = -[SSURLRequestProperties cachePolicy](self, "cachePolicy"), v6 == objc_msgSend(v4, "cachePolicy")) && (v7 = -[SSURLRequestProperties networkServiceType](self, "networkServiceType"), v7 == objc_msgSend(v4, "networkServiceType")) && (-[SSURLRequestProperties timeoutInterval](self, "timeoutInterval"), v9 = v8, objc_msgSend(v4, "timeoutInterval"), v9 == v10))
  {
    v11 = [(SSURLRequestProperties *)self URLBagType];
    v12 = v11 == [v4 URLBagType];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(SSURLRequestProperties *)self HTTPMethod];
  v14 = [v4 HTTPMethod];
  v15 = v14;
  if (v12)
  {
    if (v13 == v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = [v13 isEqualToString:v14];
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [(SSURLRequestProperties *)self URLs];

  v18 = [v4 URLs];

  v19 = [v17 count];
  if (v16)
  {
    v20 = v19;
    v21 = [v18 count];
    v22 = [v17 count];
    v23 = v20 == v21;
    v24 = v20 == v21;
    if (v23)
    {
      v25 = v22;
      if (v22 >= 1)
      {
        v26 = 1;
        do
        {
          v27 = [v17 objectAtIndex:v26 - 1];
          v28 = [v18 objectAtIndex:v26 - 1];
          v24 = [v27 isEqual:v28];

          if (!v24)
          {
            break;
          }
        }

        while (v26++ < v25);
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v30 = [(SSURLRequestProperties *)self userAgentComponents];

  v31 = [v4 userAgentComponents];

  if (v24)
  {
    if (v30 == v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = [v30 isEqualToArray:v31];
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)allowsBootstrapCellularData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SSURLRequestProperties_allowsBootstrapCellularData__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canBeResolved
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SSURLRequestProperties_canBeResolved__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __39__SSURLRequestProperties_canBeResolved__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 184) || *(v2 + 200))
  {
    v3 = 1;
  }

  else
  {
    result = [*(v2 + 208) count];
    v3 = result != 0;
  }

  *(*(*(v1 + 40) + 8) + 24) = v3;
  return result;
}

- (NSInputStream)HTTPBodyStream
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SSURLRequestProperties_HTTPBodyStream__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isLargeDownload
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SSURLRequestProperties_isLargeDownload__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)KBSyncType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SSURLRequestProperties_KBSyncType__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)requiresCellularDataNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SSURLRequestProperties_requiresCellularDataNetwork__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)requiresExtendedValidationCertificates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__SSURLRequestProperties_requiresExtendedValidationCertificates__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __64__SSURLRequestProperties_requiresExtendedValidationCertificates__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 161);
  if (v2 == 255)
  {
    v3 = *(v1 + 112);
  }

  else
  {
    v3 = v2 != 0;
  }

  *(*(*(result + 40) + 8) + 24) = v3;
  return result;
}

- (BOOL)requiresExternal
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SSURLRequestProperties_requiresExternal__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)requiresHTTPS
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SSURLRequestProperties_requiresHTTPS__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldAddKBSyncData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__SSURLRequestProperties_shouldAddKBSyncData__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldDecodeResponse
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SSURLRequestProperties_shouldDecodeResponse__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldDisableCellular
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SSURLRequestProperties_shouldDisableCellular__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldDisableCellularFallback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SSURLRequestProperties_shouldDisableCellularFallback__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldDisableReversePush
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SSURLRequestProperties_shouldDisableReversePush__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldDisableReversePushSampling
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SSURLRequestProperties_shouldDisableReversePushSampling__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)URLBagType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SSURLRequestProperties_URLBagType__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)URLBagURLBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__323;
  v10 = __Block_byref_object_dispose__324;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SSURLRequestProperties_URLBagURLBlock__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = MEMORY[0x1DA6DFBB0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__SSURLRequestProperties_URLBagURLBlock__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1DA6DFBB0](*(*(a1 + 32) + 200));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)URLs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__SSURLRequestProperties_URLs__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__SSURLRequestProperties_URLs__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSURLRequestProperties.m" lineNumber:222 description:@"Only keyed coding is supported"];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSURLRequestProperties.m" lineNumber:262 description:@"Only keyed coding is supported"];
}

@end