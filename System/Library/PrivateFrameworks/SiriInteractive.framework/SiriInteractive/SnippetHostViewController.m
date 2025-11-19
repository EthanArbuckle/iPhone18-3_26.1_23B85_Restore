@interface SnippetHostViewController
- (NSArray)activityTouchRestrictedRects;
- (NSString)description;
- (_TtC15SiriInteractive12SceneMetrics)resolvedMetrics;
- (_TtC15SiriInteractive19SceneMetricsRequest)systemProvidedMetrics;
- (_TtC15SiriInteractive25SnippetHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP15SiriInteractive33SnippetHostViewControllerDelegate_)delegate;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (void)ensureContentWithTimeout:(double)a3 queue:(id)a4 completion:(id)a5;
- (void)invalidate;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)sceneDidInvalidate:(id)a3;
- (void)sceneLayerManagerDidStartTrackingLayers:(id)a3;
- (void)sceneLayerManagerDidStopTrackingLayers:(id)a3;
- (void)sceneLayerManagerDidUpdateLayers:(id)a3;
- (void)setActivityTouchRestrictedRects:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPresentationMode:(unsigned int)a3;
- (void)setResolvedMetrics:(id)a3;
- (void)setShouldShareTouchesWithHost:(BOOL)a3;
- (void)setSystemProvidedMetrics:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SnippetHostViewController

- (_TtP15SiriInteractive33SnippetHostViewControllerDelegate_)delegate
{
  v2 = sub_267524AF8();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_267524B98();
}

- (void)setPresentationMode:(unsigned int)a3
{
  v4 = self;
  sub_267524EDC(a3);
}

- (_TtC15SiriInteractive12SceneMetrics)resolvedMetrics
{
  v2 = sub_267524FB4();

  return v2;
}

- (void)setResolvedMetrics:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_267525054(a3);
}

- (NSArray)activityTouchRestrictedRects
{
  sub_26752513C();
  type metadata accessor for CGRect(0);
  v2 = sub_267533A44();

  return v2;
}

- (void)setActivityTouchRestrictedRects:(id)a3
{
  type metadata accessor for CGRect(0);
  v4 = sub_267533A54();
  v5 = self;
  sub_2675251EC(v4);
}

- (_TtC15SiriInteractive19SceneMetricsRequest)systemProvidedMetrics
{
  v2 = sub_267525294();

  return v2;
}

- (void)setSystemProvidedMetrics:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26752533C(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2675264C0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_267526660(a3);
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_267526818();

  swift_unknownObjectRelease();
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_2675269B0(a3, a4);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_267526AB0();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_267526C48(a3);
}

- (void)ensureContentWithTimeout:(double)a3 queue:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a4;
  v11 = self;
  sub_267526DE8(v10, sub_267531B94, v9, a3);
}

- (void)invalidate
{
  v2 = self;
  sub_267527CF4();
}

- (NSString)description
{
  v2 = self;
  sub_267527F60();

  v3 = sub_2675339C4();

  return v3;
}

- (void)setShouldShareTouchesWithHost:(BOOL)a3
{
  v4 = self;
  sub_267528828(a3);
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  v2 = self;
  sub_267528958();
  v4 = v3;

  return v4;
}

- (_TtC15SiriInteractive25SnippetHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_2675339D4();
  }

  v5 = a4;
  SnippetHostViewController.init(nibName:bundle:)();
}

- (void)sceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  SnippetHostViewController.sceneDidActivate(_:)();
}

- (void)sceneDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  SnippetHostViewController.sceneDidInvalidate(_:)();
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  SnippetHostViewController.sceneDidDeactivate(_:withError:)(v6, a4);
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  sub_2675103C4(0, &qword_2801C7FC8, 0x277CF0B58);
  sub_2675310A0();
  v6 = sub_267533AE4();
  v7 = a3;
  v8 = self;
  SnippetHostViewController.scene(_:didReceive:)(v8, v6);
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v15 = self;
  SnippetHostViewController.scene(_:didUpdateClientSettingsWith:oldClientSettings:transitionContext:)(v15, v11, v14, a6);
}

- (void)sceneLayerManagerDidUpdateLayers:(id)a3
{
  v4 = a3;
  v5 = self;
  SnippetHostViewController.sceneLayerManagerDidUpdateLayers(_:)();
}

- (void)sceneLayerManagerDidStopTrackingLayers:(id)a3
{
  v4 = a3;
  v5 = self;
  SnippetHostViewController.sceneLayerManagerDidStopTrackingLayers(_:)(v5);
}

- (void)sceneLayerManagerDidStartTrackingLayers:(id)a3
{
  v4 = a3;
  v5 = self;
  SnippetHostViewController.sceneLayerManagerDidStartTrackingLayers(_:)();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  SnippetHostViewController.presentationControllerDidDismiss(_:)(v5);
}

@end