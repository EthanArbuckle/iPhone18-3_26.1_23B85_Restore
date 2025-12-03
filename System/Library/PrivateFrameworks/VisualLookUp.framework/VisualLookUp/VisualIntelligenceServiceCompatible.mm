@interface VisualIntelligenceServiceCompatible
- (CGSize)targetImageSizeWithInputImageSize:(CGSize)size;
- (_TtC12VisualLookUp23OntologyGraphCompatible)ontologyGraph;
- (_TtC12VisualLookUp35VisualIntelligenceServiceCompatible)initWithOverrideTrialTypes:(id)types namespaces:(id)namespaces factors:(id)factors values:(id)values;
- (id)detectWithImage:(id)image regionOfInterest:(CGRect)interest error:(id *)error;
- (id)encryptedSearchWithImage:(id)image visualUnderstanding:(id)understanding queryContext:(id)context domain:(id)domain completion:(id)completion;
- (id)parseForENRichLabelWithVisualQuery:(id)query cachedResults:(id)results domains:(id)domains completion:(id)completion;
- (id)parseWithVisualQuery:(id)query completion:(id)completion;
- (id)pegasusPayloadDataWithImage:(id)image visualUnderstanding:(id)understanding queryContext:(id)context options:(unint64_t)options error:(id *)error;
- (id)refineRegionsWithRequest:(id)request error:(id *)error;
- (id)searchWithImage:(id)image visualUnderstanding:(id)understanding queryContext:(id)context completion:(id)completion;
- (id)searchWithVisualQuery:(id)query completion:(id)completion;
- (id)submitUserFeedbackWithUserFeedback:(id)feedback completion:(id)completion;
- (void)checkEncryptedSearchProxyEnabledWithAction:(id)action;
@end

@implementation VisualIntelligenceServiceCompatible

- (_TtC12VisualLookUp35VisualIntelligenceServiceCompatible)initWithOverrideTrialTypes:(id)types namespaces:(id)namespaces factors:(id)factors values:(id)values
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

- (CGSize)targetImageSizeWithInputImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;

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

- (id)parseWithVisualQuery:(id)query completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D9BCCBB0;
  *(v8 + 24) = v7;
  queryCopy = query;
  selfCopy = self;

  v11 = VisualIntelligenceService.parse(query:cachedResults:completion:)(queryCopy, 0, sub_1D9BCCE9C, v8);

  return v11;
}

- (id)searchWithImage:(id)image visualUnderstanding:(id)understanding queryContext:(id)context completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  imageCopy = image;
  understandingCopy = understanding;
  contextCopy = context;
  selfCopy = self;
  v16 = sub_1D9BC3DD4(imageCopy, understandingCopy, context, sub_1D9BCCE5C, v11);

  return v16;
}

- (id)encryptedSearchWithImage:(id)image visualUnderstanding:(id)understanding queryContext:(id)context domain:(id)domain completion:(id)completion
{
  v12 = _Block_copy(completion);
  _Block_copy(v12);
  imageCopy = image;
  understandingCopy = understanding;
  contextCopy = context;
  domainCopy = domain;
  selfCopy = self;
  v18 = sub_1D9BCA3C8(imageCopy, understandingCopy, context, domainCopy, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  return v18;
}

- (void)checkEncryptedSearchProxyEnabledWithAction:(id)action
{
  v4 = _Block_copy(action);
  _Block_copy(v4);
  selfCopy = self;
  sub_1D9BCBE80(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)parseForENRichLabelWithVisualQuery:(id)query cachedResults:(id)results domains:(id)domains completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_1D9C7E03C();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = self;
  v12[3] = v10;
  v12[4] = sub_1D9BCC90C;
  v12[5] = v11;
  selfCopy = self;
  queryCopy = query;
  resultsCopy = results;

  v16 = VisualIntelligenceService.parse(query:cachedResults:completion:)(queryCopy, results, sub_1D9BCCE4C, v12);

  return v16;
}

- (id)submitUserFeedbackWithUserFeedback:(id)feedback completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  feedbackCopy = feedback;
  selfCopy = self;
  v9 = sub_1D9BC76D8(feedbackCopy, selfCopy, v6);
  _Block_release(v6);

  return v9;
}

- (id)searchWithVisualQuery:(id)query completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  queryCopy = query;
  selfCopy = self;
  v10 = sub_1D9BC7D54(queryCopy, sub_1D9BCCE5C, v7);

  return v10;
}

- (id)pegasusPayloadDataWithImage:(id)image visualUnderstanding:(id)understanding queryContext:(id)context options:(unint64_t)options error:(id *)error
{
  imageCopy = image;
  understandingCopy = understanding;
  contextCopy = context;
  selfCopy = self;
  v15 = sub_1D9BC8718(imageCopy, understandingCopy, context, options);
  v17 = v16;

  v18 = sub_1D9C7B86C();
  sub_1D99A5748(v15, v17);

  return v18;
}

- (id)detectWithImage:(id)image regionOfInterest:(CGRect)interest error:(id *)error
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D9BC96F0(x, y, width, height);

  swift_unknownObjectRelease();
  sub_1D9A0835C(0, &unk_1ECB54100);
  v11 = sub_1D9C7DF1C();

  return v11;
}

- (id)refineRegionsWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  selfCopy = self;

  v7 = sub_1D9AFF57C(requestCopy);

  return v7;
}

@end