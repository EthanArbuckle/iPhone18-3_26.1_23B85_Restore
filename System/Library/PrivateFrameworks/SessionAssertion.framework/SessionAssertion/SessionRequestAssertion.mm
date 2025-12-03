@interface SessionRequestAssertion
- (NSArray)sessionIdentifiers;
- (NSString)description;
- (NSString)explanation;
- (SNAAssertionTarget)snaTarget;
- (_TtC16SessionAssertion23SessionRequestAssertion)init;
- (_TtC16SessionAssertion23SessionRequestAssertion)initWithExplanation:(id)explanation target:(id)target invalidateOnSessionRequest:(BOOL)request invalidationHandler:(id)handler;
- (_TtC16SessionAssertion23SessionRequestAssertion)initWithExplanation:(id)explanation target:(id)target options:(id)options invalidationHandler:(id)handler;
- (unint64_t)snaInvalidationReason;
- (unint64_t)snaState;
- (void)invalidate;
- (void)setExplanation:(id)explanation;
@end

@implementation SessionRequestAssertion

- (NSString)description
{
  selfCopy = self;
  sub_265794F7C();

  v3 = sub_26579E494();

  return v3;
}

- (NSString)explanation
{
  v2 = (self + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_explanation);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_26579E494();

  return v5;
}

- (void)setExplanation:(id)explanation
{
  v4 = sub_26579E4A4();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_explanation);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSArray)sessionIdentifiers
{
  selfCopy = self;
  sub_2657957E4();

  v3 = sub_26579E594();

  return v3;
}

- (_TtC16SessionAssertion23SessionRequestAssertion)initWithExplanation:(id)explanation target:(id)target invalidateOnSessionRequest:(BOOL)request invalidationHandler:(id)handler
{
  requestCopy = request;
  v8 = _Block_copy(handler);
  v9 = sub_26579E4A4();
  v11 = v10;
  if (v8)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    v8 = sub_265796B94;
  }

  else
  {
    v12 = 0;
  }

  return SessionRequestAssertion.init(explanation:target:invalidateOnSessionRequest:invalidationHandler:)(v9, v11, target, requestCopy, v8, v12);
}

- (_TtC16SessionAssertion23SessionRequestAssertion)initWithExplanation:(id)explanation target:(id)target options:(id)options invalidationHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = sub_26579E4A4();
  v11 = v10;
  if (v8)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    v8 = sub_265796A78;
  }

  else
  {
    v12 = 0;
  }

  return SessionRequestAssertion.init(explanation:target:options:invalidationHandler:)(v9, v11, target, options, v8, v12);
}

- (void)invalidate
{
  if (*(self + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_attributeAssertion))
  {
    selfCopy = self;

    sub_2657981C8();
  }
}

- (unint64_t)snaInvalidationReason
{
  selfCopy = self;
  v3 = sub_2657962E0();

  return v3;
}

- (unint64_t)snaState
{
  selfCopy = self;
  v3 = sub_2657963E0();

  return v3;
}

- (SNAAssertionTarget)snaTarget
{
  v3 = self + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_target;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = v3[16];
  v7 = objc_allocWithZone(SNAAssertionTarget);
  selfCopy = self;
  sub_265790CE4();
  v9 = sub_26579E494();
  sub_265796744();
  initWithBundleIdentifier_ = [v7 initWithBundleIdentifier_];

  return initWithBundleIdentifier_;
}

- (_TtC16SessionAssertion23SessionRequestAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end