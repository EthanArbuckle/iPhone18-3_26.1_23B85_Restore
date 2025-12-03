@interface SASelfLoggerVMCPUStats
- (SASelfLoggerVMCPUStats)init;
- (SASelfLoggerVMCPUStats)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SASelfLoggerVMCPUStats

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_26646F68C(coderCopy);
}

- (SASelfLoggerVMCPUStats)initWithCoder:(id)coder
{
  coderCopy = coder;
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