@interface NCCreateContactNavigationViewController
+ (id)navigationControllerWithContact:(id)a3 bundleIdentifier:(id)a4 imageData:(id)a5 presenterDelegate:(id)a6;
- (id)_initWithContact:(id)a3 bundleIdentifier:(id)a4 imageData:(id)a5 presenterDelegate:(id)a6;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
@end

@implementation NCCreateContactNavigationViewController

+ (id)navigationControllerWithContact:(id)a3 bundleIdentifier:(id)a4 imageData:(id)a5 presenterDelegate:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[NCCreateContactNavigationViewController alloc] _initWithContact:v12 bundleIdentifier:v11 imageData:v10 presenterDelegate:v9];

  return v13;
}

- (id)_initWithContact:(id)a3 bundleIdentifier:(id)a4 imageData:(id)a5 presenterDelegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = MEMORY[0x277D77F58];
  v15 = a5;
  v16 = [v14 sharedInstance];
  v17 = [v16 newCuratedContactForContact:v11 imageData:v15 bundleIdentifier:v12];

  v18 = [MEMORY[0x277CBDC48] viewControllerForUnknownContact:v17];
  v19 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  [v18 setContactStore:v19];

  [v18 setDelegate:self];
  [v18 setActions:32];
  v20 = [v18 navigationItem];
  v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelAddToContacts_];
  [v20 setRightBarButtonItem:v21];

  v25.receiver = self;
  v25.super_class = NCCreateContactNavigationViewController;
  v22 = [(NCCreateContactNavigationViewController *)&v25 initWithRootViewController:v18];
  p_isa = &v22->super.super.super.super.super.isa;
  if (v22)
  {
    [(NCModalNavigationController *)v22 setPresenterDelegate:v13];
    objc_storeStrong(p_isa + 185, a3);
    objc_storeStrong(p_isa + 186, a4);
  }

  return p_isa;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v8 = [a4 identifier];
  if ([v8 length])
  {
    v6 = [MEMORY[0x277D77F58] sharedInstance];
    [v6 didAddToCuratedContactsForContact:self->_contact bundleIdentifier:self->_bundleIdentifier cnContactIdentifier:v8];
  }

  if (a4)
  {
    v7 = [(NCModalNavigationController *)self presenterDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 createContactNavigationControllerDidComplete:self];
    }
  }

  [(NCCreateContactNavigationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end