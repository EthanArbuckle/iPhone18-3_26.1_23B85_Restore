@interface SCMLPeopleDetectionAttribute
- (NSString)term;
- (_TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute)init;
- (unsigned)gender;
- (void)setGender:(unsigned int)gender;
- (void)setTerm:(id)term;
@end

@implementation SCMLPeopleDetectionAttribute

- (NSString)term
{
  v2 = (self + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_1B8AF0658();

  return v5;
}

- (void)setTerm:(id)term
{
  v4 = sub_1B8AF0668();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (unsigned)gender
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGender:(unsigned int)gender
{
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
  swift_beginAccess();
  *(self + v5) = gender;
}

- (_TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end