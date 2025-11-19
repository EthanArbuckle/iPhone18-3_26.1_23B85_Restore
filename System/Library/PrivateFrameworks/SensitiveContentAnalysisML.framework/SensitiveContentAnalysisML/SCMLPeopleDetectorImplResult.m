@interface SCMLPeopleDetectorImplResult
- (NSDictionary)people;
- (_TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult)init;
- (void)setPeople:(id)a3;
@end

@implementation SCMLPeopleDetectorImplResult

- (NSDictionary)people
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for SCMLPersonAttributes();

  v5 = sub_1B8AF0598();

  return v5;
}

- (void)setPeople:(id)a3
{
  type metadata accessor for SCMLPersonAttributes();
  v4 = sub_1B8AF05B8();
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end