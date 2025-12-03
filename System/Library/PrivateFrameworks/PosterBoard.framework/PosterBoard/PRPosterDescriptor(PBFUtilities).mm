@interface PRPosterDescriptor(PBFUtilities)
- (id)pbf_posterProvider;
- (id)pbf_posterUUID;
- (uint64_t)pbf_isInitialPosterDescriptor;
@end

@implementation PRPosterDescriptor(PBFUtilities)

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

- (uint64_t)pbf_isInitialPosterDescriptor
{
  descriptorIdentifier = [self descriptorIdentifier];
  if (descriptorIdentifier)
  {
    pbf_posterProvider = [self pbf_posterProvider];
    if (pbf_posterProvider)
    {
      role = [self role];
      v5 = [MEMORY[0x277D3E958] entryWithExtensionID:pbf_posterProvider descriptorID:descriptorIdentifier];
      v6 = [PBFInitialPosterHelper hostConfigurationForRole:role];
      entries = [v6 entries];
      v8 = [entries containsObject:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end