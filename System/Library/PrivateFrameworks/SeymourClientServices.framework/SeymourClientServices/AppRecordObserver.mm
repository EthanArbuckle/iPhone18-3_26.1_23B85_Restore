@interface AppRecordObserver
- (_TtC21SeymourClientServices17AppRecordObserver)init;
- (void)appQuery:(id)query resultsDidChange:(id)change;
@end

@implementation AppRecordObserver

- (_TtC21SeymourClientServices17AppRecordObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)appQuery:(id)query resultsDidChange:(id)change
{
  sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
  v6 = sub_265B77140();
  queryCopy = query;
  selfCopy = self;
  sub_265B634C4(v6);
}

@end