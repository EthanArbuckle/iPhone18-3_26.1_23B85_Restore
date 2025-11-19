@interface NameIconComposeViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC10WorkflowUI29NameIconComposeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancel;
- (void)done;
- (void)glyphPicker:(id)a3 didSelectGlyphWithCharacter:(unsigned __int16)a4;
- (void)keyboardWillChange:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)updateIsModalInPresentation;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NameIconComposeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_2748C319C();
}

- (void)updateIsModalInPresentation
{
  v2 = self;
  sub_2748C3734();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2748C37F8(a3);
}

- (void)keyboardWillChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748C38E0();
}

- (void)cancel
{
  v2 = self;
  sub_2748C4480();
}

- (void)done
{
  v2 = self;
  sub_2748C4554();
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748C46E4();
}

- (_TtC10WorkflowUI29NameIconComposeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  NameIconComposeViewController.init(nibName:bundle:)();
}

- (void)glyphPicker:(id)a3 didSelectGlyphWithCharacter:(unsigned __int16)a4
{
  v6 = a3;
  v7 = self;
  NameIconComposeViewController.glyphPicker(_:didSelectGlyphWith:)(v7, a4);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  NameIconComposeViewController.textFieldShouldReturn(_:)(v4);

  return 1;
}

@end