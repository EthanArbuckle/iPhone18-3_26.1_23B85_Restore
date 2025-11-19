@interface STXPCEventObserver
- (NSDictionary)configuration;
- (STXPCEventDispatcher)dispatcher;
- (STXPCEventObserver)initWithIdentifier:(id)a3 dispatcher:(id)a4;
- (void)setConfiguration:(id)a3;
@end

@implementation STXPCEventObserver

- (STXPCEventObserver)initWithIdentifier:(id)a3 dispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    sub_10011A114(a2, self);
  }

  v13.receiver = self;
  v13.super_class = STXPCEventObserver;
  v9 = [(STXPCEventObserver *)&v13 init];
  if (v9)
  {
    v10 = [v7 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeWeak(&v9->_dispatcher, v8);
  }

  return v9;
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v8 = [(STXPCEventObserver *)self dispatcher];
  v5 = [v8 stream];
  [v5 UTF8String];
  v6 = [(STXPCEventObserver *)self identifier];
  [v6 UTF8String];
  v7 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_set_event();
}

- (NSDictionary)configuration
{
  v3 = [(STXPCEventObserver *)self dispatcher];
  v4 = [v3 stream];
  [v4 UTF8String];
  v5 = [(STXPCEventObserver *)self identifier];
  [v5 UTF8String];
  v6 = xpc_copy_event();
  v7 = _CFXPCCreateCFObjectFromXPCObject();

  return v7;
}

- (STXPCEventDispatcher)dispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatcher);

  return WeakRetained;
}

@end