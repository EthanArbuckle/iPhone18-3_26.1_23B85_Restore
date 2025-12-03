@interface PFDatabaseHangDetector
- (PFDatabaseHangDetector)init;
- (void)beginMonitoring;
- (void)endMonitoring;
@end

@implementation PFDatabaseHangDetector

- (void)beginMonitoring
{
  selfCopy = self;
  sub_1D8CFA418();
}

- (void)endMonitoring
{
  selfCopy = self;
  sub_1D915AC78();
}

- (PFDatabaseHangDetector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end