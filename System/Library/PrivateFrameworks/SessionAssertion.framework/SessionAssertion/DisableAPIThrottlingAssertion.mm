@interface DisableAPIThrottlingAssertion
- (NSString)description;
- (_TtC16SessionAssertion29DisableAPIThrottlingAssertion)init;
- (_TtC16SessionAssertion29DisableAPIThrottlingAssertion)initWithExplanation:(id)explanation activityIdentifier:(id)identifier invalidationHandler:(id)handler;
- (unint64_t)snaInvalidationReason;
- (unint64_t)snaState;
- (void)invalidate;
@end

@implementation DisableAPIThrottlingAssertion

- (NSString)description
{
  selfCopy = self;
  sub_265784E58();

  v3 = sub_26579E494();

  return v3;
}

- (_TtC16SessionAssertion29DisableAPIThrottlingAssertion)initWithExplanation:(id)explanation activityIdentifier:(id)identifier invalidationHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_26579E4A4();
  v8 = v7;
  v9 = sub_26579E4A4();
  v11 = v10;
  if (v5)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    v13 = sub_26578611C;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  return DisableAPIThrottlingAssertion.init(explanation:activityIdentifier:invalidationHandler:)(v6, v8, v9, v11, v13, v12);
}

- (void)invalidate
{
  if (*(self + OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_attributeAssertion))
  {
    selfCopy = self;

    sub_2657981C8();
  }
}

- (unint64_t)snaInvalidationReason
{
  selfCopy = self;
  v3 = sub_2657859A8();

  return v3;
}

- (unint64_t)snaState
{
  selfCopy = self;
  v3 = sub_265785AA8();

  return v3;
}

- (_TtC16SessionAssertion29DisableAPIThrottlingAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end