@interface SMSuggestionEnumerationOptions
- (SMSuggestionEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit offset:(unint64_t)offset includeSuppressed:(BOOL)suppressed sortByCreationDate:(BOOL)date ascending:(BOOL)ascending dateInterval:(id)interval filteredToSuggestionTriggers:(id)self0 filteredToSuggestionUserTypes:(id)self1 filteredToSessionTypes:(id)self2;
- (SMSuggestionEnumerationOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSuggestionEnumerationOptions

- (SMSuggestionEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit offset:(unint64_t)offset includeSuppressed:(BOOL)suppressed sortByCreationDate:(BOOL)date ascending:(BOOL)ascending dateInterval:(id)interval filteredToSuggestionTriggers:(id)self0 filteredToSuggestionUserTypes:(id)self1 filteredToSessionTypes:(id)self2
{
  intervalCopy = interval;
  triggersCopy = triggers;
  typesCopy = types;
  sessionTypesCopy = sessionTypes;
  v26.receiver = self;
  v26.super_class = SMSuggestionEnumerationOptions;
  v18 = [(SMSuggestionEnumerationOptions *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_batchSize = size;
    v18->_fetchLimit = limit;
    v18->_offset = offset;
    v18->_includeSuppressed = suppressed;
    v18->_sortByCreationDate = date;
    v18->_ascending = ascending;
    objc_storeStrong(&v18->_dateInterval, interval);
    objc_storeStrong(&v19->_filteredToSuggestionTriggers, triggers);
    objc_storeStrong(&v19->_filteredToSuggestionUserTypes, types);
    objc_storeStrong(&v19->_filteredToSessionTypes, sessionTypes);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  filteredToSuggestionUserTypes = self->_filteredToSuggestionUserTypes;
  return [v4 initWithBatchSize:self->_batchSize fetchLimit:self->_fetchLimit offset:self->_offset includeSuppressed:self->_includeSuppressed sortByCreationDate:self->_sortByCreationDate ascending:self->_ascending dateInterval:self->_dateInterval filteredToSuggestionTriggers:self->_filteredToSuggestionTriggers filteredToSuggestionUserTypes:filteredToSuggestionUserTypes filteredToSessionTypes:self->_filteredToSessionTypes];
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [coderCopy encodeInteger:self->_offset forKey:@"offset"];
  [coderCopy encodeBool:self->_includeSuppressed forKey:@"includeSuppressed"];
  [coderCopy encodeInteger:self->_sortByCreationDate forKey:@"sortByCreationDate"];
  [coderCopy encodeInteger:self->_ascending forKey:@"ascending"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_filteredToSuggestionTriggers forKey:@"filteredToSuggestionTriggers"];
  [coderCopy encodeObject:self->_filteredToSuggestionUserTypes forKey:@"filteredToSuggestionUserTypes"];
  [coderCopy encodeObject:self->_filteredToSessionTypes forKey:@"filteredToSessionTypes"];
}

- (SMSuggestionEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v4 = [coderCopy decodeIntegerForKey:@"fetchLimit"];
  v5 = [coderCopy decodeIntegerForKey:@"offset"];
  v6 = [coderCopy decodeBoolForKey:@"includeSuppressed"];
  v7 = [coderCopy decodeIntegerForKey:@"sortByCreationDate"] != 0;
  v8 = [coderCopy decodeIntegerForKey:@"ascending"] != 0;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v10 = [coderCopy decodeObjectForKey:@"filteredToSuggestionTriggers"];
  v11 = [coderCopy decodeObjectForKey:@"filteredToSuggestionUserTypes"];
  v12 = [coderCopy decodeObjectForKey:@"filteredToSessionTypes"];

  v13 = [(SMSuggestionEnumerationOptions *)self initWithBatchSize:v15 fetchLimit:v4 offset:v5 includeSuppressed:v6 sortByCreationDate:v7 ascending:v8 dateInterval:v9 filteredToSuggestionTriggers:v10 filteredToSuggestionUserTypes:v11 filteredToSessionTypes:v12];
  return v13;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  batchSize = [(SMSuggestionEnumerationOptions *)self batchSize];
  fetchLimit = [(SMSuggestionEnumerationOptions *)self fetchLimit];
  offset = [(SMSuggestionEnumerationOptions *)self offset];
  if ([(SMSuggestionEnumerationOptions *)self includeSuppressed])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(SMSuggestionEnumerationOptions *)self sortByCreationDate])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(SMSuggestionEnumerationOptions *)self ascending])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  dateInterval = [(SMSuggestionEnumerationOptions *)self dateInterval];
  filteredToSuggestionTriggers = [(SMSuggestionEnumerationOptions *)self filteredToSuggestionTriggers];
  filteredToSuggestionUserTypes = [(SMSuggestionEnumerationOptions *)self filteredToSuggestionUserTypes];
  filteredToSessionTypes = [(SMSuggestionEnumerationOptions *)self filteredToSessionTypes];
  v13 = [v15 stringWithFormat:@"batchSize, %lu, fetchLimit, %lu, offset, %lu, include suppressed, %@, sort by creation date, %@, ascending, %@, dateinterval, %@, filteredToSuggestionTriggers, %@, filteredToSuggestionUserTypes, %@, filteredToSessionTypes, %@", batchSize, fetchLimit, offset, v6, v7, v8, dateInterval, filteredToSuggestionTriggers, filteredToSuggestionUserTypes, filteredToSessionTypes];

  return v13;
}

@end