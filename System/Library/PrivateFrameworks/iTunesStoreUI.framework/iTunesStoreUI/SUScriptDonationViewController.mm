@interface SUScriptDonationViewController
- (SUScriptDonationViewController)initWithCharityIdentifier:(id)a3;
- (id)newNativeViewController;
@end

@implementation SUScriptDonationViewController

- (SUScriptDonationViewController)initWithCharityIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptDonationViewController;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_charityIdentifier = [a3 copy];
  }

  return v4;
}

- (id)newNativeViewController
{
  v3 = ISUIMobileStoreUIFramework();
  v4 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuidonationvi.isa v3))];
  v5 = ISUIMobileStoreUIFramework();
  [v4 setClientContext:{objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v5), "defaultContext")}];
  return v4;
}

@end