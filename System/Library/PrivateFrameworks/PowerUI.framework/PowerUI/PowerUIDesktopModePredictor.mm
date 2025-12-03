@interface PowerUIDesktopModePredictor
- (PowerUIDesktopModePredictor)initWithDefaultsDomain:(id)domain withContextStore:(id)store withTrialManager:(id)manager;
@end

@implementation PowerUIDesktopModePredictor

- (PowerUIDesktopModePredictor)initWithDefaultsDomain:(id)domain withContextStore:(id)store withTrialManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = PowerUIDesktopModePredictor;
  return [(PowerUIDesktopModePredictor *)&v6 init:domain];
}

@end