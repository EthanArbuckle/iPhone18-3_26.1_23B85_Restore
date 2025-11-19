@interface PKDashboardRewardsBalanceItem
- (PKDashboardRewardsBalanceItem)initWithPaymentRewardsBalance:(id)a3 passUniqueIdentifier:(id)a4 transactionSourceIdentifiers:(id)a5;
@end

@implementation PKDashboardRewardsBalanceItem

- (PKDashboardRewardsBalanceItem)initWithPaymentRewardsBalance:(id)a3 passUniqueIdentifier:(id)a4 transactionSourceIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = PKDashboardRewardsBalanceItem;
  v11 = [(PKDashboardRewardsBalanceItem *)&v29 init];
  if (v11)
  {
    v12 = [v8 identifier];
    balanceIdentifier = v11->_balanceIdentifier;
    v11->_balanceIdentifier = v12;

    v14 = [v8 programName];
    programName = v11->_programName;
    v11->_programName = v14;

    v16 = [v8 programURL];
    programURL = v11->_programURL;
    v11->_programURL = v16;

    v11->_rewardsType = [v8 type];
    v18 = [v8 formattedQuantityValue];
    formattedQuantityValue = v11->_formattedQuantityValue;
    v11->_formattedQuantityValue = v18;

    v20 = [v8 formattedMonetaryValue];
    formattedMonetaryValue = v11->_formattedMonetaryValue;
    v11->_formattedMonetaryValue = v20;

    v11->_isRedeemable = [v8 isRedeemable];
    v22 = [v8 lastFetchedAt];
    lastFetchedAt = v11->_lastFetchedAt;
    v11->_lastFetchedAt = v22;

    v24 = [v9 copy];
    passUniqueID = v11->_passUniqueID;
    v11->_passUniqueID = v24;

    v26 = [v10 copy];
    transactionSourceIdentifiers = v11->_transactionSourceIdentifiers;
    v11->_transactionSourceIdentifiers = v26;
  }

  return v11;
}

@end