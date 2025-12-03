@interface SUNetworkLockoutViewController
- (SUNetworkLockoutViewController)init;
- (void)_reloadUserInterface;
- (void)loadView;
- (void)setLocalizationBundle:(id)bundle;
- (void)setSection:(id)section;
@end

@implementation SUNetworkLockoutViewController

- (SUNetworkLockoutViewController)init
{
  [(SUNetworkLockoutViewController *)self setSection:0];
  v4.receiver = self;
  v4.super_class = SUNetworkLockoutViewController;
  return [(SULockoutViewController *)&v4 init];
}

- (void)setLocalizationBundle:(id)bundle
{
  v4.receiver = self;
  v4.super_class = SUNetworkLockoutViewController;
  [(SULockoutViewController *)&v4 setLocalizationBundle:bundle];
  [(SUNetworkLockoutViewController *)self _reloadUserInterface];
}

- (void)setSection:(id)section
{
  v4.receiver = self;
  v4.super_class = SUNetworkLockoutViewController;
  [(SUViewController *)&v4 setSection:section];
  [(SUNetworkLockoutViewController *)self _reloadUserInterface];
}

- (void)loadView
{
  v2.receiver = self;
  v2.super_class = SUNetworkLockoutViewController;
  [(SULockoutViewController *)&v2 loadView];
}

- (void)_reloadUserInterface
{
  localizationBundle = [(SULockoutViewController *)self localizationBundle];
  if (localizationBundle)
  {
    v4 = localizationBundle;
    section = [(UIViewController *)self section];
    v6 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
    localizationBundle2 = [(SULockoutViewController *)self localizationBundle];
    if (v6 == 1)
    {
      v8 = @"NO_STORE_MAIN_K48";
    }

    else
    {
      v8 = @"NO_STORE_MAIN";
    }

    [(SULockoutViewController *)self setMessageTitle:[(NSBundle *)localizationBundle2 localizedStringForKey:v8 value:&stru_1F41B3660 table:0]];
    -[SULockoutViewController setImage:](self, "setImage:", [MEMORY[0x1E69DCAB8] imageNamed:@"StoreOfflineGraphic" inBundle:v4]);
    if ([objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")])
    {
      if (section && [section minimumNetworkType] > 999 || (MGGetBoolAnswer() & 1) == 0)
      {
        v12 = MGGetBoolAnswer();
        localizationBundle3 = [(SULockoutViewController *)self localizationBundle];
        if (v12)
        {
          v11 = @"NO_STORE_SUB_WLAN";
        }

        else
        {
          v11 = @"NO_STORE_SUB";
        }
      }

      else
      {
        v9 = MGGetBoolAnswer();
        localizationBundle3 = [(SULockoutViewController *)self localizationBundle];
        if (v9)
        {
          v11 = @"NO_STORE_SUB_CELLULAR_WLAN";
        }

        else
        {
          v11 = @"NO_STORE_SUB_CELLULAR";
        }
      }
    }

    else
    {
      localizationBundle3 = [(SULockoutViewController *)self localizationBundle];
      v11 = @"NO_STORE_SUB_NO_WIFI";
    }

    v13 = [(NSBundle *)localizationBundle3 localizedStringForKey:v11 value:&stru_1F41B3660 table:0];

    [(SULockoutViewController *)self setMessageBody:v13];
  }
}

@end