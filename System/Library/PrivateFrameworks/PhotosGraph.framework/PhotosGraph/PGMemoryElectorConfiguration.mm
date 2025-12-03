@interface PGMemoryElectorConfiguration
+ (id)defaultConfigurationDictionarySource;
- (PGMemoryElectorConfiguration)init;
- (id)futureMemoryCollisionUniversalDateInterval;
- (id)pastMemoryCollisionUniversalDateInterval;
- (unint64_t)targetNumberOfMemoriesWithMemoryContext:(id)context totalNumberOfMemoryNodes:(unint64_t)nodes referenceNumberOfDays:(unint64_t)days;
@end

@implementation PGMemoryElectorConfiguration

+ (id)defaultConfigurationDictionarySource
{
  v12[21] = *MEMORY[0x277D85DE8];
  v11[0] = @"localDate";
  currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
  v12[0] = currentLocalDate;
  v11[1] = @"timeZone";
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v12[1] = systemTimeZone;
  v12[2] = MEMORY[0x277CBEC38];
  v11[2] = @"shouldPersist";
  v11[3] = @"pendingState";
  v12[3] = &unk_284484290;
  v12[4] = &unk_2844842A8;
  v11[4] = @"maximumTargetNumberOfMemories";
  v11[5] = @"minimumTargetNumberOfMemories";
  v4 = MEMORY[0x277CBEC28];
  v12[5] = &unk_2844842C0;
  v12[6] = MEMORY[0x277CBEC28];
  v11[6] = @"useMaximumTargetNumberOfMemories";
  v11[7] = @"maximumNumberOfMemoriesWithGuestAssets";
  v12[7] = &unk_2844842D8;
  v12[8] = &unk_2844871B8;
  v11[8] = @"maximumRatioOfGuestAssets";
  v11[9] = @"numberOfDaysToLookInPast";
  v12[9] = &unk_2844842F0;
  v12[10] = &unk_284484308;
  v11[10] = @"numberOfDaysToLookInFuture";
  v11[11] = @"numberOfDaysToFocusOnNewMemoryTypes";
  v12[11] = &unk_284484320;
  v12[12] = &unk_284484338;
  v11[12] = @"minimumNumberOfDaysBeforeTimeDecay";
  v11[13] = @"minimumNumberOfCuratedAssets";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:13];
  v12[13] = v5;
  v12[14] = MEMORY[0x277CBEBF8];
  v11[14] = @"collidableSuggestions";
  v11[15] = @"skipEnrichment";
  v11[16] = @"requestedMemoryCategory";
  v11[17] = @"requestedTriggerType";
  v12[15] = v4;
  v12[16] = &unk_284484350;
  v12[17] = &unk_284484350;
  v12[18] = &stru_2843F5C58;
  v11[18] = @"requestedUniqueMemoryIdentifier";
  v11[19] = @"moodHistory";
  v12[19] = MEMORY[0x277CBEBF8];
  v11[20] = @"allowGuestAsset";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v12[20] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:21];

  v8 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v7];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (unint64_t)targetNumberOfMemoriesWithMemoryContext:(id)context totalNumberOfMemoryNodes:(unint64_t)nodes referenceNumberOfDays:(unint64_t)days
{
  contextCopy = context;
  v9 = contextCopy;
  maximumTargetNumberOfMemories = self->_maximumTargetNumberOfMemories;
  if (!self->_useMaximumTargetNumberOfMemories)
  {
    v11 = vcvtpd_u64_f64(nodes / days);
    if (maximumTargetNumberOfMemories >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = self->_maximumTargetNumberOfMemories;
    }

    if (maximumTargetNumberOfMemories > v11)
    {
      creationDateOfLastMemory = [contextCopy creationDateOfLastMemory];
      if (creationDateOfLastMemory)
      {
        v14 = [PGMemoryDate alloc];
        localDate = [v9 localDate];
        v16 = [(PGMemoryDate *)v14 initWithLocalDate:localDate];

        timeZone = [v9 timeZone];
        v18 = [(PGMemoryDate *)v16 universalDateInTimeZone:timeZone];
        [v18 timeIntervalSinceDate:creationDateOfLastMemory];
        v20 = v19;

        v21 = (v20 / 86400.0);
        v22 = self->_maximumTargetNumberOfMemories;
        v23 = v22;
        if (v21 < 2 * v22)
        {
          v23 = v12;
          if (v22 <= v21)
          {
            v23 = vcvtpd_u64_f64(vcvtd_n_f64_u64(v22, 1uLL));
          }
        }
      }

      else
      {
        v23 = self->_maximumTargetNumberOfMemories;
      }

      v12 = v23;
    }

    if (v12 <= self->_minimumTargetNumberOfMemories)
    {
      maximumTargetNumberOfMemories = self->_minimumTargetNumberOfMemories;
    }

    else
    {
      maximumTargetNumberOfMemories = v12;
    }
  }

  return maximumTargetNumberOfMemories;
}

- (id)futureMemoryCollisionUniversalDateInterval
{
  v3 = [[PGMemoryDate alloc] initWithLocalDate:self->_localDate];
  v4 = [(PGMemoryDate *)v3 universalDateInTimeZone:self->_timeZone];
  v5 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v4];

  v6 = [MEMORY[0x277D27690] dateByAddingDays:self->_numberOfDaysToLookInFuture toDate:v5];
  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v6];

  return v7;
}

- (id)pastMemoryCollisionUniversalDateInterval
{
  v3 = [[PGMemoryDate alloc] initWithLocalDate:self->_localDate];
  v4 = [(PGMemoryDate *)v3 universalDateInTimeZone:self->_timeZone];
  v5 = [MEMORY[0x277D27690] dateByAddingDays:-self->_numberOfDaysToLookInPast toDate:v4];
  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v4];

  return v6;
}

- (PGMemoryElectorConfiguration)init
{
  v8[1] = *MEMORY[0x277D85DE8];
  defaultConfigurationDictionarySource = [objc_opt_class() defaultConfigurationDictionarySource];
  v8[0] = defaultConfigurationDictionarySource;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [(PGConfiguration *)self initWithSources:v4 version:1.0];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

@end