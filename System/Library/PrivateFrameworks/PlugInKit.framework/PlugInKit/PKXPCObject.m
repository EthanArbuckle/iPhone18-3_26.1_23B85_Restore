@interface PKXPCObject
+ (id)object:(id)a3;
- (PKXPCObject)initWithCoder:(id)a3;
- (PKXPCObject)initWithObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKXPCObject

+ (id)object:(id)a3
{
  v3 = a3;
  v4 = [[PKXPCObject alloc] initWithObject:v3];

  return v4;
}

- (PKXPCObject)initWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKXPCObject;
  v5 = [(PKXPCObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKXPCObject *)v5 setObject:v4];
  }

  return v6;
}

- (PKXPCObject)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v9.receiver = self;
  v9.super_class = PKXPCObject;
  v5 = [(PKXPCObject *)&v9 init];
  if (!v5 || ([v4 decodeXPCObjectForKey:@"PlugInKit.object"], v6 = objc_claimAutoreleasedReturnValue(), -[PKXPCObject setObject:](v5, "setObject:", v6), v6, -[PKXPCObject object](v5, "object"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v7 = v5;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v4 = [(PKXPCObject *)self object];
  [v5 encodeXPCObject:v4 forKey:@"PlugInKit.object"];
}

@end