@interface PRPosterConfiguration(PBFUtilities)
- (id)pbf_posterProvider;
- (id)pbf_posterUUID;
@end

@implementation PRPosterConfiguration(PBFUtilities)

- (id)pbf_posterUUID
{
  v1 = [a1 _path];
  v2 = [v1 serverIdentity];
  v3 = [v2 posterUUID];

  return v3;
}

- (id)pbf_posterProvider
{
  v1 = [a1 _path];
  v2 = [v1 serverIdentity];
  v3 = [v2 provider];

  return v3;
}

@end