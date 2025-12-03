@interface PKAccountViewInterfaceConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKAccountViewInterfaceConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKAccountViewInterfaceConfiguration allocWithZone:](PKAccountViewInterfaceConfiguration init];
  v6 = [(PKAccount *)self->_account copyWithZone:zone];
  account = v5->_account;
  v5->_account = v6;

  v5->_isNewAccount = self->_isNewAccount;
  v5->_viewStyle = self->_viewStyle;
  v5->_destination = self->_destination;
  v8 = [(NSDateComponents *)self->_rewardsDateComponents copyWithZone:zone];
  rewardsDateComponents = v5->_rewardsDateComponents;
  v5->_rewardsDateComponents = v8;

  objc_storeStrong(&v5->_transaction, self->_transaction);
  objc_storeStrong(&v5->_cashbackPass, self->_cashbackPass);
  objc_storeStrong(&v5->_fundingSource, self->_fundingSource);
  return v5;
}

@end