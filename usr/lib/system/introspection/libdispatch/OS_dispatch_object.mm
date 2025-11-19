@interface OS_dispatch_object
- (OS_dispatch_object)init;
- (id)debugDescription;
@end

@implementation OS_dispatch_object

- (OS_dispatch_object)init
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

- (id)debugDescription
{
  result = objc_lookUpClass("NSString");
  if (result)
  {
    v4 = result;
    v5 = *(self->super.super.isa + 7);
    if (v5)
    {
      v6 = *(self->super.super.isa + 7);
      v5(self, v7, 2048);
    }

    else
    {
      object_getClassName(self);
      __strlcpy_chk();
    }

    result = [v4 stringWithUTF8String:"<%s: %s>"];
    if (result)
    {
      return [v4 stringWithFormat:result, object_getClassName(self), v7];
    }
  }

  return result;
}

@end