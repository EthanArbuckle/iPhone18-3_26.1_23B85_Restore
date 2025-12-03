@interface RPBServer_Listener
- (BOOL)respondsToSelector:(SEL)selector;
- (RPBServer_Listener)initWithServer:(id)server;
- (id).cxx_construct;
- (void)dealloc;
- (void)remoteProcessingBlockServerDidStartRunning:(id)running;
- (void)remoteProcessingBlockServerDidStopRunning:(id)running;
- (void)remoteProcessingBlockServerWillStartRunning:(id)running;
- (void)remoteProcessingBlockServerWillStopRunning:(id)running;
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

- (void)remoteProcessingBlockServerDidStopRunning:(id)running
{
  f = self->did_stop_running_callback.__f_.__f_;
  if (f)
  {
    (*(*f + 48))();
  }
}

- (void)remoteProcessingBlockServerWillStopRunning:(id)running
{
  f = self->will_stop_running_callback.__f_.__f_;
  if (f)
  {
    (*(*f + 48))();
  }
}

- (void)remoteProcessingBlockServerDidStartRunning:(id)running
{
  f = self->did_start_running_callback.__f_.__f_;
  if (f)
  {
    (*(*f + 48))();
  }
}

- (void)remoteProcessingBlockServerWillStartRunning:(id)running
{
  f = self->will_start_running_callback.__f_.__f_;
  if (f)
  {
    (*(*f + 48))();
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_remoteProcessingBlockServerWillStartRunning_ == selector)
  {
    f = self->will_start_running_callback.__f_.__f_;
  }

  else if (sel_remoteProcessingBlockServerDidStartRunning_ == selector)
  {
    f = self->did_start_running_callback.__f_.__f_;
  }

  else if (sel_remoteProcessingBlockServerWillStopRunning_ == selector)
  {
    f = self->will_stop_running_callback.__f_.__f_;
  }

  else
  {
    if (sel_remoteProcessingBlockServerDidStopRunning_ != selector)
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

- (RPBServer_Listener)initWithServer:(id)server
{
  serverCopy = server;
  v9.receiver = self;
  v9.super_class = RPBServer_Listener;
  v5 = [(RPBServer_Listener *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_server, serverCopy);
    [serverCopy addListener:v6];
  }

  return v6;
}

@end