@interface _PASXPCListener
- (_PASXPCListener)initWithDelegate:(id)delegate serviceName:(id)name displayName:(id)displayName;
@end

@implementation _PASXPCListener

- (_PASXPCListener)initWithDelegate:(id)delegate serviceName:(id)name displayName:(id)displayName
{
  delegateCopy = delegate;
  nameCopy = name;
  displayNameCopy = displayName;
  v15.receiver = self;
  v15.super_class = _PASXPCListener;
  v12 = [(_PASXPCListener *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_delegate, delegate);
    objc_storeStrong(&v13->_serviceName, name);
    objc_storeStrong(&v13->_displayName, displayName);
  }

  return v13;
}

@end