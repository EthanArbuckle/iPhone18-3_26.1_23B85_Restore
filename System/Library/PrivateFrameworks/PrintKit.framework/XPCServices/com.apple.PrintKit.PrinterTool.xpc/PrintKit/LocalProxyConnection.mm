@interface LocalProxyConnection
- (LocalProxyConnection)initWithConnection:(id)connection path:(id)path queue:(id)queue;
- (void)_canReadFromSocket;
- (void)_checkWrite;
- (void)_httpReceive;
- (void)_receiveFromHTTP:(id)p;
- (void)_shutdown;
- (void)_start;
- (void)cancel;
- (void)start;
@end

@implementation LocalProxyConnection

- (LocalProxyConnection)initWithConnection:(id)connection path:(id)path queue:(id)queue
{
  connectionCopy = connection;
  pathCopy = path;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = LocalProxyConnection;
  v12 = [(LocalProxyConnection *)&v16 init];
  if (v12)
  {
    v13 = nw_content_context_create([pathCopy UTF8String]);
    context = v12->_context;
    v12->_context = v13;

    objc_storeStrong(&v12->_conn, connection);
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v12->_path, path);
  }

  return v12;
}

- (void)start
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100025654;
  v4[3] = &unk_1000A2328;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_receiveFromHTTP:(id)p
{
  pCopy = p;
  dataToSendToSocket = self->_dataToSendToSocket;
  v8 = pCopy;
  if (dataToSendToSocket)
  {
    concat = dispatch_data_create_concat(dataToSendToSocket, pCopy);
  }

  else
  {
    concat = pCopy;
  }

  v7 = self->_dataToSendToSocket;
  self->_dataToSendToSocket = concat;

  [(LocalProxyConnection *)self _checkWrite];
}

- (void)_checkWrite
{
  if (self->_writeOK)
  {
    dataToSendToSocket = self->_dataToSendToSocket;
    if (dataToSendToSocket)
    {
      self->_writeOK = 0;
      if (self->_ws_suspended)
      {
        self->_ws_suspended = 0;
        dispatch_resume(self->_ws);
        dataToSendToSocket = self->_dataToSendToSocket;
      }

      v4 = dataToSendToSocket;
      v5 = self->_dataToSendToSocket;
      self->_dataToSendToSocket = 0;

      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100025888;
      v11[3] = &unk_1000A2350;
      v11[4] = self;
      v11[5] = &v12;
      dispatch_data_apply(v4, v11);
      size = dispatch_data_get_size(v4);
      v7 = v13[3];
      if (v7 < size)
      {
        subrange = dispatch_data_create_subrange(v4, v7, size);
        v9 = self->_dataToSendToSocket;
        self->_dataToSendToSocket = subrange;
      }

      _Block_object_dispose(&v12, 8);
    }

    else if (!self->_ws_suspended)
    {
      self->_ws_suspended = 1;
      ws = self->_ws;

      dispatch_suspend(ws);
    }
  }
}

- (void)_httpReceive
{
  objc_initWeak(&location, self);
  conn = self->_conn;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100025A08;
  v4[3] = &unk_1000A2378;
  objc_copyWeak(&v5, &location);
  nw_connection_receive(conn, 1u, 0x4000u, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_canReadFromSocket
{
  v3 = read(self->_fd, buffer, 0x4000uLL);
  if (v3 <= 0)
  {
    [(LocalProxyConnection *)self _shutdown];
  }

  else
  {
    v4 = dispatch_data_create(buffer, v3, 0, 0);
    nw_connection_send(self->_conn, v4, self->_context, 0, &stru_1000A23B8);
  }
}

- (void)_start
{
  v3 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LocalProxyConnection _start", buf, 2u);
  }

  nw_connection_set_queue(self->_conn, self->_queue);
  objc_initWeak(&location, self);
  conn = self->_conn;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002605C;
  handler[3] = &unk_1000A23E0;
  objc_copyWeak(&v27, &location);
  nw_connection_set_state_changed_handler(conn, handler);
  uTF8String = [(NSString *)self->_path UTF8String];
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v31 = 0u;
  v32 = 0u;
  *buf = 0u;
  v30 = 0u;
  v6 = socket(1, 1, 0);
  if ((v6 & 0x80000000) != 0 || (buf[1] = 1, snprintf(&buf[2], 0x68uLL, "%s", uTF8String), connect(v6, buf, 0x6Au) < 0))
  {
    self->_fd = -1;
  }

  else
  {
    self->_fd = v6;
    v7 = dispatch_source_create(&_dispatch_source_type_read, v6, 0, self->_queue);
    rs = self->_rs;
    self->_rs = v7;

    v9 = dispatch_source_create(&_dispatch_source_type_write, self->_fd, 0, self->_queue);
    ws = self->_ws;
    self->_ws = v9;

    fd = self->_fd;
    v12 = self->_rs;
    v13 = self->_ws;
    v14 = self->_rs;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000260D0;
    v22[3] = &unk_1000A2408;
    v25 = fd;
    v23 = v12;
    v15 = v12;
    objc_copyWeak(&v24, &location);
    dispatch_source_set_event_handler(v14, v22);
    v16 = self->_ws;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000261C0;
    v18[3] = &unk_1000A2408;
    v21 = fd;
    v19 = v13;
    v17 = v13;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v16, v18);
    dispatch_resume(self->_rs);
    dispatch_resume(self->_ws);
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v24);
  }

  nw_connection_start(self->_conn);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)_shutdown
{
  rs = self->_rs;
  if (rs)
  {
    dispatch_source_cancel(rs);
    v4 = self->_rs;
    self->_rs = 0;
  }

  ws = self->_ws;
  if (ws)
  {
    if (self->_ws_suspended)
    {
      self->_ws_suspended = 0;
      dispatch_resume(ws);
      ws = self->_ws;
    }

    dispatch_source_cancel(ws);
    v6 = self->_ws;
    self->_ws = 0;
  }

  conn = self->_conn;
  if (conn)
  {
    nw_connection_cancel(conn);
    v8 = self->_conn;
    self->_conn = 0;
  }

  fd = self->_fd;
  if (fd != -1)
  {
    close(fd);
    self->_fd = -1;
  }

  cleanupBlock = self->_cleanupBlock;
  if (cleanupBlock)
  {
    v12 = objc_retainBlock(cleanupBlock);
    v11 = self->_cleanupBlock;
    self->_cleanupBlock = 0;

    v12[2](v12, self);
  }
}

- (void)cancel
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002645C;
  v4[3] = &unk_1000A2328;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end