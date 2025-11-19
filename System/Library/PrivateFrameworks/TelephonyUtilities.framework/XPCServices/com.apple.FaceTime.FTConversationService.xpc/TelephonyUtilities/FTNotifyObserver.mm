@interface FTNotifyObserver
- (FTNotifyObserver)initWithName:(id)a3 queue:(id)a4 callback:(id)a5;
- (void)dealloc;
@end

@implementation FTNotifyObserver

- (FTNotifyObserver)initWithName:(id)a3 queue:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = FTNotifyObserver;
  v11 = [(FTNotifyObserver *)&v22 init];
  if (v11)
  {
    v12 = objc_retainBlock(v10);
    callback = v11->_callback;
    v11->_callback = v12;

    v14 = [v8 copy];
    name = v11->_name;
    v11->_name = v14;

    objc_storeStrong(&v11->_queue, a4);
    v11->_token = 0;
    objc_initWeak(&location, v11);
    v16 = [(NSString *)v11->_name UTF8String];
    queue = v11->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100007B98;
    v19[3] = &unk_100018698;
    objc_copyWeak(&v20, &location);
    notify_register_dispatch(v16, &v11->_token, queue, v19);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  self->_token = 0;
  v3.receiver = self;
  v3.super_class = FTNotifyObserver;
  [(FTNotifyObserver *)&v3 dealloc];
}

@end