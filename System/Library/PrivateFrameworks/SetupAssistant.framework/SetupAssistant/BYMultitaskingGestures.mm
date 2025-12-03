@interface BYMultitaskingGestures
- (BOOL)multitaskingWasCompleted;
- (BOOL)multitaskingWasTurnedOff;
- (BYMultitaskingGestures)init;
- (BYMultitaskingGestures)initWithPreferencesController:(id)controller;
@end

@implementation BYMultitaskingGestures

- (BYMultitaskingGestures)init
{
  v3 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
  v4 = [(BYMultitaskingGestures *)self initWithPreferencesController:v3];

  return v4;
}

- (BYMultitaskingGestures)initWithPreferencesController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = BYMultitaskingGestures;
  v6 = [(BYMultitaskingGestures *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferencesController, controller);
  }

  return v7;
}

- (BOOL)multitaskingWasCompleted
{
  preferencesController = [(BYMultitaskingGestures *)self preferencesController];
  v3 = [preferencesController BOOLForKey:@"MultitaskingWasCompleted"];

  return v3;
}

- (BOOL)multitaskingWasTurnedOff
{
  preferencesController = [(BYMultitaskingGestures *)self preferencesController];
  v3 = [preferencesController BOOLForKey:@"MultitaskingWasTurnedOff"];

  return v3;
}

@end