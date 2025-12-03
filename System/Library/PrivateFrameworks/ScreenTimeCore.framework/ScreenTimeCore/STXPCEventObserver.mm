@interface STXPCEventObserver
- (NSDictionary)configuration;
- (STXPCEventDispatcher)dispatcher;
- (STXPCEventObserver)initWithIdentifier:(id)identifier dispatcher:(id)dispatcher;
- (void)setConfiguration:(id)configuration;
@end

@implementation STXPCEventObserver

- (STXPCEventObserver)initWithIdentifier:(id)identifier dispatcher:(id)dispatcher
{
  identifierCopy = identifier;
  dispatcherCopy = dispatcher;
  if (!identifierCopy)
  {
    sub_10011A114(a2, self);
  }

  v13.receiver = self;
  v13.super_class = STXPCEventObserver;
  v9 = [(STXPCEventObserver *)&v13 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeWeak(&v9->_dispatcher, dispatcherCopy);
  }

  return v9;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dispatcher = [(STXPCEventObserver *)self dispatcher];
  stream = [dispatcher stream];
  [stream UTF8String];
  identifier = [(STXPCEventObserver *)self identifier];
  [identifier UTF8String];
  v7 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_set_event();
}

- (NSDictionary)configuration
{
  dispatcher = [(STXPCEventObserver *)self dispatcher];
  stream = [dispatcher stream];
  [stream UTF8String];
  identifier = [(STXPCEventObserver *)self identifier];
  [identifier UTF8String];
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