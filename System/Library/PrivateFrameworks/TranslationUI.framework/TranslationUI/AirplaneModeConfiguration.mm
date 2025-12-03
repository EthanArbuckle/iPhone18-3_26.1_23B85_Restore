@interface AirplaneModeConfiguration
- (void)airplaneModeChanged;
- (void)dealloc;
@end

@implementation AirplaneModeConfiguration

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration_reachability);
  selfCopy = self;
  if (v3)
  {
    v5 = v3;
    SCNetworkReachabilitySetCallback(v5, 0, 0);
    SCNetworkReachabilitySetDispatchQueue(v5, 0);
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for AirplaneModeConfiguration();
  [(AirplaneModeConfiguration *)&v6 dealloc];
}

- (void)airplaneModeChanged
{
  selfCopy = self;
  AirplaneModeConfiguration.airplaneModeChanged()();
}

@end