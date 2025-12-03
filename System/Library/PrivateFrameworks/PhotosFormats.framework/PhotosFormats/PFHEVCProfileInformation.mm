@interface PFHEVCProfileInformation
- (NSString)summaryDescription;
@end

@implementation PFHEVCProfileInformation

- (NSString)summaryDescription
{
  v3 = MEMORY[0x1E696AEC0];
  profile = [(PFHEVCProfileInformation *)self profile];
  tier = [(PFHEVCProfileInformation *)self tier];
  level = [(PFHEVCProfileInformation *)self level];
  [level doubleValue];
  v8 = [v3 stringWithFormat:@"%@/%@/%1.1f", profile, tier, v7 / 30.0];

  return v8;
}

@end