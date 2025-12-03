@interface SceneTabBarController
- (BOOL)isTabBarHidden;
- (NSArray)tabBarItems;
- (unint64_t)selectedIndex;
- (void)didEnterBackground:(id)background;
- (void)setSelectedIndex:(unint64_t)index;
- (void)setSelectedIndexForTabBarItemIdentifier:(id)identifier;
- (void)setSelectedIndexForTabBarItemIdentifier:(id)identifier clearStack:(BOOL)stack;
- (void)setTabBarHidden:(BOOL)hidden;
- (void)updateWithTabBarItems:(id)items setSelectedIdentifierFromDefaults:(BOOL)defaults appContext:(id)context;
- (void)willTerminate:(id)terminate;
@end

@implementation SceneTabBarController

- (NSArray)tabBarItems
{
  selfCopy = self;
  sub_1E382807C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  OUTLINED_FUNCTION_19_3();
  v3 = sub_1E42062A4();

  return v3;
}

- (unint64_t)selectedIndex
{
  selfCopy = self;
  v3 = sub_1E38282DC();

  return v3;
}

- (void)setSelectedIndex:(unint64_t)index
{
  selfCopy = self;
  sub_1E382838C(index);
}

- (BOOL)isTabBarHidden
{
  selfCopy = self;
  v3 = sub_1E3828468();

  return v3 & 1;
}

- (void)setTabBarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  selfCopy = self;
  sub_1E3828518(hiddenCopy);
}

- (void)setSelectedIndexForTabBarItemIdentifier:(id)identifier clearStack:(BOOL)stack
{
  if (identifier)
  {
    v6 = sub_1E4205F14();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  sub_1E38288A8(v6, v8, stack);
}

- (void)setSelectedIndexForTabBarItemIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1E4205F14();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1E3828B54(v4, v6);
}

- (void)updateWithTabBarItems:(id)items setSelectedIdentifierFromDefaults:(BOOL)defaults appContext:(id)context
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  v8 = sub_1E42062B4();
  contextCopy = context;
  selfCopy = self;
  sub_1E3828BD0(v8, defaults, context);
}

- (void)didEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1E3829F98(0);
}

- (void)willTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  sub_1E3829F98(1);
}

@end