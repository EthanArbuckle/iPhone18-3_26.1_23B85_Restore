@interface SavedLocationsManager
- (void)sharedPreferencesChangedExternally;
@end

@implementation SavedLocationsManager

- (void)sharedPreferencesChangedExternally
{
  selfCopy = self;
  SavedLocationsManager.sharedPreferencesChangedExternally()();
}

@end