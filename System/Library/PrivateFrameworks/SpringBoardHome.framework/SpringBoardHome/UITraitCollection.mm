@interface UITraitCollection
@end

@implementation UITraitCollection

void __81__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconImageAppearance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [objc_opt_class() sbh_updateMutableTraits:v3 withIconImageAppearance:*(a1 + 40)];
}

void __89__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconImageStyleConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_self();
  [v3 setObject:v2 forTrait:v4];
}

{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_self();
  [v3 setObject:v2 forTrait:v4];
}

void __108__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconImageStyleConfiguration_userInterfaceStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [objc_opt_class() sbh_updateMutableTrait:v3 withIconImageStyleConfiguration:*(a1 + 40) userInterfaceStyle:*(a1 + 48)];
}

void __90__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithHomeScreenStyleConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = objc_opt_self();
  [v6 setObject:v3 forTrait:v4];

  v5 = [*(a1 + 32) variant];
  if (v5 <= 3)
  {
    [v6 setUserInterfaceStyle:qword_1BEE85B80[v5]];
  }
}

void __72__UITraitCollection_SpringBoardHome__sbh_traitCollectionWithIconEffect___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_self();
  [v3 setObject:v2 forTrait:v4];
}

@end