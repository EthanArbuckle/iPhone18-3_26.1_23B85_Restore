@interface RootSplitViewController
- (BOOL)controllerExistsForIdentifier:(id)a3;
- (BOOL)hasRemoteBarItems;
- (BOOL)isTabbarMode;
- (UINavigationController)currentNavigationController;
- (UIViewController)currentViewController;
- (_TtC8VideosUI23RootSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)controllerForIdentifier:(id)a3;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3;
- (int64_t)preferredDisplayMode;
- (void)_splitViewController:(id)a3 didChangeFromDisplayMode:(int64_t)a4 toDisplayMode:(int64_t)a5;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
- (void)preloadImageViewModelsFromBarItems:(id)a3 completion:(id)a4;
- (void)removeAllChildViewControllers;
- (void)setPreferredDisplayMode:(int64_t)a3;
- (void)setSelectedIndexForIdentifier:(id)a3 withDeeplinkURL:(id)a4;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)updateWithBarItems:(id)a3 setSelectedIdentifierFromDefaults:(BOOL)a4 appContext:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RootSplitViewController

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = OUTLINED_FUNCTION_38();
  v8 = sub_1E3F7DED4(v7);

  return v8;
}

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  sub_1E3F80A30();
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1E3F80C24();
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  OUTLINED_FUNCTION_13_8();
  sub_1E3F80DAC();
}

- (UINavigationController)currentNavigationController
{
  v2 = self;
  v3 = sub_1E408110C();

  return v3;
}

- (UIViewController)currentViewController
{
  v2 = self;
  v3 = sub_1E40811AC();

  return v3;
}

- (int64_t)preferredDisplayMode
{
  v2 = self;
  v3 = sub_1E40819D8();

  return v3;
}

- (void)setPreferredDisplayMode:(int64_t)a3
{
  v4 = self;
  sub_1E4081A60(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E4082870(v4);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E4082BB4(v4);
}

- (_TtC8VideosUI23RootSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E40831E0();
}

- (void)preloadImageViewModelsFromBarItems:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_1E40851B0();
}

- (void)updateWithBarItems:(id)a3 setSelectedIdentifierFromDefaults:(BOOL)a4 appContext:(id)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  sub_1E42062B4();
  v7 = a5;
  v8 = self;
  sub_1E40852C4();
}

- (void)setSelectedIndexForIdentifier:(id)a3 withDeeplinkURL:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  if (!a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = sub_1E41FE414();
    v11 = 1;
    goto LABEL_6;
  }

  sub_1E4205F14();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E41FE3C4();
  v10 = sub_1E41FE414();
  v11 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
  v12 = self;
  OUTLINED_FUNCTION_74();
  sub_1E4085894();

  sub_1E325F748(v9, &unk_1ECF363C0);
}

- (BOOL)controllerExistsForIdentifier:(id)a3
{
  sub_1E4205F14();
  OUTLINED_FUNCTION_145();
  v4 = self;
  OUTLINED_FUNCTION_57();
  v5 = sub_1E4085A3C();

  return v5;
}

- (id)controllerForIdentifier:(id)a3
{
  sub_1E4205F14();
  OUTLINED_FUNCTION_145();
  v4 = self;
  OUTLINED_FUNCTION_57();
  v5 = sub_1E4085AFC();

  return v5;
}

- (BOOL)isTabbarMode
{
  v2 = self;
  v3 = sub_1E4085C44();

  return v3;
}

- (void)removeAllChildViewControllers
{
  v2 = self;
  sub_1E4085CF0();
}

- (BOOL)hasRemoteBarItems
{
  v2 = self;
  v3 = sub_1E4085D98();

  return v3 & 1;
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1E4086180(v7, a4);
}

- (void)_splitViewController:(id)a3 didChangeFromDisplayMode:(int64_t)a4 toDisplayMode:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_1E408648C(v9, a4, a5);
}

@end