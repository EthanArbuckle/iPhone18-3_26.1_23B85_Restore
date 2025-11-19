@interface SavedLocationsManager
- (void)sharedPreferencesChangedExternally;
@end

@implementation SavedLocationsManager

- (void)sharedPreferencesChangedExternally
{
  v2 = self;
  SavedLocationsManager.sharedPreferencesChangedExternally()();
}

@end