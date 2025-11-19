@interface FSEventStreamMultiplexer
- (BOOL)unregisterClient:(int)a3;
- (FSEventStreamMultiplexer)initWithLogHandle:(id)a3;
- (NSArray)pathsWatched;
- (id)_copyResolvedPathToClientsMap;
- (id)summary;
- (int)registerClient:(id)a3 ofPaths:(id)a4 withCallback:(id)a5;
- (void)_handleStream:(__FSEventStream *)a3 numEvents:(unint64_t)a4 eventPaths:(const char *)a5 eventFlags:(const unsigned int *)a6 eventIds:(const unint64_t *)a7;
- (void)_refreshStream;
- (void)dealloc;
@end

@implementation FSEventStreamMultiplexer

- (id)_copyResolvedPathToClientsMap
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if (!v3)
  {
    v21 = [(FSEventStreamMultiplexer *)self logHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_38E0();
    }

    goto LABEL_12;
  }

  v4 = FSEventStreamCopyPathsBeingWatchedWrapper([(FSEventStreamMultiplexer *)self eventStream]);
  if (!v4)
  {
    v21 = [(FSEventStreamMultiplexer *)self logHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
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
  v7 = [(FSEventStreamMultiplexer *)self pathsWatched];
  v8 = [v7 count];

  if (v6 != v8)
  {
    v22 = [(FSEventStreamMultiplexer *)self logHandle];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_3878();
    }

    goto LABEL_16;
  }

  v9 = [(FSEventStreamMultiplexer *)self pathsWatched];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [(FSEventStreamMultiplexer *)self pathsWatched];
      v14 = [v13 objectAtIndexedSubscript:v11];

      v15 = [(__CFArray *)v5 objectAtIndexedSubscript:v11];
      v16 = [(FSEventStreamMultiplexer *)self pathToClientsMap];
      v17 = [v16 objectForKeyedSubscript:v14];
      [v3 setObject:v17 forKeyedSubscript:v15];

      objc_autoreleasePoolPop(v12);
      ++v11;
      v18 = [(FSEventStreamMultiplexer *)self pathsWatched];
      v19 = [v18 count];
    }

    while (v11 < v19);
  }

  v20 = [[NSDictionary alloc] initWithDictionary:v3];
LABEL_17:

  return v20;
}

- (NSArray)pathsWatched
{
  v2 = [(FSEventStreamMultiplexer *)self pathToClientsMap];
  v3 = [v2 allKeys];

  return v3;
}

- (FSEventStreamMultiplexer)initWithLogHandle:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v7->_logHandle, a3);
    v7->_streamState = @"not created";
  }

  return v7;
}

- (int)registerClient:(id)a3 ofPaths:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  v11 = [(FSEventStreamMultiplexer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_272C;
  block[3] = &unk_87F8;
  block[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = &v21;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_sync(v11, block);

  LODWORD(v10) = *(v22 + 6);
  _Block_object_dispose(&v21, 8);
  return v10;
}

- (BOOL)unregisterClient:(int)a3
{
  v4 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(FSEventStreamMultiplexer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B18;
  block[3] = &unk_8820;
  v8 = a3;
  block[4] = v4;
  block[5] = &v9;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
}

- (id)summary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(FSEventStreamMultiplexer *)self streamState];
  [v3 setObject:v4 forKeyedSubscript:@"state"];

  v5 = [NSNumber numberWithUnsignedInt:[(FSEventStreamMultiplexer *)self eventStreamCreateFlags]];
  [v3 setObject:v5 forKeyedSubscript:@"flags"];

  v6 = [(FSEventStreamMultiplexer *)self streamState];

  if (v6 != @"not created")
  {
    v7 = objc_alloc_init(NSMutableArray);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [(FSEventStreamMultiplexer *)self clients];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v20 + 1) + 8 * i) name];
          [v7 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v15 = [v7 sortedArrayUsingSelector:"compare:"];
    [v3 setObject:v15 forKeyedSubscript:@"clients"];

    v16 = [(FSEventStreamMultiplexer *)self pathsWatched];
    v17 = [v16 sortedArrayUsingSelector:"compare:"];
    [v3 setObject:v17 forKeyedSubscript:@"paths"];
  }

  v18 = [v3 copy];

  return v18;
}

- (void)_handleStream:(__FSEventStream *)a3 numEvents:(unint64_t)a4 eventPaths:(const char *)a5 eventFlags:(const unsigned int *)a6 eventIds:(const unint64_t *)a7
{
  v8 = a5;
  v9 = a4;
  v11 = [(FSEventStreamMultiplexer *)self queue:a3];
  dispatch_assert_queue_V2(v11);

  if ((*a6 & 0x10) == 0)
  {
    v12 = objc_alloc_init(NSMutableSet);
    v13 = [(FSEventStreamMultiplexer *)self _copyResolvedPathToClientsMap];
    if (v9)
    {
      v15 = 0;
      *&v14 = 138543362;
      v40 = v14;
      v41 = v9;
      v42 = v8;
      do
      {
        v16 = objc_autoreleasePoolPush();
        v17 = v16;
        if (v8 && v8[v15])
        {
          v44 = v16;
          v18 = [[NSString alloc] initWithCString:v8[v15] encoding:4];
          v19 = [(FSEventStreamMultiplexer *)self logHandle];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = v40;
            v58 = v18;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Received FSEvent about %{public}@", buf, 0xCu);
          }

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v43 = v18;
          v20 = [v18 pathComponents];
          v21 = [v20 countByEnumeratingWithState:&v49 objects:v56 count:16];
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
                  objc_enumerationMutation(v20);
                }

                v24 = [(__CFString *)v26 stringByAppendingPathComponent:*(*(&v49 + 1) + 8 * v25), v40];

                v27 = [v13 objectForKeyedSubscript:v24];

                if (v27)
                {
                  v28 = [v13 objectForKeyedSubscript:v24];
                  [v12 unionSet:v28];
                }

                v25 = v25 + 1;
                v26 = v24;
              }

              while (v22 != v25);
              v22 = [v20 countByEnumeratingWithState:&v49 objects:v56 count:16];
            }

            while (v22);
          }

          else
          {
            v24 = &stru_89C0;
          }

          v9 = v41;
          v8 = v42;
          v29 = v43;
          v17 = v44;
        }

        else
        {
          v29 = [(FSEventStreamMultiplexer *)self logHandle];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_3914(&v53, v54, v29);
          }
        }

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v15 != v9);
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
          v36 = [v35 callback];

          if (v36)
          {
            v37 = [(FSEventStreamMultiplexer *)self logHandle];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = [v35 name];
              *buf = 138543362;
              v58 = v38;
              _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Notifying client '%{public}@'", buf, 0xCu);
            }

            v39 = [v35 callback];
            v39[2]();
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
  v4 = [(FSEventStreamMultiplexer *)self queue];
  dispatch_assert_queue_V2(v4);

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
    v8 = [(FSEventStreamMultiplexer *)self pathsWatched];
    self->_eventStream = FSEventStreamCreateWrapper(kCFAllocatorDefault, sub_D38, &v13, v8, CurrentEventIdWrapper, 0.1, [(FSEventStreamMultiplexer *)self eventStreamCreateFlags]);

    if (self->_eventStream)
    {
      [(FSEventStreamMultiplexer *)self setStreamState:@"created"];
      v9 = self->_eventStream;
      v10 = [(FSEventStreamMultiplexer *)self queue];
      FSEventStreamSetDispatchQueueWrapper(v9, v10);

      if (FSEventStreamStartWrapper(self->_eventStream))
      {
        [(FSEventStreamMultiplexer *)self setStreamState:@"started"];
      }

      else
      {
        [(FSEventStreamMultiplexer *)self setStreamState:@"FAILED TO START"];
        v12 = [(FSEventStreamMultiplexer *)self logHandle];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
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
      v11 = [(FSEventStreamMultiplexer *)self logHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
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