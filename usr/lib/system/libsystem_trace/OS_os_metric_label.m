@interface OS_os_metric_label
- (void)dealloc;
@end

@implementation OS_os_metric_label

- (void)dealloc
{
  free(self[2].super.super.isa);
  isa = self[4].super.super.isa;
  if (isa)
  {
    free(isa);
  }

  v4.receiver = self;
  v4.super_class = OS_os_metric_label;
  [(OS_os_metric_label *)&v4 dealloc];
}

@end