@interface _SFXPCAsyncIterator
- (_SFXPCAsyncIterator)init;
- (void)xpcCancel;
- (void)xpcNextWithCompletion:(id)completion;
@end

@implementation _SFXPCAsyncIterator

- (void)xpcNextWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1A97E4B74(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)xpcCancel
{
  if (*(&self->super.isa + OBJC_IVAR____SFXPCAsyncIterator_currentTask))
  {
    selfCopy = self;

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