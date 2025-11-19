@interface SMUAvatarViewController
+ (id)descriptorForRequiredKeys;
- (SMUAvatarViewController)init;
- (void)setContact:(id)a3;
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
    v3 = [MEMORY[0x277CBDBF8] defaultSettings];
    v4 = [objc_alloc(MEMORY[0x277CBDBF0]) initWithSettings:v3];
    avatarViewController = v2->_avatarViewController;
    v2->_avatarViewController = v4;

    v6 = [(CNAvatarViewController *)v2->_avatarViewController view];
    view = v2->view;
    v2->view = v6;

    objc_storeStrong(&v2->wrappedViewController, v2->_avatarViewController);
  }

  return v2;
}

- (void)setContact:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v8 count:1];
    [(CNAvatarViewController *)self->_avatarViewController setContacts:v6, v8, v9];
  }

  else
  {
    avatarViewController = self->_avatarViewController;
    v6 = 0;
    [(CNAvatarViewController *)avatarViewController setContacts:MEMORY[0x277CBEBF8]];
  }
}

@end