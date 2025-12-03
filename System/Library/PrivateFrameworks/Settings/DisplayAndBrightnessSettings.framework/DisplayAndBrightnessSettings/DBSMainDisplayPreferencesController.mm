@interface DBSMainDisplayPreferencesController
- (BOOL)proModeSupported;
- (DBSMainDisplayPreferencesController)init;
- (id)specifiers;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentModalMagnifyController;
- (void)updateReferenceDependentUIElements;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DBSMainDisplayPreferencesController

- (DBSMainDisplayPreferencesController)init
{
  v6.receiver = self;
  v6.super_class = DBSMainDisplayPreferencesController;
  v2 = [(DBSMainDisplayPreferencesController *)&v6 init];
  if (v2)
  {
    mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
    v4 = NSStringFromSelector(sel_isReferenceLimited);
    [mainDisplay addObserver:v2 forKeyPath:v4 options:1 context:0];
  }

  return v2;
}

- (void)dealloc
{
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  v4 = NSStringFromSelector(sel_isReferenceLimited);
  [mainDisplay removeObserver:self forKeyPath:v4];

  v5.receiver = self;
  v5.super_class = DBSMainDisplayPreferencesController;
  [(DBSMainDisplayPreferencesController *)&v5 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = DBSMainDisplayPreferencesController;
  [(DBSMainDisplayPreferencesController *)&v5 viewWillAppear:appear];
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
    array = [MEMORY[0x277CBEB18] array];
    v6 = +[DBSBrightnessManager defaultManager];
    mainDisplayBrightnessSpecifiers = [v6 mainDisplayBrightnessSpecifiers];

    [array addObjectsFromArray:mainDisplayBrightnessSpecifiers];
    v8 = objc_opt_new();
    [v8 setDelegate:self];
    specifiers = [v8 specifiers];

    if (specifiers)
    {
      specifiers2 = [v8 specifiers];
      [array addObjectsFromArray:specifiers2];
    }

    [(DBSMainDisplayPreferencesController *)self set_zoomAndProSpecifierVendor:v8];
    v11 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = array;

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
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  availablePresets = [mainDisplay availablePresets];
  v4 = availablePresets != 0;

  return v4;
}

- (void)updateReferenceDependentUIElements
{
  specifiers = [(DBSMainDisplayPreferencesController *)self specifiers];
  v15 = [specifiers specifierForID:@"BRIGHTNESS"];

  specifiers2 = [(DBSMainDisplayPreferencesController *)self specifiers];
  v5 = [specifiers2 specifierForID:@"WHITE_BALANCE"];

  specifiers3 = [(DBSMainDisplayPreferencesController *)self specifiers];
  v7 = [specifiers3 specifierForID:@"ADVANCED"];

  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  isReference = [mainDisplay isReference];

  v10 = *MEMORY[0x277D3FF38];
  if (isReference)
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
  mainDisplay2 = [MEMORY[0x277CD9E40] mainDisplay];
  v14 = [v12 numberWithBool:{objc_msgSend(mainDisplay2, "isReferenceLimited")}];
  [v15 setObject:v14 forKeyedSubscript:@"brightnessLimited"];

  [(DBSMainDisplayPreferencesController *)self reloadSpecifier:v15];
  [(DBSMainDisplayPreferencesController *)self reloadSpecifier:v5];
  if (v7)
  {
    [(DBSMainDisplayPreferencesController *)self reloadSpecifier:v7];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  if ([mainDisplay isEqual:objectCopy])
  {
    specifiers = [(DBSMainDisplayPreferencesController *)self specifiers];
    v15 = [specifiers specifierForID:@"BRIGHTNESS"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mainDisplay, "isReferenceLimited")}];
    [v15 setObject:v16 forKeyedSubscript:@"brightnessLimited"];

    [(DBSMainDisplayPreferencesController *)self reloadSpecifier:v15];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = DBSMainDisplayPreferencesController;
    [(DBSMainDisplayPreferencesController *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

@end