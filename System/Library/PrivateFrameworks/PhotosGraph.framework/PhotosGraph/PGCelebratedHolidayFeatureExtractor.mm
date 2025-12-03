@interface PGCelebratedHolidayFeatureExtractor
- (PGCelebratedHolidayFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
- (id)labelsForVersion:(int64_t)version;
@end

@implementation PGCelebratedHolidayFeatureExtractor

- (id)labelsForVersion:(int64_t)version
{
  if (version == 1)
  {
    return &unk_2844862B8;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (PGCelebratedHolidayFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  error = [(PGCelebratedHolidayFeatureExtractor *)self labelsForVersion:version, error];
  v6 = +[PGGraphMomentNode celebratedHolidayOfMoment];
  v9.receiver = self;
  v9.super_class = PGCelebratedHolidayFeatureExtractor;
  v7 = [(PGGraphFeatureExtractor *)&v9 initWithName:@"CelebratedHoliday" featureNames:error relation:v6 labelForTargetBlock:&__block_literal_global_53260];

  return v7;
}

@end