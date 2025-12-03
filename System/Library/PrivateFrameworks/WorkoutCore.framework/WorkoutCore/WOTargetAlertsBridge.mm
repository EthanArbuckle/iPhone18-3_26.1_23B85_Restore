@interface WOTargetAlertsBridge
+ (BOOL)intervalTargetAlertsEnabledForActivityType:(id)type;
- (WOTargetAlertsBridge)init;
@end

@implementation WOTargetAlertsBridge

+ (BOOL)intervalTargetAlertsEnabledForActivityType:(id)type
{
  typeCopy = type;
  v4 = specialized static TargetAlertsStore.read(for:)(typeCopy);

  swift_beginAccess();
  LOBYTE(typeCopy) = *(v4 + 16);

  return typeCopy;
}

- (WOTargetAlertsBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TargetAlertsBridge();
  return [(WOTargetAlertsBridge *)&v3 init];
}

@end