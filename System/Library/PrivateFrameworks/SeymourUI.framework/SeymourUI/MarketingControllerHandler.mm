@interface MarketingControllerHandler
- (_TtC9SeymourUI26MarketingControllerHandler)init;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic;
@end

@implementation MarketingControllerHandler

- (_TtC9SeymourUI26MarketingControllerHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  sub_20BDE88F8(controllerCopy, resultCopy);
}

- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic
{
  v8 = sub_20C13C754();
  if (topic)
  {
    v9 = sub_20C13C954();
    topic = v10;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_20BDE9978(v8, v9, topic);
}

@end