@interface STUIDataAccessStatusDomainData
- (NSArray)dataAccessAttributions;
- (STUIDataAccessStatusDomainData)activeAttributionData;
- (STUIDataAccessStatusDomainData)dataWithAccessType:(unint64_t)type;
- (STUIDataAccessStatusDomainData)dataWithAttributedEntity:(id)entity;
- (STUIDataAccessStatusDomainData)dataWithEntitiesThatAreSystemServices:(BOOL)services;
- (STUIDataAccessStatusDomainData)dataWithExecutableIdentity:(id)identity;
- (STUIDataAccessStatusDomainData)recentAttributionData;
- (STUIDataAccessStatusDomainData)unsatisfiedMinimumOnTimeAttributionData;
@end

@implementation STUIDataAccessStatusDomainData

- (NSArray)dataAccessAttributions
{
  v5.receiver = self;
  v5.super_class = STUIDataAccessStatusDomainData;
  dataAccessAttributions = [(STDataAccessStatusDomainData *)&v5 dataAccessAttributions];
  v3 = [dataAccessAttributions bs_map:&__block_literal_global_9];

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
  activeAttributionData = [(STDataAccessStatusDomainData *)&v7 activeAttributionData];
  v5 = [(STDataAccessStatusDomainData *)v3 initWithData:activeAttributionData];

  return v5;
}

- (STUIDataAccessStatusDomainData)recentAttributionData
{
  v3 = [STUIDataAccessStatusDomainData alloc];
  v7.receiver = self;
  v7.super_class = STUIDataAccessStatusDomainData;
  recentAttributionData = [(STDataAccessStatusDomainData *)&v7 recentAttributionData];
  v5 = [(STDataAccessStatusDomainData *)v3 initWithData:recentAttributionData];

  return v5;
}

- (STUIDataAccessStatusDomainData)unsatisfiedMinimumOnTimeAttributionData
{
  v3 = [STUIDataAccessStatusDomainData alloc];
  v7.receiver = self;
  v7.super_class = STUIDataAccessStatusDomainData;
  unsatisfiedMinimumOnTimeAttributionData = [(STDataAccessStatusDomainData *)&v7 unsatisfiedMinimumOnTimeAttributionData];
  v5 = [(STDataAccessStatusDomainData *)v3 initWithData:unsatisfiedMinimumOnTimeAttributionData];

  return v5;
}

- (STUIDataAccessStatusDomainData)dataWithEntitiesThatAreSystemServices:(BOOL)services
{
  servicesCopy = services;
  v5 = [STUIDataAccessStatusDomainData alloc];
  v9.receiver = self;
  v9.super_class = STUIDataAccessStatusDomainData;
  v6 = [(STDataAccessStatusDomainData *)&v9 dataWithEntitiesThatAreSystemServices:servicesCopy];
  v7 = [(STDataAccessStatusDomainData *)v5 initWithData:v6];

  return v7;
}

- (STUIDataAccessStatusDomainData)dataWithAttributedEntity:(id)entity
{
  entityCopy = entity;
  v5 = [STUIDataAccessStatusDomainData alloc];
  v9.receiver = self;
  v9.super_class = STUIDataAccessStatusDomainData;
  v6 = [(STDataAccessStatusDomainData *)&v9 dataWithAttributedEntity:entityCopy];

  v7 = [(STDataAccessStatusDomainData *)v5 initWithData:v6];

  return v7;
}

- (STUIDataAccessStatusDomainData)dataWithExecutableIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [STUIDataAccessStatusDomainData alloc];
  v9.receiver = self;
  v9.super_class = STUIDataAccessStatusDomainData;
  v6 = [(STDataAccessStatusDomainData *)&v9 dataWithExecutableIdentity:identityCopy];

  v7 = [(STDataAccessStatusDomainData *)v5 initWithData:v6];

  return v7;
}

- (STUIDataAccessStatusDomainData)dataWithAccessType:(unint64_t)type
{
  v5 = [STUIDataAccessStatusDomainData alloc];
  v9.receiver = self;
  v9.super_class = STUIDataAccessStatusDomainData;
  v6 = [(STDataAccessStatusDomainData *)&v9 dataWithAccessType:type];
  v7 = [(STDataAccessStatusDomainData *)v5 initWithData:v6];

  return v7;
}

@end