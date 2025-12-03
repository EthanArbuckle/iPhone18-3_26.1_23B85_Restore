@interface AsyncOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (_TtC13appleaccountd14AsyncOperation)init;
- (void)start;
@end

@implementation AsyncOperation

- (BOOL)isExecuting
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state) && *(&self->super.super.isa + OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state) == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v2 & 1;
}

- (BOOL)isFinished
{
  selfCopy = self;
  v3 = sub_100319E38();

  return v3 & 1;
}

- (void)start
{
  selfCopy = self;
  sub_100319F7C();
}

- (_TtC13appleaccountd14AsyncOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end