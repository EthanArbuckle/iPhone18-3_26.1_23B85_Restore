@interface PKPaymentOffersUIUtilities
+ (BOOL)shouldDisplayPaymentOfferConfirmationRecordFollowUp:(id)up;
+ (BOOL)shouldDisplayPaymentOfferViewPlanDetailsButtonForConfirmationRecord:(id)record transaction:(id)transaction;
+ (BOOL)shouldDisplayRewardsRedemptionInfoForTransaction:(id)transaction;
+ (BOOL)shouldDisplayRewardsRedemptionStatusLinkForTransaction:(id)transaction;
+ (BOOL)shouldDisplaySetupPostPurchaseInstallmentsForTransaction:(id)transaction installmentCriteria:(id)criteria;
+ (BOOL)shouldDisplayStatusForConfirmationRecord:(id)record transaction:(id)transaction installmentCriteria:(id)criteria;
- (PKPaymentOffersUIUtilities)init;
@end

@implementation PKPaymentOffersUIUtilities

+ (BOOL)shouldDisplayStatusForConfirmationRecord:(id)record transaction:(id)transaction installmentCriteria:(id)criteria
{
  recordCopy = record;
  transactionCopy = transaction;
  criteriaCopy = criteria;
  v11 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(record, transactionCopy, criteria);
  v12 = v11;
  if (v11 >= 4)
  {
    result = sub_1BE053BE4();
    __break(1u);
  }

  else
  {

    return v12 & 1;
  }

  return result;
}

+ (BOOL)shouldDisplayPaymentOfferConfirmationRecordFollowUp:(id)up
{
  upCopy = up;
  upCopy2 = up;
  LOBYTE(upCopy) = _s9PassKitUI24PaymentOffersUIUtilitiesC21shouldDisplayFollowUp3forSbSo32PKPaymentOfferConfirmationRecordCSg_tFZ_0(upCopy);

  return upCopy & 1;
}

+ (BOOL)shouldDisplayPaymentOfferViewPlanDetailsButtonForConfirmationRecord:(id)record transaction:(id)transaction
{
  recordCopy = record;
  transactionCopy = transaction;
  LOBYTE(transaction) = _s9PassKitUI24PaymentOffersUIUtilitiesC30shouldDisplayPlanDetailsButton3for11transactionSbSo32PKPaymentOfferConfirmationRecordCSg_So0N11TransactionCSgtFZ_0(record, transaction);

  return transaction & 1;
}

+ (BOOL)shouldDisplaySetupPostPurchaseInstallmentsForTransaction:(id)transaction installmentCriteria:(id)criteria
{
  transactionCopy = transaction;
  criteriaCopy = criteria;
  LOBYTE(criteria) = _s9PassKitUI24PaymentOffersUIUtilitiesC42shouldDisplaySetupPostPurchaseInstallments3for19installmentCriteriaSbSo20PKPaymentTransactionCSg_So0p16OfferInstallmentO0CSgtFZ_0(transaction, criteria);

  return criteria & 1;
}

+ (BOOL)shouldDisplayRewardsRedemptionInfoForTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (PKHideCardBenefitRewards())
  {
    v4 = 0;
  }

  else
  {
    paymentRewardsRedemption = [transactionCopy paymentRewardsRedemption];

    if (!paymentRewardsRedemption)
    {
      return 0;
    }

    v4 = 1;
    transactionCopy = paymentRewardsRedemption;
  }

  return v4;
}

+ (BOOL)shouldDisplayRewardsRedemptionStatusLinkForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = _s9PassKitUI24PaymentOffersUIUtilitiesC40shouldDisplayRewardsRedemptionStatusLink3forSbSo20PKPaymentTransactionC_tFZ_0(transactionCopy);

  return v4 & 1;
}

- (PKPaymentOffersUIUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaymentOffersUIUtilities();
  return [(PKPaymentOffersUIUtilities *)&v3 init];
}

@end