@interface SESecureCaptureSceneViewController
- (LCSExtensionDescribing)extensionProvider;
- (SESecureCaptureSceneViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SESecureCaptureSceneViewController)initWithProvider:(id)a3;
- (SESecureCaptureSceneViewController)initWithProvider:(id)a3 launchActions:(id)a4;
- (SESecureCaptureSceneViewControllerDelegate)delegate;
- (unint64_t)presentationMode;
- (void)dealloc;
- (void)extensionAppProtectionAssistantShouldShieldDidChange:(id)a3;
- (void)invalidate;
- (void)reactivateWithLaunchActions:(id)a3;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)sceneDidInvalidate:(id)a3;
- (void)sceneLayerManagerDidStartTrackingLayers:(id)a3;
- (void)sceneLayerManagerDidStopTrackingLayers:(id)a3;
- (void)sceneLayerManagerDidUpdateLayers:(id)a3;
- (void)setExtensionProvider:(id)a3;
- (void)setPresentationMode:(unint64_t)a3;
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
  v3 = self;
  result = sub_264F13714();
  __break(1u);
  return result;
}

- (void)setPresentationMode:(unint64_t)a3
{
  v5 = self;
  BSDispatchQueueAssertMain();
  if (a3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = a3 == 1;
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

- (void)setExtensionProvider:(id)a3
{
  v5 = OBJC_IVAR___SESecureCaptureSceneViewController_extensionProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (SESecureCaptureSceneViewController)initWithProvider:(id)a3
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

  v6 = [(SESecureCaptureSceneViewController *)self initWithProvider:a3 launchActions:v5];

  swift_unknownObjectRelease();
  return v6;
}

- (SESecureCaptureSceneViewController)initWithProvider:(id)a3 launchActions:(id)a4
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
  v3 = self;
  sub_264F05A8C(sub_264F0E71C, v4);
  v5.receiver = v3;
  v5.super_class = SESecureCaptureSceneViewController;
  [(SESecureCaptureSceneViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  SESecureCaptureSceneViewController.viewDidLoad()();
}

- (void)reactivateWithLaunchActions:(id)a3
{
  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v4 = sub_264F13374();
  v5 = self;
  SESecureCaptureSceneViewController.reactivate(launchActions:)(v4);
}

- (void)invalidate
{
  v2 = self;
  SESecureCaptureSceneViewController.invalidate()();
}

- (SESecureCaptureSceneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  SESecureCaptureSceneViewController.sceneDidActivate(_:)(v4);
}

- (void)sceneDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo34SESecureCaptureSceneViewControllerC06SecureB3KitE18sceneDidInvalidateyySo7FBSceneCF_0();
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  SESecureCaptureSceneViewController.sceneDidDeactivate(_:withError:)(v6, a4);
}

- (void)sceneContentStateDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  SESecureCaptureSceneViewController.sceneContentStateDidChange(_:)(v4);
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v6 = sub_264F13374();
  v7 = a3;
  v8 = self;
  sub_264F0D4B8(v6);
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  _sSo34SESecureCaptureSceneViewControllerC06SecureB3KitE5scene_27didUpdateClientSettingsWith03oldkL017transitionContextySo7FBSceneC_So08FBSScenekL4DiffCSo0rkL0CSo0r10TransitionP0CSgtF_0(v10, v11);
}

- (void)sceneLayerManagerDidUpdateLayers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_264F0E138("[%{public}s] Capture Scene sceneLayerManagerDidUpdateLayers");
}

- (void)sceneLayerManagerDidStopTrackingLayers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_264F0E138("[%{public}s] Capture Scene sceneLayerManagerDidStopTrackingLayers");
}

- (void)sceneLayerManagerDidStartTrackingLayers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_264F0E138("[%{public}s] Capture Scene sceneLayerManagerDidStartTrackingLayers");
}

- (void)extensionAppProtectionAssistantShouldShieldDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo34SESecureCaptureSceneViewControllerC06SecureB3KitE52extensionAppProtectionAssistantShouldShieldDidChangeyySo012LCSExtensionijK0CF_0();
}

@end