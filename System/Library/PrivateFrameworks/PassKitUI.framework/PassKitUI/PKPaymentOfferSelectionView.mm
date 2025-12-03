@interface PKPaymentOfferSelectionView
+ (id)createWithPaymentPass:(id)pass transactionSourceCollection:(id)collection paymentOffersController:(id)controller beginSuppressCardEmulation:(id)emulation;
- (PKPaymentOfferSelectionView)init;
@end

@implementation PKPaymentOfferSelectionView

+ (id)createWithPaymentPass:(id)pass transactionSourceCollection:(id)collection paymentOffersController:(id)controller beginSuppressCardEmulation:(id)emulation
{
  v9 = _Block_copy(emulation);
  *(swift_allocObject() + 16) = v9;
  passCopy = pass;
  collectionCopy = collection;
  controllerCopy = controller;
  v13 = _s9PassKitUI29PaymentOfferSelectionViewHostC6create07paymentA027transactionSourceCollection0J16OffersController26beginSuppressCardEmulationSo6UIViewCSgSo09PKPaymentA0C_So013PKTransactionlM0CSgSo0unO0CyycyctFZ_0(passCopy, collection, controllerCopy);

  return v13;
}

- (PKPaymentOfferSelectionView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaymentOfferSelectionViewHost();
  return [(PKPaymentOfferSelectionView *)&v3 init];
}

@end