@interface MAAIRBEventReporter
+ (void)emitAppleIntelligenceEndEvent:(id)a3;
+ (void)emitAppleIntelligenceEvent:(id)a3;
+ (void)emitAppleIntelligenceStartEvent:(id)a3;
- (MAAIRBEventReporter)init;
@end

@implementation MAAIRBEventReporter

+ (void)emitAppleIntelligenceEvent:(id)a3
{
  v3 = a3;
  sub_254038(v3);
}

+ (void)emitAppleIntelligenceStartEvent:(id)a3
{
  v3 = a3;
  sub_254A20(v3);
}

+ (void)emitAppleIntelligenceEndEvent:(id)a3
{
  v3 = a3;
  sub_255658(v3);
}

- (MAAIRBEventReporter)init
{
  v3.receiver = self;
  v3.super_class = MAAIRBEventReporter;
  return [(MAAIRBEventReporter *)&v3 init];
}

@end