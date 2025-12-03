@interface PKXPCObject
+ (id)object:(id)object;
- (PKXPCObject)initWithCoder:(id)coder;
- (PKXPCObject)initWithObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKXPCObject

+ (id)object:(id)object
{
  objectCopy = object;
  v4 = [[PKXPCObject alloc] initWithObject:objectCopy];

  return v4;
}

- (PKXPCObject)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = PKXPCObject;
  v5 = [(PKXPCObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKXPCObject *)v5 setObject:objectCopy];
  }

  return v6;
}

- (PKXPCObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v9.receiver = self;
  v9.super_class = PKXPCObject;
  v5 = [(PKXPCObject *)&v9 init];
  if (!v5 || ([coderCopy decodeXPCObjectForKey:@"PlugInKit.object"], v6 = objc_claimAutoreleasedReturnValue(), -[PKXPCObject setObject:](v5, "setObject:", v6), v6, -[PKXPCObject object](v5, "object"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v7 = v5;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  object = [(PKXPCObject *)self object];
  [coderCopy encodeXPCObject:object forKey:@"PlugInKit.object"];
}

@end