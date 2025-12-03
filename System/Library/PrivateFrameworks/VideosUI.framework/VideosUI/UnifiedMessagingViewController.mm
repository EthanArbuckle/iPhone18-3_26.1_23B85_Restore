@interface UnifiedMessagingViewController
- (_TtC8VideosUI30UnifiedMessagingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size;
- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic;
@end

@implementation UnifiedMessagingViewController

- (_TtC8VideosUI30UnifiedMessagingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1E3A7B70C(v5, v7, bundle);
}

- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E3A7B950();
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  sub_1E3A7BB68(controllerCopy, resultCopy);
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_1E3A7C5C8(errorCopy, error);
}

- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic
{
  v8 = sub_1E4205C64();
  if (topic)
  {
    v9 = sub_1E4205F14();
    topic = v10;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1E3A7C7EC(selfCopy, v8, v9, topic);
}

@end