@interface FSEventStreamMultiplexer
- (BOOL)unregisterClient:(int)client;
- (FSEventStreamMultiplexer)initWithLogHandle:(id)handle;
- (NSArray)pathsWatched;
- (id)_copyResolvedPathToClientsMap;
- (id)summary;
- (int)registerClient:(id)client ofPaths:(id)paths withCallback:(id)callback;
- (void)_handleStream:(__FSEventStream *)stream numEvents:(unint64_t)events eventPaths:(const char *)paths eventFlags:(const unsigned int *)flags eventIds:(const unint64_t *)ids;
- (void)_refreshStream;
- (void)dealloc;
@end

@implementation FSEventStreamMultiplexer

- (id)_copyResolvedPathToClientsMap
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if (!v3)
  {
    logHandle = [(FSEventStreamMultiplexer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_38E0();
    }

    goto LABEL_12;
  }

  v4 = FSEventStreamCopyPathsBeingWatchedWrapper([(FSEventStreamMultiplexer *)self eventStream]);
  if (!v4)
  {
    logHandle = [(FSEventStreamMultiplexer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_38AC();
    }

LABEL_12:

    v5 = 0;
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [(__CFArray *)v4 count];
  pathsWatched = [(FSEventStreamMultiplexer *)self pathsWatched];
  v8 = [pathsWatched count];

  if (v6 != v8)
  {
    logHandle2 = [(FSEventStreamMultiplexer *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      sub_3878();
    }

    goto LABEL_16;
  }

  pathsWatched2 = [(FSEventStreamMultiplexer *)self pathsWatched];
  v10 = [pathsWatched2 count];

  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = objc_autoreleasePoolPush();
      pathsWatched3 = [(FSEventStreamMultiplexer *)self pathsWatched];
      v14 = [pathsWatched3 objectAtIndexedSubscript:v11];

      v15 = [(__CFArray *)v5 objectAtIndexedSubscript:v11];
      pathToClientsMap = [(FSEventStreamMultiplexer *)self pathToClientsMap];
      v17 = [pathToClientsMap objectForKeyedSubscript:v14];
      [v3 setObject:v17 forKeyedSubscript:v15];

      objc_autoreleasePoolPop(v12);
      ++v11;
      pathsWatched4 = [(FSEventStreamMultiplexer *)self pathsWatched];
      v19 = [pathsWatched4 count];
    }

    while (v11 < v19);
  }

  v20 = [[NSDictionary alloc] initWithDictionary:v3];
LABEL_17:

  return v20;
}

- (NSArray)pathsWatched
{
  pathToClientsMap = [(FSEventStreamMultiplexer *)self pathToClientsMap];
  allKeys = [pathToClientsMap allKeys];

  return allKeys;
}

- (FSEventStreamMultiplexer)initWithLogHandle:(id)handle
{
  handleCopy = handle;
  v16.receiver = self;
  v16.super_class = FSEventStreamMultiplexer;
  v6 = [(FSEventStreamMultiplexer *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_nextAvailableID = 0;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.UserEventAgent.fsevents.FSEventStreamMultiplexer", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    clients = v7->_clients;
    v7->_clients = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    pathToClientsMap = v7->_pathToClientsMap;
    v7->_pathToClientsMap = v13;

    v7->_eventStreamCreateFlags = 0;
    v7->_eventStream = 0;
    objc_storeStrong(&v7->_logHandle, handle);
    v7->_streamState = @"not created";
  }

  return v7;
}

- (int)registerClient:(id)client ofPaths:(id)paths withCallback:(id)callback
{
  clientCopy = client;
  pathsCopy = paths;
  callbackCopy = callback;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  queue = [(FSEventStreamMultiplexer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_272C;
  block[3] = &unk_87F8;
  block[4] = self;
  v17 = clientCopy;
  v18 = pathsCopy;
  v19 = callbackCopy;
  v20 = &v21;
  v12 = pathsCopy;
  v13 = callbackCopy;
  v14 = clientCopy;
  dispatch_sync(queue, block);

  LODWORD(callbackCopy) = *(v22 + 6);
  _Block_object_dispose(&v21, 8);
  return callbackCopy;
}

- (BOOL)unregisterClient:(int)client
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = [(FSEventStreamMultiplexer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B18;
  block[3] = &unk_8820;
  clientCopy = client;
  block[4] = selfCopy;
  block[5] = &v9;
  dispatch_sync(queue, block);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

- (id)summary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  streamState = [(FSEventStreamMultiplexer *)self streamState];
  [v3 setObject:streamState forKeyedSubscript:@"state"];

  v5 = [NSNumber numberWithUnsignedInt:[(FSEventStreamMultiplexer *)self eventStreamCreateFlags]];
  [v3 setObject:v5 forKeyedSubscript:@"flags"];

  streamState2 = [(FSEventStreamMultiplexer *)self streamState];

  if (streamState2 != @"not created")
  {
    v7 = objc_alloc_init(NSMutableArray);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    clients = [(FSEventStreamMultiplexer *)self clients];
    allValues = [clients allValues];

    v10 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          name = [*(*(&v20 + 1) + 8 * i) name];
          [v7 addObject:name];
        }

        v11 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v15 = [v7 sortedArrayUsingSelector:"compare:"];
    [v3 setObject:v15 forKeyedSubscript:@"clients"];

    pathsWatched = [(FSEventStreamMultiplexer *)self pathsWatched];
    v17 = [pathsWatched sortedArrayUsingSelector:"compare:"];
    [v3 setObject:v17 forKeyedSubscript:@"paths"];
  }

  v18 = [v3 copy];

  return v18;
}

- (void)_handleStream:(__FSEventStream *)stream numEvents:(unint64_t)events eventPaths:(const char *)paths eventFlags:(const unsigned int *)flags eventIds:(const unint64_t *)ids
{
  pathsCopy = paths;
  eventsCopy = events;
  v11 = [(FSEventStreamMultiplexer *)self queue:stream];
  dispatch_assert_queue_V2(v11);

  if ((*flags & 0x10) == 0)
  {
    v12 = objc_alloc_init(NSMutableSet);
    _copyResolvedPathToClientsMap = [(FSEventStreamMultiplexer *)self _copyResolvedPathToClientsMap];
    if (eventsCopy)
    {
      v15 = 0;
      *&v14 = 138543362;
      v40 = v14;
      v41 = eventsCopy;
      v42 = pathsCopy;
      do
      {
        v16 = objc_autoreleasePoolPush();
        v17 = v16;
        if (pathsCopy && pathsCopy[v15])
        {
          v44 = v16;
          v18 = [[NSString alloc] initWithCString:pathsCopy[v15] encoding:4];
          logHandle = [(FSEventStreamMultiplexer *)self logHandle];
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
          {
            *buf = v40;
            v58 = v18;
            _os_log_impl(&dword_0, logHandle, OS_LOG_TYPE_INFO, "Received FSEvent about %{public}@", buf, 0xCu);
          }

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v43 = v18;
          pathComponents = [v18 pathComponents];
          v21 = [pathComponents countByEnumeratingWithState:&v49 objects:v56 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v50;
            v24 = &stru_89C0;
            do
            {
              v25 = 0;
              v26 = v24;
              do
              {
                if (*v50 != v23)
                {
                  objc_enumerationMutation(pathComponents);
                }

                v24 = [(__CFString *)v26 stringByAppendingPathComponent:*(*(&v49 + 1) + 8 * v25), v40];

                v27 = [_copyResolvedPathToClientsMap objectForKeyedSubscript:v24];

                if (v27)
                {
                  v28 = [_copyResolvedPathToClientsMap objectForKeyedSubscript:v24];
                  [v12 unionSet:v28];
                }

                v25 = v25 + 1;
                v26 = v24;
              }

              while (v22 != v25);
              v22 = [pathComponents countByEnumeratingWithState:&v49 objects:v56 count:16];
            }

            while (v22);
          }

          else
          {
            v24 = &stru_89C0;
          }

          eventsCopy = v41;
          pathsCopy = v42;
          logHandle2 = v43;
          v17 = v44;
        }

        else
        {
          logHandle2 = [(FSEventStreamMultiplexer *)self logHandle];
          if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
          {
            sub_3914(&v53, v54, logHandle2);
          }
        }

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v15 != eventsCopy);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v30 = v12;
    v31 = [v30 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v46;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v46 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v45 + 1) + 8 * i);
          callback = [v35 callback];

          if (callback)
          {
            logHandle3 = [(FSEventStreamMultiplexer *)self logHandle];
            if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_INFO))
            {
              name = [v35 name];
              *buf = 138543362;
              v58 = name;
              _os_log_impl(&dword_0, logHandle3, OS_LOG_TYPE_INFO, "Notifying client '%{public}@'", buf, 0xCu);
            }

            callback2 = [v35 callback];
            callback2[2]();
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v32);
    }
  }
}

- (void)_refreshStream
{
  CurrentEventIdWrapper = FSEventsGetCurrentEventIdWrapper();
  queue = [(FSEventStreamMultiplexer *)self queue];
  dispatch_assert_queue_V2(queue);

  v13.version = 0;
  memset(&v13.retain, 0, 24);
  v13.info = self;
  eventStream = self->_eventStream;
  if (eventStream)
  {
    CurrentEventIdWrapper = FSEventStreamGetLatestEventIdWrapper(eventStream);
    FSEventStreamStopWrapper(self->_eventStream);
    FSEventStreamInvalidateWrapper(self->_eventStream);
    FSEventStreamReleaseWrapper(self->_eventStream);
    self->_eventStream = 0;
    [(FSEventStreamMultiplexer *)self setStreamState:@"stopped", *&v13.version, *&v13.retain, v13.copyDescription];
  }

  v6 = [(FSEventStreamMultiplexer *)self clients:*&v13.version];
  v7 = [v6 count];

  if (v7)
  {
    pathsWatched = [(FSEventStreamMultiplexer *)self pathsWatched];
    self->_eventStream = FSEventStreamCreateWrapper(kCFAllocatorDefault, sub_D38, &v13, pathsWatched, CurrentEventIdWrapper, 0.1, [(FSEventStreamMultiplexer *)self eventStreamCreateFlags]);

    if (self->_eventStream)
    {
      [(FSEventStreamMultiplexer *)self setStreamState:@"created"];
      v9 = self->_eventStream;
      queue2 = [(FSEventStreamMultiplexer *)self queue];
      FSEventStreamSetDispatchQueueWrapper(v9, queue2);

      if (FSEventStreamStartWrapper(self->_eventStream))
      {
        [(FSEventStreamMultiplexer *)self setStreamState:@"started"];
      }

      else
      {
        [(FSEventStreamMultiplexer *)self setStreamState:@"FAILED TO START"];
        logHandle = [(FSEventStreamMultiplexer *)self logHandle];
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
        {
          sub_3954(self);
        }

        FSEventStreamReleaseWrapper(self->_eventStream);
        self->_eventStream = 0;
      }
    }

    else
    {
      [(FSEventStreamMultiplexer *)self setStreamState:@"FAILED TO CREATE"];
      logHandle2 = [(FSEventStreamMultiplexer *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_FAULT))
      {
        sub_39D0(self);
      }
    }
  }
}

- (void)dealloc
{
  eventStream = self->_eventStream;
  if (eventStream)
  {
    FSEventStreamStopWrapper(eventStream);
    FSEventStreamInvalidateWrapper(self->_eventStream);
    FSEventStreamReleaseWrapper(self->_eventStream);
  }

  v4.receiver = self;
  v4.super_class = FSEventStreamMultiplexer;
  [(FSEventStreamMultiplexer *)&v4 dealloc];
}

@end