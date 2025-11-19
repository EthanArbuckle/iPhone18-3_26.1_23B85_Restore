@interface WFActivityProgressController
- (WFActivityProgressController)initWithTitle:(id)a3;
- (void)dismissWithCompletion:(id)a3;
- (void)presentFrom:(id)a3 cancellationHandler:(id)a4;
- (void)setState:(unint64_t)a3;
@end

@implementation WFActivityProgressController

- (void)setState:(unint64_t)a3
{
  v4 = self;
  sub_274856948(a3);
}

- (WFActivityProgressController)initWithTitle:(id)a3
{
  if (a3)
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

- (void)presentFrom:(id)a3 cancellationHandler:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_274856B28(v8, v6, v7);
  sub_27471F8A4(v6);
}

- (void)dismissWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_2748570F4(v5, v4);
  _Block_release(v4);
}

@end