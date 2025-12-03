@interface Browse_CUPS
- (Browse_CUPS)initWithQueue:(id)queue;
- (void)cancel;
- (void)start;
@end

@implementation Browse_CUPS

- (Browse_CUPS)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = Browse_CUPS;
  v6 = [(Browse_CUPS *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)start
{
  v3 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Browse_CUPS: Started", buf, 2u);
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10005C4A8;
  v13 = &unk_1000A3CE8;
  objc_copyWeak(&v14, &location);
  v5 = queue;
  v6 = &v10;
  if (qword_1000C7CD0 != -1)
  {
    sub_100060534();
  }

  *buf = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10005C85C;
  v19 = &unk_1000A3DC8;
  v7 = v5;
  v20 = v7;
  v8 = v6;
  v21 = v8;
  v9 = objc_retainBlock(buf);
  if (qword_1000C7CC8)
  {
    [qword_1000C7CC8 withPort:{v9, v10, v11, v12, v13}];
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)cancel
{
  v3 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Browse_CUPS: Canceling", v6, 2u);
  }

  v4 = self->_listener;
  listener = self->_listener;
  self->_listener = 0;

  if (v4)
  {
    nw_listener_cancel(v4);
  }
}

@end