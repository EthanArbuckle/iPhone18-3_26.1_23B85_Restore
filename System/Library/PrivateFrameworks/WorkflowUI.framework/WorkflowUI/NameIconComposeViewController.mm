@interface NameIconComposeViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC10WorkflowUI29NameIconComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancel;
- (void)done;
- (void)glyphPicker:(id)picker didSelectGlyphWithCharacter:(unsigned __int16)character;
- (void)keyboardWillChange:(id)change;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)updateIsModalInPresentation;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NameIconComposeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2748C319C();
}

- (void)updateIsModalInPresentation
{
  selfCopy = self;
  sub_2748C3734();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2748C37F8(appear);
}

- (void)keyboardWillChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2748C38E0();
}

- (void)cancel
{
  selfCopy = self;
  sub_2748C4480();
}

- (void)done
{
  selfCopy = self;
  sub_2748C4554();
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_2748C46E4();
}

- (_TtC10WorkflowUI29NameIconComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  NameIconComposeViewController.init(nibName:bundle:)();
}

- (void)glyphPicker:(id)picker didSelectGlyphWithCharacter:(unsigned __int16)character
{
  pickerCopy = picker;
  selfCopy = self;
  NameIconComposeViewController.glyphPicker(_:didSelectGlyphWith:)(selfCopy, character);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  NameIconComposeViewController.textFieldShouldReturn(_:)(returnCopy);

  return 1;
}

@end