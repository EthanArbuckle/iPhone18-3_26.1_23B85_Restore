@interface OS_os_workgroup_interval
- (OS_os_workgroup_interval)init;
- (void)_xref_dispose;
- (void)dealloc;
@end

@implementation OS_os_workgroup_interval

- (OS_os_workgroup_interval)init
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

- (void)_xref_dispose
{
  _os_workgroup_interval_xref_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_os_workgroup_interval;
  [(OS_os_workgroup *)&v3 _xref_dispose];
}

- (void)dealloc
{
  _os_workgroup_interval_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_os_workgroup_interval;
  [(OS_os_workgroup *)&v3 dealloc];
}

@end