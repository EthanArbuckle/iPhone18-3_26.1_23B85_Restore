@interface WFActivityProgressController
- (WFActivityProgressController)initWithTitle:(id)title;
- (void)dismissWithCompletion:(id)completion;
- (void)presentFrom:(id)from cancellationHandler:(id)handler;
- (void)setState:(unint64_t)state;
@end

@implementation WFActivityProgressController

- (void)setState:(unint64_t)state
{
  selfCopy = self;
  sub_274856948(state);
}

- (WFActivityProgressController)initWithTitle:(id)title
{
  if (title)
  {
    v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return ActivityProgressController.init(title:)(v3, v4);
}

- (void)presentFrom:(id)from cancellationHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_274858638;
  }

  else
  {
    v7 = 0;
  }

  fromCopy = from;
  selfCopy = self;
  sub_274856B28(fromCopy, v6, v7);
  sub_27471F8A4(v6);
}

- (void)dismissWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_2748570F4(selfCopy, v4);
  _Block_release(v4);
}

@end