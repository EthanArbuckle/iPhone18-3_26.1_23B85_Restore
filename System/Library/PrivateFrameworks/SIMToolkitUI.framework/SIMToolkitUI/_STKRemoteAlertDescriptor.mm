@interface _STKRemoteAlertDescriptor
- (_STKRemoteAlertDescriptor)initWithAction:(id)action viewControllerName:(id)name;
@end

@implementation _STKRemoteAlertDescriptor

- (_STKRemoteAlertDescriptor)initWithAction:(id)action viewControllerName:(id)name
{
  actionCopy = action;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = _STKRemoteAlertDescriptor;
  v9 = [(_STKRemoteAlertDescriptor *)&v15 init];
  v10 = v9;
  if (nameCopy && v9)
  {
    serviceIdentifier = v9->_serviceIdentifier;
    v9->_serviceIdentifier = @"com.apple.CTNotifyUIService";

    objc_storeStrong(&v10->_viewControllerName, name);
    objc_storeStrong(&v10->_action, action);
    _BSAction = [actionCopy _BSAction];
    BSAction = v10->_BSAction;
    v10->_BSAction = _BSAction;
  }

  return v10;
}

@end