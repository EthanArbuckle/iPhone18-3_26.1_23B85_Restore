@interface RTLearnedPlaceTypeInferenceEnumerationOptions
- (RTLearnedPlaceTypeInferenceEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit offset:(unint64_t)offset dateInterval:(id)interval sortByCreationDate:(BOOL)date ascending:(BOOL)ascending filteredToPlaceTypes:(id)types filteredToIdentifiers:(id)self0 filteredToSessionIds:(id)self1 filteredToLearnedPlaceIdentifiers:(id)self2;
- (RTLearnedPlaceTypeInferenceEnumerationOptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLearnedPlaceTypeInferenceEnumerationOptions

- (RTLearnedPlaceTypeInferenceEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit offset:(unint64_t)offset dateInterval:(id)interval sortByCreationDate:(BOOL)date ascending:(BOOL)ascending filteredToPlaceTypes:(id)types filteredToIdentifiers:(id)self0 filteredToSessionIds:(id)self1 filteredToLearnedPlaceIdentifiers:(id)self2
{
  intervalCopy = interval;
  typesCopy = types;
  identifiersCopy = identifiers;
  idsCopy = ids;
  placeIdentifiersCopy = placeIdentifiers;
  v27.receiver = self;
  v27.super_class = RTLearnedPlaceTypeInferenceEnumerationOptions;
  v18 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_batchSize = size;
    v18->_fetchLimit = limit;
    v18->_offset = offset;
    objc_storeStrong(&v18->_dateInterval, interval);
    v19->_sortByCreationDate = date;
    v19->_ascending = ascending;
    objc_storeStrong(&v19->_filteredToPlaceTypes, types);
    objc_storeStrong(&v19->_filteredToIdentifiers, identifiers);
    objc_storeStrong(&v19->_filteredToSessionIds, ids);
    objc_storeStrong(&v19->_filteredToLearnedPlaceIdentifiers, placeIdentifiers);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [coderCopy encodeInteger:self->_offset forKey:@"offset"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeInteger:self->_sortByCreationDate forKey:@"sortByCreationDate"];
  [coderCopy encodeInteger:self->_ascending forKey:@"ascending"];
  [coderCopy encodeObject:self->_filteredToPlaceTypes forKey:@"filteredToPlaceTypes"];
  [coderCopy encodeObject:self->_filteredToIdentifiers forKey:@"filteredToIdentifiers"];
  [coderCopy encodeObject:self->_filteredToSessionIds forKey:@"filteredToSessionIds"];
  [coderCopy encodeObject:self->_filteredToLearnedPlaceIdentifiers forKey:@"filteredToLearnedPlaceIdentifiers"];
}

- (RTLearnedPlaceTypeInferenceEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v4 = [coderCopy decodeIntegerForKey:@"fetchLimit"];
  v5 = [coderCopy decodeIntegerForKey:@"offset"];
  v6 = [coderCopy decodeObjectForKey:@"dateInterval"];
  v7 = [coderCopy decodeIntegerForKey:@"sortByCreationDate"] != 0;
  v8 = [coderCopy decodeIntegerForKey:@"ascending"] != 0;
  v9 = [coderCopy decodeObjectForKey:@"filteredToPlaceTypes"];
  v10 = [coderCopy decodeObjectForKey:@"filteredToIdentifiers"];
  v11 = [coderCopy decodeObjectForKey:@"filteredToSessionIds"];
  v12 = [coderCopy decodeObjectForKey:@"filteredToLearnedPlaceIdentifiers"];

  v13 = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self initWithBatchSize:v15 fetchLimit:v4 offset:v5 dateInterval:v6 sortByCreationDate:v7 ascending:v8 filteredToPlaceTypes:v9 filteredToIdentifiers:v10 filteredToSessionIds:v11 filteredToLearnedPlaceIdentifiers:v12];
  return v13;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  batchSize = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self batchSize];
  fetchLimit = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self fetchLimit];
  offset = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self offset];
  dateInterval = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self dateInterval];
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

  filteredToPlaceTypes = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self filteredToPlaceTypes];
  filteredToIdentifiers = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self filteredToIdentifiers];
  filteredToSessionIds = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self filteredToSessionIds];
  filteredToLearnedPlaceIdentifiers = [(RTLearnedPlaceTypeInferenceEnumerationOptions *)self filteredToLearnedPlaceIdentifiers];
  v13 = [v15 stringWithFormat:@"batchSize, %lu, fetchLimit, %lu, offset, %lu, dateinterval, %@, sort by creation date, %@, ascending, %@, filteredToPlaceTypes, %@, filteredToIdentifiers, %@, filteredToSessionIds, %@, filteredToLearnedPlaceIdentifiers, %@, ", batchSize, fetchLimit, offset, dateInterval, v7, v8, filteredToPlaceTypes, filteredToIdentifiers, filteredToSessionIds, filteredToLearnedPlaceIdentifiers];

  return v13;
}

@end