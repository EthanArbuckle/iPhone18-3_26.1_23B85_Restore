@interface PBFActivePosterConfigurationFilter
- (BOOL)shouldIncludePosterConfiguration:(id)a3 inSwitcherConfiguration:(id)a4;
@end

@implementation PBFActivePosterConfigurationFilter

- (BOOL)shouldIncludePosterConfiguration:(id)a3 inSwitcherConfiguration:(id)a4
{
  v5 = a4;
  v6 = uuidForPosterConfiguration(a3);
  v7 = [v5 activeConfiguration];

  v8 = uuidForPosterConfiguration(v7);
  v9 = [v6 isEqual:v8];

  return v9;
}

@end