@interface NSPUserEventAgentFileHandleMaintainer
+ (id)sharedEventAgentMaintainer;
- (void)cancelFileHandleReaderSources;
- (void)checkDeviceFirstUnlock;
- (void)handleProviderAction:(int64_t)action token:(unint64_t)token event:(id)event;
- (void)launchOwner;
- (void)setupReadabilityHandlers;
- (void)startFileHandleReader:(id)reader;
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

- (void)handleProviderAction:(int64_t)action token:(unint64_t)token event:(id)event
{
  eventCopy = event;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_ACCC(action, token, v10);
  }

  if (action == 1)
  {
    [(NSPUserEventAgentFileHandleMaintainer *)selfCopy setEventToken:token];
    if (xpc_dictionary_get_int64(eventCopy, "PID") >= 1)
    {
      [(NSPUserEventAgentFileHandleMaintainer *)selfCopy launchOwner];
    }

    [(NSPUserEventAgentFileHandleMaintainer *)selfCopy stopFileHandleReaderSettingTimer];
    [(NSPUserEventAgentFileHandleMaintainer *)selfCopy resetFileHandlesFromEvent:eventCopy];
    [(NSPUserEventAgentFileHandleMaintainer *)selfCopy cancelFileHandleReaderSources];
    [(NSPUserEventAgentFileHandleMaintainer *)selfCopy setupReadabilityHandlers];
    [(NSPUserEventAgentFileHandleMaintainer *)selfCopy checkDeviceFirstUnlock];
    [(NSPUserEventAgentFileHandleMaintainer *)selfCopy setReceivedEventToken:1];
  }

  objc_sync_exit(selfCopy);
}

- (void)startFileHandleReaderSettingTimer
{
  fileHandleReaderSettingTimer = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSettingTimer];

  if (!fileHandleReaderSettingTimer)
  {
    [(NSPUserEventAgentFileHandleMaintainer *)self provider];
    xpc_event_provider_get_queue();
  }
}

- (void)stopFileHandleReaderSettingTimer
{
  fileHandleReaderSettingTimer = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSettingTimer];

  if (fileHandleReaderSettingTimer)
  {
    fileHandleReaderSettingTimer2 = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSettingTimer];
    dispatch_source_cancel(fileHandleReaderSettingTimer2);

    [(NSPUserEventAgentFileHandleMaintainer *)self setFileHandleReaderSettingTimer:0];
  }
}

- (void)cancelFileHandleReaderSources
{
  fileHandleReaderSources = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSources];

  if (fileHandleReaderSources)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    fileHandleReaderSources2 = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSources];
    v5 = [fileHandleReaderSources2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(fileHandleReaderSources2);
          }

          dispatch_source_cancel(*(*(&v10 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [fileHandleReaderSources2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    fileHandleReaderSources3 = [(NSPUserEventAgentFileHandleMaintainer *)self fileHandleReaderSources];
    [fileHandleReaderSources3 removeAllObjects];
  }
}

- (void)startFileHandleReader:(id)reader
{
  [reader handle];
  [objc_claimAutoreleasedReturnValue() fileDescriptor];
  [(NSPUserEventAgentFileHandleMaintainer *)self provider];
  xpc_event_provider_get_queue();
}

- (void)setupReadabilityHandlers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_6CA0;
  v3[3] = &unk_149B0;
  v3[4] = selfCopy;
  [(NSPUserEventAgentFileHandleMaintainer *)selfCopy iterateFileHandlesWithBlock:v3];
  objc_sync_exit(selfCopy);
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