@interface STUIMutableDataAccessStatusDomainData
- (NSArray)dataAccessAttributions;
- (void)setDataAccessAttributions:(id)attributions;
@end

@implementation STUIMutableDataAccessStatusDomainData

- (NSArray)dataAccessAttributions
{
  v5.receiver = self;
  v5.super_class = STUIMutableDataAccessStatusDomainData;
  dataAccessAttributions = [(STDataAccessStatusDomainData *)&v5 dataAccessAttributions];
  v3 = [dataAccessAttributions bs_map:&__block_literal_global_26];

  return v3;
}

STUIDataAccessAttribution *__63__STUIMutableDataAccessStatusDomainData_dataAccessAttributions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(STDataAccessAttribution *)[STUIDataAccessAttribution alloc] initWithDataAccessAttribution:v2];

  return v3;
}

- (void)setDataAccessAttributions:(id)attributions
{
  v3.receiver = self;
  v3.super_class = STUIMutableDataAccessStatusDomainData;
  [(STMutableDataAccessStatusDomainData *)&v3 setDataAccessAttributions:attributions];
}

@end