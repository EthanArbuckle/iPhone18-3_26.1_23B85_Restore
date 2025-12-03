@interface WBSSavedAccountSidecarContextSpecificData
- (BOOL)isEqual:(id)equal;
- (NSDate)lastUsedDateAcrossAllSites;
- (NSDictionary)dictionaryRepresentation;
- (WBSSavedAccountSidecarContextSpecificData)initWithDictionaryRepresentation:(id)representation;
- (WBSSavedAccountSidecarContextSpecificData)initWithLastUsedDate:(id)date;
- (void)setLastUsedDate:(id)date forSite:(id)site;
@end

@implementation WBSSavedAccountSidecarContextSpecificData

- (WBSSavedAccountSidecarContextSpecificData)initWithLastUsedDate:(id)date
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = WBSSavedAccountSidecarContextSpecificData;
  v6 = [(WBSSavedAccountSidecarContextSpecificData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lastUsedDate, date);
    v8 = v7;
  }

  return v7;
}

- (WBSSavedAccountSidecarContextSpecificData)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v19.receiver = self;
  v19.super_class = WBSSavedAccountSidecarContextSpecificData;
  v5 = [(WBSSavedAccountSidecarContextSpecificData *)&v19 init];
  if (v5)
  {
    v6 = [representationCopy copy];
    originalKeychainDictionary = v5->_originalKeychainDictionary;
    v5->_originalKeychainDictionary = v6;

    v8 = [representationCopy safari_numberForKey:@"lUsed"];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x1E695DF00];
      [v8 doubleValue];
      v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
      lastUsedDate = v5->_lastUsedDate;
      v5->_lastUsedDate = v11;
    }

    v13 = [representationCopy safari_dictionaryForKey:@"slUsed"];
    v14 = [v13 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_65];
    v15 = [v14 mutableCopy];
    sitesToLastUsedDates = v5->_sitesToLastUsedDates;
    v5->_sitesToLastUsedDates = v15;

    v17 = v5;
  }

  return v5;
}

id __78__WBSSavedAccountSidecarContextSpecificData_initWithDictionaryRepresentation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DF00];
    [v3 doubleValue];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (WBSIsEqual(self->_lastUsedDate, v5[3]))
      {
        v6 = WBSIsEqual(self->_sitesToLastUsedDates, v5[2]);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setLastUsedDate:(id)date forSite:(id)site
{
  dateCopy = date;
  siteCopy = site;
  sitesToLastUsedDates = self->_sitesToLastUsedDates;
  if (!sitesToLastUsedDates)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_sitesToLastUsedDates;
    self->_sitesToLastUsedDates = dictionary;

    sitesToLastUsedDates = self->_sitesToLastUsedDates;
  }

  [(NSMutableDictionary *)sitesToLastUsedDates setObject:dateCopy forKeyedSubscript:siteCopy];
}

- (NSDate)lastUsedDateAcrossAllSites
{
  allValues = [(NSMutableDictionary *)self->_sitesToLastUsedDates allValues];
  v4 = [allValues safari_reduceObjectsWithInitialValue:self->_lastUsedDate usingBlock:&__block_literal_global_10_2];

  return v4;
}

id __71__WBSSavedAccountSidecarContextSpecificData_lastUsedDateAcrossAllSites__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 laterDate:v5];
  }

  else if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [(NSDictionary *)self->_originalKeychainDictionary mutableCopy];
  v4 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_lastUsedDate timeIntervalSinceReferenceDate];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"lUsed"];

  if ([(NSMutableDictionary *)self->_sitesToLastUsedDates count])
  {
    v6 = [(NSMutableDictionary *)self->_sitesToLastUsedDates safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_13];
    [v3 setObject:v6 forKeyedSubscript:@"slUsed"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"slUsed"];
  }

  return v3;
}

uint64_t __69__WBSSavedAccountSidecarContextSpecificData_dictionaryRepresentation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E696AD98];
  [a3 timeIntervalSinceReferenceDate];

  return [v3 numberWithDouble:?];
}

@end