@interface PKHowToUseWalletViewProvider
+ (id)makeViewControllerWithModel:(id)model destinationCard:(id)card;
- (PKHowToUseWalletViewProvider)init;
@end

@implementation PKHowToUseWalletViewProvider

+ (id)makeViewControllerWithModel:(id)model destinationCard:(id)card
{
  modelCopy = model;
  cardCopy = card;
  v7 = _s9PassKitUI26HowToUseWalletViewProviderC04makeH10Controller5model15destinationCardSo06UIViewK0CSgSo05PKHowefG5ModelC_So0pefgN0CSgtFZ_0(modelCopy, card);

  return v7;
}

- (PKHowToUseWalletViewProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HowToUseWalletViewProvider();
  return [(PKHowToUseWalletViewProvider *)&v3 init];
}

@end