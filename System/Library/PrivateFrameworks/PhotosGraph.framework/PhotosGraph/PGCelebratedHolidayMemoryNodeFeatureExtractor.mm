@interface PGCelebratedHolidayMemoryNodeFeatureExtractor
- (PGCelebratedHolidayMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
- (id)labelsForVersion:(int64_t)version;
@end

@implementation PGCelebratedHolidayMemoryNodeFeatureExtractor

- (id)labelsForVersion:(int64_t)version
{
  if (version == 1)
  {
    return &unk_2844862D0;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (PGCelebratedHolidayMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  error = [(PGCelebratedHolidayMemoryNodeFeatureExtractor *)self labelsForVersion:version, error];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphHolidayNode filter];
  relation = [v7 relation];
  v15[0] = relation;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v10 = [v6 chain:v9];

  v14.receiver = self;
  v14.super_class = PGCelebratedHolidayMemoryNodeFeatureExtractor;
  v11 = [(PGGraphMemoryNodeFeatureExtractor *)&v14 initWithName:@"CelebratedHoliday" featureNames:error relation:v10 labelForTargetBlock:&__block_literal_global_569];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end