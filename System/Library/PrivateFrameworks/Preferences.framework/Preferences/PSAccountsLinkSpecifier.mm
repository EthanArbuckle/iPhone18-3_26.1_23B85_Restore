@interface PSAccountsLinkSpecifier
- (PSAccountsLinkSpecifier)initWithDetailClass:(Class)class;
- (id)_accountsCount:(id)count;
@end

@implementation PSAccountsLinkSpecifier

- (PSAccountsLinkSpecifier)initWithDetailClass:(Class)class
{
  v5 = PS_LocalizedStringForSystemPolicy(@"ACCOUNTS");
  v9.receiver = self;
  v9.super_class = PSAccountsLinkSpecifier;
  v6 = [(PSSpecifier *)&v9 initWithName:v5 target:self set:0 get:sel__accountsCount_ detail:class cell:2 edit:0];

  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (id)_accountsCount:(id)count
{
  v3 = MEMORY[0x1E696ADA0];
  v4 = MEMORY[0x1E696AD98];
  v5 = +[PSAccountEnumerator sharedEnumerator];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "visibleAccountCount")}];
  v7 = [v3 localizedStringFromNumber:v6 numberStyle:1];

  return v7;
}

@end