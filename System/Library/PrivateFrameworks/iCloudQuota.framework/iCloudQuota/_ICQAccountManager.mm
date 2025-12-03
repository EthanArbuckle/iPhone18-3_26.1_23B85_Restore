@interface _ICQAccountManager
- (_ICQAccountManager)init;
- (_ICQAccountManager)initWithAccountStore:(id)store;
@end

@implementation _ICQAccountManager

- (_ICQAccountManager)init
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [(_ICQAccountManager *)self initWithAccountStore:defaultStore];

  return v4;
}

- (_ICQAccountManager)initWithAccountStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _ICQAccountManager;
  v6 = [(_ICQAccountManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
  }

  return v7;
}

@end