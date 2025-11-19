@interface SMTriggerDestinationStateEnumerationOptions
- (SMTriggerDestinationStateEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 sortByStateStartDate:(BOOL)a5 ascending:(BOOL)a6 dateInterval:(id)a7 sessionIdentifier:(id)a8;
- (SMTriggerDestinationStateEnumerationOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMTriggerDestinationStateEnumerationOptions

- (SMTriggerDestinationStateEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 sortByStateStartDate:(BOOL)a5 ascending:(BOOL)a6 dateInterval:(id)a7 sessionIdentifier:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = SMTriggerDestinationStateEnumerationOptions;
  v17 = [(SMTriggerDestinationStateEnumerationOptions *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_batchSize = a3;
    v17->_fetchLimit = a4;
    v17->_sortByStateStartDate = a5;
    v17->_ascending = a6;
    objc_storeStrong(&v17->_dateInterval, a7);
    objc_storeStrong(&v18->_sessionIdentifier, a8);
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  batchSize = self->_batchSize;
  fetchLimit = self->_fetchLimit;
  sortByStateStartDate = self->_sortByStateStartDate;
  ascending = self->_ascending;
  dateInterval = self->_dateInterval;
  sessionIdentifier = self->_sessionIdentifier;

  return [v4 initWithBatchSize:batchSize fetchLimit:fetchLimit sortByStateStartDate:sortByStateStartDate ascending:ascending dateInterval:dateInterval sessionIdentifier:sessionIdentifier];
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [v5 encodeBool:self->_sortByStateStartDate forKey:@"sortByStateStartDate"];
  [v5 encodeBool:self->_ascending forKey:@"ascending"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
}

- (SMTriggerDestinationStateEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"batchSize"];
  v6 = [v4 decodeIntegerForKey:@"fetchLimit"];
  v7 = [v4 decodeBoolForKey:@"sortByStateStartDate"];
  v8 = [v4 decodeBoolForKey:@"ascending"];
  v9 = [v4 decodeObjectForKey:@"dateInterval"];
  v10 = [v4 decodeObjectForKey:@"sessionIdentifier"];

  v11 = [(SMTriggerDestinationStateEnumerationOptions *)self initWithBatchSize:v5 fetchLimit:v6 sortByStateStartDate:v7 ascending:v8 dateInterval:v9 sessionIdentifier:v10];
  return v11;
}

@end