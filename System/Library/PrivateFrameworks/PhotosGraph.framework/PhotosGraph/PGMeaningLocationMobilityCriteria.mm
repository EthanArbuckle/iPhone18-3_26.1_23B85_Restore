@interface PGMeaningLocationMobilityCriteria
+ (id)criteriaWithDictionary:(id)a3;
- (BOOL)isValid;
- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4;
- (NSString)description;
@end

@implementation PGMeaningLocationMobilityCriteria

+ (id)criteriaWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"locationMobility"];

  [v5 setLocationMobilityType:{+[PGGraphMobilityNode mobilityTypeForMobilityLabel:](PGGraphMobilityNode, "mobilityTypeForMobilityLabel:", v6)}];
  [v5 setLocationMobilityLabel:v6];

  return v5;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PGMeaningLocationMobilityCriteria *)self locationMobilityLabel];
  v4 = [v2 stringWithFormat:@"locationMobilityLabel: %@\n", v3];

  return v4;
}

- (BOOL)isValid
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PGMeaningLocationMobilityCriteria *)self locationMobilityType];
  if (!v3)
  {
    v4 = +[PGLogging sharedLogging];
    v5 = [v4 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(PGMeaningLocationMobilityCriteria *)self locationMobilityLabel];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid mobility type %@", &v9, 0xCu);
    }
  }

  result = v3 != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4
{
  v5 = a3;
  if ([(PGMeaningLocationMobilityCriteria *)self locationMobilityType])
  {
    v6 = [v5 locationMobilityType];
    v7 = v6 == [(PGMeaningLocationMobilityCriteria *)self locationMobilityType];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end