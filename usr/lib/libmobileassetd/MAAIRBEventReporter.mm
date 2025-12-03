@interface MAAIRBEventReporter
+ (void)emitAppleIntelligenceEndEvent:(id)event;
+ (void)emitAppleIntelligenceEvent:(id)event;
+ (void)emitAppleIntelligenceStartEvent:(id)event;
- (MAAIRBEventReporter)init;
@end

@implementation MAAIRBEventReporter

+ (void)emitAppleIntelligenceEvent:(id)event
{
  eventCopy = event;
  sub_254038(eventCopy);
}

+ (void)emitAppleIntelligenceStartEvent:(id)event
{
  eventCopy = event;
  sub_254A20(eventCopy);
}

+ (void)emitAppleIntelligenceEndEvent:(id)event
{
  eventCopy = event;
  sub_255658(eventCopy);
}

- (MAAIRBEventReporter)init
{
  v3.receiver = self;
  v3.super_class = MAAIRBEventReporter;
  return [(MAAIRBEventReporter *)&v3 init];
}

@end