@interface PFDatabaseHangDetector
- (PFDatabaseHangDetector)init;
- (void)beginMonitoring;
- (void)endMonitoring;
@end

@implementation PFDatabaseHangDetector

- (void)beginMonitoring
{
  v2 = self;
  sub_1D8CFA418();
}

- (void)endMonitoring
{
  v2 = self;
  sub_1D915AC78();
}

- (PFDatabaseHangDetector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end