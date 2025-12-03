@interface PLXPCGenericObject
- (PLXPCGenericObject)initWithCoder:(id)coder;
@end

@implementation PLXPCGenericObject

- (PLXPCGenericObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [coderCopy decodeXPCObjectForKey:@"_xpcObject"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PLXPCObject *)self initWithXPCObject:v5];

  return v6;
}

@end