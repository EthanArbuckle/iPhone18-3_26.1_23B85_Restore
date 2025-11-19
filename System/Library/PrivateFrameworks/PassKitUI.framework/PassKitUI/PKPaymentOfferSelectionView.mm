@interface PKPaymentOfferSelectionView
+ (id)createWithPaymentPass:(id)a3 transactionSourceCollection:(id)a4 paymentOffersController:(id)a5 beginSuppressCardEmulation:(id)a6;
- (PKPaymentOfferSelectionView)init;
@end

@implementation PKPaymentOfferSelectionView

+ (id)createWithPaymentPass:(id)a3 transactionSourceCollection:(id)a4 paymentOffersController:(id)a5 beginSuppressCardEmulation:(id)a6
{
  v9 = _Block_copy(a6);
  *(swift_allocObject() + 16) = v9;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _s9PassKitUI29PaymentOfferSelectionViewHostC6create07paymentA027transactionSourceCollection0J16OffersController26beginSuppressCardEmulationSo6UIViewCSgSo09PKPaymentA0C_So013PKTransactionlM0CSgSo0unO0CyycyctFZ_0(v10, a4, v12);

  return v13;
}

- (PKPaymentOfferSelectionView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaymentOfferSelectionViewHost();
  return [(PKPaymentOfferSelectionView *)&v3 init];
}

@end