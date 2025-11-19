@interface ProtectedAppsObserver
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
@end

@implementation ProtectedAppsObserver

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  type metadata accessor for APSubject();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  sub_1003FE9EC(v5);
  swift_unknownObjectRelease();
}

@end