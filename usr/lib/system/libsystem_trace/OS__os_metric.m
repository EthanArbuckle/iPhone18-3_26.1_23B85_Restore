@interface OS__os_metric
- (void)dealloc;
@end

@implementation OS__os_metric

- (void)dealloc
{
  os_release(self[3].super.super.isa);
  os_release(self[2].super.super.isa);
  isa = self[4].super.super.isa;
  if (isa)
  {
    os_release(isa);
  }

  v4.receiver = self;
  v4.super_class = OS__os_metric;
  [(OS__os_metric *)&v4 dealloc];
}

@end