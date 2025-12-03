@interface PGMeaningLocationMobilityCriteria
+ (id)criteriaWithDictionary:(id)dictionary;
- (BOOL)isValid;
- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache;
- (NSString)description;
@end

@implementation PGMeaningLocationMobilityCriteria

+ (id)criteriaWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"locationMobility"];

  [v5 setLocationMobilityType:{+[PGGraphMobilityNode mobilityTypeForMobilityLabel:](PGGraphMobilityNode, "mobilityTypeForMobilityLabel:", v6)}];
  [v5 setLocationMobilityLabel:v6];

  return v5;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  locationMobilityLabel = [(PGMeaningLocationMobilityCriteria *)self locationMobilityLabel];
  v4 = [v2 stringWithFormat:@"locationMobilityLabel: %@\n", locationMobilityLabel];

  return v4;
}

- (BOOL)isValid
{
  v11 = *MEMORY[0x277D85DE8];
  locationMobilityType = [(PGMeaningLocationMobilityCriteria *)self locationMobilityType];
  if (!locationMobilityType)
  {
    v4 = +[PGLogging sharedLogging];
    loggingConnection = [v4 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      locationMobilityLabel = [(PGMeaningLocationMobilityCriteria *)self locationMobilityLabel];
      v9 = 138412290;
      v10 = locationMobilityLabel;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid mobility type %@", &v9, 0xCu);
    }
  }

  result = locationMobilityType != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache
{
  nodeCopy = node;
  if ([(PGMeaningLocationMobilityCriteria *)self locationMobilityType])
  {
    locationMobilityType = [nodeCopy locationMobilityType];
    v7 = locationMobilityType == [(PGMeaningLocationMobilityCriteria *)self locationMobilityType];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end