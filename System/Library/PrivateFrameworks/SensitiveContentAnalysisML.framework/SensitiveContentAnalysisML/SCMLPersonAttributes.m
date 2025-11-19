@interface SCMLPersonAttributes
- (BOOL)hasAge;
- (BOOL)hasEthnicity;
- (BOOL)hasGender;
- (BOOL)hasImplicitCategoryRequiringPersonalization;
- (BOOL)isGroup;
- (BOOL)specific;
- (NSArray)gender;
- (_TtC26SensitiveContentAnalysisML20SCMLPersonAttributes)init;
- (void)setGender:(id)a3;
- (void)setHasAge:(BOOL)a3;
- (void)setHasEthnicity:(BOOL)a3;
- (void)setHasGender:(BOOL)a3;
- (void)setHasImplicitCategoryRequiringPersonalization:(BOOL)a3;
- (void)setIsGroup:(BOOL)a3;
- (void)setSpecific:(BOOL)a3;
@end

@implementation SCMLPersonAttributes

- (BOOL)specific
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSpecific:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isGroup
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsGroup:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hasAge
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasAge:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hasGender
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasGender:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hasEthnicity
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasEthnicity:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSArray)gender
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  if (*(self + v3))
  {
    type metadata accessor for SCMLPeopleDetectionAttribute();

    v4 = sub_1B8AF0808();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setGender:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for SCMLPeopleDetectionAttribute();
    v3 = sub_1B8AF0818();
  }

  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
}

- (BOOL)hasImplicitCategoryRequiringPersonalization
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasImplicitCategoryRequiringPersonalization:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (_TtC26SensitiveContentAnalysisML20SCMLPersonAttributes)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end