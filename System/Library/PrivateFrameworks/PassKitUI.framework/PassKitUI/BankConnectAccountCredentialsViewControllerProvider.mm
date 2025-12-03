@interface BankConnectAccountCredentialsViewControllerProvider
+ (id)makeViewControllerWithAccountCredentials:(id)credentials title:(id)title;
- (_TtC9PassKitUI51BankConnectAccountCredentialsViewControllerProvider)init;
@end

@implementation BankConnectAccountCredentialsViewControllerProvider

+ (id)makeViewControllerWithAccountCredentials:(id)credentials title:(id)title
{
  sub_1BD1E57C8();
  v4 = sub_1BE052744();
  v5 = sub_1BE052434();
  v7 = _s9PassKitUI51BankConnectAccountCredentialsViewControllerProviderC04makehI007accountG00lG5TitleSo06UIViewI0CSaySo27FKAccountPaymentInformationCG_SStFZ_0(v4, v5, v6);

  return v7;
}

- (_TtC9PassKitUI51BankConnectAccountCredentialsViewControllerProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BankConnectAccountCredentialsViewControllerProvider();
  return [(BankConnectAccountCredentialsViewControllerProvider *)&v3 init];
}

@end