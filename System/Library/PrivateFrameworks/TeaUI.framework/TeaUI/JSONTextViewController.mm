@interface JSONTextViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (UIView)inputAccessoryView;
- (_TtC5TeaUI22JSONTextViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)done;
- (void)nextToken;
- (void)previousToken;
- (void)scrollViewWillBeginDragging:(void *)dragging;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willPresentSearchController:(id)controller;
@end

@implementation JSONTextViewController

- (void)scrollViewWillBeginDragging:(void *)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  JSONTextViewController.willDismissSearchController(_:)(selfCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  JSONTextViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  JSONTextViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  JSONTextViewController.viewWillLayoutSubviews()();
}

- (UIView)inputAccessoryView
{
  selfCopy = self;
  v3 = JSONTextViewController.inputAccessoryView.getter();

  return v3;
}

- (void)nextToken
{
  selfCopy = self;
  sub_1D8141FA0(sub_1D81568C0);
}

- (void)previousToken
{
  selfCopy = self;
  sub_1D8141FA0(sub_1D8156B2C);
}

- (void)done
{
  selfCopy = self;
  sub_1D80A7F24();
}

- (_TtC5TeaUI22JSONTextViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  JSONTextViewController.init(nibName:bundle:)();
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  JSONTextViewController.willPresentSearchController(_:)(selfCopy);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  LOBYTE(self) = JSONTextViewController.textFieldShouldReturn(_:)(selfCopy);

  return self & 1;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  JSONTextViewController.updateSearchResults(for:)(controllerCopy);
}

@end