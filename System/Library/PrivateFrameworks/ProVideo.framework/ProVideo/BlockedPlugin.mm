@interface BlockedPlugin
- (id)init:(id)a3 plugName:(id)a4 plugVersion:(id)a5;
- (void)dealloc;
@end

@implementation BlockedPlugin

- (id)init:(id)a3 plugName:(id)a4 plugVersion:(id)a5
{
  v10.receiver = self;
  v10.super_class = BlockedPlugin;
  v8 = [(BlockedPlugin *)&v10 init];
  if (v8)
  {
    v8->_bundleName = a3;
    v8->_plugName = a4;
    v8->_plugVersion = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BlockedPlugin;
  [(BlockedPlugin *)&v3 dealloc];
}

@end