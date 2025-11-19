@interface PLXPCGenericObject
- (PLXPCGenericObject)initWithCoder:(id)a3;
@end

@implementation PLXPCGenericObject

- (PLXPCGenericObject)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 decodeXPCObjectForKey:@"_xpcObject"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PLXPCObject *)self initWithXPCObject:v5];

  return v6;
}

@end