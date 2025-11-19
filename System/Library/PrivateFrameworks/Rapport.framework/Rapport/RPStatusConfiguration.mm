@interface RPStatusConfiguration
- (RPStatusConfiguration)initWithStatusID:(id)a3 leeway:(double)a4 configurationFlags:(unint64_t)a5 statusUpdateHandler:(id)a6;
@end

@implementation RPStatusConfiguration

- (RPStatusConfiguration)initWithStatusID:(id)a3 leeway:(double)a4 configurationFlags:(unint64_t)a5 statusUpdateHandler:(id)a6
{
  v11 = a3;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = RPStatusConfiguration;
  v13 = [(RPStatusConfiguration *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_statusID, a3);
    v14->_leeway = a4;
    v14->_flags = a5;
    v15 = _Block_copy(v12);
    handler = v14->_handler;
    v14->_handler = v15;

    v17 = v14;
  }

  return v14;
}

@end