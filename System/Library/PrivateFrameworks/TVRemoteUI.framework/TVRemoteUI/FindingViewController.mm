@interface FindingViewController
- (void)dealloc;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didUpdateNearbyObjects:(id)objects;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)sessionDidStartRunning:(id)running;
- (void)sessionSuspensionEnded:(id)ended;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation FindingViewController

- (void)dealloc
{
  selfCopy = self;
  v3 = FindingViewController.findingView.getter();
  FMPFView.tearDown()();

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for FindingViewController();
  [(FindingViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  FindingViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  FindingViewController.viewIsAppearing(_:)(appearing);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  FindingViewController.viewDidDisappear(_:)(disappear);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  selfCopy = self;
  FMFindingSleepPreventer.disableSleepingForAWhileWhileFinding()();
}

- (void)sessionDidStartRunning:(id)running
{
  runningCopy = running;
  selfCopy = self;
  specialized FindingViewController.sessionDidStartRunning(_:)();
}

- (void)session:(id)session didUpdateNearbyObjects:(id)objects
{
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for NINearbyObject);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  selfCopy = self;
  specialized FindingViewController.session(_:didUpdate:)(v6);
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  sessionCopy = session;
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  selfCopy = self;
  specialized FindingViewController.session(_:object:didUpdateRegion:previousRegion:)(region, previousRegion);
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  specialized FindingViewController.session(_:didInvalidateWith:)(errorCopy, "NISession was invalidated (%@)");
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  specialized FindingViewController.session(_:didInvalidateWith:)(errorCopy, "NISession failed with error (%@)");
}

- (void)sessionSuspensionEnded:(id)ended
{
  endedCopy = ended;
  selfCopy = self;
  specialized FindingViewController.sessionSuspensionEnded(_:)();
}

@end