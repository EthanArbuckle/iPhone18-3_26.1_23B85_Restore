@interface PGMeaningLocationCriteria
+ (id)criteriaWithDictionary:(id)dictionary;
- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache;
- (NSString)description;
@end

@implementation PGMeaningLocationCriteria

+ (id)criteriaWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"excludeFrequentLocations"];
  [v5 setExcludeFrequentLocations:{objc_msgSend(v6, "BOOLValue")}];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"excludeHomeWorkLocations"];
  [v5 setExcludeHomeWorkLocations:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"includeFrequentLocations"];
  [v5 setIncludeFrequentLocations:{objc_msgSend(v8, "BOOLValue")}];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"includeHomeLocations"];
  [v5 setIncludeHomeLocations:{objc_msgSend(v9, "BOOLValue")}];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"includeWorkLocations"];

  [v5 setIncludeWorkLocations:{objc_msgSend(v10, "BOOLValue")}];

  return v5;
}

- (NSString)description
{
  string = [MEMORY[0x277CCAB68] string];
  if ([(PGMeaningLocationCriteria *)self excludeFrequentLocations])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [string appendFormat:@"excludeFrequentLocations: %@\n", v4];
  if ([(PGMeaningLocationCriteria *)self excludeHomeWorkLocations])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [string appendFormat:@"excludeHomeWorkLocations: %@\n", v5];
  if ([(PGMeaningLocationCriteria *)self includeWorkLocations])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [string appendFormat:@"includeWorkLocations: %@\n", v6];
  if ([(PGMeaningLocationCriteria *)self includeHomeLocations])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [string appendFormat:@"includeHomeLocations: %@\n", v7];

  return string;
}

- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache
{
  cacheCopy = cache;
  if ((-[PGMeaningLocationCriteria excludeFrequentLocations](self, "excludeFrequentLocations") || -[PGMeaningLocationCriteria excludeHomeWorkLocations](self, "excludeHomeWorkLocations") || -[PGMeaningLocationCriteria includeFrequentLocations](self, "includeFrequentLocations") || -[PGMeaningLocationCriteria includeHomeLocations](self, "includeHomeLocations") || -[PGMeaningLocationCriteria includeWorkLocations](self, "includeWorkLocations")) && ![cacheCopy hasAddressNodes])
  {
    LOBYTE(self) = 0;
  }

  else
  {
    if ([(PGMeaningLocationCriteria *)self includeHomeLocations])
    {
      happensPartiallyAtMyHome = [cacheCopy happensPartiallyAtMyHome];
    }

    else
    {
      happensPartiallyAtMyHome = 1;
    }

    v7 = ![(PGMeaningLocationCriteria *)self includeWorkLocations];
    happensPartiallyAtMyWork = v7 & happensPartiallyAtMyHome;
    if ((v7 & 1) == 0 && happensPartiallyAtMyHome)
    {
      happensPartiallyAtMyWork = [cacheCopy happensPartiallyAtMyWork];
    }

    v9 = ![(PGMeaningLocationCriteria *)self excludeFrequentLocations];
    v10 = v9 & happensPartiallyAtMyWork;
    if ((v9 & 1) == 0 && happensPartiallyAtMyWork)
    {
      v10 = [cacheCopy happensAtFrequentLocation] ^ 1;
    }

    v11 = ![(PGMeaningLocationCriteria *)self includeFrequentLocations];
    happensAtFrequentLocation = v11 & v10;
    if ((v11 & 1) == 0 && v10)
    {
      happensAtFrequentLocation = [cacheCopy happensAtFrequentLocation];
    }

    v13 = ![(PGMeaningLocationCriteria *)self excludeHomeWorkLocations];
    LOBYTE(self) = v13 & happensAtFrequentLocation;
    if ((v13 & 1) == 0 && happensAtFrequentLocation)
    {
      LODWORD(self) = [cacheCopy happensPartiallyAtMyHomeOrWork] ^ 1;
    }
  }

  return self;
}

@end