@interface SPDaemonConnection
+ (id)sharedBackgroundConnection;
+ (id)sharedConnection;
- (SPDaemonConnection)initWithDaemonName:(id)name qos:(unsigned int)qos;
- (id)_connection;
- (id)startQuery:(id)query queue:(id)queue delegate:(id)delegate;
- (void)_resetConnection;
- (void)_sendFeedbackMessage:(id)message object:(id)object info:(id)info reply:(id)reply;
- (void)_sendInteractiveMessage:(id)message object:(id)object info:(id)info reply:(id)reply;
- (void)_sendMessage:(id)message object:(id)object info:(id)info reply:(id)reply;
- (void)activate;
- (void)activate:(id)activate;
- (void)barrierOnXPC:(id)c;
- (void)cancelQuery:(id)query;
- (void)clearInput:(id)input;
- (void)deactivate;
- (void)dealloc;
- (void)preheat;
- (void)requestParsecParametersWithReply:(id)reply;
- (void)retrieveFirstTimeExperienceTextWithReply:(id)reply;
- (void)sendApps:(id)apps;
- (void)sendMessageForToken:(id)token;
- (void)sendSFFeedback:(id)feedback type:(int64_t)type queryId:(unint64_t)id;
@end

@implementation SPDaemonConnection

- (void)_resetConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(SPXPCConnection *)connection setMessageHandler:0];
    [(SPXPCConnection *)self->_connection setDisconnectHandler:0];
    [(SPXPCConnection *)self->_connection shutdown];
    v4 = self->_connection;
    self->_connection = 0;
  }
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[SPXPCConnection alloc] initWithServiceName:self->_daemonName onQueue:self->_connectionQueue];
    v5 = self->_connection;
    self->_connection = v4;

    objc_initWeak(&location, self);
    v6 = self->_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__SPDaemonConnection__connection__block_invoke;
    v11[3] = &unk_1E82F8E18;
    objc_copyWeak(&v12, &location);
    [(SPXPCConnection *)v6 setDisconnectHandler:v11];
    v7 = self->_connection;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33__SPDaemonConnection__connection__block_invoke_2;
    v9[3] = &unk_1E82F8E40;
    objc_copyWeak(&v10, &location);
    [(SPXPCConnection *)v7 setMessageHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

uint64_t __33__SPDaemonConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    context = WeakRetained;
    [(CFDictionaryRef *)WeakRetained _resetConnection];
    WeakRetained = CFDictionaryGetCount(context[5]);
    v2 = context;
    if (WeakRetained)
    {
      CFDictionaryApplyFunction(context[5], queryReissueFunction, context);
      v2 = context;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

void __33__SPDaemonConnection__connection__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = v4;
  if (gSPLogDebugAsDefault)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v13[0] = 67109120;
    v13[1] = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v5, v6, "SPDC message QOS: %d", v13, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v3 info];
    v9 = [v8 objectForKey:@"QID"];
    v10 = [v9 unsignedIntValue];

    v11 = CFDictionaryGetValue(WeakRetained[5], v10);
    [v11 handleMessage:v3];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_sendFeedbackMessage:(id)message object:(id)object info:(id)info reply:(id)reply
{
  infoCopy = info;
  objectCopy = object;
  messageCopy = message;
  v12 = [[SPXPCMessage alloc] initWithName:messageCopy];

  [(SPXPCMessage *)v12 setRootObjectForFeedback:objectCopy];
  [(SPXPCMessage *)v12 setInfo:infoCopy];

  connectionQueue = self->_connectionQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__SPDaemonConnection__sendFeedbackMessage_object_info_reply___block_invoke;
  v15[3] = &unk_1E82F8E68;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  dispatch_async(connectionQueue, v15);
}

void __61__SPDaemonConnection__sendFeedbackMessage_object_info_reply___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    v7[0] = 67109120;
    v7[1] = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v3, v4, "SPDC feedback QOS: %d", v7, 8u);
  }

  v5 = [*(a1 + 32) _connection];
  [v5 sendMessage:*(a1 + 40)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_sendMessage:(id)message object:(id)object info:(id)info reply:(id)reply
{
  v28 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  infoCopy = info;
  objectCopy = object;
  messageCopy = message;
  v14 = [[SPXPCMessage alloc] initWithName:messageCopy];

  [(SPXPCMessage *)v14 setRootObject:objectCopy];
  [(SPXPCMessage *)v14 setInfo:infoCopy];

  v15 = SPLogForSPLogCategoryDefault();
  v16 = v15;
  if (gSPLogDebugAsDefault)
  {
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v17 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v15, v17))
  {
    *buf = 67109120;
    v27 = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v16, v17, "SPDC _sendMessage QOS: %d", buf, 8u);
  }

  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SPDaemonConnection__sendMessage_object_info_reply___block_invoke;
  block[3] = &unk_1E82F8EB8;
  v24 = v14;
  v25 = replyCopy;
  block[4] = self;
  v19 = v14;
  v20 = replyCopy;
  v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(connectionQueue, v21);

  v22 = *MEMORY[0x1E69E9840];
}

void __53__SPDaemonConnection__sendMessage_object_info_reply___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    *buf = 67109120;
    v13 = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v3, v4, "SPDC QOS: %d", buf, 8u);
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) _connection];
  v7 = v6;
  v8 = *(a1 + 40);
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__SPDaemonConnection__sendMessage_object_info_reply___block_invoke_19;
    v10[3] = &unk_1E82F8E90;
    v11 = *(a1 + 48);
    [v7 sendMessage:v8 withReply:v10];

    v7 = v11;
  }

  else
  {
    [v6 sendMessage:*(a1 + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __53__SPDaemonConnection__sendMessage_object_info_reply___block_invoke_19(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = v4;
  if (gSPLogDebugAsDefault)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v10[0] = 67109120;
    v10[1] = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v5, v6, "SPDC reply QOS: %d", v10, 8u);
  }

  v7 = *(a1 + 32);
  v8 = [v3 info];

  (*(v7 + 16))(v7, v8);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_sendInteractiveMessage:(id)message object:(id)object info:(id)info reply:(id)reply
{
  v31 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  infoCopy = info;
  objectCopy = object;
  messageCopy = message;
  v14 = [[SPXPCMessage alloc] initWithName:messageCopy];

  [(SPXPCMessage *)v14 setRootObject:objectCopy];
  [(SPXPCMessage *)v14 setInfo:infoCopy];

  v15 = SPLogForSPLogCategoryDefault();
  v16 = v15;
  if (gSPLogDebugAsDefault)
  {
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v17 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v15, v17))
  {
    *buf = 67109120;
    v30 = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v16, v17, "SPDC _sendMessage QOS: %d", buf, 8u);
  }

  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SPDaemonConnection__sendInteractiveMessage_object_info_reply___block_invoke;
  block[3] = &unk_1E82F8EB8;
  v27 = v14;
  v28 = replyCopy;
  block[4] = self;
  v19 = connectionQueue;
  v20 = v14;
  v21 = replyCopy;
  v22 = qos_class_self();
  if (v22 < 0x1A)
  {
    v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  }

  else
  {
    v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v22, 0, block);
  }

  v24 = v23;
  dispatch_async(v19, v23);

  v25 = *MEMORY[0x1E69E9840];
}

void __64__SPDaemonConnection__sendInteractiveMessage_object_info_reply___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    *buf = 67109120;
    v13 = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v3, v4, "SPDC QOS: %d", buf, 8u);
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) _connection];
  v7 = v6;
  v8 = *(a1 + 40);
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__SPDaemonConnection__sendInteractiveMessage_object_info_reply___block_invoke_20;
    v10[3] = &unk_1E82F8E90;
    v11 = *(a1 + 48);
    [v7 sendInteractiveMessage:v8 withReply:v10];

    v7 = v11;
  }

  else
  {
    [v6 sendMessage:*(a1 + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __64__SPDaemonConnection__sendInteractiveMessage_object_info_reply___block_invoke_20(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = v4;
  if (gSPLogDebugAsDefault)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v10[0] = 67109120;
    v10[1] = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v5, v6, "SPDC reply QOS: %d", v10, 8u);
  }

  v7 = *(a1 + 32);
  v8 = [v3 info];

  (*(v7 + 16))(v7, v8);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)sendMessageForToken:(id)token
{
  v77 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = v4;
  if (gSPLogDebugAsDefault)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    *buf = 67109120;
    v76 = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v5, v6, "SPDC sendMessageForToken QOS: %d", buf, 8u);
  }

  query = [tokenCopy query];
  queryContext = [query queryContext];
  searchEntities = [queryContext searchEntities];
  v10 = [searchEntities count];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    searchEntities2 = [queryContext searchEntities];
    v13 = searchEntities2;
    if (searchEntities2 && [searchEntities2 count])
    {
      [v11 encodeObject:v13 forKey:@"entities"];
    }

    encodedData = [v11 encodedData];
  }

  else
  {
    encodedData = [MEMORY[0x1E695DEF0] data];
  }

  v73[0] = @"BA";
  disabledBundles = [query disabledBundles];
  v16 = MEMORY[0x1E695E0F0];
  v68 = disabledBundles;
  if (disabledBundles)
  {
    v17 = disabledBundles;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  v74[0] = v17;
  v73[1] = @"AA";
  disabledApps = [query disabledApps];
  v67 = disabledApps;
  if (disabledApps)
  {
    v19 = disabledApps;
  }

  else
  {
    v19 = v16;
  }

  v74[1] = v19;
  v73[2] = @"DA";
  searchDomains = [queryContext searchDomains];
  v66 = searchDomains;
  if (searchDomains)
  {
    v21 = searchDomains;
  }

  else
  {
    v21 = v16;
  }

  v74[2] = v21;
  v73[3] = @"IP";
  v65 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(query, "infinitePatience")}];
  v74[3] = v65;
  v73[4] = @"DAS";
  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(queryContext, "deviceAuthenticationState")}];
  v74[4] = v64;
  v73[5] = @"WS";
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(query, "isWideScreen")}];
  v74[5] = v63;
  v73[6] = @"FC";
  v62 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(query, "contentFilters")}];
  v74[6] = v62;
  v73[7] = @"KL";
  keyboardLanguage = [queryContext keyboardLanguage];
  v61 = keyboardLanguage;
  if (keyboardLanguage)
  {
    v23 = keyboardLanguage;
  }

  else
  {
    v23 = &stru_1F47D3128;
  }

  v74[7] = v23;
  v73[8] = @"KPL";
  keyboardPrimaryLanguage = [queryContext keyboardPrimaryLanguage];
  v60 = keyboardPrimaryLanguage;
  if (keyboardPrimaryLanguage)
  {
    v25 = keyboardPrimaryLanguage;
  }

  else
  {
    v25 = &stru_1F47D3128;
  }

  v74[8] = v25;
  v73[9] = @"SCF";
  v26 = MEMORY[0x1E696AD98];
  [queryContext scaleFactor];
  v59 = [v26 numberWithDouble:?];
  v74[9] = v59;
  v73[10] = @"QC";
  v58 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(query, "maxCount")}];
  v74[10] = v58;
  v73[11] = @"QI";
  v57 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(query, "queryIdent")}];
  v74[11] = v57;
  v73[12] = @"QID";
  v69 = tokenCopy;
  v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(tokenCopy, "queryID")}];
  v74[12] = v56;
  v73[13] = @"QS";
  searchString = [queryContext searchString];
  v55 = searchString;
  if (searchString)
  {
    v28 = searchString;
  }

  else
  {
    v28 = &stru_1F47D3128;
  }

  v74[13] = v28;
  v73[14] = @"DDA";
  disabledDomains = [queryContext disabledDomains];
  v54 = disabledDomains;
  if (disabledDomains)
  {
    v30 = disabledDomains;
  }

  else
  {
    v30 = v16;
  }

  v74[14] = v30;
  v73[15] = @"QSMRA";
  markedTextArray = [queryContext markedTextArray];
  v52 = encodedData;
  v53 = markedTextArray;
  if (markedTextArray)
  {
    v32 = markedTextArray;
  }

  else
  {
    v32 = v16;
  }

  v74[15] = v32;
  v73[16] = @"EA";
  data = encodedData;
  if (!encodedData)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v47 = data;
  v74[16] = data;
  v73[17] = @"WHY";
  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(queryContext, "whyQuery")}];
  v74[17] = v51;
  v73[18] = @"QK";
  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(queryContext, "queryKind")}];
  v74[18] = v50;
  v73[19] = @"NT";
  v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(query, "noTokenize")}];
  v74[19] = v49;
  v73[20] = @"RPP";
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(query, "promoteParsecResults")}];
  v74[20] = v34;
  v73[21] = @"RPL";
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(query, "promoteLocalResults")}];
  v74[21] = v35;
  v73[22] = @"InternalValidation";
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(query, "internalValidation")}];
  v74[22] = v36;
  v73[23] = @"InternalDebug";
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(query, "internalDebug")}];
  v74[23] = v37;
  v73[24] = @"CT";
  v38 = MEMORY[0x1E696AD98];
  [query currentTime];
  v39 = [v38 numberWithDouble:?];
  v74[24] = v39;
  v73[25] = @"DOCR";
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(queryContext, "disableOCR")}];
  v74[25] = v40;
  v73[26] = @"FL2S";
  v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(queryContext, "fetchL2Signals")}];
  v74[26] = v41;
  v73[27] = @"QU";
  queryUnderstandingOutput = [queryContext queryUnderstandingOutput];
  v43 = queryUnderstandingOutput;
  v44 = MEMORY[0x1E695E0F8];
  if (queryUnderstandingOutput)
  {
    v44 = queryUnderstandingOutput;
  }

  v74[27] = v44;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:28];

  if (!v52)
  {
  }

  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __42__SPDaemonConnection_sendMessageForToken___block_invoke;
  v71[3] = &unk_1E82F8EE0;
  v72 = v69;
  v45 = v69;
  [(SPDaemonConnection *)self _sendInteractiveMessage:@"OpenQuery" object:0 info:v48 reply:v71];

  v46 = *MEMORY[0x1E69E9840];
}

uint64_t __42__SPDaemonConnection_sendMessageForToken___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    v7[0] = 67109120;
    v7[1] = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v3, v4, "SPDC query did complete reply QOS: %d", v7, 8u);
  }

  result = [*(a1 + 32) queryDidComplete];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)startQuery:(id)query queue:(id)queue delegate:(id)delegate
{
  delegateCopy = delegate;
  queueCopy = queue;
  queryCopy = query;
  v11 = [[SPDaemonQueryToken alloc] initWithQuery:queryCopy queue:queueCopy delegate:delegateCopy];
  CFDictionarySetValue(self->_runningQueries, [(SPDaemonQueryToken *)v11 queryID], v11);

  v12 = _os_activity_create(&dword_1C81BF000, "query", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__SPDaemonConnection_startQuery_queue_delegate___block_invoke;
  v17[3] = &unk_1E82F8E68;
  v17[4] = self;
  v13 = v11;
  v18 = v13;
  os_activity_apply(v12, v17);
  v14 = v18;
  v15 = v13;

  return v13;
}

- (void)cancelQuery:(id)query
{
  queryCopy = query;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SPDaemonConnection_cancelQuery___block_invoke;
  block[3] = &unk_1E82F8E68;
  block[4] = self;
  v6 = queryCopy;
  v12 = v6;
  dispatch_sync(connectionQueue, block);
  v7 = _os_activity_create(&dword_1C81BF000, "queryCancel", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__SPDaemonConnection_cancelQuery___block_invoke_2;
  v9[3] = &unk_1E82F8E68;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  os_activity_apply(v7, v9);
}

void __34__SPDaemonConnection_cancelQuery___block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(*(*(a1 + 32) + 40), [*(a1 + 40) queryID]);
  v2 = [*(a1 + 40) query];
  [v2 cancel];
}

void __34__SPDaemonConnection_cancelQuery___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E695DF20];
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "queryID")}];
  v3 = [v1 dictionaryWithObject:v4 forKey:@"QID"];
  [v2 _sendMessage:@"CloseQuery" object:0 info:v3 reply:&__block_literal_global_2];
}

- (void)activate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SPDaemonConnection_activate__block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  v3 = queue;
  v4 = qos_class_self();
  if (v4 < 0x1A)
  {
    v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  }

  else
  {
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, 0, block);
  }

  v6 = v5;
  dispatch_async(v3, v5);
}

void __30__SPDaemonConnection_activate__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    *buf = 67109120;
    v9 = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v3, v4, "SPDC Activate QOS: %d", buf, 8u);
  }

  v5 = _os_activity_create(&dword_1C81BF000, "activation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SPDaemonConnection_activate__block_invoke_120;
  block[3] = &unk_1E82F8F28;
  block[4] = *(a1 + 32);
  os_activity_apply(v5, block);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)activate:(id)activate
{
  activateCopy = activate;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__SPDaemonConnection_activate___block_invoke;
  v7[3] = &unk_1E82F8F50;
  v7[4] = self;
  v8 = activateCopy;
  v6 = activateCopy;
  dispatch_async(queue, v7);
}

void __31__SPDaemonConnection_activate___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    *buf = 67109120;
    v11 = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v3, v4, "SPDC Activate QOS: %d", buf, 8u);
  }

  v5 = _os_activity_create(&dword_1C81BF000, "activation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__SPDaemonConnection_activate___block_invoke_126;
  v8[3] = &unk_1E82F8F50;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  os_activity_apply(v5, v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __31__SPDaemonConnection_activate___block_invoke_126(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _sendInteractiveMessage:@"Activate" object:v2 info:0 reply:&__block_literal_global_128];
}

- (void)sendApps:(id)apps
{
  appsCopy = apps;
  v5 = _os_activity_create(&dword_1C81BF000, "apps", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__SPDaemonConnection_sendApps___block_invoke;
  v7[3] = &unk_1E82F8E68;
  v7[4] = self;
  v8 = appsCopy;
  v6 = appsCopy;
  os_activity_apply(v5, v7);
}

- (void)deactivate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SPDaemonConnection_deactivate__block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
  dispatch_async(self->_queue, v3);
}

void __32__SPDaemonConnection_deactivate__block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1C81BF000, "deactivation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SPDaemonConnection_deactivate__block_invoke_2;
  block[3] = &unk_1E82F8F28;
  block[4] = *(a1 + 32);
  os_activity_apply(v2, block);
}

- (void)preheat
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SPDaemonConnection_preheat__block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  dispatch_async(queue, block);
}

void __29__SPDaemonConnection_preheat__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    *buf = 67109120;
    v9 = qos_class_self();
    _os_log_impl(&dword_1C81BF000, v3, v4, "SPDC preheat QOS: %d", buf, 8u);
  }

  v5 = _os_activity_create(&dword_1C81BF000, "preheat", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SPDaemonConnection_preheat__block_invoke_137;
  block[3] = &unk_1E82F8F28;
  block[4] = *(a1 + 32);
  os_activity_apply(v5, block);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearInput:(id)input
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SPDaemonConnection_clearInput___block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  dispatch_async(queue, block);
}

void __33__SPDaemonConnection_clearInput___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1C81BF000, "queryClear", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SPDaemonConnection_clearInput___block_invoke_2;
  block[3] = &unk_1E82F8F28;
  block[4] = *(a1 + 32);
  os_activity_apply(v2, block);
}

- (void)retrieveFirstTimeExperienceTextWithReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SPDaemonConnection_retrieveFirstTimeExperienceTextWithReply___block_invoke;
  v7[3] = &unk_1E82F8FA0;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __63__SPDaemonConnection_retrieveFirstTimeExperienceTextWithReply___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1C81BF000, "fte", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SPDaemonConnection_retrieveFirstTimeExperienceTextWithReply___block_invoke_2;
  v4[3] = &unk_1E82F8FA0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  os_activity_apply(v2, v4);
}

void __63__SPDaemonConnection_retrieveFirstTimeExperienceTextWithReply___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__SPDaemonConnection_retrieveFirstTimeExperienceTextWithReply___block_invoke_3;
  v2[3] = &unk_1E82F8F78;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _sendMessage:@"RequestFTE" object:0 info:0 reply:v2];
}

void __63__SPDaemonConnection_retrieveFirstTimeExperienceTextWithReply___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"FTE"];
  (*(*(a1 + 32) + 16))();
}

- (void)requestParsecParametersWithReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SPDaemonConnection_requestParsecParametersWithReply___block_invoke;
  v7[3] = &unk_1E82F8FA0;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __55__SPDaemonConnection_requestParsecParametersWithReply___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1C81BF000, "parsecparams", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SPDaemonConnection_requestParsecParametersWithReply___block_invoke_2;
  v4[3] = &unk_1E82F8FA0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  os_activity_apply(v2, v4);
}

void __55__SPDaemonConnection_requestParsecParametersWithReply___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__SPDaemonConnection_requestParsecParametersWithReply___block_invoke_3;
  v2[3] = &unk_1E82F8F78;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _sendMessage:@"RequestParsecParameters" object:0 info:0 reply:v2];
}

void __55__SPDaemonConnection_requestParsecParametersWithReply___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"PP"];
  (*(*(a1 + 32) + 16))();
}

- (void)sendSFFeedback:(id)feedback type:(int64_t)type queryId:(unint64_t)id
{
  feedbackCopy = feedback;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__SPDaemonConnection_sendSFFeedback_type_queryId___block_invoke;
  v11[3] = &unk_1E82F8FC8;
  idCopy = id;
  typeCopy = type;
  v11[4] = self;
  v12 = feedbackCopy;
  v9 = feedbackCopy;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, v11);
  dispatch_async(self->_queue, v10);
}

void __50__SPDaemonConnection_sendSFFeedback_type_queryId___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1C81BF000, "sendFeedback", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SPDaemonConnection_sendSFFeedback_type_queryId___block_invoke_2;
  v4[3] = &unk_1E82F8FC8;
  v6 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  os_activity_apply(v2, v4);
}

void __50__SPDaemonConnection_sendSFFeedback_type_queryId___block_invoke_2(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v8[0] = @"QID";
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
    v8[1] = @"FBT";
    v9[0] = v2;
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
    v9[1] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else
  {
    v6 = @"FBT";
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
    v7 = v2;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  [*(a1 + 32) _sendFeedbackMessage:@"SendSFFeedback" object:*(a1 + 40) info:v4 reply:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (SPDaemonConnection)initWithDaemonName:(id)name qos:(unsigned int)qos
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = SPDaemonConnection;
  v7 = [(SPDaemonConnection *)&v19 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    v9 = *(v7 + 4);
    *(v7 + 4) = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, qos, 0);
    v12 = dispatch_queue_create("com.apple.search.daemonQueue", v11);
    v13 = *(v7 + 2);
    *(v7 + 2) = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, qos, 0);
    v16 = dispatch_queue_create("com.apple.search.XPCQueue", v15);
    v17 = *(v7 + 3);
    *(v7 + 3) = v16;

    dispatch_queue_set_specific(*(v7 + 3), "com.apple.search.XPCQueue", v7, 0);
    *(v7 + 5) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v7;
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[SPDaemonConnection sharedConnection];
  }

  v3 = sharedConnection_gDaemonConnection;

  return v3;
}

uint64_t __38__SPDaemonConnection_sharedConnection__block_invoke()
{
  v0 = objc_alloc_init(SPDaemonConnection);
  v1 = sharedConnection_gDaemonConnection;
  sharedConnection_gDaemonConnection = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)sharedBackgroundConnection
{
  if (sharedBackgroundConnection_onceToken != -1)
  {
    +[SPDaemonConnection sharedBackgroundConnection];
  }

  v3 = sharedBackgroundConnection_gDaemonConnection;

  return v3;
}

uint64_t __48__SPDaemonConnection_sharedBackgroundConnection__block_invoke()
{
  v0 = [[SPDaemonConnection alloc] initWithDaemonName:@"com.apple.searchd.background" qos:9];
  v1 = sharedBackgroundConnection_gDaemonConnection;
  sharedBackgroundConnection_gDaemonConnection = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)barrierOnXPC:(id)c
{
  connection = self->_connection;
  if (connection)
  {
    [(SPXPCConnection *)connection barrier:c];
  }

  else
  {
    (*(c + 2))(c);
  }
}

- (void)dealloc
{
  [(SPDaemonConnection *)self _resetConnection];
  connectionQueue = self->_connectionQueue;
  if (connectionQueue && dispatch_get_specific("com.apple.search.XPCQueue") != self)
  {
    dispatch_sync(connectionQueue, &__block_literal_global_176);
  }

  runningQueries = self->_runningQueries;
  if (runningQueries)
  {
    CFRelease(runningQueries);
  }

  v5.receiver = self;
  v5.super_class = SPDaemonConnection;
  [(SPDaemonConnection *)&v5 dealloc];
}

@end