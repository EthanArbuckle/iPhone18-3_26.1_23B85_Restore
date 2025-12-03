@interface SSMachineDataRequest
- (BOOL)allowsBootstrapCellularData;
- (BOOL)waitsForPurchaseOperations;
- (NSData)actionData;
- (NSNumber)accountIdentifier;
- (NSString)actionName;
- (NSString)userAgent;
- (SSMachineDataRequest)initWithURLResponse:(id)response;
- (SSMachineDataRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (int64_t)protocolVersion;
- (void)setAccountIdentifier:(id)identifier;
- (void)setActionData:(id)data;
- (void)setActionName:(id)name;
- (void)setAllowsBootstrapCellularData:(BOOL)data;
- (void)setProtocolVersion:(int64_t)version;
- (void)setUserAgent:(id)agent;
- (void)setWaitsForPurchaseOperations:(BOOL)operations;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithDetailedCompletionBlock:(id)block;
@end

@implementation SSMachineDataRequest

- (SSMachineDataRequest)initWithURLResponse:(id)response
{
  responseCopy = response;
  v17.receiver = self;
  v17.super_class = SSMachineDataRequest;
  v5 = [(SSRequest *)&v17 init];
  if (v5)
  {
    allHeaderFields = [responseCopy allHeaderFields];
    v7 = HeaderValueForKey(allHeaderFields, @"X-Apple-MD-Action");
    v8 = @"X-Apple-MD-Data";
    if (![v7 length])
    {
      v9 = HeaderValueForKey(allHeaderFields, @"X-Apple-AMD-Action");

      v10 = @"X-Apple-AMD-Data";
      v5->_protocolVersion = 1;
      v7 = v9;
      v8 = v10;
    }

    if ([v7 length])
    {
      v11 = HeaderValueForKey(allHeaderFields, v8);
      if ([v11 length])
      {
        v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v11 options:0];
        actionData = v5->_actionData;
        v5->_actionData = v12;
      }

      v14 = [v7 copy];
      actionName = v5->_actionName;
      v5->_actionName = v14;
    }

    else
    {
      v11 = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (NSNumber)accountIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SSMachineDataRequest_accountIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSData)actionData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSMachineDataRequest_actionData__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)actionName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSMachineDataRequest_actionName__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)allowsBootstrapCellularData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SSMachineDataRequest_allowsBootstrapCellularData__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)protocolVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SSMachineDataRequest_protocolVersion__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SSMachineDataRequest_setAccountIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__SSMachineDataRequest_setAccountIdentifier___block_invoke(uint64_t a1)
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

- (void)setActionData:(id)data
{
  dataCopy = data;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SSMachineDataRequest_setActionData___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(dispatchQueue, v7);
}

void __38__SSMachineDataRequest_setActionData___block_invoke(uint64_t a1)
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

- (void)setActionName:(id)name
{
  nameCopy = name;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SSMachineDataRequest_setActionName___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(dispatchQueue, v7);
}

void __38__SSMachineDataRequest_setActionName___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 112) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    *(v5 + 112) = v4;
  }
}

- (void)setAllowsBootstrapCellularData:(BOOL)data
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SSMachineDataRequest_setAllowsBootstrapCellularData___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  dataCopy = data;
  dispatch_async(dispatchQueue, v4);
}

- (void)setProtocolVersion:(int64_t)version
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__SSMachineDataRequest_setProtocolVersion___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = version;
  dispatch_async(dispatchQueue, v4);
}

- (void)setUserAgent:(id)agent
{
  agentCopy = agent;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__SSMachineDataRequest_setUserAgent___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = agentCopy;
  v6 = agentCopy;
  dispatch_async(dispatchQueue, v7);
}

void __37__SSMachineDataRequest_setUserAgent___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 136) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 136);
    *(v5 + 136) = v4;
  }
}

- (void)setWaitsForPurchaseOperations:(BOOL)operations
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SSMachineDataRequest_setWaitsForPurchaseOperations___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  operationsCopy = operations;
  dispatch_async(dispatchQueue, v4);
}

- (NSString)userAgent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__SSMachineDataRequest_userAgent__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)waitsForPurchaseOperations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SSMachineDataRequest_waitsForPurchaseOperations__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SSMachineDataRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84B2878;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSMachineDataRequest *)self startWithDetailedCompletionBlock:v6];
}

uint64_t __49__SSMachineDataRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)startWithDetailedCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = SSViTunesStoreFramework();
  v6 = [objc_alloc(SSVWeakLinkedClassForString(&cfstr_Ismachinedataa.isa v5))];
  userAgent = [(SSMachineDataRequest *)self userAgent];

  if (userAgent)
  {
    userAgent2 = [(SSMachineDataRequest *)self userAgent];
    [v6 setUserAgent:userAgent2];
  }

  else
  {
    userAgent2 = +[SSDevice currentDevice];
    v8UserAgent = [userAgent2 userAgent];
    [v6 setUserAgent:v8UserAgent];
  }

  objc_initWeak(&location, v6);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __57__SSMachineDataRequest_startWithDetailedCompletionBlock___block_invoke;
  v17 = &unk_1E84AED80;
  objc_copyWeak(&v20, &location);
  v10 = blockCopy;
  selfCopy = self;
  v19 = v10;
  [v6 setCompletionBlock:&v14];
  v11 = SSViTunesStoreFramework();
  v12 = SSVWeakLinkedClassForString(&cfstr_Isoperationque.isa, v11);
  mainQueue = [v12 mainQueue];
  [mainQueue addOperation:v6];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __57__SSMachineDataRequest_startWithDetailedCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [WeakRetained syncState];
    v4 = [WeakRetained error];
    (*(v2 + 16))(v2, v3, v4);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (SSMachineDataRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v20.receiver = self;
    v20.super_class = SSMachineDataRequest;
    v6 = [(SSRequest *)&v20 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "50", v8);
      accountID = v6->_accountID;
      v6->_accountID = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "51", v11);
      actionData = v6->_actionData;
      v6->_actionData = v12;

      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "52", v14);
      actionName = v6->_actionName;
      v6->_actionName = v15;

      v6->_allowsBootstrapCellularData = xpc_dictionary_get_BOOL(v5, "54");
      v6->_protocolVersion = xpc_dictionary_get_int64(v5, "55");
      v17 = objc_opt_class();
      v18 = SSXPCDictionaryCopyObjectWithClass(v5, "56", v17);
      userAgent = v6->_userAgent;
      v6->_userAgent = v18;

      v6->_waitsForPurchaseOperations = xpc_dictionary_get_BOOL(v5, "53");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->super._dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SSMachineDataRequest_copyXPCEncoding__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(dispatchQueue, v8);
  v6 = v5;

  return v6;
}

void __39__SSMachineDataRequest_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetObject(*(a1 + 32), "50", *(*(a1 + 40) + 96));
  SSXPCDictionarySetObject(*(a1 + 32), "51", *(*(a1 + 40) + 104));
  SSXPCDictionarySetObject(*(a1 + 32), "52", *(*(a1 + 40) + 112));
  xpc_dictionary_set_BOOL(*(a1 + 32), "54", *(*(a1 + 40) + 120));
  xpc_dictionary_set_int64(*(a1 + 32), "55", *(*(a1 + 40) + 128));
  SSXPCDictionarySetObject(*(a1 + 32), "56", *(*(a1 + 40) + 136));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 144);

  xpc_dictionary_set_BOOL(v2, "53", v3);
}

@end