@interface WOTrackAlertsBridge
+ (BOOL)lapAlertsEnabledForActivityType:(id)type;
- (WOTrackAlertsBridge)init;
@end

@implementation WOTrackAlertsBridge

+ (BOOL)lapAlertsEnabledForActivityType:(id)type
{
  typeCopy = type;
  v4 = specialized static TrackAlertsStore.read(for:)(typeCopy);

  swift_beginAccess();
  LOBYTE(typeCopy) = *(v4 + 16);

  return typeCopy;
}

- (WOTrackAlertsBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TrackAlertsBridge();
  return [(WOTrackAlertsBridge *)&v3 init];
}

@end