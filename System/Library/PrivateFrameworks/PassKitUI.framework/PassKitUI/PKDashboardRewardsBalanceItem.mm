@interface PKDashboardRewardsBalanceItem
- (PKDashboardRewardsBalanceItem)initWithPaymentRewardsBalance:(id)balance passUniqueIdentifier:(id)identifier transactionSourceIdentifiers:(id)identifiers;
@end

@implementation PKDashboardRewardsBalanceItem

- (PKDashboardRewardsBalanceItem)initWithPaymentRewardsBalance:(id)balance passUniqueIdentifier:(id)identifier transactionSourceIdentifiers:(id)identifiers
{
  balanceCopy = balance;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v29.receiver = self;
  v29.super_class = PKDashboardRewardsBalanceItem;
  v11 = [(PKDashboardRewardsBalanceItem *)&v29 init];
  if (v11)
  {
    identifier = [balanceCopy identifier];
    balanceIdentifier = v11->_balanceIdentifier;
    v11->_balanceIdentifier = identifier;

    programName = [balanceCopy programName];
    programName = v11->_programName;
    v11->_programName = programName;

    programURL = [balanceCopy programURL];
    programURL = v11->_programURL;
    v11->_programURL = programURL;

    v11->_rewardsType = [balanceCopy type];
    formattedQuantityValue = [balanceCopy formattedQuantityValue];
    formattedQuantityValue = v11->_formattedQuantityValue;
    v11->_formattedQuantityValue = formattedQuantityValue;

    formattedMonetaryValue = [balanceCopy formattedMonetaryValue];
    formattedMonetaryValue = v11->_formattedMonetaryValue;
    v11->_formattedMonetaryValue = formattedMonetaryValue;

    v11->_isRedeemable = [balanceCopy isRedeemable];
    lastFetchedAt = [balanceCopy lastFetchedAt];
    lastFetchedAt = v11->_lastFetchedAt;
    v11->_lastFetchedAt = lastFetchedAt;

    v24 = [identifierCopy copy];
    passUniqueID = v11->_passUniqueID;
    v11->_passUniqueID = v24;

    v26 = [identifiersCopy copy];
    transactionSourceIdentifiers = v11->_transactionSourceIdentifiers;
    v11->_transactionSourceIdentifiers = v26;
  }

  return v11;
}

@end