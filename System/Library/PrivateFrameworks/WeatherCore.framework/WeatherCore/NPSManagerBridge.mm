@interface NPSManagerBridge
- (NPSManagerBridge)init;
- (void)synchronizeUserDefaultsDomain:(id)a3 keys:(id)a4 container:(id)a5 appGroupContainer:(id)a6;
@end

@implementation NPSManagerBridge

- (NPSManagerBridge)init
{
  v6.receiver = self;
  v6.super_class = NPSManagerBridge;
  v2 = [(NPSManagerBridge *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    npsManager = v2->_npsManager;
    v2->_npsManager = v3;
  }

  return v2;
}

- (void)synchronizeUserDefaultsDomain:(id)a3 keys:(id)a4 container:(id)a5 appGroupContainer:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NPSManagerBridge *)self npsManager];
  [v14 synchronizeUserDefaultsDomain:v13 keys:v12 container:v11 appGroupContainer:v10];
}

@end