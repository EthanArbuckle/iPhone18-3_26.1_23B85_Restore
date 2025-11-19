@interface PUStoryViewController
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5;
- (BOOL)allowsTransition:(id)a3 withEndPoint:(id)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isModalInPresentation;
- (BOOL)needs79067616Workaround;
- (BOOL)prefersStatusBarHidden;
- (Class)gridDecorationViewClass;
- (NSString)appIntentsDebugDescription;
- (PUStoryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXStoryExportActivityHelper)exportActivityHelper;
- (PXStoryView)storyView;
- (PXStoryViewControllerDismissalDelegate)dismissalDelegate;
- (PXStoryViewControllerNavigationItemHelper)navigationItemHelper;
- (PXStoryViewControllerShareActionDelegate)shareActionDelegate;
- (PXStoryViewEnvironmentActionDelegate)viewEnvironmentActionDelegate;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIEdgeInsets)px_layoutMargins;
- (id)dismissStoryViewControllerInteractively;
- (id)itemPlacementControllerForItemReference:(id)a3;
- (id)musicFeedbackContextMenuDelegateWithAudioAssetProvidingBlock:(id)a3;
- (id)undoManagerForActionPerformer:(id)a3;
- (void)copyInternalURL;
- (void)deleteCurrentChapter;
- (void)deleteMemory;
- (void)didBeginExportWithConfiguration:(id)a3;
- (void)didEndExportWithConfiguration:(id)a3;
- (void)didEndTransition:(id)a3 withEndPoint:(id)a4 finished:(BOOL)a5;
- (void)dismissAppleMusicPreview;
- (void)fileRadar;
- (void)fileRadarForErrorRepository:(id)a3;
- (void)loadStoryViewIfNeeded;
- (void)performActionForChromeActionMenuItem:(int64_t)a3 withValue:(int64_t)a4 sender:(id)a5 presentationSource:(id)a6;
- (void)presentAppleMusicPreviewForSelectedSong:(id)a3 curatedSongs:(id)a4;
- (void)presentAppleMusicSignupWithSender:(id)a3;
- (void)presentAssetPicker;
- (void)presentBrowserGrid;
- (void)presentChapterInsertor;
- (void)presentColorGradeEditor;
- (void)presentMusicEditor;
- (void)presentStyleSwitcher;
- (void)presentTitleEditor;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)provideFeedback;
- (void)removeAssetsFromCuration:(id)a3;
- (void)requestExportConfigurationWithCompletionHandler:(id)a3;
- (void)selectAll:(id)a3;
- (void)setActivityItemsConfiguration:(id)a3;
- (void)setDismissalDelegate:(id)a3;
- (void)setGridDecorationViewClass:(Class)a3;
- (void)setNavigationItemHelper:(id)a3;
- (void)setRemainsActiveWhileApplicationIsHidden:(BOOL)a3;
- (void)setShareActionDelegate:(id)a3;
- (void)setStoryView:(id)a3;
- (void)setViewEnvironmentActionDelegate:(id)a3;
- (void)showVisualDiagnostics;
- (void)toggleMuteState;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willBeginTransition:(id)a3 withEndPoint:(id)a4 anchorItemReference:(id)a5;
- (void)willDismissWithoutTransitionToEndPoint:(id)a3;
@end

@implementation PUStoryViewController

- (void)loadStoryViewIfNeeded
{
  v2 = self;
  sub_1B38511D4();
}

- (PXStoryView)storyView
{
  v2 = sub_1B3851260();

  return v2;
}

- (void)setStoryView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B38512F8(a3);
}

- (void)setRemainsActiveWhileApplicationIsHidden:(BOOL)a3
{
  v4 = self;
  sub_1B3851474(a3);
}

- (PXStoryViewControllerNavigationItemHelper)navigationItemHelper
{
  v2 = sub_1B3851604();

  return v2;
}

- (void)setNavigationItemHelper:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B3851670(a3);
}

- (Class)gridDecorationViewClass
{
  result = sub_1B385173C();
  if (result)
  {

    return swift_getObjCClassFromMetadata();
  }

  return result;
}

- (void)setGridDecorationViewClass:(Class)a3
{
  if (a3)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  sub_1B38517A8(ObjCClassMetadata);
}

- (PXStoryViewControllerShareActionDelegate)shareActionDelegate
{
  v2 = sub_1B385186C();

  return v2;
}

- (void)setShareActionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B38518D8();
}

- (PXStoryViewControllerDismissalDelegate)dismissalDelegate
{
  v2 = sub_1B38519B0();

  return v2;
}

- (void)setDismissalDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B3851A1C();
}

- (PXStoryViewEnvironmentActionDelegate)viewEnvironmentActionDelegate
{
  v2 = sub_1B3851B40();

  return v2;
}

- (void)setViewEnvironmentActionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B3851BAC(a3);
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  v2 = self;
  v3 = sub_1B3852174();

  return v3;
}

- (void)setActivityItemsConfiguration:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B3852288(a3);
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = sub_1B385230C();

  return v3 & 1;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1B3852A3C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_1B38534E4();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = self;
  sub_1B38534E4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1B38535D8(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1B38538CC(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1B3853A74(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1B3853B74();
}

- (BOOL)isModalInPresentation
{
  v2 = self;
  v3 = sub_1B38541CC();

  return v3 & 1;
}

- (UIEdgeInsets)px_layoutMargins
{
  v2 = self;
  sub_1B3854454();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)presentStyleSwitcher
{
  v2 = self;
  sub_1B385510C();
}

- (void)presentBrowserGrid
{
  v2 = self;
  sub_1B385542C();
}

- (void)presentMusicEditor
{
  v2 = self;
  sub_1B3855528();
}

- (PXStoryExportActivityHelper)exportActivityHelper
{
  sub_1B372D608();

  return self;
}

- (void)performActionForChromeActionMenuItem:(int64_t)a3 withValue:(int64_t)a4 sender:(id)a5 presentationSource:(id)a6
{
  if (a5)
  {
    swift_unknownObjectRetain();
    v9 = self;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    swift_unknownObjectRetain();
    v10 = self;
  }

  sub_1B3858AEC(a3, a4);
  swift_unknownObjectRelease();

  sub_1B371B36C(v11, &qword_1EB850170);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v5 = self;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v6 = self;
  }

  sub_1B3859460();
  v8 = v7;

  sub_1B371B36C(v10, &qword_1EB850170);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B38596F0(v4);
}

- (void)selectAll:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1B3859A14();

  sub_1B371B36C(v6, &qword_1EB850170);
}

- (void)removeAssetsFromCuration:(id)a3
{
  v4 = sub_1B3C9C988();
  v5 = self;
  sub_1B385A2B0(v4);
}

- (void)deleteMemory
{
  v2 = self;
  sub_1B385A648();
}

- (id)dismissStoryViewControllerInteractively
{
  v2 = self;
  v3 = sub_1B385AE54();

  return v3;
}

- (BOOL)needs79067616Workaround
{
  v2 = self;
  v3 = sub_1B385AF10();

  return v3 & 1;
}

- (void)presentAppleMusicPreviewForSelectedSong:(id)a3 curatedSongs:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B385B120();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)dismissAppleMusicPreview
{
  v2 = self;
  sub_1B385C72C();
}

- (void)presentAppleMusicSignupWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B385C7C0();
}

- (void)fileRadar
{
  v2 = self;
  sub_1B385DC1C();
}

- (void)fileRadarForErrorRepository:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B385DCD4(v4);
}

- (void)provideFeedback
{
  v2 = self;
  sub_1B385E298();
}

- (void)copyInternalURL
{
  v2 = self;
  sub_1B385E8E8();
}

- (void)showVisualDiagnostics
{
  v2 = self;
  sub_1B385F004();
}

- (void)toggleMuteState
{
  v2 = self;
  sub_1B385F2A0();
}

- (void)presentTitleEditor
{
  v2 = self;
  sub_1B385F3C4();
}

- (void)presentAssetPicker
{
  v2 = self;
  sub_1B385F5C0();
}

- (id)musicFeedbackContextMenuDelegateWithAudioAssetProvidingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  v6 = sub_1B3860124();

  return v6;
}

- (id)itemPlacementControllerForItemReference:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  v5 = sub_1B3860570(v7);

  __swift_destroy_boxed_opaque_existential_0Tm(v7);

  return v5;
}

- (BOOL)allowsTransition:(id)a3 withEndPoint:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1B3860694();

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (void)willBeginTransition:(id)a3 withEndPoint:(id)a4 anchorItemReference:(id)a5
{
  if (a5)
  {
    v7 = a3;
    swift_unknownObjectRetain();
    v8 = self;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v9 = a3;
    swift_unknownObjectRetain();
    v10 = self;
  }

  sub_1B3860798();

  swift_unknownObjectRelease();
  sub_1B371B36C(v11, &qword_1EB850170);
}

- (void)didEndTransition:(id)a3 withEndPoint:(id)a4 finished:(BOOL)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1B3860910();

  swift_unknownObjectRelease();
}

- (void)willDismissWithoutTransitionToEndPoint:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B3860A50();
  swift_unknownObjectRelease();
}

- (void)presentColorGradeEditor
{
  v2 = self;
  sub_1B3860CC0();
}

- (void)presentChapterInsertor
{
  v2 = self;
  sub_1B3863608();
}

- (void)deleteCurrentChapter
{
  v2 = self;
  sub_1B3863E88();
}

- (PUStoryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1B3C9C5E8();
  }

  v5 = a4;
  StoryViewController.init(nibName:bundle:)();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  StoryViewController.presentationControllerDidDismiss(_:)(v4);
}

- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = StoryViewController.actionPerformer(_:transitionTo:transitionType:)(v9, v8);

  return v10;
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  LOBYTE(v8) = StoryViewController.actionPerformer(_:dismiss:completionHandler:)(v12, v11, sub_1B37568D0, v9);

  return v8 & 1;
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = StoryViewController.undoManager(for:)(v5);

  return v6;
}

- (void)requestExportConfigurationWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  StoryViewController.requestExportConfiguration(completionHandler:)();
}

- (void)didBeginExportWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  StoryViewController.didBeginExport(with:)();
}

- (void)didEndExportWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  StoryViewController.didEndExport(with:)();
}

- (NSString)appIntentsDebugDescription
{
  v2 = self;
  StoryViewController.appIntentsDebugDescription.getter();

  v3 = sub_1B3C9C5A8();

  return v3;
}

@end