@interface TUIKTSingleAccountViewController
- (TUIKTSingleAccountViewController)initWithOptions:(id)a3;
- (id)specifiers;
- (void)specifierProvider:(id)a3 didFinishLoadingSpecifier:(id)a4;
- (void)specifierProvider:(id)a3 showViewController:(id)a4;
- (void)specifierProvider:(id)a3 willBeginLoadingSpecifier:(id)a4;
- (void)validateDataclassAccessForProvider:(id)a3 specifier:(id)a4 completion:(id)a5;
@end

@implementation TUIKTSingleAccountViewController

- (TUIKTSingleAccountViewController)initWithOptions:(id)a3
{
  v5 = a3;
  v6 = [(TUIKTSingleAccountViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
  }

  return v7;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    accountKeySpecifierProvider = self->_accountKeySpecifierProvider;
    if (!accountKeySpecifierProvider)
    {
      v7 = objc_opt_new();
      v8 = self->_accountKeySpecifierProvider;
      self->_accountKeySpecifierProvider = v7;

      [(TUIAccountKeySpecifierProvider *)self->_accountKeySpecifierProvider setDelegate:self];
      accountKeySpecifierProvider = self->_accountKeySpecifierProvider;
    }

    v9 = [(TUIAccountKeySpecifierProvider *)accountKeySpecifierProvider specifiers];
    [v5 addObjectsFromArray:v9];

    v10 = [v5 copy];
    v11 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v10;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)specifierProvider:(id)a3 showViewController:(id)a4
{
  v7 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(TUIKTSingleAccountViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    [(TUIKTSingleAccountViewController *)self showViewController:v6 sender:v7];
  }
}

- (void)specifierProvider:(id)a3 willBeginLoadingSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_5 != -1)
  {
    [TUIKTSingleAccountViewController specifierProvider:willBeginLoadingSpecifier:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "specifierProvider:willBeginLoadingSpecifier not implemented", v8, 2u);
  }
}

uint64_t __80__TUIKTSingleAccountViewController_specifierProvider_willBeginLoadingSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)specifierProvider:(id)a3 didFinishLoadingSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_5 != -1)
  {
    [TUIKTSingleAccountViewController specifierProvider:didFinishLoadingSpecifier:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "specifierProvider:didFinishLoadingSpecifier not implemented", v8, 2u);
  }
}

uint64_t __80__TUIKTSingleAccountViewController_specifierProvider_didFinishLoadingSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __87__TUIKTSingleAccountViewController_reloadSpecifiersForProvider_oldSpecifiers_animated___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)validateDataclassAccessForProvider:(id)a3 specifier:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_5 != -1)
  {
    [TUIKTSingleAccountViewController validateDataclassAccessForProvider:specifier:completion:];
  }

  v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_DEBUG, "validateDataclassAccessForProvider:specifier:completion not implemented", v11, 2u);
  }
}

uint64_t __92__TUIKTSingleAccountViewController_validateDataclassAccessForProvider_specifier_completion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

@end