@interface RootSplitViewController
- (BOOL)controllerExistsForIdentifier:(id)identifier;
- (BOOL)hasRemoteBarItems;
- (BOOL)isTabbarMode;
- (UINavigationController)currentNavigationController;
- (UIViewController)currentViewController;
- (_TtC8VideosUI23RootSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)controllerForIdentifier:(id)identifier;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (int64_t)preferredDisplayMode;
- (void)_splitViewController:(id)controller didChangeFromDisplayMode:(int64_t)mode toDisplayMode:(int64_t)displayMode;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size;
- (void)preloadImageViewModelsFromBarItems:(id)items completion:(id)completion;
- (void)removeAllChildViewControllers;
- (void)setPreferredDisplayMode:(int64_t)mode;
- (void)setSelectedIndexForIdentifier:(id)identifier withDeeplinkURL:(id)l;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)updateWithBarItems:(id)items setSelectedIdentifierFromDefaults:(BOOL)defaults appContext:(id)context;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RootSplitViewController

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v7 = OUTLINED_FUNCTION_38();
  v8 = sub_1E3F7DED4(v7);

  return v8;
}

- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E3F80A30();
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_1E3F80C24();
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  OUTLINED_FUNCTION_13_8();
  sub_1E3F80DAC();
}

- (UINavigationController)currentNavigationController
{
  selfCopy = self;
  v3 = sub_1E408110C();

  return v3;
}

- (UIViewController)currentViewController
{
  selfCopy = self;
  v3 = sub_1E40811AC();

  return v3;
}

- (int64_t)preferredDisplayMode
{
  selfCopy = self;
  v3 = sub_1E40819D8();

  return v3;
}

- (void)setPreferredDisplayMode:(int64_t)mode
{
  selfCopy = self;
  sub_1E4081A60(mode);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E4082870(v4);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E4082BB4(v4);
}

- (_TtC8VideosUI23RootSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E40831E0();
}

- (void)preloadImageViewModelsFromBarItems:(id)items completion:(id)completion
{
  v5 = _Block_copy(completion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1E40851B0();
}

- (void)updateWithBarItems:(id)items setSelectedIdentifierFromDefaults:(BOOL)defaults appContext:(id)context
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  sub_1E42062B4();
  contextCopy = context;
  selfCopy = self;
  sub_1E40852C4();
}

- (void)setSelectedIndexForIdentifier:(id)identifier withDeeplinkURL:(id)l
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  if (!identifier)
  {
    if (l)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = sub_1E41FE414();
    v11 = 1;
    goto LABEL_6;
  }

  sub_1E4205F14();
  if (!l)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E41FE3C4();
  v10 = sub_1E41FE414();
  v11 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
  selfCopy = self;
  OUTLINED_FUNCTION_74();
  sub_1E4085894();

  sub_1E325F748(v9, &unk_1ECF363C0);
}

- (BOOL)controllerExistsForIdentifier:(id)identifier
{
  sub_1E4205F14();
  OUTLINED_FUNCTION_145();
  selfCopy = self;
  OUTLINED_FUNCTION_57();
  v5 = sub_1E4085A3C();

  return v5;
}

- (id)controllerForIdentifier:(id)identifier
{
  sub_1E4205F14();
  OUTLINED_FUNCTION_145();
  selfCopy = self;
  OUTLINED_FUNCTION_57();
  v5 = sub_1E4085AFC();

  return v5;
}

- (BOOL)isTabbarMode
{
  selfCopy = self;
  v3 = sub_1E4085C44();

  return v3;
}

- (void)removeAllChildViewControllers
{
  selfCopy = self;
  sub_1E4085CF0();
}

- (BOOL)hasRemoteBarItems
{
  selfCopy = self;
  v3 = sub_1E4085D98();

  return v3 & 1;
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E4086180(selfCopy, mode);
}

- (void)_splitViewController:(id)controller didChangeFromDisplayMode:(int64_t)mode toDisplayMode:(int64_t)displayMode
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E408648C(selfCopy, mode, displayMode);
}

@end