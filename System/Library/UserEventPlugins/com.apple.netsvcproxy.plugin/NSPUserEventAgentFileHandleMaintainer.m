@interface NSPUserEventAgentFileHandleMaintainer
+ (id)sharedEventAgentMaintainer;
- (void)cancelFileHandleReaderSources;
- (void)checkDeviceFirstUnlock;
- (void)handleProviderAction:(int64_t)a3 token:(unint64_t)a4 event:(id)a5;
- (void)launchOwner;
- (void)setupReadabilityHandlers;
- (void)startFileHandleReader:(id)a3;
- (void)startFileHandleReaderSettingTimer;
- (void)stopFileHandleReaderSettingTimer;
@end

@implementation NSPUserEventAgentFileHandleMaintainer

- (void)checkDeviceFirstUnlock
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_61F0;
  block[3] = &unk_14940;
  block[4] = self;
  if (qword_17E10 != -1)
  {
    dispatch_once(&qword_17E10, block);
  }
}

+ (id)sharedEventAgentMaintainer
{
  if (qword_17E20 != -1)
  {
    sub_ACB8();
  }

  v3 = qword_17E18;

  return v3;
}

- (void)handleProviderAction:(int64_t)a3 token:(unint64_t)a4 event:(id)a5
{
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_ACCC(a3, a4, v10);
  }

  if (a3 == 1)
  {
    [(NSPUserEventAgentFileHandleMaintainer *)v9 setEventToken:a4];
    if (xpc_dictionary_get_int64(v8, "PID") >= 1)
    {
      [(NSPUserEventAgentFileHandleMaintainer *)v9 launchOwner];
    }

    [(NSPUserEventAgentFileHandleMaintainer *)v9 stopFileHandleReaderSettingTimer];
    [(NSPUserEventAgentFileHandleMaintainer *)v9 resetFileHandlesFromEvent:v8];
    [(NSPUserEventAgentFileHandleMaintainer *)v9 cancelFileHandleReaderSources];
    [(NSPUserEventAgentFileHandleMaintainer *)v9 setupReadabilityHandlers];
    [(NSPUserEventAgentFileHandleMaintainer *)v9 checkDeviceFirstUnlock];
    [(NSPUserEventAgentFileHandleMaintainer *)v9 setReceivedEventToken:1];
  }

  objc_sync_exit(v9);
}

- (void)startFileHandleReaderSettingTimer
{
  v3 = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSettingTimer];

  if (!v3)
  {
    [(NSPUserEventAgentFileHandleMaintainer *)self provider];
    xpc_event_provider_get_queue();
  }
}

- (void)stopFileHandleReaderSettingTimer
{
  v3 = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSettingTimer];

  if (v3)
  {
    v4 = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSettingTimer];
    dispatch_source_cancel(v4);

    [(NSPUserEventAgentFileHandleMaintainer *)self setFileHandleReaderSettingTimer:0];
  }
}

- (void)cancelFileHandleReaderSources
{
  v3 = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSources];

  if (v3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSources];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          dispatch_source_cancel(*(*(&v10 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    v9 = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSources];
    [v9 removeAllObjects];
  }
}

- (void)startFileHandleReader:(id)a3
{
  [a3 handle];
  [objc_claimAutoreleasedReturnValue() fileDescriptor];
  [(NSPUserEventAgentFileHandleMaintainer *)self provider];
  xpc_event_provider_get_queue();
}

- (void)setupReadabilityHandlers
{
  v2 = self;
  objc_sync_enter(v2);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_6CA0;
  v3[3] = &unk_149B0;
  v3[4] = v2;
  [(NSPUserEventAgentFileHandleMaintainer *)v2 iterateFileHandlesWithBlock:v3];
  objc_sync_exit(v2);
}

- (void)launchOwner
{
  obj = self;
  objc_sync_enter(obj);
  if ([(NSPUserEventAgentFileHandleMaintainer *)obj receivedEventToken])
  {
    kdebug_trace();
    [(NSPUserEventAgentFileHandleMaintainer *)obj createEvent];
    objc_claimAutoreleasedReturnValue();
    [(NSPUserEventAgentFileHandleMaintainer *)obj provider];
    [(NSPUserEventAgentFileHandleMaintainer *)obj eventToken];
    xpc_event_provider_token_fire();
  }

  objc_sync_exit(obj);
}

@end