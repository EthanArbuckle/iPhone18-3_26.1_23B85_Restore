@interface WOTrackAlertsBridge
+ (BOOL)lapAlertsEnabledForActivityType:(id)a3;
- (WOTrackAlertsBridge)init;
@end

@implementation WOTrackAlertsBridge

+ (BOOL)lapAlertsEnabledForActivityType:(id)a3
{
  v3 = a3;
  v4 = specialized static TrackAlertsStore.read(for:)(v3);

  swift_beginAccess();
  LOBYTE(v3) = *(v4 + 16);

  return v3;
}

- (WOTrackAlertsBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TrackAlertsBridge();
  return [(WOTrackAlertsBridge *)&v3 init];
}

@end