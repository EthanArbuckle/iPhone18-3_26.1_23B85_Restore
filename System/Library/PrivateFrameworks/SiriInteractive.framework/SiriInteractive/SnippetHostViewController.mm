@interface SnippetHostViewController
- (NSArray)activityTouchRestrictedRects;
- (NSString)description;
- (_TtC15SiriInteractive12SceneMetrics)resolvedMetrics;
- (_TtC15SiriInteractive19SceneMetricsRequest)systemProvidedMetrics;
- (_TtC15SiriInteractive25SnippetHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP15SiriInteractive33SnippetHostViewControllerDelegate_)delegate;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (void)ensureContentWithTimeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)invalidate;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)sceneLayerManagerDidStartTrackingLayers:(id)layers;
- (void)sceneLayerManagerDidStopTrackingLayers:(id)layers;
- (void)sceneLayerManagerDidUpdateLayers:(id)layers;
- (void)setActivityTouchRestrictedRects:(id)rects;
- (void)setDelegate:(id)delegate;
- (void)setPresentationMode:(unsigned int)mode;
- (void)setResolvedMetrics:(id)metrics;
- (void)setShouldShareTouchesWithHost:(BOOL)host;
- (void)setSystemProvidedMetrics:(id)metrics;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SnippetHostViewController

- (_TtP15SiriInteractive33SnippetHostViewControllerDelegate_)delegate
{
  v2 = sub_267524AF8();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_267524B98();
}

- (void)setPresentationMode:(unsigned int)mode
{
  selfCopy = self;
  sub_267524EDC(mode);
}

- (_TtC15SiriInteractive12SceneMetrics)resolvedMetrics
{
  v2 = sub_267524FB4();

  return v2;
}

- (void)setResolvedMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  sub_267525054(metrics);
}

- (NSArray)activityTouchRestrictedRects
{
  sub_26752513C();
  type metadata accessor for CGRect(0);
  v2 = sub_267533A44();

  return v2;
}

- (void)setActivityTouchRestrictedRects:(id)rects
{
  type metadata accessor for CGRect(0);
  v4 = sub_267533A54();
  selfCopy = self;
  sub_2675251EC(v4);
}

- (_TtC15SiriInteractive19SceneMetricsRequest)systemProvidedMetrics
{
  v2 = sub_267525294();

  return v2;
}

- (void)setSystemProvidedMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  sub_26752533C(metricsCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2675264C0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_267526660(appear);
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_267526818();

  swift_unknownObjectRelease();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  sub_2675269B0(window, disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_267526AB0();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_267526C48(change);
}

- (void)ensureContentWithTimeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  queueCopy = queue;
  selfCopy = self;
  sub_267526DE8(queueCopy, sub_267531B94, v9, timeout);
}

- (void)invalidate
{
  selfCopy = self;
  sub_267527CF4();
}

- (NSString)description
{
  selfCopy = self;
  sub_267527F60();

  v3 = sub_2675339C4();

  return v3;
}

- (void)setShouldShareTouchesWithHost:(BOOL)host
{
  selfCopy = self;
  sub_267528828(host);
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  selfCopy = self;
  sub_267528958();
  v4 = v3;

  return v4;
}

- (_TtC15SiriInteractive25SnippetHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_2675339D4();
  }

  bundleCopy = bundle;
  SnippetHostViewController.init(nibName:bundle:)();
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  SnippetHostViewController.sceneDidActivate(_:)();
}

- (void)sceneDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  SnippetHostViewController.sceneDidInvalidate(_:)();
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  SnippetHostViewController.sceneDidDeactivate(_:withError:)(deactivateCopy, error);
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  sub_2675103C4(0, &qword_2801C7FC8, 0x277CF0B58);
  sub_2675310A0();
  v6 = sub_267533AE4();
  sceneCopy = scene;
  selfCopy = self;
  SnippetHostViewController.scene(_:didReceive:)(selfCopy, v6);
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  sceneCopy = scene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  selfCopy = self;
  SnippetHostViewController.scene(_:didUpdateClientSettingsWith:oldClientSettings:transitionContext:)(selfCopy, diffCopy, v14, context);
}

- (void)sceneLayerManagerDidUpdateLayers:(id)layers
{
  layersCopy = layers;
  selfCopy = self;
  SnippetHostViewController.sceneLayerManagerDidUpdateLayers(_:)();
}

- (void)sceneLayerManagerDidStopTrackingLayers:(id)layers
{
  layersCopy = layers;
  selfCopy = self;
  SnippetHostViewController.sceneLayerManagerDidStopTrackingLayers(_:)(selfCopy);
}

- (void)sceneLayerManagerDidStartTrackingLayers:(id)layers
{
  layersCopy = layers;
  selfCopy = self;
  SnippetHostViewController.sceneLayerManagerDidStartTrackingLayers(_:)();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  SnippetHostViewController.presentationControllerDidDismiss(_:)(selfCopy);
}

@end