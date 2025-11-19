@interface MIDaemon
- (MIDaemon)init;
- (void)connection:(id)a3 didCloseConnection:(int64_t)a4;
- (void)connection:(id)a3 didRecieveData:(id)a4;
- (void)connectionMade:(id)a3;
- (void)handleClientRequest:(id)a3 withDataRequest:(id)a4;
- (void)handleConnection:(id)a3;
- (void)handleServerResponse:(id)a3 withResponse:(id)a4;
@end

@implementation MIDaemon

- (MIDaemon)init
{
  v18.receiver = self;
  v18.super_class = MIDaemon;
  v2 = [(MIDaemon *)&v18 init];
  if (v2)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.mapinspectord", &_dispatch_main_q, 1uLL);
    xpcApplicationListenConnection = v2->_xpcApplicationListenConnection;
    v2->_xpcApplicationListenConnection = mach_service;

    v5 = v2->_xpcApplicationListenConnection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001344;
    handler[3] = &unk_1000042E0;
    v6 = v2;
    v17 = v6;
    xpc_connection_set_event_handler(v5, handler);
    xpc_connection_resume(v2->_xpcApplicationListenConnection);
    v7 = objc_alloc_init(NSMutableArray);
    connections = v6->_connections;
    v6->_connections = v7;

    v9 = objc_alloc_init(NSMutableArray);
    serverArray = v6->_serverArray;
    v6->_serverArray = v9;

    v11 = +[NSMutableDictionary dictionary];
    clientReqDict = v6->_clientReqDict;
    v6->_clientReqDict = v11;

    v13 = +[NSMutableDictionary dictionary];
    clientRequestInfosDict = v6->_clientRequestInfosDict;
    v6->_clientRequestInfosDict = v13;

    v6->_clientRequestID = 0;
  }

  return v2;
}

- (void)handleConnection:(id)a3
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_connection)
  {
    [MIConnection createConnectionWithXPCObject:v4 withSelector:"connectionMade:" onTarget:self];
  }
}

- (void)connectionMade:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  [(NSMutableArray *)self->_connections addObject:v4];
}

- (void)connection:(id)a3 didRecieveData:(id)a4
{
  v11 = a3;
  v6 = [NSPropertyListSerialization propertyListWithData:a4 options:0 format:0 error:0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"Type"];
    if ([v8 isEqualToString:@"Server"])
    {
      [(MIDaemon *)self handleServerRequest:v11];
    }

    else
    {
      v9 = [v7 objectForKey:@"Data Request"];
      if (v9)
      {
        [(MIDaemon *)self handleClientRequest:v11 withDataRequest:v9];
      }

      else
      {
        v10 = [v7 objectForKey:@"Data Response ID"];
        if (v10)
        {
          [(MIDaemon *)self handleServerResponse:v11 withResponse:v7];
        }
      }
    }
  }
}

- (void)connection:(id)a3 didCloseConnection:(int64_t)a4
{
  serverArray = self->_serverArray;
  v6 = a3;
  [(NSMutableArray *)serverArray removeObject:v6];
  [(NSMutableArray *)self->_connections removeObject:v6];

  if (![(NSMutableArray *)self->_connections count])
  {
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

- (void)handleClientRequest:(id)a3 withDataRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_clientRequestID + 1;
  self->_clientRequestID = v8;
  v9 = [NSNumber numberWithUnsignedChar:v8];
  [(NSMutableDictionary *)self->_clientReqDict setObject:v6 forKey:v9];
  [(NSMutableDictionary *)self->_clientRequestInfosDict setObject:v7 forKey:v9];
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:v9 forKey:@"Client Request ID"];
  [v10 setObject:v7 forKey:@"Data Request"];
  v11 = [NSPropertyListSerialization dataWithPropertyList:v10 format:200 options:0 error:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_serverArray;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * i) sendData:{v11, v17}];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)handleServerResponse:(id)a3 withResponse:(id)a4
{
  v5 = a4;
  v17 = +[NSMutableDictionary dictionary];
  v6 = [v5 objectForKey:@"Display Type"];
  [v17 setObject:v6 forKey:@"Display Type"];

  v7 = [v5 objectForKey:@"Data"];
  v8 = [v7 objectForKey:@"Map View"];
  v9 = [v5 objectForKey:@"Data Response ID"];

  v10 = [(NSMutableDictionary *)self->_clientRequestInfosDict objectForKey:v9];
  if ([v10 containsObject:@"CameraController"])
  {
    v11 = [v8 objectForKey:@"Current Camera Controller"];
    v12 = [v11 objectForKey:@"Camera Position"];
    [v17 setObject:v12 forKey:@"Camera Position"];

    v13 = [v11 objectForKey:@"Camera Target"];
    [v17 setObject:v13 forKey:@"Camera Target"];

    v14 = [v11 objectForKey:@"Distance From Target"];
    [v17 setObject:v14 forKey:@"Distance From Target"];
  }

  v15 = [(NSMutableDictionary *)self->_clientReqDict objectForKey:v9];
  if (v15)
  {
    v16 = [NSPropertyListSerialization dataWithPropertyList:v17 format:200 options:0 error:0];
    [v15 sendData:v16];
  }

  [(NSMutableDictionary *)self->_clientReqDict removeObjectForKey:v9];
  [(NSMutableDictionary *)self->_clientRequestInfosDict removeObjectForKey:v9];
}

@end