@interface PKHostPlugIn
- (BOOL)beginUsingRequest:(id)request withSubsystemOptions:(id)options error:(id *)error;
- (BOOL)endUsingRequest:(id)request error:(id *)error;
- (BOOL)isSandboxed;
- (BOOL)loadExtensions:(id)extensions error:(id *)error;
- (BOOL)useBundle:(id)bundle error:(id *)error;
- (NSDictionary)extensionState;
- (NSString)description;
- (NSUUID)effectiveUUID;
- (NSUserDefaults)defaults;
- (PKHostPlugIn)initWithForm:(id)form host:(id)host;
- (PKPlugIn)supersededBy;
- (id)createInstanceWithUUID:(id)d;
- (int64_t)userElection;
- (void)_validatePersona;
- (void)addRequestUUID:(id)d;
- (void)beginUsingRequest:(id)request withSubsystemOptions:(id)options completion:(id)completion;
- (void)changeState:(unint64_t)state;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)endUsingRequest:(id)request completion:(id)completion;
- (void)preparePlugInUsingService:(id)service completion:(id)completion;
- (void)setBootstrapWithSubsystemOptions:(id)options;
- (void)setExtensionState:(id)state;
- (void)setHostPrincipal:(id)principal withProtocol:(id)protocol;
- (void)setUserElection:(int64_t)election;
- (void)startPlugInRequest:(id)request synchronously:(BOOL)synchronously subsystemOptions:(id)options completion:(id)completion;
- (void)unwind:(unint64_t)unwind force:(BOOL)force;
- (void)updateFromForm:(id)form host:(id)host;
@end

@implementation PKHostPlugIn

- (NSUUID)effectiveUUID
{
  multipleInstanceUUID = [(PKHostPlugIn *)self multipleInstanceUUID];

  if (multipleInstanceUUID)
  {
    [(PKHostPlugIn *)self multipleInstanceUUID];
  }

  else
  {
    [(PKPlugInCore *)self uuid];
  }
  v4 = ;

  return v4;
}

- (int64_t)userElection
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  _syncQueue = [(PKHostPlugIn *)self _syncQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C6894FFC;
  v12[3] = &unk_1E827F150;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(_syncQueue, v12);

  v4 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    v11 = v14[3];
    *buf = 138544386;
    v18 = uuid;
    v19 = 2112;
    v20 = identifier;
    v21 = 2112;
    v22 = version;
    v23 = 2080;
    v24 = "[PKHostPlugIn userElection]";
    v25 = 2048;
    v26 = v11;
    _os_log_debug_impl(&dword_1C6892000, v4, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] %s: %ld", buf, 0x34u);
  }

  v5 = v14[3];
  _Block_object_dispose(&v13, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_validatePersona
{
  v45 = *MEMORY[0x1E69E9840];
  if ([(PKPlugInCore *)self usesHostPersona])
  {
    current_persona = voucher_get_current_persona();
    if (current_persona != -1)
    {
      v43 = 0u;
      memset(v44, 0, sizeof(v44));
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      LODWORD(v24) = 1;
      v4 = current_persona;
      if ((kpersona_info() & 0x80000000) != 0)
      {
        v6 = *__error();
        v5 = pklog_handle_for_category(13);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          uuid = [(PKPlugInCore *)self uuid];
          multipleInstanceUUID = [(PKHostPlugIn *)self multipleInstanceUUID];
          identifier = [(PKPlugInCore *)self identifier];
          version = [(PKPlugInCore *)self version];
          v12 = 138544642;
          v13 = uuid;
          v14 = 2114;
          v15 = multipleInstanceUUID;
          v16 = 2112;
          v17 = identifier;
          v18 = 2112;
          v19 = version;
          v20 = 1024;
          v21 = v4;
          v22 = 2080;
          v23 = strerror(v6);
          _os_log_error_impl(&dword_1C6892000, v5, OS_LOG_TYPE_ERROR, "[u %{public}@:m %{public}@] [%@(%@)] Could not get current persona info for id:%d with error:%s", &v12, 0x3Au);
        }

        goto LABEL_10;
      }

      if (DWORD2(v24) != 2 && DWORD2(v24) != 5)
      {
        v5 = pklog_handle_for_category(13);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          sub_1C68B39AC();
        }

LABEL_10:
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (PKHostPlugIn)initWithForm:(id)form host:(id)host
{
  formCopy = form;
  hostCopy = host;
  external = [hostCopy external];
  v26.receiver = self;
  v26.super_class = PKHostPlugIn;
  v9 = [(PKPlugInCore *)&v26 initWithForm:formCopy externalProviders:external];

  if (v9)
  {
    [(PKHostPlugIn *)v9 setSourceForm:formCopy];
    [(PKHostPlugIn *)v9 setHost:hostCopy];
    v10 = [formCopy objectForKeyedSubscript:@"overrider"];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
      [(PKHostPlugIn *)v9 setSupersedingUUID:v11];
    }

    v12 = +[PKCapabilities frameworkQueueAttr];
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    identifier = [(PKPlugInCore *)v9 identifier];
    v15 = [v13 initWithFormat:@"PKPlugIn sync (%@)", identifier];

    v16 = dispatch_queue_create([v15 UTF8String], v12);
    [(PKHostPlugIn *)v9 set_syncQueue:v16];

    v17 = objc_alloc(MEMORY[0x1E696AEC0]);
    identifier2 = [(PKPlugInCore *)v9 identifier];
    v19 = [v17 initWithFormat:@"PKPlugIn start (%@)", identifier2];

    v20 = dispatch_queue_create([v19 UTF8String], v12);
    [(PKHostPlugIn *)v9 set_startQueue:v20];

    v21 = [formCopy objectForKeyedSubscript:@"extensions"];
    [(PKHostPlugIn *)v9 setDiscoveryExtensions:v21];

    v22 = [formCopy objectForKeyedSubscript:@"service-extension"];
    [(PKHostPlugIn *)v9 setServiceExtension:v22];

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    requests = v9->_requests;
    v9->_requests = v23;
  }

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = PKHostPlugIn;
  v4 = [(PKPlugInCore *)&v8 description];
  multipleInstanceUUID = [(PKHostPlugIn *)self multipleInstanceUUID];
  v6 = [v3 initWithFormat:@"<id<PKPlugIn>: %p; core = %@, instance = [%@], state = %lu, useCount = %d>", self, v4, multipleInstanceUUID, -[PKHostPlugIn state](self, "state"), -[PKHostPlugIn useCount](self, "useCount")];

  return v6;
}

- (NSUserDefaults)defaults
{
  if (!self->_defaults)
  {
    v3 = [[PKHostDefaults alloc] initWithPlugIn:self];
    defaults = self->_defaults;
    self->_defaults = &v3->super;
  }

  v5 = self->_defaults;

  return v5;
}

- (void)setUserElection:(int64_t)election
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    *buf = 138544386;
    v14 = uuid;
    v15 = 2112;
    v16 = identifier;
    v17 = 2112;
    v18 = version;
    v19 = 2080;
    v20 = "[PKHostPlugIn setUserElection:]";
    v21 = 2048;
    electionCopy = election;
    _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] %s: %ld", buf, 0x34u);
  }

  _syncQueue = [(PKHostPlugIn *)self _syncQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C68984F8;
  v12[3] = &unk_1E827F178;
  v12[4] = self;
  v12[5] = election;
  dispatch_sync(_syncQueue, v12);

  host = [(PKHostPlugIn *)self host];
  [host setElection:election forPlugIn:self];

  v11 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)extensionState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1C6893694;
  v11 = sub_1C689454C;
  v12 = 0;
  _syncQueue = [(PKHostPlugIn *)self _syncQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1C6898698;
  v6[3] = &unk_1E827F150;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_syncQueue, v6);

  if (!v8[5])
  {
    v8[5] = MEMORY[0x1E695E0F8];
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setExtensionState:(id)state
{
  stateCopy = state;
  _syncQueue = [(PKHostPlugIn *)self _syncQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = sub_1C68987D8;
  v11 = &unk_1E827F1A0;
  selfCopy = self;
  v13 = stateCopy;
  v6 = stateCopy;
  dispatch_sync(_syncQueue, &v8);

  v7 = [(PKHostPlugIn *)self host:v8];
  [v7 setExtensionState:v6 forPlugIn:self];
}

- (void)updateFromForm:(id)form host:(id)host
{
  v11.receiver = self;
  v11.super_class = PKHostPlugIn;
  hostCopy = host;
  [(PKPlugInCore *)&v11 updateFromForm:form];
  v7 = [(PKHostPlugIn *)self sourceForm:v11.receiver];
  annotations = [(PKPlugInCore *)self annotations];
  v9 = [annotations copy];
  v10 = [v7 dictionaryChanging:@"annotations" to:v9];
  [(PKHostPlugIn *)self setSourceForm:v10];

  [(PKHostPlugIn *)self setHost:hostCopy];
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  userInfo = [invocationCopy userInfo];
  v8 = [userInfo objectForKey:*MEMORY[0x1E696B160]];

  v9 = [v8 objectForKeyedSubscript:@"synchronous"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    [invocationCopy invoke];
  }

  else
  {
    [invocationCopy retainArguments];
    _replyQueue = [(PKHostPlugIn *)self _replyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1C6898A18;
    block[3] = &unk_1E827F1C8;
    v13 = invocationCopy;
    dispatch_async(_replyQueue, block);
  }
}

- (void)setHostPrincipal:(id)principal withProtocol:(id)protocol
{
  principalCopy = principal;
  protocolCopy = protocol;
  plugInPrincipal = [(PKHostPlugIn *)self plugInPrincipal];

  if (!plugInPrincipal)
  {
    [(PKHostPlugIn *)self setQueuedHostPrincipal:principalCopy];
    [(PKHostPlugIn *)self setQueuedHostProtocol:protocolCopy];
  }
}

- (id)createInstanceWithUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    dCopy = [MEMORY[0x1E696AFB0] UUID];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1C6893694;
  v16 = sub_1C689454C;
  v17 = 0;
  _syncQueue = [(PKHostPlugIn *)self _syncQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1C6898C30;
  v11[3] = &unk_1E827F150;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(_syncQueue, v11);

  v6 = [PKHostPlugIn alloc];
  v7 = v13[5];
  host = [(PKHostPlugIn *)self host];
  v9 = [(PKHostPlugIn *)v6 initWithForm:v7 host:host];

  [(PKHostPlugIn *)v9 setMultipleInstanceUUID:dCopy];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)beginUsingRequest:(id)request withSubsystemOptions:(id)options completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  completionCopy = completion;
  [(PKHostPlugIn *)self _validatePersona];
  v11 = PKGetThreadPriority();
  v12 = pklog_handle_for_category(0);
  v13 = os_signpost_id_generate(v12);

  v14 = pklog_handle_for_category(7);
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    identifier = [(PKPlugInCore *)self identifier];
    uuid = [(PKPlugInCore *)self uuid];
    *buf = 138478339;
    v36 = identifier;
    v37 = 2114;
    v38 = uuid;
    v39 = 1026;
    v40 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "HostBeginUsing", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@  priority=%{public, signpost.description:attribute}d ", buf, 0x1Cu);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1C6898F68;
  v32[3] = &unk_1E827F1F0;
  v33 = completionCopy;
  v34 = v13;
  v18 = completionCopy;
  v19 = MEMORY[0x1C6960190](v32);
  v20 = _CFXPCCreateXPCObjectFromCFObject();
  v21 = v20;
  if (optionsCopy && !v20)
  {
    v22 = pklog_handle_for_category(8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B3A68();
    }
  }

  _startQueue = [(PKHostPlugIn *)self _startQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1C6899050;
  v28[3] = &unk_1E827F218;
  v28[4] = self;
  v29 = requestCopy;
  v30 = v21;
  v31 = v19;
  v24 = v19;
  v25 = v21;
  v26 = requestCopy;
  dispatch_async(_startQueue, v28);

  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)beginUsingRequest:(id)request withSubsystemOptions:(id)options error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  [(PKHostPlugIn *)self _validatePersona];
  v10 = PKGetThreadPriority();
  v11 = pklog_handle_for_category(0);
  v12 = os_signpost_id_generate(v11);

  v13 = pklog_handle_for_category(7);
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    identifier = [(PKPlugInCore *)self identifier];
    uuid = [(PKPlugInCore *)self uuid];
    *buf = 138478339;
    *&buf[4] = identifier;
    *&buf[12] = 2114;
    *&buf[14] = uuid;
    *&buf[22] = 1026;
    LODWORD(v36) = v10;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "HostBeginUsing", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@  priority=%{public, signpost.description:attribute}d ", buf, 0x1Cu);
  }

  v17 = _CFXPCCreateXPCObjectFromCFObject();
  v18 = v17;
  if (optionsCopy && !v17)
  {
    v19 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B3B3C(optionsCopy, v19);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = sub_1C6893694;
  v37 = sub_1C689454C;
  v38 = 0;
  _startQueue = [(PKHostPlugIn *)self _startQueue];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1C68993C8;
  v29[3] = &unk_1E827F268;
  v29[4] = self;
  v21 = requestCopy;
  v30 = v21;
  v22 = v18;
  v31 = v22;
  v32 = buf;
  dispatch_sync(_startQueue, v29);

  v23 = *(*&buf[8] + 40);
  if (error && v23)
  {
    v24 = v23;
    *error = v23;
  }

  v25 = pklog_handle_for_category(7);
  v26 = v25;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *v33 = 67240192;
    v34 = v23 == 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v26, OS_SIGNPOST_INTERVAL_END, v12, "HostBeginUsing", " success=%{public, signpost.description:attribute}d ", v33, 8u);
  }

  _Block_object_dispose(buf, 8);
  v27 = *MEMORY[0x1E69E9840];
  return v23 == 0;
}

- (void)addRequestUUID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    _syncQueue = [(PKHostPlugIn *)self _syncQueue];
    dispatch_assert_queue_V2(_syncQueue);

    v6 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      uuid = [(PKPlugInCore *)self uuid];
      multipleInstanceUUID = [(PKHostPlugIn *)self multipleInstanceUUID];
      identifier = [(PKPlugInCore *)self identifier];
      version = [(PKPlugInCore *)self version];
      v20 = 138544386;
      *v21 = uuid;
      *&v21[8] = 2114;
      *&v21[10] = multipleInstanceUUID;
      *&v21[18] = 2112;
      v22 = identifier;
      *v23 = 2112;
      *&v23[2] = version;
      *&v23[10] = 2112;
      *&v23[12] = dCopy;
      _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_INFO, "[u %{public}@:m %{public}@] [%@(%@)] adding request: %@", &v20, 0x34u);
    }

    requests = [(PKHostPlugIn *)self requests];
    [requests addObject:dCopy];

    v12 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1C68B3BB4(self, v12, v13, v14, v15, v16, v17, v18, v20, *&v21[4], *&v21[12], v22, *v23, *&v23[8], *&v23[16], v24, v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)startPlugInRequest:(id)request synchronously:(BOOL)synchronously subsystemOptions:(id)options completion:(id)completion
{
  synchronouslyCopy = synchronously;
  v153[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  completionCopy = completion;
  _startQueue = [(PKHostPlugIn *)self _startQueue];
  dispatch_assert_queue_V2(_startQueue);

  _replyQueue = [(PKHostPlugIn *)self _replyQueue];

  if (!_replyQueue)
  {
    v14 = MEMORY[0x1E696AEC0];
    identifier = [(PKPlugInCore *)self identifier];
    v16 = [v14 stringWithFormat:@"PlugInKit reply:%@", identifier];
    uTF8String = [v16 UTF8String];
    v18 = +[PKCapabilities frameworkQueueAttr];
    v19 = dispatch_queue_create(uTF8String, v18);
    [(PKHostPlugIn *)self set_replyQueue:v19];
  }

  uuid = [requestCopy uuid];
  launchPersona = [requestCopy launchPersona];
  host = [(PKHostPlugIn *)self host];
  v113 = 0;
  v114 = &v113;
  v115 = 0x2020000000;
  v116 = 0;
  _syncQueue = [(PKHostPlugIn *)self _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C689A380;
  block[3] = &unk_1E827F290;
  block[4] = self;
  v23 = uuid;
  v110 = v23;
  v24 = completionCopy;
  v111 = v24;
  v112 = &v113;
  dispatch_sync(_syncQueue, block);

  if (*(v114 + 24) == 1)
  {
    diagnose = pklog_handle_for_category(7);
    if (os_signpost_enabled(diagnose))
    {
      identifier2 = [(PKPlugInCore *)self identifier];
      uuid2 = [(PKPlugInCore *)self uuid];
      useCount = [(PKHostPlugIn *)self useCount];
      *buf = 138478339;
      *&buf[4] = identifier2;
      *&buf[12] = 2114;
      *&buf[14] = uuid2;
      *&buf[22] = 2050;
      *&buf[24] = useCount;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, diagnose, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HostStartBypass", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@  count=%{public, signpost.description:attribute}lu ", buf, 0x20u);
    }

    goto LABEL_29;
  }

  diagnose = [(PKPlugInCore *)self diagnose];
  if (!diagnose)
  {
    v30 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      uuid3 = [(PKPlugInCore *)self uuid];
      multipleInstanceUUID = [(PKHostPlugIn *)self multipleInstanceUUID];
      identifier3 = [(PKPlugInCore *)self identifier];
      version = [(PKPlugInCore *)self version];
      *buf = 138544130;
      *&buf[4] = uuid3;
      *&buf[12] = 2114;
      *&buf[14] = multipleInstanceUUID;
      *&buf[22] = 2112;
      *&buf[24] = identifier3;
      LOWORD(v136[0]) = 2112;
      *(v136 + 2) = version;
      _os_log_debug_impl(&dword_1C6892000, v30, OS_LOG_TYPE_DEBUG, "[u %{public}@:m %{public}@] [%@(%@)] suspending startQueue", buf, 0x2Au);
    }

    _startQueue2 = [(PKHostPlugIn *)self _startQueue];
    dispatch_suspend(_startQueue2);

    v107[0] = 0;
    v107[1] = v107;
    v107[2] = 0x3032000000;
    v107[3] = sub_1C6893694;
    v107[4] = sub_1C689454C;
    v108 = 0;
    objc_initWeak(&location, self);
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = sub_1C689A64C;
    v101[3] = &unk_1E827F2B8;
    objc_copyWeak(&v105, &location);
    v76 = host;
    v102 = v76;
    v103 = v24;
    v104 = v107;
    v80 = MEMORY[0x1C6960190](v101);
    [(PKHostPlugIn *)self setTerminating:0];
    v32 = [v76 activatePlugIn:self];
    v82 = v32;
    if (v32 == self)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PKHostPlugIn.m" lineNumber:521 description:{@"inactive/activating self %@ not in active dictionary", self}];

      if (v82)
      {
        goto LABEL_14;
      }
    }

    else if (v32)
    {
LABEL_14:
      v33 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        uuid4 = [(PKPlugInCore *)self uuid];
        multipleInstanceUUID2 = [(PKHostPlugIn *)self multipleInstanceUUID];
        identifier4 = [(PKPlugInCore *)self identifier];
        version2 = [(PKPlugInCore *)self version];
        uuid5 = [(PKPlugInCore *)v82 uuid];
        multipleInstanceUUID3 = [(PKHostPlugIn *)v82 multipleInstanceUUID];
        identifier5 = [(PKPlugInCore *)v82 identifier];
        version3 = [(PKPlugInCore *)v82 version];
        *buf = 138545154;
        *&buf[4] = uuid4;
        *&buf[12] = 2114;
        *&buf[14] = multipleInstanceUUID2;
        *&buf[22] = 2112;
        *&buf[24] = identifier4;
        LOWORD(v136[0]) = 2112;
        *(v136 + 2) = version2;
        HIWORD(v136[2]) = 2114;
        *&v136[3] = uuid5;
        LOWORD(v136[5]) = 2114;
        *(&v136[5] + 2) = multipleInstanceUUID3;
        HIWORD(v136[7]) = 2112;
        v137[0] = identifier5;
        LOWORD(v137[1]) = 2112;
        *(&v137[1] + 2) = version3;
        _os_log_error_impl(&dword_1C6892000, v33, OS_LOG_TYPE_ERROR, "[u %{public}@:m %{public}@] [%@(%@)] Failed to start plugin; different plugin with same identifier already active: [u %{public}@:m %{public}@] [%@(%@)] ", buf, 0x52u);
      }

      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"other version in use: %@", v82];
      v35 = pkError(16, v34);
      (v80)[2](v80, v35, 0);

LABEL_28:
      objc_destroyWeak(&v105);
      objc_destroyWeak(&location);
      _Block_object_dispose(v107, 8);

      goto LABEL_29;
    }

    _syncQueue2 = [(PKHostPlugIn *)self _syncQueue];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = sub_1C689A948;
    v100[3] = &unk_1E827F1C8;
    v100[4] = self;
    dispatch_sync(_syncQueue2, v100);

    MEMORY[0x1C6960710]();
    v75 = launchPersona;
    v153[0] = self;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:1];
    v151 = 0u;
    memset(v152, 0, sizeof(v152));
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v138 = 0u;
    memset(v137, 0, sizeof(v137));
    memset(v136, 0, sizeof(v136));
    memset(buf, 0, sizeof(buf));
    v98 = 0;
    v99 = 0;
    current_persona = voucher_get_current_persona();
    v46 = current_persona;
    memset(buf, 0, sizeof(buf));
    memset(v136, 0, sizeof(v136));
    memset(v137, 0, sizeof(v137));
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    memset(v152, 0, sizeof(v152));
    *buf = 1;
    pklog_get_persona_type_and_name(current_persona, buf, &v99, &v98);
    v47 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v68 = v46;
      uuid6 = [(PKPlugInCore *)self uuid];
      multipleInstanceUUID4 = [(PKHostPlugIn *)self multipleInstanceUUID];
      identifier6 = [(PKPlugInCore *)self identifier];
      version4 = [(PKPlugInCore *)self version];
      v50 = geteuid();
      v51 = getuid();
      *v117 = 138545410;
      v118 = uuid6;
      v119 = 2114;
      v120 = multipleInstanceUUID4;
      v121 = 2112;
      v122 = identifier6;
      v123 = 2112;
      v124 = version4;
      v125 = 1024;
      v126 = v50;
      v127 = 1024;
      v128 = v51;
      v129 = 1024;
      v130 = v68;
      v131 = 2080;
      v132 = v99;
      v133 = 2080;
      v134 = v98;
      _os_log_impl(&dword_1C6892000, v47, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] Ready plugins sent as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", v117, 0x50u);
    }

    v52 = pklog_handle_for_category(7);
    v53 = os_signpost_id_make_with_pointer(v52, self);

    v54 = pklog_handle_for_category(7);
    v55 = v54;
    if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      identifier7 = [(PKPlugInCore *)self identifier];
      uuid7 = [(PKPlugInCore *)self uuid];
      *buf = 138478083;
      *&buf[4] = identifier7;
      *&buf[12] = 2114;
      *&buf[14] = uuid7;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v55, OS_SIGNPOST_INTERVAL_BEGIN, v53, "HostToDaemonReadyPlugIns", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@ ", buf, 0x16u);
    }

    v58 = objc_alloc(MEMORY[0x1E696B0B8]);
    v59 = [(PKPlugInCore *)self infoKey:@"CFBundleIdentifier"];
    v60 = [v58 initWithServiceName:v59];

    [(PKHostPlugIn *)self setPluginConnection:v60];
    [(PKHostPlugIn *)self setBootstrapWithSubsystemOptions:optionsCopy];
    preferredLanguages = [(PKHostPlugIn *)self preferredLanguages];
    preferredLanguages2 = preferredLanguages;
    if (!preferredLanguages)
    {
      preferredLanguages2 = [MEMORY[0x1E695DF58] preferredLanguages];
    }

    v63 = preferredLanguages2;
    if (!preferredLanguages)
    {
    }

    environment = [(PKHostPlugIn *)self environment];
    sandboxProfile = [(PKHostPlugIn *)self sandboxProfile];
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = sub_1C689A954;
    v89[3] = &unk_1E827F3D0;
    v96 = v53;
    v89[4] = self;
    v94 = v80;
    v90 = v76;
    v95 = v107;
    v79 = v60;
    v91 = v79;
    v66 = v73;
    v92 = v66;
    v97 = synchronouslyCopy;
    v93 = v23;
    launchPersona = v75;
    [v90 readyPlugIns:v66 synchronously:synchronouslyCopy environment:environment languages:v63 persona:v75 sandbox:sandboxProfile ready:v89];

    goto LABEL_28;
  }

  v29 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    uuid8 = [(PKPlugInCore *)self uuid];
    multipleInstanceUUID5 = [(PKHostPlugIn *)self multipleInstanceUUID];
    identifier8 = [(PKPlugInCore *)self identifier];
    version5 = [(PKPlugInCore *)self version];
    *buf = 138544386;
    *&buf[4] = uuid8;
    *&buf[12] = 2114;
    *&buf[14] = multipleInstanceUUID5;
    *&buf[22] = 2112;
    *&buf[24] = identifier8;
    LOWORD(v136[0]) = 2112;
    *(v136 + 2) = version5;
    HIWORD(v136[2]) = 2112;
    *&v136[3] = diagnose;
    _os_log_error_impl(&dword_1C6892000, v29, OS_LOG_TYPE_ERROR, "[u %{public}@:m %{public}@] [%@(%@)] Failed to start plugin; failed pre-screen: %@", buf, 0x34u);
  }

  (*(v24 + 2))(v24, diagnose);
LABEL_29:

  _Block_object_dispose(&v113, 8);
  v67 = *MEMORY[0x1E69E9840];
}

- (void)preparePlugInUsingService:(id)service completion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  completionCopy = completion;
  queuedHostProtocol = [(PKHostPlugIn *)self queuedHostProtocol];

  if (queuedHostProtocol)
  {
    v9 = MEMORY[0x1E696AEC0];
    queuedHostProtocol2 = [(PKHostPlugIn *)self queuedHostProtocol];
    queuedHostProtocol = [v9 stringWithUTF8String:protocol_getName(queuedHostProtocol2)];

    v11 = MEMORY[0x1E696B0D0];
    queuedHostProtocol3 = [(PKHostPlugIn *)self queuedHostProtocol];
    v13 = [v11 interfaceWithProtocol:queuedHostProtocol3];

    pluginConnection = [(PKHostPlugIn *)self pluginConnection];
    remoteObjectInterface = [pluginConnection remoteObjectInterface];
    [remoteObjectInterface setInterface:v13 forSelector:sel_beginUsingPlugIn_ready_ argumentIndex:0 ofReply:0];
  }

  hubProtocolVersion = [(PKPlugInCore *)self hubProtocolVersion];
  if (hubProtocolVersion == 2)
  {
    v23 = objc_opt_new();
    identifier = [(PKPlugInCore *)self identifier];
    [v23 setObject:identifier forKeyedSubscript:@"identifier"];

    uuid = [(PKPlugInCore *)self uuid];
    uUIDString = [uuid UUIDString];
    [v23 setObject:uUIDString forKeyedSubscript:@"uuid"];

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPlugInCore hubProtocolVersion](self, "hubProtocolVersion")}];
    [v23 setObject:v27 forKeyedSubscript:@"version"];

    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPlugInCore isRBManaged](self, "isRBManaged")}];
    [v23 setObject:v28 forKeyedSubscript:@"isRBManaged"];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PKPlugInCore extensionPointPlatform](self, "extensionPointPlatform")}];
    [v23 setObject:v29 forKeyedSubscript:@"epPlatform"];

    if (queuedHostProtocol)
    {
      [v23 setObject:queuedHostProtocol forKeyedSubscript:@"hostProtocol"];
    }

    v30 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(PKPlugInCore *)self uuid];
      identifier2 = [(PKPlugInCore *)self identifier];
      version = [(PKPlugInCore *)self version];
      isRBManaged = [(PKPlugInCore *)self isRBManaged];
      v35 = "non-";
      *buf = 138544130;
      v42 = uuid2;
      v43 = 2112;
      v44 = identifier2;
      if (isRBManaged)
      {
        v35 = &unk_1C68BC22E;
      }

      v45 = 2112;
      v46 = version;
      v47 = 2080;
      v48 = v35;
      _os_log_impl(&dword_1C6892000, v30, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Sending prepareUsing to %smanaged extension; this should launch it if not already running.", buf, 0x2Au);
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1C689D46C;
    v37[3] = &unk_1E827F420;
    v38 = completionCopy;
    [serviceCopy prepareUsing:v23 reply:v37];
  }

  else if (hubProtocolVersion == 1)
  {
    v17 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [(PKPlugInCore *)self uuid];
      multipleInstanceUUID = [(PKHostPlugIn *)self multipleInstanceUUID];
      identifier3 = [(PKPlugInCore *)self identifier];
      version2 = [(PKPlugInCore *)self version];
      *buf = 138544130;
      v42 = uuid3;
      v43 = 2114;
      v44 = multipleInstanceUUID;
      v45 = 2112;
      v46 = identifier3;
      v47 = 2112;
      v48 = version2;
      _os_log_impl(&dword_1C6892000, v17, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] Sending legacy prepareUsingPlugIn to extension; this should launch it if not already running.", buf, 0x2Au);
    }

    identifier4 = [(PKPlugInCore *)self identifier];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_1C689D3D8;
    v39[3] = &unk_1E827F3F8;
    v40 = completionCopy;
    [serviceCopy prepareUsingPlugIn:identifier4 hostProtocol:queuedHostProtocol reply:v39];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"unexpected hub protocol version:%ld", -[PKPlugInCore hubProtocolVersion](self, "hubProtocolVersion")}];
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)setBootstrapWithSubsystemOptions:(id)options
{
  value = options;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = getenv("CLASSIC");
  if (v5)
  {
    xpc_dictionary_set_string(v4, "CLASSIC", v5);
  }

  if (value)
  {
    xpc_dictionary_set_value(v4, "SubsystemOptions", value);
  }

  if (xpc_dictionary_get_count(v4))
  {
    pluginConnection = [(PKHostPlugIn *)self pluginConnection];
    _xpcConnection = [pluginConnection _xpcConnection];
    xpc_connection_set_bootstrap();
  }
}

- (BOOL)loadExtensions:(id)extensions error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  v6 = extensionsCopy;
  if (extensionsCopy && [extensionsCopy count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = *v25;
      do
      {
        v10 = 0;
        if (v8 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v8;
        }

        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v24 + 1) + 8 * v10);
          v15 = [PKSandboxExtension alloc];
          external = [(PKPlugInCore *)self external];
          sandbox = [external sandbox];
          v18 = [(PKSandboxExtension *)v15 initWithExtension:v14 provider:sandbox];

          sandboxExtensions = [(PKHostPlugIn *)self sandboxExtensions];
          LOBYTE(external) = [sandboxExtensions containsObject:v18];

          if ((external & 1) == 0)
          {
            [(PKSandboxExtension *)v18 consume];
            sandboxExtensions2 = [(PKHostPlugIn *)self sandboxExtensions];

            if (sandboxExtensions2)
            {
              sandboxExtensions3 = [(PKHostPlugIn *)self sandboxExtensions];
              v13 = [sandboxExtensions3 arrayByAddingObject:v18];
              [(PKHostPlugIn *)self setSandboxExtensions:v13];
            }

            else
            {
              sandboxExtensions3 = [MEMORY[0x1E695DEC8] arrayWithObject:v18];
              [(PKHostPlugIn *)self setSandboxExtensions:sandboxExtensions3];
            }
          }

          ++v10;
        }

        while (v11 != v10);
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v6 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)isSandboxed
{
  if (qword_1EC1D1D38 != -1)
  {
    sub_1C68B4F38();
  }

  return byte_1EC1D1D30;
}

- (BOOL)useBundle:(id)bundle error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  discoveryExtensions = [(PKHostPlugIn *)self discoveryExtensions];
  if (discoveryExtensions)
  {
    discoveryExtensions2 = [(PKHostPlugIn *)self discoveryExtensions];
    v9 = [discoveryExtensions2 count] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1C68B4F4C();
    }

    discoveryExtensions3 = [(PKHostPlugIn *)self discoveryExtensions];
    v12 = discoveryExtensions3;
    if (bundleCopy)
    {
      v13 = [discoveryExtensions3 objectForKeyedSubscript:bundleCopy];

      if (v13)
      {
        v26[0] = v13;
        uuid = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
        LOBYTE(error) = [(PKHostPlugIn *)self loadExtensions:uuid error:error];
      }

      else
      {
        if (!error)
        {
LABEL_16:

          goto LABEL_17;
        }

        uuid = [(PKPlugInCore *)self uuid];
        multipleInstanceUUID = [(PKHostPlugIn *)self multipleInstanceUUID];
        identifier = [(PKPlugInCore *)self identifier];
        version = [(PKPlugInCore *)self version];
        *error = pkErrorf(11, @"[u %@:m %@] [%@(%@)] sandbox extensions for relative path [%@] not vended by plugin", v17, v18, v19, v20, v21, v22, uuid);

        LOBYTE(error) = 0;
      }

      v12 = v13;
    }

    else
    {
      uuid = [discoveryExtensions3 allValues];
      LOBYTE(error) = [(PKHostPlugIn *)self loadExtensions:uuid error:error];
    }

    v13 = v12;
    goto LABEL_16;
  }

  LOBYTE(error) = 1;
LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
  return error;
}

- (void)endUsingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1C6893694;
  v19 = sub_1C689454C;
  v20 = 0;
  uuid = [requestCopy uuid];
  _syncQueue = [(PKHostPlugIn *)self _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C689DB5C;
  block[3] = &unk_1E827F468;
  v10 = uuid;
  v12 = v10;
  selfCopy = self;
  v14 = &v15;
  dispatch_sync(_syncQueue, block);

  completionCopy[2](completionCopy, v16[5]);
  _Block_object_dispose(&v15, 8);
}

- (BOOL)endUsingRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1C6893694;
  v14 = sub_1C689454C;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1C689DFAC;
  v9[3] = &unk_1E827F240;
  v9[4] = &v10;
  [(PKHostPlugIn *)self endUsingRequest:requestCopy completion:v9];
  if (error)
  {
    *error = v11[5];
  }

  v7 = v11[5] == 0;
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)unwind:(unint64_t)unwind force:(BOOL)force
{
  v53 = *MEMORY[0x1E69E9840];
  if (!force)
  {
    if ([(PKHostPlugIn *)self state]!= 1)
    {
      goto LABEL_32;
    }

    if (!force && ![(PKHostPlugIn *)self useCount])
    {
      sub_1C68B50F4();
    }
  }

  if (unwind != 2)
  {
    v6 = [(PKHostPlugIn *)self useCount]- 1;
    [(PKHostPlugIn *)self setUseCount:v6];
    if (v6)
    {
      v7 = pklog_handle_for_category(7);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
LABEL_31:

        goto LABEL_32;
      }

      uuid = [(PKPlugInCore *)self uuid];
      multipleInstanceUUID = [(PKHostPlugIn *)self multipleInstanceUUID];
      identifier = [(PKPlugInCore *)self identifier];
      version = [(PKPlugInCore *)self version];
      *buf = 138544386;
      v43 = uuid;
      v44 = 2114;
      v45 = multipleInstanceUUID;
      v46 = 2112;
      v47 = identifier;
      v48 = 2112;
      v49 = version;
      v50 = 1024;
      useCount = [(PKHostPlugIn *)self useCount];
      _os_log_impl(&dword_1C6892000, v7, OS_LOG_TYPE_INFO, "[u %{public}@:m %{public}@] [%@(%@)] plugin still active after removing one ref count, remaining = %u", buf, 0x30u);
      goto LABEL_23;
    }
  }

  v12 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uuid2 = [(PKPlugInCore *)self uuid];
    multipleInstanceUUID2 = [(PKHostPlugIn *)self multipleInstanceUUID];
    identifier2 = [(PKPlugInCore *)self identifier];
    version2 = [(PKPlugInCore *)self version];
    *buf = 138544130;
    v43 = uuid2;
    v44 = 2114;
    v45 = multipleInstanceUUID2;
    v46 = 2112;
    v47 = identifier2;
    v48 = 2112;
    v49 = version2;
    _os_log_impl(&dword_1C6892000, v12, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] all extension sessions ended", buf, 0x2Au);
  }

  [(PKHostPlugIn *)self messageTraceUsage];
  host = [(PKHostPlugIn *)self host];
  [host deactivatePlugIn:self];

  if (unwind != 2)
  {
    service = [(PKHostPlugIn *)self service];
    [service shutdownPlugIn];
  }

  [(PKHostPlugIn *)self changeState:unwind];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  sandboxExtensions = [(PKHostPlugIn *)self sandboxExtensions];
  v20 = [sandboxExtensions countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v20)
  {
    v21 = *v39;
    do
    {
      v22 = 0;
      if (v20 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v20;
      }

      do
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(sandboxExtensions);
        }

        [*(*(&v38 + 1) + 8 * v22++) expel];
      }

      while (v23 != v22);
      v20 = [sandboxExtensions countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v20);
  }

  [(PKHostPlugIn *)self setSandboxExtensions:0];
  [(PKHostPlugIn *)self setUseCount:0];
  [(PKHostPlugIn *)self setPlugInPrincipal:0];
  [(PKHostPlugIn *)self setEmbeddedPrincipal:0];
  [(PKHostPlugIn *)self setService:0];
  [(PKHostPlugIn *)self setSyncService:0];
  pluginConnection = [(PKHostPlugIn *)self pluginConnection];
  [pluginConnection invalidate];

  [(PKHostPlugIn *)self setPluginConnection:0];
  multipleInstanceUUID3 = [(PKHostPlugIn *)self multipleInstanceUUID];
  [(PKHostPlugIn *)self changeState:4 * (multipleInstanceUUID3 != 0)];

  launchPersonas = [(PKPlugInCore *)self launchPersonas];
  v27 = [launchPersonas count];

  if (v27 >= 2)
  {
    v28 = [PKManager alloc];
    external = [(PKPlugInCore *)self external];
    v30 = [(PKManager *)v28 initWithExternalProviders:external];
    v31 = [(PKPlugInCore *)self url];
    v37 = 0;
    v32 = [(PKManager *)v30 terminatePlugInAtURL:v31 withError:&v37];
    v7 = v37;

    v33 = pklog_handle_for_category(7);
    uuid = v33;
    if (!v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B5120(self, v7, uuid);
      }

      goto LABEL_30;
    }

    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
LABEL_30:

      goto LABEL_31;
    }

    multipleInstanceUUID = [(PKPlugInCore *)self uuid];
    identifier = [(PKHostPlugIn *)self multipleInstanceUUID];
    version = [(PKPlugInCore *)self identifier];
    version3 = [(PKPlugInCore *)self version];
    *buf = 138544130;
    v43 = multipleInstanceUUID;
    v44 = 2114;
    v45 = identifier;
    v46 = 2112;
    v47 = version;
    v48 = 2112;
    v49 = version3;
    _os_log_impl(&dword_1C6892000, uuid, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] terminated multi-persona plugin", buf, 0x2Au);

LABEL_23:
    goto LABEL_30;
  }

LABEL_32:
  v36 = *MEMORY[0x1E69E9840];
}

- (void)changeState:(unint64_t)state
{
  v26 = *MEMORY[0x1E69E9840];
  _syncQueue = [(PKHostPlugIn *)self _syncQueue];
  dispatch_assert_queue_V2(_syncQueue);

  v6 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    uuid = [(PKPlugInCore *)self uuid];
    multipleInstanceUUID = [(PKHostPlugIn *)self multipleInstanceUUID];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    *buf = 138544386;
    v17 = uuid;
    v18 = 2114;
    v19 = multipleInstanceUUID;
    v20 = 2112;
    v21 = identifier;
    v22 = 2112;
    v23 = version;
    v24 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_INFO, "[u %{public}@:m %{public}@] [%@(%@)] state := %lu", buf, 0x34u);
  }

  if ([(PKHostPlugIn *)self state]!= state)
  {
    [(PKHostPlugIn *)self setState:state];
    notificationBlock = [(PKHostPlugIn *)self notificationBlock];
    if (notificationBlock)
    {
      _replyQueue = [(PKHostPlugIn *)self _replyQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1C689E700;
      v14[3] = &unk_1E827F490;
      v14[4] = self;
      v15 = notificationBlock;
      dispatch_async(_replyQueue, v14);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (PKPlugIn)supersededBy
{
  WeakRetained = objc_loadWeakRetained(&self->_supersededBy);

  return WeakRetained;
}

@end