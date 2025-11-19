@interface PFHEVCProfileInformation
- (NSString)summaryDescription;
@end

@implementation PFHEVCProfileInformation

- (NSString)summaryDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PFHEVCProfileInformation *)self profile];
  v5 = [(PFHEVCProfileInformation *)self tier];
  v6 = [(PFHEVCProfileInformation *)self level];
  [v6 doubleValue];
  v8 = [v3 stringWithFormat:@"%@/%@/%1.1f", v4, v5, v7 / 30.0];

  return v8;
}

@end