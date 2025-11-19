@interface VUWStreamingGalleryConfiguration
- (VUWStreamingGalleryConfiguration)init;
- (VUWStreamingGalleryConfiguration)initWithMaxIdentities:(id)a3 maxObservationsPerIdentity:(id)a4 minObservationsPerEntity:(id)a5 maxKeyObservationsPerEntity:(id)a6 autoUpdate:(id)a7 isSteamingEnabled:(id)a8 clusteringThreshold:(id)a9;
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

- (VUWStreamingGalleryConfiguration)initWithMaxIdentities:(id)a3 maxObservationsPerIdentity:(id)a4 minObservationsPerEntity:(id)a5 maxKeyObservationsPerEntity:(id)a6 autoUpdate:(id)a7 isSteamingEnabled:(id)a8 clusteringThreshold:(id)a9
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = sub_1D21C70F8(a3, a4, a5, a7, a8, a9);

  return v19;
}

@end