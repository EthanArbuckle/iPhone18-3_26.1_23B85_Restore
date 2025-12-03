@interface SULockoutViewController
- (SULockoutViewController)init;
- (void)dealloc;
- (void)loadView;
- (void)setLocalizationBundle:(id)bundle;
@end

@implementation SULockoutViewController

- (SULockoutViewController)init
{
  v5.receiver = self;
  v5.super_class = SULockoutViewController;
  v2 = [(SUViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SUViewController *)v2 setTitle:[(NSBundle *)[(SULockoutViewController *)v2 localizationBundle] localizedStringForKey:@"NO_STORE_TITLE" value:&stru_1F41B3660 table:0]];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SULockoutViewController;
  [(SUViewController *)&v3 dealloc];
}

- (void)setLocalizationBundle:(id)bundle
{
  localizationBundle = self->_localizationBundle;
  if (localizationBundle != bundle)
  {

    self->_localizationBundle = bundle;
    v6 = [(NSBundle *)[(SULockoutViewController *)self localizationBundle] localizedStringForKey:@"NO_STORE_TITLE" value:&stru_1F41B3660 table:0];

    [(SUViewController *)self setTitle:v6];
  }
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD418]);
  messageTitle = [(SULockoutViewController *)self messageTitle];
  v5 = [v3 initWithFrame:messageTitle title:0 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setMessage:{-[SULockoutViewController messageBody](self, "messageBody")}];
  [v5 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "whiteColor")}];
  [(SULockoutViewController *)self setView:v5];
}

@end