@interface OS_os_metric_group
- (void)dealloc;
@end

@implementation OS_os_metric_group

- (void)dealloc
{
  isa = self[3].super.super.isa;
  if (isa)
  {
    os_release(isa);
  }

  v4.receiver = self;
  v4.super_class = OS_os_metric_group;
  [(OS_os_metric_group *)&v4 dealloc];
}

@end