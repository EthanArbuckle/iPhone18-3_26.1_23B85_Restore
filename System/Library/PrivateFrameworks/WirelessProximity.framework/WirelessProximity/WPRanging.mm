@interface WPRanging
- (WPRanging)initWithDelegate:(id)delegate queue:(id)queue;
- (WPRangingDelegate)delegate;
- (void)invalidate;
- (void)isRangingEnabledReply:(id)reply;
- (void)stateDidChange:(int64_t)change;
@end

@implementation WPRanging

- (WPRanging)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (+[WPClient supportsRanging])
  {
    v13.receiver = self;
    v13.super_class = WPRanging;
    v8 = [(WPClient *)&v13 initWithQueue:queueCopy machName:0];
    v9 = v8;
    if (v8)
    {
      objc_storeWeak(&v8->_delegate, delegateCopy);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPRanging initWithDelegate:queue:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPRanging initWithDelegate:v11 queue:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)invalidate
{
  [(WPRanging *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPRanging;
  [(WPClient *)&v3 invalidate];
}

- (void)isRangingEnabledReply:(id)reply
{
  replyCopy = reply;
  if (WPLogInitOnce != -1)
  {
    [WPRanging isRangingEnabledReply:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "WPRanging is ranging enabled?", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = WPRanging;
  [(WPClient *)&v6 isRangingEnabledReply:replyCopy];
}

- (void)stateDidChange:(int64_t)change
{
  v7.receiver = self;
  v7.super_class = WPRanging;
  [(WPClient *)&v7 stateDidChange:change];
  delegate = [(WPRanging *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WPRanging *)self delegate];
    [delegate2 rangingDidUpdateState:self];
  }
}

- (WPRangingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end