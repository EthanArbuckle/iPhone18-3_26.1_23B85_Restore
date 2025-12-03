@interface STAgeMigrationTipCell
- (STAgeMigrationTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation STAgeMigrationTipCell

- (STAgeMigrationTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v22.receiver = self;
  v22.super_class = STAgeMigrationTipCell;
  specifierCopy = specifier;
  v8 = [(STTableCell *)&v22 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v9 = [specifierCopy objectForKeyedSubscript:{*MEMORY[0x277D3FE10], v22.receiver, v22.super_class}];
  v10 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FF00]];
  userInfo = [specifierCopy userInfo];

  regionU18 = [userInfo regionU18];
  v13 = +[STUILog ageMigrationTip];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [STAgeMigrationTipCell initWithStyle:regionU18 reuseIdentifier:v13 specifier:?];
  }

  v14 = MEMORY[0x277D4BDF0];
  givenName = [userInfo givenName];
  v16 = [v14 createAgeMigrationTipWithAgeOfMajority:regionU18 userFirstName:givenName actionBlock:v9 dismissBlock:v10];

  view = [v16 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(STAgeMigrationTipCell *)v8 contentView];
  [contentView addSubview:view];
  v19 = MEMORY[0x277CCAAD0];
  v20 = [MEMORY[0x277CCAAD0] st_constraintsForView:view equalToView:contentView];
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