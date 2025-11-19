@interface _STKRemoteAlertDescriptor
- (_STKRemoteAlertDescriptor)initWithAction:(id)a3 viewControllerName:(id)a4;
@end

@implementation _STKRemoteAlertDescriptor

- (_STKRemoteAlertDescriptor)initWithAction:(id)a3 viewControllerName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _STKRemoteAlertDescriptor;
  v9 = [(_STKRemoteAlertDescriptor *)&v15 init];
  v10 = v9;
  if (v8 && v9)
  {
    serviceIdentifier = v9->_serviceIdentifier;
    v9->_serviceIdentifier = @"com.apple.CTNotifyUIService";

    objc_storeStrong(&v10->_viewControllerName, a4);
    objc_storeStrong(&v10->_action, a3);
    v12 = [v7 _BSAction];
    BSAction = v10->_BSAction;
    v10->_BSAction = v12;
  }

  return v10;
}

@end