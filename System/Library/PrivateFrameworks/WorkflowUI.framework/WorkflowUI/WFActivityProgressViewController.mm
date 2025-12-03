@interface WFActivityProgressViewController
- (WFActivityProgressViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setState:(unint64_t)state;
- (void)viewDidLoad;
@end

@implementation WFActivityProgressViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2748577C4();
}

- (void)setState:(unint64_t)state
{
  selfCopy = self;
  sub_2748579B8(state);
}

- (WFActivityProgressViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_27485827C(v5, v7, bundle);
}

@end