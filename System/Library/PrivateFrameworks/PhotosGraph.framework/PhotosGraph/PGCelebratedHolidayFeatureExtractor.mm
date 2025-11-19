@interface PGCelebratedHolidayFeatureExtractor
- (PGCelebratedHolidayFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
- (id)labelsForVersion:(int64_t)a3;
@end

@implementation PGCelebratedHolidayFeatureExtractor

- (id)labelsForVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_2844862B8;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (PGCelebratedHolidayFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v5 = [(PGCelebratedHolidayFeatureExtractor *)self labelsForVersion:a3, a4];
  v6 = +[PGGraphMomentNode celebratedHolidayOfMoment];
  v9.receiver = self;
  v9.super_class = PGCelebratedHolidayFeatureExtractor;
  v7 = [(PGGraphFeatureExtractor *)&v9 initWithName:@"CelebratedHoliday" featureNames:v5 relation:v6 labelForTargetBlock:&__block_literal_global_53260];

  return v7;
}

@end