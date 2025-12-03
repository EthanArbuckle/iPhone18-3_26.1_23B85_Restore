@interface PAAccessReader
+ (BOOL)exportFromPublisher:(id)publisher toStream:(id)stream withCancellationToken:(id)token error:(id *)error;
+ (id)fileNameForExport;
+ (id)sharedInstance;
- (BOOL)lockedEnsureSandboxExtensionWithError:(id *)error;
- (BOOL)loggingEnabled;
- (PAAccessReader)initWithConnection:(id)connection queue:(id)queue enablementChangedNotificationName:(id)name;
- (PAAccessReader)initWithQueue:(id)queue;
- (PAAccessReaderDelegate)delegate;
- (id)_accessRecordsForReportFrom:(id)from to:(id)to error:(id *)error;
- (id)getOrCreateStreamsWithError:(id *)error;
- (id)publisherForAllSince:(double)since error:(id *)error;
- (id)publisherForReportWithError:(id *)error;
- (id)requestSandboxExtensionWithError:(id *)error;
- (void)dealloc;
- (void)exportToFileHandle:(id)handle completion:(id)completion;
- (void)handleEnabledChangeNotification;
- (void)lockedNotifyDidSetLoggingEnabled:(BOOL)enabled;
- (void)lockedSetEnabledStateForLoggingEnabled:(BOOL)enabled;
@end

@implementation PAAccessReader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[PAAccessReader sharedInstance];
  }

  v3 = sharedInstance_instance_2;

  return v3;
}

uint64_t __32__PAAccessReader_sharedInstance__block_invoke()
{
  sharedInstance_instance_2 = [[PAAccessReader alloc] initWithQueue:0];

  return MEMORY[0x1EEE66BB8]();
}

- (PAAccessReader)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (_os_feature_enabled_impl())
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.privacyaccountingd" options:4096];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PAAccessReader *)self initWithConnection:v5 queue:queueCopy];
  v7 = v6;
  if (v6)
  {
    [(NSXPCConnection *)v6->_connection resume];
  }

  return v7;
}

- (BOOL)loggingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(PAAccessReader *)self lockedEnsureSandboxExtensionWithError:0];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

+ (id)fileNameForExport
{
  if (fileNameForExport_onceToken[0] != -1)
  {
    +[PAAccessReader fileNameForExport];
  }

  v2 = MEMORY[0x1E696AEC0];
  v3 = *MEMORY[0x1E695E480];
  v4 = fileNameForExport_formatter;
  Current = CFAbsoluteTimeGetCurrent();
  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v3, v4, Current);
  stringWithAbsoluteTime = [v2 stringWithFormat:@"App_Privacy_Report_v%ld_%@.ndjson", 4, StringWithAbsoluteTime];

  return stringWithAbsoluteTime;
}

void __35__PAAccessReader_fileNameForExport__block_invoke()
{
  ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0);
  fileNameForExport_formatter = ISO8601Formatter;

  CFDateFormatterSetFormat(ISO8601Formatter, @"yyyy-MM-dd'T'HH_mm_ss");
}

+ (BOOL)exportFromPublisher:(id)publisher toStream:(id)stream withCancellationToken:(id)token error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  publisherCopy = publisher;
  streamCopy = stream;
  tokenCopy = token;
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  array = [MEMORY[0x1E695DF70] array];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __75__PAAccessReader_exportFromPublisher_toStream_withCancellationToken_error___block_invoke;
  v33[3] = &unk_1E86AC0D8;
  v34 = array;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __75__PAAccessReader_exportFromPublisher_toStream_withCancellationToken_error___block_invoke_38;
  v28 = &unk_1E86AC100;
  v14 = tokenCopy;
  v29 = v14;
  v15 = v34;
  v30 = v15;
  v16 = localTimeZone;
  v31 = v16;
  v17 = streamCopy;
  v32 = v17;
  v18 = [publisherCopy sinkWithCompletion:v33 shouldContinue:&v25];
  v19 = [v15 count];
  if (error && v19)
  {
    v20 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A750];
    v36[0] = v15;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    *error = [v20 errorWithDomain:@"PAErrorDomain" code:13 userInfo:v21];
  }

  v22 = [v15 count] == 0;

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void __75__PAAccessReader_exportFromPublisher_toStream_withCancellationToken_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = logger_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__PAAccessReader_exportFromPublisher_toStream_withCancellationToken_error___block_invoke_cold_1(v3, v4);
    }

    v5 = *(a1 + 32);
    v6 = [v3 error];
    [v5 addObject:v6];
  }
}

BOOL __75__PAAccessReader_exportFromPublisher_toStream_withCancellationToken_error___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) cancelled])
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:15 userInfo:0];
    [v5 addObject:v6];

    v7 = 0;
  }

  else
  {
    v8 = [v3 eventBody];
    v9 = [v8 JSONObject];
    v10 = [v9 mutableCopy];

    [v3 timestamp];
    v12 = v11;
    v13 = [v3 eventBody];
    [v13 timestampAdjustment];
    v15 = v12 + v14;
    v16 = *(a1 + 48);
    v17 = objc_opt_new();
    [v17 setFormatOptions:3955];
    [v17 setTimeZone:v16];

    v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v15];
    v19 = [v17 stringFromDate:v18];

    [v10 setObject:v19 forKeyedSubscript:@"timeStamp"];
    v20 = *(a1 + 56);
    v31 = 0;
    v21 = v20;
    v22 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:2 error:&v31];
    v23 = v22;
    if (v22 && (v24 = v22, v25 = v21, v26 = writeBytesToStream(v25, [v23 bytes], objc_msgSend(v23, "length"), &v31), v25, v26))
    {
      v27 = v25;
      v7 = writeBytesToStream(v27, [@"\n" UTF8String], objc_msgSend(@"\n", "lengthOfBytesUsingEncoding:", 4), &v31);
    }

    else
    {
      v7 = 0;
    }

    v28 = v31;
    if (!v7)
    {
      v29 = logger_0();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __75__PAAccessReader_exportFromPublisher_toStream_withCancellationToken_error___block_invoke_38_cold_1(v10, v28, v29);
      }

      [*(a1 + 40) addObject:v28];
    }
  }

  objc_autoreleasePoolPop(v4);

  return v7;
}

- (id)publisherForReportWithError:(id *)error
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:CFAbsoluteTimeGetCurrent() + -604800.0];
  v6 = [(PAAccessReader *)self publisherForAllSince:v5 until:0 reversed:1 error:error];

  if (v6)
  {
    v7 = [PAAccessPublisherPipelines accessPublisherWithoutOutOfProcessPickerAccesses:v6];

    v8 = [PAAccessPublisherPipelines accessPublisherWithoutUnknownCategoryAccesses:v7];

    v9 = [PAAccessPublisherPipelines accessPublisherWithoutHiddenOrMissingApps:v8];

    v6 = [PAAccessPublisherPipelines accessRecordsFromPublisher:v9 reversed:1];
  }

  return v6;
}

- (id)publisherForAllSince:(double)since error:(id *)error
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:since];
  v7 = [(PAAccessReader *)self publisherForAllSince:v6 until:0 reversed:0 error:error];

  return v7;
}

uint64_t __60__PAAccessReader_publisherForAllSince_until_reversed_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 timestamp];
  v8 = v7;
  [v6 timestamp];
  if (v8 <= v9)
  {
    [v5 timestamp];
    v13 = v12;
    [v6 timestamp];
    if (v13 >= v14)
    {
      v15 = 0;
      goto LABEL_9;
    }

    v10 = *(a1 + 32) == 0;
    v11 = 1;
  }

  else
  {
    v10 = *(a1 + 32) == 0;
    v11 = -1;
  }

  if (v10)
  {
    v15 = -v11;
  }

  else
  {
    v15 = v11;
  }

LABEL_9:

  return v15;
}

- (PAAccessReader)initWithConnection:(id)connection queue:(id)queue enablementChangedNotificationName:(id)name
{
  v35 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  queueCopy = queue;
  nameCopy = name;
  v30.receiver = self;
  v30.super_class = PAAccessReader;
  v12 = [(PAAccessReader *)&v30 init];
  if (v12)
  {
    PARegisterUserInfoValueProviderForPAErrorDomain();
    if (!queueCopy)
    {
      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_get_global_queue(21, 0);
      queueCopy = dispatch_queue_create_with_target_V2("com.apple.privacyaccounting.PAAccessReader", v13, v14);
    }

    objc_storeStrong(&v12->_queue, queueCopy);
    [connectionCopy _setQueue:v12->_queue];
    v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A5ED18];
    [connectionCopy setRemoteObjectInterface:v15];
    objc_initWeak(&location, v12);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __77__PAAccessReader_initWithConnection_queue_enablementChangedNotificationName___block_invoke;
    v27[3] = &unk_1E86ABD58;
    objc_copyWeak(&v28, &location);
    [connectionCopy setInvalidationHandler:v27];
    objc_storeStrong(&v12->_connection, connection);
    v12->_lock._os_unfair_lock_opaque = 0;
    v12->_enabledState = 0;
    v16 = nameCopy;
    uTF8String = [nameCopy UTF8String];
    queue = v12->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __77__PAAccessReader_initWithConnection_queue_enablementChangedNotificationName___block_invoke_112;
    handler[3] = &unk_1E86AC088;
    objc_copyWeak(&v26, &location);
    v19 = notify_register_dispatch(uTF8String, &v12->_enablementChangedNotificationToken, queue, handler);
    v20 = logger_0();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PAAccessReader initWithConnection:nameCopy queue:v19 enablementChangedNotificationName:v21];
      }

      v12->_enablementChangedNotificationToken = -1;
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        enablementChangedNotificationToken = v12->_enablementChangedNotificationToken;
        *buf = 138543618;
        v32 = nameCopy;
        v33 = 1024;
        v34 = enablementChangedNotificationToken;
        _os_log_impl(&dword_1DF25B000, v21, OS_LOG_TYPE_INFO, "Registered for %{public}@ notifications with token=%d", buf, 0x12u);
      }
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

void __77__PAAccessReader_initWithConnection_queue_enablementChangedNotificationName___block_invoke(uint64_t a1)
{
  v2 = logger_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF25B000, v2, OS_LOG_TYPE_INFO, "XPC connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEnabledStateForLoggingEnabled:0];
}

void __77__PAAccessReader_initWithConnection_queue_enablementChangedNotificationName___block_invoke_112(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = logger_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1DF25B000, v4, OS_LOG_TYPE_INFO, "Received enablement changed notification with token=%d", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEnabledChangeNotification];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleEnabledChangeNotification
{
  objc_initWeak(&location, self);
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PAAccessReader_handleEnabledChangeNotification__block_invoke;
  v4[3] = &unk_1E86AC148;
  objc_copyWeak(&v5, &location);
  [remoteObjectProxy loggingEnabledWithReply:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__PAAccessReader_handleEnabledChangeNotification__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEnabledStateForLoggingEnabled:a2];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  notify_cancel(self->_enablementChangedNotificationToken);
  v3.receiver = self;
  v3.super_class = PAAccessReader;
  [(PAAccessReader *)&v3 dealloc];
}

- (id)requestSandboxExtensionWithError:(id *)error
{
  connection = self->_connection;
  if (connection)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__PAAccessReader_requestSandboxExtensionWithError___block_invoke;
    v9[3] = &unk_1E86AC170;
    v9[4] = &v10;
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PAAccessReader_requestSandboxExtensionWithError___block_invoke_2;
    v8[3] = &unk_1E86AC198;
    v8[4] = &v10;
    v8[5] = &v16;
    [v5 requestSandboxExtensionForStoreBasePathWithReply:v8];

    if (error)
    {
      *error = v11[5];
    }

    v6 = v17[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:1 userInfo:0];
    *error = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __51__PAAccessReader_requestSandboxExtensionWithError___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v11 = [PAAccessReaderSandboxExtension alloc];
    v12 = *(*(a1 + 32) + 8);
    obj = *(v12 + 40);
    v13 = [(PAAccessReaderSandboxExtension *)v11 initWithToken:v9 forPath:v10 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (id)getOrCreateStreamsWithError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if ([(PAAccessReader *)self lockedEnsureSandboxExtensionWithError:error])
  {
    streams = self->_streams;
    if (streams)
    {
      v6 = streams;
    }

    else
    {
      v7 = MEMORY[0x1E698F130];
      path = [(PAAccessReaderSandboxExtension *)self->_sandboxExtension path];
      v9 = [v7 newPrivateStreamDefaultConfigurationWithStoreBasePath:path protectionClass:2];

      v10 = +[PAAccess allAccessClasses];
      v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = *v25;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            v17 = objc_alloc(MEMORY[0x1E698F318]);
            eventStreamIdentifier = [v16 eventStreamIdentifier];
            v19 = [v17 initWithPrivateStreamIdentifier:eventStreamIdentifier storeConfig:v9];

            [v11 addObject:v19];
          }

          v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v13);
      }

      v20 = [v11 copy];
      v21 = self->_streams;
      self->_streams = v20;

      v6 = self->_streams;
    }
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v22 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)lockedNotifyDidSetLoggingEnabled:(BOOL)enabled
{
  os_unfair_lock_assert_owner(&self->_lock);
  delegate = [(PAAccessReader *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PAAccessReader_lockedNotifyDidSetLoggingEnabled___block_invoke;
    block[3] = &unk_1E86AC038;
    objc_copyWeak(&v9, &location);
    enabledCopy = enabled;
    dispatch_async(queue, block);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __51__PAAccessReader_lockedNotifyDidSetLoggingEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 reader:WeakRetained didSetLoggingEnabled:*(a1 + 40)];
}

- (void)exportToFileHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PAAccessReader_exportToFileHandle_completion___block_invoke;
  aBlock[3] = &unk_1E86ABDA0;
  v8 = completionCopy;
  v13 = v8;
  v9 = _Block_copy(aBlock);
  connection = self->_connection;
  if (connection)
  {
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
    [v11 exportToFileHandle:handleCopy reply:v9];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:1 userInfo:0];
    v9[2](v9, v11);
  }
}

uint64_t __48__PAAccessReader_exportToFileHandle_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)lockedEnsureSandboxExtensionWithError:(id *)error
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(PAAccessReader *)self lockedAssertValidEnabledState];
  v5 = 0;
  enabledState = self->_enabledState;
  if (enabledState <= 1)
  {
    if (self->_enabledState)
    {
      if (enabledState != 1)
      {
        return v5;
      }

      goto LABEL_15;
    }

    v20 = 0;
    v7 = [(PAAccessReader *)self requestSandboxExtensionWithError:&v20];
    v8 = v20;
    v9 = v8;
    v5 = v7 != 0;
    if (v7)
    {
LABEL_16:
      [(PAAccessReader *)self lockedSetEnabledStateForLoggingEnabled:1];
      objc_storeStrong(&self->_sandboxExtension, v7);
LABEL_31:

      return v5;
    }

    v10 = v8;
    domain = [v10 domain];
    if ([domain isEqualToString:@"PAErrorDomain"])
    {
      if ([v10 code] == 2)
      {

LABEL_27:
        v14 = 3;
        goto LABEL_28;
      }

      code = [v10 code];

      if (code == 9)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    v14 = 1;
LABEL_28:
    self->_enabledState = v14;
    goto LABEL_29;
  }

  if (enabledState == 2)
  {
    if (!self->_sandboxExtension)
    {
LABEL_15:
      v19 = 0;
      v7 = [(PAAccessReader *)self requestSandboxExtensionWithError:&v19];
      v12 = v19;
      v9 = v12;
      v5 = v7 != 0;
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v12;
      domain2 = [v10 domain];
      if (([domain2 isEqualToString:@"PAErrorDomain"] & 1) == 0)
      {

        goto LABEL_29;
      }

      if ([v10 code] == 2)
      {
      }

      else
      {
        code2 = [v10 code];

        if (code2 != 9)
        {
          goto LABEL_29;
        }
      }

      [(PAAccessReader *)self lockedSetEnabledStateForLoggingEnabled:0];
LABEL_29:
      if (error)
      {
        v17 = v10;
        *error = v10;
      }

      goto LABEL_31;
    }

    return 1;
  }

  else if (enabledState == 3)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:2 userInfo:0];
      *error = v5 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (void)lockedSetEnabledStateForLoggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_assert_owner(&self->_lock);
  [(PAAccessReader *)self lockedAssertValidEnabledState];
  enabledState = self->_enabledState;
  if (enabledState > 1)
  {
    if (enabledState == 2)
    {
      if (enabledCopy)
      {
        return;
      }

      self->_enabledState = 3;
      sandboxExtension = self->_sandboxExtension;
      self->_sandboxExtension = 0;

      streams = self->_streams;
      self->_streams = 0;

      selfCopy2 = self;
      v7 = 0;
      goto LABEL_16;
    }

    if (enabledState != 3)
    {
      return;
    }

LABEL_7:
    if (!enabledCopy)
    {
      return;
    }

    self->_enabledState = 2;
    selfCopy2 = self;
    v7 = 1;
LABEL_16:

    [(PAAccessReader *)selfCopy2 lockedNotifyDidSetLoggingEnabled:v7];
    return;
  }

  if (self->_enabledState)
  {
    if (enabledState != 1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (enabledCopy)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  self->_enabledState = v8;
}

- (PAAccessReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_accessRecordsForReportFrom:(id)from to:(id)to error:(id *)error
{
  v5 = sub_1DF27BA98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19[-v13];
  sub_1DF27BA88();
  sub_1DF27BA88();
  v15 = sub_1DF2796D0(v14, v11);
  v16 = *(v6 + 8);
  v17 = v15;
  v16(v11, v5);
  v16(v14, v5);

  return v17;
}

void __75__PAAccessReader_exportFromPublisher_toStream_withCancellationToken_error___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_ERROR, "Export publisher completed with error=%{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __75__PAAccessReader_exportFromPublisher_toStream_withCancellationToken_error___block_invoke_38_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1DF25B000, log, OS_LOG_TYPE_ERROR, "Failed to export entry=%@ with error=%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithConnection:(uint64_t)a1 queue:(int)a2 enablementChangedNotificationName:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_1DF25B000, log, OS_LOG_TYPE_ERROR, "Failed to register for %{public}@ notifications with code=%u", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

@end