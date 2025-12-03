@interface UIDebuggingIvar
+ (id)ivarWithObjcIvar:(objc_ivar *)ivar forObject:(id)object;
- (BOOL)isObject;
- (NSString)valueDescription;
- (void)dealloc;
@end

@implementation UIDebuggingIvar

+ (id)ivarWithObjcIvar:(objc_ivar *)ivar forObject:(id)object
{
  v6 = objc_alloc_init(objc_opt_class());
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:ivar_getName(ivar) encoding:4];
  TypeEncoding = ivar_getTypeEncoding(ivar);
  v9 = _UIDebugObjectTypeDescription(TypeEncoding);
  Ivar = object_getIvar(object, ivar);
  [v6 setObject:object];
  [v6 setObjcIvar:ivar];
  [v6 setName:v7];
  [v6 setTypeEncoding:ivar_getTypeEncoding(ivar)];
  [v6 setTypeDescription:v9];
  [v6 setValue:Ivar];

  return v6;
}

- (NSString)valueDescription
{
  object = [(UIDebuggingIvar *)self object];
  Offset = ivar_getOffset([(UIDebuggingIvar *)self objcIvar]);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", _UIDebugIvarValue((object + Offset), -[UIDebuggingIvar typeEncoding](self, "typeEncoding"), 0)];
}

- (BOOL)isObject
{
  v3 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithCString:-[UIDebuggingIvar typeEncoding](self encoding:{"typeEncoding"), 4), "containsString:", @"@"}];
  if ([(UIDebuggingIvar *)self value])
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  self->_object = 0;

  self->_name = 0;
  self->_typeDescription = 0;
  v3.receiver = self;
  v3.super_class = UIDebuggingIvar;
  [(UIDebuggingIvar *)&v3 dealloc];
}

@end