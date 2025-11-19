@interface PGMomentIngestCLIPFeatureVectorExtractor
+ (id)decodeEncodedCLIPFeatureVector:(id)a3 withError:(id *)a4;
+ (id)encodeCLIPFeatureVector:(id)a3;
- (PGMomentIngestCLIPFeatureVectorExtractor)init;
- (PGMomentIngestCLIPFeatureVectorExtractor)initWithIngestMomentContainer:(id)a3;
- (id)extractCLIPFeatureVectorWithError:(id *)a3;
@end

@implementation PGMomentIngestCLIPFeatureVectorExtractor

- (PGMomentIngestCLIPFeatureVectorExtractor)initWithIngestMomentContainer:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___PGMomentIngestCLIPFeatureVectorExtractor_ingestMomentContainer) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MomentIngestCLIPFeatureVectorExtractor();
  v4 = a3;
  return [(PGMomentIngestCLIPFeatureVectorExtractor *)&v6 init];
}

- (id)extractCLIPFeatureVectorWithError:(id *)a3
{
  v3 = self;
  sub_22F3BB638();
  v5 = v4;

  return v5;
}

+ (id)encodeCLIPFeatureVector:(id)a3
{
  v3 = a3;
  _s11PhotosGraph38MomentIngestCLIPFeatureVectorExtractorC6encodeySSSo07MAFloatF0CFZ_0(v3);

  v4 = sub_22F740DF0();

  return v4;
}

+ (id)decodeEncodedCLIPFeatureVector:(id)a3 withError:(id *)a4
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