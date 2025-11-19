@interface FindingViewController
- (void)dealloc;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 didUpdateNearbyObjects:(id)a4;
- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6;
- (void)sessionDidStartRunning:(id)a3;
- (void)sessionSuspensionEnded:(id)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation FindingViewController

- (void)dealloc
{
  v2 = self;
  v3 = FindingViewController.findingView.getter();
  FMPFView.tearDown()();

  v4.receiver = v2;
  v4.super_class = type metadata accessor for FindingViewController();
  [(FindingViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  FindingViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  FindingViewController.viewIsAppearing(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  FindingViewController.viewDidDisappear(_:)(a3);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v4 = self;
  FMFindingSleepPreventer.disableSleepingForAWhileWhileFinding()();
}

- (void)sessionDidStartRunning:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized FindingViewController.sessionDidStartRunning(_:)();
}

- (void)session:(id)a3 didUpdateNearbyObjects:(id)a4
{
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for NINearbyObject);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized FindingViewController.session(_:didUpdate:)(v6);
}

- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  specialized FindingViewController.session(_:object:didUpdateRegion:previousRegion:)(a5, a6);
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  specialized FindingViewController.session(_:didInvalidateWith:)(v8, "NISession was invalidated (%@)");
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  specialized FindingViewController.session(_:didInvalidateWith:)(v8, "NISession failed with error (%@)");
}

- (void)sessionSuspensionEnded:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized FindingViewController.sessionSuspensionEnded(_:)();
}

@end