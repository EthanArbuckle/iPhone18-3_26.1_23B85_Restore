@interface PKPaymentPassDetailCollectedProperties
- (PKPaymentPassDetailCollectedProperties)initWithPass:(id)a3 transitPassProperties:(id)a4 transitBalanceModel:(id)a5 balances:(id)a6 actionForBalanceIdentifier:(id)a7 transitPropertiesBalanceReminder:(id)a8 reminderForBalanceIdentifier:(id)a9;
@end

@implementation PKPaymentPassDetailCollectedProperties

- (PKPaymentPassDetailCollectedProperties)initWithPass:(id)a3 transitPassProperties:(id)a4 transitBalanceModel:(id)a5 balances:(id)a6 actionForBalanceIdentifier:(id)a7 transitPropertiesBalanceReminder:(id)a8 reminderForBalanceIdentifier:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = PKPaymentPassDetailCollectedProperties;
  v18 = [(PKPaymentPassDetailCollectedProperties *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, a3);
    objc_storeStrong(&v19->_transitPassProperties, a4);
    objc_storeStrong(&v19->_transitBalanceModel, a5);
    objc_storeStrong(&v19->_balances, a6);
    objc_storeStrong(&v19->_actionForBalanceIdentifier, a7);
    objc_storeStrong(&v19->_transitPropertiesBalanceReminder, a8);
    objc_storeStrong(&v19->_reminderForBalanceIdentifier, a9);
  }

  return v19;
}

@end