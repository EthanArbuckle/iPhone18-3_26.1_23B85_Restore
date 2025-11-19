@interface PadRootSplitViewController
- (BOOL)controllerExistsForIdentifier:(id)a3;
- (BOOL)hasRemoteBarItems;
- (BOOL)isFloatingTabBarInHierarchy;
- (BOOL)isSidebarEditing;
- (BOOL)isTabbarMode;
- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4;
- (UINavigationController)currentNavigationController;
- (UIViewController)currentViewController;
- (_TtC8VideosUI26PadRootSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8VideosUI26PadRootSplitViewController)initWithTabs:(id)a3;
- (id)controllerForIdentifier:(id)a3;
- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5;
- (void)preloadImageViewModelsFromBarItems:(id)a3 completion:(id)a4;
- (void)removeAllChildViewControllers;
- (void)setSelectedIndexForIdentifier:(id)a3 withDeeplinkURL:(id)a4;
- (void)tabBarController:(id)a3 sidebar:(id)a4 didEndDisplayingTab:(id)a5;
- (void)tabBarController:(id)a3 sidebar:(id)a4 updateItem:(id)a5;
- (void)tabBarController:(id)a3 sidebar:(id)a4 willBeginDisplayingTab:(id)a5;
- (void)tabBarController:(id)a3 sidebarVisibilityWillChange:(id)a4 animator:(id)a5;
- (void)tabBarControllerDidEndEditing:(id)a3;
- (void)tabBarControllerWillBeginEditing:(id)a3;
- (void)updateWithBarItems:(id)a3 setSelectedIdentifierFromDefaults:(BOOL)a4 appContext:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PadRootSplitViewController

- (UINavigationController)currentNavigationController
{
  v2 = self;
  v3 = sub_1E3E0EAD4();

  return v3;
}

- (UIViewController)currentViewController
{
  v2 = self;
  v3 = sub_1E3E0EB74();

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3E11370(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3E11508(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1E3E115E4();
}

- (_TtC8VideosUI26PadRootSplitViewController)initWithTabs:(id)a3
{
  sub_1E3280A90(0, &unk_1ECF39558);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  sub_1E3E11CC8();
}

- (_TtC8VideosUI26PadRootSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3E11D38();
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
  sub_1E3E14684();
}

- (void)updateWithBarItems:(id)a3 setSelectedIdentifierFromDefaults:(BOOL)a4 appContext:(id)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  OUTLINED_FUNCTION_40_3();
  sub_1E42062B4();
  v7 = a5;
  v8 = self;
  sub_1E3E14798();
}

- (void)setSelectedIndexForIdentifier:(id)a3 withDeeplinkURL:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
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
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_59_1();
  sub_1E3E15228();

  sub_1E325F7FC(v9, &unk_1ECF363C0);
}

- (BOOL)controllerExistsForIdentifier:(id)a3
{
  sub_1E4205F14();
  OUTLINED_FUNCTION_145();
  v4 = self;
  OUTLINED_FUNCTION_12_1();
  v5 = sub_1E3E165C4();

  return v5;
}

- (id)controllerForIdentifier:(id)a3
{
  sub_1E4205F14();
  OUTLINED_FUNCTION_145();
  v4 = self;
  OUTLINED_FUNCTION_12_1();
  v5 = sub_1E3E16684();

  return v5;
}

- (BOOL)isTabbarMode
{
  v2 = self;
  v3 = sub_1E3E167D8();

  return v3;
}

- (BOOL)isSidebarEditing
{
  v2 = self;
  v3 = sub_1E3E1687C();

  return v3 & 1;
}

- (BOOL)isFloatingTabBarInHierarchy
{
  v2 = self;
  v3 = sub_1E3E168D4();

  return v3 & 1;
}

- (void)removeAllChildViewControllers
{
  v2 = self;
  sub_1E3E16A58();
}

- (BOOL)hasRemoteBarItems
{
  v2 = self;
  v3 = sub_1E3E16B14();

  return v3 & 1;
}

- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1E3E219C8();
  v10 = v9;

  return v10 & 1;
}

- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  sub_1E3E21FA8();
  v13 = v12;

  return v13;
}

- (void)tabBarController:(id)a3 sidebar:(id)a4 updateItem:(id)a5
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  OUTLINED_FUNCTION_146_7();
  sub_1E3E23030();
}

- (void)tabBarController:(id)a3 sidebarVisibilityWillChange:(id)a4 animator:(id)a5
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = v6;
  sub_1E3E23680();

  swift_unknownObjectRelease();
}

- (void)tabBarController:(id)a3 sidebar:(id)a4 willBeginDisplayingTab:(id)a5
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  OUTLINED_FUNCTION_146_7();
  sub_1E3E23828(v12, v13, v14);
}

- (void)tabBarController:(id)a3 sidebar:(id)a4 didEndDisplayingTab:(id)a5
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  OUTLINED_FUNCTION_146_7();
  sub_1E3E23828(v12, v13, v14);
}

- (void)tabBarControllerWillBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3E23B28(v4, 1);
}

- (void)tabBarControllerDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3E23B28(v4, 0);
}

@end