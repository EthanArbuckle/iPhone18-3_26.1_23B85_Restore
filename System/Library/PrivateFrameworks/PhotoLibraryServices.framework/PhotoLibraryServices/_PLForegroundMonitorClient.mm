@interface _PLForegroundMonitorClient
- (_PLForegroundMonitorClient)initWithBundleIdentifiers:(id)identifiers block:(id)block;
@end

@implementation _PLForegroundMonitorClient

- (_PLForegroundMonitorClient)initWithBundleIdentifiers:(id)identifiers block:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = _PLForegroundMonitorClient;
  v8 = [(_PLForegroundMonitorClient *)&v14 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    bundleIdentifiers = v8->_bundleIdentifiers;
    v8->_bundleIdentifiers = v9;

    v11 = [blockCopy copy];
    block = v8->_block;
    v8->_block = v11;
  }

  return v8;
}

@end