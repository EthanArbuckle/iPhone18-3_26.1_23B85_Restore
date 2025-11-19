@interface PMAppAccountsListModel.WrappedPMAccount
- (NSString)effectiveTitleForSorting;
- (_TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount)init;
- (void)setEffectiveTitleForSorting:(id)a3;
@end

@implementation PMAppAccountsListModel.WrappedPMAccount

- (NSString)effectiveTitleForSorting
{
  v2 = *(self + OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_effectiveTitleForSorting);
  v3 = *(self + OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_effectiveTitleForSorting + 8);

  v4 = sub_21CB85584();

  return v4;
}

- (void)setEffectiveTitleForSorting:(id)a3
{
  v4 = sub_21CB855C4();
  v5 = (self + OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_effectiveTitleForSorting);
  v6 = *(self + OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_effectiveTitleForSorting + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (_TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end