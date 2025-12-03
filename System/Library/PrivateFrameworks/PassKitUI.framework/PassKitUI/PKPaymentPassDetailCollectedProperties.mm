@interface PKPaymentPassDetailCollectedProperties
- (PKPaymentPassDetailCollectedProperties)initWithPass:(id)pass transitPassProperties:(id)properties transitBalanceModel:(id)model balances:(id)balances actionForBalanceIdentifier:(id)identifier transitPropertiesBalanceReminder:(id)reminder reminderForBalanceIdentifier:(id)balanceIdentifier;
@end

@implementation PKPaymentPassDetailCollectedProperties

- (PKPaymentPassDetailCollectedProperties)initWithPass:(id)pass transitPassProperties:(id)properties transitBalanceModel:(id)model balances:(id)balances actionForBalanceIdentifier:(id)identifier transitPropertiesBalanceReminder:(id)reminder reminderForBalanceIdentifier:(id)balanceIdentifier
{
  passCopy = pass;
  propertiesCopy = properties;
  modelCopy = model;
  balancesCopy = balances;
  identifierCopy = identifier;
  reminderCopy = reminder;
  balanceIdentifierCopy = balanceIdentifier;
  v26.receiver = self;
  v26.super_class = PKPaymentPassDetailCollectedProperties;
  v18 = [(PKPaymentPassDetailCollectedProperties *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, pass);
    objc_storeStrong(&v19->_transitPassProperties, properties);
    objc_storeStrong(&v19->_transitBalanceModel, model);
    objc_storeStrong(&v19->_balances, balances);
    objc_storeStrong(&v19->_actionForBalanceIdentifier, identifier);
    objc_storeStrong(&v19->_transitPropertiesBalanceReminder, reminder);
    objc_storeStrong(&v19->_reminderForBalanceIdentifier, balanceIdentifier);
  }

  return v19;
}

@end