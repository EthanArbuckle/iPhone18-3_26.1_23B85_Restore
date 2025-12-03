@interface SKMediaEventsHelper
+ (void)initialize;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SKMediaEventsHelper)initWithQueue:(id)queue;
- (SKMediaEventsHelper)initWithQueue:(id)queue listener:(id)listener;
- (void)authorizationRequestStatusForMediaEventsStreamWithReply:(id)reply;
- (void)dealloc;
- (void)resume;
- (void)writeMediaEvents:(id)events withTimestamp:(double)timestamp reply:(id)reply;
@end

@implementation SKMediaEventsHelper

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100008800 = os_log_create("com.apple.SensorKit", "SKMediaEventsHelper");
  }
}

- (SKMediaEventsHelper)initWithQueue:(id)queue
{
  v5 = +[NSXPCListener serviceListener];
  [(NSXPCListener *)v5 _setQueue:queue];

  return [(SKMediaEventsHelper *)self initWithQueue:queue listener:v5];
}

- (SKMediaEventsHelper)initWithQueue:(id)queue listener:(id)listener
{
  v10.receiver = self;
  v10.super_class = SKMediaEventsHelper;
  v6 = [(SKMediaEventsHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_q = queue;
    dispatch_retain(queue);
    listenerCopy = listener;
    v7->_listener = listenerCopy;
    [(NSXPCListener *)listenerCopy setDelegate:v7];
    v7->_stream = [objc_msgSend(objc_msgSend(BiomeLibrary() "Messages")];
    v7->_TCCObserver = objc_alloc_init(SKTCCServiceObserver);
  }

  return v7;
}

- (void)resume
{
  listener = [(SKMediaEventsHelper *)self listener];

  [(NSXPCListener *)listener resume];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  dispatch_release(self->_q);

  v3.receiver = self;
  v3.super_class = SKMediaEventsHelper;
  [(SKMediaEventsHelper *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v6 = qword_100008800;
  if (os_log_type_enabled(qword_100008800, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Got a connection attempt on com.apple.SensorKit.SKMediaEventsHelper", v8, 2u);
  }

  [connection setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___SKMediaEventsHelperProtocol)}];
  [connection setExportedObject:self];
  [connection _setQueue:self->_q];
  [connection resume];
  return 1;
}

- (void)authorizationRequestStatusForMediaEventsStreamWithReply:(id)reply
{
  isMediaEventsStreamAuthorized = [(SKTCCServiceObserver *)[(SKMediaEventsHelper *)self TCCObserver] isMediaEventsStreamAuthorized];
  v5 = *(reply + 2);

  v5(reply, isMediaEventsStreamAuthorized, 0);
}

- (void)writeMediaEvents:(id)events withTimestamp:(double)timestamp reply:(id)reply
{
  if ([(SKTCCServiceObserver *)[(SKMediaEventsHelper *)self TCCObserver] isMediaEventsStreamAuthorized])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [events countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      replyCopy = reply;
      v10 = 0;
      v11 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(events);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [objc_msgSend(events objectForKeyedSubscript:{v13, replyCopy), "BOOLValue"}];
          v15 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:timestamp + ++v10 * 0.000001];
          v16 = [[BMMessagesMediaRenderedMediaAttributes alloc] initWithUUID:v13];
          v17 = [BMMessagesMediaRendered alloc];
          v28 = v16;
          v18 = [v17 initWithAbsoluteTimestamp:v15 mediaAttributes:+[NSArray arrayWithObjects:count:](NSArray isOnScreen:"arrayWithObjects:count:" isFirstView:{&v28, 1), +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v14), 0}];
          [-[BMStream source](-[SKMediaEventsHelper stream](self "stream")];
        }

        v9 = [events countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v9);
      v19 = 0;
      reply = replyCopy;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = qword_100008800;
    if (os_log_type_enabled(qword_100008800, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Media Events stream is not authorized", buf, 2u);
    }

    v19 = [NSError errorWithDomain:@"ErrorDomain" code:0 userInfo:0];
  }

  (*(reply + 2))(reply, v19);
}

@end