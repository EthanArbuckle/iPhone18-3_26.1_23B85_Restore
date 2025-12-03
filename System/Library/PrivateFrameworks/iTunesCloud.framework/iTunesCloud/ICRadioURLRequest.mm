@interface ICRadioURLRequest
- (ICRadioURLRequest)initWithURLRequest:(id)request requestContext:(id)context;
- (void)_decorateHeaderPropertiesForURLRequest:(id)request withBuilderProperties:(id)properties;
- (void)buildStoreURLRequestWithURLRequest:(id)request builderProperties:(id)properties completionHandler:(id)handler;
@end

@implementation ICRadioURLRequest

- (void)_decorateHeaderPropertiesForURLRequest:(id)request withBuilderProperties:(id)properties
{
  requestCopy = request;
  propertiesCopy = properties;
  storeRequestContext = [(ICStoreURLRequest *)self storeRequestContext];
  deviceInfo = [storeRequestContext deviceInfo];
  protocolVersion = [(ICRadioURLRequest *)self protocolVersion];
  v10 = MEMORY[0x1E696AEC0];
  buildVersion = [deviceInfo buildVersion];
  v12 = buildVersion;
  v13 = &stru_1F2C4A680;
  if (buildVersion)
  {
    v13 = buildVersion;
  }

  v14 = [v10 stringWithFormat:@"%ld/%@", protocolVersion, v13];

  [requestCopy setValue:v14 forHTTPHeaderField:@"X-Apple-Radio-Client-Version"];
  privateListeningEnabled = self->_privateListeningEnabled;
  if (privateListeningEnabled)
  {
    if ([(NSNumber *)privateListeningEnabled BOOLValue])
    {
      v16 = @"true";
    }

    else
    {
      v16 = @"false";
    }

    [requestCopy setValue:v16 forHTTPHeaderField:@"X-Apple-Private-Listening"];
  }

  delegatedPrivateListeningEnabled = self->_delegatedPrivateListeningEnabled;
  if (delegatedPrivateListeningEnabled)
  {
    if ([(NSNumber *)delegatedPrivateListeningEnabled BOOLValue])
    {
      v18 = @"true";
    }

    else
    {
      v18 = @"false";
    }

    [requestCopy setValue:v18 forHTTPHeaderField:@"X-Apple-Enqueuer-Private-Listening"];
  }

  uRLBag = [propertiesCopy URLBag];
  radioConfiguration = [uRLBag radioConfiguration];
  v21 = [requestCopy URL];
  if (v21 && [radioConfiguration shouldIncludeHTTPHeaderField:@"X-Guid" forRequestURL:v21])
  {
    deviceGUID = [deviceInfo deviceGUID];
    if (deviceGUID)
    {
      [requestCopy setValue:deviceGUID forHTTPHeaderField:@"X-Guid"];
    }
  }
}

- (void)buildStoreURLRequestWithURLRequest:(id)request builderProperties:(id)properties completionHandler:(id)handler
{
  requestCopy = request;
  propertiesCopy = properties;
  handlerCopy = handler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __92__ICRadioURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke;
  v22[3] = &unk_1E7BF9560;
  v11 = requestCopy;
  v23 = v11;
  selfCopy = self;
  v12 = propertiesCopy;
  v25 = v12;
  v13 = handlerCopy;
  v26 = v13;
  v14 = MEMORY[0x1B8C781E0](v22);
  radioContentDictionaryCreationBlock = [(ICRadioURLRequest *)self radioContentDictionaryCreationBlock];
  if (radioContentDictionaryCreationBlock)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__ICRadioURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke_15;
    v18[3] = &unk_1E7BF9588;
    v18[4] = self;
    v19 = v12;
    v20 = radioContentDictionaryCreationBlock;
    v21 = v14;
    v17.receiver = self;
    v17.super_class = ICRadioURLRequest;
    [(ICStoreURLRequest *)&v17 buildStoreURLRequestWithURLRequest:v11 builderProperties:v19 completionHandler:v18];
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
    (v14)[2](v14, 0, v16);
  }
}

void __92__ICRadioURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (*(a1 + 56))
    {
      v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        *buf = 134218499;
        v19 = v8;
        v20 = 2113;
        v21 = v5;
        v22 = 2114;
        v23 = v6;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "<ICStoreURLRequest %p> encountered error building url request contentDictionary=%{private}@ error=%{public}@", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v9 = [*(a1 + 32) mutableCopy];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [*(a1 + 40) protocolVersion];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    [v10 setObject:v12 forKey:@"version"];

    if (v5)
    {
      [v10 setObject:v5 forKey:@"content"];
    }

    if ([*(a1 + 40) isBackgroundRadioRequest])
    {
      [v10 setObject:MEMORY[0x1E695E118] forKey:@"is-async"];
    }

    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:200 options:0 error:0];
    if (v13)
    {
      v14 = MSVGzipCompressData();
      if ([v14 length])
      {
        [v9 setHTTPBody:v14];
        [v9 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
      }

      else
      {
        [v9 setHTTPBody:v13];
      }
    }

    [*(a1 + 40) _decorateHeaderPropertiesForURLRequest:v9 withBuilderProperties:*(a1 + 48)];
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17.receiver = *(a1 + 40);
    v17.super_class = ICRadioURLRequest;
    objc_msgSendSuper2(&v17, sel_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler_, v9, v15, v16);
  }
}

void __92__ICRadioURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke_15(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 mutableCopy];
    [*(a1 + 32) _decorateHeaderPropertiesForURLRequest:v4 withBuilderProperties:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

- (ICRadioURLRequest)initWithURLRequest:(id)request requestContext:(id)context
{
  v5.receiver = self;
  v5.super_class = ICRadioURLRequest;
  result = [(ICStoreURLRequest *)&v5 initWithURLRequest:request requestContext:context];
  if (result)
  {
    result->_protocolVersion = 5;
  }

  return result;
}

@end