@interface RTLearnedPlaceTypeInferenceEnumerationOptions
- (RTLearnedPlaceTypeInferenceEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 offset:(unint64_t)a5 dateInterval:(id)a6 sortByCreationDate:(BOOL)a7 ascending:(BOOL)a8 filteredToPlaceTypes:(id)a9 filteredToIdentifiers:(id)a10 filteredToSessionIds:(id)a11 filteredToLearnedPlaceIdentifiers:(id)a12;
- (RTLearnedPlaceTypeInferenceEnumerationOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLearnedPlaceTypeInferenceEnumerationOptions

- (RTLearnedPlaceTypeInferenceEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 offset:(unint64_t)a5 dateInterval:(id)a6 sortByCreationDate:(BOOL)a7 ascending:(BOOL)a8 filteredToPlaceTypes:(id)a9 filteredToIdentifiers:(id)a10 filteredToSessionIds:(id)a11 filteredToLearnedPlaceIdentifiers:(id)a12
{
  v14 = a6;
  v15 = a9;
  v26 = a10;
  v16 = a11;
  v17 = a12;
  v27.receiver = self;
  v27.super_class = RTLearnedPlaceTypeInferenceEnumerationOptions;
  v18 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_batchSize = a3;
    v18->_fetchLimit = a4;
    v18->_offset = a5;
    objc_storeStrong(&v18->_dateInterval, a6);
    v19->_sortByCreationDate = a7;
    v19->_ascending = a8;
    objc_storeStrong(&v19->_filteredToPlaceTypes, a9);
    objc_storeStrong(&v19->_filteredToIdentifiers, a10);
    objc_storeStrong(&v19->_filteredToSessionIds, a11);
    objc_storeStrong(&v19->_filteredToLearnedPlaceIdentifiers, a12);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [v5 encodeInteger:self->_offset forKey:@"offset"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeInteger:self->_sortByCreationDate forKey:@"sortByCreationDate"];
  [v5 encodeInteger:self->_ascending forKey:@"ascending"];
  [v5 encodeObject:self->_filteredToPlaceTypes forKey:@"filteredToPlaceTypes"];
  [v5 encodeObject:self->_filteredToIdentifiers forKey:@"filteredToIdentifiers"];
  [v5 encodeObject:self->_filteredToSessionIds forKey:@"filteredToSessionIds"];
  [v5 encodeObject:self->_filteredToLearnedPlaceIdentifiers forKey:@"filteredToLearnedPlaceIdentifiers"];
}

- (RTLearnedPlaceTypeInferenceEnumerationOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v15 = [v3 decodeIntegerForKey:@"batchSize"];
  v4 = [v3 decodeIntegerForKey:@"fetchLimit"];
  v5 = [v3 decodeIntegerForKey:@"offset"];
  v6 = [v3 decodeObjectForKey:@"dateInterval"];
  v7 = [v3 decodeIntegerForKey:@"sortByCreationDate"] != 0;
  v8 = [v3 decodeIntegerForKey:@"ascending"] != 0;
  v9 = [v3 decodeObjectForKey:@"filteredToPlaceTypes"];
  v10 = [v3 decodeObjectForKey:@"filteredToIdentifiers"];
  v11 = [v3 decodeObjectForKey:@"filteredToSessionIds"];
  v12 = [v3 decodeObjectForKey:@"filteredToLearnedPlaceIdentifiers"];

  v13 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self initWithBatchSize:v15 fetchLimit:v4 offset:v5 dateInterval:v6 sortByCreationDate:v7 ascending:v8 filteredToPlaceTypes:v9 filteredToIdentifiers:v10 filteredToSessionIds:v11 filteredToLearnedPlaceIdentifiers:v12];
  return v13;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self batchSize];
  v4 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self fetchLimit];
  v5 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self offset];
  v6 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self dateInterval];
  if ([(RTLearnedPlaceTypeInferenceEnumerationOptions *)self sortByCreationDate])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(RTLearnedPlaceTypeInferenceEnumerationOptions *)self ascending])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self filteredToPlaceTypes];
  v10 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self filteredToIdentifiers];
  v11 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self filteredToSessionIds];
  v12 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self filteredToLearnedPlaceIdentifiers];
  v13 = [v15 stringWithFormat:@"batchSize, %lu, fetchLimit, %lu, offset, %lu, dateinterval, %@, sort by creation date, %@, ascending, %@, filteredToPlaceTypes, %@, filteredToIdentifiers, %@, filteredToSessionIds, %@, filteredToLearnedPlaceIdentifiers, %@, ", v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end