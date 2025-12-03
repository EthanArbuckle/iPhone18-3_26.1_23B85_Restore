@interface SCMLPersonAttributes
- (BOOL)hasAge;
- (BOOL)hasEthnicity;
- (BOOL)hasGender;
- (BOOL)hasImplicitCategoryRequiringPersonalization;
- (BOOL)isGroup;
- (BOOL)specific;
- (NSArray)gender;
- (_TtC26SensitiveContentAnalysisML20SCMLPersonAttributes)init;
- (void)setGender:(id)gender;
- (void)setHasAge:(BOOL)age;
- (void)setHasEthnicity:(BOOL)ethnicity;
- (void)setHasGender:(BOOL)gender;
- (void)setHasImplicitCategoryRequiringPersonalization:(BOOL)personalization;
- (void)setIsGroup:(BOOL)group;
- (void)setSpecific:(BOOL)specific;
@end

@implementation SCMLPersonAttributes

- (BOOL)specific
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSpecific:(BOOL)specific
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  *(self + v5) = specific;
}

- (BOOL)isGroup
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsGroup:(BOOL)group
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  *(self + v5) = group;
}

- (BOOL)hasAge
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasAge:(BOOL)age
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  *(self + v5) = age;
}

- (BOOL)hasGender
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasGender:(BOOL)gender
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  *(self + v5) = gender;
}

- (BOOL)hasEthnicity
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasEthnicity:(BOOL)ethnicity
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  *(self + v5) = ethnicity;
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

- (void)setGender:(id)gender
{
  genderCopy = gender;
  if (gender)
  {
    type metadata accessor for SCMLPeopleDetectionAttribute();
    genderCopy = sub_1B8AF0818();
  }

  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = genderCopy;
}

- (BOOL)hasImplicitCategoryRequiringPersonalization
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasImplicitCategoryRequiringPersonalization:(BOOL)personalization
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  *(self + v5) = personalization;
}

- (_TtC26SensitiveContentAnalysisML20SCMLPersonAttributes)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end