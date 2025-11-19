@interface STMutableDataAccessStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (STMutableDataAccessStatusDomainData)initWithAttributionListData:(id)a3;
- (STMutableListData)attributionListData;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDataAccessAttributions:(id)a3;
@end

@implementation STMutableDataAccessStatusDomainData

- (STMutableListData)attributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableDataAccessStatusDomainData;
  v2 = [(STDataAccessStatusDomainData *)&v4 attributionListData];

  return v2;
}

- (STMutableDataAccessStatusDomainData)initWithAttributionListData:(id)a3
{
  v4 = [a3 mutableCopy];
  v7.receiver = self;
  v7.super_class = STMutableDataAccessStatusDomainData;
  v5 = [(STDataAccessStatusDomainData *)&v7 _initWithAttributionListData:v4];

  return v5;
}

- (void)setDataAccessAttributions:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableDataAccessStatusDomainData *)self attributionListData];
    if (self)
    {
      self = [v4 sortedArrayUsingComparator:&__block_literal_global_32];
    }

    [v5 setObjects:self];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STDataAccessStatusDomainData allocWithZone:a3];

  return [(STDataAccessStatusDomainData *)v4 initWithData:self];
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