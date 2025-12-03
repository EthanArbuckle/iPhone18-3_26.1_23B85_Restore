@interface ICSDataclassDetailViewController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_initSpecifiers;
- (void)cleanupDataclassSpecifiers;
- (void)setAccountManager:(id)manager;
- (void)viewDidLoad;
@end

@implementation ICSDataclassDetailViewController

- (void)setAccountManager:(id)manager
{
  v7.receiver = self;
  v7.super_class = ICSDataclassDetailViewController;
  [(ICSDataclassViewController *)&v7 setAccountManager:manager];
  specifier = [(ICSDataclassDetailViewController *)self specifier];
  v5 = [specifier objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
  dataclass = self->_dataclass;
  self->_dataclass = v5;

  [(ICSDataclassDetailViewController *)self _initSpecifiers];
}

- (void)viewDidLoad
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *self;
  title = [a2 title];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = title;
  _os_log_debug_impl(&dword_275819000, a3, OS_LOG_TYPE_DEBUG, "Dataclass (%@) - title (%@)", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initSpecifiers
{
  v3 = [ICSDataclassDetailSpecifierProvider alloc];
  accountManager = [(ICSDataclassViewController *)self accountManager];
  v5 = [(ICSDataclassDetailSpecifierProvider *)v3 initWithAccountManager:accountManager presenter:self];
  specifierProvider = self->_specifierProvider;
  self->_specifierProvider = v5;

  [(ICSDataclassDetailSpecifierProvider *)self->_specifierProvider setDelegate:self];
  dataclass = self->_dataclass;
  v8 = self->_specifierProvider;

  [(ICSDataclassDetailSpecifierProvider *)v8 setDataclass:dataclass];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.super.super.isa + v3))
  {
    specifiers = [(ICSDataclassDetailSpecifierProvider *)self->_specifierProvider specifiers];
    v5 = [specifiers count];

    if (v5)
    {
      v6 = MEMORY[0x277CBEA60];
      specifiers2 = [(ICSDataclassDetailSpecifierProvider *)self->_specifierProvider specifiers];
      v8 = [v6 arrayWithArray:specifiers2];
      v9 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.super.super.super.isa + v3) = v8;
    }
  }

  v10 = *(&self->super.super.super.super.super.super.super.super.isa + v3);

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = ICSDataclassDetailViewController;
  v4 = [(ACUIDataclassConfigurationViewController *)&v11 tableView:view cellForRowAtIndexPath:path];
  specifier = [v4 specifier];
  v6 = [specifier propertyForKey:*MEMORY[0x277D3FEA8]];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = LogSubsystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ICSDataclassDetailViewController tableView:specifier cellForRowAtIndexPath:v8];
    }

    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v9 startAnimating];
    [v4 setAccessoryView:v9];
  }

  return v4;
}

- (void)cleanupDataclassSpecifiers
{
  [(ICSDataclassDetailSpecifierProvider *)self->_specifierProvider setSpecifiers:0];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.super.super.isa + v3) = 0;
}

- (void)tableView:(void *)a1 cellForRowAtIndexPath:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_275819000, a2, OS_LOG_TYPE_DEBUG, "Adding spinner to specifier: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end