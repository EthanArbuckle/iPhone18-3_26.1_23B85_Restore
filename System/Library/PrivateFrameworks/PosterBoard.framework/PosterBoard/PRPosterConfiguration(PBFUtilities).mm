@interface PRPosterConfiguration(PBFUtilities)
- (id)pbf_posterProvider;
- (id)pbf_posterUUID;
@end

@implementation PRPosterConfiguration(PBFUtilities)

- (id)pbf_posterUUID
{
  _path = [self _path];
  serverIdentity = [_path serverIdentity];
  posterUUID = [serverIdentity posterUUID];

  return posterUUID;
}

- (id)pbf_posterProvider
{
  _path = [self _path];
  serverIdentity = [_path serverIdentity];
  provider = [serverIdentity provider];

  return provider;
}

@end