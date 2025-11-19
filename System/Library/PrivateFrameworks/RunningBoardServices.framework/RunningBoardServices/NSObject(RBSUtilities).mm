@interface NSObject(RBSUtilities)
- (__CFString)NSRepresentation;
- (uint64_t)RBSIsXPCObject;
@end

@implementation NSObject(RBSUtilities)

- (uint64_t)RBSIsXPCObject
{
  v0 = NSClassFromString(&cfstr_OsXpcObject.isa);
  return objc_opt_isKindOfClass() & 1;
}

- (__CFString)NSRepresentation
{
  if (([a1 conformsToProtocol:&unk_1F01E7240] & 1) == 0)
  {
    [NSObject(RBSUtilities) NSRepresentation];
  }

  return nsObjFromXPCObj(a1);
}

@end