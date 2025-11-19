@interface CLISignalHandler
- (CLISignalHandler)initWithSignal:(int)a3;
- (void)dealloc;
- (void)setEnabled:(BOOL)a3;
- (void)setExecutionBlock:(id)a3;
@end

@implementation CLISignalHandler

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    if (a3)
    {
      [qword_100046BE0 addObject:self];
      dispatch_resume(self->_dispatch_source);
    }

    else
    {
      [qword_100046BE0 removeObject:self];
      dispatch_suspend(self->_dispatch_source);
    }

    self->_enabled = a3;
  }
}

- (void)setExecutionBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    signal = self->_signal;
    dispatch_source = self->_dispatch_source;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100034030;
    v8[3] = &unk_100042758;
    v9 = v4;
    v10 = signal;
    dispatch_source_set_event_handler(dispatch_source, v8);
  }

  else
  {
    dispatch_source_set_event_handler(self->_dispatch_source, 0);
  }
}

- (CLISignalHandler)initWithSignal:(int)a3
{
  v9.receiver = self;
  v9.super_class = CLISignalHandler;
  v4 = [(CLISignalHandler *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_signal = a3;
    if (qword_100046BE8 != -1)
    {
      sub_10003418C();
    }

    v6 = dispatch_source_create(&_dispatch_source_type_signal, a3, 0, &_dispatch_main_q);
    dispatch_source = v5->_dispatch_source;
    v5->_dispatch_source = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(CLISignalHandler *)self setExecutionBlock:0];
  [(CLISignalHandler *)self setEnabled:1];
  v3.receiver = self;
  v3.super_class = CLISignalHandler;
  [(CLISignalHandler *)&v3 dealloc];
}

@end