@interface NCCreateContactNavigationViewController
+ (id)navigationControllerWithContact:(id)contact bundleIdentifier:(id)identifier imageData:(id)data presenterDelegate:(id)delegate;
- (id)_initWithContact:(id)contact bundleIdentifier:(id)identifier imageData:(id)data presenterDelegate:(id)delegate;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
@end

@implementation NCCreateContactNavigationViewController

+ (id)navigationControllerWithContact:(id)contact bundleIdentifier:(id)identifier imageData:(id)data presenterDelegate:(id)delegate
{
  delegateCopy = delegate;
  dataCopy = data;
  identifierCopy = identifier;
  contactCopy = contact;
  v13 = [[NCCreateContactNavigationViewController alloc] _initWithContact:contactCopy bundleIdentifier:identifierCopy imageData:dataCopy presenterDelegate:delegateCopy];

  return v13;
}

- (id)_initWithContact:(id)contact bundleIdentifier:(id)identifier imageData:(id)data presenterDelegate:(id)delegate
{
  contactCopy = contact;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v14 = MEMORY[0x277D77F58];
  dataCopy = data;
  sharedInstance = [v14 sharedInstance];
  v17 = [sharedInstance newCuratedContactForContact:contactCopy imageData:dataCopy bundleIdentifier:identifierCopy];

  v18 = [MEMORY[0x277CBDC48] viewControllerForUnknownContact:v17];
  v19 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  [v18 setContactStore:v19];

  [v18 setDelegate:self];
  [v18 setActions:32];
  navigationItem = [v18 navigationItem];
  v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelAddToContacts_];
  [navigationItem setRightBarButtonItem:v21];

  v25.receiver = self;
  v25.super_class = NCCreateContactNavigationViewController;
  v22 = [(NCCreateContactNavigationViewController *)&v25 initWithRootViewController:v18];
  p_isa = &v22->super.super.super.super.super.isa;
  if (v22)
  {
    [(NCModalNavigationController *)v22 setPresenterDelegate:delegateCopy];
    objc_storeStrong(p_isa + 185, contact);
    objc_storeStrong(p_isa + 186, identifier);
  }

  return p_isa;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  identifier = [contact identifier];
  if ([identifier length])
  {
    mEMORY[0x277D77F58] = [MEMORY[0x277D77F58] sharedInstance];
    [mEMORY[0x277D77F58] didAddToCuratedContactsForContact:self->_contact bundleIdentifier:self->_bundleIdentifier cnContactIdentifier:identifier];
  }

  if (contact)
  {
    presenterDelegate = [(NCModalNavigationController *)self presenterDelegate];
    if (objc_opt_respondsToSelector())
    {
      [presenterDelegate createContactNavigationControllerDidComplete:self];
    }
  }

  [(NCCreateContactNavigationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end