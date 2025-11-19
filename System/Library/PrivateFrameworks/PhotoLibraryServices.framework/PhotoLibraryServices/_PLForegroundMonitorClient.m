@interface _PLForegroundMonitorClient
- (_PLForegroundMonitorClient)initWithBundleIdentifiers:(id)a3 block:(id)a4;
@end

@implementation _PLForegroundMonitorClient

- (_PLForegroundMonitorClient)initWithBundleIdentifiers:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _PLForegroundMonitorClient;
  v8 = [(_PLForegroundMonitorClient *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleIdentifiers = v8->_bundleIdentifiers;
    v8->_bundleIdentifiers = v9;

    v11 = [v7 copy];
    block = v8->_block;
    v8->_block = v11;
  }

  return v8;
}

@end