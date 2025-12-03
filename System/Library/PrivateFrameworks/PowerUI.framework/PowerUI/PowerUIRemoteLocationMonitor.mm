@interface PowerUIRemoteLocationMonitor
- (PowerUIRemoteLocationMonitor)initWithManager:(id)manager withLocationManager:(id)locationManager withContext:(id)context withDefaultsDomain:(id)domain withTrialManager:(id)trialManager;
@end

@implementation PowerUIRemoteLocationMonitor

- (PowerUIRemoteLocationMonitor)initWithManager:(id)manager withLocationManager:(id)locationManager withContext:(id)context withDefaultsDomain:(id)domain withTrialManager:(id)trialManager
{
  v8.receiver = self;
  v8.super_class = PowerUIRemoteLocationMonitor;
  return [(PowerUIRemoteLocationMonitor *)&v8 init:manager];
}

@end