@interface STMutableDataAccessStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (STMutableDataAccessStatusDomainData)initWithAttributionListData:(id)data;
- (STMutableListData)attributionListData;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDataAccessAttributions:(id)attributions;
@end

@implementation STMutableDataAccessStatusDomainData

- (STMutableListData)attributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableDataAccessStatusDomainData;
  attributionListData = [(STDataAccessStatusDomainData *)&v4 attributionListData];

  return attributionListData;
}

- (STMutableDataAccessStatusDomainData)initWithAttributionListData:(id)data
{
  v4 = [data mutableCopy];
  v7.receiver = self;
  v7.super_class = STMutableDataAccessStatusDomainData;
  v5 = [(STDataAccessStatusDomainData *)&v7 _initWithAttributionListData:v4];

  return v5;
}

- (void)setDataAccessAttributions:(id)attributions
{
  if (attributions)
  {
    attributionsCopy = attributions;
    attributionListData = [(STMutableDataAccessStatusDomainData *)self attributionListData];
    if (self)
    {
      self = [attributionsCopy sortedArrayUsingComparator:&__block_literal_global_32];
    }

    [attributionListData setObjects:self];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STDataAccessStatusDomainData allocWithZone:zone];

  return [(STDataAccessStatusDomainData *)v4 initWithData:self];
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