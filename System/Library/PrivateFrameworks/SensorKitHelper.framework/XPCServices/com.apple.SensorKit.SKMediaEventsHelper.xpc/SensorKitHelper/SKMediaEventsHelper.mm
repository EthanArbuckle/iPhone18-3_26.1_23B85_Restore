@interface SKMediaEventsHelper
+ (void)initialize;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SKMediaEventsHelper)initWithQueue:(id)a3;
- (SKMediaEventsHelper)initWithQueue:(id)a3 listener:(id)a4;
- (void)authorizationRequestStatusForMediaEventsStreamWithReply:(id)a3;
- (void)dealloc;
- (void)resume;
- (void)writeMediaEvents:(id)a3 withTimestamp:(double)a4 reply:(id)a5;
@end

@implementation SKMediaEventsHelper

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100008800 = os_log_create("com.apple.SensorKit", "SKMediaEventsHelper");
  }
}

- (SKMediaEventsHelper)initWithQueue:(id)a3
{
  v5 = +[NSXPCListener serviceListener];
  [(NSXPCListener *)v5 _setQueue:a3];

  return [(SKMediaEventsHelper *)self initWithQueue:a3 listener:v5];
}

- (SKMediaEventsHelper)initWithQueue:(id)a3 listener:(id)a4
{
  v10.receiver = self;
  v10.super_class = SKMediaEventsHelper;
  v6 = [(SKMediaEventsHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_q = a3;
    dispatch_retain(a3);
    v8 = a4;
    v7->_listener = v8;
    [(NSXPCListener *)v8 setDelegate:v7];
    v7->_stream = [objc_msgSend(objc_msgSend(BiomeLibrary() "Messages")];
    v7->_TCCObserver = objc_alloc_init(SKTCCServiceObserver);
  }

  return v7;
}

- (void)resume
{
  v2 = [(SKMediaEventsHelper *)self listener];

  [(NSXPCListener *)v2 resume];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  dispatch_release(self->_q);

  v3.receiver = self;
  v3.super_class = SKMediaEventsHelper;
  [(SKMediaEventsHelper *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = qword_100008800;
  if (os_log_type_enabled(qword_100008800, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Got a connection attempt on com.apple.SensorKit.SKMediaEventsHelper", v8, 2u);
  }

  [a4 setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___SKMediaEventsHelperProtocol)}];
  [a4 setExportedObject:self];
  [a4 _setQueue:self->_q];
  [a4 resume];
  return 1;
}

- (void)authorizationRequestStatusForMediaEventsStreamWithReply:(id)a3
{
  v4 = [(SKTCCServiceObserver *)[(SKMediaEventsHelper *)self TCCObserver] isMediaEventsStreamAuthorized];
  v5 = *(a3 + 2);

  v5(a3, v4, 0);
}

- (void)writeMediaEvents:(id)a3 withTimestamp:(double)a4 reply:(id)a5
{
  if ([(SKTCCServiceObserver *)[(SKMediaEventsHelper *)self TCCObserver] isMediaEventsStreamAuthorized])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = a5;
      v10 = 0;
      v11 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(a3);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [objc_msgSend(a3 objectForKeyedSubscript:{v13, v21), "BOOLValue"}];
          v15 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a4 + ++v10 * 0.000001];
          v16 = [[BMMessagesMediaRenderedMediaAttributes alloc] initWithUUID:v13];
          v17 = [BMMessagesMediaRendered alloc];
          v28 = v16;
          v18 = [v17 initWithAbsoluteTimestamp:v15 mediaAttributes:+[NSArray arrayWithObjects:count:](NSArray isOnScreen:"arrayWithObjects:count:" isFirstView:{&v28, 1), +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v14), 0}];
          [-[BMStream source](-[SKMediaEventsHelper stream](self "stream")];
        }

        v9 = [a3 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v9);
      v19 = 0;
      a5 = v21;
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

  (*(a5 + 2))(a5, v19);
}

@end