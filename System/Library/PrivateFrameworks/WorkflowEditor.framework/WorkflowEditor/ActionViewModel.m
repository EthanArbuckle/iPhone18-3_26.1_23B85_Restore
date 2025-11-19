@interface ActionViewModel
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)actionIconDidChange:(id)a3;
- (void)actionNameDidChange:(id)a3;
- (void)actionOutputDetailsDidChange:(id)a3;
- (void)actionReloadAuxiliaryButton:(id)a3;
- (void)actionVisibleParametersDidChange:(id)a3;
- (void)favoritesDidChange:(id)a3;
- (void)parameterAttributesDidChange:(id)a3;
- (void)pasteboardDidChange;
- (void)resourcesDidChange:(id)a3;
- (void)updateHomeMigrationRequirement;
@end

@implementation ActionViewModel

- (void)updateHomeMigrationRequirement
{
  v2 = self;
  sub_2745E3764();
}

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  sub_27463B6AC();
  v6 = a3;
  v7 = self;
  sub_2745E4004();
}

- (void)actionIconDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745E42E4();
}

- (void)actionNameDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745E42F4();
}

- (void)actionVisibleParametersDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745E45D8();
}

- (void)actionOutputDetailsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745E4834();
}

- (void)actionReloadAuxiliaryButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745E4840();
}

- (void)parameterAttributesDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745E484C();
}

- (void)resourcesDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745E4B0C();
}

- (void)favoritesDidChange:(id)a3
{
  v4 = sub_274637D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274637CEC();
  v8 = self;
  sub_2745E4D64();

  (*(v5 + 8))(v7, v4);
}

- (void)pasteboardDidChange
{
  v2 = self;
  sub_2745E5020();
}

@end