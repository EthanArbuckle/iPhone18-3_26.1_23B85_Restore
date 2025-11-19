@interface WeatherMapViewController
- (BOOL)popoverPresentationControllerShouldDismissPopover:(id)a3;
- (_TtC11WeatherMaps24WeatherMapViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)mapSnapshotViewDidRetrieveSnapshot:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation WeatherMapViewController

- (void)loadView
{
  v2 = self;
  WeatherMapViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  WeatherMapViewController.viewDidLoad()();
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  WeatherMapViewController.willMove(toParent:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  WeatherMapViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  WeatherMapViewController.viewDidLayoutSubviews()();
}

- (_TtC11WeatherMaps24WeatherMapViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_220FC2700();
  }

  v5 = a4;
  WeatherMapViewController.init(nibName:bundle:)();
}

- (void)mapSnapshotViewDidRetrieveSnapshot:(id)a3
{
  v4 = sub_220FBFDC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FBFD90();
  v9 = self;
  sub_220E7E3E4();

  (*(v5 + 8))(v8, v4);
}

- (BOOL)popoverPresentationControllerShouldDismissPopover:(id)a3
{
  v4 = a3;
  v5 = self;
  WeatherMapViewController.popoverPresentationControllerShouldDismissPopover(_:)(v5);

  return 1;
}

@end