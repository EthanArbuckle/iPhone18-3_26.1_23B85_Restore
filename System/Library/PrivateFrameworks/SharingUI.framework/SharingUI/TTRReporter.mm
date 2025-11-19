@interface TTRReporter
- (void)openReport;
@end

@implementation TTRReporter

- (void)openReport
{
  MEMORY[0x1E69E5928](self);
  sub_1B9EA218C();
  MEMORY[0x1E69E5920](self);
}

@end