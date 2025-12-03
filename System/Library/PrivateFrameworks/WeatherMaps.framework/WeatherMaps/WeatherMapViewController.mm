@interface WeatherMapViewController
- (BOOL)popoverPresentationControllerShouldDismissPopover:(id)popover;
- (_TtC11WeatherMaps24WeatherMapViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)mapSnapshotViewDidRetrieveSnapshot:(id)snapshot;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation WeatherMapViewController

- (void)loadView
{
  selfCopy = self;
  WeatherMapViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  WeatherMapViewController.viewDidLoad()();
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  WeatherMapViewController.willMove(toParent:)(controller);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  WeatherMapViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  WeatherMapViewController.viewDidLayoutSubviews()();
}

- (_TtC11WeatherMaps24WeatherMapViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_220FC2700();
  }

  bundleCopy = bundle;
  WeatherMapViewController.init(nibName:bundle:)();
}

- (void)mapSnapshotViewDidRetrieveSnapshot:(id)snapshot
{
  v4 = sub_220FBFDC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FBFD90();
  selfCopy = self;
  sub_220E7E3E4();

  (*(v5 + 8))(v8, v4);
}

- (BOOL)popoverPresentationControllerShouldDismissPopover:(id)popover
{
  popoverCopy = popover;
  selfCopy = self;
  WeatherMapViewController.popoverPresentationControllerShouldDismissPopover(_:)(selfCopy);

  return 1;
}

@end