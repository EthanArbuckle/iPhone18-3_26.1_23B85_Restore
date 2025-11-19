@interface PGMeaningLocationCriteria
+ (id)criteriaWithDictionary:(id)a3;
- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4;
- (NSString)description;
@end

@implementation PGMeaningLocationCriteria

+ (id)criteriaWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"excludeFrequentLocations"];
  [v5 setExcludeFrequentLocations:{objc_msgSend(v6, "BOOLValue")}];

  v7 = [v4 objectForKeyedSubscript:@"excludeHomeWorkLocations"];
  [v5 setExcludeHomeWorkLocations:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [v4 objectForKeyedSubscript:@"includeFrequentLocations"];
  [v5 setIncludeFrequentLocations:{objc_msgSend(v8, "BOOLValue")}];

  v9 = [v4 objectForKeyedSubscript:@"includeHomeLocations"];
  [v5 setIncludeHomeLocations:{objc_msgSend(v9, "BOOLValue")}];

  v10 = [v4 objectForKeyedSubscript:@"includeWorkLocations"];

  [v5 setIncludeWorkLocations:{objc_msgSend(v10, "BOOLValue")}];

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  if ([(PGMeaningLocationCriteria *)self excludeFrequentLocations])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"excludeFrequentLocations: %@\n", v4];
  if ([(PGMeaningLocationCriteria *)self excludeHomeWorkLocations])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"excludeHomeWorkLocations: %@\n", v5];
  if ([(PGMeaningLocationCriteria *)self includeWorkLocations])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"includeWorkLocations: %@\n", v6];
  if ([(PGMeaningLocationCriteria *)self includeHomeLocations])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"includeHomeLocations: %@\n", v7];

  return v3;
}

- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4
{
  v5 = a4;
  if ((-[PGMeaningLocationCriteria excludeFrequentLocations](self, "excludeFrequentLocations") || -[PGMeaningLocationCriteria excludeHomeWorkLocations](self, "excludeHomeWorkLocations") || -[PGMeaningLocationCriteria includeFrequentLocations](self, "includeFrequentLocations") || -[PGMeaningLocationCriteria includeHomeLocations](self, "includeHomeLocations") || -[PGMeaningLocationCriteria includeWorkLocations](self, "includeWorkLocations")) && ![v5 hasAddressNodes])
  {
    LOBYTE(self) = 0;
  }

  else
  {
    if ([(PGMeaningLocationCriteria *)self includeHomeLocations])
    {
      v6 = [v5 happensPartiallyAtMyHome];
    }

    else
    {
      v6 = 1;
    }

    v7 = ![(PGMeaningLocationCriteria *)self includeWorkLocations];
    v8 = v7 & v6;
    if ((v7 & 1) == 0 && v6)
    {
      v8 = [v5 happensPartiallyAtMyWork];
    }

    v9 = ![(PGMeaningLocationCriteria *)self excludeFrequentLocations];
    v10 = v9 & v8;
    if ((v9 & 1) == 0 && v8)
    {
      v10 = [v5 happensAtFrequentLocation] ^ 1;
    }

    v11 = ![(PGMeaningLocationCriteria *)self includeFrequentLocations];
    v12 = v11 & v10;
    if ((v11 & 1) == 0 && v10)
    {
      v12 = [v5 happensAtFrequentLocation];
    }

    v13 = ![(PGMeaningLocationCriteria *)self excludeHomeWorkLocations];
    LOBYTE(self) = v13 & v12;
    if ((v13 & 1) == 0 && v12)
    {
      LODWORD(self) = [v5 happensPartiallyAtMyHomeOrWork] ^ 1;
    }
  }

  return self;
}

@end