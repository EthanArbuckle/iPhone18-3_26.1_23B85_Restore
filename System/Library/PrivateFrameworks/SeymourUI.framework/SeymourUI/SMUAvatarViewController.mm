@interface SMUAvatarViewController
+ (id)descriptorForRequiredKeys;
- (SMUAvatarViewController)init;
- (void)setContact:(id)contact;
@end

@implementation SMUAvatarViewController

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_onceToken != -1)
  {
    +[SMUAvatarViewController descriptorForRequiredKeys];
  }

  v3 = descriptorForRequiredKeys__descriptor;

  return v3;
}

void __52__SMUAvatarViewController_descriptorForRequiredKeys__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277CBDBF0]);
  v0 = [v2 descriptorForRequiredKeys];
  v1 = descriptorForRequiredKeys__descriptor;
  descriptorForRequiredKeys__descriptor = v0;
}

- (SMUAvatarViewController)init
{
  v9.receiver = self;
  v9.super_class = SMUAvatarViewController;
  v2 = [(SMUAvatarViewController *)&v9 init];
  if (v2)
  {
    defaultSettings = [MEMORY[0x277CBDBF8] defaultSettings];
    v4 = [objc_alloc(MEMORY[0x277CBDBF0]) initWithSettings:defaultSettings];
    avatarViewController = v2->_avatarViewController;
    v2->_avatarViewController = v4;

    view = [(CNAvatarViewController *)v2->_avatarViewController view];
    view = v2->view;
    v2->view = view;

    objc_storeStrong(&v2->wrappedViewController, v2->_avatarViewController);
  }

  return v2;
}

- (void)setContact:(id)contact
{
  v9 = *MEMORY[0x277D85DE8];
  if (contact)
  {
    contactCopy = contact;
    v4 = MEMORY[0x277CBEA60];
    contactCopy2 = contact;
    v6 = [v4 arrayWithObjects:&contactCopy count:1];
    [(CNAvatarViewController *)self->_avatarViewController setContacts:v6, contactCopy, v9];
  }

  else
  {
    avatarViewController = self->_avatarViewController;
    v6 = 0;
    [(CNAvatarViewController *)avatarViewController setContacts:MEMORY[0x277CBEBF8]];
  }
}

@end