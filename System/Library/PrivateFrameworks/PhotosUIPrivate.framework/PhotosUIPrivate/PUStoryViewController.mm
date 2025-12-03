@interface PUStoryViewController
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type;
- (BOOL)allowsTransition:(id)transition withEndPoint:(id)point;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isModalInPresentation;
- (BOOL)needs79067616Workaround;
- (BOOL)prefersStatusBarHidden;
- (Class)gridDecorationViewClass;
- (NSString)appIntentsDebugDescription;
- (PUStoryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXStoryExportActivityHelper)exportActivityHelper;
- (PXStoryView)storyView;
- (PXStoryViewControllerDismissalDelegate)dismissalDelegate;
- (PXStoryViewControllerNavigationItemHelper)navigationItemHelper;
- (PXStoryViewControllerShareActionDelegate)shareActionDelegate;
- (PXStoryViewEnvironmentActionDelegate)viewEnvironmentActionDelegate;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIEdgeInsets)px_layoutMargins;
- (id)dismissStoryViewControllerInteractively;
- (id)itemPlacementControllerForItemReference:(id)reference;
- (id)musicFeedbackContextMenuDelegateWithAudioAssetProvidingBlock:(id)block;
- (id)undoManagerForActionPerformer:(id)performer;
- (void)copyInternalURL;
- (void)deleteCurrentChapter;
- (void)deleteMemory;
- (void)didBeginExportWithConfiguration:(id)configuration;
- (void)didEndExportWithConfiguration:(id)configuration;
- (void)didEndTransition:(id)transition withEndPoint:(id)point finished:(BOOL)finished;
- (void)dismissAppleMusicPreview;
- (void)fileRadar;
- (void)fileRadarForErrorRepository:(id)repository;
- (void)loadStoryViewIfNeeded;
- (void)performActionForChromeActionMenuItem:(int64_t)item withValue:(int64_t)value sender:(id)sender presentationSource:(id)source;
- (void)presentAppleMusicPreviewForSelectedSong:(id)song curatedSongs:(id)songs;
- (void)presentAppleMusicSignupWithSender:(id)sender;
- (void)presentAssetPicker;
- (void)presentBrowserGrid;
- (void)presentChapterInsertor;
- (void)presentColorGradeEditor;
- (void)presentMusicEditor;
- (void)presentStyleSwitcher;
- (void)presentTitleEditor;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)provideFeedback;
- (void)removeAssetsFromCuration:(id)curation;
- (void)requestExportConfigurationWithCompletionHandler:(id)handler;
- (void)selectAll:(id)all;
- (void)setActivityItemsConfiguration:(id)configuration;
- (void)setDismissalDelegate:(id)delegate;
- (void)setGridDecorationViewClass:(Class)class;
- (void)setNavigationItemHelper:(id)helper;
- (void)setRemainsActiveWhileApplicationIsHidden:(BOOL)hidden;
- (void)setShareActionDelegate:(id)delegate;
- (void)setStoryView:(id)view;
- (void)setViewEnvironmentActionDelegate:(id)delegate;
- (void)showVisualDiagnostics;
- (void)toggleMuteState;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willBeginTransition:(id)transition withEndPoint:(id)point anchorItemReference:(id)reference;
- (void)willDismissWithoutTransitionToEndPoint:(id)point;
@end

@implementation PUStoryViewController

- (void)loadStoryViewIfNeeded
{
  selfCopy = self;
  sub_1B38511D4();
}

- (PXStoryView)storyView
{
  v2 = sub_1B3851260();

  return v2;
}

- (void)setStoryView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1B38512F8(view);
}

- (void)setRemainsActiveWhileApplicationIsHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_1B3851474(hidden);
}

- (PXStoryViewControllerNavigationItemHelper)navigationItemHelper
{
  v2 = sub_1B3851604();

  return v2;
}

- (void)setNavigationItemHelper:(id)helper
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3851670(helper);
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

- (void)setGridDecorationViewClass:(Class)class
{
  if (class)
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

- (void)setShareActionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B38518D8();
}

- (PXStoryViewControllerDismissalDelegate)dismissalDelegate
{
  v2 = sub_1B38519B0();

  return v2;
}

- (void)setDismissalDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3851A1C();
}

- (PXStoryViewEnvironmentActionDelegate)viewEnvironmentActionDelegate
{
  v2 = sub_1B3851B40();

  return v2;
}

- (void)setViewEnvironmentActionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3851BAC(delegate);
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  selfCopy = self;
  v3 = sub_1B3852174();

  return v3;
}

- (void)setActivityItemsConfiguration:(id)configuration
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3852288(configuration);
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  v3 = sub_1B385230C();

  return v3 & 1;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1B3852A3C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1B38534E4();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1B38534E4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1B38535D8(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1B38538CC(disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3853A74(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1B3853B74();
}

- (BOOL)isModalInPresentation
{
  selfCopy = self;
  v3 = sub_1B38541CC();

  return v3 & 1;
}

- (UIEdgeInsets)px_layoutMargins
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1B385510C();
}

- (void)presentBrowserGrid
{
  selfCopy = self;
  sub_1B385542C();
}

- (void)presentMusicEditor
{
  selfCopy = self;
  sub_1B3855528();
}

- (PXStoryExportActivityHelper)exportActivityHelper
{
  sub_1B372D608();

  return self;
}

- (void)performActionForChromeActionMenuItem:(int64_t)item withValue:(int64_t)value sender:(id)sender presentationSource:(id)source
{
  if (sender)
  {
    swift_unknownObjectRetain();
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    swift_unknownObjectRetain();
    selfCopy2 = self;
  }

  sub_1B3858AEC(item, value);
  swift_unknownObjectRelease();

  sub_1B371B36C(v11, &qword_1EB850170);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  sub_1B3859460();
  v8 = v7;

  sub_1B371B36C(v10, &qword_1EB850170);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1B38596F0(commandCopy);
}

- (void)selectAll:(id)all
{
  if (all)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1B3859A14();

  sub_1B371B36C(v6, &qword_1EB850170);
}

- (void)removeAssetsFromCuration:(id)curation
{
  v4 = sub_1B3C9C988();
  selfCopy = self;
  sub_1B385A2B0(v4);
}

- (void)deleteMemory
{
  selfCopy = self;
  sub_1B385A648();
}

- (id)dismissStoryViewControllerInteractively
{
  selfCopy = self;
  v3 = sub_1B385AE54();

  return v3;
}

- (BOOL)needs79067616Workaround
{
  selfCopy = self;
  v3 = sub_1B385AF10();

  return v3 & 1;
}

- (void)presentAppleMusicPreviewForSelectedSong:(id)song curatedSongs:(id)songs
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B385B120();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)dismissAppleMusicPreview
{
  selfCopy = self;
  sub_1B385C72C();
}

- (void)presentAppleMusicSignupWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1B385C7C0();
}

- (void)fileRadar
{
  selfCopy = self;
  sub_1B385DC1C();
}

- (void)fileRadarForErrorRepository:(id)repository
{
  repositoryCopy = repository;
  selfCopy = self;
  sub_1B385DCD4(repositoryCopy);
}

- (void)provideFeedback
{
  selfCopy = self;
  sub_1B385E298();
}

- (void)copyInternalURL
{
  selfCopy = self;
  sub_1B385E8E8();
}

- (void)showVisualDiagnostics
{
  selfCopy = self;
  sub_1B385F004();
}

- (void)toggleMuteState
{
  selfCopy = self;
  sub_1B385F2A0();
}

- (void)presentTitleEditor
{
  selfCopy = self;
  sub_1B385F3C4();
}

- (void)presentAssetPicker
{
  selfCopy = self;
  sub_1B385F5C0();
}

- (id)musicFeedbackContextMenuDelegateWithAudioAssetProvidingBlock:(id)block
{
  v4 = _Block_copy(block);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  v6 = sub_1B3860124();

  return v6;
}

- (id)itemPlacementControllerForItemReference:(id)reference
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  v5 = sub_1B3860570(v7);

  __swift_destroy_boxed_opaque_existential_0Tm(v7);

  return v5;
}

- (BOOL)allowsTransition:(id)transition withEndPoint:(id)point
{
  transitionCopy = transition;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_1B3860694();

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (void)willBeginTransition:(id)transition withEndPoint:(id)point anchorItemReference:(id)reference
{
  if (reference)
  {
    transitionCopy = transition;
    swift_unknownObjectRetain();
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    transitionCopy2 = transition;
    swift_unknownObjectRetain();
    selfCopy2 = self;
  }

  sub_1B3860798();

  swift_unknownObjectRelease();
  sub_1B371B36C(v11, &qword_1EB850170);
}

- (void)didEndTransition:(id)transition withEndPoint:(id)point finished:(BOOL)finished
{
  transitionCopy = transition;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3860910();

  swift_unknownObjectRelease();
}

- (void)willDismissWithoutTransitionToEndPoint:(id)point
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3860A50();
  swift_unknownObjectRelease();
}

- (void)presentColorGradeEditor
{
  selfCopy = self;
  sub_1B3860CC0();
}

- (void)presentChapterInsertor
{
  selfCopy = self;
  sub_1B3863608();
}

- (void)deleteCurrentChapter
{
  selfCopy = self;
  sub_1B3863E88();
}

- (PUStoryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1B3C9C5E8();
  }

  bundleCopy = bundle;
  StoryViewController.init(nibName:bundle:)();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  StoryViewController.presentationControllerDidDismiss(_:)(dismissCopy);
}

- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type
{
  performerCopy = performer;
  controllerCopy = controller;
  selfCopy = self;
  v10 = StoryViewController.actionPerformer(_:transitionTo:transitionType:)(selfCopy, controllerCopy);

  return v10;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  performerCopy = performer;
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(v8) = StoryViewController.actionPerformer(_:dismiss:completionHandler:)(selfCopy, controllerCopy, sub_1B37568D0, v9);

  return v8 & 1;
}

- (id)undoManagerForActionPerformer:(id)performer
{
  performerCopy = performer;
  selfCopy = self;
  v6 = StoryViewController.undoManager(for:)(selfCopy);

  return v6;
}

- (void)requestExportConfigurationWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  StoryViewController.requestExportConfiguration(completionHandler:)();
}

- (void)didBeginExportWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  StoryViewController.didBeginExport(with:)();
}

- (void)didEndExportWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  StoryViewController.didEndExport(with:)();
}

- (NSString)appIntentsDebugDescription
{
  selfCopy = self;
  StoryViewController.appIntentsDebugDescription.getter();

  v3 = sub_1B3C9C5A8();

  return v3;
}

@end