@interface VUIJSNetworkInterface
- (VUIJSNetworkInterface)initWithAppContext:(id)a3;
- (id)_createURLRequestFromJSOptionsDictionary:(id)a3;
- (id)_createURLRequestFromRequestProperties:(id)a3 request:(id)a4;
- (id)makeMediaApiRequest:(id)a3 :(id)a4;
- (id)makeRequest:(id)a3 :(id)a4;
- (id)makeStoreRequest:(id)a3 :(id)a4;
- (int64_t)_requestOptionsFromJSOptions:(id)a3;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)_completeRequestResponse:(unint64_t)a3 activity:(id)a4 networkOperation:(id)a5 networkResponse:(id)a6 jsCallbackUUID:(id)a7 networkError:(id)a8;
- (void)_enqueueNetworkOp:(id)a3 withJSCallbackUUID:(id)a4;
- (void)_handleConfigurationResponse:(id)a3 responseDictionary:(id)a4 error:(id)a5;
- (void)_handleNetworkMetricsActivity:(id)a3 error:(id)a4;
- (void)_handleServerConfigChange:(id)a3;
- (void)cancelRequest:(id)a3;
- (void)dealloc;
- (void)fetchConfiguration:(BOOL)a3 :(id)a4;
- (void)upNextItemsReceived:(id)a3 :(id)a4;
@end

@implementation VUIJSNetworkInterface

- (VUIJSNetworkInterface)initWithAppContext:(id)a3
{
  v9.receiver = self;
  v9.super_class = VUIJSNetworkInterface;
  v3 = [(VUIJSObject *)&v9 initWithAppContext:a3];
  if (v3)
  {
    v4 = _os_feature_enabled_impl();
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = v5;
    if (v4)
    {
      v7 = +[_TtC8VideosUI40VUIUTSConfigurationProxyNotificationName configurationDidChange];
      [v6 addObserver:v3 selector:sel__handleServerConfigChange_ name:v7 object:0];
    }

    else
    {
      [v5 addObserver:v3 selector:sel__handleServerConfigChange_ name:*MEMORY[0x1E69E1690] object:0];
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIJSNetworkInterface;
  [(VUIJSNetworkInterface *)&v4 dealloc];
}

- (id)makeRequest:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[VUIJSThreadUtils isVideosUICoreJSThread])
  {
    v8 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - makeRequest must be on JS Thread", buf, 2u);
    }
  }

  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];

  v43 = v10;
  v44 = v7;
  [(VUIJSObject *)self setJSValue:v7 forProperty:v10];
  v11 = [v6 wlk_stringForKey:@"endpoint"];
  v12 = [v6 wlk_stringForKey:@"serverRoute"];
  v49 = [v6 wlk_dictionaryForKey:@"headers"];
  v13 = [v6 wlk_dictionaryForKey:@"queryParameters"];
  v14 = [v6 wlk_stringForKey:@"httpMethod"];
  v41 = [v6 wlk_stringForKey:@"postBody"];
  v15 = [v41 dataUsingEncoding:4];
  v16 = [v6 wlk_numberForKey:@"timeout"];
  v17 = [v6 wlk_stringForKey:@"caller"];
  v48 = [v6 wlk_numberForKey:@"networkActivity"];
  v18 = [(VUIJSNetworkInterface *)self _requestOptionsFromJSOptions:v6];
  v42 = v13;
  v46 = v14;
  v47 = v6;
  v40 = v16;
  v45 = v15;
  if (v11)
  {
    v19 = [v6 wlk_numberForKey:@"apiVersion"];
    v20 = v15;
    v21 = v19;
    v39 = v18;
    v22 = v6;
    v23 = v17;
    v24 = [MEMORY[0x1E69E1600] requestPropertiesWithEndpoint:v11 queryParameters:v13 httpMethod:v14 httpBody:v20 headers:v49 caller:v17 timeout:v16 apiVersion:v19 options:{v39, v16}];

    v25 = v43;
  }

  else
  {
    v23 = v17;
    if (v12)
    {
      v24 = [MEMORY[0x1E69E1600] requestPropertiesWithServerRoute:v12 queryParameters:v13 httpMethod:v14 httpBody:v15 headers:v49 caller:v17 timeout:v16 options:v18];
    }

    else
    {
      v24 = 0;
    }

    v25 = v43;
    v22 = v47;
  }

  [v24 setIgnoreUserLocation:{objc_msgSend(v22, "wlk_BOOLForKey:defaultValue:", @"ignoreUserLocation", 0)}];
  objc_initWeak(location, self);
  if (_os_feature_enabled_impl())
  {
    v26 = [v24 endpoint];
    if (v26)
    {
      [v24 endpoint];
    }

    else
    {
      [v24 routeName];
    }
    v27 = ;

    *buf = 0;
    v62 = buf;
    v63 = 0x2020000000;
    v28 = WLKNetworkSignpostLogObject();
    v29 = os_signpost_id_make_with_pointer(v28, v25);

    v64 = v29;
    v30 = WLKNetworkSignpostLogObject();
    v31 = v30;
    v32 = *(v62 + 3);
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *v60 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v32, "WLKUIRequest.total", "", v60, 2u);
    }

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __38__VUIJSNetworkInterface_makeRequest::__block_invoke;
    v54[3] = &unk_1E8731D90;
    v55 = v24;
    objc_copyWeak(&v59, location);
    v58 = buf;
    v56 = v25;
    v33 = v27;
    v57 = v33;
    [_TtC8VideosUI28VUIUTSURLRequestFactoryProxy createRoute:v33 completion:v54];

    objc_destroyWeak(&v59);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __38__VUIJSNetworkInterface_makeRequest::__block_invoke_94;
    v50[3] = &unk_1E8731DB8;
    objc_copyWeak(&v53, location);
    v51 = v48;
    v52 = v25;
    [_TtC8VideosUI17VUIJSNetworkProxy makeNetworkRequestOperation:v24 completionHandler:v50];

    objc_destroyWeak(&v53);
  }

  v34 = MEMORY[0x1E696EB58];
  v35 = [(VUIJSObject *)self appContext];
  v36 = [v35 jsContext];
  v37 = [v34 valueWithObject:&stru_1F5DB25C0 inContext:v36];

  objc_destroyWeak(location);

  return v37;
}

void __38__VUIJSNetworkInterface_makeRequest::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - makeRequest unable to create url for route %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v18 = 0;
    v8 = [_TtC8VideosUI25VUIUTSNetworkManagerProxy createURLRequestFromRequestProperties:v10 urlRequest:v5 completion:&v18];
    v7 = v18;
    if (v7)
    {
      v11 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        *buf = 138412290;
        v20 = v12;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - makeRequest failed to create request from request properties route %@", buf, 0xCu);
      }
    }

    else
    {
      v13 = *(a1 + 32);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __38__VUIJSNetworkInterface_makeRequest::__block_invoke_2;
      v14[3] = &unk_1E8731D68;
      objc_copyWeak(&v17, (a1 + 64));
      v16 = *(a1 + 56);
      v15 = *(a1 + 40);
      [_TtC8VideosUI17VUIJSNetworkProxy makeNetworkRequest:v8 requestProperties:v13 completionHandler:v14];

      objc_destroyWeak(&v17);
    }
  }
}

void __38__VUIJSNetworkInterface_makeRequest::__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _completeRequestResponse:*(*(*(a1 + 40) + 8) + 24) activity:0 networkOperation:0 networkResponse:v6 jsCallbackUUID:*(a1 + 32) networkError:v5];
}

void __38__VUIJSNetworkInterface_makeRequest::__block_invoke_94(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [v4 setAuthenticationDelegate:WeakRetained];
    if (*(a1 + 32))
    {
      [v4 setNetworkLabel:?];
    }

    [WeakRetained _enqueueNetworkOp:v4 withJSCallbackUUID:*(a1 + 40)];
  }
}

- (id)makeStoreRequest:(id)a3 :(id)a4
{
  v6 = a4;
  v7 = a3;
  if (!+[VUIJSThreadUtils isVideosUICoreJSThread])
  {
    v8 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - makeStoreRequest must be on JS Thread", v20, 2u);
    }
  }

  v9 = [(VUIJSNetworkInterface *)self _createURLRequestFromJSOptionsDictionary:v7];
  v10 = [(VUIJSNetworkInterface *)self _requestOptionsFromJSOptions:v7];

  v11 = [objc_alloc(MEMORY[0x1E69E1550]) initWithURLRequest:v9 options:v10];
  [v11 setAuthenticationDelegate:self];
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];

  [(VUIJSObject *)self setJSValue:v6 forProperty:v13];
  [(VUIJSNetworkInterface *)self _enqueueNetworkOp:v11 withJSCallbackUUID:v13];
  v14 = MEMORY[0x1E696EB58];
  v15 = [v11 identifier];
  v16 = [(VUIJSObject *)self appContext];
  v17 = [v16 jsContext];
  v18 = [v14 valueWithObject:v15 inContext:v17];

  return v18;
}

- (id)makeMediaApiRequest:(id)a3 :(id)a4
{
  v6 = a4;
  v7 = [(VUIJSNetworkInterface *)self _createURLRequestFromJSOptionsDictionary:a3];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];

  v10 = [(VUIJSObject *)self appContext];
  if (v7)
  {
    +[VUIMediaAPIClient initializeWithAppleTVClientIdentifier];
    v11 = +[VUIMediaAPIClient sharedInstance];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __46__VUIJSNetworkInterface_makeMediaApiRequest::__block_invoke;
    v19 = &unk_1E8731E08;
    v20 = v10;
    v21 = v6;
    [v11 fetchContentForUrl:v7 completion:&v16];
  }

  [(VUIJSObject *)self setJSValue:v6 forProperty:v9, v16, v17, v18, v19];
  v12 = MEMORY[0x1E696EB58];
  v13 = [v10 jsContext];
  v14 = [v12 valueWithObject:v9 inContext:v13];

  return v14;
}

void __46__VUIJSNetworkInterface_makeMediaApiRequest::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__VUIJSNetworkInterface_makeMediaApiRequest::__block_invoke_2;
  v10[3] = &unk_1E8731DE0;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  [v7 evaluate:v10];
}

void __46__VUIJSNetworkInterface_makeMediaApiRequest::__block_invoke_2(id *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = [[v3 alloc] initWithCapacity:3];
  v6 = [a1[4] response];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 statusCode];
  }

  else
  {
    v8 = 0;
  }

  v9 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = v8;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - VUIJSNetworkInterface::Media API response returned with statusCode %ld", buf, 0xCu);
  }

  if (a1[5])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1[5], "code")}];
    [v10 setObject:v11 forKey:@"code"];

    v12 = [a1[5] domain];
    [v10 setObject:v12 forKey:@"domain"];

    v13 = [a1[5] debugDescription];
    [v10 setObject:v13 forKey:@"description"];

    [v5 setObject:v10 forKey:@"error"];
LABEL_8:

    v14 = 0;
    goto LABEL_9;
  }

  v16 = [a1[4] object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - VUIJSNetworkInterface::Parsing Media API Fetch with no object dictionary", buf, 2u);
    }

    goto LABEL_8;
  }

  v14 = [a1[4] object];
LABEL_9:
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
  [v5 setObject:v15 forKey:@"statusCode"];

  if (v14)
  {
    [v5 setObject:v14 forKey:@"response"];
  }

  else
  {
    v18 = [MEMORY[0x1E695DFB0] null];
    [v5 setObject:v18 forKey:@"response"];
  }

  v19 = [a1[6] context];
  v20 = [a1[7] isValid];

  if (v20 && v19 == v4)
  {
    v21 = a1[6];
    v24 = v5;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v23 = [v21 callWithArguments:v22];
  }
}

- (void)upNextItemsReceived:(id)a3 :(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v7 postNotificationName:*MEMORY[0x1E69E16A0] object:0];

  v8 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = [v5 count];
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - Received UpNext update: donating media items [from %@, %ld items]", buf, 0x16u);
  }

  v9 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VUIJSNetworkInterface_upNextItemsReceived::__block_invoke;
  block[3] = &unk_1E872D768;
  v12 = v5;
  v10 = v5;
  dispatch_async(v9, block);
}

void __46__VUIJSNetworkInterface_upNextItemsReceived::__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x1E69E1510]);
        v10 = [v9 initWithDictionary:v8 context:{0, v11}];
        [v2 addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [MEMORY[0x1E69E1518] donateMediaItems:v2];
}

- (void)cancelRequest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [MEMORY[0x1E696ADC8] wlkDefaultConcurrentQueue];
  v5 = [v4 operations];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 identifier];
          v12 = [v11 isEqualToString:v3];

          if (v12)
          {
            [v10 cancel];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)fetchConfiguration:(BOOL)a3 :(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - Begin initconfig", buf, 2u);
  }

  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];

  [(VUIJSObject *)self setJSValue:v6 forProperty:v9];
  if (_os_feature_enabled_impl())
  {
    objc_initWeak(buf, self);
    v10 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__VUIJSNetworkInterface_fetchConfiguration::__block_invoke;
    v20[3] = &unk_1E8731E30;
    objc_copyWeak(&v22, buf);
    v21 = v6;
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:v4 completion:v20];
    v11 = v21;
  }

  else
  {
    if (v4)
    {
      v12 = 3;
    }

    else
    {
      v13 = +[VUIFeaturesConfiguration sharedInstance];
      v14 = [v13 launchConfig];
      v15 = [v14 useConfigCacheIgnoreExpiry];

      if (v15)
      {
        v12 = 5;
      }

      else
      {
        v12 = 0;
      }
    }

    [(VUIJSNetworkInterface *)self setSuppressServerConfigNotifications:1];
    objc_initWeak(buf, self);
    v16 = [MEMORY[0x1E69E1508] sharedInstance];
    v10 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__VUIJSNetworkInterface_fetchConfiguration::__block_invoke_2;
    v17[3] = &unk_1E8731E80;
    objc_copyWeak(&v19, buf);
    v18 = v9;
    [v16 fetchConfigurationWithOptions:0 cachePolicy:v12 queryParameters:0 completion:v17];

    v11 = v18;
  }

  objc_destroyWeak(v10 + 5);
  objc_destroyWeak(buf);
}

void __45__VUIJSNetworkInterface_fetchConfiguration::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v11)
  {
    v7 = MEMORY[0x1E696ACB0];
    v8 = [v11 data];
    v9 = [v7 JSONObjectWithData:v8 options:0 error:0];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 vui_dictionaryForKey:@"data"];
  [WeakRetained _handleConfigurationResponse:*(a1 + 32) responseDictionary:v10 error:v5];
}

void __45__VUIJSNetworkInterface_fetchConfiguration::__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - initconfig: WLK returned", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained appContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__VUIJSNetworkInterface_fetchConfiguration::__block_invoke_119;
  v12[3] = &unk_1E8731E58;
  objc_copyWeak(&v16, (a1 + 40));
  v13 = *(a1 + 32);
  v10 = v5;
  v14 = v10;
  v11 = v6;
  v15 = v11;
  [v9 evaluate:v12];

  objc_destroyWeak(&v16);
}

void __45__VUIJSNetworkInterface_fetchConfiguration::__block_invoke_119(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained jsValueForProperty:*(a1 + 32)];
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v6 = [*(a1 + 40) responseDictionary];
    v7 = WLKNetworkingLogObject();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - initconfig success.", &v12, 2u);
      }

      [v5 addObject:v6];
    }

    else
    {
      if (v8)
      {
        v9 = *(a1 + 48);
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - initconfig error. %@", &v12, 0xCu);
      }
    }

    v10 = [v4 callWithArguments:v5];
    [v3 setJSValue:0 forProperty:*(a1 + 32)];
    [v3 setSuppressServerConfigNotifications:0];
    v11 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - End initconfig", &v12, 2u);
    }
  }
}

- (void)_handleConfigurationResponse:(id)a3 responseDictionary:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VUIJSObject *)self appContext];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__VUIJSNetworkInterface__handleConfigurationResponse_responseDictionary_error___block_invoke;
  v15[3] = &unk_1E8731DE0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 evaluate:v15];
}

void __79__VUIJSNetworkInterface__handleConfigurationResponse_responseDictionary_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];

  [*(a1 + 32) setJSValue:*(a1 + 40) forProperty:v3];
  v4 = [*(a1 + 32) jsValueForProperty:v3];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v6 = *(a1 + 48);
  v7 = WLKNetworkingLogObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - initconfig success.", &v12, 2u);
    }

    [v5 addObject:*(a1 + 48)];
  }

  else
  {
    if (v8)
    {
      v9 = *(a1 + 56);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - initconfig error. %@", &v12, 0xCu);
    }
  }

  v10 = [v4 callWithArguments:v5];
  [*(a1 + 32) setJSValue:0 forProperty:v3];
  [*(a1 + 32) setSuppressServerConfigNotifications:0];
  v11 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - End initconfig", &v12, 2u);
  }
}

- (void)_enqueueNetworkOp:(id)a3 withJSCallbackUUID:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - Request start: %@ %p", buf, 0x16u);
  }

  v9 = [v6 identifier];
  v10 = [v9 substringToIndex:{fmin((objc_msgSend(v9, "length") - 1), 7.0)}];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v43 = __Block_byref_object_copy__10;
  v44 = __Block_byref_object_dispose__10;
  v11 = [VUIScopedBackgroundTask alloc];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VUIJSNetOp-%@", v10];
  v45 = [(VUIScopedBackgroundTask *)v11 initWithIdentifier:v12 expirationHandler:0];

  v13 = WLKNetworkSignpostLogObject();
  v14 = os_signpost_id_make_with_pointer(v13, v9);

  v15 = WLKNetworkSignpostLogObject();
  v16 = v15;
  if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v34 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "WLKUIRequest.total", "", v34, 2u);
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  *v34 = 0;
  v35 = v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__10;
  v38 = __Block_byref_object_dispose__10;
  v39 = 0;
  if (_os_feature_enabled_impl())
  {
    v17 = [v6 request];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62__VUIJSNetworkInterface__enqueueNetworkOp_withJSCallbackUUID___block_invoke;
    v29[3] = &unk_1E8731EA8;
    v29[4] = self;
    v32 = v34;
    v33 = v14;
    v30 = v6;
    v31 = v7;
    [_TtC8VideosUI22VUINetworkManagerProxy executeRequest:v17 completion:v29];
  }

  else
  {
    v18 = [v6 networkLabel];

    if (v18)
    {
      v19 = [v6 networkLabel];
      [v19 unsignedIntValue];
      v20 = nw_activity_create();
      v21 = *(v35 + 5);
      *(v35 + 5) = v20;

      nw_activity_activate();
      [v6 setNetworkActivity:*(v35 + 5)];
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__VUIJSNetworkInterface__enqueueNetworkOp_withJSCallbackUUID___block_invoke_2;
    v23[3] = &unk_1E8731ED0;
    objc_copyWeak(&v27, &location);
    objc_copyWeak(v28, &from);
    v28[1] = v14;
    v25 = buf;
    v26 = v34;
    v24 = v7;
    [v6 setCompletionBlock:v23];
    v22 = [MEMORY[0x1E696ADC8] wlkDefaultConcurrentQueue];
    [v22 addOperation:v6];

    objc_destroyWeak(v28);
    objc_destroyWeak(&v27);
  }

  _Block_object_dispose(v34, 8);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
}

void __62__VUIJSNetworkInterface__enqueueNetworkOp_withJSCallbackUUID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = objc_loadWeakRetained((a1 + 64));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  [WeakRetained _completeRequestResponse:*(a1 + 72) activity:*(*(*(a1 + 48) + 8) + 40) networkOperation:v2 networkResponse:0 jsCallbackUUID:*(a1 + 32) networkError:0];
}

- (id)_createURLRequestFromRequestProperties:(id)a3 request:(id)a4
{
  v5 = a3;
  v6 = [a4 mutableCopy];
  v7 = [v6 URL];
  v8 = [v7 absoluteString];

  v9 = [v5 httpMethod];
  v10 = [v5 headers];
  v11 = [v5 queryParameters];
  v12 = [v5 timeout];
  v13 = [v5 options];
  v14 = [v5 options];
  if (v8)
  {
    v27 = v14;
    v15 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    if (v15)
    {
      v16 = v15;
      v26 = v10;
      v17 = [MEMORY[0x1E695DFF8] vui_sortedQueryItemsFromDictionary:v11];
      v18 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v16 resolvingAgainstBaseURL:0];
      v28 = v17;
      if ([v17 count])
      {
        v19 = v18;
        if ((v13 & 2) != 0)
        {
          [v18 setPercentEncodedQueryItems:v28];
        }

        else
        {
          [v18 setQueryItems:v28];
        }

        v20 = [v18 URL];

        v16 = v20;
      }

      else
      {
        v19 = v18;
      }

      v10 = v26;
      v21 = objc_alloc(MEMORY[0x1E696AD68]);
      [v12 doubleValue];
      v22 = [v21 initWithURL:v16 cachePolicy:0 timeoutInterval:?];

      if (v9)
      {
        [v22 setHTTPMethod:v9];
      }

      v23 = [v5 httpBody];
      [v22 setHTTPBody:v23];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __72__VUIJSNetworkInterface__createURLRequestFromRequestProperties_request___block_invoke;
      v29[3] = &unk_1E8731EF8;
      v6 = v22;
      v30 = v6;
      [v26 enumerateKeysAndObjectsUsingBlock:v29];
      if ((v27 & 8) != 0)
      {
        [v6 setCachePolicy:1];
      }
    }
  }

  v24 = [v6 copy];

  return v24;
}

- (void)_completeRequestResponse:(unint64_t)a3 activity:(id)a4 networkOperation:(id)a5 networkResponse:(id)a6 jsCallbackUUID:(id)a7 networkError:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = WLKNetworkSignpostLogObject();
  v20 = v19;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v20, OS_SIGNPOST_INTERVAL_BEGIN, a3, "WLKUIRequest.bridge", "", buf, 2u);
  }

  v21 = [(VUIJSObject *)self appContext];
  if ([v21 isValid])
  {
    objc_initWeak(buf, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __120__VUIJSNetworkInterface__completeRequestResponse_activity_networkOperation_networkResponse_jsCallbackUUID_networkError___block_invoke;
    v23[3] = &unk_1E8731F20;
    objc_copyWeak(v29, buf);
    v29[1] = a3;
    v24 = v18;
    v25 = v16;
    v26 = v15;
    v27 = v17;
    v28 = v14;
    [v21 evaluate:v23];

    objc_destroyWeak(v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v22 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - VUIAppContext is not valid. Process stopped calling appContext completionBlock", buf, 2u);
    }
  }
}

void __120__VUIJSNetworkInterface__completeRequestResponse_activity_networkOperation_networkResponse_jsCallbackUUID_networkError___block_invoke(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = WLKNetworkSignpostLogObject();
  v5 = v4;
  v6 = *(a1 + 80);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v5, OS_SIGNPOST_INTERVAL_END, v6, "WLKUIRequest.bridge", "", buf, 2u);
  }

  v45 = v3;

  if (_os_feature_enabled_impl())
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) response];
    v9 = [*(a1 + 40) data];
    v10 = *(a1 + 40);
  }

  else
  {
    v7 = [*(a1 + 48) error];
    v8 = [*(a1 + 48) httpResponse];
    v9 = [*(a1 + 48) data];
    v10 = [*(a1 + 48) amsUrlResponse];
  }

  v11 = v10;
  v46 = objc_alloc_init(MEMORY[0x1E69E1520]);
  v12 = [v46 processResponseData:v9 error:0];
  if (!v12 && v9)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
  }

  v47 = v9;
  v13 = [v8 allHeaderFields];
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  v15 = _os_feature_enabled_impl();
  v16 = MEMORY[0x1E696AD98];
  if (v15)
  {
    v17 = [v8 statusCode];
  }

  else
  {
    v17 = [*(a1 + 48) responseStatusCode];
  }

  v18 = [v16 numberWithInteger:v17];
  [v14 setObject:v18 forKey:@"statusCode"];

  if (v12)
  {
    [v14 setObject:v12 forKey:@"response"];
    if (v13)
    {
LABEL_15:
      [v14 setObject:v13 forKey:@"headers"];
      goto LABEL_18;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E695DFB0] null];
    [v14 setObject:v19 forKey:@"response"];

    if (v13)
    {
      goto LABEL_15;
    }
  }

  v20 = [MEMORY[0x1E695DFB0] null];
  [v14 setObject:v20 forKey:@"headers"];

LABEL_18:
  v49 = v11;
  v44 = v13;
  if (_os_feature_enabled_impl())
  {
    v21 = [*(a1 + 40) taskMetrics];
    v22 = [v21 transactionMetrics];
    v23 = [v22 lastObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v23 resourceFetchType];
    }

    v11 = v49;
  }

  if (v11)
  {
    v24 = [_TtC8VideosUI34JetNetworkPerfMetricsConverterObjc toVideosJSDictionaryWithAmsURLResult:v11];
    if (v24)
    {
      v25 = v24;
      [v14 setObject:v24 forKey:@"networkPerformanceMetrics"];
    }
  }

  if (!v8 && v7)
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "code")}];
    [v26 setObject:v27 forKey:@"code"];

    v28 = [v7 domain];
    [v26 setObject:v28 forKey:@"domain"];

    v29 = [v7 debugDescription];
    [v26 setObject:v29 forKey:@"description"];

    [v14 setObject:v26 forKey:@"error"];
  }

  v30 = WLKNetworkSignpostLogObject();
  v31 = v30;
  v32 = *(a1 + 80);
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v31, OS_SIGNPOST_INTERVAL_END, v32, "WLKUIRequest.total", "", buf, 2u);
  }

  v33 = objc_loadWeakRetained((a1 + 72));
  v34 = [v33 jsValueForProperty:*(a1 + 56)];
  v35 = [v34 context];
  v36 = [v33 appContext];
  v37 = [v36 isValid];

  v38 = WLKNetworkingLogObject();
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  if (!v37 || v35 != v45)
  {
    if (v37)
    {
      if (!v39)
      {
        goto LABEL_42;
      }

      *buf = 0;
      v43 = "VUIJSNetworkInterface - context of localCallBack does not match with context of AppContext";
    }

    else
    {
      if (!v39)
      {
        goto LABEL_42;
      }

      *buf = 0;
      v43 = "VUIJSNetworkInterface - VUIAppContext is not valid inside AppContext evalue completionBlock";
    }

    _os_log_impl(&dword_1E323F000, v38, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
    goto LABEL_42;
  }

  if (v39)
  {
    v40 = *(a1 + 48);
    v41 = *(a1 + 56);
    *buf = 138412546;
    v52 = v40;
    v53 = 2048;
    v54 = v41;
    _os_log_impl(&dword_1E323F000, v38, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - Request end: %@ %p", buf, 0x16u);
  }

  v50 = v14;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v42 = [v34 callWithArguments:v38];
LABEL_42:

  [v33 setJSValue:0 forProperty:*(a1 + 56)];
  [WeakRetained _handleNetworkMetricsActivity:*(a1 + 64) error:v7];
}

- (void)_handleNetworkMetricsActivity:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v7 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v8 = "VUIJSNetworkInterface - activity is nil, returning.";
      v9 = &v13;
LABEL_9:
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if ((nw_activity_is_activated() & 1) == 0)
  {
    v7 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "VUIJSNetworkInterface - activity not activated.";
      v9 = buf;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v6)
  {
    [v6 code];
    nw_activity_complete_with_reason_and_underlying_error();
  }

  else
  {
    v10 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - activity completed successfully.", v11, 2u);
    }

    nw_activity_complete_with_reason();
  }

LABEL_11:
}

- (int64_t)_requestOptionsFromJSOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"suppressAuthentication"];
  v5 = [v3 objectForKey:@"encodeQueryParams"];
  v6 = [v3 objectForKey:@"nonPersonalized"];
  v7 = [v3 objectForKey:@"ignoreLocalCache"];

  if (v4)
  {
    v8 = [v4 BOOLValue];
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (([v5 BOOLValue] & 1) == 0)
  {
    v8 |= 2uLL;
  }

LABEL_5:
  if ([v6 BOOLValue])
  {
    v8 |= 0x10uLL;
  }

  if ([v7 BOOLValue])
  {
    v8 |= 8uLL;
  }

  return v8;
}

- (id)_createURLRequestFromJSOptionsDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 wlk_stringForKey:@"url"];
  v5 = [v3 wlk_stringForKey:@"httpMethod"];
  v6 = [v3 wlk_stringForKey:@"postBody"];
  v7 = [v3 wlk_dictionaryForKey:@"headers"];
  v8 = [v3 wlk_dictionaryForKey:@"queryParameters"];
  v9 = [v3 wlk_numberForKey:@"timeout"];
  v10 = [v5 isEqualToString:@"POST"];
  v11 = [v3 wlk_BOOLForKey:@"encodeQueryParams" defaultValue:1];

  if (v4 && ([MEMORY[0x1E695DFF8] URLWithString:v4], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v24 = v7;
    v14 = v6;
    v15 = [MEMORY[0x1E695DFF8] vui_sortedQueryItemsFromDictionary:v8];
    v16 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v13 resolvingAgainstBaseURL:0];
    v25 = v15;
    if ([v15 count])
    {
      if (v11)
      {
        [v16 setPercentEncodedQueryItems:v15];
      }

      else
      {
        [v16 setQueryItems:v15];
      }

      v6 = v14;
      v18 = [v16 URL];

      v13 = v18;
    }

    else
    {
      v6 = v14;
    }

    v7 = v24;
    v19 = objc_alloc(MEMORY[0x1E696AD68]);
    [v9 doubleValue];
    v20 = [v19 initWithURL:v13 cachePolicy:0 timeoutInterval:?];
    v21 = v20;
    if (v5)
    {
      [v20 setHTTPMethod:v5];
    }

    if (v10)
    {
      v22 = [v6 dataUsingEncoding:4];
      [v21 setHTTPBody:v22];
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __66__VUIJSNetworkInterface__createURLRequestFromJSOptionsDictionary___block_invoke;
    v26[3] = &unk_1E8731EF8;
    v17 = v21;
    v27 = v17;
    [v24 enumerateKeysAndObjectsUsingBlock:v26];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a6;
  v9 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - AMSURLProtocolDelegate handleDialogRequest begin", buf, 2u);
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = __75__VUIJSNetworkInterface_AMSURLSession_task_handleDialogRequest_completion___block_invoke;
  v15 = &unk_1E872E580;
  v16 = v7;
  v17 = v8;
  v10 = MEMORY[0x1E696AF00];
  v11 = v8;
  v12 = v7;
  if ([v10 isMainThread])
  {
    v14(&v13);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v13);
  }
}

void __75__VUIJSNetworkInterface_AMSURLSession_task_handleDialogRequest_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIApplicationRouter topMostVisibleViewController];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E698CC50]) initWithRequest:*(a1 + 32) presentingViewController:v2];
    v4 = [v3 present];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__VUIJSNetworkInterface_AMSURLSession_task_handleDialogRequest_completion___block_invoke_2;
    v6[3] = &unk_1E872F5A8;
    v7 = *(a1 + 40);
    [v4 addFinishBlock:v6];
  }

  else
  {
    v3 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - failed to handle dialog request because there is no presenting view controller", v5, 2u);
    }
  }
}

void __75__VUIJSNetworkInterface_AMSURLSession_task_handleDialogRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - AMSURLProtocolDelegate handleDialogRequest end", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a6;
  v9 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - AMSURLProtocolDelegate handleAuthenticateRequest begin", buf, 2u);
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = __81__VUIJSNetworkInterface_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke;
  v15 = &unk_1E872E580;
  v16 = v7;
  v17 = v8;
  v10 = MEMORY[0x1E696AF00];
  v11 = v8;
  v12 = v7;
  if ([v10 isMainThread])
  {
    v14(&v13);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v13);
  }
}

void __81__VUIJSNetworkInterface_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIApplicationRouter topMostVisibleViewController];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E698CC58]) initWithRequest:*(a1 + 32) presentingViewController:v2];
    v4 = [v3 performAuthentication];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __81__VUIJSNetworkInterface_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke_2;
    v6[3] = &unk_1E872F580;
    v7 = *(a1 + 40);
    [v4 addFinishBlock:v6];
  }

  else
  {
    v3 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - failed to handle authenticate request because there is no presenting view controller", v5, 2u);
    }
  }
}

void __81__VUIJSNetworkInterface_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIJSNetworkInterface - AMSURLProtocolDelegate handleAuthenticateRequest end", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)_handleServerConfigChange:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_Vuijsnetworkin.isa);
  if (self->_suppressServerConfigNotifications)
  {
    NSLog(&cfstr_Vuijsnetworkin_0.isa);
  }

  else
  {
    v5 = [(VUIJSObject *)self appContext];
    objc_initWeak(&location, v5);

    objc_initWeak(&from, self);
    v6 = objc_loadWeakRetained(&location);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__VUIJSNetworkInterface__handleServerConfigChange___block_invoke;
    v7[3] = &unk_1E87309C0;
    objc_copyWeak(&v9, &from);
    v8 = v4;
    [v6 evaluate:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __51__VUIJSNetworkInterface__handleServerConfigChange___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [MEMORY[0x1E696EB58] valueWithObject:WeakRetained inContext:v3];

  if ([v5 hasProperty:@"onConfigurationChange"])
  {
    NSLog(&cfstr_Vuijsnetworkin_1.isa);
    v6 = [*(a1 + 32) object];
    v7 = v6;
    if (!v6)
    {
      v7 = [MEMORY[0x1E695DFB0] null];
    }

    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    if (!v6)
    {
    }

    v9 = [v5 invokeMethod:@"onConfigurationChange" withArguments:v8];
  }
}

@end