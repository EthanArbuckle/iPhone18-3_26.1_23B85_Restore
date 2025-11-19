@interface PKPaymentOffersUIUtilities
+ (BOOL)shouldDisplayPaymentOfferConfirmationRecordFollowUp:(id)a3;
+ (BOOL)shouldDisplayPaymentOfferViewPlanDetailsButtonForConfirmationRecord:(id)a3 transaction:(id)a4;
+ (BOOL)shouldDisplayRewardsRedemptionInfoForTransaction:(id)a3;
+ (BOOL)shouldDisplayRewardsRedemptionStatusLinkForTransaction:(id)a3;
+ (BOOL)shouldDisplaySetupPostPurchaseInstallmentsForTransaction:(id)a3 installmentCriteria:(id)a4;
+ (BOOL)shouldDisplayStatusForConfirmationRecord:(id)a3 transaction:(id)a4 installmentCriteria:(id)a5;
- (PKPaymentOffersUIUtilities)init;
@end

@implementation PKPaymentOffersUIUtilities

+ (BOOL)shouldDisplayStatusForConfirmationRecord:(id)a3 transaction:(id)a4 installmentCriteria:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(a3, v9, a5);
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

+ (BOOL)shouldDisplayPaymentOfferConfirmationRecordFollowUp:(id)a3
{
  v3 = a3;
  v4 = a3;
  LOBYTE(v3) = _s9PassKitUI24PaymentOffersUIUtilitiesC21shouldDisplayFollowUp3forSbSo32PKPaymentOfferConfirmationRecordCSg_tFZ_0(v3);

  return v3 & 1;
}

+ (BOOL)shouldDisplayPaymentOfferViewPlanDetailsButtonForConfirmationRecord:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  LOBYTE(a4) = _s9PassKitUI24PaymentOffersUIUtilitiesC30shouldDisplayPlanDetailsButton3for11transactionSbSo32PKPaymentOfferConfirmationRecordCSg_So0N11TransactionCSgtFZ_0(a3, a4);

  return a4 & 1;
}

+ (BOOL)shouldDisplaySetupPostPurchaseInstallmentsForTransaction:(id)a3 installmentCriteria:(id)a4
{
  v6 = a3;
  v7 = a4;
  LOBYTE(a4) = _s9PassKitUI24PaymentOffersUIUtilitiesC42shouldDisplaySetupPostPurchaseInstallments3for19installmentCriteriaSbSo20PKPaymentTransactionCSg_So0p16OfferInstallmentO0CSgtFZ_0(a3, a4);

  return a4 & 1;
}

+ (BOOL)shouldDisplayRewardsRedemptionInfoForTransaction:(id)a3
{
  v3 = a3;
  if (PKHideCardBenefitRewards())
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 paymentRewardsRedemption];

    if (!v5)
    {
      return 0;
    }

    v4 = 1;
    v3 = v5;
  }

  return v4;
}

+ (BOOL)shouldDisplayRewardsRedemptionStatusLinkForTransaction:(id)a3
{
  v3 = a3;
  v4 = _s9PassKitUI24PaymentOffersUIUtilitiesC40shouldDisplayRewardsRedemptionStatusLink3forSbSo20PKPaymentTransactionC_tFZ_0(v3);

  return v4 & 1;
}

- (PKPaymentOffersUIUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaymentOffersUIUtilities();
  return [(PKPaymentOffersUIUtilities *)&v3 init];
}

@end