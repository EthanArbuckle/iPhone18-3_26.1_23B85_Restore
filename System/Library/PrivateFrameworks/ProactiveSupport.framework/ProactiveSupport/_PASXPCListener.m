@interface _PASXPCListener
- (_PASXPCListener)initWithDelegate:(id)a3 serviceName:(id)a4 displayName:(id)a5;
@end

@implementation _PASXPCListener

- (_PASXPCListener)initWithDelegate:(id)a3 serviceName:(id)a4 displayName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _PASXPCListener;
  v12 = [(_PASXPCListener *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_delegate, a3);
    objc_storeStrong(&v13->_serviceName, a4);
    objc_storeStrong(&v13->_displayName, a5);
  }

  return v13;
}

@end