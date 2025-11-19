@interface STStatusBarOverridesStatusDomainData(ArchiveRecordAccessing)
- (_SBSystemStatusStatusBarOverridesArchiveRecord)_sbSystemStatusStatusBarOverridesArchiveRecord;
@end

@implementation STStatusBarOverridesStatusDomainData(ArchiveRecordAccessing)

- (_SBSystemStatusStatusBarOverridesArchiveRecord)_sbSystemStatusStatusBarOverridesArchiveRecord
{
  v2 = [a1 customOverrides];
  v3 = [a1 suppressedBackgroundActivityIdentifiers];
  v4 = [[_SBSystemStatusStatusBarOverridesArchiveRecord alloc] initWithStatusBarData:v2 andSuppressedBackgroundActivityIdentifiers:v3];

  return v4;
}

@end