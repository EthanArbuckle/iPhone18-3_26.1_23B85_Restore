@interface OS_xpc_object
- (NSString)debugDescription;
- (NSString)description;
- (void)dealloc;
@end

@implementation OS_xpc_object

- (void)dealloc
{
  _xpc_dispose(self);
  v3.receiver = self;
  v3.super_class = OBJC_CLASS___OS_xpc_object;
  [(OS_xpc_object *)&v3 dealloc];
}

- (NSString)description
{
  result = objc_lookUpClass("NSString");
  if (result)
  {
    v4 = result;
    v5 = xpc_copy_description(self);
    v6 = [(NSString *)v4 stringWithUTF8String:"<%s: %s>"];
    v7 = objc_opt_class();
    v8 = [(NSString *)v4 stringWithFormat:v6, class_getName(v7), v5];
    free(v5);
    return v8;
  }

  return result;
}

- (NSString)debugDescription
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_lookUpClass("NSString");
  if (v3)
  {
    bzero(__str, 0x1000uLL);
    off_1F0B9A7B0(self, __str, 0x1000uLL);
    v4 = xpc_copy_description(self);
    v5 = [(objc_class *)v3 stringWithUTF8String:"<%s: %s %s>"];
    v6 = objc_opt_class();
    v3 = [(objc_class *)v3 stringWithFormat:v5, class_getName(v6), __str, v4];
    free(v4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

@end