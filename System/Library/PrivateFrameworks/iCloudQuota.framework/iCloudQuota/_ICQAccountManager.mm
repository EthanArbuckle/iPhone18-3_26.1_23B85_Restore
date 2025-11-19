@interface _ICQAccountManager
- (_ICQAccountManager)init;
- (_ICQAccountManager)initWithAccountStore:(id)a3;
@end

@implementation _ICQAccountManager

- (_ICQAccountManager)init
{
  v3 = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [(_ICQAccountManager *)self initWithAccountStore:v3];

  return v4;
}

- (_ICQAccountManager)initWithAccountStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ICQAccountManager;
  v6 = [(_ICQAccountManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
  }

  return v7;
}

@end