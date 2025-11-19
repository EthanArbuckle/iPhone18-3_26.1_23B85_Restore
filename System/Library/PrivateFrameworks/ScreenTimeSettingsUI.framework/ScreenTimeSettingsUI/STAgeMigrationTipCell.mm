@interface STAgeMigrationTipCell
- (STAgeMigrationTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation STAgeMigrationTipCell

- (STAgeMigrationTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v22.receiver = self;
  v22.super_class = STAgeMigrationTipCell;
  v7 = a5;
  v8 = [(STTableCell *)&v22 initWithStyle:a3 reuseIdentifier:a4 specifier:v7];
  v9 = [v7 objectForKeyedSubscript:{*MEMORY[0x277D3FE10], v22.receiver, v22.super_class}];
  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3FF00]];
  v11 = [v7 userInfo];

  v12 = [v11 regionU18];
  v13 = +[STUILog ageMigrationTip];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [STAgeMigrationTipCell initWithStyle:v12 reuseIdentifier:v13 specifier:?];
  }

  v14 = MEMORY[0x277D4BDF0];
  v15 = [v11 givenName];
  v16 = [v14 createAgeMigrationTipWithAgeOfMajority:v12 userFirstName:v15 actionBlock:v9 dismissBlock:v10];

  v17 = [v16 view];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [(STAgeMigrationTipCell *)v8 contentView];
  [v18 addSubview:v17];
  v19 = MEMORY[0x277CCAAD0];
  v20 = [MEMORY[0x277CCAAD0] st_constraintsForView:v17 equalToView:v18];
  [v19 activateConstraints:v20];

  return v8;
}

- (void)initWithStyle:(uint64_t)a1 reuseIdentifier:(NSObject *)a2 specifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_264BA2000, a2, OS_LOG_TYPE_DEBUG, "Displaying %li", &v2, 0xCu);
}

@end