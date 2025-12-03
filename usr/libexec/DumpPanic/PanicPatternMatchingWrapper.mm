@interface PanicPatternMatchingWrapper
- (BOOL)lookForKnownPanicWithPanicString:(id)string completion:(id)completion;
- (_TtC9DumpPanic27PanicPatternMatchingWrapper)init;
@end

@implementation PanicPatternMatchingWrapper

- (BOOL)lookForKnownPanicWithPanicString:(id)string completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  LOBYTE(v6) = sub_100002420(v6, v8, selfCopy, v5);
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