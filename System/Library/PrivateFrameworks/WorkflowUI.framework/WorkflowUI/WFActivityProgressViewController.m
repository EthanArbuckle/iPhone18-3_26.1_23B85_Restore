@interface WFActivityProgressViewController
- (WFActivityProgressViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setState:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation WFActivityProgressViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_2748577C4();
}

- (void)setState:(unint64_t)a3
{
  v4 = self;
  sub_2748579B8(a3);
}

- (WFActivityProgressViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_27485827C(v5, v7, a4);
}

@end