@interface _SFXPCAsyncIterator
- (_SFXPCAsyncIterator)init;
- (void)xpcCancel;
- (void)xpcNextWithCompletion:(id)a3;
@end

@implementation _SFXPCAsyncIterator

- (void)xpcNextWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1A97E4B74(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)xpcCancel
{
  if (*(&self->super.isa + OBJC_IVAR____SFXPCAsyncIterator_currentTask))
  {
    v2 = self;

    sub_1A9976CB0();
  }
}

- (_SFXPCAsyncIterator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end