@interface PGMomentIngestCLIPFeatureVectorExtractor
+ (id)decodeEncodedCLIPFeatureVector:(id)vector withError:(id *)error;
+ (id)encodeCLIPFeatureVector:(id)vector;
- (PGMomentIngestCLIPFeatureVectorExtractor)init;
- (PGMomentIngestCLIPFeatureVectorExtractor)initWithIngestMomentContainer:(id)container;
- (id)extractCLIPFeatureVectorWithError:(id *)error;
@end

@implementation PGMomentIngestCLIPFeatureVectorExtractor

- (PGMomentIngestCLIPFeatureVectorExtractor)initWithIngestMomentContainer:(id)container
{
  *(&self->super.isa + OBJC_IVAR___PGMomentIngestCLIPFeatureVectorExtractor_ingestMomentContainer) = container;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MomentIngestCLIPFeatureVectorExtractor();
  containerCopy = container;
  return [(PGMomentIngestCLIPFeatureVectorExtractor *)&v6 init];
}

- (id)extractCLIPFeatureVectorWithError:(id *)error
{
  selfCopy = self;
  sub_22F3BB638();
  v5 = v4;

  return v5;
}

+ (id)encodeCLIPFeatureVector:(id)vector
{
  vectorCopy = vector;
  _s11PhotosGraph38MomentIngestCLIPFeatureVectorExtractorC6encodeySSSo07MAFloatF0CFZ_0(vectorCopy);

  v4 = sub_22F740DF0();

  return v4;
}

+ (id)decodeEncodedCLIPFeatureVector:(id)vector withError:(id *)error
{
  sub_22F740E20();
  sub_22F3BC0F0();
  v5 = v4;

  return v5;
}

- (PGMomentIngestCLIPFeatureVectorExtractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end