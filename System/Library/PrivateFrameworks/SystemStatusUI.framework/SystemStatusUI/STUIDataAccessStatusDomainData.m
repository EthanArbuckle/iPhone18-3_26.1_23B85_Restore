@interface STUIDataAccessStatusDomainData
- (NSArray)dataAccessAttributions;
- (STUIDataAccessStatusDomainData)activeAttributionData;
- (STUIDataAccessStatusDomainData)dataWithAccessType:(unint64_t)a3;
- (STUIDataAccessStatusDomainData)dataWithAttributedEntity:(id)a3;
- (STUIDataAccessStatusDomainData)dataWithEntitiesThatAreSystemServices:(BOOL)a3;
- (STUIDataAccessStatusDomainData)dataWithExecutableIdentity:(id)a3;
- (STUIDataAccessStatusDomainData)recentAttributionData;
- (STUIDataAccessStatusDomainData)unsatisfiedMinimumOnTimeAttributionData;
@end

@implementation STUIDataAccessStatusDomainData

- (NSArray)dataAccessAttributions
{
  v5.receiver = self;
  v5.super_class = STUIDataAccessStatusDomainData;
  v2 = [(STDataAccessStatusDomainData *)&v5 dataAccessAttributions];
  v3 = [v2 bs_map:&__block_literal_global_9];

  return v3;
}

STUIDataAccessAttribution *__56__STUIDataAccessStatusDomainData_dataAccessAttributions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(STDataAccessAttribution *)[STUIDataAccessAttribution alloc] initWithDataAccessAttribution:v2];

  return v3;
}

- (STUIDataAccessStatusDomainData)activeAttributionData
{
  v3 = [STUIDataAccessStatusDomainData alloc];
  v7.receiver = self;
  v7.super_class = STUIDataAccessStatusDomainData;
  v4 = [(STDataAccessStatusDomainData *)&v7 activeAttributionData];
  v5 = [(STDataAccessStatusDomainData *)v3 initWithData:v4];

  return v5;
}

- (STUIDataAccessStatusDomainData)recentAttributionData
{
  v3 = [STUIDataAccessStatusDomainData alloc];
  v7.receiver = self;
  v7.super_class = STUIDataAccessStatusDomainData;
  v4 = [(STDataAccessStatusDomainData *)&v7 recentAttributionData];
  v5 = [(STDataAccessStatusDomainData *)v3 initWithData:v4];

  return v5;
}

- (STUIDataAccessStatusDomainData)unsatisfiedMinimumOnTimeAttributionData
{
  v3 = [STUIDataAccessStatusDomainData alloc];
  v7.receiver = self;
  v7.super_class = STUIDataAccessStatusDomainData;
  v4 = [(STDataAccessStatusDomainData *)&v7 unsatisfiedMinimumOnTimeAttributionData];
  v5 = [(STDataAccessStatusDomainData *)v3 initWithData:v4];

  return v5;
}

- (STUIDataAccessStatusDomainData)dataWithEntitiesThatAreSystemServices:(BOOL)a3
{
  v3 = a3;
  v5 = [STUIDataAccessStatusDomainData alloc];
  v9.receiver = self;
  v9.super_class = STUIDataAccessStatusDomainData;
  v6 = [(STDataAccessStatusDomainData *)&v9 dataWithEntitiesThatAreSystemServices:v3];
  v7 = [(STDataAccessStatusDomainData *)v5 initWithData:v6];

  return v7;
}

- (STUIDataAccessStatusDomainData)dataWithAttributedEntity:(id)a3
{
  v4 = a3;
  v5 = [STUIDataAccessStatusDomainData alloc];
  v9.receiver = self;
  v9.super_class = STUIDataAccessStatusDomainData;
  v6 = [(STDataAccessStatusDomainData *)&v9 dataWithAttributedEntity:v4];

  v7 = [(STDataAccessStatusDomainData *)v5 initWithData:v6];

  return v7;
}

- (STUIDataAccessStatusDomainData)dataWithExecutableIdentity:(id)a3
{
  v4 = a3;
  v5 = [STUIDataAccessStatusDomainData alloc];
  v9.receiver = self;
  v9.super_class = STUIDataAccessStatusDomainData;
  v6 = [(STDataAccessStatusDomainData *)&v9 dataWithExecutableIdentity:v4];

  v7 = [(STDataAccessStatusDomainData *)v5 initWithData:v6];

  return v7;
}

- (STUIDataAccessStatusDomainData)dataWithAccessType:(unint64_t)a3
{
  v5 = [STUIDataAccessStatusDomainData alloc];
  v9.receiver = self;
  v9.super_class = STUIDataAccessStatusDomainData;
  v6 = [(STDataAccessStatusDomainData *)&v9 dataWithAccessType:a3];
  v7 = [(STDataAccessStatusDomainData *)v5 initWithData:v6];

  return v7;
}

@end