@interface DebugSchedule
- (void)layoutSubviews;
@end

@implementation DebugSchedule

- (void)layoutSubviews
{
  selfCopy = self;
  DebugSchedule.layoutSubviews()();
}

@end