@interface PKHowToUseWalletViewProvider
+ (id)makeViewControllerWithModel:(id)a3 destinationCard:(id)a4;
- (PKHowToUseWalletViewProvider)init;
@end

@implementation PKHowToUseWalletViewProvider

+ (id)makeViewControllerWithModel:(id)a3 destinationCard:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _s9PassKitUI26HowToUseWalletViewProviderC04makeH10Controller5model15destinationCardSo06UIViewK0CSgSo05PKHowefG5ModelC_So0pefgN0CSgtFZ_0(v5, a4);

  return v7;
}

- (PKHowToUseWalletViewProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HowToUseWalletViewProvider();
  return [(PKHowToUseWalletViewProvider *)&v3 init];
}

@end