@interface VUWStreamingGallery
- (VUWStreamingGallery)init;
- (VUWStreamingGallery)initWithConfiguration:(id)configuration error:(id *)error;
- (VUWStreamingGallery)initWithPath:(id)path configuration:(id)configuration error:(id *)error;
- (id)addObservation:(id)observation tag:(id)tag error:(id *)error;
- (id)addObservations:(id)observations tag:(id)tag error:(id *)error;
- (id)recognizeWithObservation:(id)observation k:(id)k confirmedOnly:(BOOL)only error:(id *)error;
- (id)updateWithMaxKeyFacesPerCluster:(id)cluster sortBy:(id)by error:(id *)error;
@end

@implementation VUWStreamingGallery

- (VUWStreamingGallery)initWithConfiguration:(id)configuration error:(id *)error
{
  v6 = *(configuration + OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration + 16);
  v11[0] = *(configuration + OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration);
  v11[1] = v6;
  v11[2] = *(configuration + OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration + 32);
  v12 = *(configuration + OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration + 48);
  type metadata accessor for VUStreamingGallery(0);
  swift_allocObject();
  configurationCopy = configuration;
  *(&self->super.isa + OBJC_IVAR___VUWStreamingGallery_streamingGallery) = VUStreamingGallery.init(with:)(v11);
  v10.receiver = self;
  v10.super_class = VUWStreamingGallery;
  v8 = [(VUWStreamingGallery *)&v10 init];

  return v8;
}

- (VUWStreamingGallery)initWithPath:(id)path configuration:(id)configuration error:(id *)error
{
  v6 = sub_1D22503FC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225038C();
  return sub_1D21C5744(v8, configuration);
}

- (id)addObservation:(id)observation tag:(id)tag error:(id *)error
{
  observationCopy = observation;
  tagCopy = tag;
  selfCopy = self;
  v10 = sub_1D21C5AB0(observationCopy, tag);

  return v10;
}

- (id)addObservations:(id)observations tag:(id)tag error:(id *)error
{
  type metadata accessor for VUWObservation(self);
  v7 = sub_1D2250AFC();
  tagCopy = tag;
  selfCopy = self;
  sub_1D21C5F40(v7, tag);

  sub_1D2174E10(0, &qword_1EDC876F8);
  v10 = sub_1D2250AEC();

  return v10;
}

- (id)updateWithMaxKeyFacesPerCluster:(id)cluster sortBy:(id)by error:(id *)error
{
  v7 = sub_1D2250AFC();
  clusterCopy = cluster;
  selfCopy = self;
  sub_1D21C6424(clusterCopy, v7);

  type metadata accessor for VUWClusterResult(v10);
  v11 = sub_1D2250AEC();

  return v11;
}

- (id)recognizeWithObservation:(id)observation k:(id)k confirmedOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  observationCopy = observation;
  kCopy = k;
  selfCopy = self;
  sub_1D21C66B8(observationCopy, kCopy, onlyCopy);

  type metadata accessor for VUWRecognition(v12);
  v13 = sub_1D2250AEC();

  return v13;
}

- (VUWStreamingGallery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end