@interface SASelfLoggerVMCPUStats
- (SASelfLoggerVMCPUStats)init;
- (SASelfLoggerVMCPUStats)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SASelfLoggerVMCPUStats

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26646F68C(v4);
}

- (SASelfLoggerVMCPUStats)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_266477338();

  return v4;
}

- (SASelfLoggerVMCPUStats)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end