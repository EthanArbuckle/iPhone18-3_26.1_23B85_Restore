@interface SESecureCaptureSceneViewController
- (LCSExtensionDescribing)extensionProvider;
- (SESecureCaptureSceneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SESecureCaptureSceneViewController)initWithProvider:(id)provider;
- (SESecureCaptureSceneViewController)initWithProvider:(id)provider launchActions:(id)actions;
- (SESecureCaptureSceneViewControllerDelegate)delegate;
- (unint64_t)presentationMode;
- (void)dealloc;
- (void)extensionAppProtectionAssistantShouldShieldDidChange:(id)change;
- (void)invalidate;
- (void)reactivateWithLaunchActions:(id)actions;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)sceneLayerManagerDidStartTrackingLayers:(id)layers;
- (void)sceneLayerManagerDidStopTrackingLayers:(id)layers;
- (void)sceneLayerManagerDidUpdateLayers:(id)layers;
- (void)setExtensionProvider:(id)provider;
- (void)setPresentationMode:(unint64_t)mode;
- (void)viewDidLoad;
@end

@implementation SESecureCaptureSceneViewController

- (unint64_t)presentationMode
{
  if (*(self + OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode) < 3u)
  {
    return *(self + OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode);
  }

  v4 = *(self + OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode);
  selfCopy = self;
  result = sub_264F13714();
  __break(1u);
  return result;
}

- (void)setPresentationMode:(unint64_t)mode
{
  selfCopy = self;
  BSDispatchQueueAssertMain();
  if (mode == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = mode == 1;
  }

  sub_264F04BE8(v4, 0);
}

- (SESecureCaptureSceneViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (LCSExtensionDescribing)extensionProvider
{
  v3 = OBJC_IVAR___SESecureCaptureSceneViewController_extensionProvider;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setExtensionProvider:(id)provider
{
  v5 = OBJC_IVAR___SESecureCaptureSceneViewController_extensionProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = provider;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (SESecureCaptureSceneViewController)initWithProvider:(id)provider
{
  if (MEMORY[0x277D84F90] >> 62 && sub_264F13584())
  {
    swift_unknownObjectRetain();
    sub_264F02E9C(MEMORY[0x277D84F90]);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v5 = sub_264F13364();

  v6 = [(SESecureCaptureSceneViewController *)self initWithProvider:provider launchActions:v5];

  swift_unknownObjectRelease();
  return v6;
}

- (SESecureCaptureSceneViewController)initWithProvider:(id)provider launchActions:(id)actions
{
  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v4 = sub_264F13374();
  v5 = swift_unknownObjectRetain();
  v6 = sub_264F0CD10(v5, v4);
  swift_unknownObjectRelease();
  return v6;
}

- (void)dealloc
{
  sub_264F13314();
  v4[2] = self;
  selfCopy = self;
  sub_264F05A8C(sub_264F0E71C, v4);
  v5.receiver = selfCopy;
  v5.super_class = SESecureCaptureSceneViewController;
  [(SESecureCaptureSceneViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  SESecureCaptureSceneViewController.viewDidLoad()();
}

- (void)reactivateWithLaunchActions:(id)actions
{
  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v4 = sub_264F13374();
  selfCopy = self;
  SESecureCaptureSceneViewController.reactivate(launchActions:)(v4);
}

- (void)invalidate
{
  selfCopy = self;
  SESecureCaptureSceneViewController.invalidate()();
}

- (SESecureCaptureSceneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  SESecureCaptureSceneViewController.sceneDidActivate(_:)(activateCopy);
}

- (void)sceneDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  _sSo34SESecureCaptureSceneViewControllerC06SecureB3KitE18sceneDidInvalidateyySo7FBSceneCF_0();
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  SESecureCaptureSceneViewController.sceneDidDeactivate(_:withError:)(deactivateCopy, error);
}

- (void)sceneContentStateDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  SESecureCaptureSceneViewController.sceneContentStateDidChange(_:)(changeCopy);
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v6 = sub_264F13374();
  sceneCopy = scene;
  selfCopy = self;
  sub_264F0D4B8(v6);
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  sceneCopy = scene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  selfCopy = self;
  _sSo34SESecureCaptureSceneViewControllerC06SecureB3KitE5scene_27didUpdateClientSettingsWith03oldkL017transitionContextySo7FBSceneC_So08FBSScenekL4DiffCSo0rkL0CSo0r10TransitionP0CSgtF_0(sceneCopy, diffCopy);
}

- (void)sceneLayerManagerDidUpdateLayers:(id)layers
{
  layersCopy = layers;
  selfCopy = self;
  sub_264F0E138("[%{public}s] Capture Scene sceneLayerManagerDidUpdateLayers");
}

- (void)sceneLayerManagerDidStopTrackingLayers:(id)layers
{
  layersCopy = layers;
  selfCopy = self;
  sub_264F0E138("[%{public}s] Capture Scene sceneLayerManagerDidStopTrackingLayers");
}

- (void)sceneLayerManagerDidStartTrackingLayers:(id)layers
{
  layersCopy = layers;
  selfCopy = self;
  sub_264F0E138("[%{public}s] Capture Scene sceneLayerManagerDidStartTrackingLayers");
}

- (void)extensionAppProtectionAssistantShouldShieldDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  _sSo34SESecureCaptureSceneViewControllerC06SecureB3KitE52extensionAppProtectionAssistantShouldShieldDidChangeyySo012LCSExtensionijK0CF_0();
}

@end