@interface FBSDisplayConfiguration(SBDisplayReferenceModeMonitor)
- (id)sb_referenceModeObserverUniqueIdentifier;
@end

@implementation FBSDisplayConfiguration(SBDisplayReferenceModeMonitor)

- (id)sb_referenceModeObserverUniqueIdentifier
{
  caDisplay = [self caDisplay];
  sb_referenceModeObserverUniqueIdentifier = [caDisplay sb_referenceModeObserverUniqueIdentifier];

  return sb_referenceModeObserverUniqueIdentifier;
}

@end