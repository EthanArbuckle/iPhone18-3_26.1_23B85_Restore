@interface STMutableStatusBarDataAdditionsStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (STMutableDictionaryData)entryDictionaryData;
- (STMutableStatusBarDataAdditionsStatusDomainData)initWithEntryDictionaryData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_updateEntry:(void *)entry forKey:;
@end

@implementation STMutableStatusBarDataAdditionsStatusDomainData

- (STMutableStatusBarDataAdditionsStatusDomainData)initWithEntryDictionaryData:(id)data
{
  v4 = [data mutableCopy];
  v5 = [(STStatusBarDataAdditionsStatusDomainData *)&self->super.super.isa _initWithEntryDictionaryData:v4];

  return v5;
}

- (STMutableDictionaryData)entryDictionaryData
{
  v4.receiver = self;
  v4.super_class = STMutableStatusBarDataAdditionsStatusDomainData;
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)&v4 entryDictionaryData];

  return entryDictionaryData;
}

- (void)_updateEntry:(void *)entry forKey:
{
  v7 = a2;
  entryCopy = entry;
  if (self)
  {
    if (v7)
    {
      [(STStatusBarDataAdditionsStatusDomainData *)self _expectedClassForKey:entryCopy];
      objc_opt_isKindOfClass();
      entryDictionaryData = [self entryDictionaryData];
      [entryDictionaryData setObject:v7 forKey:entryCopy];
    }

    else
    {
      entryDictionaryData = [self entryDictionaryData];
      [entryDictionaryData removeObjectForKey:entryCopy];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STStatusBarDataAdditionsStatusDomainData allocWithZone:zone];

  return [(STStatusBarDataAdditionsStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end