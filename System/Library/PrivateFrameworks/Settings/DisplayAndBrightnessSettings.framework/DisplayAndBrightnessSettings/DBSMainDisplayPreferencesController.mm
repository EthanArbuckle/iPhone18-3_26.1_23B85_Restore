@interface DBSMainDisplayPreferencesController
- (BOOL)proModeSupported;
- (DBSMainDisplayPreferencesController)init;
- (id)specifiers;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentModalMagnifyController;
- (void)updateReferenceDependentUIElements;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DBSMainDisplayPreferencesController

- (DBSMainDisplayPreferencesController)init
{
  v6.receiver = self;
  v6.super_class = DBSMainDisplayPreferencesController;
  v2 = [(DBSMainDisplayPreferencesController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CD9E40] mainDisplay];
    v4 = NSStringFromSelector(sel_isReferenceLimited);
    [v3 addObserver:v2 forKeyPath:v4 options:1 context:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CD9E40] mainDisplay];
  v4 = NSStringFromSelector(sel_isReferenceLimited);
  [v3 removeObserver:self forKeyPath:v4];

  v5.receiver = self;
  v5.super_class = DBSMainDisplayPreferencesController;
  [(DBSMainDisplayPreferencesController *)&v5 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DBSMainDisplayPreferencesController;
  [(DBSMainDisplayPreferencesController *)&v5 viewWillAppear:a3];
  v4 = +[DBSBrightnessManager defaultManager];
  [v4 setDelegate:self];

  [(DBSMainDisplayPreferencesController *)self updateReferenceDependentUIElements];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = +[DBSBrightnessManager defaultManager];
    v7 = [v6 mainDisplayBrightnessSpecifiers];

    [v5 addObjectsFromArray:v7];
    v8 = objc_opt_new();
    [v8 setDelegate:self];
    v9 = [v8 specifiers];

    if (v9)
    {
      v10 = [v8 specifiers];
      [v5 addObjectsFromArray:v10];
    }

    [(DBSMainDisplayPreferencesController *)self set_zoomAndProSpecifierVendor:v8];
    v11 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)presentModalMagnifyController
{
  v7 = objc_alloc_init(MEMORY[0x277D3FAC8]);
  v3 = *MEMORY[0x277D3FD20];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setProperty:v6 forKey:*MEMORY[0x277D400B8]];

  [v7 setSpecifier:*(&self->super.super.super.super.super.isa + v3)];
  [v7 setParentController:self];
  [v7 setupController];
  [v7 setModalPresentationStyle:2];
  [(DBSMainDisplayPreferencesController *)self presentViewController:v7 animated:1 completion:0];
}

- (BOOL)proModeSupported
{
  v2 = [MEMORY[0x277CD9E40] mainDisplay];
  v3 = [v2 availablePresets];
  v4 = v3 != 0;

  return v4;
}

- (void)updateReferenceDependentUIElements
{
  v3 = [(DBSMainDisplayPreferencesController *)self specifiers];
  v15 = [v3 specifierForID:@"BRIGHTNESS"];

  v4 = [(DBSMainDisplayPreferencesController *)self specifiers];
  v5 = [v4 specifierForID:@"WHITE_BALANCE"];

  v6 = [(DBSMainDisplayPreferencesController *)self specifiers];
  v7 = [v6 specifierForID:@"ADVANCED"];

  v8 = [MEMORY[0x277CD9E40] mainDisplay];
  v9 = [v8 isReference];

  v10 = *MEMORY[0x277D3FF38];
  if (v9)
  {
    v11 = MEMORY[0x277CBEC28];
  }

  else
  {
    v11 = MEMORY[0x277CBEC38];
  }

  [v15 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [v5 setObject:v11 forKeyedSubscript:v10];
  v12 = MEMORY[0x277CCABB0];
  v13 = [MEMORY[0x277CD9E40] mainDisplay];
  v14 = [v12 numberWithBool:{objc_msgSend(v13, "isReferenceLimited")}];
  [v15 setObject:v14 forKeyedSubscript:@"brightnessLimited"];

  [(DBSMainDisplayPreferencesController *)self reloadSpecifier:v15];
  [(DBSMainDisplayPreferencesController *)self reloadSpecifier:v5];
  if (v7)
  {
    [(DBSMainDisplayPreferencesController *)self reloadSpecifier:v7];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CD9E40] mainDisplay];
  if ([v13 isEqual:v11])
  {
    v14 = [(DBSMainDisplayPreferencesController *)self specifiers];
    v15 = [v14 specifierForID:@"BRIGHTNESS"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isReferenceLimited")}];
    [v15 setObject:v16 forKeyedSubscript:@"brightnessLimited"];

    [(DBSMainDisplayPreferencesController *)self reloadSpecifier:v15];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = DBSMainDisplayPreferencesController;
    [(DBSMainDisplayPreferencesController *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

@end