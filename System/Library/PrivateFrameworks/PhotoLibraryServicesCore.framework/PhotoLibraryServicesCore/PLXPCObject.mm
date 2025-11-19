@interface PLXPCObject
+ (_xpc_type_s)type;
- (PLXPCObject)initWithCoder:(id)a3;
- (PLXPCObject)initWithXPCObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLXPCObject

+ (_xpc_type_s)type
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (PLXPCObject)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 decodeXPCObjectOfType:objc_msgSend(objc_opt_class() forKey:{"type"), @"_xpcObject"}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PLXPCObject *)self initWithXPCObject:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (self->_object)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 encodeXPCObject:self->_object forKey:@"_xpcObject"];
    }
  }
}

- (PLXPCObject)initWithXPCObject:(id)a3
{
  v5 = a3;
  v6 = [(PLXPCObject *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

@end