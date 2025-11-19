@interface PGCelebratedHolidayMemoryNodeFeatureExtractor
- (PGCelebratedHolidayMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
- (id)labelsForVersion:(int64_t)a3;
@end

@implementation PGCelebratedHolidayMemoryNodeFeatureExtractor

- (id)labelsForVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_2844862D0;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (PGCelebratedHolidayMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = [(PGCelebratedHolidayMemoryNodeFeatureExtractor *)self labelsForVersion:a3, a4];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphHolidayNode filter];
  v8 = [v7 relation];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v10 = [v6 chain:v9];

  v14.receiver = self;
  v14.super_class = PGCelebratedHolidayMemoryNodeFeatureExtractor;
  v11 = [(PGGraphMemoryNodeFeatureExtractor *)&v14 initWithName:@"CelebratedHoliday" featureNames:v5 relation:v10 labelForTargetBlock:&__block_literal_global_569];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end