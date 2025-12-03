@interface SMTriggerDestinationStateEnumerationOptions
- (SMTriggerDestinationStateEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit sortByStateStartDate:(BOOL)date ascending:(BOOL)ascending dateInterval:(id)interval sessionIdentifier:(id)identifier;
- (SMTriggerDestinationStateEnumerationOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMTriggerDestinationStateEnumerationOptions

- (SMTriggerDestinationStateEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit sortByStateStartDate:(BOOL)date ascending:(BOOL)ascending dateInterval:(id)interval sessionIdentifier:(id)identifier
{
  intervalCopy = interval;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = SMTriggerDestinationStateEnumerationOptions;
  v17 = [(SMTriggerDestinationStateEnumerationOptions *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_batchSize = size;
    v17->_fetchLimit = limit;
    v17->_sortByStateStartDate = date;
    v17->_ascending = ascending;
    objc_storeStrong(&v17->_dateInterval, interval);
    objc_storeStrong(&v18->_sessionIdentifier, identifier);
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  batchSize = self->_batchSize;
  fetchLimit = self->_fetchLimit;
  sortByStateStartDate = self->_sortByStateStartDate;
  ascending = self->_ascending;
  dateInterval = self->_dateInterval;
  sessionIdentifier = self->_sessionIdentifier;

  return [v4 initWithBatchSize:batchSize fetchLimit:fetchLimit sortByStateStartDate:sortByStateStartDate ascending:ascending dateInterval:dateInterval sessionIdentifier:sessionIdentifier];
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [coderCopy encodeBool:self->_sortByStateStartDate forKey:@"sortByStateStartDate"];
  [coderCopy encodeBool:self->_ascending forKey:@"ascending"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
}

- (SMTriggerDestinationStateEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v6 = [coderCopy decodeIntegerForKey:@"fetchLimit"];
  v7 = [coderCopy decodeBoolForKey:@"sortByStateStartDate"];
  v8 = [coderCopy decodeBoolForKey:@"ascending"];
  v9 = [coderCopy decodeObjectForKey:@"dateInterval"];
  v10 = [coderCopy decodeObjectForKey:@"sessionIdentifier"];

  v11 = [(SMTriggerDestinationStateEnumerationOptions *)self initWithBatchSize:v5 fetchLimit:v6 sortByStateStartDate:v7 ascending:v8 dateInterval:v9 sessionIdentifier:v10];
  return v11;
}

@end