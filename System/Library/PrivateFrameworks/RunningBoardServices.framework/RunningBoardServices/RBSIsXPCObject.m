@interface RBSIsXPCObject
@end

@implementation RBSIsXPCObject

Class ___RBSIsXPCObject_block_invoke()
{
  result = NSClassFromString(&cfstr_OsXpcObject.isa);
  _RBSIsXPCObject_xpcClass = result;
  return result;
}

@end