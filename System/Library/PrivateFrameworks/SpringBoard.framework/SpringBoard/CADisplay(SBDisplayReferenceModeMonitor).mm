@interface CADisplay(SBDisplayReferenceModeMonitor)
- (id)sb_referenceModeObserverUniqueIdentifier;
@end

@implementation CADisplay(SBDisplayReferenceModeMonitor)

- (id)sb_referenceModeObserverUniqueIdentifier
{
  v2 = [a1 uniqueId];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "displayId")}];
    v4 = [v5 description];
  }

  return v4;
}

@end