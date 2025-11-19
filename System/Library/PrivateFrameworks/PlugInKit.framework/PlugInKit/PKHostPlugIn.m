@interface PKHostPlugIn
- (BOOL)beginUsingRequest:(id)a3 withSubsystemOptions:(id)a4 error:(id *)a5;
- (BOOL)endUsingRequest:(id)a3 error:(id *)a4;
- (BOOL)isSandboxed;
- (BOOL)loadExtensions:(id)a3 error:(id *)a4;
- (BOOL)useBundle:(id)a3 error:(id *)a4;
- (NSDictionary)extensionState;
- (NSString)description;
- (NSUUID)effectiveUUID;
- (NSUserDefaults)defaults;
- (PKHostPlugIn)initWithForm:(id)a3 host:(id)a4;
- (PKPlugIn)supersededBy;
- (id)createInstanceWithUUID:(id)a3;
- (int64_t)userElection;
- (void)_validatePersona;
- (void)addRequestUUID:(id)a3;
- (void)beginUsingRequest:(id)a3 withSubsystemOptions:(id)a4 completion:(id)a5;
- (void)changeState:(unint64_t)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)endUsingRequest:(id)a3 completion:(id)a4;
- (void)preparePlugInUsingService:(id)a3 completion:(id)a4;
- (void)setBootstrapWithSubsystemOptions:(id)a3;
- (void)setExtensionState:(id)a3;
- (void)setHostPrincipal:(id)a3 withProtocol:(id)a4;
- (void)setUserElection:(int64_t)a3;
- (void)startPlugInRequest:(id)a3 synchronously:(BOOL)a4 subsystemOptions:(id)a5 completion:(id)a6;
- (void)unwind:(unint64_t)a3 force:(BOOL)a4;
- (void)updateFromForm:(id)a3 host:(id)a4;
@end

@implementation PKHostPlugIn

- (NSUUID)effectiveUUID
{
  v3 = [(PKHostPlugIn *)self multipleInstanceUUID];

  if (v3)
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
  v3 = [(PKHostPlugIn *)self _syncQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C6894FFC;
  v12[3] = &unk_1E827F150;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(v3, v12);

  v4 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(PKPlugInCore *)self uuid];
    v9 = [(PKPlugInCore *)self identifier];
    v10 = [(PKPlugInCore *)self version];
    v11 = v14[3];
    *buf = 138544386;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
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
          v8 = [(PKPlugInCore *)self uuid];
          v9 = [(PKHostPlugIn *)self multipleInstanceUUID];
          v10 = [(PKPlugInCore *)self identifier];
          v11 = [(PKPlugInCore *)self version];
          v12 = 138544642;
          v13 = v8;
          v14 = 2114;
          v15 = v9;
          v16 = 2112;
          v17 = v10;
          v18 = 2112;
          v19 = v11;
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

- (PKHostPlugIn)initWithForm:(id)a3 host:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 external];
  v26.receiver = self;
  v26.super_class = PKHostPlugIn;
  v9 = [(PKPlugInCore *)&v26 initWithForm:v6 externalProviders:v8];

  if (v9)
  {
    [(PKHostPlugIn *)v9 setSourceForm:v6];
    [(PKHostPlugIn *)v9 setHost:v7];
    v10 = [v6 objectForKeyedSubscript:@"overrider"];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
      [(PKHostPlugIn *)v9 setSupersedingUUID:v11];
    }

    v12 = +[PKCapabilities frameworkQueueAttr];
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [(PKPlugInCore *)v9 identifier];
    v15 = [v13 initWithFormat:@"PKPlugIn sync (%@)", v14];

    v16 = dispatch_queue_create([v15 UTF8String], v12);
    [(PKHostPlugIn *)v9 set_syncQueue:v16];

    v17 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = [(PKPlugInCore *)v9 identifier];
    v19 = [v17 initWithFormat:@"PKPlugIn start (%@)", v18];

    v20 = dispatch_queue_create([v19 UTF8String], v12);
    [(PKHostPlugIn *)v9 set_startQueue:v20];

    v21 = [v6 objectForKeyedSubscript:@"extensions"];
    [(PKHostPlugIn *)v9 setDiscoveryExtensions:v21];

    v22 = [v6 objectForKeyedSubscript:@"service-extension"];
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
  v5 = [(PKHostPlugIn *)self multipleInstanceUUID];
  v6 = [v3 initWithFormat:@"<id<PKPlugIn>: %p; core = %@, instance = [%@], state = %lu, useCount = %d>", self, v4, v5, -[PKHostPlugIn state](self, "state"), -[PKHostPlugIn useCount](self, "useCount")];

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

- (void)setUserElection:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PKPlugInCore *)self uuid];
    v7 = [(PKPlugInCore *)self identifier];
    v8 = [(PKPlugInCore *)self version];
    *buf = 138544386;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2080;
    v20 = "[PKHostPlugIn setUserElection:]";
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] %s: %ld", buf, 0x34u);
  }

  v9 = [(PKHostPlugIn *)self _syncQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C68984F8;
  v12[3] = &unk_1E827F178;
  v12[4] = self;
  v12[5] = a3;
  dispatch_sync(v9, v12);

  v10 = [(PKHostPlugIn *)self host];
  [v10 setElection:a3 forPlugIn:self];

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
  v3 = [(PKHostPlugIn *)self _syncQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1C6898698;
  v6[3] = &unk_1E827F150;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  if (!v8[5])
  {
    v8[5] = MEMORY[0x1E695E0F8];
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setExtensionState:(id)a3
{
  v4 = a3;
  v5 = [(PKHostPlugIn *)self _syncQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = sub_1C68987D8;
  v11 = &unk_1E827F1A0;
  v12 = self;
  v13 = v4;
  v6 = v4;
  dispatch_sync(v5, &v8);

  v7 = [(PKHostPlugIn *)self host:v8];
  [v7 setExtensionState:v6 forPlugIn:self];
}

- (void)updateFromForm:(id)a3 host:(id)a4
{
  v11.receiver = self;
  v11.super_class = PKHostPlugIn;
  v6 = a4;
  [(PKPlugInCore *)&v11 updateFromForm:a3];
  v7 = [(PKHostPlugIn *)self sourceForm:v11.receiver];
  v8 = [(PKPlugInCore *)self annotations];
  v9 = [v8 copy];
  v10 = [v7 dictionaryChanging:@"annotations" to:v9];
  [(PKHostPlugIn *)self setSourceForm:v10];

  [(PKHostPlugIn *)self setHost:v6];
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v6 = a4;
  v7 = [v6 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E696B160]];

  v9 = [v8 objectForKeyedSubscript:@"synchronous"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    [v6 invoke];
  }

  else
  {
    [v6 retainArguments];
    v11 = [(PKHostPlugIn *)self _replyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1C6898A18;
    block[3] = &unk_1E827F1C8;
    v13 = v6;
    dispatch_async(v11, block);
  }
}

- (void)setHostPrincipal:(id)a3 withProtocol:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(PKHostPlugIn *)self plugInPrincipal];

  if (!v7)
  {
    [(PKHostPlugIn *)self setQueuedHostPrincipal:v8];
    [(PKHostPlugIn *)self setQueuedHostProtocol:v6];
  }
}

- (id)createInstanceWithUUID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1C6893694;
  v16 = sub_1C689454C;
  v17 = 0;
  v5 = [(PKHostPlugIn *)self _syncQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1C6898C30;
  v11[3] = &unk_1E827F150;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(v5, v11);

  v6 = [PKHostPlugIn alloc];
  v7 = v13[5];
  v8 = [(PKHostPlugIn *)self host];
  v9 = [(PKHostPlugIn *)v6 initWithForm:v7 host:v8];

  [(PKHostPlugIn *)v9 setMultipleInstanceUUID:v4];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)beginUsingRequest:(id)a3 withSubsystemOptions:(id)a4 completion:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(PKHostPlugIn *)self _validatePersona];
  v11 = PKGetThreadPriority();
  v12 = pklog_handle_for_category(0);
  v13 = os_signpost_id_generate(v12);

  v14 = pklog_handle_for_category(7);
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v16 = [(PKPlugInCore *)self identifier];
    v17 = [(PKPlugInCore *)self uuid];
    *buf = 138478339;
    v36 = v16;
    v37 = 2114;
    v38 = v17;
    v39 = 1026;
    v40 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "HostBeginUsing", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@  priority=%{public, signpost.description:attribute}d ", buf, 0x1Cu);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1C6898F68;
  v32[3] = &unk_1E827F1F0;
  v33 = v10;
  v34 = v13;
  v18 = v10;
  v19 = MEMORY[0x1C6960190](v32);
  v20 = _CFXPCCreateXPCObjectFromCFObject();
  v21 = v20;
  if (v9 && !v20)
  {
    v22 = pklog_handle_for_category(8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B3A68();
    }
  }

  v23 = [(PKHostPlugIn *)self _startQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1C6899050;
  v28[3] = &unk_1E827F218;
  v28[4] = self;
  v29 = v8;
  v30 = v21;
  v31 = v19;
  v24 = v19;
  v25 = v21;
  v26 = v8;
  dispatch_async(v23, v28);

  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)beginUsingRequest:(id)a3 withSubsystemOptions:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  [(PKHostPlugIn *)self _validatePersona];
  v10 = PKGetThreadPriority();
  v11 = pklog_handle_for_category(0);
  v12 = os_signpost_id_generate(v11);

  v13 = pklog_handle_for_category(7);
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = [(PKPlugInCore *)self identifier];
    v16 = [(PKPlugInCore *)self uuid];
    *buf = 138478339;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v16;
    *&buf[22] = 1026;
    LODWORD(v36) = v10;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "HostBeginUsing", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@  priority=%{public, signpost.description:attribute}d ", buf, 0x1Cu);
  }

  v17 = _CFXPCCreateXPCObjectFromCFObject();
  v18 = v17;
  if (v9 && !v17)
  {
    v19 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B3B3C(v9, v19);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = sub_1C6893694;
  v37 = sub_1C689454C;
  v38 = 0;
  v20 = [(PKHostPlugIn *)self _startQueue];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1C68993C8;
  v29[3] = &unk_1E827F268;
  v29[4] = self;
  v21 = v8;
  v30 = v21;
  v22 = v18;
  v31 = v22;
  v32 = buf;
  dispatch_sync(v20, v29);

  v23 = *(*&buf[8] + 40);
  if (a5 && v23)
  {
    v24 = v23;
    *a5 = v23;
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

- (void)addRequestUUID:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PKHostPlugIn *)self _syncQueue];
    dispatch_assert_queue_V2(v5);

    v6 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(PKPlugInCore *)self uuid];
      v8 = [(PKHostPlugIn *)self multipleInstanceUUID];
      v9 = [(PKPlugInCore *)self identifier];
      v10 = [(PKPlugInCore *)self version];
      v20 = 138544386;
      *v21 = v7;
      *&v21[8] = 2114;
      *&v21[10] = v8;
      *&v21[18] = 2112;
      v22 = v9;
      *v23 = 2112;
      *&v23[2] = v10;
      *&v23[10] = 2112;
      *&v23[12] = v4;
      _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_INFO, "[u %{public}@:m %{public}@] [%@(%@)] adding request: %@", &v20, 0x34u);
    }

    v11 = [(PKHostPlugIn *)self requests];
    [v11 addObject:v4];

    v12 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1C68B3BB4(self, v12, v13, v14, v15, v16, v17, v18, v20, *&v21[4], *&v21[12], v22, *v23, *&v23[8], *&v23[16], v24, v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)startPlugInRequest:(id)a3 synchronously:(BOOL)a4 subsystemOptions:(id)a5 completion:(id)a6
{
  v84 = a4;
  v153[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v87 = a5;
  v11 = a6;
  v12 = [(PKHostPlugIn *)self _startQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(PKHostPlugIn *)self _replyQueue];

  if (!v13)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [(PKPlugInCore *)self identifier];
    v16 = [v14 stringWithFormat:@"PlugInKit reply:%@", v15];
    v17 = [v16 UTF8String];
    v18 = +[PKCapabilities frameworkQueueAttr];
    v19 = dispatch_queue_create(v17, v18);
    [(PKHostPlugIn *)self set_replyQueue:v19];
  }

  v20 = [v10 uuid];
  v21 = [v10 launchPersona];
  v88 = [(PKHostPlugIn *)self host];
  v113 = 0;
  v114 = &v113;
  v115 = 0x2020000000;
  v116 = 0;
  v22 = [(PKHostPlugIn *)self _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C689A380;
  block[3] = &unk_1E827F290;
  block[4] = self;
  v23 = v20;
  v110 = v23;
  v24 = v11;
  v111 = v24;
  v112 = &v113;
  dispatch_sync(v22, block);

  if (*(v114 + 24) == 1)
  {
    v25 = pklog_handle_for_category(7);
    if (os_signpost_enabled(v25))
    {
      v26 = [(PKPlugInCore *)self identifier];
      v27 = [(PKPlugInCore *)self uuid];
      v28 = [(PKHostPlugIn *)self useCount];
      *buf = 138478339;
      *&buf[4] = v26;
      *&buf[12] = 2114;
      *&buf[14] = v27;
      *&buf[22] = 2050;
      *&buf[24] = v28;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HostStartBypass", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@  count=%{public, signpost.description:attribute}lu ", buf, 0x20u);
    }

    goto LABEL_29;
  }

  v25 = [(PKPlugInCore *)self diagnose];
  if (!v25)
  {
    v30 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v83 = [(PKPlugInCore *)self uuid];
      v81 = [(PKHostPlugIn *)self multipleInstanceUUID];
      v77 = [(PKPlugInCore *)self identifier];
      v39 = [(PKPlugInCore *)self version];
      *buf = 138544130;
      *&buf[4] = v83;
      *&buf[12] = 2114;
      *&buf[14] = v81;
      *&buf[22] = 2112;
      *&buf[24] = v77;
      LOWORD(v136[0]) = 2112;
      *(v136 + 2) = v39;
      _os_log_debug_impl(&dword_1C6892000, v30, OS_LOG_TYPE_DEBUG, "[u %{public}@:m %{public}@] [%@(%@)] suspending startQueue", buf, 0x2Au);
    }

    v31 = [(PKHostPlugIn *)self _startQueue];
    dispatch_suspend(v31);

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
    v76 = v88;
    v102 = v76;
    v103 = v24;
    v104 = v107;
    v80 = MEMORY[0x1C6960190](v101);
    [(PKHostPlugIn *)self setTerminating:0];
    v32 = [v76 activatePlugIn:self];
    v82 = v32;
    if (v32 == self)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"PKHostPlugIn.m" lineNumber:521 description:{@"inactive/activating self %@ not in active dictionary", self}];

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
        v86 = [(PKPlugInCore *)self uuid];
        v78 = [(PKHostPlugIn *)self multipleInstanceUUID];
        v74 = [(PKPlugInCore *)self identifier];
        v72 = [(PKPlugInCore *)self version];
        v70 = [(PKPlugInCore *)v82 uuid];
        v40 = [(PKHostPlugIn *)v82 multipleInstanceUUID];
        v41 = [(PKPlugInCore *)v82 identifier];
        v42 = [(PKPlugInCore *)v82 version];
        *buf = 138545154;
        *&buf[4] = v86;
        *&buf[12] = 2114;
        *&buf[14] = v78;
        *&buf[22] = 2112;
        *&buf[24] = v74;
        LOWORD(v136[0]) = 2112;
        *(v136 + 2) = v72;
        HIWORD(v136[2]) = 2114;
        *&v136[3] = v70;
        LOWORD(v136[5]) = 2114;
        *(&v136[5] + 2) = v40;
        HIWORD(v136[7]) = 2112;
        v137[0] = v41;
        LOWORD(v137[1]) = 2112;
        *(&v137[1] + 2) = v42;
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

    v44 = [(PKHostPlugIn *)self _syncQueue];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = sub_1C689A948;
    v100[3] = &unk_1E827F1C8;
    v100[4] = self;
    dispatch_sync(v44, v100);

    MEMORY[0x1C6960710]();
    v75 = v21;
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
      v69 = [(PKPlugInCore *)self uuid];
      v71 = [(PKHostPlugIn *)self multipleInstanceUUID];
      v48 = [(PKPlugInCore *)self identifier];
      v49 = [(PKPlugInCore *)self version];
      v50 = geteuid();
      v51 = getuid();
      *v117 = 138545410;
      v118 = v69;
      v119 = 2114;
      v120 = v71;
      v121 = 2112;
      v122 = v48;
      v123 = 2112;
      v124 = v49;
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
      v56 = [(PKPlugInCore *)self identifier];
      v57 = [(PKPlugInCore *)self uuid];
      *buf = 138478083;
      *&buf[4] = v56;
      *&buf[12] = 2114;
      *&buf[14] = v57;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v55, OS_SIGNPOST_INTERVAL_BEGIN, v53, "HostToDaemonReadyPlugIns", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@ ", buf, 0x16u);
    }

    v58 = objc_alloc(MEMORY[0x1E696B0B8]);
    v59 = [(PKPlugInCore *)self infoKey:@"CFBundleIdentifier"];
    v60 = [v58 initWithServiceName:v59];

    [(PKHostPlugIn *)self setPluginConnection:v60];
    [(PKHostPlugIn *)self setBootstrapWithSubsystemOptions:v87];
    v61 = [(PKHostPlugIn *)self preferredLanguages];
    v62 = v61;
    if (!v61)
    {
      v62 = [MEMORY[0x1E695DF58] preferredLanguages];
    }

    v63 = v62;
    if (!v61)
    {
    }

    v64 = [(PKHostPlugIn *)self environment];
    v65 = [(PKHostPlugIn *)self sandboxProfile];
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
    v97 = v84;
    v93 = v23;
    v21 = v75;
    [v90 readyPlugIns:v66 synchronously:v84 environment:v64 languages:v63 persona:v75 sandbox:v65 ready:v89];

    goto LABEL_28;
  }

  v29 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v85 = [(PKPlugInCore *)self uuid];
    v36 = [(PKHostPlugIn *)self multipleInstanceUUID];
    v37 = [(PKPlugInCore *)self identifier];
    v38 = [(PKPlugInCore *)self version];
    *buf = 138544386;
    *&buf[4] = v85;
    *&buf[12] = 2114;
    *&buf[14] = v36;
    *&buf[22] = 2112;
    *&buf[24] = v37;
    LOWORD(v136[0]) = 2112;
    *(v136 + 2) = v38;
    HIWORD(v136[2]) = 2112;
    *&v136[3] = v25;
    _os_log_error_impl(&dword_1C6892000, v29, OS_LOG_TYPE_ERROR, "[u %{public}@:m %{public}@] [%@(%@)] Failed to start plugin; failed pre-screen: %@", buf, 0x34u);
  }

  (*(v24 + 2))(v24, v25);
LABEL_29:

  _Block_object_dispose(&v113, 8);
  v67 = *MEMORY[0x1E69E9840];
}

- (void)preparePlugInUsingService:(id)a3 completion:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PKHostPlugIn *)self queuedHostProtocol];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(PKHostPlugIn *)self queuedHostProtocol];
    v8 = [v9 stringWithUTF8String:protocol_getName(v10)];

    v11 = MEMORY[0x1E696B0D0];
    v12 = [(PKHostPlugIn *)self queuedHostProtocol];
    v13 = [v11 interfaceWithProtocol:v12];

    v14 = [(PKHostPlugIn *)self pluginConnection];
    v15 = [v14 remoteObjectInterface];
    [v15 setInterface:v13 forSelector:sel_beginUsingPlugIn_ready_ argumentIndex:0 ofReply:0];
  }

  v16 = [(PKPlugInCore *)self hubProtocolVersion];
  if (v16 == 2)
  {
    v23 = objc_opt_new();
    v24 = [(PKPlugInCore *)self identifier];
    [v23 setObject:v24 forKeyedSubscript:@"identifier"];

    v25 = [(PKPlugInCore *)self uuid];
    v26 = [v25 UUIDString];
    [v23 setObject:v26 forKeyedSubscript:@"uuid"];

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPlugInCore hubProtocolVersion](self, "hubProtocolVersion")}];
    [v23 setObject:v27 forKeyedSubscript:@"version"];

    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPlugInCore isRBManaged](self, "isRBManaged")}];
    [v23 setObject:v28 forKeyedSubscript:@"isRBManaged"];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PKPlugInCore extensionPointPlatform](self, "extensionPointPlatform")}];
    [v23 setObject:v29 forKeyedSubscript:@"epPlatform"];

    if (v8)
    {
      [v23 setObject:v8 forKeyedSubscript:@"hostProtocol"];
    }

    v30 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(PKPlugInCore *)self uuid];
      v32 = [(PKPlugInCore *)self identifier];
      v33 = [(PKPlugInCore *)self version];
      v34 = [(PKPlugInCore *)self isRBManaged];
      v35 = "non-";
      *buf = 138544130;
      v42 = v31;
      v43 = 2112;
      v44 = v32;
      if (v34)
      {
        v35 = &unk_1C68BC22E;
      }

      v45 = 2112;
      v46 = v33;
      v47 = 2080;
      v48 = v35;
      _os_log_impl(&dword_1C6892000, v30, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Sending prepareUsing to %smanaged extension; this should launch it if not already running.", buf, 0x2Au);
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1C689D46C;
    v37[3] = &unk_1E827F420;
    v38 = v7;
    [v6 prepareUsing:v23 reply:v37];
  }

  else if (v16 == 1)
  {
    v17 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(PKPlugInCore *)self uuid];
      v19 = [(PKHostPlugIn *)self multipleInstanceUUID];
      v20 = [(PKPlugInCore *)self identifier];
      v21 = [(PKPlugInCore *)self version];
      *buf = 138544130;
      v42 = v18;
      v43 = 2114;
      v44 = v19;
      v45 = 2112;
      v46 = v20;
      v47 = 2112;
      v48 = v21;
      _os_log_impl(&dword_1C6892000, v17, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] Sending legacy prepareUsingPlugIn to extension; this should launch it if not already running.", buf, 0x2Au);
    }

    v22 = [(PKPlugInCore *)self identifier];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_1C689D3D8;
    v39[3] = &unk_1E827F3F8;
    v40 = v7;
    [v6 prepareUsingPlugIn:v22 hostProtocol:v8 reply:v39];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"unexpected hub protocol version:%ld", -[PKPlugInCore hubProtocolVersion](self, "hubProtocolVersion")}];
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)setBootstrapWithSubsystemOptions:(id)a3
{
  value = a3;
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
    v6 = [(PKHostPlugIn *)self pluginConnection];
    v7 = [v6 _xpcConnection];
    xpc_connection_set_bootstrap();
  }
}

- (BOOL)loadExtensions:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
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
          v16 = [(PKPlugInCore *)self external];
          v17 = [v16 sandbox];
          v18 = [(PKSandboxExtension *)v15 initWithExtension:v14 provider:v17];

          v19 = [(PKHostPlugIn *)self sandboxExtensions];
          LOBYTE(v16) = [v19 containsObject:v18];

          if ((v16 & 1) == 0)
          {
            [(PKSandboxExtension *)v18 consume];
            v20 = [(PKHostPlugIn *)self sandboxExtensions];

            if (v20)
            {
              v12 = [(PKHostPlugIn *)self sandboxExtensions];
              v13 = [v12 arrayByAddingObject:v18];
              [(PKHostPlugIn *)self setSandboxExtensions:v13];
            }

            else
            {
              v12 = [MEMORY[0x1E695DEC8] arrayWithObject:v18];
              [(PKHostPlugIn *)self setSandboxExtensions:v12];
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

- (BOOL)useBundle:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKHostPlugIn *)self discoveryExtensions];
  if (v7)
  {
    v8 = [(PKHostPlugIn *)self discoveryExtensions];
    v9 = [v8 count] == 0;
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

    v11 = [(PKHostPlugIn *)self discoveryExtensions];
    v12 = v11;
    if (v6)
    {
      v13 = [v11 objectForKeyedSubscript:v6];

      if (v13)
      {
        v26[0] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
        LOBYTE(a4) = [(PKHostPlugIn *)self loadExtensions:v14 error:a4];
      }

      else
      {
        if (!a4)
        {
LABEL_16:

          goto LABEL_17;
        }

        v14 = [(PKPlugInCore *)self uuid];
        v15 = [(PKHostPlugIn *)self multipleInstanceUUID];
        v16 = [(PKPlugInCore *)self identifier];
        v25 = [(PKPlugInCore *)self version];
        *a4 = pkErrorf(11, @"[u %@:m %@] [%@(%@)] sandbox extensions for relative path [%@] not vended by plugin", v17, v18, v19, v20, v21, v22, v14);

        LOBYTE(a4) = 0;
      }

      v12 = v13;
    }

    else
    {
      v14 = [v11 allValues];
      LOBYTE(a4) = [(PKHostPlugIn *)self loadExtensions:v14 error:a4];
    }

    v13 = v12;
    goto LABEL_16;
  }

  LOBYTE(a4) = 1;
LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
  return a4;
}

- (void)endUsingRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1C6893694;
  v19 = sub_1C689454C;
  v20 = 0;
  v8 = [v6 uuid];
  v9 = [(PKHostPlugIn *)self _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C689DB5C;
  block[3] = &unk_1E827F468;
  v10 = v8;
  v12 = v10;
  v13 = self;
  v14 = &v15;
  dispatch_sync(v9, block);

  v7[2](v7, v16[5]);
  _Block_object_dispose(&v15, 8);
}

- (BOOL)endUsingRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  [(PKHostPlugIn *)self endUsingRequest:v6 completion:v9];
  if (a4)
  {
    *a4 = v11[5];
  }

  v7 = v11[5] == 0;
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)unwind:(unint64_t)a3 force:(BOOL)a4
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if ([(PKHostPlugIn *)self state]!= 1)
    {
      goto LABEL_32;
    }

    if (!a4 && ![(PKHostPlugIn *)self useCount])
    {
      sub_1C68B50F4();
    }
  }

  if (a3 != 2)
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

      v8 = [(PKPlugInCore *)self uuid];
      v9 = [(PKHostPlugIn *)self multipleInstanceUUID];
      v10 = [(PKPlugInCore *)self identifier];
      v11 = [(PKPlugInCore *)self version];
      *buf = 138544386;
      v43 = v8;
      v44 = 2114;
      v45 = v9;
      v46 = 2112;
      v47 = v10;
      v48 = 2112;
      v49 = v11;
      v50 = 1024;
      v51 = [(PKHostPlugIn *)self useCount];
      _os_log_impl(&dword_1C6892000, v7, OS_LOG_TYPE_INFO, "[u %{public}@:m %{public}@] [%@(%@)] plugin still active after removing one ref count, remaining = %u", buf, 0x30u);
      goto LABEL_23;
    }
  }

  v12 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(PKPlugInCore *)self uuid];
    v14 = [(PKHostPlugIn *)self multipleInstanceUUID];
    v15 = [(PKPlugInCore *)self identifier];
    v16 = [(PKPlugInCore *)self version];
    *buf = 138544130;
    v43 = v13;
    v44 = 2114;
    v45 = v14;
    v46 = 2112;
    v47 = v15;
    v48 = 2112;
    v49 = v16;
    _os_log_impl(&dword_1C6892000, v12, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] all extension sessions ended", buf, 0x2Au);
  }

  [(PKHostPlugIn *)self messageTraceUsage];
  v17 = [(PKHostPlugIn *)self host];
  [v17 deactivatePlugIn:self];

  if (a3 != 2)
  {
    v18 = [(PKHostPlugIn *)self service];
    [v18 shutdownPlugIn];
  }

  [(PKHostPlugIn *)self changeState:a3];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = [(PKHostPlugIn *)self sandboxExtensions];
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v52 count:16];
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
          objc_enumerationMutation(v19);
        }

        [*(*(&v38 + 1) + 8 * v22++) expel];
      }

      while (v23 != v22);
      v20 = [v19 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v20);
  }

  [(PKHostPlugIn *)self setSandboxExtensions:0];
  [(PKHostPlugIn *)self setUseCount:0];
  [(PKHostPlugIn *)self setPlugInPrincipal:0];
  [(PKHostPlugIn *)self setEmbeddedPrincipal:0];
  [(PKHostPlugIn *)self setService:0];
  [(PKHostPlugIn *)self setSyncService:0];
  v24 = [(PKHostPlugIn *)self pluginConnection];
  [v24 invalidate];

  [(PKHostPlugIn *)self setPluginConnection:0];
  v25 = [(PKHostPlugIn *)self multipleInstanceUUID];
  [(PKHostPlugIn *)self changeState:4 * (v25 != 0)];

  v26 = [(PKPlugInCore *)self launchPersonas];
  v27 = [v26 count];

  if (v27 >= 2)
  {
    v28 = [PKManager alloc];
    v29 = [(PKPlugInCore *)self external];
    v30 = [(PKManager *)v28 initWithExternalProviders:v29];
    v31 = [(PKPlugInCore *)self url];
    v37 = 0;
    v32 = [(PKManager *)v30 terminatePlugInAtURL:v31 withError:&v37];
    v7 = v37;

    v33 = pklog_handle_for_category(7);
    v8 = v33;
    if (!v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B5120(self, v7, v8);
      }

      goto LABEL_30;
    }

    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
LABEL_30:

      goto LABEL_31;
    }

    v9 = [(PKPlugInCore *)self uuid];
    v10 = [(PKHostPlugIn *)self multipleInstanceUUID];
    v11 = [(PKPlugInCore *)self identifier];
    v34 = [(PKPlugInCore *)self version];
    *buf = 138544130;
    v43 = v9;
    v44 = 2114;
    v45 = v10;
    v46 = 2112;
    v47 = v11;
    v48 = 2112;
    v49 = v34;
    _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] terminated multi-persona plugin", buf, 0x2Au);

LABEL_23:
    goto LABEL_30;
  }

LABEL_32:
  v36 = *MEMORY[0x1E69E9840];
}

- (void)changeState:(unint64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(PKHostPlugIn *)self _syncQueue];
  dispatch_assert_queue_V2(v5);

  v6 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(PKPlugInCore *)self uuid];
    v8 = [(PKHostPlugIn *)self multipleInstanceUUID];
    v9 = [(PKPlugInCore *)self identifier];
    v10 = [(PKPlugInCore *)self version];
    *buf = 138544386;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_INFO, "[u %{public}@:m %{public}@] [%@(%@)] state := %lu", buf, 0x34u);
  }

  if ([(PKHostPlugIn *)self state]!= a3)
  {
    [(PKHostPlugIn *)self setState:a3];
    v11 = [(PKHostPlugIn *)self notificationBlock];
    if (v11)
    {
      v12 = [(PKHostPlugIn *)self _replyQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1C689E700;
      v14[3] = &unk_1E827F490;
      v14[4] = self;
      v15 = v11;
      dispatch_async(v12, v14);
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