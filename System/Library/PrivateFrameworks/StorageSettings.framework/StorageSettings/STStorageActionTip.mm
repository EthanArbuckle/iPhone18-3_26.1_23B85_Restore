@interface STStorageActionTip
- (Class)detailControllerClass;
- (STStorageActionTip)init;
- (void)setDetailControllerClass:(Class)class;
@end

@implementation STStorageActionTip

- (STStorageActionTip)init
{
  v5.receiver = self;
  v5.super_class = STStorageActionTip;
  v2 = [(STStorageTip *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_282D51E38 target:v2 set:0 get:0 detail:0 cell:2 edit:0];
    [v3 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [(STStorageTip *)v2 setSpecifier:v3];
    [(STStorageTip *)v2 setProperty:@"stActionTip" forKey:@"stTipKind"];
  }

  return v2;
}

- (void)setDetailControllerClass:(Class)class
{
  specifier = [(STStorageTip *)self specifier];
  [specifier setDetailControllerClass:class];
}

- (Class)detailControllerClass
{
  specifier = [(STStorageTip *)self specifier];
  detailControllerClass = [specifier detailControllerClass];

  return detailControllerClass;
}

@end