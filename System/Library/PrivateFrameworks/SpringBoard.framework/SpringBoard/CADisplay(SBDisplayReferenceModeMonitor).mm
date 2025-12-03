@interface CADisplay(SBDisplayReferenceModeMonitor)
- (id)sb_referenceModeObserverUniqueIdentifier;
@end

@implementation CADisplay(SBDisplayReferenceModeMonitor)

- (id)sb_referenceModeObserverUniqueIdentifier
{
  uniqueId = [self uniqueId];
  v3 = uniqueId;
  if (uniqueId)
  {
    v4 = uniqueId;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "displayId")}];
    v4 = [v5 description];
  }

  return v4;
}

@end