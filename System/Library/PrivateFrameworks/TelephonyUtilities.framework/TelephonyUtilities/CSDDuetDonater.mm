@interface CSDDuetDonater
- (void)reportingController:(id)controller addedActivatedLink:(id)link;
- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count;
@end

@implementation CSDDuetDonater

- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count
{
  controllerCopy = controller;
  callCopy = call;
  selfCopy = self;
  sub_100037484(selfCopy, callCopy);
}

- (void)reportingController:(id)controller addedActivatedLink:(id)link
{
  controllerCopy = controller;
  linkCopy = link;
  selfCopy = self;
  sub_10031F0F0();
}

@end