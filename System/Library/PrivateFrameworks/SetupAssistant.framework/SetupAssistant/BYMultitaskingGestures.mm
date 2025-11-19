@interface BYMultitaskingGestures
- (BOOL)multitaskingWasCompleted;
- (BOOL)multitaskingWasTurnedOff;
- (BYMultitaskingGestures)init;
- (BYMultitaskingGestures)initWithPreferencesController:(id)a3;
@end

@implementation BYMultitaskingGestures

- (BYMultitaskingGestures)init
{
  v3 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
  v4 = [(BYMultitaskingGestures *)self initWithPreferencesController:v3];

  return v4;
}

- (BYMultitaskingGestures)initWithPreferencesController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BYMultitaskingGestures;
  v6 = [(BYMultitaskingGestures *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferencesController, a3);
  }

  return v7;
}

- (BOOL)multitaskingWasCompleted
{
  v2 = [(BYMultitaskingGestures *)self preferencesController];
  v3 = [v2 BOOLForKey:@"MultitaskingWasCompleted"];

  return v3;
}

- (BOOL)multitaskingWasTurnedOff
{
  v2 = [(BYMultitaskingGestures *)self preferencesController];
  v3 = [v2 BOOLForKey:@"MultitaskingWasTurnedOff"];

  return v3;
}

@end