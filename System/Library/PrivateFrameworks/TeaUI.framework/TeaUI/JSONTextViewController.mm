@interface JSONTextViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (UIView)inputAccessoryView;
- (_TtC5TeaUI22JSONTextViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)done;
- (void)nextToken;
- (void)previousToken;
- (void)scrollViewWillBeginDragging:(void *)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willPresentSearchController:(id)a3;
@end

@implementation JSONTextViewController

- (void)scrollViewWillBeginDragging:(void *)a3
{
  v4 = a3;
  v5 = a1;
  JSONTextViewController.willDismissSearchController(_:)(v5);
}

- (void)viewDidLoad
{
  v2 = self;
  JSONTextViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  JSONTextViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  JSONTextViewController.viewWillLayoutSubviews()();
}

- (UIView)inputAccessoryView
{
  v2 = self;
  v3 = JSONTextViewController.inputAccessoryView.getter();

  return v3;
}

- (void)nextToken
{
  v2 = self;
  sub_1D8141FA0(sub_1D81568C0);
}

- (void)previousToken
{
  v2 = self;
  sub_1D8141FA0(sub_1D8156B2C);
}

- (void)done
{
  v2 = self;
  sub_1D80A7F24();
}

- (_TtC5TeaUI22JSONTextViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  JSONTextViewController.init(nibName:bundle:)();
}

- (void)willPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  JSONTextViewController.willPresentSearchController(_:)(v5);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = JSONTextViewController.textFieldShouldReturn(_:)(v5);

  return self & 1;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  JSONTextViewController.updateSearchResults(for:)(v4);
}

@end