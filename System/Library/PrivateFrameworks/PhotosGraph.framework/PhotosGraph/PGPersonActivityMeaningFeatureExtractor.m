@interface PGPersonActivityMeaningFeatureExtractor
- (PGPersonActivityMeaningFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
- (id)labelsForVersion:(int64_t)a3;
@end

@implementation PGPersonActivityMeaningFeatureExtractor

- (id)labelsForVersion:(int64_t)a3
{
  v7[12] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v7[0] = @"PersonBeachWater";
    v7[1] = @"PersonToys";
    v7[2] = @"PersonPlayground";
    v7[3] = @"PersonSoccer";
    v7[4] = @"PersonMartialArts";
    v7[5] = @"PersonActionSwimming";
    v7[6] = @"PersonActionPlayingOnASwing";
    v7[7] = @"PersonActionPlayingOnASlide";
    v7[8] = @"PersonActionHugging";
    v7[9] = @"PersonActionKissing";
    v7[10] = @"PersonActionJumpingOrLeaping";
    v7[11] = @"PersonActionRunningOrJogging";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:12];
    v4 = [MEMORY[0x277CBEBF8] arrayByAddingObjectsFromArray:v3];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (PGPersonActivityMeaningFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v5 = [(PGPersonActivityMeaningFeatureExtractor *)self labelsForVersion:a3, a4];
  v6 = +[PGGraphMomentNode personActivityMeaningOfMoment];
  v9.receiver = self;
  v9.super_class = PGPersonActivityMeaningFeatureExtractor;
  v7 = [(PGGraphFeatureExtractor *)&v9 initWithName:@"PersonActivityMeaning" featureNames:v5 relation:v6 labelForTargetBlock:&__block_literal_global_8306];

  return v7;
}

@end