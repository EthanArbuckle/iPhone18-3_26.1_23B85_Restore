@interface PGCountryFeatureExtractor
+ (id)_labelsForVersion:(int64_t)version;
- (PGCountryFeatureExtractor)initWithVersion:(int64_t)version graph:(id)graph error:(id *)error;
@end

@implementation PGCountryFeatureExtractor

- (PGCountryFeatureExtractor)initWithVersion:(int64_t)version graph:(id)graph error:(id *)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() _labelsForVersion:version];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphMomentNode addressOfMoment];
  v16[0] = v8;
  v9 = +[PGGraphAddressNode countryOfAddress];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v11 = [v7 chain:v10];

  v15.receiver = self;
  v15.super_class = PGCountryFeatureExtractor;
  v12 = [(PGGraphFeatureExtractor *)&v15 initWithName:@"Country" featureNames:v6 relation:v11 labelForTargetBlock:&__block_literal_global_43050];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_labelsForVersion:(int64_t)version
{
  if (version == 1)
  {
    return &unk_284486000;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

@end