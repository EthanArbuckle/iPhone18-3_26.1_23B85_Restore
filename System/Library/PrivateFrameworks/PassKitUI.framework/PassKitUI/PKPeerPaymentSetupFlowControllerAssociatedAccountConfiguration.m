@interface PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration
- (PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration)initWithFamilyMember:(id)a3 associatedAccountSetupDelegate:(id)a4 setupType:(int64_t)a5;
@end

@implementation PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration

- (PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration)initWithFamilyMember:(id)a3 associatedAccountSetupDelegate:(id)a4 setupType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration;
  v11 = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_familyMember, a3);
    objc_storeStrong(&v12->_associatedAccountSetupDelegate, a4);
    v12->_setupType = a5;
    v13 = [(PKFamilyMember *)v12->_familyMember firstName];
    firstName = v12->_firstName;
    v12->_firstName = v13;

    v15 = [(PKFamilyMember *)v12->_familyMember lastName];
    lastName = v12->_lastName;
    v12->_lastName = v15;
  }

  return v12;
}

@end