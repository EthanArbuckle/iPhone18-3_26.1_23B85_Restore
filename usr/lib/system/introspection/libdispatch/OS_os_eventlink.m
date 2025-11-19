@interface OS_os_eventlink
- (OS_os_eventlink)init;
- (void)dealloc;
@end

@implementation OS_os_eventlink

- (OS_os_eventlink)init
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

- (void)dealloc
{
  _os_eventlink_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_os_eventlink;
  [(OS_os_eventlink *)&v3 dealloc];
}

@end