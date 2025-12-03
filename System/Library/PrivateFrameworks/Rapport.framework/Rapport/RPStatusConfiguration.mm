@interface RPStatusConfiguration
- (RPStatusConfiguration)initWithStatusID:(id)d leeway:(double)leeway configurationFlags:(unint64_t)flags statusUpdateHandler:(id)handler;
@end

@implementation RPStatusConfiguration

- (RPStatusConfiguration)initWithStatusID:(id)d leeway:(double)leeway configurationFlags:(unint64_t)flags statusUpdateHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = RPStatusConfiguration;
  v13 = [(RPStatusConfiguration *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_statusID, d);
    v14->_leeway = leeway;
    v14->_flags = flags;
    v15 = _Block_copy(handlerCopy);
    handler = v14->_handler;
    v14->_handler = v15;

    v17 = v14;
  }

  return v14;
}

@end