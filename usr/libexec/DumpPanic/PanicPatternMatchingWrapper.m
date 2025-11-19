@interface PanicPatternMatchingWrapper
- (BOOL)lookForKnownPanicWithPanicString:(id)a3 completion:(id)a4;
- (_TtC9DumpPanic27PanicPatternMatchingWrapper)init;
@end

@implementation PanicPatternMatchingWrapper

- (BOOL)lookForKnownPanicWithPanicString:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  LOBYTE(v6) = sub_100002420(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v6 & 1;
}

- (_TtC9DumpPanic27PanicPatternMatchingWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end