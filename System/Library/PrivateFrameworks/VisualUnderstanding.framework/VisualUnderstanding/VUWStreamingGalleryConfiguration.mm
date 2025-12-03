@interface VUWStreamingGalleryConfiguration
- (VUWStreamingGalleryConfiguration)init;
- (VUWStreamingGalleryConfiguration)initWithMaxIdentities:(id)identities maxObservationsPerIdentity:(id)identity minObservationsPerEntity:(id)entity maxKeyObservationsPerEntity:(id)perEntity autoUpdate:(id)update isSteamingEnabled:(id)enabled clusteringThreshold:(id)threshold;
@end

@implementation VUWStreamingGalleryConfiguration

- (VUWStreamingGalleryConfiguration)init
{
  v2 = self + OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration;
  *v2 = vdupq_n_s64(0x64uLL);
  *(v2 + 1) = xmmword_1D22545E0;
  *(v2 + 4) = 5;
  *(v2 + 20) = 0;
  *(v2 + 11) = 0;
  v2[48] = 1;
  v4.receiver = self;
  v4.super_class = VUWStreamingGalleryConfiguration;
  return [(VUWStreamingGalleryConfiguration *)&v4 init];
}

- (VUWStreamingGalleryConfiguration)initWithMaxIdentities:(id)identities maxObservationsPerIdentity:(id)identity minObservationsPerEntity:(id)entity maxKeyObservationsPerEntity:(id)perEntity autoUpdate:(id)update isSteamingEnabled:(id)enabled clusteringThreshold:(id)threshold
{
  identitiesCopy = identities;
  identityCopy = identity;
  entityCopy = entity;
  perEntityCopy = perEntity;
  updateCopy = update;
  enabledCopy = enabled;
  thresholdCopy = threshold;
  v19 = sub_1D21C70F8(identities, identity, entity, update, enabled, threshold);

  return v19;
}

@end