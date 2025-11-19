@interface PSGMigrationController
+ (BOOL)canHandleURL:(id)a3;
+ (BOOL)isEnabled;
- (PSGMigrationController)init;
- (id)specifiers;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation PSGMigrationController

- (PSGMigrationController)init
{
  v6.receiver = self;
  v6.super_class = PSGMigrationController;
  v2 = [(PSGMigrationController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D28890]);
    presenter = v2->_presenter;
    v2->_presenter = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v28[4] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = PSGMigrationController;
  [(PSGMigrationController *)&v27 viewDidLoad];
  v3 = [(PSGMigrationController *)self table];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = MEMORY[0x277CCAAD0];
  v26 = [(PSGMigrationController *)self table];
  v24 = [v26 leadingAnchor];
  v25 = [(PSGMigrationController *)self view];
  v23 = [v25 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v28[0] = v22;
  v21 = [(PSGMigrationController *)self table];
  v19 = [v21 trailingAnchor];
  v20 = [(PSGMigrationController *)self view];
  v18 = [v20 trailingAnchor];
  v16 = [v19 constraintEqualToAnchor:v18];
  v28[1] = v16;
  v15 = [(PSGMigrationController *)self table];
  v4 = [v15 topAnchor];
  v5 = [(PSGMigrationController *)self view];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v28[2] = v7;
  v8 = [(PSGMigrationController *)self table];
  v9 = [v8 bottomAnchor];
  v10 = [(PSGMigrationController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v28[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v17 activateConstraints:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PSGMigrationController;
  [(PSGMigrationController *)&v5 loadView];
  v3 = [(PSGMigrationController *)self table];
  [v3 setScrollEnabled:0];

  v4 = [(PSGMigrationController *)self table];
  [v4 _setTopPadding:0.0];
}

- (id)specifiers
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D3FAD8]);
    v7 = [MEMORY[0x277D28890] title];
    v8 = [v6 initWithName:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v8 setButtonAction:sel_transferToAndroid];
    v9 = [MEMORY[0x277D28890] identifier];
    [v8 setIdentifier:v9];

    v15[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11 = *(&self->super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.isa + v2) = v10;
    v12 = v10;

    v4 = *(&self->super.super.super.super.super.isa + v2);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)isEnabled
{
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    return 0;
  }

  v3 = MEMORY[0x277D28890];

  return [v3 isEnabled];
}

+ (BOOL)canHandleURL:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D28890] canHandleURL:v3];
  }

  return v4;
}

@end