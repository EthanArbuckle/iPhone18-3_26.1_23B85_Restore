@interface Protocol
- (BOOL)isEqual:(id)equal;
- (const)name;
- (objc_method_description)descriptionForClassMethod:(SEL)method;
- (objc_method_description)descriptionForInstanceMethod:(SEL)method;
@end

@implementation Protocol

- (BOOL)isEqual:(id)equal
{
  v5 = look_up_class("Protocol");
  Class = object_getClass(equal);
  v7 = Class == 0;
  if (Class)
  {
    v8 = Class;
    if (Class != v5)
    {
      do
      {
        v9 = *(v8 + 1);
        if (!v9)
        {
          return 0;
        }

        v8 = *(v8 + 1);
        v7 = v9 == 0;
      }

      while (v5 != v9);
    }
  }

  if (v7)
  {
    return 0;
  }

  return protocol_isEqual(self, equal);
}

- (const)name
{
  if (self)
  {
    return protocol_t::demangledName(self);
  }

  else
  {
    return "nil";
  }
}

- (objc_method_description)descriptionForClassMethod:(SEL)method
{
  Method = protocol_getMethod(self, method, 1, 0, v3, v4);

  return method_getDescription(Method);
}

- (objc_method_description)descriptionForInstanceMethod:(SEL)method
{
  Method = protocol_getMethod(self, method, 1, 1, v3, v4);

  return method_getDescription(Method);
}

@end