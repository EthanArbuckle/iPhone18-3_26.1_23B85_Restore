@interface WPRanging
- (WPRanging)initWithDelegate:(id)a3 queue:(id)a4;
- (WPRangingDelegate)delegate;
- (void)invalidate;
- (void)isRangingEnabledReply:(id)a3;
- (void)stateDidChange:(int64_t)a3;
@end

@implementation WPRanging

- (WPRanging)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[WPClient supportsRanging])
  {
    v13.receiver = self;
    v13.super_class = WPRanging;
    v8 = [(WPClient *)&v13 initWithQueue:v7 machName:0];
    v9 = v8;
    if (v8)
    {
      objc_storeWeak(&v8->_delegate, v6);
    }

    self = v9;
    v10 = self;
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

    v10 = 0;
  }

  return v10;
}

- (void)invalidate
{
  [(WPRanging *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPRanging;
  [(WPClient *)&v3 invalidate];
}

- (void)isRangingEnabledReply:(id)a3
{
  v4 = a3;
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
  [(WPClient *)&v6 isRangingEnabledReply:v4];
}

- (void)stateDidChange:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WPRanging;
  [(WPClient *)&v7 stateDidChange:a3];
  v4 = [(WPRanging *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WPRanging *)self delegate];
    [v6 rangingDidUpdateState:self];
  }
}

- (WPRangingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end