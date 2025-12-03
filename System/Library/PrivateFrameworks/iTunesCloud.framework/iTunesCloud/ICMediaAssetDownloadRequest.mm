@interface ICMediaAssetDownloadRequest
- (ICMediaAssetDownloadRequest)initWithRequestContext:(id)context storeMediaResponseItem:(id)item resumeData:(id)data;
- (id)_createAVAssetDownloadOptionsDictionary;
- (id)_mediaKindFromResponseItemMetadata:(id)metadata;
- (id)_sessionIdentifier;
- (void)cancel;
- (void)contentKeySession:(id)session didFinishProcessingKey:(id)key withResponse:(id)response error:(id)error;
- (void)execute;
- (void)finishWithError:(id)error;
- (void)performRequestWithResponseHandler:(id)handler;
- (void)setValue:(id)value forHTTPHeaderField:(id)field;
@end

@implementation ICMediaAssetDownloadRequest

- (id)_mediaKindFromResponseItemMetadata:(id)metadata
{
  v3 = _mediaKindFromResponseItemMetadata__sOnceToken;
  metadataCopy = metadata;
  if (v3 != -1)
  {
    dispatch_once(&_mediaKindFromResponseItemMetadata__sOnceToken, &__block_literal_global_3737);
  }

  v5 = _mediaKindFromResponseItemMetadata__sDownloadMediaTypeToAVMediaKind;
  kind = [metadataCopy kind];

  v7 = [v5 objectForKey:kind];

  return v7;
}

void __66__ICMediaAssetDownloadRequest__mediaKindFromResponseItemMetadata___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"song";
  v2[1] = @"feature-movie";
  v3[0] = @"music";
  v3[1] = @"movie";
  v2[2] = @"music-video";
  v2[3] = @"tv-episode";
  v3[2] = @"musicvideo";
  v3[3] = @"tvshow";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = _mediaKindFromResponseItemMetadata__sDownloadMediaTypeToAVMediaKind;
  _mediaKindFromResponseItemMetadata__sDownloadMediaTypeToAVMediaKind = v0;
}

- (id)_createAVAssetDownloadOptionsDictionary
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  clientInfo = [(ICRequestContext *)self->_requestContext clientInfo];
  clientIdentifier = [clientInfo clientIdentifier];
  [v3 setObject:clientIdentifier forKeyedSubscript:*MEMORY[0x1E6987240]];

  v6 = [(NSMutableDictionary *)self->_additionalHTTPHeaderFields mutableCopy];
  downloadableAsset = [(ICStoreMediaResponseItem *)self->_storeMediaResponseItem downloadableAsset];
  v8 = downloadableAsset;
  if (downloadableAsset)
  {
    downloadKey = [downloadableAsset downloadKey];

    if (downloadKey)
    {
      v10 = MEMORY[0x1E696AEC0];
      downloadKey2 = [v8 downloadKey];
      v12 = [v10 stringWithFormat:@"downloadKey=%@", downloadKey2];
      [v6 setObject:v12 forKey:@"Cookie"];
    }
  }

  if ([v6 count])
  {
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6987248]];
  }

  if ((([(ICMediaAssetDownloadRequest *)self qualityOfService]- 25) & 0xFFFFFFFFFFFFFFF7) != 0)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6987258]];

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [v8 md5];
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6993BA8]];

  fairPlayInfoList = [v8 fairPlayInfoList];
  v18 = [fairPlayInfoList count];

  if (v18)
  {
    v48 = v6;
    v19 = v15;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    fairPlayInfoList2 = [v8 fairPlayInfoList];
    v22 = [fairPlayInfoList2 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(fairPlayInfoList2);
          }

          responseSinfDictionary = [*(*(&v51 + 1) + 8 * i) responseSinfDictionary];
          [v20 addObject:responseSinfDictionary];
        }

        v23 = [fairPlayInfoList2 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v23);
    }

    v15 = v19;
    if ([v20 count])
    {
      [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x1E6993BC0]];
    }

    v6 = v48;
  }

  v49 = v15;
  [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6987260]];
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  identity = [(ICStoreRequestContext *)self->_requestContext identity];
  identityStore = [(ICStoreRequestContext *)self->_requestContext identityStore];
  v30 = 0;
  v47 = identityStore;
  if (identity && identityStore && (v50 = 0, [identityStore getPropertiesForUserIdentity:identity error:&v50], v30 = objc_claimAutoreleasedReturnValue(), (v31 = v50) != 0))
  {
    v32 = v31;
    dSID = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v46 = v30;
    if (os_log_type_enabled(dSID, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v57 = 2114;
      v58 = v32;
      _os_log_impl(&dword_1B4491000, dSID, OS_LOG_TYPE_ERROR, "%{public}@ failed to load identity properties. err=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v46 = v30;
    dSID = [v30 DSID];
    [v27 setObject:dSID forKeyedSubscript:*MEMORY[0x1E6987268]];
    v32 = 0;
  }

  v34 = v32;

  redownloadParameters = [(ICStoreMediaResponseItem *)self->_storeMediaResponseItem redownloadParameters];
  [v27 setObject:redownloadParameters forKeyedSubscript:*MEMORY[0x1E6987270]];

  metadata = [(ICStoreMediaResponseItem *)self->_storeMediaResponseItem metadata];
  if (!metadata)
  {
    metadata = [v8 metadata];
  }

  itemCloudID = [metadata itemCloudID];

  if (itemCloudID)
  {
    itemCloudID2 = [metadata itemCloudID];
    v39 = @"match";
  }

  else
  {
    itemCloudID2 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[ICStoreMediaResponseItem storeAdamID](self->_storeMediaResponseItem, "storeAdamID")}];
    v39 = @"purchaseHistory";
  }

  [v27 setObject:itemCloudID2 forKeyedSubscript:*MEMORY[0x1E6987278]];

  [v27 setObject:v39 forKeyedSubscript:*MEMORY[0x1E6987290]];
  if (metadata)
  {
    v40 = [(ICMediaAssetDownloadRequest *)self _mediaKindFromResponseItemMetadata:metadata];
    [v27 setObject:v40 forKeyedSubscript:*MEMORY[0x1E6987288]];
  }

  userAgent = [(ICStoreRequestContext *)self->_requestContext userAgent];
  [v27 setObject:userAgent forKeyedSubscript:*MEMORY[0x1E6987298]];

  [v3 setObject:v27 forKeyedSubscript:*MEMORY[0x1E6987280]];
  if (!self->_allowsCellularData)
  {
    [v3 setObject:&unk_1F2C92038 forKeyedSubscript:*MEMORY[0x1E6987250]];
    [v3 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6987238]];
  }

  minimumBitrate = self->_minimumBitrate;
  if (minimumBitrate)
  {
    [v3 setObject:minimumBitrate forKeyedSubscript:*MEMORY[0x1E69872B8]];
  }

  maximumSampleRate = self->_maximumSampleRate;
  if (maximumSampleRate)
  {
    [v3 setObject:maximumSampleRate forKeyedSubscript:*MEMORY[0x1E69872A8]];
  }

  if (self->_prefersLossless)
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69872C8]];
  }

  v44 = [MEMORY[0x1E696AD98] numberWithBool:self->_prefersMultichannel];
  [v3 setObject:v44 forKeyedSubscript:*MEMORY[0x1E69872B0]];

  return v3;
}

- (id)_sessionIdentifier
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"com.apple.iTunesCloud.ICMediaAssetDownloadRequest."];
  clientInfo = [(ICRequestContext *)self->_requestContext clientInfo];
  clientIdentifier = [clientInfo clientIdentifier];

  if (clientIdentifier)
  {
    [v3 appendString:clientIdentifier];
    [v3 appendString:@"."];
  }

  clientInfo2 = [(ICRequestContext *)self->_requestContext clientInfo];
  requestingBundleIdentifier = [clientInfo2 requestingBundleIdentifier];

  if (requestingBundleIdentifier)
  {
    [v3 appendString:requestingBundleIdentifier];
    [v3 appendString:@"."];
  }

  if (self->_discretionary)
  {
    [v3 appendString:@"discretionary."];
  }

  if (self->_requiresPower)
  {
    [v3 appendString:@"power."];
  }

  if (!self->_allowsCellularData)
  {
    [v3 appendString:@"wifi."];
  }

  if (!self->_allowDownloadOnConstrainedNetworks)
  {
    [v3 appendString:@"failDownloadOnConstrainedNetworks."];
  }

  [v3 appendString:@"av"];

  return v3;
}

- (void)contentKeySession:(id)session didFinishProcessingKey:(id)key withResponse:(id)response error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543874;
      selfCopy = self;
      v13 = 2114;
      v14 = keyCopy;
      v15 = 2114;
      v16 = errorCopy;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch key with identifier '%{public}@'. err=%{public}@", &v11, 0x20u);
    }

    objc_storeStrong(&self->_keyDeliveryError, error);
  }
}

- (void)finishWithError:(id)error
{
  v6.receiver = self;
  v6.super_class = ICMediaAssetDownloadRequest;
  [(ICRequestOperation *)&v6 finishWithError:error];
  request = self->_request;
  self->_request = 0;

  downloadSession = self->_downloadSession;
  self->_downloadSession = 0;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = ICMediaAssetDownloadRequest;
  [(ICMediaAssetDownloadRequest *)&v3 cancel];
  if (self->_request)
  {
    [(ICURLSession *)self->_downloadSession cancelRequest:?];
  }
}

- (void)setValue:(id)value forHTTPHeaderField:(id)field
{
  additionalHTTPHeaderFields = self->_additionalHTTPHeaderFields;
  if (value)
  {
    [(NSMutableDictionary *)additionalHTTPHeaderFields setObject:value forKey:field];
  }

  else
  {
    [(NSMutableDictionary *)additionalHTTPHeaderFields removeObjectForKey:field];
  }
}

- (void)execute
{
  v103 = *MEMORY[0x1E69E9840];
  v3 = +[ICDeviceInfo currentDeviceInfo];
  isWatch = [v3 isWatch];

  _sessionIdentifier = [(ICMediaAssetDownloadRequest *)self _sessionIdentifier];
  v6 = +[ICURLSessionManager sharedSessionManager];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __38__ICMediaAssetDownloadRequest_execute__block_invoke;
  v93[3] = &unk_1E7BF3F10;
  v96 = isWatch ^ 1;
  v7 = _sessionIdentifier;
  v94 = v7;
  selfCopy = self;
  v8 = [v6 sessionWithIdentifier:v7 creationBlock:v93];
  downloadSession = self->_downloadSession;
  self->_downloadSession = v8;

  if (self->_downloadSession)
  {
    hlsAsset = [(ICStoreMediaResponseItem *)self->_storeMediaResponseItem hlsAsset];
    playlistURL = [hlsAsset playlistURL];
    if (playlistURL && self->_prefersHLSAsset)
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy8 = self;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ An HLS asset is available and is preferred, so we will use it", buf, 0xCu);
      }

      assetURL = playlistURL;
    }

    else
    {
      downloadableAsset = [(ICStoreMediaResponseItem *)self->_storeMediaResponseItem downloadableAsset];
      assetURL = [downloadableAsset assetURL];

      if (!assetURL)
      {
        v51 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          storeMediaResponseItem = self->_storeMediaResponseItem;
          *buf = 138543618;
          selfCopy8 = self;
          v101 = 2114;
          v102 = storeMediaResponseItem;
          _os_log_impl(&dword_1B4491000, v51, OS_LOG_TYPE_ERROR, "%{public}@ Failed to download because the item is invalid (assetURL=nil) %{public}@", buf, 0x16u);
        }

        v53 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8301 debugDescription:@"Invalid ICStoreMediaResponseItem object (assetURL=nil)"];
        [(ICMediaAssetDownloadRequest *)self finishWithError:v53];

        assetURL = 0;
        goto LABEL_38;
      }
    }

    v15 = [[ICURLRequest alloc] initWithURL:assetURL requestContext:self->_requestContext resumeData:self->_resumeData];
    request = self->_request;
    self->_request = v15;

    progress = [(ICRequestOperation *)self progress];
    progress2 = [(ICURLRequest *)self->_request progress];
    [progress addChild:progress2 withPendingUnitCount:100];

    if (self->_destinationURL)
    {
      if (isWatch)
      {
LABEL_10:
        v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy8 = self;
          _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueueing standard file asset download", buf, 0xCu);
        }

        v20 = self->_downloadSession;
        v21 = self->_request;
        destinationURL = self->_destinationURL;
        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 3221225472;
        v87[2] = __38__ICMediaAssetDownloadRequest_execute__block_invoke_45;
        v87[3] = &unk_1E7BFA4D8;
        v87[4] = self;
        [(ICURLSession *)v20 enqueueDownloadRequest:v21 toDestination:destinationURL withCompletionHandler:v87];
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      v24 = MEMORY[0x1E695DFF8];
      v25 = NSTemporaryDirectory();
      [MEMORY[0x1E696AFB0] UUID];
      v26 = v85 = v7;
      [v26 UUIDString];
      v83 = assetURL;
      v28 = v27 = playlistURL;
      v29 = [v25 stringByAppendingPathComponent:v28];
      v30 = [v24 fileURLWithPath:v29];
      v31 = self->_destinationURL;
      self->_destinationURL = v30;

      playlistURL = v27;
      assetURL = v83;

      v7 = v85;
      if (isWatch)
      {
        goto LABEL_10;
      }
    }

    prefersHLSAsset = self->_prefersHLSAsset;
    v33 = self->_downloadSession;
    v34 = v33;
    if (prefersHLSAsset)
    {
      v79 = playlistURL;
      v80 = v33;
      v86 = v7;
      v35 = MEMORY[0x1E6988168];
      v97 = *MEMORY[0x1E6987BF0];
      v98 = &unk_1F2C92020;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v84 = assetURL;
      v37 = [v35 URLAssetWithURL:assetURL options:v36];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v39 = MEMORY[0x1E695DFF8];
      v40 = NSTemporaryDirectory();
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v43 = [v40 stringByAppendingPathComponent:uUIDString];
      v44 = [v39 fileURLWithPath:v43];

      v92 = 0;
      v78 = defaultManager;
      LOBYTE(v39) = [defaultManager createDirectoryAtURL:v44 withIntermediateDirectories:1 attributes:0 error:&v92];
      v45 = v92;
      if ((v39 & 1) == 0)
      {
        v46 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy8 = self;
          v101 = 2114;
          v102 = v45;
          _os_log_impl(&dword_1B4491000, v46, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create download destination directory. This isn't fatal but may result in failure to save the playback keys. err=%{public}@", buf, 0x16u);
        }

        v47 = self->_destinationURL;
        v44 = v47;
      }

      keyServerURL = [hlsAsset keyServerURL];
      keyCertificateURL = [hlsAsset keyCertificateURL];
      keyServerProtocolType = [hlsAsset keyServerProtocolType];
      v49 = keyServerProtocolType;
      v77 = v45;
      if (keyServerProtocolType == @"simplified")
      {
        v50 = 1;
      }

      else
      {
        v50 = [(__CFString *)keyServerProtocolType isEqual:@"simplified"];
      }

      v58 = [ICContentKeySession alloc];
      requestContext = self->_requestContext;
      v60 = [ICFileContentKeyStore alloc];
      path = [v44 path];
      v62 = [(ICFileContentKeyStore *)v60 initWithPath:path];
      v63 = [(ICContentKeySession *)v58 initWithRequestContext:requestContext keyStore:v62 delegate:self];
      contentKeySession = self->_contentKeySession;
      self->_contentKeySession = v63;

      [(ICContentKeySession *)self->_contentKeySession setRequestOfflineKeys:1];
      v65 = keyServerURL;
      [(ICContentKeySession *)self->_contentKeySession setKeyServerURL:keyServerURL];
      [(ICContentKeySession *)self->_contentKeySession setKeyServerProtocolType:v50];
      v66 = keyCertificateURL;
      [(ICContentKeySession *)self->_contentKeySession setKeyCertificateURL:keyCertificateURL];
      v67 = self->_contentKeySession;
      v68 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[ICStoreMediaResponseItem storeAdamID](self->_storeMediaResponseItem, "storeAdamID")}];
      [(ICContentKeySession *)v67 setAdamID:v68];

      v69 = v37;
      [(ICContentKeySession *)self->_contentKeySession addAsset:v37 shouldPreloadKeys:1 waitForKeyIdentifiers:1];
      [(ICContentKeySession *)self->_contentKeySession waitForAllKeysToProcess];
      if (self->_keyDeliveryError)
      {
        [(ICMediaAssetDownloadRequest *)self finishWithError:?];
        playlistURL = v79;
        v34 = v80;
        assetURL = v84;
        v70 = v78;
      }

      else
      {
        v71 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        playlistURL = v79;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = self->_contentKeySession;
          *buf = 138543618;
          selfCopy8 = self;
          v101 = 2114;
          v102 = v72;
          _os_log_impl(&dword_1B4491000, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueueing aggregate asset download using key session %{public}@", buf, 0x16u);
        }

        v73 = self->_request;
        v74 = self->_destinationURL;
        _createAVAssetDownloadOptionsDictionary = [(ICMediaAssetDownloadRequest *)self _createAVAssetDownloadOptionsDictionary];
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __38__ICMediaAssetDownloadRequest_execute__block_invoke_41;
        v89[3] = &unk_1E7BF56C8;
        v89[4] = self;
        v90 = v44;
        v70 = v78;
        v91 = v78;
        v34 = v80;
        v76 = v73;
        v69 = v37;
        [(ICURLSession *)v80 enqueueAggregateAssetDownloadRequest:v76 toDestination:v74 withAVURLAsset:v37 options:_createAVAssetDownloadOptionsDictionary completionHandler:v89];

        assetURL = v84;
        v66 = keyCertificateURL;
        v65 = keyServerURL;
      }

      v7 = v86;
    }

    else
    {
      v54 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy8 = self;
        _os_log_impl(&dword_1B4491000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueueing AV asset download", buf, 0xCu);
      }

      v55 = self->_request;
      v56 = self->_destinationURL;
      _createAVAssetDownloadOptionsDictionary2 = [(ICMediaAssetDownloadRequest *)self _createAVAssetDownloadOptionsDictionary];
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __38__ICMediaAssetDownloadRequest_execute__block_invoke_44;
      v88[3] = &unk_1E7BFA4D8;
      v88[4] = self;
      [(ICURLSession *)v34 enqueueAVDownloadRequest:v55 toDestination:v56 withOptions:_createAVAssetDownloadOptionsDictionary2 completionHandler:v88];
    }

    goto LABEL_38;
  }

  v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy8 = self;
    _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create an ICURLSession instance", buf, 0xCu);
  }

  assetURL = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8300 debugDescription:@"Failed to create an ICURLSession instance"];
  [(ICMediaAssetDownloadRequest *)self finishWithError:assetURL];
LABEL_39:
}

id __38__ICMediaAssetDownloadRequest_execute__block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    [MEMORY[0x1E695AC80] backgroundSessionConfigurationWithIdentifier:*(a1 + 32)];
  }

  else
  {
    [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  }
  v2 = ;
  [v2 setDiscretionary:*(*(a1 + 40) + 372)];
  [v2 setHTTPCookieAcceptPolicy:1];
  [v2 setHTTPShouldSetCookies:0];
  [v2 setHTTPShouldUsePipelining:1];
  [v2 setRequestCachePolicy:1];
  [v2 setSessionSendsLaunchEvents:1];
  [v2 set_requiresPowerPluggedIn:*(*(a1 + 40) + 373)];
  v3 = [*(*(a1 + 40) + 304) clientInfo];
  v4 = [v3 requestingBundleIdentifier];

  if (v4)
  {
    v5 = v4;
LABEL_7:
    [v2 set_sourceApplicationBundleIdentifier:v5];

    goto LABEL_8;
  }

  v6 = [*(*(a1 + 40) + 304) clientInfo];
  v5 = [v6 clientIdentifier];

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = v7;
  v9 = *(a1 + 40);
  v10 = MEMORY[0x1E695E110];
  if (*(v9 + 370) == 1 && *(v9 + 368))
  {
    v10 = MEMORY[0x1E695E118];
  }

  [v7 setObject:v10 forKey:*MEMORY[0x1E695AE40]];
  if ((*(*(a1 + 40) + 371) & 1) == 0)
  {
    [v8 setObject:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E695AD30]];
  }

  [v2 set_socketStreamProperties:v8];
  v11 = +[ICDeviceInfo currentDeviceInfo];
  v12 = [v11 isWatch];

  if (v12)
  {
    [v2 set_prefersInfraWiFi:1];
    [v2 set_companionProxyPreference:2];
    v13 = *(a1 + 40);
    v14 = *(v13 + 368);
    if ((v14 & 1) == 0 && *(v13 + 369) == 1)
    {
      [v2 set_allowsWCA:0];
      goto LABEL_19;
    }
  }

  else
  {
    v14 = *(*(a1 + 40) + 368);
  }

  [v2 setAllowsCellularAccess:v14];
LABEL_19:
  v15 = off_1E7BF2350;
  if (!*(a1 + 48))
  {
    v15 = off_1E7BF2A20;
  }

  v16 = [objc_alloc(*v15) initWithConfiguration:v2];

  return v16;
}

void __38__ICMediaAssetDownloadRequest_execute__block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v5 bodyDataURL];
    *buf = 138543874;
    v45 = v8;
    v46 = 2114;
    v47 = v6;
    v48 = 2114;
    v49 = v9;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Aggregate asset download complete. err=%{public}@, destinationPath=%{public}@", buf, 0x20u);
  }

  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 384);
  v12 = v11;
  if (v11 == v10)
  {
  }

  else
  {
    v13 = [v11 isEqual:v10];

    if ((v13 & 1) == 0)
    {
      if (!v6)
      {
        v35 = v5;
        v15 = *(a1 + 40);
        v14 = *(a1 + 48);
        v16 = [MEMORY[0x1E695DEC8] array];
        v42 = 0;
        v17 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:v16 options:0 error:&v42];
        v18 = v42;

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        obj = v17;
        v19 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v39;
          do
          {
            v22 = 0;
            v23 = v18;
            do
            {
              if (*v39 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v38 + 1) + 8 * v22);
              v25 = [v24 lastPathComponent];
              v26 = [*(*(a1 + 32) + 384) path];
              v27 = [v26 stringByAppendingPathComponent:v25];

              v28 = [MEMORY[0x1E695DFF8] fileURLWithPath:v27];
              v29 = *(a1 + 48);
              v37 = v23;
              LOBYTE(v24) = [v29 moveItemAtURL:v24 toURL:v28 error:&v37];
              v18 = v37;

              if ((v24 & 1) == 0)
              {
                v30 = os_log_create("com.apple.amp.iTunesCloud", "Default");
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v31 = *(a1 + 32);
                  *buf = 138543874;
                  v45 = v31;
                  v46 = 2114;
                  v47 = v25;
                  v48 = 2114;
                  v49 = v18;
                  _os_log_impl(&dword_1B4491000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Failed to copy key file '%{public}@'. err=%{public}@", buf, 0x20u);
                }
              }

              ++v22;
              v23 = v18;
            }

            while (v20 != v22);
            v20 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
          }

          while (v20);
        }

        v5 = v35;
        v6 = 0;
      }

      [*(a1 + 48) removeItemAtURL:*(a1 + 40) error:0];
    }
  }

  v32 = *(a1 + 32);
  v33 = *(v32 + 344);
  *(v32 + 344) = v5;
  v34 = v5;

  [*(a1 + 32) finishWithError:v6];
}

void __38__ICMediaAssetDownloadRequest_execute__block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v5 bodyDataURL];
    v13 = 138543874;
    v14 = v8;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ AV asset download complete. err=%{public}@, destinationPath=%{public}@", &v13, 0x20u);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 344);
  *(v10 + 344) = v5;
  v12 = v5;

  [*(a1 + 32) finishWithError:v6];
}

void __38__ICMediaAssetDownloadRequest_execute__block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v5 bodyDataURL];
    v13 = 138543874;
    v14 = v8;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ File asset download complete. err=%{public}@, destinationPath=%{public}@", &v13, 0x20u);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 344);
  *(v10 + 344) = v5;
  v12 = v5;

  [*(a1 + 32) finishWithError:v6];
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:{-[ICMediaAssetDownloadRequest qualityOfService](self, "qualityOfService")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__ICMediaAssetDownloadRequest_performRequestWithResponseHandler___block_invoke;
  v7[3] = &unk_1E7BFA490;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ICRequestOperation *)self performRequestOnOperationQueue:v5 withCompletionHandler:v7];
}

void __65__ICMediaAssetDownloadRequest_performRequestWithResponseHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 344);
  *(v2 + 344) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 392);
  *(v4 + 392) = 0;
}

- (ICMediaAssetDownloadRequest)initWithRequestContext:(id)context storeMediaResponseItem:(id)item resumeData:(id)data
{
  contextCopy = context;
  itemCopy = item;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = ICMediaAssetDownloadRequest;
  v12 = [(ICRequestOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestContext, context);
    v13->_allowsCellularData = 1;
    v13->_allowsProxyCellularData = 1;
    v13->_allowsCellularFallback = 1;
    v13->_allowDownloadOnConstrainedNetworks = 1;
    objc_storeStrong(&v13->_storeMediaResponseItem, item);
    v13->_discretionary = 0;
    v13->_prefersHLSAsset = 0;
    objc_storeStrong(&v13->_resumeData, data);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    additionalHTTPHeaderFields = v13->_additionalHTTPHeaderFields;
    v13->_additionalHTTPHeaderFields = dictionary;
  }

  return v13;
}

@end