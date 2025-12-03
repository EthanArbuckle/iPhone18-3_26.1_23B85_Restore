@interface LocalAudioRouteProvider
- (void)callsChangedForCallCenterObserver:(id)observer;
@end

@implementation LocalAudioRouteProvider

- (void)callsChangedForCallCenterObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10002E090();
  swift_unknownObjectRelease();
}

@end