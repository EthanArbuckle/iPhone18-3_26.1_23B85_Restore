@interface PresentationAssertion
- (NSString)description;
- (_TtC16SessionAssertion21PresentationAssertion)init;
- (_TtC16SessionAssertion21PresentationAssertion)initWithExplanation:(id)a3 activityIdentifier:(id)a4 presentationState:(unint64_t)a5 invalidationHandler:(id)a6;
- (unint64_t)snaInvalidationReason;
- (unint64_t)snaState;
- (void)invalidate;
@end

@implementation PresentationAssertion

- (NSString)description
{
  v2 = self;
  sub_26578E420();

  v3 = sub_26579E494();

  return v3;
}

- (_TtC16SessionAssertion21PresentationAssertion)initWithExplanation:(id)a3 activityIdentifier:(id)a4 presentationState:(unint64_t)a5 invalidationHandler:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = sub_26579E4A4();
  v10 = v9;
  v11 = sub_26579E4A4();
  v13 = v12;
  if (v7)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    v15 = sub_26578611C;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  return PresentationAssertion.init(explanation:activityIdentifier:presentationState:invalidationHandler:)(v8, v10, v11, v13, a5, v15, v14);
}

- (void)invalidate
{
  if (*(self + OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_attributeAssertion))
  {
    v2 = self;

    sub_2657981C8();
  }
}

- (unint64_t)snaInvalidationReason
{
  v2 = self;
  v3 = sub_26578F190();

  return v3;
}

- (unint64_t)snaState
{
  v2 = self;
  v3 = sub_26578F290();

  return v3;
}

- (_TtC16SessionAssertion21PresentationAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end