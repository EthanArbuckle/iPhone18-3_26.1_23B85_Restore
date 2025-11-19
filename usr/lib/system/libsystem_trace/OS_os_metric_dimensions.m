@interface OS_os_metric_dimensions
- (void)dealloc;
@end

@implementation OS_os_metric_dimensions

- (void)dealloc
{
  if (BYTE1(self[2].super.super.isa))
  {
    v3 = 0;
    do
    {
      os_release(*(self[3].super.super.isa + v3++));
    }

    while (v3 < BYTE1(self[2].super.super.isa));
  }

  free(self[3].super.super.isa);
  v4.receiver = self;
  v4.super_class = OS_os_metric_dimensions;
  [(OS_os_metric_dimensions *)&v4 dealloc];
}

@end