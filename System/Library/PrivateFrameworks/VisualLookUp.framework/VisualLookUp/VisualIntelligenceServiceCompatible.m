@interface VisualIntelligenceServiceCompatible
- (CGSize)targetImageSizeWithInputImageSize:(CGSize)a3;
- (_TtC12VisualLookUp23OntologyGraphCompatible)ontologyGraph;
- (_TtC12VisualLookUp35VisualIntelligenceServiceCompatible)initWithOverrideTrialTypes:(id)a3 namespaces:(id)a4 factors:(id)a5 values:(id)a6;
- (id)detectWithImage:(id)a3 regionOfInterest:(CGRect)a4 error:(id *)a5;
- (id)encryptedSearchWithImage:(id)a3 visualUnderstanding:(id)a4 queryContext:(id)a5 domain:(id)a6 completion:(id)a7;
- (id)parseForENRichLabelWithVisualQuery:(id)a3 cachedResults:(id)a4 domains:(id)a5 completion:(id)a6;
- (id)parseWithVisualQuery:(id)a3 completion:(id)a4;
- (id)pegasusPayloadDataWithImage:(id)a3 visualUnderstanding:(id)a4 queryContext:(id)a5 options:(unint64_t)a6 error:(id *)a7;
- (id)refineRegionsWithRequest:(id)a3 error:(id *)a4;
- (id)searchWithImage:(id)a3 visualUnderstanding:(id)a4 queryContext:(id)a5 completion:(id)a6;
- (id)searchWithVisualQuery:(id)a3 completion:(id)a4;
- (id)submitUserFeedbackWithUserFeedback:(id)a3 completion:(id)a4;
- (void)checkEncryptedSearchProxyEnabledWithAction:(id)a3;
@end

@implementation VisualIntelligenceServiceCompatible

- (_TtC12VisualLookUp35VisualIntelligenceServiceCompatible)initWithOverrideTrialTypes:(id)a3 namespaces:(id)a4 factors:(id)a5 values:(id)a6
{
  sub_1D9C7DF2C();
  sub_1D9C7DF2C();
  sub_1D9C7DF2C();
  sub_1D9C7DF2C();
  return VisualIntelligenceServiceCompatible.init(overrideTrialTypes:namespaces:factors:values:)();
}

- (_TtC12VisualLookUp23OntologyGraphCompatible)ontologyGraph
{
  v2 = (*(&self->super.isa + OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service))[4];
  v3 = type metadata accessor for OntologyGraphCompatible();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC12VisualLookUp23OntologyGraphCompatible_ontologyGraph] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = [(VisualIntelligenceServiceCompatible *)&v7 init];

  return v5;
}

- (CGSize)targetImageSizeWithInputImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;

  *&v6 = COERCE_DOUBLE(sub_1D9C1D594(width, height));
  v8 = v7;
  v10 = v9;

  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (id)parseWithVisualQuery:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D9BCCBB0;
  *(v8 + 24) = v7;
  v9 = a3;
  v10 = self;

  v11 = VisualIntelligenceService.parse(query:cachedResults:completion:)(v9, 0, sub_1D9BCCE9C, v8);

  return v11;
}

- (id)searchWithImage:(id)a3 visualUnderstanding:(id)a4 queryContext:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  v16 = sub_1D9BC3DD4(v12, v13, a5, sub_1D9BCCE5C, v11);

  return v16;
}

- (id)encryptedSearchWithImage:(id)a3 visualUnderstanding:(id)a4 queryContext:(id)a5 domain:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  _Block_copy(v12);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = self;
  v18 = sub_1D9BCA3C8(v13, v14, a5, v16, v17, v12);
  _Block_release(v12);
  _Block_release(v12);

  return v18;
}

- (void)checkEncryptedSearchProxyEnabledWithAction:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1D9BCBE80(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)parseForENRichLabelWithVisualQuery:(id)a3 cachedResults:(id)a4 domains:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_1D9C7E03C();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = self;
  v12[3] = v10;
  v12[4] = sub_1D9BCC90C;
  v12[5] = v11;
  v13 = self;
  v14 = a3;
  v15 = a4;

  v16 = VisualIntelligenceService.parse(query:cachedResults:completion:)(v14, a4, sub_1D9BCCE4C, v12);

  return v16;
}

- (id)submitUserFeedbackWithUserFeedback:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  v9 = sub_1D9BC76D8(v7, v8, v6);
  _Block_release(v6);

  return v9;
}

- (id)searchWithVisualQuery:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  v10 = sub_1D9BC7D54(v8, sub_1D9BCCE5C, v7);

  return v10;
}

- (id)pegasusPayloadDataWithImage:(id)a3 visualUnderstanding:(id)a4 queryContext:(id)a5 options:(unint64_t)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  v15 = sub_1D9BC8718(v11, v12, a5, a6);
  v17 = v16;

  v18 = sub_1D9C7B86C();
  sub_1D99A5748(v15, v17);

  return v18;
}

- (id)detectWithImage:(id)a3 regionOfInterest:(CGRect)a4 error:(id *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1D9BC96F0(x, y, width, height);

  swift_unknownObjectRelease();
  sub_1D9A0835C(0, &unk_1ECB54100);
  v11 = sub_1D9C7DF1C();

  return v11;
}

- (id)refineRegionsWithRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;

  v7 = sub_1D9AFF57C(v5);

  return v7;
}

@end