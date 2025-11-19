@interface STMutableStatusBarDataAdditionsStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (STMutableDictionaryData)entryDictionaryData;
- (STMutableStatusBarDataAdditionsStatusDomainData)initWithEntryDictionaryData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_updateEntry:(void *)a3 forKey:;
@end

@implementation STMutableStatusBarDataAdditionsStatusDomainData

- (STMutableStatusBarDataAdditionsStatusDomainData)initWithEntryDictionaryData:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [(STStatusBarDataAdditionsStatusDomainData *)&self->super.super.isa _initWithEntryDictionaryData:v4];

  return v5;
}

- (STMutableDictionaryData)entryDictionaryData
{
  v4.receiver = self;
  v4.super_class = STMutableStatusBarDataAdditionsStatusDomainData;
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)&v4 entryDictionaryData];

  return v2;
}

- (void)_updateEntry:(void *)a3 forKey:
{
  v7 = a2;
  v5 = a3;
  if (a1)
  {
    if (v7)
    {
      [(STStatusBarDataAdditionsStatusDomainData *)a1 _expectedClassForKey:v5];
      objc_opt_isKindOfClass();
      v6 = [a1 entryDictionaryData];
      [v6 setObject:v7 forKey:v5];
    }

    else
    {
      v6 = [a1 entryDictionaryData];
      [v6 removeObjectForKey:v5];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STStatusBarDataAdditionsStatusDomainData allocWithZone:a3];

  return [(STStatusBarDataAdditionsStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end