@interface TTRSetTaskAttributeIntentHandler
- (_TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler)init;
- (void)resolveTaskTitleForSetTaskAttribute:(id)attribute withCompletion:(id)completion;
@end

@implementation TTRSetTaskAttributeIntentHandler

- (void)resolveTaskTitleForSetTaskAttribute:(id)attribute withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  attributeCopy = attribute;
  selfCopy = self;
  sub_261D65EB4(attributeCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end