@interface CSDFaceTimeUnknownReporter
- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count;
@end

@implementation CSDFaceTimeUnknownReporter

- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count
{
  controllerCopy = controller;
  callCopy = call;
  selfCopy = self;
  sub_1000363E0(selfCopy, callCopy);
}

@end