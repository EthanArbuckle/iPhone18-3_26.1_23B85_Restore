@interface ActionViewModel
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
- (void)actionIconDidChange:(id)change;
- (void)actionNameDidChange:(id)change;
- (void)actionOutputDetailsDidChange:(id)change;
- (void)actionReloadAuxiliaryButton:(id)button;
- (void)actionVisibleParametersDidChange:(id)change;
- (void)favoritesDidChange:(id)change;
- (void)parameterAttributesDidChange:(id)change;
- (void)pasteboardDidChange;
- (void)resourcesDidChange:(id)change;
- (void)updateHomeMigrationRequirement;
@end

@implementation ActionViewModel

- (void)updateHomeMigrationRequirement
{
  selfCopy = self;
  sub_2745E3764();
}

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  sub_27463B6AC();
  actionCopy = action;
  selfCopy = self;
  sub_2745E4004();
}

- (void)actionIconDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2745E42E4();
}

- (void)actionNameDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2745E42F4();
}

- (void)actionVisibleParametersDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2745E45D8();
}

- (void)actionOutputDetailsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2745E4834();
}

- (void)actionReloadAuxiliaryButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_2745E4840();
}

- (void)parameterAttributesDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2745E484C();
}

- (void)resourcesDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2745E4B0C();
}

- (void)favoritesDidChange:(id)change
{
  v4 = sub_274637D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274637CEC();
  selfCopy = self;
  sub_2745E4D64();

  (*(v5 + 8))(v7, v4);
}

- (void)pasteboardDidChange
{
  selfCopy = self;
  sub_2745E5020();
}

@end