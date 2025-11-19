@interface SMSuggestionEnumerationOptions
- (SMSuggestionEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 offset:(unint64_t)a5 includeSuppressed:(BOOL)a6 sortByCreationDate:(BOOL)a7 ascending:(BOOL)a8 dateInterval:(id)a9 filteredToSuggestionTriggers:(id)a10 filteredToSuggestionUserTypes:(id)a11 filteredToSessionTypes:(id)a12;
- (SMSuggestionEnumerationOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSuggestionEnumerationOptions

- (SMSuggestionEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 offset:(unint64_t)a5 includeSuppressed:(BOOL)a6 sortByCreationDate:(BOOL)a7 ascending:(BOOL)a8 dateInterval:(id)a9 filteredToSuggestionTriggers:(id)a10 filteredToSuggestionUserTypes:(id)a11 filteredToSessionTypes:(id)a12
{
  v14 = a9;
  v15 = a10;
  v16 = a11;
  v17 = a12;
  v26.receiver = self;
  v26.super_class = SMSuggestionEnumerationOptions;
  v18 = [(SMSuggestionEnumerationOptions *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_batchSize = a3;
    v18->_fetchLimit = a4;
    v18->_offset = a5;
    v18->_includeSuppressed = a6;
    v18->_sortByCreationDate = a7;
    v18->_ascending = a8;
    objc_storeStrong(&v18->_dateInterval, a9);
    objc_storeStrong(&v19->_filteredToSuggestionTriggers, a10);
    objc_storeStrong(&v19->_filteredToSuggestionUserTypes, a11);
    objc_storeStrong(&v19->_filteredToSessionTypes, a12);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  filteredToSuggestionUserTypes = self->_filteredToSuggestionUserTypes;
  return [v4 initWithBatchSize:self->_batchSize fetchLimit:self->_fetchLimit offset:self->_offset includeSuppressed:self->_includeSuppressed sortByCreationDate:self->_sortByCreationDate ascending:self->_ascending dateInterval:self->_dateInterval filteredToSuggestionTriggers:self->_filteredToSuggestionTriggers filteredToSuggestionUserTypes:filteredToSuggestionUserTypes filteredToSessionTypes:self->_filteredToSessionTypes];
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [v5 encodeInteger:self->_offset forKey:@"offset"];
  [v5 encodeBool:self->_includeSuppressed forKey:@"includeSuppressed"];
  [v5 encodeInteger:self->_sortByCreationDate forKey:@"sortByCreationDate"];
  [v5 encodeInteger:self->_ascending forKey:@"ascending"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_filteredToSuggestionTriggers forKey:@"filteredToSuggestionTriggers"];
  [v5 encodeObject:self->_filteredToSuggestionUserTypes forKey:@"filteredToSuggestionUserTypes"];
  [v5 encodeObject:self->_filteredToSessionTypes forKey:@"filteredToSessionTypes"];
}

- (SMSuggestionEnumerationOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v15 = [v3 decodeIntegerForKey:@"batchSize"];
  v4 = [v3 decodeIntegerForKey:@"fetchLimit"];
  v5 = [v3 decodeIntegerForKey:@"offset"];
  v6 = [v3 decodeBoolForKey:@"includeSuppressed"];
  v7 = [v3 decodeIntegerForKey:@"sortByCreationDate"] != 0;
  v8 = [v3 decodeIntegerForKey:@"ascending"] != 0;
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v10 = [v3 decodeObjectForKey:@"filteredToSuggestionTriggers"];
  v11 = [v3 decodeObjectForKey:@"filteredToSuggestionUserTypes"];
  v12 = [v3 decodeObjectForKey:@"filteredToSessionTypes"];

  v13 = [(SMSuggestionEnumerationOptions *)self initWithBatchSize:v15 fetchLimit:v4 offset:v5 includeSuppressed:v6 sortByCreationDate:v7 ascending:v8 dateInterval:v9 filteredToSuggestionTriggers:v10 filteredToSuggestionUserTypes:v11 filteredToSessionTypes:v12];
  return v13;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = [(SMSuggestionEnumerationOptions *)self batchSize];
  v4 = [(SMSuggestionEnumerationOptions *)self fetchLimit];
  v5 = [(SMSuggestionEnumerationOptions *)self offset];
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

  v9 = [(SMSuggestionEnumerationOptions *)self dateInterval];
  v10 = [(SMSuggestionEnumerationOptions *)self filteredToSuggestionTriggers];
  v11 = [(SMSuggestionEnumerationOptions *)self filteredToSuggestionUserTypes];
  v12 = [(SMSuggestionEnumerationOptions *)self filteredToSessionTypes];
  v13 = [v15 stringWithFormat:@"batchSize, %lu, fetchLimit, %lu, offset, %lu, include suppressed, %@, sort by creation date, %@, ascending, %@, dateinterval, %@, filteredToSuggestionTriggers, %@, filteredToSuggestionUserTypes, %@, filteredToSessionTypes, %@", v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end