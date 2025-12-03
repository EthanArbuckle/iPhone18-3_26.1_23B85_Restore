@interface STStatusBarOverridesStatusDomainData(ArchiveRecordAccessing)
- (_SBSystemStatusStatusBarOverridesArchiveRecord)_sbSystemStatusStatusBarOverridesArchiveRecord;
@end

@implementation STStatusBarOverridesStatusDomainData(ArchiveRecordAccessing)

- (_SBSystemStatusStatusBarOverridesArchiveRecord)_sbSystemStatusStatusBarOverridesArchiveRecord
{
  customOverrides = [self customOverrides];
  suppressedBackgroundActivityIdentifiers = [self suppressedBackgroundActivityIdentifiers];
  v4 = [[_SBSystemStatusStatusBarOverridesArchiveRecord alloc] initWithStatusBarData:customOverrides andSuppressedBackgroundActivityIdentifiers:suppressedBackgroundActivityIdentifiers];

  return v4;
}

@end