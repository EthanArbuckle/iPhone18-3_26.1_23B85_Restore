@interface CSDFaceTimeUnknownReporter
- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5;
@end

@implementation CSDFaceTimeUnknownReporter

- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1000363E0(v9, v8);
}

@end