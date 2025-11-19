@interface SceneTabBarController
- (BOOL)isTabBarHidden;
- (NSArray)tabBarItems;
- (unint64_t)selectedIndex;
- (void)didEnterBackground:(id)a3;
- (void)setSelectedIndex:(unint64_t)a3;
- (void)setSelectedIndexForTabBarItemIdentifier:(id)a3;
- (void)setSelectedIndexForTabBarItemIdentifier:(id)a3 clearStack:(BOOL)a4;
- (void)setTabBarHidden:(BOOL)a3;
- (void)updateWithTabBarItems:(id)a3 setSelectedIdentifierFromDefaults:(BOOL)a4 appContext:(id)a5;
- (void)willTerminate:(id)a3;
@end

@implementation SceneTabBarController

- (NSArray)tabBarItems
{
  v2 = self;
  sub_1E382807C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  OUTLINED_FUNCTION_19_3();
  v3 = sub_1E42062A4();

  return v3;
}

- (unint64_t)selectedIndex
{
  v2 = self;
  v3 = sub_1E38282DC();

  return v3;
}

- (void)setSelectedIndex:(unint64_t)a3
{
  v4 = self;
  sub_1E382838C(a3);
}

- (BOOL)isTabBarHidden
{
  v2 = self;
  v3 = sub_1E3828468();

  return v3 & 1;
}

- (void)setTabBarHidden:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1E3828518(v3);
}

- (void)setSelectedIndexForTabBarItemIdentifier:(id)a3 clearStack:(BOOL)a4
{
  if (a3)
  {
    v6 = sub_1E4205F14();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  sub_1E38288A8(v6, v8, a4);
}

- (void)setSelectedIndexForTabBarItemIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1E4205F14();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1E3828B54(v4, v6);
}

- (void)updateWithTabBarItems:(id)a3 setSelectedIdentifierFromDefaults:(BOOL)a4 appContext:(id)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  v8 = sub_1E42062B4();
  v9 = a5;
  v10 = self;
  sub_1E3828BD0(v8, a4, a5);
}

- (void)didEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3829F98(0);
}

- (void)willTerminate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3829F98(1);
}

@end