@interface BlockedPlugin
- (id)init:(id)init plugName:(id)name plugVersion:(id)version;
- (void)dealloc;
@end

@implementation BlockedPlugin

- (id)init:(id)init plugName:(id)name plugVersion:(id)version
{
  v10.receiver = self;
  v10.super_class = BlockedPlugin;
  v8 = [(BlockedPlugin *)&v10 init];
  if (v8)
  {
    v8->_bundleName = init;
    v8->_plugName = name;
    v8->_plugVersion = version;
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