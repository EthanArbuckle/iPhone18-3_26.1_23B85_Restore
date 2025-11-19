@interface OS_os_workgroup
- (OS_os_workgroup)init;
- (id)debugDescription;
- (void)_xref_dispose;
- (void)dealloc;
@end

@implementation OS_os_workgroup

- (OS_os_workgroup)init
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

- (void)_xref_dispose
{
  _os_workgroup_xref_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_os_workgroup;
  [(OS_object *)&v3 _xref_dispose];
}

- (void)dealloc
{
  _os_workgroup_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_os_workgroup;
  [(OS_os_workgroup *)&v3 dealloc];
}

- (id)debugDescription
{
  result = objc_lookUpClass("NSString");
  if (result)
  {
    v4 = result;
    _os_workgroup_debug(self, __str, 0x800uLL);
    return [v4 stringWithUTF8String:__str];
  }

  return result;
}

@end