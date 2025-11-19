@interface WOTargetAlertsBridge
+ (BOOL)intervalTargetAlertsEnabledForActivityType:(id)a3;
- (WOTargetAlertsBridge)init;
@end

@implementation WOTargetAlertsBridge

+ (BOOL)intervalTargetAlertsEnabledForActivityType:(id)a3
{
  v3 = a3;
  v4 = specialized static TargetAlertsStore.read(for:)(v3);

  swift_beginAccess();
  LOBYTE(v3) = *(v4 + 16);

  return v3;
}

- (WOTargetAlertsBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TargetAlertsBridge();
  return [(WOTargetAlertsBridge *)&v3 init];
}

@end