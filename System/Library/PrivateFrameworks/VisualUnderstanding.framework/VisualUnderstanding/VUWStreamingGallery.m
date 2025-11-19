@interface VUWStreamingGallery
- (VUWStreamingGallery)init;
- (VUWStreamingGallery)initWithConfiguration:(id)a3 error:(id *)a4;
- (VUWStreamingGallery)initWithPath:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id)addObservation:(id)a3 tag:(id)a4 error:(id *)a5;
- (id)addObservations:(id)a3 tag:(id)a4 error:(id *)a5;
- (id)recognizeWithObservation:(id)a3 k:(id)a4 confirmedOnly:(BOOL)a5 error:(id *)a6;
- (id)updateWithMaxKeyFacesPerCluster:(id)a3 sortBy:(id)a4 error:(id *)a5;
@end

@implementation VUWStreamingGallery

- (VUWStreamingGallery)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = *(a3 + OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration + 16);
  v11[0] = *(a3 + OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration);
  v11[1] = v6;
  v11[2] = *(a3 + OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration + 32);
  v12 = *(a3 + OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration + 48);
  type metadata accessor for VUStreamingGallery(0);
  swift_allocObject();
  v7 = a3;
  *(&self->super.isa + OBJC_IVAR___VUWStreamingGallery_streamingGallery) = VUStreamingGallery.init(with:)(v11);
  v10.receiver = self;
  v10.super_class = VUWStreamingGallery;
  v8 = [(VUWStreamingGallery *)&v10 init];

  return v8;
}

- (VUWStreamingGallery)initWithPath:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = sub_1D22503FC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225038C();
  return sub_1D21C5744(v8, a4);
}

- (id)addObservation:(id)a3 tag:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1D21C5AB0(v7, a4);

  return v10;
}

- (id)addObservations:(id)a3 tag:(id)a4 error:(id *)a5
{
  type metadata accessor for VUWObservation(self);
  v7 = sub_1D2250AFC();
  v8 = a4;
  v9 = self;
  sub_1D21C5F40(v7, a4);

  sub_1D2174E10(0, &qword_1EDC876F8);
  v10 = sub_1D2250AEC();

  return v10;
}

- (id)updateWithMaxKeyFacesPerCluster:(id)a3 sortBy:(id)a4 error:(id *)a5
{
  v7 = sub_1D2250AFC();
  v8 = a3;
  v9 = self;
  sub_1D21C6424(v8, v7);

  type metadata accessor for VUWClusterResult(v10);
  v11 = sub_1D2250AEC();

  return v11;
}

- (id)recognizeWithObservation:(id)a3 k:(id)a4 confirmedOnly:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1D21C66B8(v9, v10, v6);

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