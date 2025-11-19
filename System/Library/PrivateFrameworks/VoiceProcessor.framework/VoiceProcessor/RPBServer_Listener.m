@interface RPBServer_Listener
- (BOOL)respondsToSelector:(SEL)a3;
- (RPBServer_Listener)initWithServer:(id)a3;
- (id).cxx_construct;
- (void)dealloc;
- (void)remoteProcessingBlockServerDidStartRunning:(id)a3;
- (void)remoteProcessingBlockServerDidStopRunning:(id)a3;
- (void)remoteProcessingBlockServerWillStartRunning:(id)a3;
- (void)remoteProcessingBlockServerWillStopRunning:(id)a3;
@end

@implementation RPBServer_Listener

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 9) = 0;
  *(self + 13) = 0;
  *(self + 17) = 0;
  return self;
}

- (void)remoteProcessingBlockServerDidStopRunning:(id)a3
{
  f = self->did_stop_running_callback.__f_.__f_;
  if (f)
  {
    (*(*f + 48))();
  }
}

- (void)remoteProcessingBlockServerWillStopRunning:(id)a3
{
  f = self->will_stop_running_callback.__f_.__f_;
  if (f)
  {
    (*(*f + 48))();
  }
}

- (void)remoteProcessingBlockServerDidStartRunning:(id)a3
{
  f = self->did_start_running_callback.__f_.__f_;
  if (f)
  {
    (*(*f + 48))();
  }
}

- (void)remoteProcessingBlockServerWillStartRunning:(id)a3
{
  f = self->will_start_running_callback.__f_.__f_;
  if (f)
  {
    (*(*f + 48))();
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_remoteProcessingBlockServerWillStartRunning_ == a3)
  {
    f = self->will_start_running_callback.__f_.__f_;
  }

  else if (sel_remoteProcessingBlockServerDidStartRunning_ == a3)
  {
    f = self->did_start_running_callback.__f_.__f_;
  }

  else if (sel_remoteProcessingBlockServerWillStopRunning_ == a3)
  {
    f = self->will_stop_running_callback.__f_.__f_;
  }

  else
  {
    if (sel_remoteProcessingBlockServerDidStopRunning_ != a3)
    {
      v8 = v3;
      v9 = v4;
      v7.receiver = self;
      v7.super_class = RPBServer_Listener;
      return [(RPBServer_Listener *)&v7 respondsToSelector:?];
    }

    f = self->did_stop_running_callback.__f_.__f_;
  }

  return f != 0;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_server);
  [WeakRetained removeListener:self];

  v4.receiver = self;
  v4.super_class = RPBServer_Listener;
  [(RPBServer_Listener *)&v4 dealloc];
}

- (RPBServer_Listener)initWithServer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RPBServer_Listener;
  v5 = [(RPBServer_Listener *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_server, v4);
    [v4 addListener:v6];
  }

  return v6;
}

@end